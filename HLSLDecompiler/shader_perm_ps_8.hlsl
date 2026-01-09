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
Texture2D<float4> T7 : register(t7, space0);
Texture2D<float4> T8 : register(t8, space0);
Texture2D<float4> T9 : register(t9, space0);
Texture2D<float4> T10 : register(t10, space0);
Texture2D<float4> T11 : register(t11, space0);
Texture2D<float4> T12 : register(t12, space0);
Texture2D<float4> T13 : register(t13, space0);
Texture2D<float4> T14 : register(t14, space0);
SamplerState S0 : register(s0, space0);
SamplerComparisonState S1 : register(s1, space0);
SamplerState S2 : register(s2, space0);
SamplerState S3 : register(s3, space0);
SamplerState S4 : register(s4, space0);
SamplerState S5 : register(s5, space0);
SamplerState S6 : register(s6, space0);

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

void discard_cond(bool _4423)
{
    if (_4423)
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
    bool _120 = 0.5f < CB1_m0[28u].y;
    float _144 = (TEXCOORD_5.x / TEXCOORD_5.w) + ((-0.0f) - (TXCOORDD_6.x / TXCOORDD_6.w));
    float _145 = (TEXCOORD_5.y / TEXCOORD_5.w) + ((-0.0f) - (TXCOORDD_6.y / TXCOORDD_6.w));
    float _154 = (-0.0f) - _145;
    SV_Target_2.x = _120 ? mad(sqrt(abs(_144 * 0.5f)) * float(int((0u - ((0.0f < _144) ? 4294967295u : 0u)) + ((_144 < 0.0f) ? 4294967295u : 0u))), 0.5f, 0.4980392158031463623046875f) : 0.4979999959468841552734375f;
    SV_Target_2.y = _120 ? mad(sqrt(abs(_145 * (-0.5f))) * float(int((0u - ((0.0f < _154) ? 4294967295u : 0u)) + ((_154 < 0.0f) ? 4294967295u : 0u))), 0.5f, 0.4980392158031463623046875f) : 0.4979999959468841552734375f;
    uint _205 = 3u & 31u;
    uint _211 = 2u & 31u;
    uint _217 = 1u & 31u;
    uint _224 = 0u & 31u;
    SV_Target_2.z = float(spvBitfieldInsert((spvBitfieldInsert(0u, (0.0f != CB4_m0[152u].x) ? 4294967295u : 0u, _205, min((1u & 31u), (32u - _205))) + spvBitfieldInsert(0u, (CB3_m0[40u].x == 1.0f) ? 4294967295u : 0u, _211, min((1u & 31u), (32u - _211)))) + spvBitfieldInsert(0u, (0.0f != CB4_m0[151u].z) ? 4294967295u : 0u, _217, min((1u & 31u), (32u - _217))), (0.0f != CB4_m0[151u].w) ? 4294967295u : 0u, _224, min((1u & 31u), (32u - _224)))) * 0.0039215688593685626983642578125f;
    uint _245 = (((gl_FrontFacing ? 4294967295u : 0u) == 0u) ? 4294967295u : 0u) & ((0.5f < CB4_m0[147u].x) ? 4294967295u : 0u);
    bool _252 = ((((1.0f < TEXCOORD.z) ? 4294967295u : 0u) & ((0.5f < CB4_m0[147u].y) ? 4294967295u : 0u)) | _245) != 0u;
    float _261 = _252 ? TEXCOORD.z : TEXCOORD.x;
    float _262 = _252 ? TEXCOORD.w : TEXCOORD.y;
    float4 _269 = T3.SampleBias(S0, float2(_261, _262), CB0_m0[191u].x);
    float _272 = _269.x;
    float _273 = _269.y;
    float _274 = _269.z;
    bool _284 = _245 != 0u;
    float _293 = _284 ? TEXCOORD.z : TEXCOORD.x;
    float _294 = _284 ? TEXCOORD.w : TEXCOORD.y;
    float4 _299 = T4.SampleBias(S0, float2(_293, _294), CB0_m0[191u].x);
    float _317 = mad(clamp(_299.x, 0.0f, 1.0f), 2.0f, -1.0039999485015869140625f) * CB4_m0[137u].y;
    float _318 = mad(clamp(_299.y, 0.0f, 1.0f), 2.0f, -1.0039999485015869140625f) * CB4_m0[137u].y;
    float _326 = asfloat(((gl_FrontFacing ? 4294967295u : 0u) != 0u) ? 1065353216u : 3212836864u) * sqrt(((-0.0f) - min(dot(float2(_317, _318), float2(_317, _318)), 1.0f)) + 1.0f);
    float _351 = mad(_326, TEXCOORD_2.x, mad(_317, TEXCOORD_3.x, _318 * TEXCOORD_4.x));
    float _352 = mad(_326, TEXCOORD_2.y, mad(_317, TEXCOORD_3.y, _318 * TEXCOORD_4.y));
    float _353 = mad(_326, TEXCOORD_2.z, mad(_317, TEXCOORD_3.z, _318 * TEXCOORD_4.z));
    float _357 = rsqrt(dot(float3(_351, _352, _353), float3(_351, _352, _353)));
    float _358 = _357 * _351;
    float _359 = _357 * _352;
    float _360 = _357 * _353;
    float4 _365 = T5.SampleBias(S0, float2(_293, _294), CB0_m0[191u].x);
    float _370 = clamp(_365.z, 0.0f, 1.0f);
    float _371 = clamp(_365.x, 0.0f, 1.0f);
    float _372 = clamp(_365.y, 0.0f, 1.0f);
    float _376 = _372 * CB4_m0[137u].z;
    float4 _381 = T6.SampleBias(S0, float2(_293, _294), CB0_m0[191u].x);
    float _385 = clamp(_381.z, 0.0f, 1.0f);
    float _386 = clamp(_381.y, 0.0f, 1.0f);
    float _413;
    if (0.5f < CB4_m0[135u].z)
    {
        uint _399 = (0.5f < CB4_m0[144u].x) ? 4294967295u : 0u;
        _413 = asfloat((((((0.5f < CB4_m0[144u].y) ? 4294967295u : 0u) & _399) != 0u) ? asuint(max((_385 + (-0.20000000298023223876953125f)) * 1.25f, 0.0f)) : asuint(_385)) & _399);
    }
    else
    {
        _413 = _385;
    }
    bool _428 = uint(int(max(((-0.0f) - floor(_371 * 5.0f)) + 4.0f, 0.0f))) == asuint(CB4_m0[132u]).y;
    uint _429 = _428 ? 4294967295u : 0u;
    uint _430 = _429 & 1u;
    bool _435 = 0.5f < CB4_m0[136u].w;
    float4 _449 = T2.SampleBias(S0, float2(TEXCOORD.x * CB4_m0[137u].x, TEXCOORD.y * CB4_m0[137u].x), CB0_m0[191u].x);
    uint _474 = _435 ? asuint(max(mad(_272, CB4_m0[57u].x, _449.x) + (-0.5f), 0.0f)) : asuint(_272 * CB4_m0[57u].x);
    float _475 = asfloat(_474);
    uint _476 = _435 ? asuint(max(mad(_273, CB4_m0[57u].y, _449.y) + (-0.5f), 0.0f)) : asuint(_273 * CB4_m0[57u].y);
    float _477 = asfloat(_476);
    uint _478 = _435 ? asuint(max(mad(_274, CB4_m0[57u].z, _449.z) + (-0.5f), 0.0f)) : asuint(_274 * CB4_m0[57u].z);
    float _479 = asfloat(_478);
    bool _480 = _371 < 0.20000000298023223876953125f;
    bool _482 = _371 < 0.4000000059604644775390625f;
    bool _484 = _371 < 0.60000002384185791015625f;
    bool _486 = _371 < 0.800000011920928955078125f;
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
    float _1273;
    float _1274;
    if (0.5f < CB0_m0[22u].x)
    {
        float _716 = mad(_358, CB4_m0[135u].x, TEXCOORD_2.w) + ((-0.0f) - CB3_m0[39u].x);
        float _717 = mad(_359, CB4_m0[135u].x, TEXCOORD_3.w) + ((-0.0f) - CB3_m0[39u].y);
        float _718 = mad(_360, CB4_m0[135u].x, TEXCOORD_4.w) + ((-0.0f) - CB3_m0[39u].z);
        float _754 = mad(CB3_m0[35u].z, _718, mad(CB3_m0[33u].z, _716, _717 * CB3_m0[34u].z)) + CB3_m0[36u].z;
        float _764 = mad(mad(CB3_m0[35u].x, _718, mad(CB3_m0[33u].x, _716, _717 * CB3_m0[34u].x)) + CB3_m0[36u].x, CB3_m0[38u].x, CB3_m0[38u].z);
        float _765 = mad(mad(CB3_m0[35u].y, _718, mad(CB3_m0[33u].y, _716, _717 * CB3_m0[34u].y)) + CB3_m0[36u].y, CB3_m0[38u].y, CB3_m0[38u].w);
        float _848 = ((((((T14.SampleCmpLevelZero(S1, float2(_764 + ((-0.0f) - CB0_m0[200u].x), _765 + ((-0.0f) - CB0_m0[200u].y)), _754).xxxx.x + T14.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, -1.0f, _764), mad(CB0_m0[200u].y, 1.0f, _765)), _754).xxxx.x) + T14.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 1.0f, _764), mad(CB0_m0[200u].y, -1.0f, _765)), _754).xxxx.x) + T14.SampleCmpLevelZero(S1, float2(_764 + CB0_m0[200u].x, _765 + CB0_m0[200u].y), _754).xxxx.x) + T14.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, -1.4142129421234130859375f, _764), mad(CB0_m0[200u].y, 0.0f, _765)), _754).xxxx.x) + T14.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 1.4142129421234130859375f, _764), mad(CB0_m0[200u].y, 0.0f, _765)), _754).xxxx.x) + T14.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 0.0f, _764), mad(CB0_m0[200u].y, -1.4142129421234130859375f, _765)), _754).xxxx.x) + T14.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 0.0f, _764), mad(CB0_m0[200u].y, 1.4142129421234130859375f, _765)), _754).xxxx.x;
        float _871 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[20u].x);
        float _872 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[20u].y);
        float _873 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[20u].z);
        float _883 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[21u].x);
        float _884 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[21u].y);
        float _885 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[21u].z);
        float _894 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[22u].x);
        float _895 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[22u].y);
        float _896 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[22u].z);
        float _906 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[23u].x);
        float _907 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[23u].y);
        float _908 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[23u].z);
        bool _928 = dot(float3(_871, _872, _873), float3(_871, _872, _873)) < CB2_m0[24u].x;
        bool _929 = dot(float3(_883, _884, _885), float3(_883, _884, _885)) < CB2_m0[24u].y;
        bool _930 = dot(float3(_894, _895, _896), float3(_894, _895, _896)) < CB2_m0[24u].z;
        float _962 = ((-0.0f) - dot(float4(asfloat((_928 ? 4294967295u : 0u) & 1065353216u), max(asfloat(_928 ? 3212836864u : 2147483648u) + asfloat((_929 ? 4294967295u : 0u) & 1065353216u), 0.0f), max(asfloat(_929 ? 3212836864u : 2147483648u) + asfloat((_930 ? 4294967295u : 0u) & 1065353216u), 0.0f), max(asfloat(_930 ? 3212836864u : 2147483648u) + asfloat(((dot(float3(_906, _907, _908), float3(_906, _907, _908)) < CB2_m0[24u].w) ? 4294967295u : 0u) & 1065353216u), 0.0f)), float4(4.0f, 3.0f, 2.0f, 1.0f))) + 4.0f;
        uint _964 = uint(_962) << 2u;
        uint _967 = _964 + 1u;
        uint _986 = _964 + 2u;
        uint _997 = _964 + 3u;
        float _1003 = mad(CB2_m0[_986].x, TEXCOORD_4.w, mad(CB2_m0[_964].x, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_967].x)) + CB2_m0[_997].x;
        float _1004 = mad(CB2_m0[_986].y, TEXCOORD_4.w, mad(CB2_m0[_964].y, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_967].y)) + CB2_m0[_997].y;
        float _1005 = mad(CB2_m0[_986].z, TEXCOORD_4.w, mad(CB2_m0[_964].z, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_967].z)) + CB2_m0[_997].z;
        float _1019 = frac(sin(dot(float2(frac(_1003 * 1024.0f), frac(_1004 * 1024.0f)), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
        float _1020 = sin(_1019);
        float _1021 = cos(_1019);
        float _1032 = (CB2_m0[26u].x * 1.2999999523162841796875f) * _1020;
        float _1033 = (CB2_m0[26u].x * 1.2999999523162841796875f) * _1021;
        float _1034 = (CB2_m0[26u].y * 1.2999999523162841796875f) * _1020;
        float _1035 = (CB2_m0[26u].y * 1.2999999523162841796875f) * _1021;
        float _1131 = ((((T0.SampleCmpLevelZero(S1, float3(_1003 + ((_1033 * (-0.97829997539520263671875f)) + (_1032 * (-0.172399997711181640625f))), _1004 + ((_1035 * 0.172399997711181640625f) + (_1034 * (-0.97829997539520263671875f))), _962), _1005).xxxx.x + T0.SampleCmpLevelZero(S1, float3(_1003 + ((_1033 * 0.484600007534027099609375f) + (_1032 * 0.874700009822845458984375f)), _1004 + ((_1035 * (-0.874700009822845458984375f)) + (_1034 * 0.484600007534027099609375f)), _962), _1005).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1003 + ((_1033 * (-0.037399999797344207763671875f)) + (_1032 * (-0.96829998493194580078125f))), _1004 + ((_1035 * 0.96829998493194580078125f) + (_1034 * (-0.037399999797344207763671875f))), _962), _1005).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1003 + ((_1033 * 0.419600009918212890625f) + (_1032 * 0.278299987316131591796875f)), _1004 + ((_1035 * (-0.278299987316131591796875f)) + (_1034 * 0.419600009918212890625f)), _962), _1005).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1003 + ((_1033 * 0.83910000324249267578125f) + (_1032 * (-0.1507000029087066650390625f))), _1004 + ((_1035 * (-0.1507000029087066650390625f)) + (_1034 * 0.83910000324249267578125f)), _962), _1005).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1003 + ((_1033 * 0.4792999923229217529296875f) + (_1032 * (-0.6417000293731689453125f))), _1004 + ((_1035 * (-0.6417000293731689453125f)) + (_1034 * 0.4792999923229217529296875f)), _962), _1005).xxxx.x;
        float _1212 = (((((_1131 + T0.SampleCmpLevelZero(S1, float3(_1003 + ((_1033 * (-0.81610000133514404296875f)) + (_1032 * 0.577899992465972900390625f)), _1004 + ((_1035 * 0.577899992465972900390625f) + (_1034 * (-0.81610000133514404296875f))), _962), _1005).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1003 + ((_1033 * (-0.4587999880313873291015625f)) + (_1032 * (-0.5408999919891357421875f))), _1004 + ((_1035 * 0.5408999919891357421875f) + (_1034 * (-0.4587999880313873291015625f))), _962), _1005).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1003 + ((_1033 * (-0.19189999997615814208984375f)) + (_1032 * 0.704400002956390380859375f)), _1004 + ((_1035 * 0.704400002956390380859375f) + (_1034 * (-0.19189999997615814208984375f))), _962), _1005).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1003 + ((_1033 * (-0.446399986743927001953125f)) + (_1032 * 0.105300001800060272216796875f)), _1004 + ((_1035 * 0.105300001800060272216796875f) + (_1034 * (-0.446399986743927001953125f))), _962), _1005).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1003 + ((_1033 * 0.06610000133514404296875f) + (_1032 * (-0.20659999549388885498046875f))), _1004 + ((_1035 * (-0.20659999549388885498046875f)) + (_1034 * 0.06610000133514404296875f)), _962), _1005).xxxx.x) * CB2_m0[25u].x;
        float _1237 = clamp(mad(_626, 2.0f, -1.0f), 0.0f, 1.0f);
        float _1241 = _1237 * CB0_m0[189u].w;
        float _1251 = (asfloat(((((0.0f >= _1005) ? 4294967295u : 0u) | ((_1005 >= 1.0f) ? 4294967295u : 0u)) != 0u) ? 1065353216u : asuint(mad(_1212, 0.090899996459484100341796875f, ((-0.0f) - CB2_m0[25u].x) + 1.0f))) * mad(CB3_m0[40u].y, ((-0.0f) - _627) + 1.0f, _627)) * asfloat((0.5f < CB3_m0[37u].x) ? asuint(min(mad(_1237, (asfloat(_480 ? asuint(CB4_m0[163u]).w : (_482 ? asuint(CB4_m0[163u]).z : (_484 ? asuint(CB4_m0[163u]).y : (_486 ? asuint(CB4_m0[163u]).x : asuint(CB4_m0[162u]).w)))) * mad(_848 + T14.SampleCmpLevelZero(S1, float2(_764, _765), _754).xxxx.x, 0.11110000312328338623046875f, -1.0f)) * CB3_m0[37u].x, 1.0f), 1.0f)) : 1065353216u);
        _1273 = mad(_1251, CB4_m0[133u].z, ((-0.0f) - CB4_m0[133u].z) + 1.0f);
        _1274 = mad(_1251, _1241 * CB4_m0[133u].z, mad((-0.0f) - _1241, CB4_m0[133u].z, 1.0f));
    }
    else
    {
        _1273 = asfloat(1065353216u);
        _1274 = asfloat(1065353216u);
    }
    float _1280 = clamp(CB3_m0[1u].w * 2.5f, 0.0f, 1.0f);
    float _1283 = mad(((-0.0f) - _1280) + 1.0f, _1274, _1280);
    bool _1287 = CB3_m0[3u].w != 0.0f;
    float _1301 = clamp(dot(float3(CB3_m0[3u].xyz), float3(TEXCOORD_2.w, TEXCOORD_3.w, TEXCOORD_4.w)) + ((-0.0f) - CB3_m0[3u].w), 0.0f, 1.0f);
    float _1352 = asfloat(_1287 ? asuint(mad(_1301, ((-0.0f) - _664) + mad(CB0_m0[15u].w, mad((-0.0f) - _664, CB0_m0[15u].x, _664 + CB0_m0[15u].x), _664 * CB0_m0[15u].x), _664)) : asuint(_664));
    float _1354 = asfloat(_1287 ? asuint(mad(_1301, ((-0.0f) - _665) + mad(CB0_m0[15u].w, mad((-0.0f) - _665, CB0_m0[15u].y, _665 + CB0_m0[15u].y), _665 * CB0_m0[15u].y), _665)) : asuint(_665));
    float _1356 = asfloat(_1287 ? asuint(mad(_1301, ((-0.0f) - _666) + mad(CB0_m0[15u].w, mad((-0.0f) - _666, CB0_m0[15u].z, _666 + CB0_m0[15u].z), _666 * CB0_m0[15u].z), _666)) : asuint(_666));
    float _1357 = max(asfloat(_480 ? asuint(CB4_m0[134u]).w : (_482 ? asuint(CB4_m0[134u]).z : (_484 ? asuint(CB4_m0[134u]).y : (_486 ? asuint(CB4_m0[134u]).x : asuint(CB4_m0[133u]).w)))), 9.9999997473787516355514526367188e-06f);
    float _1359 = 1.0f / _1357;
    float _1360 = dot(float3(_358, _359, _360), float3(_639, _640, _641));
    float _1377 = mad(mad(clamp(_299.z, 0.0f, 1.0f), 2.0f, -1.0f), 2.0f, mad(TEXCOORD_7.y, ((-0.0f) - _1360) + mad(_1360 + 1.0f, clamp(mad((-0.0f) - min(_640 * 3.0f, 1.0f), 0.5f, _359) + 1.5f, 0.0f, 1.0f), -1.0f), _1360));
    float _1390 = mad((-0.0f) - _1357, 3.0f, 2.0f);
    float _1391 = ((_1377 * 3.0f) + 3.0f) / _1390;
    float _1392 = (mad(_1377, 3.0f, (-0.0f) - (_1357 * 1.5f)) + 1.0f) / _1390;
    float _1393 = (mad(_1377, 3.0f, (-0.0f) - (_1357 * 4.5f)) + (-1.0f)) / _1390;
    float _1405 = mad(_1359, _1377 + 0.33329999446868896484375f, 0.5f);
    float _1406 = mad(_1359, _1377 + (-0.33329999446868896484375f), 0.5f);
    float _1407 = mad(_1359, _1377 + (-0.33329999446868896484375f), -0.5f);
    float _1418 = clamp(((-0.0f) - _1391) + 1.0f, 0.0f, 1.0f);
    float _1419 = clamp(min(_1391, ((-0.0f) - _1405) + 1.0f), 0.0f, 1.0f);
    float _1420 = clamp(min(((-0.0f) - _1392) + 1.0f, _1405), 0.0f, 1.0f);
    float _1424 = clamp(min(((-0.0f) - _1393) + 1.0f, _1407), 0.0f, 1.0f);
    float _1425 = clamp(_1393, 0.0f, 1.0f);
    float _1431 = mad(CB3_m0[40u].y, ((-0.0f) - _1283) + _1273, _1283);
    float _1438 = clamp(min(mad(_1431, -2.0f, 2.0f), mad(_1431, 2.0f, 0.0f)), 0.0f, 1.0f);
    float _1439 = clamp(mad(_1431, 2.0f, -1.0f), 0.0f, 1.0f);
    float _1440 = clamp(mad(_1431, -2.0f, 1.0f), 0.0f, 1.0f);
    float _1512;
    float _1514;
    float _1516;
    if (0.5f < CB3_m0[40u].y)
    {
        float _1479;
        if (_548)
        {
            _1479 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _1479 = asfloat(0u);
        }
        float _1483 = _1479 * CB0_m0[189u].w;
        float _1484 = _1483 * _1438;
        float _1490 = (mad((-0.0f) - _1438, _1483, _1438) + mad((-0.0f) - _1440, _1483, _1440)) + _1439;
        float _1831;
        if (_548)
        {
            _1831 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 7u).x);
        }
        else
        {
            _1831 = asfloat(0u);
        }
        _1512 = _1831 * _1484;
        _1514 = _1831 * _1490;
        _1516 = mad(_1440, _1483, mad((-0.0f) - _1490, _1831, _1490) + mad((-0.0f) - _1484, _1831, _1484));
    }
    else
    {
        float _1491;
        if (_548)
        {
            _1491 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _1491 = asfloat(0u);
        }
        _1512 = _1491 * _1438;
        _1514 = _1439;
        _1516 = _1491 * _1440;
    }
    float _1524 = mad(_1516, ((-0.0f) - _1420) + (((-0.0f) - _1419) + (((-0.0f) - _1418) + 1.0f)), _1420);
    float _1525 = _1514 + _1512;
    float _1526 = _1525 * clamp(min(_1392, ((-0.0f) - _1406) + 1.0f), 0.0f, 1.0f);
    float _1529 = mad(_1425 + _1424, _1512, _1525 * clamp(min(_1406, ((-0.0f) - _1407) + 1.0f), 0.0f, 1.0f));
    float _1530 = _1424 * _1514;
    float _1533 = _1418 * TEXCOORD_7.x;
    float _1538 = mad((-0.0f) - _1418, TEXCOORD_7.x, _1418) + _1419;
    uint4 _1542 = asuint(CB4_m0[60u]);
    uint4 _1549 = asuint(CB4_m0[59u]);
    uint4 _1559 = asuint(CB4_m0[61u]);
    uint4 _1569 = asuint(CB4_m0[62u]);
    uint4 _1579 = asuint(CB4_m0[63u]);
    uint4 _1592 = asuint(CB4_m0[65u]);
    uint4 _1599 = asuint(CB4_m0[64u]);
    uint4 _1609 = asuint(CB4_m0[66u]);
    uint4 _1619 = asuint(CB4_m0[67u]);
    uint4 _1629 = asuint(CB4_m0[68u]);
    uint4 _1642 = asuint(CB0_m0[10u]);
    uint4 _1648 = asuint(CB0_m0[3u]);
    uint4 _1661 = asuint(CB0_m0[11u]);
    uint4 _1667 = asuint(CB0_m0[4u]);
    uint4 _1680 = asuint(CB0_m0[12u]);
    uint4 _1687 = asuint(CB0_m0[5u]);
    uint4 _1700 = asuint(CB0_m0[9u]);
    uint4 _1707 = asuint(CB0_m0[6u]);
    uint4 _1720 = asuint(CB0_m0[13u]);
    uint4 _1726 = asuint(CB0_m0[7u]);
    uint4 _1739 = asuint(CB0_m0[14u]);
    uint4 _1745 = asuint(CB0_m0[8u]);
    float _1757 = min(_542 * 0.4372499883174896240234375f, 1.0f);
    float _1773 = mad(CB4_m0[133u].y, mad(_1757, CB3_m0[1u].w, (-0.0f) - _1757) + 1.0f, 0.0f);
    float _1774 = mad(CB4_m0[133u].y, mad((-0.0f) - _1757, CB3_m0[1u].w, _1757) + (-1.0f), 1.0f);
    float _1775 = asfloat(_480 ? _1579.x : (_482 ? _1569.x : (_484 ? _1559.x : (_486 ? _1542.x : _1549.x)))) + 6.103515625e-05f;
    float _1777 = asfloat(_480 ? _1579.y : (_482 ? _1569.y : (_484 ? _1559.y : (_486 ? _1542.y : _1549.y)))) + 6.103515625e-05f;
    float _1778 = asfloat(_480 ? _1579.z : (_482 ? _1569.z : (_484 ? _1559.z : (_486 ? _1542.z : _1549.z)))) + 6.103515625e-05f;
    float _1781 = (_1778 + (_1777 + _1775)) * 0.3333300054073333740234375f;
    float _1792 = mad(clamp(_1775 / _1781, 0.0f, 1.0f), _1773, _1774 * _1775);
    float _1793 = mad(clamp(_1777 / _1781, 0.0f, 1.0f), _1773, _1774 * _1777);
    float _1794 = mad(clamp(_1778 / _1781, 0.0f, 1.0f), _1773, _1774 * _1778);
    float _1795 = asfloat(_480 ? _1629.x : (_482 ? _1619.x : (_484 ? _1609.x : (_486 ? _1592.x : _1599.x)))) + 6.103515625e-05f;
    float _1796 = asfloat(_480 ? _1629.y : (_482 ? _1619.y : (_484 ? _1609.y : (_486 ? _1592.y : _1599.y)))) + 6.103515625e-05f;
    float _1797 = asfloat(_480 ? _1629.z : (_482 ? _1619.z : (_484 ? _1609.z : (_486 ? _1592.z : _1599.z)))) + 6.103515625e-05f;
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
    float _1858 = _1857 * _1352;
    float _1859 = _1857 * _1354;
    float _1860 = _1857 * _1356;
    float _1861 = min(1.0f / max(_1356 + 1.1754943508222875079687365372222e-38f, max(_1354 + 1.1754943508222875079687365372222e-38f, _1352 + 1.1754943508222875079687365372222e-38f)), 1.0f);
    float _1889 = mad(_1858, mad(_1425, _1514, mad(asfloat(_428 ? _1720.x : _1726.x), _1529, _1530 * asfloat(_428 ? _1700.x : _1707.x))), (_1861 * _1858) * mad(asfloat(_428 ? _1642.x : _1648.x) * _1792, _1526, mad(asfloat(_428 ? _1661.x : _1667.x) * _1792, _1524, mad(asfloat(_428 ? _1739.x : _1745.x) * _1810, _1533, _1538 * (asfloat(_428 ? _1680.x : _1687.x) * _1810)))));
    float _1890 = mad(_1859, mad(_1425, _1514, mad(asfloat(_428 ? _1720.y : _1726.y), _1529, _1530 * asfloat(_428 ? _1700.y : _1707.y))), (_1861 * _1859) * mad(asfloat(_428 ? _1642.y : _1648.y) * _1793, _1526, mad(asfloat(_428 ? _1661.y : _1667.y) * _1793, _1524, mad(asfloat(_428 ? _1739.y : _1745.y) * _1811, _1533, _1538 * (asfloat(_428 ? _1680.y : _1687.y) * _1811)))));
    float _1891 = mad(_1860, mad(_1425, _1514, mad(asfloat(_428 ? _1720.z : _1726.z), _1529, _1530 * asfloat(_428 ? _1700.z : _1707.z))), (_1861 * _1860) * mad(asfloat(_428 ? _1642.z : _1648.z) * _1794, _1526, mad(asfloat(_428 ? _1661.z : _1667.z) * _1794, _1524, mad(asfloat(_428 ? _1739.z : _1745.z) * _1812, _1533, _1538 * (asfloat(_428 ? _1680.z : _1687.z) * _1812)))));
    bool _1894 = 0.5f < TEXCOORD_7.z;
    float _2008;
    float _2009;
    float _2010;
    if (_429 == 0u)
    {
        float _1905 = dot(float3(_475, _477, _479), float3(0.2899999916553497314453125f, 0.60000002384185791015625f, 0.10999999940395355224609375f));
        bool _1912 = TEXCOORD_7.z < 0.5f;
        float _1913 = mad(_1905, 0.2874999940395355224609375f, 1.4375f);
        float _1916 = mad(_1905, 0.4000000059604644775390625f, 1.0f);
        float _1917 = dot(float3(_639, _640, _641), float3(_1894 ? _358 : TEXCOORD_2.x, _1894 ? _359 : TEXCOORD_2.y, _1894 ? _360 : TEXCOORD_2.z));
        float _1924 = clamp(mad((-0.0f) - (((-0.0f) - _1360) + _1917), 3.0f, 1.0f), 0.0f, 1.0f);
        float _1930 = clamp(_1360, 0.0f, 1.0f);
        float _1934 = clamp(_1917, 0.0f, 1.0f);
        float _1936 = max(_475, max(_479, _477));
        bool _1937 = 1.0f < _1936;
        float _1952 = mad(mad(mad(mad(_1360, 0.5f, 0.5f), min(sqrt(_1924) * (_1924 + _1924), 1.0f), (-0.0f) - _1930), 0.5f, _1930), ((-0.0f) - _1913) + 1.0f, _1913);
        float _1959 = exp2(_1952 * log2(asfloat(_1937 ? asuint(_475 / _1936) : _474)));
        float _1960 = exp2(_1952 * log2(asfloat(_1937 ? asuint(_477 / _1936) : _476)));
        float _1961 = exp2(_1952 * log2(asfloat(_1937 ? asuint(_479 / _1936) : _478)));
        float _1968 = mad(((-0.0f) - _475) + _1959, 0.5f, _475);
        float _1969 = mad(((-0.0f) - _477) + _1960, 0.5f, _477);
        float _1970 = mad(((-0.0f) - _479) + _1961, 0.5f, _479);
        float _1981 = mad((-0.0f) - _1905, 0.0500000007450580596923828125f, 1.0499999523162841796875f);
        _2008 = asfloat(_1912 ? asuint(mad(_1934, _1961 + ((-0.0f) - _1970), _1970)) : asuint(_1981 * exp2(log2(_479) * _1916)));
        _2009 = asfloat(_1912 ? asuint(mad(_1934, _1960 + ((-0.0f) - _1969), _1969)) : asuint(_1981 * exp2(log2(_477) * _1916)));
        _2010 = asfloat(_1912 ? asuint(mad(_1934, _1959 + ((-0.0f) - _1968), _1968)) : asuint(_1981 * exp2(log2(_475) * _1916)));
    }
    else
    {
        _2008 = _479;
        _2009 = _477;
        _2010 = _475;
    }
    float _2012 = mad((-0.0f) - _376, 0.959999978542327880859375f, 0.959999978542327880859375f);
    float _2014 = _2012 * _2010;
    float _2015 = _2012 * _2009;
    float _2016 = _2012 * _2008;
    float _2021 = mad(_376, _2010 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _2023 = mad(_376, _2009 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _2024 = mad(_376, _2008 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _2029 = mad((-0.0f) - _386, CB4_m0[137u].w, 1.0f);
    float _2030 = _2029 * _2029;
    float _2051 = dot(float3((_1889 + CB0_m0[2u].x) + TEXCOORD_8.x, (_1890 + CB0_m0[2u].y) + TEXCOORD_8.y, (_1891 + CB0_m0[2u].z) + TEXCOORD_8.z), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2065 = ((-0.0f) - CB0_m0[19u].x) + CB0_m0[19u].y;
    float _2066 = 1.0f / _2065;
    float _2089 = asfloat((_2051 < CB0_m0[19u].x) ? asuint(_2051) : asuint(mad((-0.0f) - _2065, 1.0f / mad(_2051, _2066, mad((-0.0f) - CB0_m0[19u].x, _2066, 1.0f)), CB0_m0[19u].y))) / (_2051 + 9.9999997473787516355514526367188e-05f);
    float _2090 = _1889 * _2089;
    float _2091 = _1890 * _2089;
    float _2092 = _1891 * _2089;
    uint4 _2096 = asuint(CB4_m0[75u]);
    uint4 _2103 = asuint(CB4_m0[74u]);
    uint4 _2113 = asuint(CB4_m0[76u]);
    uint4 _2123 = asuint(CB4_m0[77u]);
    uint4 _2133 = asuint(CB4_m0[78u]);
    float _2169 = asfloat(_480 ? asuint(CB4_m0[142u]).y : (_482 ? asuint(CB4_m0[142u]).x : (_484 ? asuint(CB4_m0[141u]).w : (_486 ? asuint(CB4_m0[141u]).z : asuint(CB4_m0[141u]).y))));
    float _2221;
    if (0.5f < _2169)
    {
        float _2172 = clamp(mad(_1377, 1.5f, -0.5f), 0.0f, 1.0f);
        float _2199 = mad(_631, _638, _539);
        float _2200 = mad(_632, _638, _540);
        float _2201 = mad(_633, _638, _541);
        float _2205 = rsqrt(dot(float3(_2199, _2200, _2201), float3(_2199, _2200, _2201)));
        _2221 = clamp((((-0.0f) - mad((-0.0f) - (_2172 * _2172), clamp(dot(float3(_358, _359, _360), float3(_2199 * _2205, _2200 * _2205, _2201 * _2205)), 0.0f, 1.0f), 1.0f)) + _370) / max(asfloat(_480 ? asuint(CB4_m0[143u]).z : (_482 ? asuint(CB4_m0[143u]).y : (_484 ? asuint(CB4_m0[143u]).x : (_486 ? asuint(CB4_m0[142u]).w : asuint(CB4_m0[142u]).z)))), 9.9999997473787516355514526367188e-06f), 0.0f, 1.0f);
    }
    else
    {
        _2221 = _370;
    }
    float _2225 = _2221 * CB4_m0[143u].w;
    float _2233 = mad(_631, _638, _539);
    float _2234 = mad(_632, _638, _540);
    float _2235 = mad(_633, _638, _541);
    float _2239 = rsqrt(dot(float3(_2233, _2234, _2235), float3(_2233, _2234, _2235)));
    float _2240 = _2239 * _2233;
    float _2241 = _2239 * _2234;
    float _2242 = _2239 * _2235;
    float _2268 = asfloat(_480 ? asuint(CB4_m0[141u]).x : (_482 ? asuint(CB4_m0[140u]).w : (_484 ? asuint(CB4_m0[140u]).z : (_486 ? asuint(CB4_m0[140u]).y : asuint(CB4_m0[140u]).x))));
    float _2273 = clamp(mad(_1360 * _2268, 0.75f, 0.25f), 0.0f, 1.0f);
    float _2279 = clamp(mad(_2268 * dot(float3(_358, _359, _360), float3(_2240, _2241, _2242)), 0.75f, 0.25f), 0.0f, 1.0f);
    float _2285 = clamp(mad(_2268 * dot(float3(_639, _640, _641), float3(_2240, _2241, _2242)), 0.75f, 0.25f), 0.0f, 1.0f);
    float _2287 = mad(_2279 * _2279, mad(_2030, _2030, -1.0f), 1.000010013580322265625f);
    float _2291 = max(_2285 * _2285, 0.100000001490116119384765625f);
    float _2361 = (((_2273 * clamp(mad((-0.0f) - _386, CB4_m0[137u].w, (_2030 * _2030) / (mad(_2030, 4.0f, 2.0f) * (_2291 * (_2287 * _2287)))), 0.0f, 1.0f)) / max(_2030, 9.9999997473787516355514526367188e-06f)) * (asfloat(_480 ? asuint(CB4_m0[139u]).w : (_482 ? asuint(CB4_m0[139u]).z : (_484 ? asuint(CB4_m0[139u]).y : (_486 ? asuint(CB4_m0[139u]).x : asuint(CB4_m0[138u]).w)))) * asfloat(_480 ? asuint(CB4_m0[166u]).w : (_482 ? asuint(CB4_m0[166u]).z : (_484 ? asuint(CB4_m0[166u]).y : (_486 ? asuint(CB4_m0[166u]).x : asuint(CB4_m0[165u]).w)))))) * 10.0f;
    float _2374 = asfloat((_2169 < 0.5f) ? asuint(clamp(_2361, 0.0f, 1.0f) * 100.0f) : asuint((_2273 * min(0.16666333377361297607421875f / _2291, 1.0f)) * 100.0f));
    float _2375 = (_2021 * (asfloat(_480 ? _2133.x : (_482 ? _2123.x : (_484 ? _2113.x : (_486 ? _2096.x : _2103.x)))) * _2225)) * _2374;
    float _2376 = (_2023 * (asfloat(_480 ? _2133.y : (_482 ? _2123.y : (_484 ? _2113.y : (_486 ? _2096.y : _2103.y)))) * _2225)) * _2374;
    float _2377 = (_2024 * (asfloat(_480 ? _2133.z : (_482 ? _2123.z : (_484 ? _2113.z : (_486 ? _2096.z : _2103.z)))) * _2225)) * _2374;
    uint _2394 = (CB4_m0[144u].x >= 0.5f) ? 4294967295u : 0u;
    uint4 _2398 = asuint(CB4_m0[80u]);
    uint4 _2405 = asuint(CB4_m0[79u]);
    uint4 _2415 = asuint(CB4_m0[81u]);
    uint4 _2425 = asuint(CB4_m0[82u]);
    uint4 _2435 = asuint(CB4_m0[83u]);
    float _2455 = asfloat(_2394 & asuint(_2010 * (_413 * asfloat(_480 ? _2435.x : (_482 ? _2425.x : (_484 ? _2415.x : (_486 ? _2398.x : _2405.x)))))));
    float _2457 = asfloat(_2394 & asuint(_2009 * (_413 * asfloat(_480 ? _2435.y : (_482 ? _2425.y : (_484 ? _2415.y : (_486 ? _2398.y : _2405.y)))))));
    float _2459 = asfloat(_2394 & asuint(_2008 * (_413 * asfloat(_480 ? _2435.z : (_482 ? _2425.z : (_484 ? _2415.z : (_486 ? _2398.z : _2405.z)))))));
    float _2461 = _2459 + (_2457 + _2455);
    float _2468 = _2089 * TEXCOORD_8.x;
    float _2469 = _2089 * TEXCOORD_8.y;
    float _2470 = _2089 * TEXCOORD_8.z;
    float _2526;
    float _2527;
    float _2528;
    float _2529;
    float _2530;
    float _2531;
    if (_548)
    {
        uint _2484 = uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u)));
        uint _2486 = (_2484 * 32u) + 24u;
        uint3 _2496 = uint3(T1.Load(_2486).x, T1.Load(_2486 + 1u).x, T1.Load(_2486 + 2u).x);
        uint _2504 = (_2484 * 32u) + 28u;
        uint3 _2513 = uint3(T1.Load(_2504).x, T1.Load(_2504 + 1u).x, T1.Load(_2504 + 2u).x);
        _2526 = asfloat(_2496.x);
        _2527 = asfloat(_2496.y);
        _2528 = asfloat(_2496.z);
        _2529 = asfloat(_2513.x);
        _2530 = asfloat(_2513.y);
        _2531 = asfloat(_2513.z);
    }
    else
    {
        _2526 = asfloat(0u);
        _2527 = asfloat(0u);
        _2528 = asfloat(0u);
        _2529 = asfloat(0u);
        _2530 = asfloat(0u);
        _2531 = asfloat(0u);
    }
    bool _2535 = 0.5f < CB0_m0[23u].y;
    bool _2536 = _430 != 0u;
    float _2632;
    float _2634;
    float _2636;
    if (0.5f >= CB0_m0[188u].w)
    {
        float _2571 = clamp(mad((-0.0f) - dot(float3(_539, _540, _541), float3(_639, _640, _641)), 0.5f, 0.5f), 0.0f, 1.0f);
        float _2573 = mad(_359, 0.5f, 0.5f);
        float _2582 = clamp((asfloat((_430 != 0u) ? asuint(_2573) : asuint(_2573 * _2573)) + (-0.20000000298023223876953125f)) * 1.25f, 0.0f, 1.0f);
        float _2585 = (_2582 * _2582) * mad(_2582, -2.0f, 3.0f);
        float _2586 = _2585 * _2585;
        bool _2589 = _430 != 0u;
        float _2652;
        if (_548)
        {
            _2652 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _2652 = asfloat(0u);
        }
        float _2681 = min(_542 * 0.083333335816860198974609375f, 1.0f);
        float _2689 = ((-0.0f) - dot(float3(_539, _540, _541), float3(_358, _359, _360))) + 1.0f;
        float _2698 = clamp((((-0.0f) - mad(_2681, -0.300000011920928955078125f, 0.5f)) + _2689) * 3.3333332538604736328125f, 0.0f, 1.0f);
        float _2699 = clamp((((-0.0f) - mad(_2681, -0.300000011920928955078125f, 0.60000002384185791015625f)) + _2689) * 5.000000476837158203125f, 0.0f, 1.0f);
        float _2730 = CB0_m0[189u].x * CB0_m0[189u].x;
        float _2731 = CB0_m0[189u].y * CB0_m0[189u].y;
        float _2732 = CB0_m0[189u].z * CB0_m0[189u].z;
        float _2733 = _2730 * _2730;
        float _2734 = _2731 * _2731;
        float _2735 = _2732 * _2732;
        float _2736 = _2733 * _2733;
        float _2737 = _2734 * _2734;
        float _2738 = _2735 * _2735;
        float _2745 = (1.0f / (dot(float3(_2736, _2737, _2738), 0.699999988079071044921875f.xxx) + 9.9999997473787516355514526367188e-06f)) * dot(float3(CB0_m0[189u].xyz), 0.3300000131130218505859375f.xxx);
        bool _2765 = max(CB0_m0[189u].z, CB0_m0[189u].y) < CB0_m0[189u].x;
        float _2781 = asfloat(_2765 ? asuint(mad(_1273, mad(_2745, _2736, (-0.0f) - _2090), _2090)) : asuint(CB0_m0[189u].x * 0.60000002384185791015625f));
        float _2783 = asfloat(_2765 ? asuint(mad(_1273, mad(_2745, _2737, (-0.0f) - _2091), _2091)) : asuint(CB0_m0[189u].y * 0.60000002384185791015625f));
        float _2785 = asfloat(_2765 ? asuint(mad(_1273, mad(_2745, _2738, (-0.0f) - _2092), _2092)) : asuint(CB0_m0[189u].z * 0.60000002384185791015625f));
        float _2790 = exp2(log2(_2571 * _2571) * 20.0f);
        float _2814 = mad(_2008, _2012, _2015 + _2014) * 0.3300000131130218505859375f;
        float _2831 = exp2(log2(clamp(_2014, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _2832 = exp2(log2(clamp(_2015, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _2833 = exp2(log2(clamp(_2016, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _2838 = rsqrt(max(dot(float3(_2831, _2832, _2833), float3(_2831, _2832, _2833)), 6.103515625e-05f));
        float _2839 = _2838 * _2831;
        float _2840 = _2838 * _2832;
        float _2841 = _2838 * _2833;
        float _2846 = CB0_m0[198u].w * 48.0f;
        float _2848 = mad((_2814 * _2814) * CB0_m0[199u].w, -0.199999988079071044921875f, 1.0f) * 0.100000001490116119384765625f;
        float _2852 = (-0.0f) - _2848;
        float _2862 = asfloat((_430 != 0u) ? asuint((_2698 * _2698) * mad(_2698, -2.0f, 3.0f)) : asuint((_2699 * _2699) * mad(_2699, -2.0f, 3.0f))) * (mad(CB0_m0[199u].y, mad(clamp((-0.0f) - _540, 0.0f, 1.0f), asfloat((0.0f != TEXCOORD_7.z) ? 1083179008u : asuint(mad(_372, CB4_m0[137u].z, 2.5f))), -0.5f), 1.0f) * (clamp(mad(_2652, 0.39999997615814208984375f, _1273) + 0.60000002384185791015625f, 0.0f, 1.0f) * (mad(_1283 * mad(_1360, 0.5f, 0.5f), 1.39999997615814208984375f, 0.100000001490116119384765625f) * (mad(CB0_m0[199u].x, mad(_2585, mad(_2585 * (_2586 * _2586), asfloat(_2589 ? 3212836864u : 3204448256u) + asfloat(_2589 ? 1050253722u : 1065353216u), asfloat(_2589 ? 1065353216u : 1056964608u)), -0.100000001490116119384765625f), 0.100000001490116119384765625f) * mad(_2571, 0.800000011920928955078125f, 0.20000000298023223876953125f)))));
        uint4 _2872 = asuint(CB4_m0[87u]);
        uint4 _2879 = asuint(CB4_m0[86u]);
        uint4 _2889 = asuint(CB4_m0[88u]);
        uint4 _2899 = asuint(CB4_m0[89u]);
        uint4 _2909 = asuint(CB4_m0[90u]);
        float _2921 = asfloat(_480 ? _2909.z : (_482 ? _2899.z : (_484 ? _2889.z : (_486 ? _2872.z : _2879.z)))) * ((_2846 * mad(_376, mad(_2852, _2841, _2024), _2841 * _2848)) * (mad(CB0_m0[199u].z, mad((-0.0f) - _1891, _2089, mad(_2790, mad(_1891, _2089, (-0.0f) - _2785), _2785)), _2092) * _2862));
        float _2924 = mad(clamp(mad(_542, 0.20000000298023223876953125f, -1.0f), 0.0f, 1.0f), -0.699999988079071044921875f, 1.0f);
        float _2926 = _2924 * (asfloat(_480 ? _2909.x : (_482 ? _2899.x : (_484 ? _2889.x : (_486 ? _2872.x : _2879.x)))) * ((_2846 * mad(_376, mad(_2852, _2839, _2021), _2839 * _2848)) * (mad(CB0_m0[199u].z, mad((-0.0f) - _1889, _2089, mad(_2790, mad(_1889, _2089, (-0.0f) - _2781), _2781)), _2090) * _2862)));
        float _2927 = _2924 * (asfloat(_480 ? _2909.y : (_482 ? _2899.y : (_484 ? _2889.y : (_486 ? _2872.y : _2879.y)))) * ((_2846 * mad(_376, mad(_2852, _2840, _2023), _2840 * _2848)) * (mad(CB0_m0[199u].z, mad((-0.0f) - _1890, _2089, mad(_2790, mad(_1890, _2089, (-0.0f) - _2783), _2783)), _2091) * _2862)));
        float _2930 = mad(_2921, _2924, _2927 + _2926);
        float _2932 = mad(_2930 * _2930, 0.0500000007450580596923828125f, 1.0f);
        float _2937 = asfloat(_1894 ? 1056964608u : 1065353216u);
        float _2938 = _2937 * (_2932 * _2926);
        float _2939 = _2937 * (_2932 * _2927);
        float _2940 = _2937 * (_2932 * (_2924 * _2921));
        bool _2944 = 0.5f < CB3_m0[1u].w;
        _2632 = asfloat(_2944 ? asuint(min(_2940, 0.699999988079071044921875f)) : asuint(_2940)) * CB0_m0[198u].z;
        _2634 = asfloat(_2944 ? asuint(min(_2939, 0.699999988079071044921875f)) : asuint(_2939)) * CB0_m0[198u].y;
        _2636 = asfloat(_2944 ? asuint(min(_2938, 0.699999988079071044921875f)) : asuint(_2938)) * CB0_m0[198u].x;
    }
    else
    {
        _2632 = asfloat(0u);
        _2634 = asfloat(0u);
        _2636 = asfloat(0u);
    }
    float _2644 = _2455 + (max(mad(_2375, _2090, -1.0f), 0.0f) + mad(asfloat(_2535 ? 1028443341u : (_2536 ? asuint(_2526) : asuint(_2529))), _2010 * _2089, mad(_2468, _2014, mad(_2014, _2090, _2090 * _2375))));
    float _2645 = _2457 + (max(mad(_2376, _2091, -1.0f), 0.0f) + mad(asfloat(_2535 ? 1028443341u : (_2536 ? asuint(_2527) : asuint(_2530))), _2009 * _2089, mad(_2469, _2015, mad(_2015, _2091, _2091 * _2376))));
    float _2646 = _2459 + (max(mad(_2377, _2092, -1.0f), 0.0f) + mad(asfloat(_2535 ? 1028443341u : (_2536 ? asuint(_2528) : asuint(_2531))), _2008 * _2089, mad(_2470, _2016, mad(_2016, _2092, _2092 * _2377))));
    float _3217;
    float _3218;
    float _3219;
    float _3220;
    float _3221;
    if (CB4_m0[150u].x >= 0.5f)
    {
        bool _2968 = 0.5f < CB4_m0[150u].y;
        float _2977 = _2968 ? TEXCOORD_1.x : TEXCOORD.x;
        float _2978 = _2968 ? TEXCOORD_1.y : TEXCOORD.y;
        bool _2984 = 0.5f < CB4_m0[148u].z;
        bool _2985 = 0.5f < CB4_m0[148u].y;
        bool _2991 = CB4_m0[150u].y < 0.5f;
        bool _2994 = CB4_m0[150u].z < 0.5f;
        bool _3015 = 0.800000011920928955078125f < CB4_m0[147u].w;
        float4 _3068 = T7.SampleBias(S2, float2(mad(CB4_m0[108u].x, CB0_m0[40u].y, mad(_2977, CB4_m0[49u].x, CB4_m0[49u].z)), mad(CB4_m0[108u].y, CB0_m0[40u].y, mad(_2978, CB4_m0[49u].y, CB4_m0[49u].w))), CB0_m0[191u].x);
        float _3070 = _3068.x;
        float _3071 = _3068.y;
        float _3072 = _3068.z;
        float4 _3077 = T8.SampleBias(S3, float2(mad(CB4_m0[108u].z, CB0_m0[40u].y, mad(asfloat(_3015 ? asuint(_261) : (_2984 ? asuint(_2977) : asuint(_2991 ? TEXCOORD_1.x : TEXCOORD.x))), CB4_m0[50u].x, CB4_m0[50u].z)), mad(CB4_m0[108u].w, CB0_m0[40u].y, mad(asfloat(_3015 ? asuint(_262) : (_2984 ? asuint(_2978) : asuint(_2991 ? TEXCOORD_1.y : TEXCOORD.y))), CB4_m0[50u].y, CB4_m0[50u].w))), CB0_m0[191u].x);
        uint _3086 = (CB4_m0[150u].w < 0.5f) ? asuint(_3077.x) : ((CB4_m0[150u].w < 1.5f) ? asuint(_3077.y) : asuint(_3077.z));
        float _3087 = asfloat(_3086);
        uint _3088 = asuint(_3070);
        float _3093 = asfloat(_2994 ? _3088 : asuint(_3070));
        float _3095 = asfloat(_2994 ? _3088 : asuint(_3071));
        float _3097 = asfloat(_2994 ? _3088 : asuint(_3072));
        uint _3143 = _2985 ? asuint(_3087 * mad(_3093, CB4_m0[34u].x + ((-0.0f) - CB4_m0[95u].x), CB4_m0[95u].x)) : asuint((_3087 * _3093) * CB4_m0[34u].x);
        uint _3145 = _2985 ? asuint(_3087 * mad(_3095, CB4_m0[34u].y + ((-0.0f) - CB4_m0[95u].y), CB4_m0[95u].y)) : asuint((_3087 * _3095) * CB4_m0[34u].y);
        uint _3147 = _2985 ? asuint(_3087 * mad(_3097, CB4_m0[34u].z + ((-0.0f) - CB4_m0[95u].z), CB4_m0[95u].z)) : asuint((_3087 * _3097) * CB4_m0[34u].z);
        bool _3152 = 0.5f < CB4_m0[151u].x;
        float _3160 = asfloat(_3152 ? asuint(_2010 * asfloat(_3143)) : _3143);
        float _3162 = asfloat(_3152 ? asuint(_2009 * asfloat(_3145)) : _3145);
        float _3164 = asfloat(_3152 ? asuint(_2008 * asfloat(_3147)) : _3147);
        bool _3168 = CB4_m0[147u].z < 0.5f;
        uint _3179 = _2994 ? asuint(_3070) : asuint(_3072 + (_3071 + _3070));
        float _3185 = min(asfloat((1.5f < CB4_m0[147u].z) ? asuint(_3087 + asfloat(_3179)) : _3179), 1.0f);
        float _3186 = _3087 * _3185;
        _3217 = asfloat(_3168 ? asuint(_2644 + _3160) : asuint(_2644 * mad(_3186, _3160 + (-1.0f), 1.0f)));
        _3218 = asfloat(_3168 ? asuint(_2645 + _3162) : asuint(_2645 * mad(_3186, _3162 + (-1.0f), 1.0f)));
        _3219 = asfloat(_3168 ? asuint(_2646 + _3164) : asuint(_2646 * mad(_3186, _3164 + (-1.0f), 1.0f)));
        _3220 = asfloat(_3168 ? asuint((_3164 + (_3162 + _3160)) + _2461) : asuint(mad(_3087, _3185, _2461)));
        _3221 = asfloat(_3168 ? _3086 : asuint(_3186));
    }
    else
    {
        _3217 = _2644;
        _3218 = _2645;
        _3219 = _2646;
        _3220 = _2461;
        _3221 = asfloat(0u);
    }
    float _3470;
    float _3471;
    float _3472;
    float _3473;
    float _3474;
    if (float(int(asuint(CB4_m0[132u]).w)) >= 0.5f)
    {
        bool _3233 = 0.5f < CB4_m0[127u].x;
        bool _3234 = 0.5f < CB4_m0[127u].z;
        bool _3252 = 0.5f < CB4_m0[128u].x;
        bool _3253 = 0.800000011920928955078125f < CB4_m0[128u].z;
        bool _3254 = 0.5f < CB4_m0[128u].y;
        float4 _3318 = T9.SampleBias(S0, float2(mad(CB4_m0[40u].x, CB0_m0[40u].y, mad(_3233 ? TEXCOORD_1.x : TEXCOORD.x, CB4_m0[51u].x, CB4_m0[51u].z)), mad(CB4_m0[40u].y, CB0_m0[40u].y, mad(_3233 ? TEXCOORD_1.y : TEXCOORD.y, CB4_m0[51u].y, CB4_m0[51u].w))), CB0_m0[191u].x);
        float _3320 = _3318.x;
        float _3321 = _3318.y;
        float _3322 = _3318.z;
        float4 _3327 = T10.SampleBias(S0, float2(mad(CB4_m0[40u].z, CB0_m0[40u].y, mad(asfloat(_3253 ? asuint(_261) : asuint(_3252 ? TEXCOORD_1.x : TEXCOORD.x)), CB4_m0[52u].x, CB4_m0[52u].z)), mad(CB4_m0[40u].w, CB0_m0[40u].y, mad(asfloat(_3253 ? asuint(_262) : asuint(_3252 ? TEXCOORD_1.y : TEXCOORD.y)), CB4_m0[52u].y, CB4_m0[52u].w))), CB0_m0[191u].x);
        bool _3338 = CB4_m0[127u].y < 0.5f;
        uint _3343 = (CB4_m0[127u].w < 0.5f) ? asuint(_3327.x) : ((CB4_m0[127u].w < 1.5f) ? asuint(_3327.y) : asuint(_3327.z));
        float _3344 = asfloat(_3343);
        uint _3345 = asuint(_3320);
        float _3350 = asfloat(_3338 ? _3345 : asuint(_3320));
        float _3352 = asfloat(_3338 ? _3345 : asuint(_3321));
        float _3354 = asfloat(_3338 ? _3345 : asuint(_3322));
        uint _3401 = _3254 ? asuint(_3344 * mad(_3350, CB4_m0[110u].x + ((-0.0f) - CB4_m0[111u].x), CB4_m0[111u].x)) : asuint((_3350 * _3344) * CB4_m0[110u].x);
        uint _3403 = _3254 ? asuint(_3344 * mad(_3352, CB4_m0[110u].y + ((-0.0f) - CB4_m0[111u].y), CB4_m0[111u].y)) : asuint((_3352 * _3344) * CB4_m0[110u].y);
        uint _3405 = _3254 ? asuint(_3344 * mad(_3354, CB4_m0[110u].z + ((-0.0f) - CB4_m0[111u].z), CB4_m0[111u].z)) : asuint((_3354 * _3344) * CB4_m0[110u].z);
        float _3414 = asfloat(_3234 ? asuint(_2010 * asfloat(_3401)) : _3401);
        float _3416 = asfloat(_3234 ? asuint(_2009 * asfloat(_3403)) : _3403);
        float _3418 = asfloat(_3234 ? asuint(_2008 * asfloat(_3405)) : _3405);
        bool _3422 = CB4_m0[128u].w < 0.5f;
        uint _3433 = _3338 ? asuint(_3320) : asuint(_3322 + (_3321 + _3320));
        float _3439 = min(asfloat((1.5f < CB4_m0[128u].w) ? asuint(asfloat(_3433) + _3344) : _3433), 1.0f);
        float _3440 = _3439 * _3344;
        _3470 = asfloat(_3422 ? asuint(_3414 + _3217) : asuint(mad(_3440, _3414 + (-1.0f), 1.0f) * _3217));
        _3471 = asfloat(_3422 ? asuint(_3416 + _3218) : asuint(mad(_3440, _3416 + (-1.0f), 1.0f) * _3218));
        _3472 = asfloat(_3422 ? asuint(_3418 + _3219) : asuint(mad(_3440, _3418 + (-1.0f), 1.0f) * _3219));
        _3473 = asfloat(_3422 ? asuint((_3418 + (_3416 + _3414)) + _3220) : asuint(mad(_3344, _3439, _3220)));
        _3474 = asfloat(_3422 ? _3343 : asuint(_3440));
    }
    else
    {
        _3470 = _3217;
        _3471 = _3218;
        _3472 = _3219;
        _3473 = _3220;
        _3474 = _3221;
    }
    float _3482 = CB4_m0[29u].w * CB4_m0[155u].w;
    float _3494 = mad(_3482, ((-0.0f) - _3470) + CB4_m0[29u].x, _3470);
    float _3495 = mad(_3482, ((-0.0f) - _3471) + CB4_m0[29u].y, _3471);
    float _3496 = mad(_3482, ((-0.0f) - _3472) + CB4_m0[29u].z, _3472);
    float _3504 = mad((-0.0f) - CB4_m0[29u].w, CB4_m0[155u].w, 1.0f);
    float _3505 = _3504 * (_2636 * mad(_2468, 2.0f, 1.0f));
    float _3506 = _3504 * (_2634 * mad(_2469, 2.0f, 1.0f));
    float _3507 = _3504 * (_2632 * mad(_2470, 2.0f, 1.0f));
    float _3711;
    float _3713;
    float _3715;
    float _3717;
    if (0.5f < CB4_m0[152u].y)
    {
        bool _3516 = CB4_m0[153u].x < 0.5f;
        float _3591 = mad(gl_FragCoord.x, CB0_m0[160u].z, -0.5f);
        float _3592 = mad(gl_FragCoord.y, CB0_m0[160u].w, -0.5f);
        float _3620 = ((-0.0f) - (mad(CB0_m0[118u].z, TEXCOORD_4.w, mad(CB0_m0[116u].z, TEXCOORD_2.w, TEXCOORD_3.w * CB0_m0[117u].z)) + CB0_m0[119u].z)) / CB0_m0[93u].y;
        float _3631 = asfloat((0.5f < CB4_m0[152u].z) ? asuint(mad(CB0_m0[85u].w, mad((-0.0f) - _3620, 0.5f, 1.0f), _3620 * 0.5f)) : 1065353216u);
        float4 _3664 = T11.Sample(S4, float2((mad(_3631 * mad(CB4_m0[125u].z, mad(CB0_m0[118u].x, _360, mad(CB0_m0[116u].x, _358, _359 * CB0_m0[117u].x)), (CB0_m0[160u].w * CB0_m0[160u].x) * (_3591 + _3591)), CB4_m0[47u].x, CB4_m0[47u].z) + 0.5f) + mad(CB4_m0[124u].x, CB0_m0[40u].y, CB4_m0[124u].z), (mad(_3631 * mad(CB4_m0[125u].z, mad(CB0_m0[118u].y, _360, mad(CB0_m0[116u].y, _358, _359 * CB0_m0[117u].y)), _3592 + _3592), CB4_m0[47u].y, CB4_m0[47u].w) + 0.5f) + mad(CB4_m0[124u].y, CB0_m0[40u].y, CB4_m0[124u].w)));
        float _3680 = _3664.w * CB4_m0[109u].w;
        float _3709 = asfloat((0.5f < CB4_m0[153u].z) ? asuint(mad(mad(sin((CB0_m0[40u].y / max(CB4_m0[168u].x, 0.00999999977648258209228515625f)) * 6.283185482025146484375f), 0.5f, 0.5f), ((-0.0f) - CB4_m0[125u].x) + CB4_m0[125u].y, CB4_m0[125u].x)) : 1065353216u);
        float _3710 = _3709 * _3680;
        float _3842;
        float _3843;
        float _3844;
        if (0.5f < CB4_m0[152u].w)
        {
            float _3725 = mad((-0.0f) - _3680, _3709, 1.0f);
            _3842 = _2644 * mad(_3664.x * CB4_m0[109u].x, _3710, _3725);
            _3843 = _2645 * mad(_3664.y * CB4_m0[109u].y, _3710, _3725);
            _3844 = _2646 * mad(_3664.z * CB4_m0[109u].z, _3710, _3725);
        }
        else
        {
            _3842 = mad(_3710, mad(CB4_m0[109u].x, _3664.x, (-0.0f) - _2644), _2644);
            _3843 = mad(_3710, mad(CB4_m0[109u].y, _3664.y, (-0.0f) - _2645), _2645);
            _3844 = mad(_3710, mad(CB4_m0[109u].z, _3664.z, (-0.0f) - _2646), _2646);
        }
        float _3870 = asfloat((0.5f < CB4_m0[153u].y) ? asuint(((-0.0f) - _3474) + 1.0f) : 1065353216u) * T12.Sample(S5, float2(mad(CB0_m0[40u].y, CB4_m0[149u].z, mad(_3516 ? TEXCOORD.x : TEXCOORD_1.x, CB4_m0[48u].x, CB4_m0[48u].z)), mad(CB0_m0[40u].y, CB4_m0[149u].w, mad(_3516 ? TEXCOORD.y : TEXCOORD_1.y, CB4_m0[48u].y, CB4_m0[48u].w)))).x;
        _3711 = mad(_3844 + (_3843 + _3842), _3870, _3473);
        _3713 = mad(_3870, ((-0.0f) - _3496) + _3844, _3496);
        _3715 = mad(_3870, ((-0.0f) - _3495) + _3843, _3495);
        _3717 = mad(_3870, ((-0.0f) - _3494) + _3842, _3494);
    }
    else
    {
        _3711 = _3473;
        _3713 = _3496;
        _3715 = _3495;
        _3717 = _3494;
    }
    float _3822;
    float _3824;
    float _3826;
    float _3828;
    uint _3830;
    float _3831;
    float _3833;
    float _3835;
    if (0.5f < CB4_m0[158u].z)
    {
        bool _3763 = 0.5f < CB4_m0[159u].x;
        float4 _3812 = T13.Sample(S6, float2(mad(CB0_m0[40u].y, CB4_m0[103u].x, asfloat(_3763 ? asuint(mad(TEXCOORD_1.x, CB4_m0[55u].x, CB4_m0[55u].z)) : asuint(mad(TEXCOORD.x, CB4_m0[55u].x, CB4_m0[55u].z)))), mad(CB0_m0[40u].y, CB4_m0[103u].y, asfloat(_3763 ? asuint(mad(TEXCOORD_1.y, CB4_m0[55u].y, CB4_m0[55u].w)) : asuint(mad(TEXCOORD.y, CB4_m0[55u].y, CB4_m0[55u].w))))));
        float _3814 = _3812.x;
        float _3815 = _3812.y;
        float _3816 = _3812.z;
        float _3825;
        float _3827;
        float _3829;
        if (0.5f < CB4_m0[158u].w)
        {
            _3825 = mad(CB4_m0[33u].z * CB4_m0[33u].w, _3816, _3507);
            _3827 = mad(CB4_m0[33u].y * CB4_m0[33u].w, _3815, _3506);
            _3829 = mad(CB4_m0[33u].x * CB4_m0[33u].w, _3814, _3505);
        }
        else
        {
            float _3896 = _3812.w * CB4_m0[33u].w;
            _3825 = mad(_3896, mad(CB4_m0[33u].z, _3816, (-0.0f) - _3507), _3507);
            _3827 = mad(_3896, mad(CB4_m0[33u].y, _3815, (-0.0f) - _3506), _3506);
            _3829 = mad(_3896, mad(CB4_m0[33u].x, _3814, (-0.0f) - _3505), _3505);
        }
        uint4 _3965 = asuint(CB4_m0[131u]);
        float _3969 = float(int(_3965.x));
        float _3976 = exp2(log2(max(((-0.0f) - abs(dot(float3(TEXCOORD_2.x, TEXCOORD_2.y, TEXCOORD_2.z), float3(_539, _540, _541)))) + 1.0f, 0.0f)) * CB4_m0[155u].z) * float(int(_3965.y));
        float _3984 = exp2(max(CB4_m0[130u].x, 0.00999999977648258209228515625f) * log2(_3976));
        float _3991 = min(CB4_m0[121u].x, 65504.0f);
        float _3993 = min(CB4_m0[121u].y, 65504.0f);
        float _3994 = min(CB4_m0[121u].z, 65504.0f);
        float _4007 = mad(_3984, ((-0.0f) - _3991) + CB4_m0[120u].x, _3991);
        float _4008 = mad(_3984, ((-0.0f) - _3993) + CB4_m0[120u].y, _3993);
        float _4009 = mad(_3984, ((-0.0f) - _3994) + CB4_m0[120u].z, _3994);
        float _4020 = _3976 * asfloat(((_3976 >= CB4_m0[130u].y) ? 4294967295u : 0u) & 1065353216u);
        bool _4024 = _3969 < 0.5f;
        bool _4025 = _3969 < 1.5f;
        _3822 = mad(_3825 + (_3827 + _3829), ((-0.0f) - CB4_m0[156u].x) + 1.0f, _3711);
        _3824 = _3825;
        _3826 = _3827;
        _3828 = _3829;
        _3830 = 0u;
        _3831 = asfloat(_4024 ? asuint(mad(_4020, _3816 * _4009, _3713)) : (_4025 ? asuint(mad(_4020, mad(_4009, _3816, (-0.0f) - _3713), _3713)) : asuint(_3713 * mad(_4020, mad(_4009, _3816, -1.0f), 1.0f))));
        _3833 = asfloat(_4024 ? asuint(mad(_4020, _3815 * _4008, _3715)) : (_4025 ? asuint(mad(_4020, mad(_4008, _3815, (-0.0f) - _3715), _3715)) : asuint(_3715 * mad(_4020, mad(_4008, _3815, -1.0f), 1.0f))));
        _3835 = asfloat(_4024 ? asuint(mad(_4020, _3814 * _4007, _3717)) : (_4025 ? asuint(mad(_4020, mad(_4007, _3814, (-0.0f) - _3717), _3717)) : asuint(_3717 * mad(_4020, mad(_4007, _3814, -1.0f), 1.0f))));
    }
    else
    {
        _3822 = _3711;
        _3824 = _3507;
        _3826 = _3506;
        _3828 = _3505;
        _3830 = _430;
        _3831 = _3713;
        _3833 = _3715;
        _3835 = _3717;
    }
    float _3937;
    float _3939;
    float _3941;
    float _3943;
    float _3945;
    float _3947;
    float _3949;
    if (0.5f < CB4_m0[156u].x)
    {
        float _3914 = CB4_m0[156u].z * 0.01745329238474369049072265625f;
        float _3916 = sin(_3914);
        float _3917 = cos(_3914);
        bool _3922 = CB4_m0[156u].y < 0.5f;
        float _4266;
        float _4267;
        float _4268;
        if (1.5f < CB4_m0[156u].y)
        {
            bool _4063 = CB4_m0[157u].w < 0.5f;
            uint4 _4110 = asuint(CB4_m0[25u]);
            float _4123 = ((-0.0f) - TEXCOORD_2.w) + asfloat(_4063 ? asuint(mad(CB1_m0[2u].x, CB4_m0[25u].z, mad(CB1_m0[0u].x, CB4_m0[25u].x, CB1_m0[1u].x * CB4_m0[25u].y)) + CB1_m0[3u].x) : _4110.x);
            float _4124 = ((-0.0f) - TEXCOORD_3.w) + asfloat(_4063 ? asuint(mad(CB1_m0[2u].y, CB4_m0[25u].z, mad(CB1_m0[0u].y, CB4_m0[25u].x, CB1_m0[1u].y * CB4_m0[25u].y)) + CB1_m0[3u].y) : _4110.y);
            float _4125 = ((-0.0f) - TEXCOORD_4.w) + asfloat(_4063 ? asuint(mad(CB1_m0[2u].z, CB4_m0[25u].z, mad(CB1_m0[0u].z, CB4_m0[25u].x, CB1_m0[1u].z * CB4_m0[25u].y)) + CB1_m0[3u].z) : _4110.z);
            float _4130 = rsqrt(max(dot(float3(_4123, _4124, _4125), float3(_4123, _4124, _4125)), 1.1754943508222875079687365372222e-38f));
            _4266 = _4130 * _4123;
            _4267 = _4130 * _4125;
            _4268 = _4130 * _4124;
        }
        else
        {
            _4266 = asfloat(_3922 ? asuint(_639) : asuint(_539));
            _4267 = asfloat(_3922 ? asuint(_641) : asuint(_541));
            _4268 = asfloat(_3922 ? asuint(_640) : asuint(_540));
        }
        float _4288 = clamp((mad(CB4_m0[156u].w, 2.0f, dot(float3(_358, _359, _360), float3(dot(float2(_3917, _3916), float2(_4266, _4267)), _4268, dot(float2((-0.0f) - _3916, _3917), float2(_4266, _4267))))) + (-1.0f)) / max(CB4_m0[157u].x, 9.9999997473787516355514526367188e-06f), 0.0f, 1.0f);
        float _4316 = mad(_4288, CB4_m0[30u].x + ((-0.0f) - CB4_m0[31u].x), CB4_m0[31u].x);
        float _4317 = mad(_4288, CB4_m0[30u].y + ((-0.0f) - CB4_m0[31u].y), CB4_m0[31u].y);
        float _4318 = mad(_4288, CB4_m0[30u].z + ((-0.0f) - CB4_m0[31u].z), CB4_m0[31u].z);
        float _4319 = mad(_4288, CB4_m0[30u].w + ((-0.0f) - CB4_m0[31u].w), CB4_m0[31u].w);
        bool _4323 = 0.5f < CB4_m0[157u].z;
        float _4328 = asfloat(_4323 ? asuint(_2010) : 1065353216u);
        float _4330 = asfloat(_4323 ? asuint(_2009) : 1065353216u);
        float _4332 = asfloat(_4323 ? asuint(_2008) : 1065353216u);
        float _4333 = _4328 * _4316;
        float _4334 = _4330 * _4317;
        bool _4339 = CB4_m0[157u].y < 0.5f;
        _3937 = mad(mad(_4318, _4332, _4334 + _4333), _4319, _3822);
        _3939 = asfloat(0u);
        _3941 = asfloat(0u);
        _3943 = asfloat(0u);
        _3945 = asfloat(_4339 ? asuint(mad(_4319, mad(_4318, _4332, (-0.0f) - _3831), _3831)) : asuint(mad(_4319, _4332 * _4318, _3831)));
        _3947 = asfloat(_4339 ? asuint(mad(_4319, mad(_4317, _4330, (-0.0f) - _3833), _3833)) : asuint(mad(_4319, _4334, _3833)));
        _3949 = asfloat(_4339 ? asuint(mad(_4319, mad(_4316, _4328, (-0.0f) - _3835), _3835)) : asuint(mad(_4319, _4333, _3835)));
    }
    else
    {
        _3937 = _3822;
        _3939 = _3824;
        _3941 = _3826;
        _3943 = _3828;
        _3945 = _3831;
        _3947 = _3833;
        _3949 = _3835;
    }
    float _4221;
    float _4222;
    float _4223;
    float _4224;
    float _4225;
    float _4226;
    float _4227;
    if (0.5f < CB4_m0[159u].y)
    {
        float _4149 = clamp((((-0.0f) - TEXCOORD_5.z) + CB4_m0[167u].x) * 100.0f, 0.0f, 1.0f) * CB4_m0[159u].z;
        float _4163 = mad(CB4_m0[159u].z, CB4_m0[167u].x, CB4_m0[167u].y + CB4_m0[167u].y);
        float _4169 = clamp((_4163 + ((-0.0f) - TEXCOORD_5.z)) / _4163, 0.0f, 1.0f);
        float _4170 = _4169 * _4169;
        float _4195 = mad(_4149, CB4_m0[113u].x + ((-0.0f) - CB4_m0[114u].x), CB4_m0[114u].x);
        float _4196 = mad(_4149, CB4_m0[113u].y + ((-0.0f) - CB4_m0[114u].y), CB4_m0[114u].y);
        float _4197 = mad(_4149, CB4_m0[113u].z + ((-0.0f) - CB4_m0[114u].z), CB4_m0[114u].z);
        float _4202 = clamp(mad(_4170 * _4170, CB4_m0[159u].w, _4149), 0.0f, 1.0f);
        _4221 = mad(_4197 + (_4196 + _4195), _4202, _3937);
        _4222 = mad(_4202, (-0.0f) - _3939, _3939);
        _4223 = mad(_4202, (-0.0f) - _3941, _3941);
        _4224 = mad(_4202, (-0.0f) - _3943, _3943);
        _4225 = mad(_4202, ((-0.0f) - _3945) + _4197, _3945);
        _4226 = mad(_4202, ((-0.0f) - _3947) + _4196, _3947);
        _4227 = mad(_4202, ((-0.0f) - _3949) + _4195, _3949);
    }
    else
    {
        _4221 = _3937;
        _4222 = _3939;
        _4223 = _3941;
        _4224 = _3943;
        _4225 = _3945;
        _4226 = _3947;
        _4227 = _3949;
    }
    discard_cond(TEXCOORD_5.z < 0.0f);
    SV_Target_1.x = min(sqrt(max(_4224, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.y = min(sqrt(max(_4223, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.z = min(sqrt(max(_4222, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.w = _4221 * 0.33329999446868896484375f;
    SV_Target_2.w = (_3830 != 0u) ? 0.3400000035762786865234375f : 0.0f;
    SV_Target_3.x = mad(_358, 0.5f, 0.5f);
    SV_Target_3.y = mad(_359, 0.5f, 0.5f);
    SV_Target_3.z = mad(_360, 0.5f, 0.5f);
    SV_Target.x = _4227;
    SV_Target.y = _4226;
    SV_Target.z = _4225;
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
