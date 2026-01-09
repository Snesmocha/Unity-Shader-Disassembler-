#!/usr/bin/env python3
"""
Unity Shader Extractor
Extracts and splits Unity shader blobs into individual DXBC files
Uses platform and offset metadata to properly separate shader variants
"""

import json
import base64
import argparse
import sys
import struct
from pathlib import Path

try:
    import lz4.block
    HAS_LZ4 = True
except ImportError:
    HAS_LZ4 = False
    print("Warning: lz4 not installed. Install with: pip install lz4", file=sys.stderr)


def find_shader_data(obj, path="", results=None):
    """Find shader blob data with complete metadata"""
    if results is None:
        results = []
    
    if isinstance(obj, dict):
        for key, value in obj.items():
            current_path = f"{path}.{key}" if path else key
            
            if key == "compressedBlob":
                blob_info = {
                    "path": current_path,
                    "blob": value,
                    "metadata": {}
                }
                
                # Collect all metadata
                for meta_key in ["compressedLengths", "decompressedLengths", "offsets", "platforms"]:
                    if meta_key in obj:
                        blob_info["metadata"][meta_key] = obj[meta_key]
                
                results.append(blob_info)
            else:
                find_shader_data(value, current_path, results)
    
    elif isinstance(obj, list):
        for i, item in enumerate(obj):
            current_path = f"{path}[{i}]"
            find_shader_data(item, current_path, results)
    
    return results


def decompress_unity_chunked(compressed_data, offsets, compressed_lengths, decompressed_lengths):
    """Decompress Unity's chunked compression format"""
    decompressed_parts = []
    
    # Flatten nested arrays
    if isinstance(offsets[0], list):
        offsets = [item for sublist in offsets for item in sublist]
    if isinstance(compressed_lengths[0], list):
        compressed_lengths = [item for sublist in compressed_lengths for item in sublist]
    if isinstance(decompressed_lengths[0], list):
        decompressed_lengths = [item for sublist in decompressed_lengths for item in sublist]
    
    print(f"Processing {len(offsets)} compression chunk(s)...")
    
    for i, (offset, comp_len, decomp_len) in enumerate(zip(offsets, compressed_lengths, decompressed_lengths)):
        print(f"  Chunk {i+1}: offset={offset}, compressed={comp_len}, decompressed={decomp_len}")
        
        chunk_data = compressed_data[offset:offset + comp_len]
        
        # Check if chunk is already uncompressed (compressed == decompressed)
        if comp_len == decomp_len:
            print(f"    ✓ Using raw data (uncompressed)")
            decompressed_parts.append(chunk_data)
            continue
        
        # Try LZ4 decompression
        if HAS_LZ4:
            try:
                decompressed = lz4.block.decompress(chunk_data, uncompressed_size=decomp_len)
                print(f"    ✓ Decompressed with LZ4 block")
                decompressed_parts.append(decompressed)
                continue
            except Exception as e:
                print(f"    ! LZ4 decompression failed: {e}")
        
        # If LZ4 fails, check if it's close to uncompressed size (tolerance for metadata)
        size_ratio = comp_len / decomp_len if decomp_len > 0 else 0
        if size_ratio > 0.95:
            print(f"    ✓ Using raw data (compression ratio too low, likely uncompressed)")
            # Pad or truncate to expected size
            if len(chunk_data) < decomp_len:
                chunk_data += b'\x00' * (decomp_len - len(chunk_data))
            elif len(chunk_data) > decomp_len:
                chunk_data = chunk_data[:decomp_len]
            decompressed_parts.append(chunk_data)
        else:
            raise Exception(f"Failed to decompress chunk {i+1}: No method worked")
    
    return b''.join(decompressed_parts)


