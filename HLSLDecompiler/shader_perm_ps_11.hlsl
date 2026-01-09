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
SamplerState S0 : register(s0, space0);
SamplerComparisonState S1 : register(s1, space0);
SamplerState S2 : register(s2, space0);
SamplerState S3 : register(s3, space0);

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
    bool _104 = 0.5f < CB1_m0[28u].y;
    float _128 = (TEXCOORD_5.x / TEXCOORD_5.w) + ((-0.0f) - (TXCOORDD_6.x / TXCOORDD_6.w));
    float _129 = (TEXCOORD_5.y / TEXCOORD_5.w) + ((-0.0f) - (TXCOORDD_6.y / TXCOORDD_6.w));
    float _138 = (-0.0f) - _129;
    SV_Target_2.x = _104 ? mad(sqrt(abs(_128 * 0.5f)) * float(int((0u - ((0.0f < _128) ? 4294967295u : 0u)) + ((_128 < 0.0f) ? 4294967295u : 0u))), 0.5f, 0.4980392158031463623046875f) : 0.4979999959468841552734375f;
    SV_Target_2.y = _104 ? mad(sqrt(abs(_129 * (-0.5f))) * float(int((0u - ((0.0f < _138) ? 4294967295u : 0u)) + ((_138 < 0.0f) ? 4294967295u : 0u))), 0.5f, 0.4980392158031463623046875f) : 0.4979999959468841552734375f;
    uint _189 = 3u & 31u;
    uint _195 = 2u & 31u;
    uint _201 = 1u & 31u;
    uint _208 = 0u & 31u;
    SV_Target_2.z = float(spvBitfieldInsert((spvBitfieldInsert(0u, (0.0f != CB4_m0[152u].x) ? 4294967295u : 0u, _189, min((1u & 31u), (32u - _189))) + spvBitfieldInsert(0u, (CB3_m0[40u].x == 1.0f) ? 4294967295u : 0u, _195, min((1u & 31u), (32u - _195)))) + spvBitfieldInsert(0u, (0.0f != CB4_m0[151u].z) ? 4294967295u : 0u, _201, min((1u & 31u), (32u - _201))), (0.0f != CB4_m0[151u].w) ? 4294967295u : 0u, _208, min((1u & 31u), (32u - _208)))) * 0.0039215688593685626983642578125f;
    uint _229 = (((gl_FrontFacing ? 4294967295u : 0u) == 0u) ? 4294967295u : 0u) & ((0.5f < CB4_m0[147u].x) ? 4294967295u : 0u);
    bool _236 = ((((1.0f < TEXCOORD.z) ? 4294967295u : 0u) & ((0.5f < CB4_m0[147u].y) ? 4294967295u : 0u)) | _229) != 0u;
    float4 _253 = T3.SampleBias(S0, float2(_236 ? TEXCOORD.z : TEXCOORD.x, _236 ? TEXCOORD.w : TEXCOORD.y), CB0_m0[191u].x);
    float _256 = _253.x;
    float _257 = _253.y;
    float _258 = _253.z;
    bool _268 = _229 != 0u;
    float _277 = _268 ? TEXCOORD.z : TEXCOORD.x;
    float _278 = _268 ? TEXCOORD.w : TEXCOORD.y;
    float4 _283 = T4.SampleBias(S0, float2(_277, _278), CB0_m0[191u].x);
    float _301 = mad(clamp(_283.x, 0.0f, 1.0f), 2.0f, -1.0039999485015869140625f) * CB4_m0[137u].y;
    float _302 = mad(clamp(_283.y, 0.0f, 1.0f), 2.0f, -1.0039999485015869140625f) * CB4_m0[137u].y;
    float _310 = asfloat(((gl_FrontFacing ? 4294967295u : 0u) != 0u) ? 1065353216u : 3212836864u) * sqrt(((-0.0f) - min(dot(float2(_301, _302), float2(_301, _302)), 1.0f)) + 1.0f);
    float _335 = mad(_310, TEXCOORD_2.x, mad(_301, TEXCOORD_3.x, _302 * TEXCOORD_4.x));
    float _336 = mad(_310, TEXCOORD_2.y, mad(_301, TEXCOORD_3.y, _302 * TEXCOORD_4.y));
    float _337 = mad(_310, TEXCOORD_2.z, mad(_301, TEXCOORD_3.z, _302 * TEXCOORD_4.z));
    float _341 = rsqrt(dot(float3(_335, _336, _337), float3(_335, _336, _337)));
    float _342 = _341 * _335;
    float _343 = _341 * _336;
    float _344 = _341 * _337;
    float4 _349 = T5.SampleBias(S0, float2(_277, _278), CB0_m0[191u].x);
    float _354 = clamp(_349.z, 0.0f, 1.0f);
    float _355 = clamp(_349.x, 0.0f, 1.0f);
    float _356 = clamp(_349.y, 0.0f, 1.0f);
    float _360 = _356 * CB4_m0[137u].z;
    float4 _365 = T6.SampleBias(S0, float2(_277, _278), CB0_m0[191u].x);
    float _369 = clamp(_365.z, 0.0f, 1.0f);
    float _370 = clamp(_365.y, 0.0f, 1.0f);
    float _397;
    if (0.5f < CB4_m0[135u].z)
    {
        uint _383 = (0.5f < CB4_m0[144u].x) ? 4294967295u : 0u;
        _397 = asfloat((((((0.5f < CB4_m0[144u].y) ? 4294967295u : 0u) & _383) != 0u) ? asuint(max((_369 + (-0.20000000298023223876953125f)) * 1.25f, 0.0f)) : asuint(_369)) & _383);
    }
    else
    {
        _397 = _369;
    }
    bool _412 = uint(int(max(((-0.0f) - floor(_355 * 5.0f)) + 4.0f, 0.0f))) == asuint(CB4_m0[132u]).y;
    uint _413 = _412 ? 4294967295u : 0u;
    uint _414 = _413 & 1u;
    bool _419 = 0.5f < CB4_m0[136u].w;
    float4 _433 = T2.SampleBias(S0, float2(TEXCOORD.x * CB4_m0[137u].x, TEXCOORD.y * CB4_m0[137u].x), CB0_m0[191u].x);
    uint _458 = _419 ? asuint(max(mad(_256, CB4_m0[57u].x, _433.x) + (-0.5f), 0.0f)) : asuint(_256 * CB4_m0[57u].x);
    float _459 = asfloat(_458);
    uint _460 = _419 ? asuint(max(mad(_257, CB4_m0[57u].y, _433.y) + (-0.5f), 0.0f)) : asuint(_257 * CB4_m0[57u].y);
    float _461 = asfloat(_460);
    uint _462 = _419 ? asuint(max(mad(_258, CB4_m0[57u].z, _433.z) + (-0.5f), 0.0f)) : asuint(_258 * CB4_m0[57u].z);
    float _463 = asfloat(_462);
    bool _464 = _355 < 0.20000000298023223876953125f;
    bool _466 = _355 < 0.4000000059604644775390625f;
    bool _468 = _355 < 0.60000002384185791015625f;
    bool _470 = _355 < 0.800000011920928955078125f;
    float _514 = ((-0.0f) - TEXCOORD_2.w) + CB0_m0[53u].x;
    float _515 = ((-0.0f) - TEXCOORD_3.w) + CB0_m0[53u].y;
    float _516 = ((-0.0f) - TEXCOORD_4.w) + CB0_m0[53u].z;
    float _517 = dot(float3(_514, _515, _516), float3(_514, _515, _516));
    float _522 = rsqrt(max(_517, 1.1754943508222875079687365372222e-38f));
    float _523 = _522 * _514;
    float _524 = _522 * _515;
    float _525 = _522 * _516;
    float _526 = sqrt(_517);
    bool _532 = int(0u) < int(asuint(CB0_m0[188u]).z);
    float _603;
    float _604;
    float _605;
    float _606;
    float _607;
    float _608;
    float _609;
    float _610;
    float _611;
    if (_532)
    {
        uint _543 = uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u)));
        uint _544 = _543 * 32u;
        uint4 _556 = uint4(T1.Load(_544).x, T1.Load(_544 + 1u).x, T1.Load(_544 + 2u).x, T1.Load(_544 + 3u).x);
        uint _567 = (_543 * 32u) + 4u;
        uint4 _579 = uint4(T1.Load(_567).x, T1.Load(_567 + 1u).x, T1.Load(_567 + 2u).x, T1.Load(_567 + 3u).x);
        _603 = asfloat(_556.x);
        _604 = asfloat(_556.y);
        _605 = asfloat(_556.z);
        _606 = asfloat(_556.w);
        _607 = asfloat(_579.x);
        _608 = asfloat(_579.y);
        _609 = asfloat(_579.z);
        _610 = asfloat(T1.Load((_543 * 32u) + 8u).x);
        _611 = asfloat(_579.w);
    }
    else
    {
        _603 = asfloat(0u);
        _604 = asfloat(0u);
        _605 = asfloat(0u);
        _606 = asfloat(0u);
        _607 = asfloat(0u);
        _608 = asfloat(0u);
        _609 = asfloat(0u);
        _610 = asfloat(0u);
        _611 = asfloat(0u);
    }
    float _615 = ((-0.0f) - TEXCOORD_2.w) + _607;
    float _616 = ((-0.0f) - TEXCOORD_3.w) + _608;
    float _617 = ((-0.0f) - TEXCOORD_4.w) + _609;
    float _621 = max(dot(float3(_615, _616, _617), float3(_615, _616, _617)), 1.1754943508222875079687365372222e-38f);
    float _622 = rsqrt(_621);
    float _623 = _622 * _615;
    float _624 = _622 * _616;
    float _625 = _622 * _617;
    float _630 = max(((-0.0f) - (_621 / (_606 * _606))) + 1.0f, 0.0f);
    float _648 = mad(_630, _603 + ((-0.0f) - CB0_m0[189u].x), CB0_m0[189u].x);
    float _649 = mad(_630, _604 + ((-0.0f) - CB0_m0[189u].y), CB0_m0[189u].y);
    float _650 = mad(_630, _605 + ((-0.0f) - CB0_m0[189u].z), CB0_m0[189u].z);
    float _652 = mad(_630, _630 + (-1.0f), 1.0f);
    float _1257;
    float _1258;
    if (0.5f < CB0_m0[22u].x)
    {
        float _700 = mad(_342, CB4_m0[135u].x, TEXCOORD_2.w) + ((-0.0f) - CB3_m0[39u].x);
        float _701 = mad(_343, CB4_m0[135u].x, TEXCOORD_3.w) + ((-0.0f) - CB3_m0[39u].y);
        float _702 = mad(_344, CB4_m0[135u].x, TEXCOORD_4.w) + ((-0.0f) - CB3_m0[39u].z);
        float _738 = mad(CB3_m0[35u].z, _702, mad(CB3_m0[33u].z, _700, _701 * CB3_m0[34u].z)) + CB3_m0[36u].z;
        float _748 = mad(mad(CB3_m0[35u].x, _702, mad(CB3_m0[33u].x, _700, _701 * CB3_m0[34u].x)) + CB3_m0[36u].x, CB3_m0[38u].x, CB3_m0[38u].z);
        float _749 = mad(mad(CB3_m0[35u].y, _702, mad(CB3_m0[33u].y, _700, _701 * CB3_m0[34u].y)) + CB3_m0[36u].y, CB3_m0[38u].y, CB3_m0[38u].w);
        float _832 = ((((((T9.SampleCmpLevelZero(S1, float2(_748 + ((-0.0f) - CB0_m0[200u].x), _749 + ((-0.0f) - CB0_m0[200u].y)), _738).xxxx.x + T9.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, -1.0f, _748), mad(CB0_m0[200u].y, 1.0f, _749)), _738).xxxx.x) + T9.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 1.0f, _748), mad(CB0_m0[200u].y, -1.0f, _749)), _738).xxxx.x) + T9.SampleCmpLevelZero(S1, float2(_748 + CB0_m0[200u].x, _749 + CB0_m0[200u].y), _738).xxxx.x) + T9.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, -1.4142129421234130859375f, _748), mad(CB0_m0[200u].y, 0.0f, _749)), _738).xxxx.x) + T9.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 1.4142129421234130859375f, _748), mad(CB0_m0[200u].y, 0.0f, _749)), _738).xxxx.x) + T9.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 0.0f, _748), mad(CB0_m0[200u].y, -1.4142129421234130859375f, _749)), _738).xxxx.x) + T9.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 0.0f, _748), mad(CB0_m0[200u].y, 1.4142129421234130859375f, _749)), _738).xxxx.x;
        float _855 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[20u].x);
        float _856 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[20u].y);
        float _857 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[20u].z);
        float _867 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[21u].x);
        float _868 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[21u].y);
        float _869 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[21u].z);
        float _878 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[22u].x);
        float _879 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[22u].y);
        float _880 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[22u].z);
        float _890 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[23u].x);
        float _891 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[23u].y);
        float _892 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[23u].z);
        bool _912 = dot(float3(_855, _856, _857), float3(_855, _856, _857)) < CB2_m0[24u].x;
        bool _913 = dot(float3(_867, _868, _869), float3(_867, _868, _869)) < CB2_m0[24u].y;
        bool _914 = dot(float3(_878, _879, _880), float3(_878, _879, _880)) < CB2_m0[24u].z;
        float _946 = ((-0.0f) - dot(float4(asfloat((_912 ? 4294967295u : 0u) & 1065353216u), max(asfloat(_912 ? 3212836864u : 2147483648u) + asfloat((_913 ? 4294967295u : 0u) & 1065353216u), 0.0f), max(asfloat(_913 ? 3212836864u : 2147483648u) + asfloat((_914 ? 4294967295u : 0u) & 1065353216u), 0.0f), max(asfloat(_914 ? 3212836864u : 2147483648u) + asfloat(((dot(float3(_890, _891, _892), float3(_890, _891, _892)) < CB2_m0[24u].w) ? 4294967295u : 0u) & 1065353216u), 0.0f)), float4(4.0f, 3.0f, 2.0f, 1.0f))) + 4.0f;
        uint _948 = uint(_946) << 2u;
        uint _951 = _948 + 1u;
        uint _970 = _948 + 2u;
        uint _981 = _948 + 3u;
        float _987 = mad(CB2_m0[_970].x, TEXCOORD_4.w, mad(CB2_m0[_948].x, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_951].x)) + CB2_m0[_981].x;
        float _988 = mad(CB2_m0[_970].y, TEXCOORD_4.w, mad(CB2_m0[_948].y, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_951].y)) + CB2_m0[_981].y;
        float _989 = mad(CB2_m0[_970].z, TEXCOORD_4.w, mad(CB2_m0[_948].z, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_951].z)) + CB2_m0[_981].z;
        float _1003 = frac(sin(dot(float2(frac(_987 * 1024.0f), frac(_988 * 1024.0f)), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
        float _1004 = sin(_1003);
        float _1005 = cos(_1003);
        float _1016 = (CB2_m0[26u].x * 1.2999999523162841796875f) * _1004;
        float _1017 = (CB2_m0[26u].x * 1.2999999523162841796875f) * _1005;
        float _1018 = (CB2_m0[26u].y * 1.2999999523162841796875f) * _1004;
        float _1019 = (CB2_m0[26u].y * 1.2999999523162841796875f) * _1005;
        float _1115 = T0.SampleCmpLevelZero(S1, float3(_987 + ((_1017 * 0.4792999923229217529296875f) + (_1016 * (-0.6417000293731689453125f))), _988 + ((_1019 * (-0.6417000293731689453125f)) + (_1018 * 0.4792999923229217529296875f)), _946), _989).xxxx.x + (T0.SampleCmpLevelZero(S1, float3(_987 + ((_1017 * 0.83910000324249267578125f) + (_1016 * (-0.1507000029087066650390625f))), _988 + ((_1019 * (-0.1507000029087066650390625f)) + (_1018 * 0.83910000324249267578125f)), _946), _989).xxxx.x + (T0.SampleCmpLevelZero(S1, float3(_987 + ((_1017 * 0.419600009918212890625f) + (_1016 * 0.278299987316131591796875f)), _988 + ((_1019 * (-0.278299987316131591796875f)) + (_1018 * 0.419600009918212890625f)), _946), _989).xxxx.x + (T0.SampleCmpLevelZero(S1, float3(_987 + ((_1017 * (-0.037399999797344207763671875f)) + (_1016 * (-0.96829998493194580078125f))), _988 + ((_1019 * 0.96829998493194580078125f) + (_1018 * (-0.037399999797344207763671875f))), _946), _989).xxxx.x + (T0.SampleCmpLevelZero(S1, float3(_987 + ((_1017 * 0.484600007534027099609375f) + (_1016 * 0.874700009822845458984375f)), _988 + ((_1019 * (-0.874700009822845458984375f)) + (_1018 * 0.484600007534027099609375f)), _946), _989).xxxx.x + T0.SampleCmpLevelZero(S1, float3(_987 + ((_1017 * (-0.97829997539520263671875f)) + (_1016 * (-0.172399997711181640625f))), _988 + ((_1019 * 0.172399997711181640625f) + (_1018 * (-0.97829997539520263671875f))), _946), _989).xxxx.x))));
        float _1196 = (T0.SampleCmpLevelZero(S1, float3(_987 + ((_1017 * 0.06610000133514404296875f) + (_1016 * (-0.20659999549388885498046875f))), _988 + ((_1019 * (-0.20659999549388885498046875f)) + (_1018 * 0.06610000133514404296875f)), _946), _989).xxxx.x + (T0.SampleCmpLevelZero(S1, float3(_987 + ((_1017 * (-0.446399986743927001953125f)) + (_1016 * 0.105300001800060272216796875f)), _988 + ((_1019 * 0.105300001800060272216796875f) + (_1018 * (-0.446399986743927001953125f))), _946), _989).xxxx.x + (T0.SampleCmpLevelZero(S1, float3(_987 + ((_1017 * (-0.19189999997615814208984375f)) + (_1016 * 0.704400002956390380859375f)), _988 + ((_1019 * 0.704400002956390380859375f) + (_1018 * (-0.19189999997615814208984375f))), _946), _989).xxxx.x + (T0.SampleCmpLevelZero(S1, float3(_987 + ((_1017 * (-0.4587999880313873291015625f)) + (_1016 * (-0.5408999919891357421875f))), _988 + ((_1019 * 0.5408999919891357421875f) + (_1018 * (-0.4587999880313873291015625f))), _946), _989).xxxx.x + (T0.SampleCmpLevelZero(S1, float3(_987 + ((_1017 * (-0.81610000133514404296875f)) + (_1016 * 0.577899992465972900390625f)), _988 + ((_1019 * 0.577899992465972900390625f) + (_1018 * (-0.81610000133514404296875f))), _946), _989).xxxx.x + _1115))))) * CB2_m0[25u].x;
        float _1221 = clamp(mad(_610, 2.0f, -1.0f), 0.0f, 1.0f);
        float _1225 = _1221 * CB0_m0[189u].w;
        float _1235 = (mad(CB3_m0[40u].y, ((-0.0f) - _611) + 1.0f, _611) * asfloat(((((0.0f >= _989) ? 4294967295u : 0u) | ((_989 >= 1.0f) ? 4294967295u : 0u)) != 0u) ? 1065353216u : asuint(mad(_1196, 0.090899996459484100341796875f, ((-0.0f) - CB2_m0[25u].x) + 1.0f)))) * asfloat((0.5f < CB3_m0[37u].x) ? asuint(min(mad(_1221, (asfloat(_464 ? asuint(CB4_m0[163u]).w : (_466 ? asuint(CB4_m0[163u]).z : (_468 ? asuint(CB4_m0[163u]).y : (_470 ? asuint(CB4_m0[163u]).x : asuint(CB4_m0[162u]).w)))) * mad(T9.SampleCmpLevelZero(S1, float2(_748, _749), _738).xxxx.x + _832, 0.11110000312328338623046875f, -1.0f)) * CB3_m0[37u].x, 1.0f), 1.0f)) : 1065353216u);
        _1257 = mad(_1235, _1225 * CB4_m0[133u].z, mad((-0.0f) - _1225, CB4_m0[133u].z, 1.0f));
        _1258 = mad(_1235, CB4_m0[133u].z, ((-0.0f) - CB4_m0[133u].z) + 1.0f);
    }
    else
    {
        _1257 = asfloat(1065353216u);
        _1258 = asfloat(1065353216u);
    }
    float _1264 = clamp(CB3_m0[1u].w * 2.5f, 0.0f, 1.0f);
    float _1267 = mad(((-0.0f) - _1264) + 1.0f, _1257, _1264);
    bool _1271 = CB3_m0[3u].w != 0.0f;
    float _1285 = clamp(dot(float3(CB3_m0[3u].xyz), float3(TEXCOORD_2.w, TEXCOORD_3.w, TEXCOORD_4.w)) + ((-0.0f) - CB3_m0[3u].w), 0.0f, 1.0f);
    float _1336 = asfloat(_1271 ? asuint(mad(_1285, ((-0.0f) - _648) + mad(CB0_m0[15u].w, mad((-0.0f) - _648, CB0_m0[15u].x, _648 + CB0_m0[15u].x), _648 * CB0_m0[15u].x), _648)) : asuint(_648));
    float _1338 = asfloat(_1271 ? asuint(mad(_1285, ((-0.0f) - _649) + mad(CB0_m0[15u].w, mad((-0.0f) - _649, CB0_m0[15u].y, _649 + CB0_m0[15u].y), _649 * CB0_m0[15u].y), _649)) : asuint(_649));
    float _1340 = asfloat(_1271 ? asuint(mad(_1285, ((-0.0f) - _650) + mad(CB0_m0[15u].w, mad((-0.0f) - _650, CB0_m0[15u].z, _650 + CB0_m0[15u].z), _650 * CB0_m0[15u].z), _650)) : asuint(_650));
    float _1341 = max(asfloat(_464 ? asuint(CB4_m0[134u]).w : (_466 ? asuint(CB4_m0[134u]).z : (_468 ? asuint(CB4_m0[134u]).y : (_470 ? asuint(CB4_m0[134u]).x : asuint(CB4_m0[133u]).w)))), 9.9999997473787516355514526367188e-06f);
    float _1343 = 1.0f / _1341;
    float _1344 = dot(float3(_342, _343, _344), float3(_623, _624, _625));
    float _1361 = mad(mad(clamp(_283.z, 0.0f, 1.0f), 2.0f, -1.0f), 2.0f, mad(TEXCOORD_7.y, ((-0.0f) - _1344) + mad(_1344 + 1.0f, clamp(mad((-0.0f) - min(_624 * 3.0f, 1.0f), 0.5f, _343) + 1.5f, 0.0f, 1.0f), -1.0f), _1344));
    float _1374 = mad((-0.0f) - _1341, 3.0f, 2.0f);
    float _1375 = ((_1361 * 3.0f) + 3.0f) / _1374;
    float _1376 = (mad(_1361, 3.0f, (-0.0f) - (_1341 * 1.5f)) + 1.0f) / _1374;
    float _1377 = (mad(_1361, 3.0f, (-0.0f) - (_1341 * 4.5f)) + (-1.0f)) / _1374;
    float _1389 = mad(_1343, _1361 + 0.33329999446868896484375f, 0.5f);
    float _1390 = mad(_1343, _1361 + (-0.33329999446868896484375f), 0.5f);
    float _1391 = mad(_1343, _1361 + (-0.33329999446868896484375f), -0.5f);
    float _1402 = clamp(((-0.0f) - _1375) + 1.0f, 0.0f, 1.0f);
    float _1403 = clamp(min(_1375, ((-0.0f) - _1389) + 1.0f), 0.0f, 1.0f);
    float _1404 = clamp(min(((-0.0f) - _1376) + 1.0f, _1389), 0.0f, 1.0f);
    float _1408 = clamp(min(((-0.0f) - _1377) + 1.0f, _1391), 0.0f, 1.0f);
    float _1409 = clamp(_1377, 0.0f, 1.0f);
    float _1415 = mad(CB3_m0[40u].y, ((-0.0f) - _1267) + _1258, _1267);
    float _1422 = clamp(min(mad(_1415, -2.0f, 2.0f), mad(_1415, 2.0f, 0.0f)), 0.0f, 1.0f);
    float _1423 = clamp(mad(_1415, 2.0f, -1.0f), 0.0f, 1.0f);
    float _1424 = clamp(mad(_1415, -2.0f, 1.0f), 0.0f, 1.0f);
    float _1496;
    float _1498;
    float _1500;
    if (0.5f < CB3_m0[40u].y)
    {
        float _1463;
        if (_532)
        {
            _1463 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _1463 = asfloat(0u);
        }
        float _1467 = _1463 * CB0_m0[189u].w;
        float _1468 = _1467 * _1422;
        float _1474 = (mad((-0.0f) - _1422, _1467, _1422) + mad((-0.0f) - _1424, _1467, _1424)) + _1423;
        float _1812;
        if (_532)
        {
            _1812 = asfloat(T1.Load((uint(max(int(uint(min(int(asuint(CB0_m0[188u]).z + 4294967295u), int(uint(int(CB3_m0[2u].z)))))), int(0u))) * 32u) + 7u).x);
        }
        else
        {
            _1812 = asfloat(0u);
        }
        _1496 = _1812 * _1468;
        _1498 = _1812 * _1474;
        _1500 = mad(_1424, _1467, mad((-0.0f) - _1474, _1812, _1474) + mad((-0.0f) - _1468, _1812, _1468));
    }
    else
    {
        float _1475;
        if (_532)
        {
            _1475 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _1475 = asfloat(0u);
        }
        _1496 = _1475 * _1422;
        _1498 = _1423;
        _1500 = _1475 * _1424;
    }
    float _1508 = mad(_1500, ((-0.0f) - _1404) + (((-0.0f) - _1403) + (((-0.0f) - _1402) + 1.0f)), _1404);
    float _1509 = _1498 + _1496;
    float _1510 = _1509 * clamp(min(_1376, ((-0.0f) - _1390) + 1.0f), 0.0f, 1.0f);
    float _1513 = mad(_1409 + _1408, _1496, _1509 * clamp(min(_1390, ((-0.0f) - _1391) + 1.0f), 0.0f, 1.0f));
    float _1514 = _1408 * _1498;
    float _1517 = _1402 * TEXCOORD_7.x;
    float _1522 = mad((-0.0f) - _1402, TEXCOORD_7.x, _1402) + _1403;
    uint4 _1526 = asuint(CB4_m0[60u]);
    uint4 _1533 = asuint(CB4_m0[59u]);
    uint4 _1543 = asuint(CB4_m0[61u]);
    uint4 _1553 = asuint(CB4_m0[62u]);
    uint4 _1563 = asuint(CB4_m0[63u]);
    uint4 _1576 = asuint(CB4_m0[65u]);
    uint4 _1583 = asuint(CB4_m0[64u]);
    uint4 _1593 = asuint(CB4_m0[66u]);
    uint4 _1603 = asuint(CB4_m0[67u]);
    uint4 _1613 = asuint(CB4_m0[68u]);
    uint4 _1626 = asuint(CB0_m0[10u]);
    uint4 _1632 = asuint(CB0_m0[3u]);
    uint4 _1645 = asuint(CB0_m0[11u]);
    uint4 _1651 = asuint(CB0_m0[4u]);
    uint4 _1664 = asuint(CB0_m0[12u]);
    uint4 _1671 = asuint(CB0_m0[5u]);
    uint4 _1684 = asuint(CB0_m0[9u]);
    uint4 _1691 = asuint(CB0_m0[6u]);
    uint4 _1704 = asuint(CB0_m0[13u]);
    uint4 _1710 = asuint(CB0_m0[7u]);
    uint4 _1720 = asuint(CB0_m0[14u]);
    uint4 _1726 = asuint(CB0_m0[8u]);
    float _1738 = min(_526 * 0.4372499883174896240234375f, 1.0f);
    float _1754 = mad(CB4_m0[133u].y, mad(_1738, CB3_m0[1u].w, (-0.0f) - _1738) + 1.0f, 0.0f);
    float _1755 = mad(CB4_m0[133u].y, mad((-0.0f) - _1738, CB3_m0[1u].w, _1738) + (-1.0f), 1.0f);
    float _1756 = asfloat(_464 ? _1563.x : (_466 ? _1553.x : (_468 ? _1543.x : (_470 ? _1526.x : _1533.x)))) + 6.103515625e-05f;
    float _1758 = asfloat(_464 ? _1563.y : (_466 ? _1553.y : (_468 ? _1543.y : (_470 ? _1526.y : _1533.y)))) + 6.103515625e-05f;
    float _1759 = asfloat(_464 ? _1563.z : (_466 ? _1553.z : (_468 ? _1543.z : (_470 ? _1526.z : _1533.z)))) + 6.103515625e-05f;
    float _1762 = (_1759 + (_1758 + _1756)) * 0.3333300054073333740234375f;
    float _1773 = mad(clamp(_1756 / _1762, 0.0f, 1.0f), _1754, _1755 * _1756);
    float _1774 = mad(clamp(_1758 / _1762, 0.0f, 1.0f), _1754, _1755 * _1758);
    float _1775 = mad(clamp(_1759 / _1762, 0.0f, 1.0f), _1754, _1755 * _1759);
    float _1776 = asfloat(_464 ? _1613.x : (_466 ? _1603.x : (_468 ? _1593.x : (_470 ? _1576.x : _1583.x)))) + 6.103515625e-05f;
    float _1777 = asfloat(_464 ? _1613.y : (_466 ? _1603.y : (_468 ? _1593.y : (_470 ? _1576.y : _1583.y)))) + 6.103515625e-05f;
    float _1778 = asfloat(_464 ? _1613.z : (_466 ? _1603.z : (_468 ? _1593.z : (_470 ? _1576.z : _1583.z)))) + 6.103515625e-05f;
    float _1781 = (_1778 + (_1777 + _1776)) * 0.3333300054073333740234375f;
    float _1791 = mad(clamp(_1776 / _1781, 0.0f, 1.0f), _1754, _1755 * _1776);
    float _1792 = mad(clamp(_1777 / _1781, 0.0f, 1.0f), _1754, _1755 * _1777);
    float _1793 = mad(clamp(_1778 / _1781, 0.0f, 1.0f), _1754, _1755 * _1778);
    float _1835;
    if (_532)
    {
        _1835 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
    }
    else
    {
        _1835 = asfloat(0u);
    }
    float _1838 = mad(_1835, ((-0.0f) - _652) + 1.0f, _652);
    float _1839 = _1838 * _1336;
    float _1840 = _1838 * _1338;
    float _1841 = _1838 * _1340;
    float _1842 = min(1.0f / max(_1340 + 1.1754943508222875079687365372222e-38f, max(_1338 + 1.1754943508222875079687365372222e-38f, _1336 + 1.1754943508222875079687365372222e-38f)), 1.0f);
    float _1873 = mad(_1839, mad(_1409, _1498, mad(asfloat(_412 ? _1704.x : _1710.x), _1513, _1514 * asfloat(_412 ? _1684.x : _1691.x))), (_1842 * _1839) * mad(asfloat(_412 ? _1626.x : _1632.x) * _1773, _1510, mad(asfloat(_412 ? _1645.x : _1651.x) * _1773, _1508, mad(asfloat(_412 ? _1720.x : _1726.x) * _1791, _1517, _1522 * (asfloat(_412 ? _1664.x : _1671.x) * _1791)))));
    float _1874 = mad(_1840, mad(_1409, _1498, mad(asfloat(_412 ? _1704.y : _1710.y), _1513, _1514 * asfloat(_412 ? _1684.y : _1691.y))), (_1842 * _1840) * mad(asfloat(_412 ? _1626.y : _1632.y) * _1774, _1510, mad(asfloat(_412 ? _1645.y : _1651.y) * _1774, _1508, mad(asfloat(_412 ? _1720.y : _1726.y) * _1792, _1517, _1522 * (asfloat(_412 ? _1664.y : _1671.y) * _1792)))));
    float _1875 = mad(_1841, mad(_1409, _1498, mad(asfloat(_412 ? _1704.z : _1710.z), _1513, _1514 * asfloat(_412 ? _1684.z : _1691.z))), (_1842 * _1841) * mad(asfloat(_412 ? _1626.z : _1632.z) * _1775, _1510, mad(asfloat(_412 ? _1645.z : _1651.z) * _1775, _1508, mad(asfloat(_412 ? _1720.z : _1726.z) * _1793, _1517, _1522 * (asfloat(_412 ? _1664.z : _1671.z) * _1793)))));
    bool _1878 = 0.5f < TEXCOORD_7.z;
    float _1992;
    float _1993;
    float _1994;
    if (_413 == 0u)
    {
        float _1889 = dot(float3(_459, _461, _463), float3(0.2899999916553497314453125f, 0.60000002384185791015625f, 0.10999999940395355224609375f));
        bool _1896 = TEXCOORD_7.z < 0.5f;
        float _1897 = mad(_1889, 0.2874999940395355224609375f, 1.4375f);
        float _1900 = mad(_1889, 0.4000000059604644775390625f, 1.0f);
        float _1901 = dot(float3(_623, _624, _625), float3(_1878 ? _342 : TEXCOORD_2.x, _1878 ? _343 : TEXCOORD_2.y, _1878 ? _344 : TEXCOORD_2.z));
        float _1908 = clamp(mad((-0.0f) - (((-0.0f) - _1344) + _1901), 3.0f, 1.0f), 0.0f, 1.0f);
        float _1914 = clamp(_1344, 0.0f, 1.0f);
        float _1918 = clamp(_1901, 0.0f, 1.0f);
        float _1920 = max(_459, max(_463, _461));
        bool _1921 = 1.0f < _1920;
        float _1936 = mad(mad(mad(mad(_1344, 0.5f, 0.5f), min(sqrt(_1908) * (_1908 + _1908), 1.0f), (-0.0f) - _1914), 0.5f, _1914), ((-0.0f) - _1897) + 1.0f, _1897);
        float _1943 = exp2(_1936 * log2(asfloat(_1921 ? asuint(_459 / _1920) : _458)));
        float _1944 = exp2(_1936 * log2(asfloat(_1921 ? asuint(_461 / _1920) : _460)));
        float _1945 = exp2(_1936 * log2(asfloat(_1921 ? asuint(_463 / _1920) : _462)));
        float _1952 = mad(((-0.0f) - _459) + _1943, 0.5f, _459);
        float _1953 = mad(((-0.0f) - _461) + _1944, 0.5f, _461);
        float _1954 = mad(((-0.0f) - _463) + _1945, 0.5f, _463);
        float _1965 = mad((-0.0f) - _1889, 0.0500000007450580596923828125f, 1.0499999523162841796875f);
        _1992 = asfloat(_1896 ? asuint(mad(_1918, _1945 + ((-0.0f) - _1954), _1954)) : asuint(_1965 * exp2(_1900 * log2(_463))));
        _1993 = asfloat(_1896 ? asuint(mad(_1918, _1944 + ((-0.0f) - _1953), _1953)) : asuint(_1965 * exp2(_1900 * log2(_461))));
        _1994 = asfloat(_1896 ? asuint(mad(_1918, _1943 + ((-0.0f) - _1952), _1952)) : asuint(_1965 * exp2(_1900 * log2(_459))));
    }
    else
    {
        _1992 = _463;
        _1993 = _461;
        _1994 = _459;
    }
    float _1996 = mad((-0.0f) - _360, 0.959999978542327880859375f, 0.959999978542327880859375f);
    float _1998 = _1996 * _1994;
    float _1999 = _1996 * _1993;
    float _2000 = _1996 * _1992;
    float _2005 = mad(_360, _1994 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _2007 = mad(_360, _1993 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _2008 = mad(_360, _1992 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _2013 = mad((-0.0f) - _370, CB4_m0[137u].w, 1.0f);
    float _2014 = _2013 * _2013;
    float _2035 = dot(float3((_1873 + CB0_m0[2u].x) + TEXCOORD_8.x, (_1874 + CB0_m0[2u].y) + TEXCOORD_8.y, (_1875 + CB0_m0[2u].z) + TEXCOORD_8.z), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2049 = ((-0.0f) - CB0_m0[19u].x) + CB0_m0[19u].y;
    float _2050 = 1.0f / _2049;
    float _2073 = asfloat((_2035 < CB0_m0[19u].x) ? asuint(_2035) : asuint(mad((-0.0f) - _2049, 1.0f / mad(_2035, _2050, mad((-0.0f) - CB0_m0[19u].x, _2050, 1.0f)), CB0_m0[19u].y))) / (_2035 + 9.9999997473787516355514526367188e-05f);
    float _2074 = _1873 * _2073;
    float _2075 = _1874 * _2073;
    float _2076 = _1875 * _2073;
    uint4 _2080 = asuint(CB4_m0[75u]);
    uint4 _2087 = asuint(CB4_m0[74u]);
    uint4 _2097 = asuint(CB4_m0[76u]);
    uint4 _2107 = asuint(CB4_m0[77u]);
    uint4 _2117 = asuint(CB4_m0[78u]);
    float _2153 = asfloat(_464 ? asuint(CB4_m0[142u]).y : (_466 ? asuint(CB4_m0[142u]).x : (_468 ? asuint(CB4_m0[141u]).w : (_470 ? asuint(CB4_m0[141u]).z : asuint(CB4_m0[141u]).y))));
    float _2205;
    if (0.5f < _2153)
    {
        float _2156 = clamp(mad(_1361, 1.5f, -0.5f), 0.0f, 1.0f);
        float _2183 = mad(_615, _622, _523);
        float _2184 = mad(_616, _622, _524);
        float _2185 = mad(_617, _622, _525);
        float _2189 = rsqrt(dot(float3(_2183, _2184, _2185), float3(_2183, _2184, _2185)));
        _2205 = clamp((((-0.0f) - mad((-0.0f) - (_2156 * _2156), clamp(dot(float3(_342, _343, _344), float3(_2189 * _2183, _2189 * _2184, _2189 * _2185)), 0.0f, 1.0f), 1.0f)) + _354) / max(asfloat(_464 ? asuint(CB4_m0[143u]).z : (_466 ? asuint(CB4_m0[143u]).y : (_468 ? asuint(CB4_m0[143u]).x : (_470 ? asuint(CB4_m0[142u]).w : asuint(CB4_m0[142u]).z)))), 9.9999997473787516355514526367188e-06f), 0.0f, 1.0f);
    }
    else
    {
        _2205 = _354;
    }
    float _2209 = _2205 * CB4_m0[143u].w;
    float _2217 = mad(_615, _622, _523);
    float _2218 = mad(_616, _622, _524);
    float _2219 = mad(_617, _622, _525);
    float _2223 = rsqrt(dot(float3(_2217, _2218, _2219), float3(_2217, _2218, _2219)));
    float _2224 = _2223 * _2217;
    float _2225 = _2223 * _2218;
    float _2226 = _2223 * _2219;
    float _2252 = asfloat(_464 ? asuint(CB4_m0[141u]).x : (_466 ? asuint(CB4_m0[140u]).w : (_468 ? asuint(CB4_m0[140u]).z : (_470 ? asuint(CB4_m0[140u]).y : asuint(CB4_m0[140u]).x))));
    float _2257 = clamp(mad(_1344 * _2252, 0.75f, 0.25f), 0.0f, 1.0f);
    float _2263 = clamp(mad(_2252 * dot(float3(_342, _343, _344), float3(_2224, _2225, _2226)), 0.75f, 0.25f), 0.0f, 1.0f);
    float _2269 = clamp(mad(_2252 * dot(float3(_623, _624, _625), float3(_2224, _2225, _2226)), 0.75f, 0.25f), 0.0f, 1.0f);
    float _2271 = mad(_2263 * _2263, mad(_2014, _2014, -1.0f), 1.000010013580322265625f);
    float _2275 = max(_2269 * _2269, 0.100000001490116119384765625f);
    float _2345 = (((_2257 * clamp(mad((-0.0f) - _370, CB4_m0[137u].w, (_2014 * _2014) / (mad(_2014, 4.0f, 2.0f) * (_2275 * (_2271 * _2271)))), 0.0f, 1.0f)) / max(_2014, 9.9999997473787516355514526367188e-06f)) * (asfloat(_464 ? asuint(CB4_m0[139u]).w : (_466 ? asuint(CB4_m0[139u]).z : (_468 ? asuint(CB4_m0[139u]).y : (_470 ? asuint(CB4_m0[139u]).x : asuint(CB4_m0[138u]).w)))) * asfloat(_464 ? asuint(CB4_m0[166u]).w : (_466 ? asuint(CB4_m0[166u]).z : (_468 ? asuint(CB4_m0[166u]).y : (_470 ? asuint(CB4_m0[166u]).x : asuint(CB4_m0[165u]).w)))))) * 10.0f;
    float _2358 = asfloat((_2153 < 0.5f) ? asuint(clamp(_2345, 0.0f, 1.0f) * 100.0f) : asuint((_2257 * min(0.16666333377361297607421875f / _2275, 1.0f)) * 100.0f));
    float _2359 = (_2005 * (asfloat(_464 ? _2117.x : (_466 ? _2107.x : (_468 ? _2097.x : (_470 ? _2080.x : _2087.x)))) * _2209)) * _2358;
    float _2360 = (_2007 * (asfloat(_464 ? _2117.y : (_466 ? _2107.y : (_468 ? _2097.y : (_470 ? _2080.y : _2087.y)))) * _2209)) * _2358;
    float _2361 = (_2008 * (asfloat(_464 ? _2117.z : (_466 ? _2107.z : (_468 ? _2097.z : (_470 ? _2080.z : _2087.z)))) * _2209)) * _2358;
    uint _2378 = (CB4_m0[144u].x >= 0.5f) ? 4294967295u : 0u;
    uint4 _2382 = asuint(CB4_m0[80u]);
    uint4 _2389 = asuint(CB4_m0[79u]);
    uint4 _2399 = asuint(CB4_m0[81u]);
    uint4 _2409 = asuint(CB4_m0[82u]);
    uint4 _2419 = asuint(CB4_m0[83u]);
    float _2439 = asfloat(_2378 & asuint(_1994 * (_397 * asfloat(_464 ? _2419.x : (_466 ? _2409.x : (_468 ? _2399.x : (_470 ? _2382.x : _2389.x)))))));
    float _2441 = asfloat(_2378 & asuint(_1993 * (_397 * asfloat(_464 ? _2419.y : (_466 ? _2409.y : (_468 ? _2399.y : (_470 ? _2382.y : _2389.y)))))));
    float _2443 = asfloat(_2378 & asuint(_1992 * (_397 * asfloat(_464 ? _2419.z : (_466 ? _2409.z : (_468 ? _2399.z : (_470 ? _2382.z : _2389.z)))))));
    float _2445 = _2443 + (_2441 + _2439);
    float _2452 = _2073 * TEXCOORD_8.x;
    float _2453 = _2073 * TEXCOORD_8.y;
    float _2454 = _2073 * TEXCOORD_8.z;
    float _2504;
    float _2505;
    float _2506;
    uint _2507;
    uint _2508;
    uint _2509;
    if (_532)
    {
        uint _2468 = uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u)));
        uint _2470 = (_2468 * 32u) + 24u;
        uint3 _2480 = uint3(T1.Load(_2470).x, T1.Load(_2470 + 1u).x, T1.Load(_2470 + 2u).x);
        uint _2488 = (_2468 * 32u) + 28u;
        uint3 _2497 = uint3(T1.Load(_2488).x, T1.Load(_2488 + 1u).x, T1.Load(_2488 + 2u).x);
        _2504 = asfloat(_2480.x);
        _2505 = asfloat(_2480.y);
        _2506 = asfloat(_2480.z);
        _2507 = _2497.x;
        _2508 = _2497.y;
        _2509 = _2497.z;
    }
    else
    {
        _2504 = asfloat(0u);
        _2505 = asfloat(0u);
        _2506 = asfloat(0u);
        _2507 = 0u;
        _2508 = 0u;
        _2509 = 0u;
    }
    bool _2513 = 0.5f < CB0_m0[23u].y;
    bool _2514 = _414 != 0u;
    float _2607;
    float _2609;
    float _2611;
    if (0.5f >= CB0_m0[188u].w)
    {
        float _2546 = clamp(mad((-0.0f) - dot(float3(_523, _524, _525), float3(_623, _624, _625)), 0.5f, 0.5f), 0.0f, 1.0f);
        float _2548 = mad(_343, 0.5f, 0.5f);
        float _2557 = clamp((asfloat((_414 != 0u) ? asuint(_2548) : asuint(_2548 * _2548)) + (-0.20000000298023223876953125f)) * 1.25f, 0.0f, 1.0f);
        float _2560 = (_2557 * _2557) * mad(_2557, -2.0f, 3.0f);
        float _2561 = _2560 * _2560;
        bool _2564 = _414 != 0u;
        float _2642;
        if (_532)
        {
            _2642 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _2642 = asfloat(0u);
        }
        float _2671 = min(_526 * 0.083333335816860198974609375f, 1.0f);
        float _2679 = ((-0.0f) - dot(float3(_523, _524, _525), float3(_342, _343, _344))) + 1.0f;
        float _2688 = clamp((((-0.0f) - mad(_2671, -0.300000011920928955078125f, 0.5f)) + _2679) * 3.3333332538604736328125f, 0.0f, 1.0f);
        float _2689 = clamp((((-0.0f) - mad(_2671, -0.300000011920928955078125f, 0.60000002384185791015625f)) + _2679) * 5.000000476837158203125f, 0.0f, 1.0f);
        float _2720 = CB0_m0[189u].x * CB0_m0[189u].x;
        float _2721 = CB0_m0[189u].y * CB0_m0[189u].y;
        float _2722 = CB0_m0[189u].z * CB0_m0[189u].z;
        float _2723 = _2720 * _2720;
        float _2724 = _2721 * _2721;
        float _2725 = _2722 * _2722;
        float _2726 = _2723 * _2723;
        float _2727 = _2724 * _2724;
        float _2728 = _2725 * _2725;
        float _2735 = dot(float3(CB0_m0[189u].xyz), 0.3300000131130218505859375f.xxx) * (1.0f / (dot(float3(_2726, _2727, _2728), 0.699999988079071044921875f.xxx) + 9.9999997473787516355514526367188e-06f));
        float _2742 = mad(_1258, mad(_2735, _2726, (-0.0f) - _2074), _2074);
        float _2743 = mad(_1258, mad(_2735, _2727, (-0.0f) - _2075), _2075);
        float _2744 = mad(_1258, mad(_2735, _2728, (-0.0f) - _2076), _2076);
        float _2749 = exp2(log2(_2546 * _2546) * 20.0f);
        float _2773 = mad(_1992, _1996, _1999 + _1998) * 0.3300000131130218505859375f;
        float _2790 = exp2(log2(clamp(_1998, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _2791 = exp2(log2(clamp(_1999, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _2792 = exp2(log2(clamp(_2000, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _2797 = rsqrt(max(dot(float3(_2790, _2791, _2792), float3(_2790, _2791, _2792)), 6.103515625e-05f));
        float _2798 = _2797 * _2790;
        float _2799 = _2797 * _2791;
        float _2800 = _2797 * _2792;
        float _2805 = CB0_m0[198u].w * 48.0f;
        float _2807 = mad((_2773 * _2773) * CB0_m0[199u].w, -0.199999988079071044921875f, 1.0f) * 0.100000001490116119384765625f;
        float _2811 = (-0.0f) - _2807;
        float _2821 = ((clamp(mad(_2642, 0.39999997615814208984375f, _1258) + 0.60000002384185791015625f, 0.0f, 1.0f) * (mad(_1267 * mad(_1344, 0.5f, 0.5f), 1.39999997615814208984375f, 0.100000001490116119384765625f) * (mad(_2546, 0.800000011920928955078125f, 0.20000000298023223876953125f) * mad(CB0_m0[199u].x, mad(_2560, mad(_2560 * (_2561 * _2561), asfloat(_2564 ? 3212836864u : 3204448256u) + asfloat(_2564 ? 1050253722u : 1065353216u), asfloat(_2564 ? 1065353216u : 1056964608u)), -0.100000001490116119384765625f), 0.100000001490116119384765625f)))) * mad(CB0_m0[199u].y, mad(clamp((-0.0f) - _524, 0.0f, 1.0f), asfloat((0.0f != TEXCOORD_7.z) ? 1083179008u : asuint(mad(_356, CB4_m0[137u].z, 2.5f))), -0.5f), 1.0f)) * asfloat((_414 != 0u) ? asuint((_2688 * _2688) * mad(_2688, -2.0f, 3.0f)) : asuint((_2689 * _2689) * mad(_2689, -2.0f, 3.0f)));
        uint4 _2831 = asuint(CB4_m0[87u]);
        uint4 _2838 = asuint(CB4_m0[86u]);
        uint4 _2848 = asuint(CB4_m0[88u]);
        uint4 _2858 = asuint(CB4_m0[89u]);
        uint4 _2868 = asuint(CB4_m0[90u]);
        float _2880 = ((_2805 * mad(_360, mad(_2811, _2800, _2008), _2800 * _2807)) * (mad(CB0_m0[199u].z, mad((-0.0f) - _1875, _2073, mad(_2749, mad(_1875, _2073, (-0.0f) - _2744), _2744)), _2076) * _2821)) * asfloat(_464 ? _2868.z : (_466 ? _2858.z : (_468 ? _2848.z : (_470 ? _2831.z : _2838.z))));
        float _2883 = mad(clamp(mad(_526, 0.20000000298023223876953125f, -1.0f), 0.0f, 1.0f), -0.699999988079071044921875f, 1.0f);
        float _2885 = (((_2805 * mad(_360, mad(_2811, _2798, _2005), _2798 * _2807)) * (mad(CB0_m0[199u].z, mad((-0.0f) - _1873, _2073, mad(_2749, mad(_1873, _2073, (-0.0f) - _2742), _2742)), _2074) * _2821)) * asfloat(_464 ? _2868.x : (_466 ? _2858.x : (_468 ? _2848.x : (_470 ? _2831.x : _2838.x))))) * _2883;
        float _2886 = (((_2805 * mad(_360, mad(_2811, _2799, _2007), _2799 * _2807)) * (mad(CB0_m0[199u].z, mad((-0.0f) - _1874, _2073, mad(_2749, mad(_1874, _2073, (-0.0f) - _2743), _2743)), _2075) * _2821)) * asfloat(_464 ? _2868.y : (_466 ? _2858.y : (_468 ? _2848.y : (_470 ? _2831.y : _2838.y))))) * _2883;
        float _2889 = mad(_2880, _2883, _2886 + _2885);
        float _2891 = mad(_2889 * _2889, 0.0500000007450580596923828125f, 1.0f);
        float _2896 = asfloat(_1878 ? 1056964608u : 1065353216u);
        float _2897 = (_2891 * _2885) * _2896;
        float _2898 = (_2891 * _2886) * _2896;
        float _2899 = (_2891 * (_2880 * _2883)) * _2896;
        bool _2903 = 0.5f < CB3_m0[1u].w;
        _2607 = asfloat(_2903 ? asuint(min(_2899, 0.699999988079071044921875f)) : asuint(_2899)) * CB0_m0[198u].z;
        _2609 = asfloat(_2903 ? asuint(min(_2898, 0.699999988079071044921875f)) : asuint(_2898)) * CB0_m0[198u].y;
        _2611 = asfloat(_2903 ? asuint(min(_2897, 0.699999988079071044921875f)) : asuint(_2897)) * CB0_m0[198u].x;
    }
    else
    {
        _2607 = asfloat(0u);
        _2609 = asfloat(0u);
        _2611 = asfloat(0u);
    }
    float _2613 = _2439 + (max(mad(_2359, _2074, -1.0f), 0.0f) + mad(asfloat(_2513 ? 1028443341u : (_2514 ? asuint(_2504) : _2507)), _1994 * _2073, mad(_2452, _1998, mad(_1998, _2074, _2074 * _2359))));
    float _2614 = _2441 + (max(mad(_2360, _2075, -1.0f), 0.0f) + mad(asfloat(_2513 ? 1028443341u : (_2514 ? asuint(_2505) : _2508)), _1993 * _2073, mad(_2453, _1999, mad(_1999, _2075, _2075 * _2360))));
    float _2615 = _2443 + (max(mad(_2361, _2076, -1.0f), 0.0f) + mad(asfloat(_2513 ? 1028443341u : (_2514 ? asuint(_2506) : _2509)), _1992 * _2073, mad(_2454, _2000, mad(_2000, _2076, _2076 * _2361))));
    float _2623 = CB4_m0[29u].w * CB4_m0[155u].w;
    float _2635 = mad(_2623, ((-0.0f) - _2613) + CB4_m0[29u].x, _2613);
    float _2636 = mad(_2623, ((-0.0f) - _2614) + CB4_m0[29u].y, _2614);
    float _2637 = mad(_2623, ((-0.0f) - _2615) + CB4_m0[29u].z, _2615);
    float _3116;
    float _3118;
    float _3120;
    float _3122;
    if (0.5f < CB4_m0[152u].y)
    {
        bool _2928 = CB4_m0[153u].x < 0.5f;
        float _2992 = mad(gl_FragCoord.x, CB0_m0[160u].z, -0.5f);
        float _2993 = mad(gl_FragCoord.y, CB0_m0[160u].w, -0.5f);
        float _3021 = ((-0.0f) - (mad(CB0_m0[118u].z, TEXCOORD_4.w, mad(CB0_m0[116u].z, TEXCOORD_2.w, TEXCOORD_3.w * CB0_m0[117u].z)) + CB0_m0[119u].z)) / CB0_m0[93u].y;
        float _3032 = asfloat((0.5f < CB4_m0[152u].z) ? asuint(mad(CB0_m0[85u].w, mad((-0.0f) - _3021, 0.5f, 1.0f), _3021 * 0.5f)) : 1065353216u);
        float4 _3065 = T7.Sample(S2, float2((mad(_3032 * mad(CB4_m0[125u].z, mad(CB0_m0[118u].x, _344, mad(CB0_m0[116u].x, _342, _343 * CB0_m0[117u].x)), (CB0_m0[160u].w * CB0_m0[160u].x) * (_2992 + _2992)), CB4_m0[47u].x, CB4_m0[47u].z) + 0.5f) + mad(CB4_m0[124u].x, CB0_m0[40u].y, CB4_m0[124u].z), (mad(_3032 * mad(CB4_m0[125u].z, mad(CB0_m0[118u].y, _344, mad(CB0_m0[116u].y, _342, _343 * CB0_m0[117u].y)), _2993 + _2993), CB4_m0[47u].y, CB4_m0[47u].w) + 0.5f) + mad(CB4_m0[124u].y, CB0_m0[40u].y, CB4_m0[124u].w)));
        float _3081 = _3065.w * CB4_m0[109u].w;
        float _3114 = asfloat((0.5f < CB4_m0[153u].z) ? asuint(mad(mad(sin((CB0_m0[40u].y / max(CB4_m0[168u].x, 0.00999999977648258209228515625f)) * 6.283185482025146484375f), 0.5f, 0.5f), ((-0.0f) - CB4_m0[125u].x) + CB4_m0[125u].y, CB4_m0[125u].x)) : 1065353216u);
        float _3115 = _3114 * _3081;
        float _3194;
        float _3195;
        float _3196;
        if (0.5f < CB4_m0[152u].w)
        {
            float _3130 = mad((-0.0f) - _3081, _3114, 1.0f);
            _3194 = _2613 * mad(_3065.x * CB4_m0[109u].x, _3115, _3130);
            _3195 = _2614 * mad(_3065.y * CB4_m0[109u].y, _3115, _3130);
            _3196 = _2615 * mad(_3065.z * CB4_m0[109u].z, _3115, _3130);
        }
        else
        {
            _3194 = mad(_3115, mad(CB4_m0[109u].x, _3065.x, (-0.0f) - _2613), _2613);
            _3195 = mad(_3115, mad(CB4_m0[109u].y, _3065.y, (-0.0f) - _2614), _2614);
            _3196 = mad(_3115, mad(CB4_m0[109u].z, _3065.z, (-0.0f) - _2615), _2615);
        }
        float4 _3219 = T8.Sample(S3, float2(mad(CB0_m0[40u].y, CB4_m0[149u].z, mad(_2928 ? TEXCOORD.x : TEXCOORD_1.x, CB4_m0[48u].x, CB4_m0[48u].z)), mad(CB0_m0[40u].y, CB4_m0[149u].w, mad(_2928 ? TEXCOORD.y : TEXCOORD_1.y, CB4_m0[48u].y, CB4_m0[48u].w))));
        float _3221 = _3219.x;
        _3116 = mad(_3221, ((-0.0f) - _2635) + _3194, _2635);
        _3118 = mad(_3221, ((-0.0f) - _2636) + _3195, _2636);
        _3120 = mad(_3221, ((-0.0f) - _2637) + _3196, _2637);
        _3122 = mad(_3196 + (_3195 + _3194), _3221, _2445);
    }
    else
    {
        _3116 = _2635;
        _3118 = _2636;
        _3120 = _2637;
        _3122 = _2445;
    }
    float _3307;
    float _3309;
    float _3311;
    float _3313;
    float _3315;
    float _3317;
    float _3319;
    if (0.5f < CB4_m0[156u].x)
    {
        float _3154 = CB4_m0[156u].z * 0.01745329238474369049072265625f;
        float _3156 = sin(_3154);
        float _3157 = cos(_3154);
        bool _3162 = CB4_m0[156u].y < 0.5f;
        float _3353;
        float _3354;
        float _3355;
        if (1.5f < CB4_m0[156u].y)
        {
            bool _3234 = CB4_m0[157u].w < 0.5f;
            uint4 _3281 = asuint(CB4_m0[25u]);
            float _3294 = ((-0.0f) - TEXCOORD_2.w) + asfloat(_3234 ? asuint(mad(CB1_m0[2u].x, CB4_m0[25u].z, mad(CB1_m0[0u].x, CB4_m0[25u].x, CB1_m0[1u].x * CB4_m0[25u].y)) + CB1_m0[3u].x) : _3281.x);
            float _3295 = ((-0.0f) - TEXCOORD_3.w) + asfloat(_3234 ? asuint(mad(CB1_m0[2u].y, CB4_m0[25u].z, mad(CB1_m0[0u].y, CB4_m0[25u].x, CB1_m0[1u].y * CB4_m0[25u].y)) + CB1_m0[3u].y) : _3281.y);
            float _3296 = ((-0.0f) - TEXCOORD_4.w) + asfloat(_3234 ? asuint(mad(CB1_m0[2u].z, CB4_m0[25u].z, mad(CB1_m0[0u].z, CB4_m0[25u].x, CB1_m0[1u].z * CB4_m0[25u].y)) + CB1_m0[3u].z) : _3281.z);
            float _3301 = rsqrt(max(dot(float3(_3294, _3295, _3296), float3(_3294, _3295, _3296)), 1.1754943508222875079687365372222e-38f));
            _3353 = _3301 * _3294;
            _3354 = _3301 * _3296;
            _3355 = _3301 * _3295;
        }
        else
        {
            _3353 = asfloat(_3162 ? asuint(_623) : asuint(_523));
            _3354 = asfloat(_3162 ? asuint(_625) : asuint(_525));
            _3355 = asfloat(_3162 ? asuint(_624) : asuint(_524));
        }
        float _3375 = clamp((mad(CB4_m0[156u].w, 2.0f, dot(float3(_342, _343, _344), float3(dot(float2(_3157, _3156), float2(_3353, _3354)), _3355, dot(float2((-0.0f) - _3156, _3157), float2(_3353, _3354))))) + (-1.0f)) / max(CB4_m0[157u].x, 9.9999997473787516355514526367188e-06f), 0.0f, 1.0f);
        float _3403 = mad(_3375, CB4_m0[30u].x + ((-0.0f) - CB4_m0[31u].x), CB4_m0[31u].x);
        float _3404 = mad(_3375, CB4_m0[30u].y + ((-0.0f) - CB4_m0[31u].y), CB4_m0[31u].y);
        float _3405 = mad(_3375, CB4_m0[30u].z + ((-0.0f) - CB4_m0[31u].z), CB4_m0[31u].z);
        float _3406 = mad(_3375, CB4_m0[30u].w + ((-0.0f) - CB4_m0[31u].w), CB4_m0[31u].w);
        bool _3410 = 0.5f < CB4_m0[157u].z;
        float _3415 = asfloat(_3410 ? asuint(_1994) : 1065353216u);
        float _3417 = asfloat(_3410 ? asuint(_1993) : 1065353216u);
        float _3419 = asfloat(_3410 ? asuint(_1992) : 1065353216u);
        float _3420 = _3415 * _3403;
        float _3421 = _3417 * _3404;
        bool _3426 = CB4_m0[157u].y < 0.5f;
        _3307 = asfloat(_3426 ? asuint(mad(_3406, mad(_3403, _3415, (-0.0f) - _3116), _3116)) : asuint(mad(_3406, _3420, _3116)));
        _3309 = asfloat(_3426 ? asuint(mad(_3406, mad(_3404, _3417, (-0.0f) - _3118), _3118)) : asuint(mad(_3406, _3421, _3118)));
        _3311 = asfloat(_3426 ? asuint(mad(_3406, mad(_3405, _3419, (-0.0f) - _3120), _3120)) : asuint(mad(_3406, _3419 * _3405, _3120)));
        _3313 = asfloat(0u);
        _3315 = asfloat(0u);
        _3317 = asfloat(0u);
        _3319 = mad(mad(_3405, _3419, _3421 + _3420), _3406, _3122);
    }
    else
    {
        float _3190 = mad((-0.0f) - CB4_m0[29u].w, CB4_m0[155u].w, 1.0f);
        _3307 = _3116;
        _3309 = _3118;
        _3311 = _3120;
        _3313 = (_2607 * mad(_2454, 2.0f, 1.0f)) * _3190;
        _3315 = (_2609 * mad(_2453, 2.0f, 1.0f)) * _3190;
        _3317 = (_2611 * mad(_2452, 2.0f, 1.0f)) * _3190;
        _3319 = _3122;
    }
    SV_Target_1.x = min(sqrt(max(_3317, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.y = min(sqrt(max(_3315, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.z = min(sqrt(max(_3313, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.w = _3319 * 0.33329999446868896484375f;
    SV_Target_2.w = (_414 != 0u) ? 0.3400000035762786865234375f : 0.0f;
    SV_Target_3.x = mad(_342, 0.5f, 0.5f);
    SV_Target_3.y = mad(_343, 0.5f, 0.5f);
    SV_Target_3.z = mad(_344, 0.5f, 0.5f);
    SV_Target.x = _3307;
    SV_Target.y = _3309;
    SV_Target.z = _3311;
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
