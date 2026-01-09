cbuffer CB0UBO : register(b0, space0)
{
    float4 CB0_m0[201] : packoffset(c0);
};

cbuffer CB1UBO : register(b1, space0)
{
    float4 CB1_m0[29] : packoffset(c0);
};

cbuffer CB2UBO : register(b2, space0)
{
    float4 CB2_m0[27] : packoffset(c0);
};

cbuffer CB3UBO : register(b3, space0)
{
    float4 CB3_m0[41] : packoffset(c0);
};

cbuffer CB4UBO : register(b4, space0)
{
    float4 CB4_m0[169] : packoffset(c0);
};

Texture2DArray<float4> T0 : register(t0, space0);
Buffer<uint4> T1 : register(t1, space0);
Texture2D<float4> T2 : register(t2, space0);
Texture2D<float4> T3 : register(t3, space0);
Texture2D<float4> T4 : register(t4, space0);
Texture2D<float4> T5 : register(t5, space0);
Texture2D<float4> T6 : register(t6, space0);
Texture2DArray<float4> T7 : register(t7, space0);
Texture2D<float4> T8 : register(t8, space0);
Texture2D<float4> T9 : register(t9, space0);
Texture2D<float4> T10 : register(t10, space0);
Texture2D<float4> T11 : register(t11, space0);
Texture2D<float4> T12 : register(t12, space0);
Texture2D<float4> T13 : register(t13, space0);
Texture2D<float4> T14 : register(t14, space0);
Texture2D<float4> T15 : register(t15, space0);
SamplerState S0 : register(s0, space0);
SamplerComparisonState S1 : register(s1, space0);
SamplerState S2 : register(s2, space0);
SamplerState S3 : register(s3, space0);
SamplerState S4 : register(s4, space0);
SamplerState S5 : register(s5, space0);
SamplerState S6 : register(s6, space0);
SamplerState S7 : register(s7, space0);

static float4 gl_FragCoord;
static bool gl_FrontFacing;
static float4 TEXCOORD;
static float4 TEXCOORD_1;
static float4 TEXCOORD_2;
static float4 TEXCOORD_3;
static float4 TEXCOORD_4;
static float4 TEXCOORD_5;
static float4 TXCOORDD_6;
static float4 TEXCOORD_7;
static float3 TEXCOORD_8;
static float4 SV_Target;
static float4 SV_Target_1;
static float4 SV_Target_2;
static float4 SV_Target_3;

struct SPIRV_Cross_Input
{
    float4 TEXCOORD : TEXCOORD0;
    float4 TEXCOORD_1 : TEXCOORD1;
    float4 TEXCOORD_2 : TEXCOORD2;
    float4 TEXCOORD_3 : TEXCOORD3;
    float4 TEXCOORD_4 : TEXCOORD4;
    float4 TEXCOORD_5 : TEXCOORD5;
    float4 TXCOORDD_6 : TEXCOORD6;
    float4 TEXCOORD_7 : TEXCOORD7;
    float3 TEXCOORD_8 : TEXCOORD8;
    float4 gl_FragCoord : SV_Position;
    bool gl_FrontFacing : SV_IsFrontFace;
};

struct SPIRV_Cross_Output
{
    float4 SV_Target : SV_Target0;
    float4 SV_Target_1 : SV_Target1;
    float4 SV_Target_2 : SV_Target2;
    float4 SV_Target_3 : SV_Target3;
};

static bool discard_state;

uint spvBitfieldInsert(uint Base, uint Insert, uint Offset, uint Count)
{
    uint Mask = Count == 32 ? 0xffffffff : (((1u << Count) - 1) << (Offset & 31));
    return (Base & ~Mask) | ((Insert << Offset) & Mask);
}

uint2 spvBitfieldInsert(uint2 Base, uint2 Insert, uint Offset, uint Count)
{
    uint Mask = Count == 32 ? 0xffffffff : (((1u << Count) - 1) << (Offset & 31));
    return (Base & ~Mask) | ((Insert << Offset) & Mask);
}

uint3 spvBitfieldInsert(uint3 Base, uint3 Insert, uint Offset, uint Count)
{
    uint Mask = Count == 32 ? 0xffffffff : (((1u << Count) - 1) << (Offset & 31));
    return (Base & ~Mask) | ((Insert << Offset) & Mask);
}

uint4 spvBitfieldInsert(uint4 Base, uint4 Insert, uint Offset, uint Count)
{
    uint Mask = Count == 32 ? 0xffffffff : (((1u << Count) - 1) << (Offset & 31));
    return (Base & ~Mask) | ((Insert << Offset) & Mask);
}

void discard_cond(bool _4907)
{
    if (_4907)
    {
        discard_state = true;
    }
}

void discard_exit()
{
    if (discard_state)
    {
        discard;
    }
}

