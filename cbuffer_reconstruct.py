import json
import sys
import os
import hashlib

def get_hlsl_type(param_type, dim):
    """Convert parameter type and dimension to HLSL type."""
    type_map = {
        0: "float",  # Float
        1: "int",    # Int
        5: "uint"    # UInt
    }
    
    base_type = type_map.get(param_type, "float")
    
    if dim == 1:
        return base_type
    elif dim == 2:
        return f"{base_type}2"
    elif dim == 3:
        return f"{base_type}3"
    elif dim == 4:
        return f"{base_type}4"
    else:
        return base_type

def generate_cbuffer_content(cb, name_indices):
    """Generate the content of a cbuffer as a list of strings."""
    lines = []
    
    # Process matrix parameters
    for matrix_param in cb.get('m_MatrixParams', []):
        name_idx = matrix_param.get('m_NameIndex')
        name = name_indices.get(name_idx, f"Unknown_{name_idx}")
        row_count = matrix_param.get('m_RowCount', 4)
        
        if row_count == 4:
            lines.append(f"    float4x4 {name};")
        elif row_count == 3:
            lines.append(f"    float3x3 {name};")
        else:
            lines.append(f"    // Matrix {name} with {row_count} rows")
    
    # Process vector parameters
    for vec_param in cb.get('m_VectorParams', []):
        name_idx = vec_param.get('m_NameIndex')
        name = name_indices.get(name_idx, f"Unknown_{name_idx}")
        param_type = vec_param.get('m_Type', 0)
        dim = vec_param.get('m_Dim', 1)
        
        hlsl_type = get_hlsl_type(param_type, dim)
        lines.append(f"    {hlsl_type} {name};")
    
    return lines

def get_cbuffer_hash(cb, name_indices):
    """Generate a hash of the cbuffer content for deduplication."""
    content = generate_cbuffer_content(cb, name_indices)
    content_str = '\n'.join(content)
    return hashlib.md5(content_str.encode()).hexdigest()

def process_constant_buffers(constant_buffers, name_indices, stage_name, seen_cbuffers):
    """Process and print constant buffers, skipping duplicates."""
    if not constant_buffers:
        return
    
    for cb in constant_buffers:
        cb_name_idx = cb.get('m_NameIndex')
        cb_name = name_indices.get(cb_name_idx, f"UnknownBuffer_{cb_name_idx}")
        
        # Generate hash of cbuffer content
        cb_hash = get_cbuffer_hash(cb, name_indices)
        
        # Create a unique key combining name and hash
        cb_key = f"{cb_name}:{cb_hash}"
        
        # Check if we've seen this exact cbuffer before
        if cb_key in seen_cbuffers:
            prev_stage = seen_cbuffers[cb_key]
            print(f"// cbuffer {cb_name} - duplicate of {prev_stage}, skipped")
            print()
            continue
        
        # Mark this cbuffer as seen
        seen_cbuffers[cb_key] = stage_name
        
        # Generate and print the cbuffer
        content = generate_cbuffer_content(cb, name_indices)
        
        print(f"cbuffer {cb_name} // {stage_name}")
        print("{")
        for line in content:
            print(line)
        print(f"}}; // Size: {cb.get('m_Size', 'unknown')} bytes")
        print()

def process_textures(texture_params, name_indices, stage_name, seen_textures):
    """Process and print texture parameters, skipping duplicates."""
    if not texture_params:
        return
    
    has_new_textures = False
    new_textures = []
    
    for tex_param in texture_params:
        name_idx = tex_param.get('m_NameIndex')
        name = name_indices.get(name_idx, f"UnknownTexture_{name_idx}")
        dim = tex_param.get('m_Dim', 2)
        
        # Create unique key for texture
        tex_key = f"{name}:{dim}"
        
        if tex_key in seen_textures:
            continue
        
        seen_textures.add(tex_key)
        has_new_textures = True
        
        tex_type_map = {
            0: "Texture",
            1: "Texture1D",
            2: "Texture2D",
            3: "Texture3D",
            4: "TextureCube"
        }
        tex_type = tex_type_map.get(dim, "Texture2D")
        new_textures.append(f"{tex_type}<float4> {name};")
    
    if has_new_textures:
        print(f"// Textures - {stage_name}")
        for tex_line in new_textures:
            print(tex_line)
        print()

