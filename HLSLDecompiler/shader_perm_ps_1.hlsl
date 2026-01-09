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
    float4 CB4_m0[167] : packoffset(c0);
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
SamplerState S0 : register(s0, space0);
SamplerComparisonState S1 : register(s1, space0);
SamplerState S2 : register(s2, space0);

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
    bool _100 = 0.5f < CB1_m0[28u].y;
    float _124 = (TEXCOORD_5.x / TEXCOORD_5.w) + ((-0.0f) - (TXCOORDD_6.x / TXCOORDD_6.w));
    float _125 = (TEXCOORD_5.y / TEXCOORD_5.w) + ((-0.0f) - (TXCOORDD_6.y / TXCOORDD_6.w));
    float _134 = (-0.0f) - _125;
    SV_Target_2.x = _100 ? mad(sqrt(abs(_124 * 0.5f)) * float(int((0u - ((0.0f < _124) ? 4294967295u : 0u)) + ((_124 < 0.0f) ? 4294967295u : 0u))), 0.5f, 0.4980392158031463623046875f) : 0.4979999959468841552734375f;
    SV_Target_2.y = _100 ? mad(sqrt(abs(_125 * (-0.5f))) * float(int((0u - ((0.0f < _134) ? 4294967295u : 0u)) + ((_134 < 0.0f) ? 4294967295u : 0u))), 0.5f, 0.4980392158031463623046875f) : 0.4979999959468841552734375f;
    uint _185 = 3u & 31u;
    uint _191 = 2u & 31u;
    uint _197 = 1u & 31u;
    uint _204 = 0u & 31u;
    SV_Target_2.z = float(spvBitfieldInsert((spvBitfieldInsert(0u, (0.0f != CB4_m0[152u].x) ? 4294967295u : 0u, _185, min((1u & 31u), (32u - _185))) + spvBitfieldInsert(0u, (CB3_m0[40u].x == 1.0f) ? 4294967295u : 0u, _191, min((1u & 31u), (32u - _191)))) + spvBitfieldInsert(0u, (0.0f != CB4_m0[151u].z) ? 4294967295u : 0u, _197, min((1u & 31u), (32u - _197))), (0.0f != CB4_m0[151u].w) ? 4294967295u : 0u, _204, min((1u & 31u), (32u - _204)))) * 0.0039215688593685626983642578125f;
    uint _225 = (((gl_FrontFacing ? 4294967295u : 0u) == 0u) ? 4294967295u : 0u) & ((0.5f < CB4_m0[147u].x) ? 4294967295u : 0u);
    bool _232 = ((((1.0f < TEXCOORD.z) ? 4294967295u : 0u) & ((0.5f < CB4_m0[147u].y) ? 4294967295u : 0u)) | _225) != 0u;
    float4 _249 = T3.SampleBias(S0, float2(_232 ? TEXCOORD.z : TEXCOORD.x, _232 ? TEXCOORD.w : TEXCOORD.y), CB0_m0[191u].x);
    float _252 = _249.x;
    float _253 = _249.y;
    float _254 = _249.z;
    bool _264 = _225 != 0u;
    float _273 = _264 ? TEXCOORD.z : TEXCOORD.x;
    float _274 = _264 ? TEXCOORD.w : TEXCOORD.y;
    float4 _279 = T4.SampleBias(S0, float2(_273, _274), CB0_m0[191u].x);
    float _297 = mad(clamp(_279.x, 0.0f, 1.0f), 2.0f, -1.0039999485015869140625f) * CB4_m0[137u].y;
    float _298 = mad(clamp(_279.y, 0.0f, 1.0f), 2.0f, -1.0039999485015869140625f) * CB4_m0[137u].y;
    float _306 = asfloat(((gl_FrontFacing ? 4294967295u : 0u) != 0u) ? 1065353216u : 3212836864u) * sqrt(((-0.0f) - min(dot(float2(_297, _298), float2(_297, _298)), 1.0f)) + 1.0f);
    float _331 = mad(_306, TEXCOORD_2.x, mad(_297, TEXCOORD_3.x, _298 * TEXCOORD_4.x));
    float _332 = mad(_306, TEXCOORD_2.y, mad(_297, TEXCOORD_3.y, _298 * TEXCOORD_4.y));
    float _333 = mad(_306, TEXCOORD_2.z, mad(_297, TEXCOORD_3.z, _298 * TEXCOORD_4.z));
    float _337 = rsqrt(dot(float3(_331, _332, _333), float3(_331, _332, _333)));
    float _338 = _337 * _331;
    float _339 = _337 * _332;
    float _340 = _337 * _333;
    float4 _345 = T5.SampleBias(S0, float2(_273, _274), CB0_m0[191u].x);
    float _350 = clamp(_345.z, 0.0f, 1.0f);
    float _351 = clamp(_345.x, 0.0f, 1.0f);
    float _352 = clamp(_345.y, 0.0f, 1.0f);
    float _356 = _352 * CB4_m0[137u].z;
    float4 _361 = T6.SampleBias(S0, float2(_273, _274), CB0_m0[191u].x);
    float _367 = clamp(_361.y, 0.0f, 1.0f);
    float _368 = clamp(_361.z, 0.0f, 1.0f);
    uint _376 = (0.5f < CB4_m0[144u].x) ? 4294967295u : 0u;
    uint _378 = ((0.5f < CB4_m0[144u].y) ? 4294967295u : 0u) & _376;
    float _389 = asfloat(((_378 != 0u) ? asuint(max((_368 + (-0.20000000298023223876953125f)) * 1.25f, 0.0f)) : asuint(_368)) & _376);
    bool _394 = 0.5f < CB4_m0[136u].w;
    float4 _408 = T2.SampleBias(S0, float2(TEXCOORD.x * CB4_m0[137u].x, TEXCOORD.y * CB4_m0[137u].x), CB0_m0[191u].x);
    float _434 = asfloat(_394 ? asuint(max(mad(_252, CB4_m0[57u].x, _408.x) + (-0.5f), 0.0f)) : asuint(_252 * CB4_m0[57u].x));
    float _436 = asfloat(_394 ? asuint(max(mad(_253, CB4_m0[57u].y, _408.y) + (-0.5f), 0.0f)) : asuint(_253 * CB4_m0[57u].y));
    float _438 = asfloat(_394 ? asuint(max(mad(_254, CB4_m0[57u].z, _408.z) + (-0.5f), 0.0f)) : asuint(_254 * CB4_m0[57u].z));
    bool _439 = _351 < 0.20000000298023223876953125f;
    bool _441 = _351 < 0.4000000059604644775390625f;
    bool _443 = _351 < 0.60000002384185791015625f;
    bool _445 = _351 < 0.800000011920928955078125f;
    float _490 = ((-0.0f) - TEXCOORD_2.w) + CB0_m0[53u].x;
    float _491 = ((-0.0f) - TEXCOORD_3.w) + CB0_m0[53u].y;
    float _492 = ((-0.0f) - TEXCOORD_4.w) + CB0_m0[53u].z;
    float _493 = dot(float3(_490, _491, _492), float3(_490, _491, _492));
    float _498 = rsqrt(max(_493, 1.1754943508222875079687365372222e-38f));
    float _499 = _498 * _490;
    float _500 = _498 * _491;
    float _501 = _498 * _492;
    float _515 = CB0_m0[53u].x + ((-0.0f) - CB1_m0[3u].x);
    float _516 = CB0_m0[53u].y + ((-0.0f) - CB1_m0[3u].y);
    float _517 = CB0_m0[53u].z + ((-0.0f) - CB1_m0[3u].z);
    float _522 = rsqrt(max(dot(float3(_515, _516, _517), float3(_515, _516, _517)), 1.1754943508222875079687365372222e-38f));
    float _523 = _522 * _515;
    float _524 = _522 * _516;
    float _525 = _522 * _517;
    float _526 = sqrt(_493);
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
    float _1259;
    float _1260;
    if (0.5f < CB0_m0[22u].x)
    {
        float _701 = mad(_338, CB4_m0[135u].x, TEXCOORD_2.w) + ((-0.0f) - CB3_m0[39u].x);
        float _702 = mad(_339, CB4_m0[135u].x, TEXCOORD_3.w) + ((-0.0f) - CB3_m0[39u].y);
        float _703 = mad(_340, CB4_m0[135u].x, TEXCOORD_4.w) + ((-0.0f) - CB3_m0[39u].z);
        float _739 = mad(CB3_m0[35u].z, _703, mad(CB3_m0[33u].z, _701, _702 * CB3_m0[34u].z)) + CB3_m0[36u].z;
        float _749 = mad(mad(CB3_m0[35u].x, _703, mad(CB3_m0[33u].x, _701, _702 * CB3_m0[34u].x)) + CB3_m0[36u].x, CB3_m0[38u].x, CB3_m0[38u].z);
        float _750 = mad(mad(CB3_m0[35u].y, _703, mad(CB3_m0[33u].y, _701, _702 * CB3_m0[34u].y)) + CB3_m0[36u].y, CB3_m0[38u].y, CB3_m0[38u].w);
        float _833 = ((((((T8.SampleCmpLevelZero(S1, float2(_749 + ((-0.0f) - CB0_m0[200u].x), _750 + ((-0.0f) - CB0_m0[200u].y)), _739).xxxx.x + T8.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, -1.0f, _749), mad(CB0_m0[200u].y, 1.0f, _750)), _739).xxxx.x) + T8.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 1.0f, _749), mad(CB0_m0[200u].y, -1.0f, _750)), _739).xxxx.x) + T8.SampleCmpLevelZero(S1, float2(_749 + CB0_m0[200u].x, _750 + CB0_m0[200u].y), _739).xxxx.x) + T8.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, -1.4142129421234130859375f, _749), mad(CB0_m0[200u].y, 0.0f, _750)), _739).xxxx.x) + T8.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 1.4142129421234130859375f, _749), mad(CB0_m0[200u].y, 0.0f, _750)), _739).xxxx.x) + T8.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 0.0f, _749), mad(CB0_m0[200u].y, -1.4142129421234130859375f, _750)), _739).xxxx.x) + T8.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 0.0f, _749), mad(CB0_m0[200u].y, 1.4142129421234130859375f, _750)), _739).xxxx.x;
        float _856 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[20u].x);
        float _857 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[20u].y);
        float _858 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[20u].z);
        float _868 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[21u].x);
        float _869 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[21u].y);
        float _870 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[21u].z);
        float _879 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[22u].x);
        float _880 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[22u].y);
        float _881 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[22u].z);
        float _891 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[23u].x);
        float _892 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[23u].y);
        float _893 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[23u].z);
        bool _913 = dot(float3(_856, _857, _858), float3(_856, _857, _858)) < CB2_m0[24u].x;
        bool _914 = dot(float3(_868, _869, _870), float3(_868, _869, _870)) < CB2_m0[24u].y;
        bool _915 = dot(float3(_879, _880, _881), float3(_879, _880, _881)) < CB2_m0[24u].z;
        float _948 = ((-0.0f) - dot(float4(asfloat((_913 ? 4294967295u : 0u) & 1065353216u), max(asfloat(_913 ? 3212836864u : 2147483648u) + asfloat((_914 ? 4294967295u : 0u) & 1065353216u), 0.0f), max(asfloat(_914 ? 3212836864u : 2147483648u) + asfloat((_915 ? 4294967295u : 0u) & 1065353216u), 0.0f), max(asfloat(_915 ? 3212836864u : 2147483648u) + asfloat(((dot(float3(_891, _892, _893), float3(_891, _892, _893)) < CB2_m0[24u].w) ? 4294967295u : 0u) & 1065353216u), 0.0f)), float4(4.0f, 3.0f, 2.0f, 1.0f))) + 4.0f;
        uint _950 = uint(_948) << 2u;
        uint _953 = _950 + 1u;
        uint _972 = _950 + 2u;
        uint _983 = _950 + 3u;
        float _989 = mad(CB2_m0[_972].x, TEXCOORD_4.w, mad(CB2_m0[_950].x, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_953].x)) + CB2_m0[_983].x;
        float _990 = mad(CB2_m0[_972].y, TEXCOORD_4.w, mad(CB2_m0[_950].y, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_953].y)) + CB2_m0[_983].y;
        float _991 = mad(CB2_m0[_972].z, TEXCOORD_4.w, mad(CB2_m0[_950].z, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_953].z)) + CB2_m0[_983].z;
        float _1005 = frac(sin(dot(float2(frac(_989 * 1024.0f), frac(_990 * 1024.0f)), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
        float _1006 = sin(_1005);
        float _1007 = cos(_1005);
        float _1018 = (CB2_m0[26u].x * 1.2999999523162841796875f) * _1006;
        float _1019 = (CB2_m0[26u].x * 1.2999999523162841796875f) * _1007;
        float _1020 = (CB2_m0[26u].y * 1.2999999523162841796875f) * _1006;
        float _1021 = (CB2_m0[26u].y * 1.2999999523162841796875f) * _1007;
        float _1117 = ((((T0.SampleCmpLevelZero(S1, float3(_989 + ((_1019 * (-0.97829997539520263671875f)) + (_1018 * (-0.172399997711181640625f))), _990 + ((_1021 * 0.172399997711181640625f) + (_1020 * (-0.97829997539520263671875f))), _948), _991).xxxx.x + T0.SampleCmpLevelZero(S1, float3(_989 + ((_1019 * 0.484600007534027099609375f) + (_1018 * 0.874700009822845458984375f)), _990 + ((_1021 * (-0.874700009822845458984375f)) + (_1020 * 0.484600007534027099609375f)), _948), _991).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_989 + ((_1019 * (-0.037399999797344207763671875f)) + (_1018 * (-0.96829998493194580078125f))), _990 + ((_1021 * 0.96829998493194580078125f) + (_1020 * (-0.037399999797344207763671875f))), _948), _991).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_989 + ((_1019 * 0.419600009918212890625f) + (_1018 * 0.278299987316131591796875f)), _990 + ((_1021 * (-0.278299987316131591796875f)) + (_1020 * 0.419600009918212890625f)), _948), _991).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_989 + ((_1019 * 0.83910000324249267578125f) + (_1018 * (-0.1507000029087066650390625f))), _990 + ((_1021 * (-0.1507000029087066650390625f)) + (_1020 * 0.83910000324249267578125f)), _948), _991).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_989 + ((_1019 * 0.4792999923229217529296875f) + (_1018 * (-0.6417000293731689453125f))), _990 + ((_1021 * (-0.6417000293731689453125f)) + (_1020 * 0.4792999923229217529296875f)), _948), _991).xxxx.x;
        float _1198 = (((((_1117 + T0.SampleCmpLevelZero(S1, float3(_989 + ((_1019 * (-0.81610000133514404296875f)) + (_1018 * 0.577899992465972900390625f)), _990 + ((_1021 * 0.577899992465972900390625f) + (_1020 * (-0.81610000133514404296875f))), _948), _991).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_989 + ((_1019 * (-0.4587999880313873291015625f)) + (_1018 * (-0.5408999919891357421875f))), _990 + ((_1021 * 0.5408999919891357421875f) + (_1020 * (-0.4587999880313873291015625f))), _948), _991).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_989 + ((_1019 * (-0.19189999997615814208984375f)) + (_1018 * 0.704400002956390380859375f)), _990 + ((_1021 * 0.704400002956390380859375f) + (_1020 * (-0.19189999997615814208984375f))), _948), _991).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_989 + ((_1019 * (-0.446399986743927001953125f)) + (_1018 * 0.105300001800060272216796875f)), _990 + ((_1021 * 0.105300001800060272216796875f) + (_1020 * (-0.446399986743927001953125f))), _948), _991).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_989 + ((_1019 * 0.06610000133514404296875f) + (_1018 * (-0.20659999549388885498046875f))), _990 + ((_1021 * (-0.20659999549388885498046875f)) + (_1020 * 0.06610000133514404296875f)), _948), _991).xxxx.x) * CB2_m0[25u].x;
        float _1223 = clamp(mad(_610, 2.0f, -1.0f), 0.0f, 1.0f);
        float _1227 = _1223 * CB0_m0[189u].w;
        float _1237 = (asfloat(((((0.0f >= _991) ? 4294967295u : 0u) | ((_991 >= 1.0f) ? 4294967295u : 0u)) != 0u) ? 1065353216u : asuint(mad(_1198, 0.090899996459484100341796875f, ((-0.0f) - CB2_m0[25u].x) + 1.0f))) * mad(CB3_m0[40u].y, ((-0.0f) - _611) + 1.0f, _611)) * asfloat((0.5f < CB3_m0[37u].x) ? asuint(min(mad(_1223, (asfloat(_439 ? asuint(CB4_m0[163u]).w : (_441 ? asuint(CB4_m0[163u]).z : (_443 ? asuint(CB4_m0[163u]).y : (_445 ? asuint(CB4_m0[163u]).x : asuint(CB4_m0[162u]).w)))) * mad(_833 + T8.SampleCmpLevelZero(S1, float2(_749, _750), _739).xxxx.x, 0.11110000312328338623046875f, -1.0f)) * CB3_m0[37u].x, 1.0f), 1.0f)) : 1065353216u);
        _1259 = mad(_1237, _1227 * CB4_m0[133u].z, mad((-0.0f) - _1227, CB4_m0[133u].z, 1.0f));
        _1260 = mad(_1237, CB4_m0[133u].z, ((-0.0f) - CB4_m0[133u].z) + 1.0f);
    }
    else
    {
        _1259 = asfloat(1065353216u);
        _1260 = asfloat(1065353216u);
    }
    float _1266 = clamp(CB3_m0[1u].w * 2.5f, 0.0f, 1.0f);
    float _1269 = mad(((-0.0f) - _1266) + 1.0f, _1259, _1266);
    bool _1273 = CB3_m0[3u].w != 0.0f;
    float _1287 = clamp(dot(float3(CB3_m0[3u].xyz), float3(TEXCOORD_2.w, TEXCOORD_3.w, TEXCOORD_4.w)) + ((-0.0f) - CB3_m0[3u].w), 0.0f, 1.0f);
    float _1338 = asfloat(_1273 ? asuint(mad(_1287, ((-0.0f) - _648) + mad(CB0_m0[15u].w, mad((-0.0f) - _648, CB0_m0[15u].x, _648 + CB0_m0[15u].x), _648 * CB0_m0[15u].x), _648)) : asuint(_648));
    float _1340 = asfloat(_1273 ? asuint(mad(_1287, ((-0.0f) - _649) + mad(CB0_m0[15u].w, mad((-0.0f) - _649, CB0_m0[15u].y, _649 + CB0_m0[15u].y), _649 * CB0_m0[15u].y), _649)) : asuint(_649));
    float _1342 = asfloat(_1273 ? asuint(mad(_1287, ((-0.0f) - _650) + mad(CB0_m0[15u].w, mad((-0.0f) - _650, CB0_m0[15u].z, _650 + CB0_m0[15u].z), _650 * CB0_m0[15u].z), _650)) : asuint(_650));
    float _1343 = max(asfloat(_439 ? asuint(CB4_m0[134u]).w : (_441 ? asuint(CB4_m0[134u]).z : (_443 ? asuint(CB4_m0[134u]).y : (_445 ? asuint(CB4_m0[134u]).x : asuint(CB4_m0[133u]).w)))), 9.9999997473787516355514526367188e-06f);
    float _1345 = 1.0f / _1343;
    float _1346 = dot(float3(_338, _339, _340), float3(_623, _624, _625));
    float _1363 = mad(mad(clamp(_279.z, 0.0f, 1.0f), 2.0f, -1.0f), 2.0f, mad(TEXCOORD_7.y, ((-0.0f) - _1346) + mad(_1346 + 1.0f, clamp(mad((-0.0f) - min(_624 * 3.0f, 1.0f), 0.5f, _339) + 1.5f, 0.0f, 1.0f), -1.0f), _1346));
    float _1376 = mad((-0.0f) - _1343, 3.0f, 2.0f);
    float _1377 = ((_1363 * 3.0f) + 3.0f) / _1376;
    float _1378 = (mad(_1363, 3.0f, (-0.0f) - (_1343 * 1.5f)) + 1.0f) / _1376;
    float _1379 = (mad(_1363, 3.0f, (-0.0f) - (_1343 * 4.5f)) + (-1.0f)) / _1376;
    float _1391 = mad(_1345, _1363 + 0.33329999446868896484375f, 0.5f);
    float _1392 = mad(_1345, _1363 + (-0.33329999446868896484375f), 0.5f);
    float _1393 = mad(_1345, _1363 + (-0.33329999446868896484375f), -0.5f);
    float _1404 = clamp(((-0.0f) - _1377) + 1.0f, 0.0f, 1.0f);
    float _1405 = clamp(min(_1377, ((-0.0f) - _1391) + 1.0f), 0.0f, 1.0f);
    float _1406 = clamp(min(_1391, ((-0.0f) - _1378) + 1.0f), 0.0f, 1.0f);
    float _1410 = clamp(min(_1393, ((-0.0f) - _1379) + 1.0f), 0.0f, 1.0f);
    float _1411 = clamp(_1379, 0.0f, 1.0f);
    float _1417 = mad(CB3_m0[40u].y, ((-0.0f) - _1269) + _1260, _1269);
    float _1424 = clamp(min(mad(_1417, -2.0f, 2.0f), mad(_1417, 2.0f, 0.0f)), 0.0f, 1.0f);
    float _1425 = clamp(mad(_1417, 2.0f, -1.0f), 0.0f, 1.0f);
    float _1426 = clamp(mad(_1417, -2.0f, 1.0f), 0.0f, 1.0f);
    float _1498;
    float _1500;
    float _1502;
    if (0.5f < CB3_m0[40u].y)
    {
        float _1465;
        if (_532)
        {
            _1465 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _1465 = asfloat(0u);
        }
        float _1469 = _1465 * CB0_m0[189u].w;
        float _1470 = _1469 * _1424;
        float _1476 = (mad((-0.0f) - _1424, _1469, _1424) + mad((-0.0f) - _1426, _1469, _1426)) + _1425;
        float _1725;
        if (_532)
        {
            _1725 = asfloat(T1.Load((uint(max(int(uint(min(int(asuint(CB0_m0[188u]).z + 4294967295u), int(uint(int(CB3_m0[2u].z)))))), int(0u))) * 32u) + 7u).x);
        }
        else
        {
            _1725 = asfloat(0u);
        }
        _1498 = _1725 * _1470;
        _1500 = _1725 * _1476;
        _1502 = mad(_1426, _1469, mad((-0.0f) - _1476, _1725, _1476) + mad((-0.0f) - _1470, _1725, _1470));
    }
    else
    {
        float _1477;
        if (_532)
        {
            _1477 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _1477 = asfloat(0u);
        }
        _1498 = _1477 * _1424;
        _1500 = _1425;
        _1502 = _1477 * _1426;
    }
    float _1510 = mad(_1502, ((-0.0f) - _1406) + (((-0.0f) - _1405) + (((-0.0f) - _1404) + 1.0f)), _1406);
    float _1511 = _1500 + _1498;
    float _1512 = _1511 * clamp(min(_1378, ((-0.0f) - _1392) + 1.0f), 0.0f, 1.0f);
    float _1515 = mad(_1411 + _1410, _1498, _1511 * clamp(min(_1392, ((-0.0f) - _1393) + 1.0f), 0.0f, 1.0f));
    float _1516 = _1410 * _1500;
    float _1519 = _1404 * TEXCOORD_7.x;
    float _1524 = mad((-0.0f) - _1404, TEXCOORD_7.x, _1404) + _1405;
    uint4 _1528 = asuint(CB4_m0[60u]);
    uint4 _1535 = asuint(CB4_m0[59u]);
    uint4 _1545 = asuint(CB4_m0[61u]);
    uint4 _1555 = asuint(CB4_m0[62u]);
    uint4 _1565 = asuint(CB4_m0[63u]);
    uint4 _1578 = asuint(CB4_m0[65u]);
    uint4 _1585 = asuint(CB4_m0[64u]);
    uint4 _1595 = asuint(CB4_m0[66u]);
    uint4 _1605 = asuint(CB4_m0[67u]);
    uint4 _1615 = asuint(CB4_m0[68u]);
    float _1627 = min(_526 * 0.4372499883174896240234375f, 1.0f);
    float _1643 = mad(CB4_m0[133u].y, mad(_1627, CB3_m0[1u].w, (-0.0f) - _1627) + 1.0f, 0.0f);
    float _1644 = mad(CB4_m0[133u].y, mad((-0.0f) - _1627, CB3_m0[1u].w, _1627) + (-1.0f), 1.0f);
    float _1645 = asfloat(_439 ? _1565.x : (_441 ? _1555.x : (_443 ? _1545.x : (_445 ? _1528.x : _1535.x)))) + 6.103515625e-05f;
    float _1647 = asfloat(_439 ? _1565.y : (_441 ? _1555.y : (_443 ? _1545.y : (_445 ? _1528.y : _1535.y)))) + 6.103515625e-05f;
    float _1648 = asfloat(_439 ? _1565.z : (_441 ? _1555.z : (_443 ? _1545.z : (_445 ? _1528.z : _1535.z)))) + 6.103515625e-05f;
    float _1651 = (_1648 + (_1647 + _1645)) * 0.3333300054073333740234375f;
    float _1662 = mad(clamp(_1645 / _1651, 0.0f, 1.0f), _1643, _1644 * _1645);
    float _1663 = mad(clamp(_1647 / _1651, 0.0f, 1.0f), _1643, _1644 * _1647);
    float _1664 = mad(clamp(_1648 / _1651, 0.0f, 1.0f), _1643, _1644 * _1648);
    float _1665 = asfloat(_439 ? _1615.x : (_441 ? _1605.x : (_443 ? _1595.x : (_445 ? _1578.x : _1585.x)))) + 6.103515625e-05f;
    float _1666 = asfloat(_439 ? _1615.y : (_441 ? _1605.y : (_443 ? _1595.y : (_445 ? _1578.y : _1585.y)))) + 6.103515625e-05f;
    float _1667 = asfloat(_439 ? _1615.z : (_441 ? _1605.z : (_443 ? _1595.z : (_445 ? _1578.z : _1585.z)))) + 6.103515625e-05f;
    float _1670 = (_1667 + (_1666 + _1665)) * 0.3333300054073333740234375f;
    float _1680 = mad(clamp(_1665 / _1670, 0.0f, 1.0f), _1643, _1644 * _1665);
    float _1681 = mad(clamp(_1666 / _1670, 0.0f, 1.0f), _1643, _1644 * _1666);
    float _1682 = mad(clamp(_1667 / _1670, 0.0f, 1.0f), _1643, _1644 * _1667);
    float _1748;
    if (_532)
    {
        _1748 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
    }
    else
    {
        _1748 = asfloat(0u);
    }
    float _1751 = mad(_1748, ((-0.0f) - _652) + 1.0f, _652);
    float _1752 = _1751 * _1338;
    float _1753 = _1751 * _1340;
    float _1754 = _1751 * _1342;
    float _1755 = min(1.0f / max(_1342 + 1.1754943508222875079687365372222e-38f, max(_1340 + 1.1754943508222875079687365372222e-38f, _1338 + 1.1754943508222875079687365372222e-38f)), 1.0f);
    float _1795 = mad(_1752, mad(_1411, _1500, mad(CB0_m0[13u].x, _1515, _1516 * CB0_m0[9u].x)), (_1755 * _1752) * mad(_1662 * CB0_m0[10u].x, _1512, mad(_1662 * CB0_m0[11u].x, _1510, mad(_1680 * CB0_m0[14u].x, _1519, _1524 * (_1680 * CB0_m0[12u].x)))));
    float _1796 = mad(_1753, mad(_1411, _1500, mad(CB0_m0[13u].y, _1515, _1516 * CB0_m0[9u].y)), (_1755 * _1753) * mad(_1663 * CB0_m0[10u].y, _1512, mad(_1663 * CB0_m0[11u].y, _1510, mad(_1681 * CB0_m0[14u].y, _1519, _1524 * (_1681 * CB0_m0[12u].y)))));
    float _1797 = mad(_1754, mad(_1411, _1500, mad(CB0_m0[13u].z, _1515, _1516 * CB0_m0[9u].z)), (_1755 * _1754) * mad(_1664 * CB0_m0[10u].z, _1512, mad(_1664 * CB0_m0[11u].z, _1510, mad(_1682 * CB0_m0[14u].z, _1519, _1524 * (_1682 * CB0_m0[12u].z)))));
    float _1815;
    float _1817;
    float _1819;
    if (CB0_m0[22u].z >= 0.5f)
    {
        uint _1808 = uint(int(max(((-0.0f) - floor(_351 * 5.0f)) + 4.0f, 0.0f)));
        float _1816;
        float _1818;
        float _1820;
        if (CB4_m0[_1808 + 10u].x < 50.0f)
        {
            float _2047 = max(dot(float3(_499, _500, _501), float3(_338, _339, _340)), 0.00999999977648258209228515625f);
            float _2058 = exp2(log2(_2047) * (10.0f * CB4_m0[_1808 + 5u].w));
            float _2635;
            float _2636;
            float _2637;
            float _2638;
            if (0.5f < CB4_m0[_1808 + 15u].z)
            {
                float _2399 = mad(TEXCOORD_4.y, TEXCOORD_2.z, (-0.0f) - (TEXCOORD_2.y * TEXCOORD_4.z));
                float _2400 = mad(TEXCOORD_4.z, TEXCOORD_2.x, (-0.0f) - (TEXCOORD_2.z * TEXCOORD_4.x));
                float _2401 = mad(TEXCOORD_4.x, TEXCOORD_2.y, (-0.0f) - (TEXCOORD_2.x * TEXCOORD_4.y));
                float _2480 = asfloat((dot(float3(TEXCOORD_3.x, TEXCOORD_3.y, TEXCOORD_3.z), float3(_2399, _2400, _2401)) < 0.0f) ? 3212836864u : 1065353048u);
                float _2490 = _2480 * dot(float3(_2399, _2400, _2401), float3(_499, _500, _501));
                float _2491 = _2480 * dot(float3(mad(TEXCOORD_2.y, TEXCOORD_3.z, (-0.0f) - (TEXCOORD_2.z * TEXCOORD_3.y)), mad(TEXCOORD_2.z, TEXCOORD_3.x, (-0.0f) - (TEXCOORD_2.x * TEXCOORD_3.z)), mad(TEXCOORD_2.x, TEXCOORD_3.y, (-0.0f) - (TEXCOORD_2.y * TEXCOORD_3.x))), float3(_499, _500, _501));
                float _2492 = _2480 * dot(float3(mad(TEXCOORD_3.y, TEXCOORD_4.z, (-0.0f) - (TEXCOORD_3.z * TEXCOORD_4.y)), mad(TEXCOORD_3.z, TEXCOORD_4.x, (-0.0f) - (TEXCOORD_3.x * TEXCOORD_4.z)), mad(TEXCOORD_3.x, TEXCOORD_4.y, (-0.0f) - (TEXCOORD_3.y * TEXCOORD_4.x))), float3(_499, _500, _501));
                float _2497 = rsqrt(max(dot(float3(_2490, _2491, _2492), float3(_2490, _2491, _2492)), 1.1754943508222875079687365372222e-38f));
                float _2521 = (-0.0f) - ((clamp(_361.x, 0.0f, 1.0f) * CB4_m0[_1808 + 15u].w) * (_2047 * _2047));
                uint4 _2527 = asuint(CB4_m0[_1808 + 10u]);
                float4 _2545 = T7.Sample(S2, float3(mad(CB0_m0[40u].y, asfloat(_2527.w), mad(_2521, _2497 * _2490, mad(CB4_m0[_1808].x, TEXCOORD.x, CB4_m0[_1808].z))), mad(CB0_m0[40u].y, asfloat(asuint(CB4_m0[_1808 + 15u]).x), mad(_2521, _2497 * _2491, mad(CB4_m0[_1808].y, TEXCOORD.y, CB4_m0[_1808].w))), asfloat(_2527.x)));
                _2635 = _2545.y * 4.0f;
                _2636 = _2545.x * 4.0f;
                _2637 = _2545.z * 4.0f;
                _2638 = asfloat(1065353216u);
            }
            else
            {
                uint4 _2580 = asuint(CB4_m0[_1808 + 10u]);
                float4 _2597 = T7.Sample(S2, float3(mad(CB0_m0[40u].y, asfloat(_2580.w), mad(mad(CB0_m0[118u].x, _340, mad(CB0_m0[116u].x, _338, _339 * CB0_m0[117u].x)), 0.5f, 0.5f)), mad(CB0_m0[40u].y, asfloat(asuint(CB4_m0[_1808 + 15u]).x), mad(mad(CB0_m0[118u].y, _340, mad(CB0_m0[116u].y, _338, _339 * CB0_m0[117u].y)), 0.5f, 0.5f)), asfloat(_2580.x)));
                _2635 = _2597.y;
                _2636 = _2597.x;
                _2637 = _2597.z;
                _2638 = _2597.w;
            }
            uint _2639 = _1808 + 5u;
            float _2645 = _2636 * CB4_m0[_2639].x;
            float _2646 = _2635 * CB4_m0[_2639].y;
            float _2647 = _2637 * CB4_m0[_2639].z;
            float _2648 = mad(asfloat(((CB4_m0[144u].y >= 0.5f) ? 4294967295u : 0u) & 1065353216u), asfloat((_378 != 0u) ? asuint(asfloat(((0.20000000298023223876953125f >= _368) ? 4294967295u : 0u) & 1065353216u) * min(_368 * 5.099999904632568359375f, 1.0f)) : asuint(_368)) + (-1.0f), 1.0f) * _2638;
            float _2741;
            float _2743;
            float _2745;
            if (CB4_m0[_1808 + 15u].y < 0.5f)
            {
                float _2689 = clamp(_2648 * CB4_m0[_1808 + 10u].z, 0.0f, 1.0f);
                uint _2690 = _1808 + 10u;
                _2741 = mad(_2689, mad(_2645, CB4_m0[_2690].y, (-0.0f) - _434), _434);
                _2743 = mad(_2689, mad(_2646, CB4_m0[_2690].y, (-0.0f) - _436), _436);
                _2745 = mad(_2689, mad(_2647, CB4_m0[_2690].y, (-0.0f) - _438), _438);
            }
            else
            {
                float _2742;
                float _2744;
                float _2746;
                if (CB4_m0[_1808 + 15u].y < 1.5f)
                {
                    float _2752 = clamp(_2648 * CB4_m0[_1808 + 10u].z, 0.0f, 1.0f);
                    uint _2756 = _1808 + 10u;
                    _2742 = mad(_2752 * _2645, CB4_m0[_2756].y, _434);
                    _2744 = mad(_2752 * _2646, CB4_m0[_2756].y, _436);
                    _2746 = mad(_2752 * _2647, CB4_m0[_2756].y, _438);
                }
                else
                {
                    uint _2763 = _1808 + 5u;
                    uint _2772 = _1808 + 10u;
                    float _2787 = clamp(_2648 * CB4_m0[_1808 + 10u].z, 0.0f, 1.0f);
                    float _2791 = mad(_2787, clamp(mad(mad(_2636, CB4_m0[_2763].x, -0.5f), CB4_m0[_2772].y, _2645), 0.0f, 1.0f) + (-0.5f), 0.5f);
                    float _2792 = mad(_2787, clamp(mad(mad(_2635, CB4_m0[_2763].y, -0.5f), CB4_m0[_2772].y, _2646), 0.0f, 1.0f) + (-0.5f), 0.5f);
                    float _2793 = mad(_2787, clamp(mad(mad(_2637, CB4_m0[_2763].z, -0.5f), CB4_m0[_2772].y, _2647), 0.0f, 1.0f) + (-0.5f), 0.5f);
                    float _2794 = _434 * _2791;
                    float _2795 = _436 * _2792;
                    float _2796 = _438 * _2793;
                    float _2803 = ((-0.0f) - _434) + 1.0f;
                    float _2804 = ((-0.0f) - _436) + 1.0f;
                    float _2805 = ((-0.0f) - _438) + 1.0f;
                    _2742 = mad(asfloat(((_434 >= 0.5f) ? 4294967295u : 0u) & 1065353216u), mad((-0.0f) - _2794, 2.0f, mad((-0.0f) - (_2803 + _2803), ((-0.0f) - _2791) + 1.0f, 1.0f)), _2794 + _2794);
                    _2744 = mad(asfloat(((_436 >= 0.5f) ? 4294967295u : 0u) & 1065353216u), mad((-0.0f) - _2795, 2.0f, mad((-0.0f) - (_2804 + _2804), ((-0.0f) - _2792) + 1.0f, 1.0f)), _2795 + _2795);
                    _2746 = mad(asfloat(((_438 >= 0.5f) ? 4294967295u : 0u) & 1065353216u), mad((-0.0f) - _2796, 2.0f, mad((-0.0f) - (_2805 + _2805), ((-0.0f) - _2793) + 1.0f, 1.0f)), _2796 + _2796);
                }
                _2741 = _2742;
                _2743 = _2744;
                _2745 = _2746;
            }
            _1816 = _2058 * _2745;
            _1818 = _2058 * _2743;
            _1820 = _2058 * _2741;
        }
        else
        {
            _1816 = _438;
            _1818 = _436;
            _1820 = _434;
        }
        _1815 = _1816;
        _1817 = _1818;
        _1819 = _1820;
    }
    else
    {
        _1815 = _438;
        _1817 = _436;
        _1819 = _434;
    }
    float _1822 = mad((-0.0f) - _356, 0.959999978542327880859375f, 0.959999978542327880859375f);
    float _1824 = _1822 * _1819;
    float _1825 = _1822 * _1817;
    float _1826 = _1822 * _1815;
    float _1831 = mad(_356, _1819 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _1833 = mad(_356, _1817 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _1834 = mad(_356, _1815 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _1839 = mad((-0.0f) - _367, CB4_m0[137u].w, 1.0f);
    float _1840 = _1839 * _1839;
    float _1861 = dot(float3((_1795 + CB0_m0[2u].x) + TEXCOORD_8.x, (_1796 + CB0_m0[2u].y) + TEXCOORD_8.y, (_1797 + CB0_m0[2u].z) + TEXCOORD_8.z), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _1875 = ((-0.0f) - CB0_m0[19u].x) + CB0_m0[19u].y;
    float _1876 = 1.0f / _1875;
    float _1899 = asfloat((_1861 < CB0_m0[19u].x) ? asuint(_1861) : asuint(mad((-0.0f) - _1875, 1.0f / mad(_1861, _1876, mad((-0.0f) - CB0_m0[19u].x, _1876, 1.0f)), CB0_m0[19u].y))) / (_1861 + 9.9999997473787516355514526367188e-05f);
    float _1900 = _1899 * _1795;
    float _1901 = _1899 * _1796;
    float _1902 = _1899 * _1797;
    float _1915 = mad(CB4_m0[85u].w, 19.0f, 1.0f);
    float _1924 = clamp(dot(float3((-0.0f) - _623, (-0.0f) - _624, (-0.0f) - _625), float3(_338, _339, _340)), 0.0f, 1.0f);
    float _1934 = exp2(log2(max(dot(float3((-0.0f) - _623, (-0.0f) - _624, (-0.0f) - _625), float3(_499, _500, _501)), 0.0f)) * (_1915 * _1915));
    float _1941 = mad(CB4_m0[85u].x * 50.0f, _1934 * (_1900 * _1924), _1900);
    float _1942 = mad(CB4_m0[85u].y * 50.0f, _1934 * (_1901 * _1924), _1901);
    float _1943 = mad(CB4_m0[85u].z * 50.0f, _1934 * (_1902 * _1924), _1902);
    uint4 _1947 = asuint(CB4_m0[75u]);
    uint4 _1954 = asuint(CB4_m0[74u]);
    uint4 _1964 = asuint(CB4_m0[76u]);
    uint4 _1974 = asuint(CB4_m0[77u]);
    uint4 _1984 = asuint(CB4_m0[78u]);
    float _2020 = asfloat(_439 ? asuint(CB4_m0[142u]).y : (_441 ? asuint(CB4_m0[142u]).x : (_443 ? asuint(CB4_m0[141u]).w : (_445 ? asuint(CB4_m0[141u]).z : asuint(CB4_m0[141u]).y))));
    float _2117;
    if (0.5f < _2020)
    {
        float _2068 = clamp(mad(_1363, 1.5f, -0.5f), 0.0f, 1.0f);
        float _2095 = mad(_615, _622, _523);
        float _2096 = mad(_616, _622, _524);
        float _2097 = mad(_617, _622, _525);
        float _2101 = rsqrt(dot(float3(_2095, _2096, _2097), float3(_2095, _2096, _2097)));
        _2117 = clamp((((-0.0f) - mad((-0.0f) - (_2068 * _2068), clamp(dot(float3(_338, _339, _340), float3(_2101 * _2095, _2101 * _2096, _2101 * _2097)), 0.0f, 1.0f), 1.0f)) + _350) / max(asfloat(_439 ? asuint(CB4_m0[143u]).z : (_441 ? asuint(CB4_m0[143u]).y : (_443 ? asuint(CB4_m0[143u]).x : (_445 ? asuint(CB4_m0[142u]).w : asuint(CB4_m0[142u]).z)))), 9.9999997473787516355514526367188e-06f), 0.0f, 1.0f);
    }
    else
    {
        _2117 = _350;
    }
    float _2121 = _2117 * CB4_m0[143u].w;
    float _2129 = mad(_615, _622, _523);
    float _2130 = mad(_616, _622, _524);
    float _2131 = mad(_617, _622, _525);
    float _2135 = rsqrt(dot(float3(_2129, _2130, _2131), float3(_2129, _2130, _2131)));
    float _2136 = _2135 * _2129;
    float _2137 = _2135 * _2130;
    float _2138 = _2135 * _2131;
    float _2164 = asfloat(_439 ? asuint(CB4_m0[141u]).x : (_441 ? asuint(CB4_m0[140u]).w : (_443 ? asuint(CB4_m0[140u]).z : (_445 ? asuint(CB4_m0[140u]).y : asuint(CB4_m0[140u]).x))));
    float _2169 = clamp(mad(_1346 * _2164, 0.75f, 0.25f), 0.0f, 1.0f);
    float _2175 = clamp(mad(_2164 * dot(float3(_338, _339, _340), float3(_2136, _2137, _2138)), 0.75f, 0.25f), 0.0f, 1.0f);
    float _2181 = clamp(mad(_2164 * dot(float3(_623, _624, _625), float3(_2136, _2137, _2138)), 0.75f, 0.25f), 0.0f, 1.0f);
    float _2183 = mad(_2175 * _2175, mad(_1840, _1840, -1.0f), 1.000010013580322265625f);
    float _2187 = max(_2181 * _2181, 0.100000001490116119384765625f);
    float _2257 = (((_2169 * clamp(mad((-0.0f) - _367, CB4_m0[137u].w, (_1840 * _1840) / (mad(_1840, 4.0f, 2.0f) * (_2187 * (_2183 * _2183)))), 0.0f, 1.0f)) / max(_1840, 9.9999997473787516355514526367188e-06f)) * (asfloat(_439 ? asuint(CB4_m0[139u]).w : (_441 ? asuint(CB4_m0[139u]).z : (_443 ? asuint(CB4_m0[139u]).y : (_445 ? asuint(CB4_m0[139u]).x : asuint(CB4_m0[138u]).w)))) * asfloat(_439 ? asuint(CB4_m0[166u]).w : (_441 ? asuint(CB4_m0[166u]).z : (_443 ? asuint(CB4_m0[166u]).y : (_445 ? asuint(CB4_m0[166u]).x : asuint(CB4_m0[165u]).w)))))) * 10.0f;
    float _2269 = asfloat((_2020 < 0.5f) ? asuint(clamp(_2257, 0.0f, 1.0f) * 100.0f) : asuint((_2169 * min(0.16666333377361297607421875f / _2187, 1.0f)) * 100.0f));
    float _2270 = ((asfloat(_439 ? _1984.x : (_441 ? _1974.x : (_443 ? _1964.x : (_445 ? _1947.x : _1954.x)))) * _2121) * _1831) * _2269;
    float _2271 = ((asfloat(_439 ? _1984.y : (_441 ? _1974.y : (_443 ? _1964.y : (_445 ? _1947.y : _1954.y)))) * _2121) * _1833) * _2269;
    float _2272 = ((asfloat(_439 ? _1984.z : (_441 ? _1974.z : (_443 ? _1964.z : (_445 ? _1947.z : _1954.z)))) * _2121) * _1834) * _2269;
    uint _2289 = (CB4_m0[144u].x >= 0.5f) ? 4294967295u : 0u;
    uint4 _2293 = asuint(CB4_m0[80u]);
    uint4 _2300 = asuint(CB4_m0[79u]);
    uint4 _2310 = asuint(CB4_m0[81u]);
    uint4 _2320 = asuint(CB4_m0[82u]);
    uint4 _2330 = asuint(CB4_m0[83u]);
    float _2350 = asfloat(_2289 & asuint(_1819 * (_389 * asfloat(_439 ? _2330.x : (_441 ? _2320.x : (_443 ? _2310.x : (_445 ? _2293.x : _2300.x)))))));
    float _2352 = asfloat(_2289 & asuint(_1817 * (_389 * asfloat(_439 ? _2330.y : (_441 ? _2320.y : (_443 ? _2310.y : (_445 ? _2293.y : _2300.y)))))));
    float _2354 = asfloat(_2289 & asuint(_1815 * (_389 * asfloat(_439 ? _2330.z : (_441 ? _2320.z : (_443 ? _2310.z : (_445 ? _2293.z : _2300.z)))))));
    float _2363 = _1899 * TEXCOORD_8.x;
    float _2364 = _1899 * TEXCOORD_8.y;
    float _2365 = _1899 * TEXCOORD_8.z;
    float _2654;
    float _2655;
    float _2656;
    if (_532)
    {
        uint _2615 = (uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 24u;
        uint3 _2625 = uint3(T1.Load(_2615).x, T1.Load(_2615 + 1u).x, T1.Load(_2615 + 2u).x);
        _2654 = asfloat(_2625.x);
        _2655 = asfloat(_2625.y);
        _2656 = asfloat(_2625.z);
    }
    else
    {
        _2654 = asfloat(0u);
        _2655 = asfloat(0u);
        _2656 = asfloat(0u);
    }
    bool _2660 = 0.5f < CB0_m0[23u].y;
    float _2859;
    float _2861;
    float _2863;
    if (0.5f >= CB0_m0[188u].w)
    {
        float _2713 = clamp(mad((-0.0f) - dot(float3(_523, _524, _525), float3(_623, _624, _625)), 0.5f, 0.5f), 0.0f, 1.0f);
        float _2718 = clamp(mad(_339, 0.5f, 0.300000011920928955078125f) * 1.25f, 0.0f, 1.0f);
        float _2721 = (_2718 * _2718) * mad(_2718, -2.0f, 3.0f);
        float _2722 = _2721 * _2721;
        float _2937;
        if (_532)
        {
            _2937 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _2937 = asfloat(0u);
        }
        float _2978 = clamp((((-0.0f) - mad(min(_526 * 0.083333335816860198974609375f, 1.0f), -0.300000011920928955078125f, 0.5f)) + (((-0.0f) - dot(float3(_523, _524, _525), float3(_338, _339, _340))) + 1.0f)) * 3.3333332538604736328125f, 0.0f, 1.0f);
        float _3001 = CB0_m0[189u].x * CB0_m0[189u].x;
        float _3002 = CB0_m0[189u].y * CB0_m0[189u].y;
        float _3003 = CB0_m0[189u].z * CB0_m0[189u].z;
        float _3004 = _3001 * _3001;
        float _3005 = _3002 * _3002;
        float _3006 = _3003 * _3003;
        float _3007 = _3004 * _3004;
        float _3008 = _3005 * _3005;
        float _3009 = _3006 * _3006;
        float _3016 = dot(float3(CB0_m0[189u].xyz), 0.3300000131130218505859375f.xxx) * (1.0f / (dot(float3(_3007, _3008, _3009), 0.699999988079071044921875f.xxx) + 9.9999997473787516355514526367188e-06f));
        float _3023 = mad(_1260, mad(_3016, _3007, (-0.0f) - _1941), _1941);
        float _3024 = mad(_1260, mad(_3016, _3008, (-0.0f) - _1942), _1942);
        float _3025 = mad(_1260, mad(_3016, _3009, (-0.0f) - _1943), _1943);
        float _3030 = exp2(log2(_2713 * _2713) * 20.0f);
        float _3054 = mad(_1815, _1822, _1825 + _1824) * 0.3300000131130218505859375f;
        float _3071 = exp2(log2(clamp(_1824, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _3072 = exp2(log2(clamp(_1825, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _3073 = exp2(log2(clamp(_1826, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _3078 = rsqrt(max(dot(float3(_3071, _3072, _3073), float3(_3071, _3072, _3073)), 6.103515625e-05f));
        float _3079 = _3078 * _3071;
        float _3080 = _3078 * _3072;
        float _3081 = _3078 * _3073;
        float _3086 = CB0_m0[198u].w * 48.0f;
        float _3088 = mad((_3054 * _3054) * CB0_m0[199u].w, -0.199999988079071044921875f, 1.0f) * 0.100000001490116119384765625f;
        float _3092 = (-0.0f) - _3088;
        float _3102 = ((_2978 * _2978) * mad(_2978, -2.0f, 3.0f)) * (mad(CB0_m0[199u].y, mad(clamp((-0.0f) - _524, 0.0f, 1.0f), asfloat((0.0f != TEXCOORD_7.z) ? 1083179008u : asuint(mad(_352, CB4_m0[137u].z, 2.5f))), -0.5f), 1.0f) * (clamp(mad(_2937, 0.39999997615814208984375f, _1260) + 0.60000002384185791015625f, 0.0f, 1.0f) * (mad(_1269 * mad(_1346, 0.5f, 0.5f), 1.39999997615814208984375f, 0.100000001490116119384765625f) * (mad(CB0_m0[199u].x, mad(_2721, mad(_2721 * (_2722 * _2722), -0.699999988079071044921875f, 1.0f), -0.100000001490116119384765625f), 0.100000001490116119384765625f) * mad(_2713, 0.800000011920928955078125f, 0.20000000298023223876953125f)))));
        uint4 _3112 = asuint(CB4_m0[87u]);
        uint4 _3119 = asuint(CB4_m0[86u]);
        uint4 _3129 = asuint(CB4_m0[88u]);
        uint4 _3139 = asuint(CB4_m0[89u]);
        uint4 _3149 = asuint(CB4_m0[90u]);
        float _3161 = ((_3086 * mad(_356, mad(_3092, _3081, _1834), _3081 * _3088)) * (mad(CB0_m0[199u].z, ((-0.0f) - _1943) + mad(_3030, ((-0.0f) - _3025) + _1943, _3025), _1943) * _3102)) * asfloat(_439 ? _3149.z : (_441 ? _3139.z : (_443 ? _3129.z : (_445 ? _3112.z : _3119.z))));
        float _3164 = mad(clamp(mad(_526, 0.20000000298023223876953125f, -1.0f), 0.0f, 1.0f), -0.699999988079071044921875f, 1.0f);
        float _3165 = (((_3086 * mad(_356, mad(_3092, _3079, _1831), _3079 * _3088)) * (mad(CB0_m0[199u].z, ((-0.0f) - _1941) + mad(_3030, ((-0.0f) - _3023) + _1941, _3023), _1941) * _3102)) * asfloat(_439 ? _3149.x : (_441 ? _3139.x : (_443 ? _3129.x : (_445 ? _3112.x : _3119.x))))) * _3164;
        float _3166 = (((_3086 * mad(_356, mad(_3092, _3080, _1833), _3080 * _3088)) * (mad(CB0_m0[199u].z, ((-0.0f) - _1942) + mad(_3030, ((-0.0f) - _3024) + _1942, _3024), _1942) * _3102)) * asfloat(_439 ? _3149.y : (_441 ? _3139.y : (_443 ? _3129.y : (_445 ? _3112.y : _3119.y))))) * _3164;
        float _3169 = mad(_3161, _3164, _3166 + _3165);
        float _3171 = mad(_3169 * _3169, 0.0500000007450580596923828125f, 1.0f);
        float _3181 = asfloat((0.5f < TEXCOORD_7.z) ? 1056964608u : 1065353216u);
        float _3182 = (_3171 * _3165) * _3181;
        float _3183 = (_3171 * _3166) * _3181;
        float _3184 = (_3171 * (_3161 * _3164)) * _3181;
        bool _3188 = 0.5f < CB3_m0[1u].w;
        _2859 = asfloat(_3188 ? asuint(min(_3184, 0.699999988079071044921875f)) : asuint(_3184)) * CB0_m0[198u].z;
        _2861 = asfloat(_3188 ? asuint(min(_3183, 0.699999988079071044921875f)) : asuint(_3183)) * CB0_m0[198u].y;
        _2863 = asfloat(_3188 ? asuint(min(_3182, 0.699999988079071044921875f)) : asuint(_3182)) * CB0_m0[198u].x;
    }
    else
    {
        _2859 = asfloat(0u);
        _2861 = asfloat(0u);
        _2863 = asfloat(0u);
    }
    float _2871 = _2350 + (max(mad(_2270, _1941, -1.0f), 0.0f) + mad(asfloat(_2660 ? 1028443341u : asuint(_2654)), _1819 * _1899, mad(_2363, _1824, mad(_1824, _1941, _1941 * _2270))));
    float _2872 = _2352 + (max(mad(_2271, _1942, -1.0f), 0.0f) + mad(asfloat(_2660 ? 1028443341u : asuint(_2655)), _1817 * _1899, mad(_2364, _1825, mad(_1825, _1942, _1942 * _2271))));
    float _2873 = _2354 + (max(mad(_2272, _1943, -1.0f), 0.0f) + mad(asfloat(_2660 ? 1028443341u : asuint(_2656)), _1815 * _1899, mad(_2365, _1826, mad(_1826, _1943, _1943 * _2272))));
    float _2881 = CB4_m0[29u].w * CB4_m0[155u].w;
    SV_Target.x = mad(_2881, ((-0.0f) - _2871) + CB4_m0[29u].x, _2871);
    SV_Target.y = mad(_2881, ((-0.0f) - _2872) + CB4_m0[29u].y, _2872);
    SV_Target.z = mad(_2881, ((-0.0f) - _2873) + CB4_m0[29u].z, _2873);
    float _2906 = mad((-0.0f) - CB4_m0[29u].w, CB4_m0[155u].w, 1.0f);
    SV_Target_1.x = min(sqrt(max((_2863 * mad(_2363, 2.0f, 1.0f)) * _2906, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.y = min(sqrt(max((_2861 * mad(_2364, 2.0f, 1.0f)) * _2906, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.z = min(sqrt(max((_2859 * mad(_2365, 2.0f, 1.0f)) * _2906, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.w = (_2354 + (_2352 + _2350)) * 0.33329999446868896484375f;
    SV_Target_3.x = mad(_338, 0.5f, 0.5f);
    SV_Target_3.y = mad(_339, 0.5f, 0.5f);
    SV_Target_3.z = mad(_340, 0.5f, 0.5f);
    SV_Target.w = 1.0f;
    SV_Target_2.w = 0.3400000035762786865234375f;
    SV_Target_3.w = 1.0f;
}

SPIRV_Cross_Output main(SPIRV_Cross_Input stage_input)
{
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