def find_dxbc_shaders(data):
    """Find all DXBC shader objects in decompressed data"""
    shaders = []
    offset = 0
    
    while True:
        pos = data.find(b'DXBC', offset)
        if pos == -1:
            break
        
        # Read DXBC size (at offset +24)
        if pos + 28 > len(data):
            break
        
        size = struct.unpack('<I', data[pos+24:pos+28])[0]
        
        # Validate size
        if size < 32 or pos + size > len(data):
            offset = pos + 4
            continue
        
        shader_data = data[pos:pos+size]
        shaders.append({
            'offset': pos,
            'size': size,
            'data': shader_data
        })
        
        offset = pos + size
    
    return shaders


def extract_shaders_by_offsets(data, offsets, platforms):
    """
    Extract shaders using Unity's offset metadata
    offsets indicate where each shader variant starts
    """
    if isinstance(offsets[0], list):
        offsets = [item for sublist in offsets for item in sublist]
    
    platform_name = platforms[0] if platforms else "Unknown"
    variant_count = platforms[1] if len(platforms) > 1 else len(offsets)
    
    print(f"\nPlatform: {platform_name}")
    print(f"Expected shader variants: {variant_count}")
    print(f"Offset points: {len(offsets)}")
    
    shaders = []
    
    # Extract shader at each offset
    for i, offset in enumerate(offsets):
        # Determine end offset (next shader start or end of data)
        if i + 1 < len(offsets):
            end = offsets[i + 1]
        else:
            end = len(data)
        
        chunk = data[offset:end]
        
        # Look for DXBC in this chunk
        dxbc_pos = chunk.find(b'DXBC')
        if dxbc_pos == -1:
            print(f"  Variant {i+1}: No DXBC found at offset {offset}")
            continue
        
        # Read DXBC size
        if dxbc_pos + 28 > len(chunk):
            print(f"  Variant {i+1}: Incomplete DXBC header at offset {offset}")
            continue
        
        size = struct.unpack('<I', chunk[dxbc_pos+24:dxbc_pos+28])[0]
        shader_data = chunk[dxbc_pos:dxbc_pos+size]
        
        shaders.append({
            'variant': i + 1,
            'offset': offset + dxbc_pos,
            'size': size,
            'data': shader_data,
            'platform': platform_name
        })
        
        print(f"  ✓ Variant {i+1}: Found DXBC shader ({size} bytes) at offset {offset + dxbc_pos}")
    
    return shaders