def process_subprogram(subprogram, name_indices, stage_name, seen_cbuffers, seen_textures):
    """Process a single shader subprogram."""
    if not subprogram:
        return
    
    # Process constant buffers
    constant_buffers = subprogram.get('m_ConstantBuffers', [])
    process_constant_buffers(constant_buffers, name_indices, stage_name, seen_cbuffers)
    
    # Process textures
    texture_params = subprogram.get('m_TextureParams', [])
    process_textures(texture_params, name_indices, stage_name, seen_textures)

def reconstruct_shader(json_data, output_file=None):
    """Reconstruct HLSL from parsed shader JSON."""
    
    # Redirect output to file if specified
    if output_file:
        sys.stdout = open(output_file, 'w', encoding='utf-8')
    
    try:
        # Get shader name
        shader_name = json_data.get('m_ParsedForm', {}).get('m_Name', 'Unknown Shader')
        print(f"// Reconstructed HLSL Constant Buffers")
        print(f"// Shader: {shader_name}")
        print(f"// Duplicates are automatically removed\n")
        
        # Extract passes
        subshaders = json_data.get('m_ParsedForm', {}).get('m_SubShaders', [])
        
        if not subshaders:
            print("// No subshaders found in JSON")
            return
        
        # Track seen cbuffers and textures across all passes
        seen_cbuffers = {}
        seen_textures = set()
        
        for subshader_idx, subshader in enumerate(subshaders):
            passes = subshader.get('m_Passes', [])
            
            for pass_idx, pass_data in enumerate(passes):
                # Get the name indices mapping
                name_indices_list = pass_data.get('m_NameIndices', [])
                name_indices = {item['Value']: item['Key'] for item in name_indices_list}
                
                # Get pass name
                pass_state = pass_data.get('m_State', {})
                pass_tags = pass_state.get('m_Tags', {}).get('tags', [])
                pass_name = pass_state.get('m_Name', f"Pass_{pass_idx}")
                
                # Find LightMode tag if exists
                for tag in pass_tags:
                    if tag.get('Key') == 'LIGHTMODE':
                        pass_name = tag.get('Value', pass_name)
                        break
                
                print(f"{'='*80}")
                print(f"// Pass: {pass_name} (Subshader {subshader_idx}, Pass {pass_idx})")
                print(f"{'='*80}\n")
                
                # Process each shader stage
                stages = {
                    'Vertex': pass_data.get('progVertex', {}),
                    'Fragment': pass_data.get('progFragment', {}),
                    'Geometry': pass_data.get('progGeometry', {}),
                    'Hull': pass_data.get('progHull', {}),
                    'Domain': pass_data.get('progDomain', {})
                }
                
                for stage_name, stage_data in stages.items():
                    subprograms = stage_data.get('m_SubPrograms', [])
                    
                    if not subprograms:
                        continue
                    
                    print(f"// {'-'*76}")
                    print(f"// {stage_name} Shader")
                    print(f"// {'-'*76}\n")
                    
                    # Process each variant
                    for variant_idx, subprogram in enumerate(subprograms):
                        if variant_idx > 0:
                            print(f"// --- Variant {variant_idx} ---\n")
                        
                        process_subprogram(subprogram, name_indices, f"{stage_name} Shader", seen_cbuffers, seen_textures)
                
                print()
        
        # Print summary
        print(f"{'='*80}")
        print(f"// Summary")
        print(f"{'='*80}")
        print(f"// Total unique cbuffers: {len(seen_cbuffers)}")
        print(f"// Total unique textures: {len(seen_textures)}")
    
    finally:
        # Restore stdout if redirected
        if output_file:
            sys.stdout.close()
            sys.stdout = sys.__stdout__
            print(f"Output written to: {output_file}")