void frag_main()
{
    discard_state = false;
    bool _124 = 0.5f < CB1_m0[28u].y;
    float _148 = (TEXCOORD_5.x / TEXCOORD_5.w) + ((-0.0f) - (TXCOORDD_6.x / TXCOORDD_6.w));
    float _149 = (TEXCOORD_5.y / TEXCOORD_5.w) + ((-0.0f) - (TXCOORDD_6.y / TXCOORDD_6.w));
    float _158 = (-0.0f) - _149;
    SV_Target_2.x = _124 ? mad(sqrt(abs(_148 * 0.5f)) * float(int((0u - ((0.0f < _148) ? 4294967295u : 0u)) + ((_148 < 0.0f) ? 4294967295u : 0u))), 0.5f, 0.4980392158031463623046875f) : 0.4979999959468841552734375f;
    SV_Target_2.y = _124 ? mad(sqrt(abs(_149 * (-0.5f))) * float(int((0u - ((0.0f < _158) ? 4294967295u : 0u)) + ((_158 < 0.0f) ? 4294967295u : 0u))), 0.5f, 0.4980392158031463623046875f) : 0.4979999959468841552734375f;
    uint _209 = 3u & 31u;
    uint _215 = 2u & 31u;
    uint _221 = 1u & 31u;
    uint _228 = 0u & 31u;
    SV_Target_2.z = float(spvBitfieldInsert((spvBitfieldInsert(0u, (0.0f != CB4_m0[152u].x) ? 4294967295u : 0u, _209, min((1u & 31u), (32u - _209))) + spvBitfieldInsert(0u, (CB3_m0[40u].x == 1.0f) ? 4294967295u : 0u, _215, min((1u & 31u), (32u - _215)))) + spvBitfieldInsert(0u, (0.0f != CB4_m0[151u].z) ? 4294967295u : 0u, _221, min((1u & 31u), (32u - _221))), (0.0f != CB4_m0[151u].w) ? 4294967295u : 0u, _228, min((1u & 31u), (32u - _228)))) * 0.0039215688593685626983642578125f;
    uint _249 = (((gl_FrontFacing ? 4294967295u : 0u) == 0u) ? 4294967295u : 0u) & ((0.5f < CB4_m0[147u].x) ? 4294967295u : 0u);
    bool _256 = ((((1.0f < TEXCOORD.z) ? 4294967295u : 0u) & ((0.5f < CB4_m0[147u].y) ? 4294967295u : 0u)) | _249) != 0u;
    float _265 = _256 ? TEXCOORD.z : TEXCOORD.x;
    float _266 = _256 ? TEXCOORD.w : TEXCOORD.y;
    float4 _273 = T3.SampleBias(S0, float2(_265, _266), CB0_m0[191u].x);
    float _276 = _273.x;
    float _277 = _273.y;
    float _278 = _273.z;
    bool _288 = _249 != 0u;
    float _297 = _288 ? TEXCOORD.z : TEXCOORD.x;
    float _298 = _288 ? TEXCOORD.w : TEXCOORD.y;
    float4 _303 = T4.SampleBias(S0, float2(_297, _298), CB0_m0[191u].x);
    float _321 = mad(clamp(_303.x, 0.0f, 1.0f), 2.0f, -1.0039999485015869140625f) * CB4_m0[137u].y;
    float _322 = mad(clamp(_303.y, 0.0f, 1.0f), 2.0f, -1.0039999485015869140625f) * CB4_m0[137u].y;
    float _330 = asfloat(((gl_FrontFacing ? 4294967295u : 0u) != 0u) ? 1065353216u : 3212836864u) * sqrt(((-0.0f) - min(dot(float2(_321, _322), float2(_321, _322)), 1.0f)) + 1.0f);
    float _355 = mad(_330, TEXCOORD_2.x, mad(_321, TEXCOORD_3.x, _322 * TEXCOORD_4.x));
    float _356 = mad(_330, TEXCOORD_2.y, mad(_321, TEXCOORD_3.y, _322 * TEXCOORD_4.y));
    float _357 = mad(_330, TEXCOORD_2.z, mad(_321, TEXCOORD_3.z, _322 * TEXCOORD_4.z));
    float _361 = rsqrt(dot(float3(_355, _356, _357), float3(_355, _356, _357)));
    float _362 = _361 * _355;
    float _363 = _361 * _356;
    float _364 = _361 * _357;
    float4 _369 = T5.SampleBias(S0, float2(_297, _298), CB0_m0[191u].x);
    float _374 = clamp(_369.z, 0.0f, 1.0f);
    float _375 = clamp(_369.x, 0.0f, 1.0f);
    float _376 = clamp(_369.y, 0.0f, 1.0f);
    float _380 = _376 * CB4_m0[137u].z;
    float4 _385 = T6.SampleBias(S0, float2(_297, _298), CB0_m0[191u].x);
    float _391 = clamp(_385.y, 0.0f, 1.0f);
    float _392 = clamp(_385.z, 0.0f, 1.0f);
    uint _400 = (0.5f < CB4_m0[144u].x) ? 4294967295u : 0u;
    uint _402 = ((0.5f < CB4_m0[144u].y) ? 4294967295u : 0u) & _400;
    float _413 = asfloat(((_402 != 0u) ? asuint(max((_392 + (-0.20000000298023223876953125f)) * 1.25f, 0.0f)) : asuint(_392)) & _400);
    uint _421 = uint(int(max(((-0.0f) - floor(_375 * 5.0f)) + 4.0f, 0.0f)));
    bool _428 = _421 == asuint(CB4_m0[132u]).y;
    uint _429 = _428 ? 4294967295u : 0u;
    uint _430 = _429 & 1u;
    bool _435 = 0.5f < CB4_m0[136u].w;
    float4 _449 = T2.SampleBias(S0, float2(TEXCOORD.x * CB4_m0[137u].x, TEXCOORD.y * CB4_m0[137u].x), CB0_m0[191u].x);
    float _475 = asfloat(_435 ? asuint(max(mad(_276, CB4_m0[57u].x, _449.x) + (-0.5f), 0.0f)) : asuint(_276 * CB4_m0[57u].x));
    float _477 = asfloat(_435 ? asuint(max(mad(_277, CB4_m0[57u].y, _449.y) + (-0.5f), 0.0f)) : asuint(_277 * CB4_m0[57u].y));
    float _479 = asfloat(_435 ? asuint(max(mad(_278, CB4_m0[57u].z, _449.z) + (-0.5f), 0.0f)) : asuint(_278 * CB4_m0[57u].z));
    bool _480 = _375 < 0.20000000298023223876953125f;
    bool _482 = _375 < 0.4000000059604644775390625f;
    bool _484 = _375 < 0.60000002384185791015625f;
    bool _486 = _375 < 0.800000011920928955078125f;
    float _530 = ((-0.0f) - TEXCOORD_2.w) + CB0_m0[53u].x;
    float _531 = ((-0.0f) - TEXCOORD_3.w) + CB0_m0[53u].y;
    float _532 = ((-0.0f) - TEXCOORD_4.w) + CB0_m0[53u].z;
    float _533 = dot(float3(_530, _531, _532), float3(_530, _531, _532));
    float _538 = rsqrt(max(_533, 1.1754943508222875079687365372222e-38f));
    float _539 = _538 * _530;
    float _540 = _538 * _531;
    float _541 = _538 * _532;
    float _542 = sqrt(_533);
    bool _548 = int(0u) < int(asuint(CB0_m0[188u]).z);
    float _619;
    float _620;
    float _621;
    float _622;
    float _623;
    float _624;
    float _625;
    float _626;
    float _627;
    if (_548)
    {
        uint _559 = uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u)));
        uint _560 = _559 * 32u;
        uint4 _572 = uint4(T1.Load(_560).x, T1.Load(_560 + 1u).x, T1.Load(_560 + 2u).x, T1.Load(_560 + 3u).x);
        uint _583 = (_559 * 32u) + 4u;
        uint4 _595 = uint4(T1.Load(_583).x, T1.Load(_583 + 1u).x, T1.Load(_583 + 2u).x, T1.Load(_583 + 3u).x);
        _619 = asfloat(_572.x);
        _620 = asfloat(_572.y);
        _621 = asfloat(_572.z);
        _622 = asfloat(_572.w);
        _623 = asfloat(_595.x);
        _624 = asfloat(_595.y);
        _625 = asfloat(_595.z);
        _626 = asfloat(T1.Load((_559 * 32u) + 8u).x);
        _627 = asfloat(_595.w);
    }
    else
    {
        _619 = asfloat(0u);
        _620 = asfloat(0u);
        _621 = asfloat(0u);
        _622 = asfloat(0u);
        _623 = asfloat(0u);
        _624 = asfloat(0u);
        _625 = asfloat(0u);
        _626 = asfloat(0u);
        _627 = asfloat(0u);
    }
    float _631 = ((-0.0f) - TEXCOORD_2.w) + _623;
    float _632 = ((-0.0f) - TEXCOORD_3.w) + _624;
    float _633 = ((-0.0f) - TEXCOORD_4.w) + _625;
    float _637 = max(dot(float3(_631, _632, _633), float3(_631, _632, _633)), 1.1754943508222875079687365372222e-38f);
    float _638 = rsqrt(_637);
    float _639 = _638 * _631;
    float _640 = _638 * _632;
    float _641 = _638 * _633;
    float _646 = max(((-0.0f) - (_637 / (_622 * _622))) + 1.0f, 0.0f);
    float _664 = mad(_646, _619 + ((-0.0f) - CB0_m0[189u].x), CB0_m0[189u].x);
    float _665 = mad(_646, _620 + ((-0.0f) - CB0_m0[189u].y), CB0_m0[189u].y);
    float _666 = mad(_646, _621 + ((-0.0f) - CB0_m0[189u].z), CB0_m0[189u].z);
    float _668 = mad(_646, _646 + (-1.0f), 1.0f);
    float _1274;
    float _1275;
    if (0.5f < CB0_m0[22u].x)
    {
        float _717 = mad(_362, CB4_m0[135u].x, TEXCOORD_2.w) + ((-0.0f) - CB3_m0[39u].x);
        float _718 = mad(_363, CB4_m0[135u].x, TEXCOORD_3.w) + ((-0.0f) - CB3_m0[39u].y);
        float _719 = mad(_364, CB4_m0[135u].x, TEXCOORD_4.w) + ((-0.0f) - CB3_m0[39u].z);
        float _755 = mad(CB3_m0[35u].z, _719, mad(CB3_m0[33u].z, _717, _718 * CB3_m0[34u].z)) + CB3_m0[36u].z;
        float _765 = mad(mad(CB3_m0[35u].x, _719, mad(CB3_m0[33u].x, _717, _718 * CB3_m0[34u].x)) + CB3_m0[36u].x, CB3_m0[38u].x, CB3_m0[38u].z);
        float _766 = mad(mad(CB3_m0[35u].y, _719, mad(CB3_m0[33u].y, _717, _718 * CB3_m0[34u].y)) + CB3_m0[36u].y, CB3_m0[38u].y, CB3_m0[38u].w);
        float _849 = ((((((T15.SampleCmpLevelZero(S1, float2(_765 + ((-0.0f) - CB0_m0[200u].x), _766 + ((-0.0f) - CB0_m0[200u].y)), _755).xxxx.x + T15.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, -1.0f, _765), mad(CB0_m0[200u].y, 1.0f, _766)), _755).xxxx.x) + T15.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 1.0f, _765), mad(CB0_m0[200u].y, -1.0f, _766)), _755).xxxx.x) + T15.SampleCmpLevelZero(S1, float2(_765 + CB0_m0[200u].x, _766 + CB0_m0[200u].y), _755).xxxx.x) + T15.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, -1.4142129421234130859375f, _765), mad(CB0_m0[200u].y, 0.0f, _766)), _755).xxxx.x) + T15.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 1.4142129421234130859375f, _765), mad(CB0_m0[200u].y, 0.0f, _766)), _755).xxxx.x) + T15.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 0.0f, _765), mad(CB0_m0[200u].y, -1.4142129421234130859375f, _766)), _755).xxxx.x) + T15.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 0.0f, _765), mad(CB0_m0[200u].y, 1.4142129421234130859375f, _766)), _755).xxxx.x;
        float _872 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[20u].x);
        float _873 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[20u].y);
        float _874 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[20u].z);
        float _884 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[21u].x);
        float _885 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[21u].y);
        float _886 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[21u].z);
        float _895 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[22u].x);
        float _896 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[22u].y);
        float _897 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[22u].z);
        float _907 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[23u].x);
        float _908 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[23u].y);
        float _909 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[23u].z);
        bool _929 = dot(float3(_872, _873, _874), float3(_872, _873, _874)) < CB2_m0[24u].x;
        bool _930 = dot(float3(_884, _885, _886), float3(_884, _885, _886)) < CB2_m0[24u].y;
        bool _931 = dot(float3(_895, _896, _897), float3(_895, _896, _897)) < CB2_m0[24u].z;
        float _963 = ((-0.0f) - dot(float4(asfloat((_929 ? 4294967295u : 0u) & 1065353216u), max(asfloat(_929 ? 3212836864u : 2147483648u) + asfloat((_930 ? 4294967295u : 0u) & 1065353216u), 0.0f), max(asfloat(_930 ? 3212836864u : 2147483648u) + asfloat((_931 ? 4294967295u : 0u) & 1065353216u), 0.0f), max(asfloat(_931 ? 3212836864u : 2147483648u) + asfloat(((dot(float3(_907, _908, _909), float3(_907, _908, _909)) < CB2_m0[24u].w) ? 4294967295u : 0u) & 1065353216u), 0.0f)), float4(4.0f, 3.0f, 2.0f, 1.0f))) + 4.0f;
        uint _965 = uint(_963) << 2u;
        uint _968 = _965 + 1u;
        uint _987 = _965 + 2u;
        uint _998 = _965 + 3u;
        float _1004 = mad(CB2_m0[_987].x, TEXCOORD_4.w, mad(CB2_m0[_965].x, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_968].x)) + CB2_m0[_998].x;
        float _1005 = mad(CB2_m0[_987].y, TEXCOORD_4.w, mad(CB2_m0[_965].y, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_968].y)) + CB2_m0[_998].y;
        float _1006 = mad(CB2_m0[_987].z, TEXCOORD_4.w, mad(CB2_m0[_965].z, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_968].z)) + CB2_m0[_998].z;
        float _1020 = frac(sin(dot(float2(frac(_1004 * 1024.0f), frac(_1005 * 1024.0f)), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
        float _1021 = sin(_1020);
        float _1022 = cos(_1020);
        float _1033 = (CB2_m0[26u].x * 1.2999999523162841796875f) * _1021;
        float _1034 = (CB2_m0[26u].x * 1.2999999523162841796875f) * _1022;
        float _1035 = (CB2_m0[26u].y * 1.2999999523162841796875f) * _1021;
        float _1036 = (CB2_m0[26u].y * 1.2999999523162841796875f) * _1022;
        float _1132 = ((((T0.SampleCmpLevelZero(S1, float3(_1004 + ((_1034 * (-0.97829997539520263671875f)) + (_1033 * (-0.172399997711181640625f))), _1005 + ((_1036 * 0.172399997711181640625f) + (_1035 * (-0.97829997539520263671875f))), _963), _1006).xxxx.x + T0.SampleCmpLevelZero(S1, float3(_1004 + ((_1034 * 0.484600007534027099609375f) + (_1033 * 0.874700009822845458984375f)), _1005 + ((_1036 * (-0.874700009822845458984375f)) + (_1035 * 0.484600007534027099609375f)), _963), _1006).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1004 + ((_1034 * (-0.037399999797344207763671875f)) + (_1033 * (-0.96829998493194580078125f))), _1005 + ((_1036 * 0.96829998493194580078125f) + (_1035 * (-0.037399999797344207763671875f))), _963), _1006).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1004 + ((_1034 * 0.419600009918212890625f) + (_1033 * 0.278299987316131591796875f)), _1005 + ((_1036 * (-0.278299987316131591796875f)) + (_1035 * 0.419600009918212890625f)), _963), _1006).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1004 + ((_1034 * 0.83910000324249267578125f) + (_1033 * (-0.1507000029087066650390625f))), _1005 + ((_1036 * (-0.1507000029087066650390625f)) + (_1035 * 0.83910000324249267578125f)), _963), _1006).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1004 + ((_1034 * 0.4792999923229217529296875f) + (_1033 * (-0.6417000293731689453125f))), _1005 + ((_1036 * (-0.6417000293731689453125f)) + (_1035 * 0.4792999923229217529296875f)), _963), _1006).xxxx.x;
        float _1213 = (((((_1132 + T0.SampleCmpLevelZero(S1, float3(_1004 + ((_1034 * (-0.81610000133514404296875f)) + (_1033 * 0.577899992465972900390625f)), _1005 + ((_1036 * 0.577899992465972900390625f) + (_1035 * (-0.81610000133514404296875f))), _963), _1006).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1004 + ((_1034 * (-0.4587999880313873291015625f)) + (_1033 * (-0.5408999919891357421875f))), _1005 + ((_1036 * 0.5408999919891357421875f) + (_1035 * (-0.4587999880313873291015625f))), _963), _1006).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1004 + ((_1034 * (-0.19189999997615814208984375f)) + (_1033 * 0.704400002956390380859375f)), _1005 + ((_1036 * 0.704400002956390380859375f) + (_1035 * (-0.19189999997615814208984375f))), _963), _1006).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1004 + ((_1034 * (-0.446399986743927001953125f)) + (_1033 * 0.105300001800060272216796875f)), _1005 + ((_1036 * 0.105300001800060272216796875f) + (_1035 * (-0.446399986743927001953125f))), _963), _1006).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1004 + ((_1034 * 0.06610000133514404296875f) + (_1033 * (-0.20659999549388885498046875f))), _1005 + ((_1036 * (-0.20659999549388885498046875f)) + (_1035 * 0.06610000133514404296875f)), _963), _1006).xxxx.x) * CB2_m0[25u].x;
        float _1238 = clamp(mad(_626, 2.0f, -1.0f), 0.0f, 1.0f);
        float _1242 = _1238 * CB0_m0[189u].w;
        float _1252 = (asfloat(((((0.0f >= _1006) ? 4294967295u : 0u) | ((_1006 >= 1.0f) ? 4294967295u : 0u)) != 0u) ? 1065353216u : asuint(mad(_1213, 0.090899996459484100341796875f, ((-0.0f) - CB2_m0[25u].x) + 1.0f))) * mad(CB3_m0[40u].y, ((-0.0f) - _627) + 1.0f, _627)) * asfloat((0.5f < CB3_m0[37u].x) ? asuint(min(mad(_1238, (asfloat(_480 ? asuint(CB4_m0[163u]).w : (_482 ? asuint(CB4_m0[163u]).z : (_484 ? asuint(CB4_m0[163u]).y : (_486 ? asuint(CB4_m0[163u]).x : asuint(CB4_m0[162u]).w)))) * mad(_849 + T15.SampleCmpLevelZero(S1, float2(_765, _766), _755).xxxx.x, 0.11110000312328338623046875f, -1.0f)) * CB3_m0[37u].x, 1.0f), 1.0f)) : 1065353216u);
        _1274 = mad(_1252, CB4_m0[133u].z, ((-0.0f) - CB4_m0[133u].z) + 1.0f);
        _1275 = mad(_1252, _1242 * CB4_m0[133u].z, mad((-0.0f) - _1242, CB4_m0[133u].z, 1.0f));
    }
    else
    {
        _1274 = asfloat(1065353216u);
        _1275 = asfloat(1065353216u);
    }
    float _1281 = clamp(CB3_m0[1u].w * 2.5f, 0.0f, 1.0f);
    float _1284 = mad(((-0.0f) - _1281) + 1.0f, _1275, _1281);
    bool _1288 = CB3_m0[3u].w != 0.0f;
    float _1302 = clamp(dot(float3(CB3_m0[3u].xyz), float3(TEXCOORD_2.w, TEXCOORD_3.w, TEXCOORD_4.w)) + ((-0.0f) - CB3_m0[3u].w), 0.0f, 1.0f);
    float _1353 = asfloat(_1288 ? asuint(mad(_1302, ((-0.0f) - _664) + mad(CB0_m0[15u].w, mad((-0.0f) - _664, CB0_m0[15u].x, _664 + CB0_m0[15u].x), _664 * CB0_m0[15u].x), _664)) : asuint(_664));
    float _1355 = asfloat(_1288 ? asuint(mad(_1302, ((-0.0f) - _665) + mad(CB0_m0[15u].w, mad((-0.0f) - _665, CB0_m0[15u].y, _665 + CB0_m0[15u].y), _665 * CB0_m0[15u].y), _665)) : asuint(_665));
    float _1357 = asfloat(_1288 ? asuint(mad(_1302, ((-0.0f) - _666) + mad(CB0_m0[15u].w, mad((-0.0f) - _666, CB0_m0[15u].z, _666 + CB0_m0[15u].z), _666 * CB0_m0[15u].z), _666)) : asuint(_666));
    float _1358 = max(asfloat(_480 ? asuint(CB4_m0[134u]).w : (_482 ? asuint(CB4_m0[134u]).z : (_484 ? asuint(CB4_m0[134u]).y : (_486 ? asuint(CB4_m0[134u]).x : asuint(CB4_m0[133u]).w)))), 9.9999997473787516355514526367188e-06f);
    float _1360 = 1.0f / _1358;
    float _1361 = dot(float3(_362, _363, _364), float3(_639, _640, _641));
    float _1378 = mad(mad(clamp(_303.z, 0.0f, 1.0f), 2.0f, -1.0f), 2.0f, mad(TEXCOORD_7.y, ((-0.0f) - _1361) + mad(_1361 + 1.0f, clamp(mad((-0.0f) - min(_640 * 3.0f, 1.0f), 0.5f, _363) + 1.5f, 0.0f, 1.0f), -1.0f), _1361));
    float _1391 = mad((-0.0f) - _1358, 3.0f, 2.0f);
    float _1392 = ((_1378 * 3.0f) + 3.0f) / _1391;
    float _1393 = (mad(_1378, 3.0f, (-0.0f) - (_1358 * 1.5f)) + 1.0f) / _1391;
    float _1394 = (mad(_1378, 3.0f, (-0.0f) - (_1358 * 4.5f)) + (-1.0f)) / _1391;
    float _1406 = mad(_1360, _1378 + 0.33329999446868896484375f, 0.5f);
    float _1407 = mad(_1360, _1378 + (-0.33329999446868896484375f), 0.5f);
    float _1408 = mad(_1360, _1378 + (-0.33329999446868896484375f), -0.5f);
    float _1419 = clamp(((-0.0f) - _1392) + 1.0f, 0.0f, 1.0f);
    float _1420 = clamp(min(_1392, ((-0.0f) - _1406) + 1.0f), 0.0f, 1.0f);
    float _1421 = clamp(min(((-0.0f) - _1393) + 1.0f, _1406), 0.0f, 1.0f);
    float _1425 = clamp(min(((-0.0f) - _1394) + 1.0f, _1408), 0.0f, 1.0f);
    float _1426 = clamp(_1394, 0.0f, 1.0f);
    float _1432 = mad(CB3_m0[40u].y, ((-0.0f) - _1284) + _1274, _1284);
    float _1439 = clamp(min(mad(_1432, -2.0f, 2.0f), mad(_1432, 2.0f, 0.0f)), 0.0f, 1.0f);
    float _1440 = clamp(mad(_1432, 2.0f, -1.0f), 0.0f, 1.0f);
    float _1441 = clamp(mad(_1432, -2.0f, 1.0f), 0.0f, 1.0f);
    float _1513;
    float _1515;
    float _1517;
    if (0.5f < CB3_m0[40u].y)
    {
        float _1480;
        if (_548)
        {
            _1480 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _1480 = asfloat(0u);
        }
        float _1484 = _1480 * CB0_m0[189u].w;
        float _1485 = _1484 * _1439;
        float _1491 = (mad((-0.0f) - _1439, _1484, _1439) + mad((-0.0f) - _1441, _1484, _1441)) + _1440;
        float _1831;
        if (_548)
        {
            _1831 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 7u).x);
        }
        else
        {
            _1831 = asfloat(0u);
        }
        _1513 = _1831 * _1485;
        _1515 = _1831 * _1491;
        _1517 = mad(_1441, _1484, mad((-0.0f) - _1491, _1831, _1491) + mad((-0.0f) - _1485, _1831, _1485));
    }
    else
    {
        float _1492;
        if (_548)
        {
            _1492 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _1492 = asfloat(0u);
        }
        _1513 = _1492 * _1439;
        _1515 = _1440;
        _1517 = _1492 * _1441;
    }
    float _1525 = mad(_1517, ((-0.0f) - _1421) + (((-0.0f) - _1420) + (((-0.0f) - _1419) + 1.0f)), _1421);
    float _1526 = _1515 + _1513;
    float _1527 = _1526 * clamp(min(_1393, ((-0.0f) - _1407) + 1.0f), 0.0f, 1.0f);
    float _1530 = mad(_1426 + _1425, _1513, _1526 * clamp(min(_1407, ((-0.0f) - _1408) + 1.0f), 0.0f, 1.0f));
    float _1531 = _1425 * _1515;
    float _1534 = _1419 * TEXCOORD_7.x;
    float _1539 = mad((-0.0f) - _1419, TEXCOORD_7.x, _1419) + _1420;
    uint4 _1543 = asuint(CB4_m0[60u]);
    uint4 _1550 = asuint(CB4_m0[59u]);
    uint4 _1560 = asuint(CB4_m0[61u]);
    uint4 _1570 = asuint(CB4_m0[62u]);
    uint4 _1580 = asuint(CB4_m0[63u]);
    uint4 _1593 = asuint(CB4_m0[65u]);
    uint4 _1600 = asuint(CB4_m0[64u]);
    uint4 _1610 = asuint(CB4_m0[66u]);
    uint4 _1620 = asuint(CB4_m0[67u]);
    uint4 _1630 = asuint(CB4_m0[68u]);
    uint4 _1643 = asuint(CB0_m0[10u]);
    uint4 _1649 = asuint(CB0_m0[3u]);
    uint4 _1662 = asuint(CB0_m0[11u]);
    uint4 _1668 = asuint(CB0_m0[4u]);
    uint4 _1681 = asuint(CB0_m0[12u]);
    uint4 _1688 = asuint(CB0_m0[5u]);
    uint4 _1701 = asuint(CB0_m0[9u]);
    uint4 _1708 = asuint(CB0_m0[6u]);
    uint4 _1721 = asuint(CB0_m0[13u]);
    uint4 _1727 = asuint(CB0_m0[7u]);
    uint4 _1739 = asuint(CB0_m0[14u]);
    uint4 _1745 = asuint(CB0_m0[8u]);
    float _1757 = min(_542 * 0.4372499883174896240234375f, 1.0f);
    float _1773 = mad(CB4_m0[133u].y, mad(_1757, CB3_m0[1u].w, (-0.0f) - _1757) + 1.0f, 0.0f);
    float _1774 = mad(CB4_m0[133u].y, mad((-0.0f) - _1757, CB3_m0[1u].w, _1757) + (-1.0f), 1.0f);
    float _1775 = asfloat(_480 ? _1580.x : (_482 ? _1570.x : (_484 ? _1560.x : (_486 ? _1543.x : _1550.x)))) + 6.103515625e-05f;
    float _1777 = asfloat(_480 ? _1580.y : (_482 ? _1570.y : (_484 ? _1560.y : (_486 ? _1543.y : _1550.y)))) + 6.103515625e-05f;
    float _1778 = asfloat(_480 ? _1580.z : (_482 ? _1570.z : (_484 ? _1560.z : (_486 ? _1543.z : _1550.z)))) + 6.103515625e-05f;
    float _1781 = (_1778 + (_1777 + _1775)) * 0.3333300054073333740234375f;
    float _1792 = mad(clamp(_1775 / _1781, 0.0f, 1.0f), _1773, _1774 * _1775);
    float _1793 = mad(clamp(_1777 / _1781, 0.0f, 1.0f), _1773, _1774 * _1777);
    float _1794 = mad(clamp(_1778 / _1781, 0.0f, 1.0f), _1773, _1774 * _1778);
    float _1795 = asfloat(_480 ? _1630.x : (_482 ? _1620.x : (_484 ? _1610.x : (_486 ? _1593.x : _1600.x)))) + 6.103515625e-05f;
    float _1796 = asfloat(_480 ? _1630.y : (_482 ? _1620.y : (_484 ? _1610.y : (_486 ? _1593.y : _1600.y)))) + 6.103515625e-05f;
    float _1797 = asfloat(_480 ? _1630.z : (_482 ? _1620.z : (_484 ? _1610.z : (_486 ? _1593.z : _1600.z)))) + 6.103515625e-05f;
    float _1800 = (_1797 + (_1796 + _1795)) * 0.3333300054073333740234375f;
    float _1810 = mad(clamp(_1795 / _1800, 0.0f, 1.0f), _1773, _1774 * _1795);
    float _1811 = mad(clamp(_1796 / _1800, 0.0f, 1.0f), _1773, _1774 * _1796);
    float _1812 = mad(clamp(_1797 / _1800, 0.0f, 1.0f), _1773, _1774 * _1797);
    float _1854;
    if (_548)
    {
        _1854 = asfloat(T1.Load((uint(max(int(uint(min(int(asuint(CB0_m0[188u]).z + 4294967295u), int(uint(int(CB3_m0[2u].z)))))), int(0u))) * 32u) + 8u).x);
    }
    else
    {
        _1854 = asfloat(0u);
    }
    float _1857 = mad(_1854, ((-0.0f) - _668) + 1.0f, _668);
    float _1858 = _1857 * _1353;
    float _1859 = _1857 * _1355;
    float _1860 = _1857 * _1357;
    float _1861 = min(1.0f / max(_1357 + 1.1754943508222875079687365372222e-38f, max(_1355 + 1.1754943508222875079687365372222e-38f, _1353 + 1.1754943508222875079687365372222e-38f)), 1.0f);
    float _1890 = mad(_1858, mad(_1426, _1515, mad(asfloat(_428 ? _1721.x : _1727.x), _1530, _1531 * asfloat(_428 ? _1701.x : _1708.x))), (_1861 * _1858) * mad(asfloat(_428 ? _1643.x : _1649.x) * _1792, _1527, mad(asfloat(_428 ? _1662.x : _1668.x) * _1792, _1525, mad(asfloat(_428 ? _1739.x : _1745.x) * _1810, _1534, _1539 * (asfloat(_428 ? _1681.x : _1688.x) * _1810)))));
    float _1891 = mad(_1859, mad(_1426, _1515, mad(asfloat(_428 ? _1721.y : _1727.y), _1530, _1531 * asfloat(_428 ? _1701.y : _1708.y))), (_1861 * _1859) * mad(asfloat(_428 ? _1643.y : _1649.y) * _1793, _1527, mad(asfloat(_428 ? _1662.y : _1668.y) * _1793, _1525, mad(asfloat(_428 ? _1739.y : _1745.y) * _1811, _1534, _1539 * (asfloat(_428 ? _1681.y : _1688.y) * _1811)))));
    float _1892 = mad(_1860, mad(_1426, _1515, mad(asfloat(_428 ? _1721.z : _1727.z), _1530, _1531 * asfloat(_428 ? _1701.z : _1708.z))), (_1861 * _1860) * mad(asfloat(_428 ? _1643.z : _1649.z) * _1794, _1527, mad(asfloat(_428 ? _1662.z : _1668.z) * _1794, _1525, mad(asfloat(_428 ? _1739.z : _1745.z) * _1812, _1534, _1539 * (asfloat(_428 ? _1681.z : _1688.z) * _1812)))));
    float _1903;
    float _1905;
    float _1907;
    if (CB0_m0[22u].z >= 0.5f)
    {
        float _1904;
        float _1906;
        float _1908;
        if (CB4_m0[_421 + 10u].x < 50.0f)
        {
            float _1956 = mad(mad(CB0_m0[118u].x, _364, mad(CB0_m0[116u].x, _362, _363 * CB0_m0[117u].x)), 0.5f, 0.5f);
            float _1957 = mad(mad(CB0_m0[118u].y, _364, mad(CB0_m0[116u].y, _362, _363 * CB0_m0[117u].y)), 0.5f, 0.5f);
            float _2265;
            float _2266;
            if (0.5f < CB4_m0[_421 + 15u].z)
            {
                float _2248 = clamp(_385.x, 0.0f, 1.0f) * CB4_m0[_421 + 15u].w;
                _2265 = mad(_2248, _1956, mad(CB4_m0[_421].x, TEXCOORD.x, CB4_m0[_421].z));
                _2266 = mad(_2248, _1957, mad(CB4_m0[_421].y, TEXCOORD.y, CB4_m0[_421].w));
            }
            else
            {
                _2265 = _1956;
                _2266 = _1957;
            }
            float4 _2293 = T7.Sample(S2, float3(_2265 + (CB0_m0[40u].y * CB4_m0[_421 + 10u].w), _2266 + (CB0_m0[40u].y * CB4_m0[_421 + 15u].x), asfloat(asuint(CB4_m0[_421 + 10u]).x)));
            float _2295 = _2293.x;
            float _2296 = _2293.y;
            float _2297 = _2293.z;
            uint _2299 = _421 + 5u;
            float _2305 = _2295 * CB4_m0[_2299].x;
            float _2306 = _2296 * CB4_m0[_2299].y;
            float _2307 = _2297 * CB4_m0[_2299].z;
            float _2308 = mad(asfloat(((CB4_m0[144u].y >= 0.5f) ? 4294967295u : 0u) & 1065353216u), asfloat((_402 != 0u) ? asuint(min(_392 * 5.099999904632568359375f, 1.0f) * asfloat(((0.20000000298023223876953125f >= _392) ? 4294967295u : 0u) & 1065353216u)) : asuint(_392)) + (-1.0f), 1.0f) * _2293.w;
            float _1963;
            float _1964;
            float _1965;
            if (CB4_m0[_421 + 15u].y < 0.5f)
            {
                float _2614 = clamp(_2308 * CB4_m0[_421 + 10u].z, 0.0f, 1.0f);
                uint _2615 = _421 + 10u;
                _1963 = mad(_2614, mad(_2307, CB4_m0[_2615].y, (-0.0f) - _479), _479);
                _1964 = mad(_2614, mad(_2306, CB4_m0[_2615].y, (-0.0f) - _477), _477);
                _1965 = mad(_2614, mad(_2305, CB4_m0[_2615].y, (-0.0f) - _475), _475);
            }
            else
            {
                float _2641;
                float _2642;
                float _2643;
                if (CB4_m0[_421 + 15u].y < 1.5f)
                {
                    float _2649 = clamp(_2308 * CB4_m0[_421 + 10u].z, 0.0f, 1.0f);
                    uint _2653 = _421 + 10u;
                    _2641 = mad(_2649 * _2307, CB4_m0[_2653].y, _479);
                    _2642 = mad(_2649 * _2306, CB4_m0[_2653].y, _477);
                    _2643 = mad(_2649 * _2305, CB4_m0[_2653].y, _475);
                }
                else
                {
                    uint _2660 = _421 + 5u;
                    uint _2669 = _421 + 10u;
                    float _2684 = clamp(_2308 * CB4_m0[_421 + 10u].z, 0.0f, 1.0f);
                    float _2688 = mad(_2684, clamp(mad(mad(_2295, CB4_m0[_2660].x, -0.5f), CB4_m0[_2669].y, _2305), 0.0f, 1.0f) + (-0.5f), 0.5f);
                    float _2689 = mad(_2684, clamp(mad(mad(_2296, CB4_m0[_2660].y, -0.5f), CB4_m0[_2669].y, _2306), 0.0f, 1.0f) + (-0.5f), 0.5f);
                    float _2690 = mad(_2684, clamp(mad(mad(_2297, CB4_m0[_2660].z, -0.5f), CB4_m0[_2669].y, _2307), 0.0f, 1.0f) + (-0.5f), 0.5f);
                    float _2691 = _475 * _2688;
                    float _2692 = _477 * _2689;
                    float _2693 = _479 * _2690;
                    float _2700 = ((-0.0f) - _475) + 1.0f;
                    float _2701 = ((-0.0f) - _477) + 1.0f;
                    float _2702 = ((-0.0f) - _479) + 1.0f;
                    _2641 = mad(asfloat(((_479 >= 0.5f) ? 4294967295u : 0u) & 1065353216u), mad((-0.0f) - _2693, 2.0f, mad((-0.0f) - (_2702 + _2702), ((-0.0f) - _2690) + 1.0f, 1.0f)), _2693 + _2693);
                    _2642 = mad(asfloat(((_477 >= 0.5f) ? 4294967295u : 0u) & 1065353216u), mad((-0.0f) - _2692, 2.0f, mad((-0.0f) - (_2701 + _2701), ((-0.0f) - _2689) + 1.0f, 1.0f)), _2692 + _2692);
                    _2643 = mad(asfloat(((_475 >= 0.5f) ? 4294967295u : 0u) & 1065353216u), mad((-0.0f) - _2691, 2.0f, mad((-0.0f) - (_2700 + _2700), ((-0.0f) - _2688) + 1.0f, 1.0f)), _2691 + _2691);
                }
                _1963 = _2641;
                _1964 = _2642;
                _1965 = _2643;
            }
            _1904 = _1963;
            _1906 = _1964;
            _1908 = _1965;
        }
        else
        {
            _1904 = _479;
            _1906 = _477;
            _1908 = _475;
        }
        _1903 = _1904;
        _1905 = _1906;
        _1907 = _1908;
    }
    else
    {
        _1903 = _479;
        _1905 = _477;
        _1907 = _475;
    }
    bool _1911 = 0.5f < TEXCOORD_7.z;
    float _2081;
    float _2082;
    float _2083;
    if (_429 == 0u)
    {
        float _1975 = dot(float3(_1907, _1905, _1903), float3(0.2899999916553497314453125f, 0.60000002384185791015625f, 0.10999999940395355224609375f));
        bool _1982 = TEXCOORD_7.z < 0.5f;
        float _1983 = mad(_1975, 0.2874999940395355224609375f, 1.4375f);
        float _1986 = mad(_1975, 0.4000000059604644775390625f, 1.0f);
        float _1987 = dot(float3(_639, _640, _641), float3(_1911 ? _362 : TEXCOORD_2.x, _1911 ? _363 : TEXCOORD_2.y, _1911 ? _364 : TEXCOORD_2.z));
        float _1994 = clamp(mad((-0.0f) - (((-0.0f) - _1361) + _1987), 3.0f, 1.0f), 0.0f, 1.0f);
        float _2000 = clamp(_1361, 0.0f, 1.0f);
        float _2004 = clamp(_1987, 0.0f, 1.0f);
        float _2006 = max(_1907, max(_1903, _1905));
        bool _2007 = 1.0f < _2006;
        float _2025 = mad(mad(mad(mad(_1361, 0.5f, 0.5f), min(sqrt(_1994) * (_1994 + _1994), 1.0f), (-0.0f) - _2000), 0.5f, _2000), ((-0.0f) - _1983) + 1.0f, _1983);
        float _2032 = exp2(_2025 * log2(asfloat(_2007 ? asuint(_1907 / _2006) : asuint(_1907))));
        float _2033 = exp2(_2025 * log2(asfloat(_2007 ? asuint(_1905 / _2006) : asuint(_1905))));
        float _2034 = exp2(_2025 * log2(asfloat(_2007 ? asuint(_1903 / _2006) : asuint(_1903))));
        float _2041 = mad(((-0.0f) - _1907) + _2032, 0.5f, _1907);
        float _2042 = mad(((-0.0f) - _1905) + _2033, 0.5f, _1905);
        float _2043 = mad(((-0.0f) - _1903) + _2034, 0.5f, _1903);
        float _2054 = mad((-0.0f) - _1975, 0.0500000007450580596923828125f, 1.0499999523162841796875f);
        _2081 = asfloat(_1982 ? asuint(mad(_2004, _2034 + ((-0.0f) - _2043), _2043)) : asuint(_2054 * exp2(_1986 * log2(_1903))));
        _2082 = asfloat(_1982 ? asuint(mad(_2004, _2033 + ((-0.0f) - _2042), _2042)) : asuint(_2054 * exp2(_1986 * log2(_1905))));
        _2083 = asfloat(_1982 ? asuint(mad(_2004, _2032 + ((-0.0f) - _2041), _2041)) : asuint(_2054 * exp2(_1986 * log2(_1907))));
    }
    else
    {
        _2081 = _1903;
        _2082 = _1905;
        _2083 = _1907;
    }
    float _2085 = mad((-0.0f) - _380, 0.959999978542327880859375f, 0.959999978542327880859375f);
    float _2087 = _2083 * _2085;
    float _2088 = _2082 * _2085;
    float _2089 = _2081 * _2085;
    float _2094 = mad(_380, _2083 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _2096 = mad(_380, _2082 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _2097 = mad(_380, _2081 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _2102 = mad((-0.0f) - _391, CB4_m0[137u].w, 1.0f);
    float _2103 = _2102 * _2102;
    float _2124 = dot(float3((_1890 + CB0_m0[2u].x) + TEXCOORD_8.x, (_1891 + CB0_m0[2u].y) + TEXCOORD_8.y, (_1892 + CB0_m0[2u].z) + TEXCOORD_8.z), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2138 = ((-0.0f) - CB0_m0[19u].x) + CB0_m0[19u].y;
    float _2139 = 1.0f / _2138;
    float _2162 = asfloat((_2124 < CB0_m0[19u].x) ? asuint(_2124) : asuint(mad((-0.0f) - _2138, 1.0f / mad(_2124, _2139, mad((-0.0f) - CB0_m0[19u].x, _2139, 1.0f)), CB0_m0[19u].y))) / (_2124 + 9.9999997473787516355514526367188e-05f);
    float _2163 = _1890 * _2162;
    float _2164 = _1891 * _2162;
    float _2165 = _1892 * _2162;
    uint4 _2169 = asuint(CB4_m0[75u]);
    uint4 _2176 = asuint(CB4_m0[74u]);
    uint4 _2186 = asuint(CB4_m0[76u]);
    uint4 _2196 = asuint(CB4_m0[77u]);
    uint4 _2206 = asuint(CB4_m0[78u]);
    float _2242 = asfloat(_480 ? asuint(CB4_m0[142u]).y : (_482 ? asuint(CB4_m0[142u]).x : (_484 ? asuint(CB4_m0[141u]).w : (_486 ? asuint(CB4_m0[141u]).z : asuint(CB4_m0[141u]).y))));
    float _2364;
    if (0.5f < _2242)
    {
        float _2315 = clamp(mad(_1378, 1.5f, -0.5f), 0.0f, 1.0f);
        float _2342 = mad(_631, _638, _539);
        float _2343 = mad(_632, _638, _540);
        float _2344 = mad(_633, _638, _541);
        float _2348 = rsqrt(dot(float3(_2342, _2343, _2344), float3(_2342, _2343, _2344)));
        _2364 = clamp((((-0.0f) - mad((-0.0f) - (_2315 * _2315), clamp(dot(float3(_362, _363, _364), float3(_2342 * _2348, _2343 * _2348, _2344 * _2348)), 0.0f, 1.0f), 1.0f)) + _374) / max(asfloat(_480 ? asuint(CB4_m0[143u]).z : (_482 ? asuint(CB4_m0[143u]).y : (_484 ? asuint(CB4_m0[143u]).x : (_486 ? asuint(CB4_m0[142u]).w : asuint(CB4_m0[142u]).z)))), 9.9999997473787516355514526367188e-06f), 0.0f, 1.0f);
    }
    else
    {
        _2364 = _374;
    }
    float _2368 = _2364 * CB4_m0[143u].w;
    float _2376 = mad(_631, _638, _539);
    float _2377 = mad(_632, _638, _540);
    float _2378 = mad(_633, _638, _541);
    float _2382 = rsqrt(dot(float3(_2376, _2377, _2378), float3(_2376, _2377, _2378)));
    float _2383 = _2382 * _2376;
    float _2384 = _2382 * _2377;
    float _2385 = _2382 * _2378;
    float _2411 = asfloat(_480 ? asuint(CB4_m0[141u]).x : (_482 ? asuint(CB4_m0[140u]).w : (_484 ? asuint(CB4_m0[140u]).z : (_486 ? asuint(CB4_m0[140u]).y : asuint(CB4_m0[140u]).x))));
    float _2416 = clamp(mad(_1361 * _2411, 0.75f, 0.25f), 0.0f, 1.0f);
    float _2422 = clamp(mad(_2411 * dot(float3(_362, _363, _364), float3(_2383, _2384, _2385)), 0.75f, 0.25f), 0.0f, 1.0f);
    float _2428 = clamp(mad(_2411 * dot(float3(_639, _640, _641), float3(_2383, _2384, _2385)), 0.75f, 0.25f), 0.0f, 1.0f);
    float _2430 = mad(_2422 * _2422, mad(_2103, _2103, -1.0f), 1.000010013580322265625f);
    float _2434 = max(_2428 * _2428, 0.100000001490116119384765625f);
    float _2504 = (((_2416 * clamp(mad((-0.0f) - _391, CB4_m0[137u].w, (_2103 * _2103) / (mad(_2103, 4.0f, 2.0f) * (_2434 * (_2430 * _2430)))), 0.0f, 1.0f)) / max(_2103, 9.9999997473787516355514526367188e-06f)) * (asfloat(_480 ? asuint(CB4_m0[139u]).w : (_482 ? asuint(CB4_m0[139u]).z : (_484 ? asuint(CB4_m0[139u]).y : (_486 ? asuint(CB4_m0[139u]).x : asuint(CB4_m0[138u]).w)))) * asfloat(_480 ? asuint(CB4_m0[166u]).w : (_482 ? asuint(CB4_m0[166u]).z : (_484 ? asuint(CB4_m0[166u]).y : (_486 ? asuint(CB4_m0[166u]).x : asuint(CB4_m0[165u]).w)))))) * 10.0f;
    float _2517 = asfloat((_2242 < 0.5f) ? asuint(clamp(_2504, 0.0f, 1.0f) * 100.0f) : asuint((_2416 * min(0.16666333377361297607421875f / _2434, 1.0f)) * 100.0f));
    float _2518 = (_2094 * (asfloat(_480 ? _2206.x : (_482 ? _2196.x : (_484 ? _2186.x : (_486 ? _2169.x : _2176.x)))) * _2368)) * _2517;
    float _2519 = (_2096 * (asfloat(_480 ? _2206.y : (_482 ? _2196.y : (_484 ? _2186.y : (_486 ? _2169.y : _2176.y)))) * _2368)) * _2517;
    float _2520 = (_2097 * (asfloat(_480 ? _2206.z : (_482 ? _2196.z : (_484 ? _2186.z : (_486 ? _2169.z : _2176.z)))) * _2368)) * _2517;
    uint _2537 = (CB4_m0[144u].x >= 0.5f) ? 4294967295u : 0u;
    uint4 _2541 = asuint(CB4_m0[80u]);
    uint4 _2548 = asuint(CB4_m0[79u]);
    uint4 _2558 = asuint(CB4_m0[81u]);
    uint4 _2568 = asuint(CB4_m0[82u]);
    uint4 _2578 = asuint(CB4_m0[83u]);
    float _2598 = asfloat(_2537 & asuint(_2083 * (_413 * asfloat(_480 ? _2578.x : (_482 ? _2568.x : (_484 ? _2558.x : (_486 ? _2541.x : _2548.x)))))));
    float _2600 = asfloat(_2537 & asuint(_2082 * (_413 * asfloat(_480 ? _2578.y : (_482 ? _2568.y : (_484 ? _2558.y : (_486 ? _2541.y : _2548.y)))))));
    float _2602 = asfloat(_2537 & asuint(_2081 * (_413 * asfloat(_480 ? _2578.z : (_482 ? _2568.z : (_484 ? _2558.z : (_486 ? _2541.z : _2548.z)))))));
    float _2604 = _2602 + (_2600 + _2598);
    float _2842;
    float _2844;
    float _2846;
    if (0.0f < CB3_m0[2u].y)
    {
        float _2636 = min(CB3_m0[2u].y, 2.0f);
        float _2962;
        float _2963;
        float _2964;
        float _2965;
        float _2966;
        float _2967;
        if (0.0f < _2636)
        {
            float _2747 = ((-0.0f) - TEXCOORD_2.w) + CB3_m0[25u].x;
            float _2748 = ((-0.0f) - TEXCOORD_3.w) + CB3_m0[25u].y;
            float _2749 = ((-0.0f) - TEXCOORD_4.w) + CB3_m0[25u].z;
            float _2750 = dot(float3(_2747, _2748, _2749), float3(_2747, _2748, _2749));
            float _2753 = max(_2750, 1.1754943508222875079687365372222e-38f);
            float _2754 = rsqrt(_2753);
            float _2761 = _2753 * CB3_m0[27u].x;
            bool _2765 = (-0.5f) < CB3_m0[27u].y;
            uint _2773 = _2765 ? asuint(_2761 * _2761) : asuint(_2761);
            float _2787 = clamp(((-0.0f) - asfloat((CB3_m0[27u].y < (-1.5f)) ? (((asfloat(_2773) >= 1.0f) ? 4294967295u : 0u) & 1065353216u) : _2773)) + 1.0f, 0.0f, 1.0f);
            float _2805 = clamp(mad(dot(float3(CB3_m0[26u].xyz), float3(_2754 * _2747, _2754 * _2748, _2754 * _2749)), CB3_m0[27u].z, CB3_m0[27u].w), 0.0f, 1.0f);
            float _2807 = ((_2787 * _2787) * asfloat(_2765 ? asuint(1.0f / _2753) : 1065353216u)) * (_2805 * _2805);
            float _2813 = _2807 * CB3_m0[28u].x;
            float _2814 = _2807 * CB3_m0[28u].y;
            float _2815 = _2807 * CB3_m0[28u].z;
            float _2817 = max(_2815, max(_2814, _2813));
            float _2818 = _2817 + 6.103515625e-05f;
            float _2819 = rsqrt(_2750);
            float _2826 = dot(float3(_362, _363, _364), float3(_2819 * _2747, _2819 * _2748, _2819 * _2749)) * _2817;
            float _2830 = _2817 / CB3_m0[25u].w;
            float _2831 = _2817 * _2813;
            float _2832 = _2817 * _2814;
            float _2833 = _2817 * _2815;
            float _2956;
            float _2957;
            float _2958;
            float _2959;
            float _2960;
            float _2961;
            if (1.0f < _2636)
            {
                float _2868 = ((-0.0f) - TEXCOORD_2.w) + CB3_m0[29u].x;
                float _2869 = ((-0.0f) - TEXCOORD_3.w) + CB3_m0[29u].y;
                float _2870 = ((-0.0f) - TEXCOORD_4.w) + CB3_m0[29u].z;
                float _2871 = dot(float3(_2868, _2869, _2870), float3(_2868, _2869, _2870));
                float _2874 = max(_2871, 1.1754943508222875079687365372222e-38f);
                float _2875 = rsqrt(_2874);
                float _2882 = _2874 * CB3_m0[31u].x;
                bool _2886 = (-0.5f) < CB3_m0[31u].y;
                uint _2894 = _2886 ? asuint(_2882 * _2882) : asuint(_2882);
                float _2907 = clamp(((-0.0f) - asfloat((CB3_m0[31u].y < (-1.5f)) ? (((asfloat(_2894) >= 1.0f) ? 4294967295u : 0u) & 1065353216u) : _2894)) + 1.0f, 0.0f, 1.0f);
                float _2926 = clamp(mad(dot(float3(CB3_m0[30u].xyz), float3(_2875 * _2868, _2875 * _2869, _2875 * _2870)), CB3_m0[31u].z, CB3_m0[31u].w), 0.0f, 1.0f);
                float _2928 = ((_2907 * _2907) * asfloat(_2886 ? asuint(1.0f / _2874) : 1065353216u)) * (_2926 * _2926);
                float _2934 = _2928 * CB3_m0[32u].x;
                float _2935 = _2928 * CB3_m0[32u].y;
                float _2936 = _2928 * CB3_m0[32u].z;
                float _2938 = max(_2936, max(_2935, _2934));
                float _2940 = rsqrt(_2871);
                _2956 = _2938 + _2818;
                _2957 = (_2938 / CB3_m0[29u].w) + _2830;
                _2958 = mad(_2938, dot(float3(_362, _363, _364), float3(_2940 * _2868, _2940 * _2869, _2940 * _2870)), _2826);
                _2959 = mad(_2934, _2938, _2831);
                _2960 = mad(_2935, _2938, _2832);
                _2961 = mad(_2936, _2938, _2833);
            }
            else
            {
                _2956 = _2818;
                _2957 = _2830;
                _2958 = _2826;
                _2959 = _2831;
                _2960 = _2832;
                _2961 = _2833;
            }
            _2962 = _2956;
            _2963 = _2957;
            _2964 = _2958;
            _2965 = _2959;
            _2966 = _2960;
            _2967 = _2961;
        }
        else
        {
            _2962 = asfloat(947912704u);
            _2963 = asfloat(0u);
            _2964 = asfloat(0u);
            _2965 = asfloat(0u);
            _2966 = asfloat(0u);
            _2967 = asfloat(0u);
        }
        float _2970 = clamp((_2964 / _2963) + 0.5f, 0.0f, 1.0f);
        _2842 = _2970 * (_2965 / _2962);
        _2844 = _2970 * (_2966 / _2962);
        _2846 = _2970 * (_2967 / _2962);
    }
    else
    {
        _2842 = asfloat(0u);
        _2844 = asfloat(0u);
        _2846 = asfloat(0u);
    }
    float _2854 = mad(TEXCOORD_8.x, _2162, _2842);
    float _2855 = mad(TEXCOORD_8.y, _2162, _2844);
    float _2856 = mad(TEXCOORD_8.z, _2162, _2846);
    float _3026;
    float _3027;
    float _3028;
    float _3029;
    float _3030;
    float _3031;
    if (_548)
    {
        uint _2984 = uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u)));
        uint _2986 = (_2984 * 32u) + 24u;
        uint3 _2996 = uint3(T1.Load(_2986).x, T1.Load(_2986 + 1u).x, T1.Load(_2986 + 2u).x);
        uint _3004 = (_2984 * 32u) + 28u;
        uint3 _3013 = uint3(T1.Load(_3004).x, T1.Load(_3004 + 1u).x, T1.Load(_3004 + 2u).x);
        _3026 = asfloat(_2996.x);
        _3027 = asfloat(_2996.y);
        _3028 = asfloat(_2996.z);
        _3029 = asfloat(_3013.x);
        _3030 = asfloat(_3013.y);
        _3031 = asfloat(_3013.z);
    }
    else
    {
        _3026 = asfloat(0u);
        _3027 = asfloat(0u);
        _3028 = asfloat(0u);
        _3029 = asfloat(0u);
        _3030 = asfloat(0u);
        _3031 = asfloat(0u);
    }
    bool _3035 = 0.5f < CB0_m0[23u].y;
    bool _3036 = _430 != 0u;
    float _3132;
    float _3134;
    float _3136;
    if (0.5f >= CB0_m0[188u].w)
    {
        float _3071 = clamp(mad((-0.0f) - dot(float3(_539, _540, _541), float3(_639, _640, _641)), 0.5f, 0.5f), 0.0f, 1.0f);
        float _3073 = mad(_363, 0.5f, 0.5f);
        float _3082 = clamp((asfloat((_430 != 0u) ? asuint(_3073) : asuint(_3073 * _3073)) + (-0.20000000298023223876953125f)) * 1.25f, 0.0f, 1.0f);
        float _3085 = (_3082 * _3082) * mad(_3082, -2.0f, 3.0f);
        float _3086 = _3085 * _3085;
        bool _3089 = _430 != 0u;
        float _3152;
        if (_548)
        {
            _3152 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _3152 = asfloat(0u);
        }
        float _3181 = min(_542 * 0.083333335816860198974609375f, 1.0f);
        float _3189 = ((-0.0f) - dot(float3(_539, _540, _541), float3(_362, _363, _364))) + 1.0f;
        float _3198 = clamp((((-0.0f) - mad(_3181, -0.300000011920928955078125f, 0.5f)) + _3189) * 3.3333332538604736328125f, 0.0f, 1.0f);
        float _3199 = clamp((((-0.0f) - mad(_3181, -0.300000011920928955078125f, 0.60000002384185791015625f)) + _3189) * 5.000000476837158203125f, 0.0f, 1.0f);
        float _3230 = CB0_m0[189u].x * CB0_m0[189u].x;
        float _3231 = CB0_m0[189u].y * CB0_m0[189u].y;
        float _3232 = CB0_m0[189u].z * CB0_m0[189u].z;
        float _3233 = _3230 * _3230;
        float _3234 = _3231 * _3231;
        float _3235 = _3232 * _3232;
        float _3236 = _3233 * _3233;
        float _3237 = _3234 * _3234;
        float _3238 = _3235 * _3235;
        float _3245 = dot(float3(CB0_m0[189u].xyz), 0.3300000131130218505859375f.xxx) * (1.0f / (dot(float3(_3236, _3237, _3238), 0.699999988079071044921875f.xxx) + 9.9999997473787516355514526367188e-06f));
        float _3252 = mad(_1274, mad(_3245, _3236, (-0.0f) - _2163), _2163);
        float _3253 = mad(_1274, mad(_3245, _3237, (-0.0f) - _2164), _2164);
        float _3254 = mad(_1274, mad(_3245, _3238, (-0.0f) - _2165), _2165);
        float _3259 = exp2(log2(_3071 * _3071) * 20.0f);
        float _3283 = mad(_2081, _2085, _2088 + _2087) * 0.3300000131130218505859375f;
        float _3300 = exp2(log2(clamp(_2087, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _3301 = exp2(log2(clamp(_2088, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _3302 = exp2(log2(clamp(_2089, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _3307 = rsqrt(max(dot(float3(_3300, _3301, _3302), float3(_3300, _3301, _3302)), 6.103515625e-05f));
        float _3308 = _3307 * _3300;
        float _3309 = _3307 * _3301;
        float _3310 = _3307 * _3302;
        float _3315 = CB0_m0[198u].w * 48.0f;
        float _3317 = mad((_3283 * _3283) * CB0_m0[199u].w, -0.199999988079071044921875f, 1.0f) * 0.100000001490116119384765625f;
        float _3321 = (-0.0f) - _3317;
        float _3331 = asfloat((_430 != 0u) ? asuint((_3198 * _3198) * mad(_3198, -2.0f, 3.0f)) : asuint((_3199 * _3199) * mad(_3199, -2.0f, 3.0f))) * (mad(CB0_m0[199u].y, mad(clamp((-0.0f) - _540, 0.0f, 1.0f), asfloat((0.0f != TEXCOORD_7.z) ? 1083179008u : asuint(mad(_376, CB4_m0[137u].z, 2.5f))), -0.5f), 1.0f) * (clamp(mad(_3152, 0.39999997615814208984375f, _1274) + 0.60000002384185791015625f, 0.0f, 1.0f) * (mad(_1284 * mad(_1361, 0.5f, 0.5f), 1.39999997615814208984375f, 0.100000001490116119384765625f) * (mad(_3071, 0.800000011920928955078125f, 0.20000000298023223876953125f) * mad(CB0_m0[199u].x, mad(_3085, mad(_3085 * (_3086 * _3086), asfloat(_3089 ? 3212836864u : 3204448256u) + asfloat(_3089 ? 1050253722u : 1065353216u), asfloat(_3089 ? 1065353216u : 1056964608u)), -0.100000001490116119384765625f), 0.100000001490116119384765625f)))));
        uint4 _3341 = asuint(CB4_m0[87u]);
        uint4 _3348 = asuint(CB4_m0[86u]);
        uint4 _3358 = asuint(CB4_m0[88u]);
        uint4 _3368 = asuint(CB4_m0[89u]);
        uint4 _3378 = asuint(CB4_m0[90u]);
        float _3390 = ((_3315 * mad(_380, mad(_3321, _3310, _2097), _3310 * _3317)) * (mad(CB0_m0[199u].z, mad((-0.0f) - _1892, _2162, mad(_3259, mad(_1892, _2162, (-0.0f) - _3254), _3254)), _2165) * _3331)) * asfloat(_480 ? _3378.z : (_482 ? _3368.z : (_484 ? _3358.z : (_486 ? _3341.z : _3348.z))));
        float _3393 = mad(clamp(mad(_542, 0.20000000298023223876953125f, -1.0f), 0.0f, 1.0f), -0.699999988079071044921875f, 1.0f);
        float _3395 = _3393 * (((_3315 * mad(_380, mad(_3321, _3308, _2094), _3308 * _3317)) * (mad(CB0_m0[199u].z, mad((-0.0f) - _1890, _2162, mad(_3259, mad(_1890, _2162, (-0.0f) - _3252), _3252)), _2163) * _3331)) * asfloat(_480 ? _3378.x : (_482 ? _3368.x : (_484 ? _3358.x : (_486 ? _3341.x : _3348.x)))));
        float _3396 = _3393 * (((_3315 * mad(_380, mad(_3321, _3309, _2096), _3309 * _3317)) * (mad(CB0_m0[199u].z, mad((-0.0f) - _1891, _2162, mad(_3259, mad(_1891, _2162, (-0.0f) - _3253), _3253)), _2164) * _3331)) * asfloat(_480 ? _3378.y : (_482 ? _3368.y : (_484 ? _3358.y : (_486 ? _3341.y : _3348.y)))));
        float _3399 = mad(_3390, _3393, _3396 + _3395);
        float _3401 = mad(_3399 * _3399, 0.0500000007450580596923828125f, 1.0f);
        float _3406 = asfloat(_1911 ? 1056964608u : 1065353216u);
        float _3407 = _3406 * (_3401 * _3395);
        float _3408 = _3406 * (_3401 * _3396);
        float _3409 = _3406 * (_3401 * (_3393 * _3390));
        bool _3413 = 0.5f < CB3_m0[1u].w;
        _3132 = asfloat(_3413 ? asuint(min(_3408, 0.699999988079071044921875f)) : asuint(_3408)) * CB0_m0[198u].y;
        _3134 = asfloat(_3413 ? asuint(min(_3409, 0.699999988079071044921875f)) : asuint(_3409)) * CB0_m0[198u].z;
        _3136 = asfloat(_3413 ? asuint(min(_3407, 0.699999988079071044921875f)) : asuint(_3407)) * CB0_m0[198u].x;
    }
    else
    {
        _3132 = asfloat(0u);
        _3134 = asfloat(0u);
        _3136 = asfloat(0u);
    }
    float _3144 = _2598 + (max(mad(_2518, _2163, -1.0f), 0.0f) + mad(asfloat(_3035 ? 1028443341u : (_3036 ? asuint(_3026) : asuint(_3029))), _2083 * _2162, mad(_2854, _2087, mad(_2087, _2163, _2163 * _2518))));
    float _3145 = _2600 + (max(mad(_2519, _2164, -1.0f), 0.0f) + mad(asfloat(_3035 ? 1028443341u : (_3036 ? asuint(_3027) : asuint(_3030))), _2082 * _2162, mad(_2855, _2088, mad(_2088, _2164, _2164 * _2519))));
    float _3146 = _2602 + (max(mad(_2520, _2165, -1.0f), 0.0f) + mad(asfloat(_3035 ? 1028443341u : (_3036 ? asuint(_3028) : asuint(_3031))), _2081 * _2162, mad(_2856, _2089, mad(_2089, _2165, _2165 * _2520))));
    float _3687;
    float _3688;
    float _3689;
    float _3690;
    float _3691;
    if (CB4_m0[150u].x >= 0.5f)
    {
        bool _3437 = 0.5f < CB4_m0[150u].y;
        float _3446 = _3437 ? TEXCOORD_1.x : TEXCOORD.x;
        float _3447 = _3437 ? TEXCOORD_1.y : TEXCOORD.y;
        bool _3453 = 0.5f < CB4_m0[148u].z;
        bool _3454 = 0.5f < CB4_m0[148u].y;
        bool _3460 = CB4_m0[150u].y < 0.5f;
        bool _3463 = CB4_m0[150u].z < 0.5f;
        bool _3484 = 0.800000011920928955078125f < CB4_m0[147u].w;
        float4 _3537 = T8.SampleBias(S3, float2(mad(CB4_m0[108u].x, CB0_m0[40u].y, mad(_3446, CB4_m0[49u].x, CB4_m0[49u].z)), mad(CB4_m0[108u].y, CB0_m0[40u].y, mad(_3447, CB4_m0[49u].y, CB4_m0[49u].w))), CB0_m0[191u].x);
        float _3539 = _3537.x;
        float _3540 = _3537.y;
        float _3541 = _3537.z;
        float4 _3546 = T9.SampleBias(S4, float2(mad(CB4_m0[108u].z, CB0_m0[40u].y, mad(asfloat(_3484 ? asuint(_265) : (_3453 ? asuint(_3446) : asuint(_3460 ? TEXCOORD_1.x : TEXCOORD.x))), CB4_m0[50u].x, CB4_m0[50u].z)), mad(CB4_m0[108u].w, CB0_m0[40u].y, mad(asfloat(_3484 ? asuint(_266) : (_3453 ? asuint(_3447) : asuint(_3460 ? TEXCOORD_1.y : TEXCOORD.y))), CB4_m0[50u].y, CB4_m0[50u].w))), CB0_m0[191u].x);
        uint _3555 = (CB4_m0[150u].w < 0.5f) ? asuint(_3546.x) : ((CB4_m0[150u].w < 1.5f) ? asuint(_3546.y) : asuint(_3546.z));
        float _3556 = asfloat(_3555);
        uint _3557 = asuint(_3539);
        float _3562 = asfloat(_3463 ? _3557 : asuint(_3539));
        float _3564 = asfloat(_3463 ? _3557 : asuint(_3540));
        uint _3565 = _3463 ? _3557 : asuint(_3541);
        uint _3613 = _3454 ? asuint(_3556 * mad(_3562, CB4_m0[34u].x + ((-0.0f) - CB4_m0[95u].x), CB4_m0[95u].x)) : asuint((_3556 * _3562) * CB4_m0[34u].x);
        uint _3615 = _3454 ? asuint(_3556 * mad(_3564, CB4_m0[34u].y + ((-0.0f) - CB4_m0[95u].y), CB4_m0[95u].y)) : asuint((_3556 * _3564) * CB4_m0[34u].y);
        uint _3617 = _3454 ? asuint(_3556 * mad(asfloat(_3565), CB4_m0[34u].z + ((-0.0f) - CB4_m0[95u].z), CB4_m0[95u].z)) : asuint((_3556 * asfloat(_3565)) * CB4_m0[34u].z);
        bool _3622 = 0.5f < CB4_m0[151u].x;
        float _3630 = asfloat(_3622 ? asuint(_2083 * asfloat(_3613)) : _3613);
        float _3632 = asfloat(_3622 ? asuint(_2082 * asfloat(_3615)) : _3615);
        float _3634 = asfloat(_3622 ? asuint(_2081 * asfloat(_3617)) : _3617);
        bool _3638 = CB4_m0[147u].z < 0.5f;
        uint _3649 = _3463 ? asuint(_3539) : asuint(_3541 + (_3540 + _3539));
        float _3655 = min(asfloat((1.5f < CB4_m0[147u].z) ? asuint(_3556 + asfloat(_3649)) : _3649), 1.0f);
        float _3656 = _3556 * _3655;
        _3687 = asfloat(_3638 ? _3555 : asuint(_3656));
        _3688 = asfloat(_3638 ? asuint((_3634 + (_3632 + _3630)) + _2604) : asuint(mad(_3556, _3655, _2604)));
        _3689 = asfloat(_3638 ? asuint(_3144 + _3630) : asuint(_3144 * mad(_3656, _3630 + (-1.0f), 1.0f)));
        _3690 = asfloat(_3638 ? asuint(_3145 + _3632) : asuint(_3145 * mad(_3656, _3632 + (-1.0f), 1.0f)));
        _3691 = asfloat(_3638 ? asuint(_3146 + _3634) : asuint(_3146 * mad(_3656, _3634 + (-1.0f), 1.0f)));
    }
    else
    {
        _3687 = asfloat(0u);
        _3688 = _2604;
        _3689 = _3144;
        _3690 = _3145;
        _3691 = _3146;
    }
    float _3940;
    float _3941;
    float _3942;
    float _3943;
    float _3944;
    if (float(int(asuint(CB4_m0[132u]).w)) >= 0.5f)
    {
        bool _3703 = 0.5f < CB4_m0[127u].x;
        bool _3704 = 0.5f < CB4_m0[127u].z;
        bool _3722 = 0.5f < CB4_m0[128u].x;
        bool _3723 = 0.800000011920928955078125f < CB4_m0[128u].z;
        bool _3724 = 0.5f < CB4_m0[128u].y;
        float4 _3788 = T10.SampleBias(S0, float2(mad(CB4_m0[40u].x, CB0_m0[40u].y, mad(_3703 ? TEXCOORD_1.x : TEXCOORD.x, CB4_m0[51u].x, CB4_m0[51u].z)), mad(CB4_m0[40u].y, CB0_m0[40u].y, mad(_3703 ? TEXCOORD_1.y : TEXCOORD.y, CB4_m0[51u].y, CB4_m0[51u].w))), CB0_m0[191u].x);
        float _3790 = _3788.x;
        float _3791 = _3788.y;
        float _3792 = _3788.z;
        float4 _3797 = T11.SampleBias(S0, float2(mad(CB4_m0[40u].z, CB0_m0[40u].y, mad(asfloat(_3723 ? asuint(_265) : asuint(_3722 ? TEXCOORD_1.x : TEXCOORD.x)), CB4_m0[52u].x, CB4_m0[52u].z)), mad(CB4_m0[40u].w, CB0_m0[40u].y, mad(asfloat(_3723 ? asuint(_266) : asuint(_3722 ? TEXCOORD_1.y : TEXCOORD.y)), CB4_m0[52u].y, CB4_m0[52u].w))), CB0_m0[191u].x);
        bool _3808 = CB4_m0[127u].y < 0.5f;
        uint _3813 = (CB4_m0[127u].w < 0.5f) ? asuint(_3797.x) : ((CB4_m0[127u].w < 1.5f) ? asuint(_3797.y) : asuint(_3797.z));
        float _3814 = asfloat(_3813);
        uint _3815 = asuint(_3790);
        float _3820 = asfloat(_3808 ? _3815 : asuint(_3790));
        float _3822 = asfloat(_3808 ? _3815 : asuint(_3791));
        float _3824 = asfloat(_3808 ? _3815 : asuint(_3792));
        uint _3871 = _3724 ? asuint(_3814 * mad(_3820, CB4_m0[110u].x + ((-0.0f) - CB4_m0[111u].x), CB4_m0[111u].x)) : asuint((_3820 * _3814) * CB4_m0[110u].x);
        uint _3873 = _3724 ? asuint(_3814 * mad(_3822, CB4_m0[110u].y + ((-0.0f) - CB4_m0[111u].y), CB4_m0[111u].y)) : asuint((_3822 * _3814) * CB4_m0[110u].y);
        uint _3875 = _3724 ? asuint(_3814 * mad(_3824, CB4_m0[110u].z + ((-0.0f) - CB4_m0[111u].z), CB4_m0[111u].z)) : asuint((_3824 * _3814) * CB4_m0[110u].z);
        float _3884 = asfloat(_3704 ? asuint(_2083 * asfloat(_3871)) : _3871);
        float _3886 = asfloat(_3704 ? asuint(_2082 * asfloat(_3873)) : _3873);
        float _3888 = asfloat(_3704 ? asuint(_2081 * asfloat(_3875)) : _3875);
        bool _3892 = CB4_m0[128u].w < 0.5f;
        uint _3903 = _3808 ? asuint(_3790) : asuint(_3792 + (_3791 + _3790));
        float _3909 = min(asfloat((1.5f < CB4_m0[128u].w) ? asuint(asfloat(_3903) + _3814) : _3903), 1.0f);
        float _3910 = _3909 * _3814;
        _3940 = asfloat(_3892 ? _3813 : asuint(_3910));
        _3941 = asfloat(_3892 ? asuint((_3888 + (_3886 + _3884)) + _3688) : asuint(mad(_3814, _3909, _3688)));
        _3942 = asfloat(_3892 ? asuint(_3884 + _3689) : asuint(mad(_3910, _3884 + (-1.0f), 1.0f) * _3689));
        _3943 = asfloat(_3892 ? asuint(_3886 + _3690) : asuint(mad(_3910, _3886 + (-1.0f), 1.0f) * _3690));
        _3944 = asfloat(_3892 ? asuint(_3888 + _3691) : asuint(mad(_3910, _3888 + (-1.0f), 1.0f) * _3691));
    }
    else
    {
        _3940 = _3687;
        _3941 = _3688;
        _3942 = _3689;
        _3943 = _3690;
        _3944 = _3691;
    }
    float _3952 = CB4_m0[29u].w * CB4_m0[155u].w;
    float _3964 = mad(_3952, ((-0.0f) - _3942) + CB4_m0[29u].x, _3942);
    float _3965 = mad(_3952, ((-0.0f) - _3943) + CB4_m0[29u].y, _3943);
    float _3966 = mad(_3952, ((-0.0f) - _3944) + CB4_m0[29u].z, _3944);
    float _3974 = mad((-0.0f) - CB4_m0[29u].w, CB4_m0[155u].w, 1.0f);
    float _3975 = _3974 * (_3136 * mad(_2854, 2.0f, 1.0f));
    float _3976 = _3974 * (_3132 * mad(_2855, 2.0f, 1.0f));
    float _3977 = _3974 * (_3134 * mad(_2856, 2.0f, 1.0f));
    float _4178;
    float _4180;
    float _4182;
    float _4184;
    if (0.5f < CB4_m0[152u].y)
    {
        bool _3986 = CB4_m0[153u].x < 0.5f;
        float _4058 = mad(gl_FragCoord.x, CB0_m0[160u].z, -0.5f);
        float _4059 = mad(gl_FragCoord.y, CB0_m0[160u].w, -0.5f);
        float _4087 = ((-0.0f) - (mad(CB0_m0[118u].z, TEXCOORD_4.w, mad(CB0_m0[116u].z, TEXCOORD_2.w, TEXCOORD_3.w * CB0_m0[117u].z)) + CB0_m0[119u].z)) / CB0_m0[93u].y;
        float _4098 = asfloat((0.5f < CB4_m0[152u].z) ? asuint(mad(CB0_m0[85u].w, mad((-0.0f) - _4087, 0.5f, 1.0f), _4087 * 0.5f)) : 1065353216u);
        float4 _4131 = T12.Sample(S5, float2((mad(_4098 * mad(CB4_m0[125u].z, mad(CB0_m0[118u].x, _364, mad(CB0_m0[116u].x, _362, _363 * CB0_m0[117u].x)), (CB0_m0[160u].w * CB0_m0[160u].x) * (_4058 + _4058)), CB4_m0[47u].x, CB4_m0[47u].z) + 0.5f) + mad(CB4_m0[124u].x, CB0_m0[40u].y, CB4_m0[124u].z), (mad(_4098 * mad(CB4_m0[125u].z, mad(CB0_m0[118u].y, _364, mad(CB0_m0[116u].y, _362, _363 * CB0_m0[117u].y)), _4059 + _4059), CB4_m0[47u].y, CB4_m0[47u].w) + 0.5f) + mad(CB4_m0[124u].y, CB0_m0[40u].y, CB4_m0[124u].w)));
        float _4147 = _4131.w * CB4_m0[109u].w;
        float _4176 = asfloat((0.5f < CB4_m0[153u].z) ? asuint(mad(mad(sin((CB0_m0[40u].y / max(CB4_m0[168u].x, 0.00999999977648258209228515625f)) * 6.283185482025146484375f), 0.5f, 0.5f), ((-0.0f) - CB4_m0[125u].x) + CB4_m0[125u].y, CB4_m0[125u].x)) : 1065353216u);
        float _4177 = _4176 * _4147;
        float _4309;
        float _4310;
        float _4311;
        if (0.5f < CB4_m0[152u].w)
        {
            float _4192 = mad((-0.0f) - _4147, _4176, 1.0f);
            _4309 = _3144 * mad(_4131.x * CB4_m0[109u].x, _4177, _4192);
            _4310 = _3145 * mad(_4131.y * CB4_m0[109u].y, _4177, _4192);
            _4311 = _3146 * mad(_4131.z * CB4_m0[109u].z, _4177, _4192);
        }
        else
        {
            _4309 = mad(_4177, mad(CB4_m0[109u].x, _4131.x, (-0.0f) - _3144), _3144);
            _4310 = mad(_4177, mad(CB4_m0[109u].y, _4131.y, (-0.0f) - _3145), _3145);
            _4311 = mad(_4177, mad(CB4_m0[109u].z, _4131.z, (-0.0f) - _3146), _3146);
        }
        float _4337 = asfloat((0.5f < CB4_m0[153u].y) ? asuint(((-0.0f) - _3940) + 1.0f) : 1065353216u) * T13.Sample(S6, float2(mad(CB0_m0[40u].y, CB4_m0[149u].z, mad(_3986 ? TEXCOORD.x : TEXCOORD_1.x, CB4_m0[48u].x, CB4_m0[48u].z)), mad(CB0_m0[40u].y, CB4_m0[149u].w, mad(_3986 ? TEXCOORD.y : TEXCOORD_1.y, CB4_m0[48u].y, CB4_m0[48u].w)))).x;
        _4178 = mad(_4311 + (_4310 + _4309), _4337, _3941);
        _4180 = mad(_4337, ((-0.0f) - _3966) + _4311, _3966);
        _4182 = mad(_4337, ((-0.0f) - _3965) + _4310, _3965);
        _4184 = mad(_4337, ((-0.0f) - _3964) + _4309, _3964);
    }
    else
    {
        _4178 = _3941;
        _4180 = _3966;
        _4182 = _3965;
        _4184 = _3964;
    }
    float _4289;
    float _4291;
    float _4293;
    uint _4295;
    float _4296;
    float _4298;
    float _4300;
    float _4302;
    if (0.5f < CB4_m0[158u].z)
    {
        bool _4230 = 0.5f < CB4_m0[159u].x;
        float4 _4279 = T14.Sample(S7, float2(mad(CB0_m0[40u].y, CB4_m0[103u].x, asfloat(_4230 ? asuint(mad(TEXCOORD_1.x, CB4_m0[55u].x, CB4_m0[55u].z)) : asuint(mad(TEXCOORD.x, CB4_m0[55u].x, CB4_m0[55u].z)))), mad(CB0_m0[40u].y, CB4_m0[103u].y, asfloat(_4230 ? asuint(mad(TEXCOORD_1.y, CB4_m0[55u].y, CB4_m0[55u].w)) : asuint(mad(TEXCOORD.y, CB4_m0[55u].y, CB4_m0[55u].w))))));
        float _4281 = _4279.x;
        float _4282 = _4279.y;
        float _4283 = _4279.z;
        float _4290;
        float _4292;
        float _4297;
        if (0.5f < CB4_m0[158u].w)
        {
            _4290 = mad(CB4_m0[33u].y * CB4_m0[33u].w, _4282, _3976);
            _4292 = mad(CB4_m0[33u].z * CB4_m0[33u].w, _4283, _3977);
            _4297 = mad(CB4_m0[33u].x * CB4_m0[33u].w, _4281, _3975);
        }
        else
        {
            float _4363 = _4279.w * CB4_m0[33u].w;
            _4290 = mad(_4363, mad(CB4_m0[33u].y, _4282, (-0.0f) - _3976), _3976);
            _4292 = mad(_4363, mad(CB4_m0[33u].z, _4283, (-0.0f) - _3977), _3977);
            _4297 = mad(_4363, mad(CB4_m0[33u].x, _4281, (-0.0f) - _3975), _3975);
        }
        uint4 _4432 = asuint(CB4_m0[131u]);
        float _4436 = float(int(_4432.x));
        float _4443 = exp2(log2(max(((-0.0f) - abs(dot(float3(TEXCOORD_2.x, TEXCOORD_2.y, TEXCOORD_2.z), float3(_539, _540, _541)))) + 1.0f, 0.0f)) * CB4_m0[155u].z) * float(int(_4432.y));
        float _4451 = exp2(max(CB4_m0[130u].x, 0.00999999977648258209228515625f) * log2(_4443));
        float _4458 = min(CB4_m0[121u].x, 65504.0f);
        float _4460 = min(CB4_m0[121u].y, 65504.0f);
        float _4461 = min(CB4_m0[121u].z, 65504.0f);
        float _4474 = mad(_4451, ((-0.0f) - _4458) + CB4_m0[120u].x, _4458);
        float _4475 = mad(_4451, ((-0.0f) - _4460) + CB4_m0[120u].y, _4460);
        float _4476 = mad(_4451, ((-0.0f) - _4461) + CB4_m0[120u].z, _4461);
        float _4487 = _4443 * asfloat(((_4443 >= CB4_m0[130u].y) ? 4294967295u : 0u) & 1065353216u);
        bool _4491 = _4436 < 0.5f;
        bool _4492 = _4436 < 1.5f;
        _4289 = _4290;
        _4291 = _4292;
        _4293 = mad(_4292 + (_4290 + _4297), ((-0.0f) - CB4_m0[156u].x) + 1.0f, _4178);
        _4295 = 0u;
        _4296 = _4297;
        _4298 = asfloat(_4491 ? asuint(mad(_4487, _4283 * _4476, _4180)) : (_4492 ? asuint(mad(_4487, mad(_4476, _4283, (-0.0f) - _4180), _4180)) : asuint(_4180 * mad(_4487, mad(_4476, _4283, -1.0f), 1.0f))));
        _4300 = asfloat(_4491 ? asuint(mad(_4487, _4282 * _4475, _4182)) : (_4492 ? asuint(mad(_4487, mad(_4475, _4282, (-0.0f) - _4182), _4182)) : asuint(_4182 * mad(_4487, mad(_4475, _4282, -1.0f), 1.0f))));
        _4302 = asfloat(_4491 ? asuint(mad(_4487, _4281 * _4474, _4184)) : (_4492 ? asuint(mad(_4487, mad(_4474, _4281, (-0.0f) - _4184), _4184)) : asuint(_4184 * mad(_4487, mad(_4474, _4281, -1.0f), 1.0f))));
    }
    else
    {
        _4289 = _3976;
        _4291 = _3977;
        _4293 = _4178;
        _4295 = _430;
        _4296 = _3975;
        _4298 = _4180;
        _4300 = _4182;
        _4302 = _4184;
    }
    float _4404;
    float _4406;
    float _4408;
    float _4410;
    float _4412;
    float _4414;
    float _4416;
    if (0.5f < CB4_m0[156u].x)
    {
        float _4381 = CB4_m0[156u].z * 0.01745329238474369049072265625f;
        float _4383 = sin(_4381);
        float _4384 = cos(_4381);
        bool _4389 = CB4_m0[156u].y < 0.5f;
        float _4733;
        float _4734;
        float _4735;
        if (1.5f < CB4_m0[156u].y)
        {
            bool _4530 = CB4_m0[157u].w < 0.5f;
            uint4 _4577 = asuint(CB4_m0[25u]);
            float _4590 = ((-0.0f) - TEXCOORD_2.w) + asfloat(_4530 ? asuint(mad(CB1_m0[2u].x, CB4_m0[25u].z, mad(CB1_m0[0u].x, CB4_m0[25u].x, CB1_m0[1u].x * CB4_m0[25u].y)) + CB1_m0[3u].x) : _4577.x);
            float _4591 = ((-0.0f) - TEXCOORD_3.w) + asfloat(_4530 ? asuint(mad(CB1_m0[2u].y, CB4_m0[25u].z, mad(CB1_m0[0u].y, CB4_m0[25u].x, CB1_m0[1u].y * CB4_m0[25u].y)) + CB1_m0[3u].y) : _4577.y);
            float _4592 = ((-0.0f) - TEXCOORD_4.w) + asfloat(_4530 ? asuint(mad(CB1_m0[2u].z, CB4_m0[25u].z, mad(CB1_m0[0u].z, CB4_m0[25u].x, CB1_m0[1u].z * CB4_m0[25u].y)) + CB1_m0[3u].z) : _4577.z);
            float _4597 = rsqrt(max(dot(float3(_4590, _4591, _4592), float3(_4590, _4591, _4592)), 1.1754943508222875079687365372222e-38f));
            _4733 = _4597 * _4591;
            _4734 = _4597 * _4590;
            _4735 = _4597 * _4592;
        }
        else
        {
            _4733 = asfloat(_4389 ? asuint(_640) : asuint(_540));
            _4734 = asfloat(_4389 ? asuint(_639) : asuint(_539));
            _4735 = asfloat(_4389 ? asuint(_641) : asuint(_541));
        }
        float _4755 = clamp((mad(CB4_m0[156u].w, 2.0f, dot(float3(_362, _363, _364), float3(dot(float2(_4384, _4383), float2(_4734, _4735)), _4733, dot(float2((-0.0f) - _4383, _4384), float2(_4734, _4735))))) + (-1.0f)) / max(CB4_m0[157u].x, 9.9999997473787516355514526367188e-06f), 0.0f, 1.0f);
        float _4782 = mad(_4755, CB4_m0[30u].x + ((-0.0f) - CB4_m0[31u].x), CB4_m0[31u].x);
        float _4783 = mad(_4755, CB4_m0[30u].y + ((-0.0f) - CB4_m0[31u].y), CB4_m0[31u].y);
        float _4784 = mad(_4755, CB4_m0[30u].z + ((-0.0f) - CB4_m0[31u].z), CB4_m0[31u].z);
        float _4785 = mad(_4755, CB4_m0[30u].w + ((-0.0f) - CB4_m0[31u].w), CB4_m0[31u].w);
        bool _4789 = 0.5f < CB4_m0[157u].z;
        float _4794 = asfloat(_4789 ? asuint(_2083) : 1065353216u);
        float _4796 = asfloat(_4789 ? asuint(_2082) : 1065353216u);
        float _4798 = asfloat(_4789 ? asuint(_2081) : 1065353216u);
        float _4799 = _4794 * _4782;
        float _4800 = _4796 * _4783;
        bool _4805 = CB4_m0[157u].y < 0.5f;
        _4404 = asfloat(0u);
        _4406 = asfloat(0u);
        _4408 = mad(mad(_4784, _4798, _4800 + _4799), _4785, _4293);
        _4410 = asfloat(0u);
        _4412 = asfloat(_4805 ? asuint(mad(_4785, mad(_4784, _4798, (-0.0f) - _4298), _4298)) : asuint(mad(_4785, _4798 * _4784, _4298)));
        _4414 = asfloat(_4805 ? asuint(mad(_4785, mad(_4783, _4796, (-0.0f) - _4300), _4300)) : asuint(mad(_4785, _4800, _4300)));
        _4416 = asfloat(_4805 ? asuint(mad(_4785, mad(_4782, _4794, (-0.0f) - _4302), _4302)) : asuint(mad(_4785, _4799, _4302)));
    }
    else
    {
        _4404 = _4289;
        _4406 = _4291;
        _4408 = _4293;
        _4410 = _4296;
        _4412 = _4298;
        _4414 = _4300;
        _4416 = _4302;
    }
    float _4688;
    float _4689;
    float _4690;
    float _4691;
    float _4692;
    float _4693;
    float _4694;
    if (0.5f < CB4_m0[159u].y)
    {
        float _4616 = clamp((((-0.0f) - TEXCOORD_5.z) + CB4_m0[167u].x) * 100.0f, 0.0f, 1.0f) * CB4_m0[159u].z;
        float _4630 = mad(CB4_m0[159u].z, CB4_m0[167u].x, CB4_m0[167u].y + CB4_m0[167u].y);
        float _4636 = clamp((_4630 + ((-0.0f) - TEXCOORD_5.z)) / _4630, 0.0f, 1.0f);
        float _4637 = _4636 * _4636;
        float _4662 = mad(_4616, CB4_m0[113u].x + ((-0.0f) - CB4_m0[114u].x), CB4_m0[114u].x);
        float _4663 = mad(_4616, CB4_m0[113u].y + ((-0.0f) - CB4_m0[114u].y), CB4_m0[114u].y);
        float _4664 = mad(_4616, CB4_m0[113u].z + ((-0.0f) - CB4_m0[114u].z), CB4_m0[114u].z);
        float _4669 = clamp(mad(_4637 * _4637, CB4_m0[159u].w, _4616), 0.0f, 1.0f);
        _4688 = mad(_4669, (-0.0f) - _4404, _4404);
        _4689 = mad(_4669, (-0.0f) - _4406, _4406);
        _4690 = mad(_4664 + (_4663 + _4662), _4669, _4408);
        _4691 = mad(_4669, (-0.0f) - _4410, _4410);
        _4692 = mad(_4669, ((-0.0f) - _4412) + _4664, _4412);
        _4693 = mad(_4669, ((-0.0f) - _4414) + _4663, _4414);
        _4694 = mad(_4669, ((-0.0f) - _4416) + _4662, _4416);
    }
    else
    {
        _4688 = _4404;
        _4689 = _4406;
        _4690 = _4408;
        _4691 = _4410;
        _4692 = _4412;
        _4693 = _4414;
        _4694 = _4416;
    }
    discard_cond(TEXCOORD_5.z < 0.0f);
    SV_Target_1.x = min(sqrt(max(_4691, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.y = min(sqrt(max(_4688, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.z = min(sqrt(max(_4689, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.w = _4690 * 0.33329999446868896484375f;
    SV_Target_2.w = (_4295 != 0u) ? 0.3400000035762786865234375f : 0.0f;
    SV_Target_3.x = mad(_362, 0.5f, 0.5f);
    SV_Target_3.y = mad(_363, 0.5f, 0.5f);
    SV_Target_3.z = mad(_364, 0.5f, 0.5f);
    SV_Target.x = _4694;
    SV_Target.y = _4693;
    SV_Target.z = _4692;
    SV_Target.w = 1.0f;
    SV_Target_3.w = 1.0f;
    discard_exit();
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
    gl_FragCoord = stage_input.gl_FragCoord;
    gl_FragCoord.w = 1.0 / gl_FragCoord.w;
    gl_FrontFacing = stage_input.gl_FrontFacing;
    TEXCOORD = stage_input.TEXCOORD;
    TEXCOORD_1 = stage_input.TEXCOORD_1;
    TEXCOORD_2 = stage_input.TEXCOORD_2;
    TEXCOORD_3 = stage_input.TEXCOORD_3;
    TEXCOORD_4 = stage_input.TEXCOORD_4;
    TEXCOORD_5 = stage_input.TEXCOORD_5;
    TXCOORDD_6 = stage_input.TXCOORDD_6;
    TEXCOORD_7 = stage_input.TEXCOORD_7;
    TEXCOORD_8 = stage_input.TEXCOORD_8;
    frag_main();
    SPIRV_Cross_Output stage_output;
    stage_output.SV_Target = SV_Target;
    stage_output.SV_Target_1 = SV_Target_1;
    stage_output.SV_Target_2 = SV_Target_2;
    stage_output.SV_Target_3 = SV_Target_3;
    return stage_output;
}