def process_shader_json(json_path, output_dir):
    """Process Unity shader JSON and extract all shader variants"""
    
    # Read JSON
    try:
        with open(json_path, 'r', encoding='utf-8') as f:
            data = json.load(f)
    except Exception as e:
        print(f"Error reading JSON: {e}", file=sys.stderr)
        return False
    
    # Find shader data
    shader_blobs = find_shader_data(data)
    
    if not shader_blobs:
        print("No shader blobs found in JSON")
        return False
    
    print(f"Found {len(shader_blobs)} shader blob(s)")
    print("=" * 80)
    
    output_path = Path(output_dir)
    output_path.mkdir(parents=True, exist_ok=True)
    
    all_shaders = []
    
    for blob_idx, blob_info in enumerate(shader_blobs, 1):
        print(f"\n{'='*80}")
        print(f"Processing Blob #{blob_idx}")
        print(f"Path: {blob_info['path']}")
        print('='*80)
        
        metadata = blob_info['metadata']
        
        if metadata:
            print("\nMetadata:")
            for key, value in metadata.items():
                print(f"  {key}: {value}")
        
        try:
            # Decode base64
            compressed_data = base64.b64decode(blob_info['blob'])
            print(f"\nCompressed size: {len(compressed_data)} bytes")
            
            # Decompress
            if all(k in metadata for k in ["offsets", "compressedLengths", "decompressedLengths"]):
                decompressed = decompress_unity_chunked(
                    compressed_data,
                    metadata["offsets"],
                    metadata["compressedLengths"],
                    metadata["decompressedLengths"]
                )
            else:
                raise Exception("Missing required metadata for decompression")
            
            print(f"✓ Decompressed size: {len(decompressed)} bytes")
            
            # Extract individual shaders
            if "offsets" in metadata and "platforms" in metadata:
                # Use Unity's offset metadata
                shaders = extract_shaders_by_offsets(
                    decompressed,
                    metadata["offsets"],
                    metadata["platforms"]
                )
            else:
                # Fallback: search for DXBC headers
                print("\nSearching for DXBC headers...")
                shaders = find_dxbc_shaders(decompressed)
                shaders = [{'variant': i+1, **s} for i, s in enumerate(shaders)]
            
            if not shaders:
                print("✗ No shader objects found in decompressed data")
                continue
            
            print(f"\n✓ Found {len(shaders)} shader variant(s)")
            
            # Save each shader
            for shader in shaders:
                platform = shader.get('platform', 'unknown')
                variant = shader['variant']
                
                # Determine shader type from signature
                shader_type = "unknown"
                shader_data = shader['data']
                if b'SV_POSITION' in shader_data and b'POSITION' in shader_data:
                    if shader_data.find(b'SV_POSITION') > shader_data.find(b'POSITION'):
                        shader_type = "vs"  # Vertex shader (POSITION input -> SV_POSITION output)
                    else:
                        shader_type = "ps"  # Pixel shader (SV_POSITION input)
                elif b'SV_Target' in shader_data:
                    shader_type = "ps"  # Pixel shader
                elif b'SV_Position' in shader_data:
                    shader_type = "vs"  # Vertex shader
                
                filename = f"shader_blob{blob_idx}_{platform}_variant{variant}_{shader_type}.dxbc"
                filepath = output_path / filename
                
                with open(filepath, 'wb') as f:
                    f.write(shader['data'])
                
                print(f"  ✓ Saved: {filename} ({shader['size']} bytes)")
                
                all_shaders.append({
                    'file': filename,
                    'path': filepath,
                    'variant': variant,
                    'platform': platform,
                    'size': shader['size'],
                    'type': shader_type
                })
        
        except Exception as e:
            print(f"\n✗ Error processing blob: {e}")
            import traceback
            traceback.print_exc()
    
    # Summary
    print("\n" + "=" * 80)
    print("SUMMARY")
    print("=" * 80)
    print(f"Total shader variants extracted: {len(all_shaders)}")
    print(f"Output directory: {output_path.absolute()}")
    
    if all_shaders:
        print("\nExtracted shaders:")
        for shader in all_shaders:
            shader_type_desc = {
                'vs': 'Vertex Shader',
                'ps': 'Pixel Shader',
                'gs': 'Geometry Shader',
                'cs': 'Compute Shader',
                'unknown': 'Unknown Type'
            }.get(shader['type'], 'Unknown')
            
            print(f"  {shader['file']}")
            print(f"    Type: {shader_type_desc}, Platform: {shader['platform']}, Size: {shader['size']} bytes")
        
        print("\nTo decompile all shaders:")
        for shader in all_shaders:
            print(f"  cmd_Decompiler.exe -D {shader['path']}")
        
        print("\nOr decompile to a specific output file:")
        print(f"  cmd_Decompiler.exe -D {output_path / all_shaders[0]['file']} -o output.txt")
    
    return len(all_shaders) > 0


def main():
    parser = argparse.ArgumentParser(
        description="Extract Unity shader variants from JSON files"
    )
    parser.add_argument(
        "json_file",
        help="Path to Unity shader JSON file"
    )
    parser.add_argument(
        "-o", "--output",
        help="Output directory for extracted shaders",
        default="extracted_shaders"
    )
    
    args = parser.parse_args()
    
    if not HAS_LZ4:
        print("\nERROR: lz4 library not installed.")
        print("Install with: pip install lz4")
        sys.exit(1)
    
    if not Path(args.json_file).exists():
        print(f"Error: File '{args.json_file}' not found", file=sys.stderr)
        sys.exit(1)
    
    success = process_shader_json(args.json_file, args.output)
    
    if not success:
        sys.exit(1)


if __name__ == "__main__":
    main()