def main():
    if len(sys.argv) < 2:
        print("Usage: python script.py <input_json> [output_file]")
        print("Example: python script.py shader.json output.hlsl")
        sys.exit(1)
    
    input_file = sys.argv[1]
    output_file = sys.argv[2] if len(sys.argv) > 2 else None
    
    if not os.path.exists(input_file):
        print(f"Error: File '{input_file}' not found")
        sys.exit(1)
    
    # Load the JSON file
    try:
        with open(input_file, 'r', encoding='utf-8') as f:
            shader_data = json.load(f)
    except json.JSONDecodeError as e:
        print(f"Error parsing JSON: {e}")
        sys.exit(1)
    except Exception as e:
        print(f"Error reading file: {e}")
        sys.exit(1)
    
    reconstruct_shader(shader_data, output_file)

if __name__ == "__main__":
    main()

def reconstruct_shader(json_data, output_file=None):
    """Reconstruct HLSL from parsed shader JSON."""
    
    # Redirect output to file if specified
    if output_file:
        sys.stdout = open(output_file, 'w', encoding='utf-8')
    
    try:
        # Get shader name
        shader_name = json_data.get('m_ParsedForm', {}).get('m_Name', 'Unknown Shader')
        print(f"// Reconstructed HLSL Constant Buffers")
        print(f"// Shader: {shader_name}\n")
        
        # Extract passes
        subshaders = json_data.get('m_ParsedForm', {}).get('m_SubShaders', [])
        
        if not subshaders:
            print("// No subshaders found in JSON")
            return
        
        seen_cbuffers = {}
        seen_textures = set()
        
        for subshader_idx, subshader in enumerate(subshaders):
            passes = subshader.get('m_Passes', [])
            
            for pass_idx, pass_data in enumerate(passes):
                # Get the name indices mapping
                name_indices_list = pass_data.get('m_NameIndices', [])
                name_indices = {item['Value']: item['Key'] for item in name_indices_list}
                
                # Get pass name
                pass_state = pass_data.get('m_State', {})
                pass_tags = pass_state.get('m_Tags', {}).get('tags', [])
                pass_name = pass_state.get('m_Name', f"Pass_{pass_idx}")
                
                # Find LightMode tag if exists
                for tag in pass_tags:
                    if tag.get('Key') == 'LIGHTMODE':
                        pass_name = tag.get('Value', pass_name)
                        break
                
                print(f"{'='*80}")
                print(f"// Pass: {pass_name} (Subshader {subshader_idx}, Pass {pass_idx})")
                print(f"{'='*80}\n")
                
                # Process each shader stage
                stages = {
                    'Vertex': pass_data.get('progVertex', {}),
                    'Fragment': pass_data.get('progFragment', {}),
                    'Geometry': pass_data.get('progGeometry', {}),
                    'Hull': pass_data.get('progHull', {}),
                    'Domain': pass_data.get('progDomain', {})
                }
                
                for stage_name, stage_data in stages.items():
                    subprograms = stage_data.get('m_SubPrograms', [])
                    
                    if not subprograms:
                        continue
                    
                    print(f"// {'-'*76}")
                    print(f"// {stage_name} Shader")
                    print(f"// {'-'*76}\n")
                    
                    # Process each variant
                    for variant_idx, subprogram in enumerate(subprograms):
                        if variant_idx > 0:
                            print(f"// --- Variant {variant_idx} ---\n")
                        
                        process_subprogram(subprogram, name_indices, f"{stage_name} Shader", seen_cbuffers, seen_textures)
                
                print()
    
    finally:
        # Restore stdout if redirected
        if output_file:
            sys.stdout.close()
            sys.stdout = sys.__stdout__
            print(f"Output written to: {output_file}")

def main():
    if len(sys.argv) < 2:
        print("Usage: python script.py <input_json> [output_file]")
        print("Example: python script.py shader.json output.hlsl")
        sys.exit(1)
    
    input_file = sys.argv[1]
    output_file = sys.argv[2] if len(sys.argv) > 2 else None
    
    if not os.path.exists(input_file):
        print(f"Error: File '{input_file}' not found")
        sys.exit(1)
    
    # Load the JSON file
    try:
        with open(input_file, 'r', encoding='utf-8') as f:
            shader_data = json.load(f)
    except json.JSONDecodeError as e:
        print(f"Error parsing JSON: {e}")
        sys.exit(1)
    except Exception as e:
        print(f"Error reading file: {e}")
        sys.exit(1)
    
    reconstruct_shader(shader_data, output_file)

if __name__ == "__main__":
    main()