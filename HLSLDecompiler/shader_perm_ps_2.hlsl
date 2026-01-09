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

void frag_main()
{
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
                float _2592 = clamp(_2308 * CB4_m0[_421 + 10u].z, 0.0f, 1.0f);
                uint _2593 = _421 + 10u;
                _1963 = mad(_2592, mad(_2307, CB4_m0[_2593].y, (-0.0f) - _479), _479);
                _1964 = mad(_2592, mad(_2306, CB4_m0[_2593].y, (-0.0f) - _477), _477);
                _1965 = mad(_2592, mad(_2305, CB4_m0[_2593].y, (-0.0f) - _475), _475);
            }
            else
            {
                float _2619;
                float _2620;
                float _2621;
                if (CB4_m0[_421 + 15u].y < 1.5f)
                {
                    float _2627 = clamp(_2308 * CB4_m0[_421 + 10u].z, 0.0f, 1.0f);
                    uint _2631 = _421 + 10u;
                    _2619 = mad(_2627 * _2307, CB4_m0[_2631].y, _479);
                    _2620 = mad(_2627 * _2306, CB4_m0[_2631].y, _477);
                    _2621 = mad(_2627 * _2305, CB4_m0[_2631].y, _475);
                }
                else
                {
                    uint _2638 = _421 + 5u;
                    uint _2647 = _421 + 10u;
                    float _2662 = clamp(_2308 * CB4_m0[_421 + 10u].z, 0.0f, 1.0f);
                    float _2666 = mad(_2662, clamp(mad(mad(_2295, CB4_m0[_2638].x, -0.5f), CB4_m0[_2647].y, _2305), 0.0f, 1.0f) + (-0.5f), 0.5f);
                    float _2667 = mad(_2662, clamp(mad(mad(_2296, CB4_m0[_2638].y, -0.5f), CB4_m0[_2647].y, _2306), 0.0f, 1.0f) + (-0.5f), 0.5f);
                    float _2668 = mad(_2662, clamp(mad(mad(_2297, CB4_m0[_2638].z, -0.5f), CB4_m0[_2647].y, _2307), 0.0f, 1.0f) + (-0.5f), 0.5f);
                    float _2669 = _475 * _2666;
                    float _2670 = _477 * _2667;
                    float _2671 = _479 * _2668;
                    float _2678 = ((-0.0f) - _475) + 1.0f;
                    float _2679 = ((-0.0f) - _477) + 1.0f;
                    float _2680 = ((-0.0f) - _479) + 1.0f;
                    _2619 = mad(asfloat(((_479 >= 0.5f) ? 4294967295u : 0u) & 1065353216u), mad((-0.0f) - _2671, 2.0f, mad((-0.0f) - (_2680 + _2680), ((-0.0f) - _2668) + 1.0f, 1.0f)), _2671 + _2671);
                    _2620 = mad(asfloat(((_477 >= 0.5f) ? 4294967295u : 0u) & 1065353216u), mad((-0.0f) - _2670, 2.0f, mad((-0.0f) - (_2679 + _2679), ((-0.0f) - _2667) + 1.0f, 1.0f)), _2670 + _2670);
                    _2621 = mad(asfloat(((_475 >= 0.5f) ? 4294967295u : 0u) & 1065353216u), mad((-0.0f) - _2669, 2.0f, mad((-0.0f) - (_2678 + _2678), ((-0.0f) - _2666) + 1.0f, 1.0f)), _2669 + _2669);
                }
                _1963 = _2619;
                _1964 = _2620;
                _1965 = _2621;
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
    float _2347;
    if (0.5f < _2242)
    {
        _2347 = clamp(((clamp(mad(_1378, 1.5f, -0.5f), 0.0f, 1.0f) + _374) + (-1.0f)) / max(asfloat(_480 ? asuint(CB4_m0[143u]).z : (_482 ? asuint(CB4_m0[143u]).y : (_484 ? asuint(CB4_m0[143u]).x : (_486 ? asuint(CB4_m0[142u]).w : asuint(CB4_m0[142u]).z)))), 9.9999997473787516355514526367188e-06f), 0.0f, 1.0f);
    }
    else
    {
        _2347 = _374;
    }
    float _2351 = _2347 * CB4_m0[143u].w;
    float _2359 = mad(_631, _638, _539);
    float _2360 = mad(_632, _638, _540);
    float _2361 = mad(_633, _638, _541);
    float _2365 = rsqrt(dot(float3(_2359, _2360, _2361), float3(_2359, _2360, _2361)));
    float _2366 = _2365 * _2359;
    float _2367 = _2365 * _2360;
    float _2368 = _2365 * _2361;
    float _2394 = asfloat(_480 ? asuint(CB4_m0[141u]).x : (_482 ? asuint(CB4_m0[140u]).w : (_484 ? asuint(CB4_m0[140u]).z : (_486 ? asuint(CB4_m0[140u]).y : asuint(CB4_m0[140u]).x))));
    float _2405 = clamp(mad(_2394 * dot(float3(_362, _363, _364), float3(_2366, _2367, _2368)), 0.75f, 0.25f), 0.0f, 1.0f);
    float _2411 = clamp(mad(_2394 * dot(float3(_639, _640, _641), float3(_2366, _2367, _2368)), 0.75f, 0.25f), 0.0f, 1.0f);
    float _2413 = mad(_2405 * _2405, mad(_2103, _2103, -1.0f), 1.000010013580322265625f);
    float _2487 = (((clamp(mad(_1361 * _2394, 0.75f, 0.25f), 0.0f, 1.0f) * clamp(mad((-0.0f) - _391, CB4_m0[137u].w, (_2103 * _2103) / (mad(_2103, 4.0f, 2.0f) * (max(_2411 * _2411, 0.100000001490116119384765625f) * (_2413 * _2413)))), 0.0f, 1.0f)) / max(_2103, 9.9999997473787516355514526367188e-06f)) * (asfloat(_480 ? asuint(CB4_m0[139u]).w : (_482 ? asuint(CB4_m0[139u]).z : (_484 ? asuint(CB4_m0[139u]).y : (_486 ? asuint(CB4_m0[139u]).x : asuint(CB4_m0[138u]).w)))) * asfloat(_480 ? asuint(CB4_m0[166u]).w : (_482 ? asuint(CB4_m0[166u]).z : (_484 ? asuint(CB4_m0[166u]).y : (_486 ? asuint(CB4_m0[166u]).x : asuint(CB4_m0[165u]).w)))))) * 10.0f;
    float _2495 = asfloat((_2242 < 0.5f) ? asuint(clamp(_2487, 0.0f, 1.0f) * 100.0f) : 1099257348u);
    float _2496 = (_2094 * (asfloat(_480 ? _2206.x : (_482 ? _2196.x : (_484 ? _2186.x : (_486 ? _2169.x : _2176.x)))) * _2351)) * _2495;
    float _2497 = (_2096 * (asfloat(_480 ? _2206.y : (_482 ? _2196.y : (_484 ? _2186.y : (_486 ? _2169.y : _2176.y)))) * _2351)) * _2495;
    float _2498 = (_2097 * (asfloat(_480 ? _2206.z : (_482 ? _2196.z : (_484 ? _2186.z : (_486 ? _2169.z : _2176.z)))) * _2351)) * _2495;
    uint _2515 = (CB4_m0[144u].x >= 0.5f) ? 4294967295u : 0u;
    uint4 _2519 = asuint(CB4_m0[80u]);
    uint4 _2526 = asuint(CB4_m0[79u]);
    uint4 _2536 = asuint(CB4_m0[81u]);
    uint4 _2546 = asuint(CB4_m0[82u]);
    uint4 _2556 = asuint(CB4_m0[83u]);
    float _2576 = asfloat(_2515 & asuint(_2083 * (_413 * asfloat(_480 ? _2556.x : (_482 ? _2546.x : (_484 ? _2536.x : (_486 ? _2519.x : _2526.x)))))));
    float _2578 = asfloat(_2515 & asuint(_2082 * (_413 * asfloat(_480 ? _2556.y : (_482 ? _2546.y : (_484 ? _2536.y : (_486 ? _2519.y : _2526.y)))))));
    float _2580 = asfloat(_2515 & asuint(_2081 * (_413 * asfloat(_480 ? _2556.z : (_482 ? _2546.z : (_484 ? _2536.z : (_486 ? _2519.z : _2526.z)))))));
    float _2582 = _2580 + (_2578 + _2576);
    float _2820;
    float _2822;
    float _2824;
    if (0.0f < CB3_m0[2u].y)
    {
        float _2614 = min(CB3_m0[2u].y, 2.0f);
        float _2940;
        float _2941;
        float _2942;
        float _2943;
        float _2944;
        float _2945;
        if (0.0f < _2614)
        {
            float _2725 = ((-0.0f) - TEXCOORD_2.w) + CB3_m0[25u].x;
            float _2726 = ((-0.0f) - TEXCOORD_3.w) + CB3_m0[25u].y;
            float _2727 = ((-0.0f) - TEXCOORD_4.w) + CB3_m0[25u].z;
            float _2728 = dot(float3(_2725, _2726, _2727), float3(_2725, _2726, _2727));
            float _2731 = max(_2728, 1.1754943508222875079687365372222e-38f);
            float _2732 = rsqrt(_2731);
            float _2739 = _2731 * CB3_m0[27u].x;
            bool _2743 = (-0.5f) < CB3_m0[27u].y;
            uint _2751 = _2743 ? asuint(_2739 * _2739) : asuint(_2739);
            float _2765 = clamp(((-0.0f) - asfloat((CB3_m0[27u].y < (-1.5f)) ? (((asfloat(_2751) >= 1.0f) ? 4294967295u : 0u) & 1065353216u) : _2751)) + 1.0f, 0.0f, 1.0f);
            float _2783 = clamp(mad(dot(float3(CB3_m0[26u].xyz), float3(_2732 * _2725, _2732 * _2726, _2732 * _2727)), CB3_m0[27u].z, CB3_m0[27u].w), 0.0f, 1.0f);
            float _2785 = ((_2765 * _2765) * asfloat(_2743 ? asuint(1.0f / _2731) : 1065353216u)) * (_2783 * _2783);
            float _2791 = _2785 * CB3_m0[28u].x;
            float _2792 = _2785 * CB3_m0[28u].y;
            float _2793 = _2785 * CB3_m0[28u].z;
            float _2795 = max(_2793, max(_2792, _2791));
            float _2796 = _2795 + 6.103515625e-05f;
            float _2797 = rsqrt(_2728);
            float _2804 = dot(float3(_362, _363, _364), float3(_2797 * _2725, _2797 * _2726, _2797 * _2727)) * _2795;
            float _2808 = _2795 / CB3_m0[25u].w;
            float _2809 = _2795 * _2791;
            float _2810 = _2795 * _2792;
            float _2811 = _2795 * _2793;
            float _2934;
            float _2935;
            float _2936;
            float _2937;
            float _2938;
            float _2939;
            if (1.0f < _2614)
            {
                float _2846 = ((-0.0f) - TEXCOORD_2.w) + CB3_m0[29u].x;
                float _2847 = ((-0.0f) - TEXCOORD_3.w) + CB3_m0[29u].y;
                float _2848 = ((-0.0f) - TEXCOORD_4.w) + CB3_m0[29u].z;
                float _2849 = dot(float3(_2846, _2847, _2848), float3(_2846, _2847, _2848));
                float _2852 = max(_2849, 1.1754943508222875079687365372222e-38f);
                float _2853 = rsqrt(_2852);
                float _2860 = _2852 * CB3_m0[31u].x;
                bool _2864 = (-0.5f) < CB3_m0[31u].y;
                uint _2872 = _2864 ? asuint(_2860 * _2860) : asuint(_2860);
                float _2885 = clamp(((-0.0f) - asfloat((CB3_m0[31u].y < (-1.5f)) ? (((asfloat(_2872) >= 1.0f) ? 4294967295u : 0u) & 1065353216u) : _2872)) + 1.0f, 0.0f, 1.0f);
                float _2904 = clamp(mad(dot(float3(CB3_m0[30u].xyz), float3(_2853 * _2846, _2853 * _2847, _2853 * _2848)), CB3_m0[31u].z, CB3_m0[31u].w), 0.0f, 1.0f);
                float _2906 = ((_2885 * _2885) * asfloat(_2864 ? asuint(1.0f / _2852) : 1065353216u)) * (_2904 * _2904);
                float _2912 = _2906 * CB3_m0[32u].x;
                float _2913 = _2906 * CB3_m0[32u].y;
                float _2914 = _2906 * CB3_m0[32u].z;
                float _2916 = max(_2914, max(_2913, _2912));
                float _2918 = rsqrt(_2849);
                _2934 = _2916 + _2796;
                _2935 = (_2916 / CB3_m0[29u].w) + _2808;
                _2936 = mad(_2916, dot(float3(_362, _363, _364), float3(_2918 * _2846, _2918 * _2847, _2918 * _2848)), _2804);
                _2937 = mad(_2912, _2916, _2809);
                _2938 = mad(_2913, _2916, _2810);
                _2939 = mad(_2914, _2916, _2811);
            }
            else
            {
                _2934 = _2796;
                _2935 = _2808;
                _2936 = _2804;
                _2937 = _2809;
                _2938 = _2810;
                _2939 = _2811;
            }
            _2940 = _2934;
            _2941 = _2935;
            _2942 = _2936;
            _2943 = _2937;
            _2944 = _2938;
            _2945 = _2939;
        }
        else
        {
            _2940 = asfloat(947912704u);
            _2941 = asfloat(0u);
            _2942 = asfloat(0u);
            _2943 = asfloat(0u);
            _2944 = asfloat(0u);
            _2945 = asfloat(0u);
        }
        float _2948 = clamp((_2942 / _2941) + 0.5f, 0.0f, 1.0f);
        _2820 = _2948 * (_2943 / _2940);
        _2822 = _2948 * (_2944 / _2940);
        _2824 = _2948 * (_2945 / _2940);
    }
    else
    {
        _2820 = asfloat(0u);
        _2822 = asfloat(0u);
        _2824 = asfloat(0u);
    }
    float _2832 = mad(TEXCOORD_8.x, _2162, _2820);
    float _2833 = mad(TEXCOORD_8.y, _2162, _2822);
    float _2834 = mad(TEXCOORD_8.z, _2162, _2824);
    float _3004;
    float _3005;
    float _3006;
    float _3007;
    float _3008;
    float _3009;
    if (_548)
    {
        uint _2962 = uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u)));
        uint _2964 = (_2962 * 32u) + 24u;
        uint3 _2974 = uint3(T1.Load(_2964).x, T1.Load(_2964 + 1u).x, T1.Load(_2964 + 2u).x);
        uint _2982 = (_2962 * 32u) + 28u;
        uint3 _2991 = uint3(T1.Load(_2982).x, T1.Load(_2982 + 1u).x, T1.Load(_2982 + 2u).x);
        _3004 = asfloat(_2974.x);
        _3005 = asfloat(_2974.y);
        _3006 = asfloat(_2974.z);
        _3007 = asfloat(_2991.x);
        _3008 = asfloat(_2991.y);
        _3009 = asfloat(_2991.z);
    }
    else
    {
        _3004 = asfloat(0u);
        _3005 = asfloat(0u);
        _3006 = asfloat(0u);
        _3007 = asfloat(0u);
        _3008 = asfloat(0u);
        _3009 = asfloat(0u);
    }
    bool _3013 = 0.5f < CB0_m0[23u].y;
    bool _3014 = _430 != 0u;
    float _3110;
    float _3112;
    float _3114;
    if (0.5f >= CB0_m0[188u].w)
    {
        float _3049 = clamp(mad((-0.0f) - dot(float3(_539, _540, _541), float3(_639, _640, _641)), 0.5f, 0.5f), 0.0f, 1.0f);
        float _3051 = mad(_363, 0.5f, 0.5f);
        float _3060 = clamp((asfloat((_430 != 0u) ? asuint(_3051) : asuint(_3051 * _3051)) + (-0.20000000298023223876953125f)) * 1.25f, 0.0f, 1.0f);
        float _3063 = (_3060 * _3060) * mad(_3060, -2.0f, 3.0f);
        float _3064 = _3063 * _3063;
        bool _3067 = _430 != 0u;
        float _3130;
        if (_548)
        {
            _3130 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _3130 = asfloat(0u);
        }
        float _3159 = min(_542 * 0.083333335816860198974609375f, 1.0f);
        float _3167 = ((-0.0f) - dot(float3(_539, _540, _541), float3(_362, _363, _364))) + 1.0f;
        float _3176 = clamp((((-0.0f) - mad(_3159, -0.300000011920928955078125f, 0.5f)) + _3167) * 3.3333332538604736328125f, 0.0f, 1.0f);
        float _3177 = clamp((((-0.0f) - mad(_3159, -0.300000011920928955078125f, 0.60000002384185791015625f)) + _3167) * 5.000000476837158203125f, 0.0f, 1.0f);
        float _3208 = CB0_m0[189u].x * CB0_m0[189u].x;
        float _3209 = CB0_m0[189u].y * CB0_m0[189u].y;
        float _3210 = CB0_m0[189u].z * CB0_m0[189u].z;
        float _3211 = _3208 * _3208;
        float _3212 = _3209 * _3209;
        float _3213 = _3210 * _3210;
        float _3214 = _3211 * _3211;
        float _3215 = _3212 * _3212;
        float _3216 = _3213 * _3213;
        float _3223 = dot(float3(CB0_m0[189u].xyz), 0.3300000131130218505859375f.xxx) * (1.0f / (dot(float3(_3214, _3215, _3216), 0.699999988079071044921875f.xxx) + 9.9999997473787516355514526367188e-06f));
        bool _3243 = max(CB0_m0[189u].z, CB0_m0[189u].y) < CB0_m0[189u].x;
        float _3259 = asfloat(_3243 ? asuint(mad(_1274, mad(_3223, _3214, (-0.0f) - _2163), _2163)) : asuint(CB0_m0[189u].x * 0.60000002384185791015625f));
        float _3261 = asfloat(_3243 ? asuint(mad(_1274, mad(_3223, _3215, (-0.0f) - _2164), _2164)) : asuint(CB0_m0[189u].y * 0.60000002384185791015625f));
        float _3263 = asfloat(_3243 ? asuint(mad(_1274, mad(_3223, _3216, (-0.0f) - _2165), _2165)) : asuint(CB0_m0[189u].z * 0.60000002384185791015625f));
        float _3268 = exp2(log2(_3049 * _3049) * 20.0f);
        float _3292 = mad(_2081, _2085, _2088 + _2087) * 0.3300000131130218505859375f;
        float _3309 = exp2(log2(clamp(_2087, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _3310 = exp2(log2(clamp(_2088, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _3311 = exp2(log2(clamp(_2089, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _3316 = rsqrt(max(dot(float3(_3309, _3310, _3311), float3(_3309, _3310, _3311)), 6.103515625e-05f));
        float _3317 = _3316 * _3309;
        float _3318 = _3316 * _3310;
        float _3319 = _3316 * _3311;
        float _3324 = CB0_m0[198u].w * 48.0f;
        float _3326 = mad((_3292 * _3292) * CB0_m0[199u].w, -0.199999988079071044921875f, 1.0f) * 0.100000001490116119384765625f;
        float _3330 = (-0.0f) - _3326;
        float _3340 = asfloat((_430 != 0u) ? asuint((_3176 * _3176) * mad(_3176, -2.0f, 3.0f)) : asuint((_3177 * _3177) * mad(_3177, -2.0f, 3.0f))) * (mad(CB0_m0[199u].y, mad(clamp((-0.0f) - _540, 0.0f, 1.0f), asfloat((0.0f != TEXCOORD_7.z) ? 1083179008u : asuint(mad(_376, CB4_m0[137u].z, 2.5f))), -0.5f), 1.0f) * (clamp(mad(_3130, 0.39999997615814208984375f, _1274) + 0.60000002384185791015625f, 0.0f, 1.0f) * (mad(_1284 * mad(_1361, 0.5f, 0.5f), 1.39999997615814208984375f, 0.100000001490116119384765625f) * (mad(_3049, 0.800000011920928955078125f, 0.20000000298023223876953125f) * mad(CB0_m0[199u].x, mad(_3063, mad(_3063 * (_3064 * _3064), asfloat(_3067 ? 3212836864u : 3204448256u) + asfloat(_3067 ? 1050253722u : 1065353216u), asfloat(_3067 ? 1065353216u : 1056964608u)), -0.100000001490116119384765625f), 0.100000001490116119384765625f)))));
        uint4 _3350 = asuint(CB4_m0[87u]);
        uint4 _3357 = asuint(CB4_m0[86u]);
        uint4 _3367 = asuint(CB4_m0[88u]);
        uint4 _3377 = asuint(CB4_m0[89u]);
        uint4 _3387 = asuint(CB4_m0[90u]);
        float _3399 = ((_3324 * mad(_380, mad(_3330, _3319, _2097), _3319 * _3326)) * (mad(CB0_m0[199u].z, mad((-0.0f) - _1892, _2162, mad(_3268, mad(_1892, _2162, (-0.0f) - _3263), _3263)), _2165) * _3340)) * asfloat(_480 ? _3387.z : (_482 ? _3377.z : (_484 ? _3367.z : (_486 ? _3350.z : _3357.z))));
        float _3402 = mad(clamp(mad(_542, 0.20000000298023223876953125f, -1.0f), 0.0f, 1.0f), -0.699999988079071044921875f, 1.0f);
        float _3404 = _3402 * (((_3324 * mad(_380, mad(_3330, _3317, _2094), _3317 * _3326)) * (mad(CB0_m0[199u].z, mad((-0.0f) - _1890, _2162, mad(_3268, mad(_1890, _2162, (-0.0f) - _3259), _3259)), _2163) * _3340)) * asfloat(_480 ? _3387.x : (_482 ? _3377.x : (_484 ? _3367.x : (_486 ? _3350.x : _3357.x)))));
        float _3405 = _3402 * (((_3324 * mad(_380, mad(_3330, _3318, _2096), _3318 * _3326)) * (mad(CB0_m0[199u].z, mad((-0.0f) - _1891, _2162, mad(_3268, mad(_1891, _2162, (-0.0f) - _3261), _3261)), _2164) * _3340)) * asfloat(_480 ? _3387.y : (_482 ? _3377.y : (_484 ? _3367.y : (_486 ? _3350.y : _3357.y)))));
        float _3408 = mad(_3399, _3402, _3405 + _3404);
        float _3410 = mad(_3408 * _3408, 0.0500000007450580596923828125f, 1.0f);
        float _3415 = asfloat(_1911 ? 1056964608u : 1065353216u);
        float _3416 = _3415 * (_3410 * _3404);
        float _3417 = _3415 * (_3410 * _3405);
        float _3418 = _3415 * (_3410 * (_3402 * _3399));
        bool _3422 = 0.5f < CB3_m0[1u].w;
        _3110 = asfloat(_3422 ? asuint(min(_3418, 0.699999988079071044921875f)) : asuint(_3418)) * CB0_m0[198u].z;
        _3112 = asfloat(_3422 ? asuint(min(_3417, 0.699999988079071044921875f)) : asuint(_3417)) * CB0_m0[198u].y;
        _3114 = asfloat(_3422 ? asuint(min(_3416, 0.699999988079071044921875f)) : asuint(_3416)) * CB0_m0[198u].x;
    }
    else
    {
        _3110 = asfloat(0u);
        _3112 = asfloat(0u);
        _3114 = asfloat(0u);
    }
    float _3122 = _2576 + (max(mad(_2496, _2163, -1.0f), 0.0f) + mad(asfloat(_3013 ? 1028443341u : (_3014 ? asuint(_3004) : asuint(_3007))), _2083 * _2162, mad(_2832, _2087, mad(_2087, _2163, _2163 * _2496))));
    float _3123 = _2578 + (max(mad(_2497, _2164, -1.0f), 0.0f) + mad(asfloat(_3013 ? 1028443341u : (_3014 ? asuint(_3005) : asuint(_3008))), _2082 * _2162, mad(_2833, _2088, mad(_2088, _2164, _2164 * _2497))));
    float _3124 = _2580 + (max(mad(_2498, _2165, -1.0f), 0.0f) + mad(asfloat(_3013 ? 1028443341u : (_3014 ? asuint(_3006) : asuint(_3009))), _2081 * _2162, mad(_2834, _2089, mad(_2089, _2165, _2165 * _2498))));
    float _3696;
    float _3697;
    float _3698;
    float _3699;
    float _3700;
    if (CB4_m0[150u].x >= 0.5f)
    {
        bool _3446 = 0.5f < CB4_m0[150u].y;
        float _3455 = _3446 ? TEXCOORD_1.x : TEXCOORD.x;
        float _3456 = _3446 ? TEXCOORD_1.y : TEXCOORD.y;
        bool _3462 = 0.5f < CB4_m0[148u].z;
        bool _3463 = 0.5f < CB4_m0[148u].y;
        bool _3469 = CB4_m0[150u].y < 0.5f;
        bool _3472 = CB4_m0[150u].z < 0.5f;
        bool _3493 = 0.800000011920928955078125f < CB4_m0[147u].w;
        float4 _3546 = T8.SampleBias(S3, float2(mad(CB4_m0[108u].x, CB0_m0[40u].y, mad(_3455, CB4_m0[49u].x, CB4_m0[49u].z)), mad(CB4_m0[108u].y, CB0_m0[40u].y, mad(_3456, CB4_m0[49u].y, CB4_m0[49u].w))), CB0_m0[191u].x);
        float _3548 = _3546.x;
        float _3549 = _3546.y;
        float _3550 = _3546.z;
        float4 _3555 = T9.SampleBias(S4, float2(mad(CB4_m0[108u].z, CB0_m0[40u].y, mad(asfloat(_3493 ? asuint(_265) : (_3462 ? asuint(_3455) : asuint(_3469 ? TEXCOORD_1.x : TEXCOORD.x))), CB4_m0[50u].x, CB4_m0[50u].z)), mad(CB4_m0[108u].w, CB0_m0[40u].y, mad(asfloat(_3493 ? asuint(_266) : (_3462 ? asuint(_3456) : asuint(_3469 ? TEXCOORD_1.y : TEXCOORD.y))), CB4_m0[50u].y, CB4_m0[50u].w))), CB0_m0[191u].x);
        uint _3564 = (CB4_m0[150u].w < 0.5f) ? asuint(_3555.x) : ((CB4_m0[150u].w < 1.5f) ? asuint(_3555.y) : asuint(_3555.z));
        float _3565 = asfloat(_3564);
        uint _3566 = asuint(_3548);
        float _3571 = asfloat(_3472 ? _3566 : asuint(_3548));
        float _3573 = asfloat(_3472 ? _3566 : asuint(_3549));
        uint _3574 = _3472 ? _3566 : asuint(_3550);
        uint _3622 = _3463 ? asuint(_3565 * mad(_3571, CB4_m0[34u].x + ((-0.0f) - CB4_m0[95u].x), CB4_m0[95u].x)) : asuint((_3565 * _3571) * CB4_m0[34u].x);
        uint _3624 = _3463 ? asuint(_3565 * mad(_3573, CB4_m0[34u].y + ((-0.0f) - CB4_m0[95u].y), CB4_m0[95u].y)) : asuint((_3565 * _3573) * CB4_m0[34u].y);
        uint _3626 = _3463 ? asuint(_3565 * mad(asfloat(_3574), CB4_m0[34u].z + ((-0.0f) - CB4_m0[95u].z), CB4_m0[95u].z)) : asuint((_3565 * asfloat(_3574)) * CB4_m0[34u].z);
        bool _3631 = 0.5f < CB4_m0[151u].x;
        float _3639 = asfloat(_3631 ? asuint(_2083 * asfloat(_3622)) : _3622);
        float _3641 = asfloat(_3631 ? asuint(_2082 * asfloat(_3624)) : _3624);
        float _3643 = asfloat(_3631 ? asuint(_2081 * asfloat(_3626)) : _3626);
        bool _3647 = CB4_m0[147u].z < 0.5f;
        uint _3658 = _3472 ? asuint(_3548) : asuint(_3550 + (_3549 + _3548));
        float _3664 = min(asfloat((1.5f < CB4_m0[147u].z) ? asuint(_3565 + asfloat(_3658)) : _3658), 1.0f);
        float _3665 = _3565 * _3664;
        _3696 = asfloat(_3647 ? _3564 : asuint(_3665));
        _3697 = asfloat(_3647 ? asuint((_3643 + (_3641 + _3639)) + _2582) : asuint(mad(_3565, _3664, _2582)));
        _3698 = asfloat(_3647 ? asuint(_3122 + _3639) : asuint(_3122 * mad(_3665, _3639 + (-1.0f), 1.0f)));
        _3699 = asfloat(_3647 ? asuint(_3123 + _3641) : asuint(_3123 * mad(_3665, _3641 + (-1.0f), 1.0f)));
        _3700 = asfloat(_3647 ? asuint(_3124 + _3643) : asuint(_3124 * mad(_3665, _3643 + (-1.0f), 1.0f)));
    }
    else
    {
        _3696 = asfloat(0u);
        _3697 = _2582;
        _3698 = _3122;
        _3699 = _3123;
        _3700 = _3124;
    }
    float _3949;
    float _3950;
    float _3951;
    float _3952;
    float _3953;
    if (float(int(asuint(CB4_m0[132u]).w)) >= 0.5f)
    {
        bool _3712 = 0.5f < CB4_m0[127u].x;
        bool _3713 = 0.5f < CB4_m0[127u].z;
        bool _3731 = 0.5f < CB4_m0[128u].x;
        bool _3732 = 0.800000011920928955078125f < CB4_m0[128u].z;
        bool _3733 = 0.5f < CB4_m0[128u].y;
        float4 _3797 = T10.SampleBias(S0, float2(mad(CB4_m0[40u].x, CB0_m0[40u].y, mad(_3712 ? TEXCOORD_1.x : TEXCOORD.x, CB4_m0[51u].x, CB4_m0[51u].z)), mad(CB4_m0[40u].y, CB0_m0[40u].y, mad(_3712 ? TEXCOORD_1.y : TEXCOORD.y, CB4_m0[51u].y, CB4_m0[51u].w))), CB0_m0[191u].x);
        float _3799 = _3797.x;
        float _3800 = _3797.y;
        float _3801 = _3797.z;
        float4 _3806 = T11.SampleBias(S0, float2(mad(CB4_m0[40u].z, CB0_m0[40u].y, mad(asfloat(_3732 ? asuint(_265) : asuint(_3731 ? TEXCOORD_1.x : TEXCOORD.x)), CB4_m0[52u].x, CB4_m0[52u].z)), mad(CB4_m0[40u].w, CB0_m0[40u].y, mad(asfloat(_3732 ? asuint(_266) : asuint(_3731 ? TEXCOORD_1.y : TEXCOORD.y)), CB4_m0[52u].y, CB4_m0[52u].w))), CB0_m0[191u].x);
        bool _3817 = CB4_m0[127u].y < 0.5f;
        uint _3822 = (CB4_m0[127u].w < 0.5f) ? asuint(_3806.x) : ((CB4_m0[127u].w < 1.5f) ? asuint(_3806.y) : asuint(_3806.z));
        float _3823 = asfloat(_3822);
        uint _3824 = asuint(_3799);
        float _3829 = asfloat(_3817 ? _3824 : asuint(_3799));
        float _3831 = asfloat(_3817 ? _3824 : asuint(_3800));
        float _3833 = asfloat(_3817 ? _3824 : asuint(_3801));
        uint _3880 = _3733 ? asuint(_3823 * mad(_3829, CB4_m0[110u].x + ((-0.0f) - CB4_m0[111u].x), CB4_m0[111u].x)) : asuint((_3829 * _3823) * CB4_m0[110u].x);
        uint _3882 = _3733 ? asuint(_3823 * mad(_3831, CB4_m0[110u].y + ((-0.0f) - CB4_m0[111u].y), CB4_m0[111u].y)) : asuint((_3831 * _3823) * CB4_m0[110u].y);
        uint _3884 = _3733 ? asuint(_3823 * mad(_3833, CB4_m0[110u].z + ((-0.0f) - CB4_m0[111u].z), CB4_m0[111u].z)) : asuint((_3833 * _3823) * CB4_m0[110u].z);
        float _3893 = asfloat(_3713 ? asuint(_2083 * asfloat(_3880)) : _3880);
        float _3895 = asfloat(_3713 ? asuint(_2082 * asfloat(_3882)) : _3882);
        float _3897 = asfloat(_3713 ? asuint(_2081 * asfloat(_3884)) : _3884);
        bool _3901 = CB4_m0[128u].w < 0.5f;
        uint _3912 = _3817 ? asuint(_3799) : asuint(_3801 + (_3800 + _3799));
        float _3918 = min(asfloat((1.5f < CB4_m0[128u].w) ? asuint(asfloat(_3912) + _3823) : _3912), 1.0f);
        float _3919 = _3918 * _3823;
        _3949 = asfloat(_3901 ? _3822 : asuint(_3919));
        _3950 = asfloat(_3901 ? asuint((_3897 + (_3895 + _3893)) + _3697) : asuint(mad(_3823, _3918, _3697)));
        _3951 = asfloat(_3901 ? asuint(_3893 + _3698) : asuint(mad(_3919, _3893 + (-1.0f), 1.0f) * _3698));
        _3952 = asfloat(_3901 ? asuint(_3895 + _3699) : asuint(mad(_3919, _3895 + (-1.0f), 1.0f) * _3699));
        _3953 = asfloat(_3901 ? asuint(_3897 + _3700) : asuint(mad(_3919, _3897 + (-1.0f), 1.0f) * _3700));
    }
    else
    {
        _3949 = _3696;
        _3950 = _3697;
        _3951 = _3698;
        _3952 = _3699;
        _3953 = _3700;
    }
    float _3961 = CB4_m0[29u].w * CB4_m0[155u].w;
    float _3973 = mad(_3961, ((-0.0f) - _3951) + CB4_m0[29u].x, _3951);
    float _3974 = mad(_3961, ((-0.0f) - _3952) + CB4_m0[29u].y, _3952);
    float _3975 = mad(_3961, ((-0.0f) - _3953) + CB4_m0[29u].z, _3953);
    float _3983 = mad((-0.0f) - CB4_m0[29u].w, CB4_m0[155u].w, 1.0f);
    float _3984 = _3983 * (_3114 * mad(_2832, 2.0f, 1.0f));
    float _3985 = _3983 * (_3112 * mad(_2833, 2.0f, 1.0f));
    float _3986 = _3983 * (_3110 * mad(_2834, 2.0f, 1.0f));
    float _4187;
    float _4189;
    float _4191;
    float _4193;
    if (0.5f < CB4_m0[152u].y)
    {
        bool _3995 = CB4_m0[153u].x < 0.5f;
        float _4067 = mad(gl_FragCoord.x, CB0_m0[160u].z, -0.5f);
        float _4068 = mad(gl_FragCoord.y, CB0_m0[160u].w, -0.5f);
        float _4096 = ((-0.0f) - (mad(CB0_m0[118u].z, TEXCOORD_4.w, mad(CB0_m0[116u].z, TEXCOORD_2.w, TEXCOORD_3.w * CB0_m0[117u].z)) + CB0_m0[119u].z)) / CB0_m0[93u].y;
        float _4107 = asfloat((0.5f < CB4_m0[152u].z) ? asuint(mad(CB0_m0[85u].w, mad((-0.0f) - _4096, 0.5f, 1.0f), _4096 * 0.5f)) : 1065353216u);
        float4 _4140 = T12.Sample(S5, float2((mad(_4107 * mad(CB4_m0[125u].z, mad(CB0_m0[118u].x, _364, mad(CB0_m0[116u].x, _362, _363 * CB0_m0[117u].x)), (CB0_m0[160u].w * CB0_m0[160u].x) * (_4067 + _4067)), CB4_m0[47u].x, CB4_m0[47u].z) + 0.5f) + mad(CB4_m0[124u].x, CB0_m0[40u].y, CB4_m0[124u].z), (mad(_4107 * mad(CB4_m0[125u].z, mad(CB0_m0[118u].y, _364, mad(CB0_m0[116u].y, _362, _363 * CB0_m0[117u].y)), _4068 + _4068), CB4_m0[47u].y, CB4_m0[47u].w) + 0.5f) + mad(CB4_m0[124u].y, CB0_m0[40u].y, CB4_m0[124u].w)));
        float _4156 = _4140.w * CB4_m0[109u].w;
        float _4185 = asfloat((0.5f < CB4_m0[153u].z) ? asuint(mad(mad(sin((CB0_m0[40u].y / max(CB4_m0[168u].x, 0.00999999977648258209228515625f)) * 6.283185482025146484375f), 0.5f, 0.5f), ((-0.0f) - CB4_m0[125u].x) + CB4_m0[125u].y, CB4_m0[125u].x)) : 1065353216u);
        float _4186 = _4185 * _4156;
        float _4318;
        float _4319;
        float _4320;
        if (0.5f < CB4_m0[152u].w)
        {
            float _4201 = mad((-0.0f) - _4156, _4185, 1.0f);
            _4318 = _3122 * mad(_4140.x * CB4_m0[109u].x, _4186, _4201);
            _4319 = _3123 * mad(_4140.y * CB4_m0[109u].y, _4186, _4201);
            _4320 = _3124 * mad(_4140.z * CB4_m0[109u].z, _4186, _4201);
        }
        else
        {
            _4318 = mad(_4186, mad(CB4_m0[109u].x, _4140.x, (-0.0f) - _3122), _3122);
            _4319 = mad(_4186, mad(CB4_m0[109u].y, _4140.y, (-0.0f) - _3123), _3123);
            _4320 = mad(_4186, mad(CB4_m0[109u].z, _4140.z, (-0.0f) - _3124), _3124);
        }
        float _4346 = asfloat((0.5f < CB4_m0[153u].y) ? asuint(((-0.0f) - _3949) + 1.0f) : 1065353216u) * T13.Sample(S6, float2(mad(CB0_m0[40u].y, CB4_m0[149u].z, mad(_3995 ? TEXCOORD.x : TEXCOORD_1.x, CB4_m0[48u].x, CB4_m0[48u].z)), mad(CB0_m0[40u].y, CB4_m0[149u].w, mad(_3995 ? TEXCOORD.y : TEXCOORD_1.y, CB4_m0[48u].y, CB4_m0[48u].w)))).x;
        _4187 = mad(_4320 + (_4319 + _4318), _4346, _3950);
        _4189 = mad(_4346, ((-0.0f) - _3975) + _4320, _3975);
        _4191 = mad(_4346, ((-0.0f) - _3974) + _4319, _3974);
        _4193 = mad(_4346, ((-0.0f) - _3973) + _4318, _3973);
    }
    else
    {
        _4187 = _3950;
        _4189 = _3975;
        _4191 = _3974;
        _4193 = _3973;
    }
    float _4298;
    float _4300;
    uint _4302;
    float _4303;
    float _4305;
    float _4307;
    float _4309;
    float _4311;
    if (0.5f < CB4_m0[158u].z)
    {
        bool _4239 = 0.5f < CB4_m0[159u].x;
        float4 _4288 = T14.Sample(S7, float2(mad(CB0_m0[40u].y, CB4_m0[103u].x, asfloat(_4239 ? asuint(mad(TEXCOORD_1.x, CB4_m0[55u].x, CB4_m0[55u].z)) : asuint(mad(TEXCOORD.x, CB4_m0[55u].x, CB4_m0[55u].z)))), mad(CB0_m0[40u].y, CB4_m0[103u].y, asfloat(_4239 ? asuint(mad(TEXCOORD_1.y, CB4_m0[55u].y, CB4_m0[55u].w)) : asuint(mad(TEXCOORD.y, CB4_m0[55u].y, CB4_m0[55u].w))))));
        float _4290 = _4288.x;
        float _4291 = _4288.y;
        float _4292 = _4288.z;
        float _4299;
        float _4304;
        float _4306;
        if (0.5f < CB4_m0[158u].w)
        {
            _4299 = mad(CB4_m0[33u].z * CB4_m0[33u].w, _4292, _3986);
            _4304 = mad(CB4_m0[33u].y * CB4_m0[33u].w, _4291, _3985);
            _4306 = mad(CB4_m0[33u].x * CB4_m0[33u].w, _4290, _3984);
        }
        else
        {
            float _4372 = _4288.w * CB4_m0[33u].w;
            _4299 = mad(_4372, mad(CB4_m0[33u].z, _4292, (-0.0f) - _3986), _3986);
            _4304 = mad(_4372, mad(CB4_m0[33u].y, _4291, (-0.0f) - _3985), _3985);
            _4306 = mad(_4372, mad(CB4_m0[33u].x, _4290, (-0.0f) - _3984), _3984);
        }
        uint4 _4469 = asuint(CB4_m0[131u]);
        float _4473 = float(int(_4469.x));
        float _4480 = exp2(log2(max(((-0.0f) - abs(dot(float3(TEXCOORD_2.x, TEXCOORD_2.y, TEXCOORD_2.z), float3(_539, _540, _541)))) + 1.0f, 0.0f)) * CB4_m0[155u].z) * float(int(_4469.y));
        float _4488 = exp2(max(CB4_m0[130u].x, 0.00999999977648258209228515625f) * log2(_4480));
        float _4495 = min(CB4_m0[121u].x, 65504.0f);
        float _4497 = min(CB4_m0[121u].y, 65504.0f);
        float _4498 = min(CB4_m0[121u].z, 65504.0f);
        float _4511 = mad(_4488, ((-0.0f) - _4495) + CB4_m0[120u].x, _4495);
        float _4512 = mad(_4488, ((-0.0f) - _4497) + CB4_m0[120u].y, _4497);
        float _4513 = mad(_4488, ((-0.0f) - _4498) + CB4_m0[120u].z, _4498);
        float _4524 = _4480 * asfloat(((_4480 >= CB4_m0[130u].y) ? 4294967295u : 0u) & 1065353216u);
        bool _4528 = _4473 < 0.5f;
        bool _4529 = _4473 < 1.5f;
        _4298 = _4299;
        _4300 = mad(_4299 + (_4304 + _4306), ((-0.0f) - CB4_m0[156u].x) + 1.0f, _4187);
        _4302 = 0u;
        _4303 = _4304;
        _4305 = _4306;
        _4307 = asfloat(_4528 ? asuint(mad(_4524, _4292 * _4513, _4189)) : (_4529 ? asuint(mad(_4524, mad(_4513, _4292, (-0.0f) - _4189), _4189)) : asuint(_4189 * mad(_4524, mad(_4513, _4292, -1.0f), 1.0f))));
        _4309 = asfloat(_4528 ? asuint(mad(_4524, _4291 * _4512, _4191)) : (_4529 ? asuint(mad(_4524, mad(_4512, _4291, (-0.0f) - _4191), _4191)) : asuint(_4191 * mad(_4524, mad(_4512, _4291, -1.0f), 1.0f))));
        _4311 = asfloat(_4528 ? asuint(mad(_4524, _4290 * _4511, _4193)) : (_4529 ? asuint(mad(_4524, mad(_4511, _4290, (-0.0f) - _4193), _4193)) : asuint(_4193 * mad(_4524, mad(_4511, _4290, -1.0f), 1.0f))));
    }
    else
    {
        _4298 = _3986;
        _4300 = _4187;
        _4302 = _430;
        _4303 = _3985;
        _4305 = _3984;
        _4307 = _4189;
        _4309 = _4191;
        _4311 = _4193;
    }
    float _4413;
    float _4415;
    float _4417;
    float _4419;
    float _4421;
    float _4423;
    float _4425;
    if (0.5f < CB4_m0[156u].x)
    {
        float _4390 = CB4_m0[156u].z * 0.01745329238474369049072265625f;
        float _4392 = sin(_4390);
        float _4393 = cos(_4390);
        bool _4398 = CB4_m0[156u].y < 0.5f;
        float _4640;
        float _4641;
        float _4642;
        if (1.5f < CB4_m0[156u].y)
        {
            bool _4567 = CB4_m0[157u].w < 0.5f;
            uint4 _4614 = asuint(CB4_m0[25u]);
            float _4627 = ((-0.0f) - TEXCOORD_2.w) + asfloat(_4567 ? asuint(mad(CB1_m0[2u].x, CB4_m0[25u].z, mad(CB1_m0[0u].x, CB4_m0[25u].x, CB1_m0[1u].x * CB4_m0[25u].y)) + CB1_m0[3u].x) : _4614.x);
            float _4628 = ((-0.0f) - TEXCOORD_3.w) + asfloat(_4567 ? asuint(mad(CB1_m0[2u].y, CB4_m0[25u].z, mad(CB1_m0[0u].y, CB4_m0[25u].x, CB1_m0[1u].y * CB4_m0[25u].y)) + CB1_m0[3u].y) : _4614.y);
            float _4629 = ((-0.0f) - TEXCOORD_4.w) + asfloat(_4567 ? asuint(mad(CB1_m0[2u].z, CB4_m0[25u].z, mad(CB1_m0[0u].z, CB4_m0[25u].x, CB1_m0[1u].z * CB4_m0[25u].y)) + CB1_m0[3u].z) : _4614.z);
            float _4634 = rsqrt(max(dot(float3(_4627, _4628, _4629), float3(_4627, _4628, _4629)), 1.1754943508222875079687365372222e-38f));
            _4640 = _4634 * _4628;
            _4641 = _4634 * _4627;
            _4642 = _4634 * _4629;
        }
        else
        {
            _4640 = asfloat(_4398 ? asuint(_640) : asuint(_540));
            _4641 = asfloat(_4398 ? asuint(_639) : asuint(_539));
            _4642 = asfloat(_4398 ? asuint(_641) : asuint(_541));
        }
        float _4662 = clamp((mad(CB4_m0[156u].w, 2.0f, dot(float3(_362, _363, _364), float3(dot(float2(_4393, _4392), float2(_4641, _4642)), _4640, dot(float2((-0.0f) - _4392, _4393), float2(_4641, _4642))))) + (-1.0f)) / max(CB4_m0[157u].x, 9.9999997473787516355514526367188e-06f), 0.0f, 1.0f);
        float _4689 = mad(_4662, CB4_m0[30u].x + ((-0.0f) - CB4_m0[31u].x), CB4_m0[31u].x);
        float _4690 = mad(_4662, CB4_m0[30u].y + ((-0.0f) - CB4_m0[31u].y), CB4_m0[31u].y);
        float _4691 = mad(_4662, CB4_m0[30u].z + ((-0.0f) - CB4_m0[31u].z), CB4_m0[31u].z);
        float _4692 = mad(_4662, CB4_m0[30u].w + ((-0.0f) - CB4_m0[31u].w), CB4_m0[31u].w);
        bool _4696 = 0.5f < CB4_m0[157u].z;
        float _4701 = asfloat(_4696 ? asuint(_2083) : 1065353216u);
        float _4703 = asfloat(_4696 ? asuint(_2082) : 1065353216u);
        float _4705 = asfloat(_4696 ? asuint(_2081) : 1065353216u);
        float _4706 = _4701 * _4689;
        float _4707 = _4703 * _4690;
        bool _4712 = CB4_m0[157u].y < 0.5f;
        _4413 = asfloat(0u);
        _4415 = mad(mad(_4691, _4705, _4707 + _4706), _4692, _4300);
        _4417 = asfloat(0u);
        _4419 = asfloat(0u);
        _4421 = asfloat(_4712 ? asuint(mad(_4692, mad(_4691, _4705, (-0.0f) - _4307), _4307)) : asuint(mad(_4692, _4705 * _4691, _4307)));
        _4423 = asfloat(_4712 ? asuint(mad(_4692, mad(_4690, _4703, (-0.0f) - _4309), _4309)) : asuint(mad(_4692, _4707, _4309)));
        _4425 = asfloat(_4712 ? asuint(mad(_4692, mad(_4689, _4701, (-0.0f) - _4311), _4311)) : asuint(mad(_4692, _4706, _4311)));
    }
    else
    {
        _4413 = _4298;
        _4415 = _4300;
        _4417 = _4303;
        _4419 = _4305;
        _4421 = _4307;
        _4423 = _4309;
        _4425 = _4311;
    }
    SV_Target_1.x = min(sqrt(max(_4419, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.y = min(sqrt(max(_4417, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.z = min(sqrt(max(_4413, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.w = _4415 * 0.33329999446868896484375f;
    SV_Target_2.w = (_4302 != 0u) ? 0.3400000035762786865234375f : 0.0f;
    SV_Target_3.x = mad(_362, 0.5f, 0.5f);
    SV_Target_3.y = mad(_363, 0.5f, 0.5f);
    SV_Target_3.z = mad(_364, 0.5f, 0.5f);
    SV_Target.x = _4425;
    SV_Target.y = _4423;
    SV_Target.z = _4421;
    SV_Target.w = 1.0f;
    SV_Target_3.w = 1.0f;
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
