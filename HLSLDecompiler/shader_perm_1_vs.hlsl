cbuffer CB0UBO : register(b0, space0)
{
    float4 CB0_m0[200] : packoffset(c0);
};

cbuffer CB1UBO : register(b1, space0)
{
    float4 CB1_m0[4] : packoffset(c0);
};

cbuffer CB2UBO : register(b2, space0)
{
    float4 CB2_m0[165] : packoffset(c0);
};


static float4 gl_Position;
static float3 POSITION;
static float3 NORMAL;
static float4 TANGENT;
static float4 COLOR;
static float2 TEXCOORD;
static float2 TEXCOORD_1;
static float2 TEXCOORD_2;
static float2 TEXCOORD_3;
static float3 TEXCOORD_4;

struct SPIRV_Cross_Input
{
    float3 POSITION : TEXCOORD0;
    float3 NORMAL : TEXCOORD1;
    float4 TANGENT : TEXCOORD2;
    float4 COLOR : TEXCOORD3;
    float2 TEXCOORD : TEXCOORD4;
    float2 TEXCOORD_1 : TEXCOORD5;
    float2 TEXCOORD_2 : TEXCOORD6;
    float2 TEXCOORD_3 : TEXCOORD7;
    float3 TEXCOORD_4 : TEXCOORD8;
};

struct SPIRV_Cross_Output
{
    float4 gl_Position : SV_Position;
};

void vert_main()
{
    precise float _50 = POSITION.y * CB1_m0[1u].x;
    precise float _51 = POSITION.y * CB1_m0[1u].y;
    precise float _52 = POSITION.y * CB1_m0[1u].z;
    precise float _81 = mad(CB1_m0[2u].x, POSITION.z, mad(CB1_m0[0u].x, POSITION.x, _50)) + CB1_m0[3u].x;
    precise float _82 = mad(CB1_m0[2u].y, POSITION.z, mad(CB1_m0[0u].y, POSITION.x, _51)) + CB1_m0[3u].y;
    precise float _83 = mad(CB1_m0[2u].z, POSITION.z, mad(CB1_m0[0u].z, POSITION.x, _52)) + CB1_m0[3u].z;
    float _140;
    float _141;
    float _142;
    if (CB0_m0[50u].x == 1.0f)
    {
        precise float _101 = CB0_m0[199u].x * CB2_m0[164u].x;
        precise float _102 = CB0_m0[199u].y * CB2_m0[164u].x;
        precise float _103 = CB0_m0[199u].z * CB2_m0[164u].x;
        precise float _106 = COLOR.z * 255.0f;
        float _120 = max(asfloat((0.0f >= float(uint(_106) & 128u)) ? 0u : 1065353216u), CB2_m0[164u].y);
        precise float _121 = (-0.0f) - _101;
        precise float _123 = (-0.0f) - _102;
        precise float _124 = (-0.0f) - _103;
        _140 = mad(CB0_m0[199u].y, CB0_m0[184u].x, mad(_123, _120, _82));
        _141 = mad(CB0_m0[199u].z, CB0_m0[184u].x, mad(_124, _120, _83));
        _142 = mad(CB0_m0[199u].x, CB0_m0[184u].x, mad(_121, _120, _81));
    }
    else
    {
        _140 = _82;
        _141 = _83;
        _142 = _81;
    }
    precise float _143 = (-0.0f) - _142;
    precise float _144 = (-0.0f) - _140;
    precise float _145 = (-0.0f) - _141;
    precise float _152 = _143 + CB0_m0[53u].x;
    precise float _153 = _144 + CB0_m0[53u].y;
    precise float _154 = _145 + CB0_m0[53u].z;
    float _159 = sqrt(sqrt(dot(float3(_152, _153, _154), float3(_152, _153, _154))));
    precise float _165 = _159 * CB0_m0[199u].x;
    precise float _166 = _159 * CB0_m0[199u].y;
    precise float _167 = _159 * CB0_m0[199u].z;
    precise float _168 = (-0.0f) - _165;
    precise float _169 = (-0.0f) - _166;
    precise float _170 = (-0.0f) - _167;
    precise float _178 = (-0.0f) - CB0_m0[1u].x;
    precise float _180 = (-0.0f) - CB0_m0[1u].y;
    precise float _182 = (-0.0f) - CB0_m0[1u].z;
    float _187 = mad(_178, CB0_m0[190u].x, mad(_168, 0.00999999977648258209228515625f, _142));
    float _188 = mad(_180, CB0_m0[190u].x, mad(_169, 0.00999999977648258209228515625f, _140));
    float _189 = mad(_182, CB0_m0[190u].x, mad(_170, 0.00999999977648258209228515625f, _141));
    precise float _197 = _188 * CB0_m0[125u].x;
    precise float _198 = _188 * CB0_m0[125u].y;
    precise float _199 = _188 * CB0_m0[125u].z;
    precise float _200 = _188 * CB0_m0[125u].w;
    precise float _230 = mad(CB0_m0[126u].x, _189, mad(CB0_m0[124u].x, _187, _197)) + CB0_m0[127u].x;
    precise float _231 = mad(CB0_m0[126u].y, _189, mad(CB0_m0[124u].y, _187, _198)) + CB0_m0[127u].y;
    precise float _232 = mad(CB0_m0[126u].z, _189, mad(CB0_m0[124u].z, _187, _199)) + CB0_m0[127u].z;
    precise float _233 = mad(CB0_m0[126u].w, _189, mad(CB0_m0[124u].w, _187, _200)) + CB0_m0[127u].w;
    gl_Position.z = min(_233, _232);
    gl_Position.x = _230;
    gl_Position.y = _231;
    gl_Position.w = _233;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    POSITION = stage_input.POSITION;
    NORMAL = stage_input.NORMAL;
    TANGENT = stage_input.TANGENT;
    COLOR = stage_input.COLOR;
    TEXCOORD = stage_input.TEXCOORD;
    TEXCOORD_1 = stage_input.TEXCOORD_1;
    TEXCOORD_2 = stage_input.TEXCOORD_2;
    TEXCOORD_3 = stage_input.TEXCOORD_3;
    TEXCOORD_4 = stage_input.TEXCOORD_4;
    vert_main();
    SPIRV_Cross_Output stage_output;
    stage_output.gl_Position = gl_Position;
    return stage_output;
}
