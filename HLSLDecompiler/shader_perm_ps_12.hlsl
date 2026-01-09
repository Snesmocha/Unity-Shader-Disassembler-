static const float _90[16] = { 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f };

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
Texture2D<float4> T7 : register(t7, space0);
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
    bool _131 = 0.5f < CB1_m0[28u].y;
    float _155 = (TEXCOORD_5.x / TEXCOORD_5.w) + ((-0.0f) - (TXCOORDD_6.x / TXCOORDD_6.w));
    float _156 = (TEXCOORD_5.y / TEXCOORD_5.w) + ((-0.0f) - (TXCOORDD_6.y / TXCOORDD_6.w));
    float _165 = (-0.0f) - _156;
    SV_Target_2.x = _131 ? mad(sqrt(abs(_155 * 0.5f)) * float(int((0u - ((0.0f < _155) ? 4294967295u : 0u)) + ((_155 < 0.0f) ? 4294967295u : 0u))), 0.5f, 0.4980392158031463623046875f) : 0.4979999959468841552734375f;
    SV_Target_2.y = _131 ? mad(sqrt(abs(_156 * (-0.5f))) * float(int((0u - ((0.0f < _165) ? 4294967295u : 0u)) + ((_165 < 0.0f) ? 4294967295u : 0u))), 0.5f, 0.4980392158031463623046875f) : 0.4979999959468841552734375f;
    uint _214 = 3u & 31u;
    uint _220 = 2u & 31u;
    uint _226 = 1u & 31u;
    uint _233 = 0u & 31u;
    SV_Target_2.z = float(spvBitfieldInsert((spvBitfieldInsert(0u, (0.0f != CB4_m0[152u].x) ? 4294967295u : 0u, _214, min((1u & 31u), (32u - _214))) + spvBitfieldInsert(0u, (CB3_m0[40u].x == 1.0f) ? 4294967295u : 0u, _220, min((1u & 31u), (32u - _220)))) + spvBitfieldInsert(0u, (0.0f != CB4_m0[151u].z) ? 4294967295u : 0u, _226, min((1u & 31u), (32u - _226))), (0.0f != CB4_m0[151u].w) ? 4294967295u : 0u, _233, min((1u & 31u), (32u - _233)))) * 0.0039215688593685626983642578125f;
    uint _254 = (((gl_FrontFacing ? 4294967295u : 0u) == 0u) ? 4294967295u : 0u) & ((0.5f < CB4_m0[147u].x) ? 4294967295u : 0u);
    bool _261 = ((((1.0f < TEXCOORD.z) ? 4294967295u : 0u) & ((0.5f < CB4_m0[147u].y) ? 4294967295u : 0u)) | _254) != 0u;
    float _270 = _261 ? TEXCOORD.z : TEXCOORD.x;
    float _271 = _261 ? TEXCOORD.w : TEXCOORD.y;
    float4 _278 = T3.SampleBias(S0, float2(_270, _271), CB0_m0[191u].x);
    float _281 = _278.x;
    float _282 = _278.y;
    float _283 = _278.z;
    bool _293 = _254 != 0u;
    float _302 = _293 ? TEXCOORD.z : TEXCOORD.x;
    float _303 = _293 ? TEXCOORD.w : TEXCOORD.y;
    float4 _308 = T4.SampleBias(S0, float2(_302, _303), CB0_m0[191u].x);
    float _326 = mad(clamp(_308.x, 0.0f, 1.0f), 2.0f, -1.0039999485015869140625f) * CB4_m0[137u].y;
    float _327 = mad(clamp(_308.y, 0.0f, 1.0f), 2.0f, -1.0039999485015869140625f) * CB4_m0[137u].y;
    float _335 = asfloat(((gl_FrontFacing ? 4294967295u : 0u) != 0u) ? 1065353216u : 3212836864u) * sqrt(((-0.0f) - min(dot(float2(_326, _327), float2(_326, _327)), 1.0f)) + 1.0f);
    float _360 = mad(_335, TEXCOORD_2.x, mad(_326, TEXCOORD_3.x, _327 * TEXCOORD_4.x));
    float _361 = mad(_335, TEXCOORD_2.y, mad(_326, TEXCOORD_3.y, _327 * TEXCOORD_4.y));
    float _362 = mad(_335, TEXCOORD_2.z, mad(_326, TEXCOORD_3.z, _327 * TEXCOORD_4.z));
    float _366 = rsqrt(dot(float3(_360, _361, _362), float3(_360, _361, _362)));
    float _367 = _366 * _360;
    float _368 = _366 * _361;
    float _369 = _366 * _362;
    float4 _374 = T6.SampleBias(S0, float2(_302, _303), CB0_m0[191u].x);
    float _379 = clamp(_374.z, 0.0f, 1.0f);
    float _380 = clamp(_374.x, 0.0f, 1.0f);
    float _381 = clamp(_374.y, 0.0f, 1.0f);
    float _385 = _381 * CB4_m0[137u].z;
    float4 _390 = T7.SampleBias(S0, float2(_302, _303), CB0_m0[191u].x);
    float _395 = clamp(_390.z, 0.0f, 1.0f);
    float _397 = clamp(_390.y, 0.0f, 1.0f);
    float _424;
    if (0.5f < CB4_m0[135u].z)
    {
        uint _410 = (0.5f < CB4_m0[144u].x) ? 4294967295u : 0u;
        _424 = asfloat((((((0.5f < CB4_m0[144u].y) ? 4294967295u : 0u) & _410) != 0u) ? asuint(max((_395 + (-0.20000000298023223876953125f)) * 1.25f, 0.0f)) : asuint(_395)) & _410);
    }
    else
    {
        _424 = _395;
    }
    bool _439 = uint(int(max(((-0.0f) - floor(_380 * 5.0f)) + 4.0f, 0.0f))) == asuint(CB4_m0[132u]).y;
    uint _440 = _439 ? 4294967295u : 0u;
    uint _441 = _440 & 1u;
    bool _446 = 0.5f < CB4_m0[136u].w;
    float4 _460 = T2.SampleBias(S0, float2(TEXCOORD.x * CB4_m0[137u].x, TEXCOORD.y * CB4_m0[137u].x), CB0_m0[191u].x);
    uint _485 = _446 ? asuint(max(mad(_281, CB4_m0[57u].x, _460.x) + (-0.5f), 0.0f)) : asuint(_281 * CB4_m0[57u].x);
    float _486 = asfloat(_485);
    uint _487 = _446 ? asuint(max(mad(_282, CB4_m0[57u].y, _460.y) + (-0.5f), 0.0f)) : asuint(_282 * CB4_m0[57u].y);
    float _488 = asfloat(_487);
    uint _489 = _446 ? asuint(max(mad(_283, CB4_m0[57u].z, _460.z) + (-0.5f), 0.0f)) : asuint(_283 * CB4_m0[57u].z);
    float _490 = asfloat(_489);
    bool _491 = _380 < 0.20000000298023223876953125f;
    bool _493 = _380 < 0.4000000059604644775390625f;
    bool _495 = _380 < 0.60000002384185791015625f;
    bool _497 = _380 < 0.800000011920928955078125f;
    float _541 = ((-0.0f) - TEXCOORD_2.w) + CB0_m0[53u].x;
    float _542 = ((-0.0f) - TEXCOORD_3.w) + CB0_m0[53u].y;
    float _543 = ((-0.0f) - TEXCOORD_4.w) + CB0_m0[53u].z;
    float _544 = dot(float3(_541, _542, _543), float3(_541, _542, _543));
    float _549 = rsqrt(max(_544, 1.1754943508222875079687365372222e-38f));
    float _550 = _549 * _541;
    float _551 = _549 * _542;
    float _552 = _549 * _543;
    float _553 = sqrt(_544);
    SV_Target.w = mad(min(clamp((dot(float3(CB3_m0[5u].xyz), float3(_550, _551, _552)) + 0.449999988079071044921875f) * 2.22222232818603515625f, 0.0f, 1.0f), clamp((dot(float3(CB3_m0[6u].xyz), float3(_550, _551, _552)) + (-0.4000000059604644775390625f)) * 1.66666662693023681640625f, 0.0f, 1.0f)), clamp(_390.x, 0.0f, 1.0f) + (-1.0f), 1.0f);
    bool _591 = int(0u) < int(asuint(CB0_m0[188u]).z);
    float _662;
    float _663;
    float _664;
    float _665;
    float _666;
    float _667;
    float _668;
    float _669;
    float _670;
    if (_591)
    {
        uint _602 = uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u)));
        uint _603 = _602 * 32u;
        uint4 _615 = uint4(T1.Load(_603).x, T1.Load(_603 + 1u).x, T1.Load(_603 + 2u).x, T1.Load(_603 + 3u).x);
        uint _626 = (_602 * 32u) + 4u;
        uint4 _638 = uint4(T1.Load(_626).x, T1.Load(_626 + 1u).x, T1.Load(_626 + 2u).x, T1.Load(_626 + 3u).x);
        _662 = asfloat(_615.x);
        _663 = asfloat(_615.y);
        _664 = asfloat(_615.z);
        _665 = asfloat(_615.w);
        _666 = asfloat(_638.x);
        _667 = asfloat(_638.y);
        _668 = asfloat(_638.z);
        _669 = asfloat(T1.Load((_602 * 32u) + 8u).x);
        _670 = asfloat(_638.w);
    }
    else
    {
        _662 = asfloat(0u);
        _663 = asfloat(0u);
        _664 = asfloat(0u);
        _665 = asfloat(0u);
        _666 = asfloat(0u);
        _667 = asfloat(0u);
        _668 = asfloat(0u);
        _669 = asfloat(0u);
        _670 = asfloat(0u);
    }
    float _674 = ((-0.0f) - TEXCOORD_2.w) + _666;
    float _675 = ((-0.0f) - TEXCOORD_3.w) + _667;
    float _676 = ((-0.0f) - TEXCOORD_4.w) + _668;
    float _680 = max(dot(float3(_674, _675, _676), float3(_674, _675, _676)), 1.1754943508222875079687365372222e-38f);
    float _681 = rsqrt(_680);
    float _682 = _681 * _674;
    float _683 = _681 * _675;
    float _684 = _681 * _676;
    float _689 = max(((-0.0f) - (_680 / (_665 * _665))) + 1.0f, 0.0f);
    float _707 = mad(_689, _662 + ((-0.0f) - CB0_m0[189u].x), CB0_m0[189u].x);
    float _708 = mad(_689, _663 + ((-0.0f) - CB0_m0[189u].y), CB0_m0[189u].y);
    float _709 = mad(_689, _664 + ((-0.0f) - CB0_m0[189u].z), CB0_m0[189u].z);
    float _711 = mad(_689, _689 + (-1.0f), 1.0f);
    float _1316;
    float _1317;
    if (0.5f < CB0_m0[22u].x)
    {
        float _759 = mad(_367, CB4_m0[135u].x, TEXCOORD_2.w) + ((-0.0f) - CB3_m0[39u].x);
        float _760 = mad(_368, CB4_m0[135u].x, TEXCOORD_3.w) + ((-0.0f) - CB3_m0[39u].y);
        float _761 = mad(_369, CB4_m0[135u].x, TEXCOORD_4.w) + ((-0.0f) - CB3_m0[39u].z);
        float _797 = mad(CB3_m0[35u].z, _761, mad(CB3_m0[33u].z, _759, _760 * CB3_m0[34u].z)) + CB3_m0[36u].z;
        float _807 = mad(mad(CB3_m0[35u].x, _761, mad(CB3_m0[33u].x, _759, _760 * CB3_m0[34u].x)) + CB3_m0[36u].x, CB3_m0[38u].x, CB3_m0[38u].z);
        float _808 = mad(mad(CB3_m0[35u].y, _761, mad(CB3_m0[33u].y, _759, _760 * CB3_m0[34u].y)) + CB3_m0[36u].y, CB3_m0[38u].y, CB3_m0[38u].w);
        float _891 = ((((((T15.SampleCmpLevelZero(S1, float2(_807 + ((-0.0f) - CB0_m0[200u].x), _808 + ((-0.0f) - CB0_m0[200u].y)), _797).xxxx.x + T15.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, -1.0f, _807), mad(CB0_m0[200u].y, 1.0f, _808)), _797).xxxx.x) + T15.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 1.0f, _807), mad(CB0_m0[200u].y, -1.0f, _808)), _797).xxxx.x) + T15.SampleCmpLevelZero(S1, float2(_807 + CB0_m0[200u].x, _808 + CB0_m0[200u].y), _797).xxxx.x) + T15.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, -1.4142129421234130859375f, _807), mad(CB0_m0[200u].y, 0.0f, _808)), _797).xxxx.x) + T15.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 1.4142129421234130859375f, _807), mad(CB0_m0[200u].y, 0.0f, _808)), _797).xxxx.x) + T15.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 0.0f, _807), mad(CB0_m0[200u].y, -1.4142129421234130859375f, _808)), _797).xxxx.x) + T15.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 0.0f, _807), mad(CB0_m0[200u].y, 1.4142129421234130859375f, _808)), _797).xxxx.x;
        float _914 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[20u].x);
        float _915 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[20u].y);
        float _916 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[20u].z);
        float _926 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[21u].x);
        float _927 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[21u].y);
        float _928 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[21u].z);
        float _937 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[22u].x);
        float _938 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[22u].y);
        float _939 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[22u].z);
        float _949 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[23u].x);
        float _950 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[23u].y);
        float _951 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[23u].z);
        bool _971 = dot(float3(_914, _915, _916), float3(_914, _915, _916)) < CB2_m0[24u].x;
        bool _972 = dot(float3(_926, _927, _928), float3(_926, _927, _928)) < CB2_m0[24u].y;
        bool _973 = dot(float3(_937, _938, _939), float3(_937, _938, _939)) < CB2_m0[24u].z;
        float _1005 = ((-0.0f) - dot(float4(asfloat((_971 ? 4294967295u : 0u) & 1065353216u), max(asfloat(_971 ? 3212836864u : 2147483648u) + asfloat((_972 ? 4294967295u : 0u) & 1065353216u), 0.0f), max(asfloat(_972 ? 3212836864u : 2147483648u) + asfloat((_973 ? 4294967295u : 0u) & 1065353216u), 0.0f), max(asfloat(_973 ? 3212836864u : 2147483648u) + asfloat(((dot(float3(_949, _950, _951), float3(_949, _950, _951)) < CB2_m0[24u].w) ? 4294967295u : 0u) & 1065353216u), 0.0f)), float4(4.0f, 3.0f, 2.0f, 1.0f))) + 4.0f;
        uint _1007 = uint(_1005) << 2u;
        uint _1010 = _1007 + 1u;
        uint _1029 = _1007 + 2u;
        uint _1040 = _1007 + 3u;
        float _1046 = mad(CB2_m0[_1029].x, TEXCOORD_4.w, mad(CB2_m0[_1007].x, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_1010].x)) + CB2_m0[_1040].x;
        float _1047 = mad(CB2_m0[_1029].y, TEXCOORD_4.w, mad(CB2_m0[_1007].y, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_1010].y)) + CB2_m0[_1040].y;
        float _1048 = mad(CB2_m0[_1029].z, TEXCOORD_4.w, mad(CB2_m0[_1007].z, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_1010].z)) + CB2_m0[_1040].z;
        float _1062 = frac(sin(dot(float2(frac(_1046 * 1024.0f), frac(_1047 * 1024.0f)), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
        float _1063 = sin(_1062);
        float _1064 = cos(_1062);
        float _1075 = (CB2_m0[26u].x * 1.2999999523162841796875f) * _1063;
        float _1076 = (CB2_m0[26u].x * 1.2999999523162841796875f) * _1064;
        float _1077 = (CB2_m0[26u].y * 1.2999999523162841796875f) * _1063;
        float _1078 = (CB2_m0[26u].y * 1.2999999523162841796875f) * _1064;
        float _1174 = ((((T0.SampleCmpLevelZero(S1, float3(_1046 + ((_1076 * (-0.97829997539520263671875f)) + (_1075 * (-0.172399997711181640625f))), _1047 + ((_1078 * 0.172399997711181640625f) + (_1077 * (-0.97829997539520263671875f))), _1005), _1048).xxxx.x + T0.SampleCmpLevelZero(S1, float3(_1046 + ((_1076 * 0.484600007534027099609375f) + (_1075 * 0.874700009822845458984375f)), _1047 + ((_1078 * (-0.874700009822845458984375f)) + (_1077 * 0.484600007534027099609375f)), _1005), _1048).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1046 + ((_1076 * (-0.037399999797344207763671875f)) + (_1075 * (-0.96829998493194580078125f))), _1047 + ((_1078 * 0.96829998493194580078125f) + (_1077 * (-0.037399999797344207763671875f))), _1005), _1048).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1046 + ((_1076 * 0.419600009918212890625f) + (_1075 * 0.278299987316131591796875f)), _1047 + ((_1078 * (-0.278299987316131591796875f)) + (_1077 * 0.419600009918212890625f)), _1005), _1048).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1046 + ((_1076 * 0.83910000324249267578125f) + (_1075 * (-0.1507000029087066650390625f))), _1047 + ((_1078 * (-0.1507000029087066650390625f)) + (_1077 * 0.83910000324249267578125f)), _1005), _1048).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1046 + ((_1076 * 0.4792999923229217529296875f) + (_1075 * (-0.6417000293731689453125f))), _1047 + ((_1078 * (-0.6417000293731689453125f)) + (_1077 * 0.4792999923229217529296875f)), _1005), _1048).xxxx.x;
        float _1255 = (((((_1174 + T0.SampleCmpLevelZero(S1, float3(_1046 + ((_1076 * (-0.81610000133514404296875f)) + (_1075 * 0.577899992465972900390625f)), _1047 + ((_1078 * 0.577899992465972900390625f) + (_1077 * (-0.81610000133514404296875f))), _1005), _1048).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1046 + ((_1076 * (-0.4587999880313873291015625f)) + (_1075 * (-0.5408999919891357421875f))), _1047 + ((_1078 * 0.5408999919891357421875f) + (_1077 * (-0.4587999880313873291015625f))), _1005), _1048).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1046 + ((_1076 * (-0.19189999997615814208984375f)) + (_1075 * 0.704400002956390380859375f)), _1047 + ((_1078 * 0.704400002956390380859375f) + (_1077 * (-0.19189999997615814208984375f))), _1005), _1048).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1046 + ((_1076 * (-0.446399986743927001953125f)) + (_1075 * 0.105300001800060272216796875f)), _1047 + ((_1078 * 0.105300001800060272216796875f) + (_1077 * (-0.446399986743927001953125f))), _1005), _1048).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1046 + ((_1076 * 0.06610000133514404296875f) + (_1075 * (-0.20659999549388885498046875f))), _1047 + ((_1078 * (-0.20659999549388885498046875f)) + (_1077 * 0.06610000133514404296875f)), _1005), _1048).xxxx.x) * CB2_m0[25u].x;
        float _1280 = clamp(mad(_669, 2.0f, -1.0f), 0.0f, 1.0f);
        float _1284 = _1280 * CB0_m0[189u].w;
        float _1294 = (asfloat(((((_1048 >= 1.0f) ? 4294967295u : 0u) | ((0.0f >= _1048) ? 4294967295u : 0u)) != 0u) ? 1065353216u : asuint(mad(_1255, 0.090899996459484100341796875f, ((-0.0f) - CB2_m0[25u].x) + 1.0f))) * mad(CB3_m0[40u].y, ((-0.0f) - _670) + 1.0f, _670)) * asfloat((0.5f < CB3_m0[37u].x) ? asuint(min(mad(_1280, (asfloat(_491 ? asuint(CB4_m0[163u]).w : (_493 ? asuint(CB4_m0[163u]).z : (_495 ? asuint(CB4_m0[163u]).y : (_497 ? asuint(CB4_m0[163u]).x : asuint(CB4_m0[162u]).w)))) * mad(_891 + T15.SampleCmpLevelZero(S1, float2(_807, _808), _797).xxxx.x, 0.11110000312328338623046875f, -1.0f)) * CB3_m0[37u].x, 1.0f), 1.0f)) : 1065353216u);
        _1316 = mad(_1294, _1284 * CB4_m0[133u].z, mad((-0.0f) - _1284, CB4_m0[133u].z, 1.0f));
        _1317 = mad(_1294, CB4_m0[133u].z, ((-0.0f) - CB4_m0[133u].z) + 1.0f);
    }
    else
    {
        _1316 = asfloat(1065353216u);
        _1317 = asfloat(1065353216u);
    }
    float _1323 = clamp(CB3_m0[1u].w * 2.5f, 0.0f, 1.0f);
    float _1326 = mad(((-0.0f) - _1323) + 1.0f, _1316, _1323);
    bool _1330 = CB3_m0[3u].w != 0.0f;
    float _1344 = clamp(dot(float3(CB3_m0[3u].xyz), float3(TEXCOORD_2.w, TEXCOORD_3.w, TEXCOORD_4.w)) + ((-0.0f) - CB3_m0[3u].w), 0.0f, 1.0f);
    float _1395 = asfloat(_1330 ? asuint(mad(_1344, ((-0.0f) - _707) + mad(CB0_m0[15u].w, mad((-0.0f) - _707, CB0_m0[15u].x, _707 + CB0_m0[15u].x), _707 * CB0_m0[15u].x), _707)) : asuint(_707));
    float _1397 = asfloat(_1330 ? asuint(mad(_1344, ((-0.0f) - _708) + mad(CB0_m0[15u].w, mad((-0.0f) - _708, CB0_m0[15u].y, _708 + CB0_m0[15u].y), _708 * CB0_m0[15u].y), _708)) : asuint(_708));
    float _1399 = asfloat(_1330 ? asuint(mad(_1344, ((-0.0f) - _709) + mad(CB0_m0[15u].w, mad((-0.0f) - _709, CB0_m0[15u].z, _709 + CB0_m0[15u].z), _709 * CB0_m0[15u].z), _709)) : asuint(_709));
    float _1400 = max(asfloat(_491 ? asuint(CB4_m0[134u]).w : (_493 ? asuint(CB4_m0[134u]).z : (_495 ? asuint(CB4_m0[134u]).y : (_497 ? asuint(CB4_m0[134u]).x : asuint(CB4_m0[133u]).w)))), 9.9999997473787516355514526367188e-06f);
    float _1402 = 1.0f / _1400;
    float _1403 = dot(float3(_367, _368, _369), float3(_682, _683, _684));
    float _1420 = mad(mad(clamp(_308.z, 0.0f, 1.0f), 2.0f, -1.0f), 2.0f, mad(TEXCOORD_7.y, ((-0.0f) - _1403) + mad(_1403 + 1.0f, clamp(mad((-0.0f) - min(_683 * 3.0f, 1.0f), 0.5f, _368) + 1.5f, 0.0f, 1.0f), -1.0f), _1403));
    float _1433 = mad((-0.0f) - _1400, 3.0f, 2.0f);
    float _1434 = ((_1420 * 3.0f) + 3.0f) / _1433;
    float _1435 = (mad(_1420, 3.0f, (-0.0f) - (_1400 * 1.5f)) + 1.0f) / _1433;
    float _1436 = (mad(_1420, 3.0f, (-0.0f) - (_1400 * 4.5f)) + (-1.0f)) / _1433;
    float _1448 = mad(_1402, _1420 + 0.33329999446868896484375f, 0.5f);
    float _1449 = mad(_1402, _1420 + (-0.33329999446868896484375f), 0.5f);
    float _1450 = mad(_1402, _1420 + (-0.33329999446868896484375f), -0.5f);
    float _1461 = clamp(((-0.0f) - _1434) + 1.0f, 0.0f, 1.0f);
    float _1462 = clamp(min(_1434, ((-0.0f) - _1448) + 1.0f), 0.0f, 1.0f);
    float _1463 = clamp(min(((-0.0f) - _1435) + 1.0f, _1448), 0.0f, 1.0f);
    float _1467 = clamp(min(((-0.0f) - _1436) + 1.0f, _1450), 0.0f, 1.0f);
    float _1468 = clamp(_1436, 0.0f, 1.0f);
    float _1474 = mad(CB3_m0[40u].y, ((-0.0f) - _1326) + _1317, _1326);
    float _1481 = clamp(min(mad(_1474, -2.0f, 2.0f), mad(_1474, 2.0f, 0.0f)), 0.0f, 1.0f);
    float _1482 = clamp(mad(_1474, 2.0f, -1.0f), 0.0f, 1.0f);
    float _1483 = clamp(mad(_1474, -2.0f, 1.0f), 0.0f, 1.0f);
    float _1555;
    float _1557;
    float _1559;
    if (0.5f < CB3_m0[40u].y)
    {
        float _1522;
        if (_591)
        {
            _1522 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _1522 = asfloat(0u);
        }
        float _1526 = _1522 * CB0_m0[189u].w;
        float _1527 = _1526 * _1481;
        float _1533 = (mad((-0.0f) - _1481, _1526, _1481) + mad((-0.0f) - _1483, _1526, _1483)) + _1482;
        float _1866;
        if (_591)
        {
            _1866 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 7u).x);
        }
        else
        {
            _1866 = asfloat(0u);
        }
        _1555 = _1866 * _1527;
        _1557 = _1866 * _1533;
        _1559 = mad(_1483, _1526, mad((-0.0f) - _1533, _1866, _1533) + mad((-0.0f) - _1527, _1866, _1527));
    }
    else
    {
        float _1534;
        if (_591)
        {
            _1534 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _1534 = asfloat(0u);
        }
        _1555 = _1534 * _1481;
        _1557 = _1482;
        _1559 = _1534 * _1483;
    }
    float _1567 = mad(_1559, ((-0.0f) - _1463) + (((-0.0f) - _1462) + (((-0.0f) - _1461) + 1.0f)), _1463);
    float _1568 = _1557 + _1555;
    float _1569 = _1568 * clamp(min(_1435, ((-0.0f) - _1449) + 1.0f), 0.0f, 1.0f);
    float _1572 = mad(_1467 + _1468, _1555, _1568 * clamp(min(_1449, ((-0.0f) - _1450) + 1.0f), 0.0f, 1.0f));
    float _1573 = _1467 * _1557;
    float _1576 = _1461 * TEXCOORD_7.x;
    float _1581 = mad((-0.0f) - _1461, TEXCOORD_7.x, _1461) + _1462;
    uint4 _1585 = asuint(CB4_m0[60u]);
    uint4 _1592 = asuint(CB4_m0[59u]);
    uint4 _1602 = asuint(CB4_m0[61u]);
    uint4 _1612 = asuint(CB4_m0[62u]);
    uint4 _1622 = asuint(CB4_m0[63u]);
    uint4 _1635 = asuint(CB4_m0[65u]);
    uint4 _1642 = asuint(CB4_m0[64u]);
    uint4 _1652 = asuint(CB4_m0[66u]);
    uint4 _1662 = asuint(CB4_m0[67u]);
    uint4 _1672 = asuint(CB4_m0[68u]);
    uint4 _1685 = asuint(CB0_m0[10u]);
    uint4 _1691 = asuint(CB0_m0[3u]);
    uint4 _1704 = asuint(CB0_m0[11u]);
    uint4 _1710 = asuint(CB0_m0[4u]);
    uint4 _1723 = asuint(CB0_m0[12u]);
    uint4 _1729 = asuint(CB0_m0[5u]);
    uint4 _1742 = asuint(CB0_m0[9u]);
    uint4 _1748 = asuint(CB0_m0[6u]);
    uint4 _1758 = asuint(CB0_m0[13u]);
    uint4 _1764 = asuint(CB0_m0[7u]);
    uint4 _1774 = asuint(CB0_m0[14u]);
    uint4 _1780 = asuint(CB0_m0[8u]);
    float _1792 = min(_553 * 0.4372499883174896240234375f, 1.0f);
    float _1808 = mad(CB4_m0[133u].y, mad(_1792, CB3_m0[1u].w, (-0.0f) - _1792) + 1.0f, 0.0f);
    float _1809 = mad(CB4_m0[133u].y, mad((-0.0f) - _1792, CB3_m0[1u].w, _1792) + (-1.0f), 1.0f);
    float _1810 = asfloat(_491 ? _1622.x : (_493 ? _1612.x : (_495 ? _1602.x : (_497 ? _1585.x : _1592.x)))) + 6.103515625e-05f;
    float _1812 = asfloat(_491 ? _1622.y : (_493 ? _1612.y : (_495 ? _1602.y : (_497 ? _1585.y : _1592.y)))) + 6.103515625e-05f;
    float _1813 = asfloat(_491 ? _1622.z : (_493 ? _1612.z : (_495 ? _1602.z : (_497 ? _1585.z : _1592.z)))) + 6.103515625e-05f;
    float _1816 = (_1813 + (_1812 + _1810)) * 0.3333300054073333740234375f;
    float _1827 = mad(clamp(_1810 / _1816, 0.0f, 1.0f), _1808, _1809 * _1810);
    float _1828 = mad(clamp(_1812 / _1816, 0.0f, 1.0f), _1808, _1809 * _1812);
    float _1829 = mad(clamp(_1813 / _1816, 0.0f, 1.0f), _1808, _1809 * _1813);
    float _1830 = asfloat(_491 ? _1672.x : (_493 ? _1662.x : (_495 ? _1652.x : (_497 ? _1635.x : _1642.x)))) + 6.103515625e-05f;
    float _1831 = asfloat(_491 ? _1672.y : (_493 ? _1662.y : (_495 ? _1652.y : (_497 ? _1635.y : _1642.y)))) + 6.103515625e-05f;
    float _1832 = asfloat(_491 ? _1672.z : (_493 ? _1662.z : (_495 ? _1652.z : (_497 ? _1635.z : _1642.z)))) + 6.103515625e-05f;
    float _1835 = (_1832 + (_1831 + _1830)) * 0.3333300054073333740234375f;
    float _1845 = mad(clamp(_1830 / _1835, 0.0f, 1.0f), _1808, _1809 * _1830);
    float _1846 = mad(clamp(_1831 / _1835, 0.0f, 1.0f), _1808, _1809 * _1831);
    float _1847 = mad(clamp(_1832 / _1835, 0.0f, 1.0f), _1808, _1809 * _1832);
    float _1889;
    if (_591)
    {
        _1889 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
    }
    else
    {
        _1889 = asfloat(0u);
    }
    float _1892 = mad(_1889, ((-0.0f) - _711) + 1.0f, _711);
    float _1893 = _1892 * _1395;
    float _1894 = _1892 * _1397;
    float _1895 = _1892 * _1399;
    float _1896 = min(1.0f / max(_1399 + 1.1754943508222875079687365372222e-38f, max(_1397 + 1.1754943508222875079687365372222e-38f, _1395 + 1.1754943508222875079687365372222e-38f)), 1.0f);
    float _1930 = mad(_1893, mad(_1468, _1557, mad(asfloat(_439 ? _1758.x : _1764.x), _1572, _1573 * asfloat(_439 ? _1742.x : _1748.x))), (_1896 * _1893) * mad(asfloat(_439 ? _1685.x : _1691.x) * _1827, _1569, mad(asfloat(_439 ? _1704.x : _1710.x) * _1827, _1567, mad(asfloat(_439 ? _1774.x : _1780.x) * _1845, _1576, _1581 * (asfloat(_439 ? _1723.x : _1729.x) * _1845)))));
    float _1931 = mad(_1894, mad(_1468, _1557, mad(asfloat(_439 ? _1758.y : _1764.y), _1572, _1573 * asfloat(_439 ? _1742.y : _1748.y))), (_1896 * _1894) * mad(asfloat(_439 ? _1685.y : _1691.y) * _1828, _1569, mad(asfloat(_439 ? _1704.y : _1710.y) * _1828, _1567, mad(asfloat(_439 ? _1774.y : _1780.y) * _1846, _1576, _1581 * (asfloat(_439 ? _1723.y : _1729.y) * _1846)))));
    float _1932 = mad(_1895, mad(_1468, _1557, mad(asfloat(_439 ? _1758.z : _1764.z), _1572, _1573 * asfloat(_439 ? _1742.z : _1748.z))), (_1896 * _1895) * mad(asfloat(_439 ? _1685.z : _1691.z) * _1829, _1569, mad(asfloat(_439 ? _1704.z : _1710.z) * _1829, _1567, mad(asfloat(_439 ? _1774.z : _1780.z) * _1847, _1576, _1581 * (asfloat(_439 ? _1723.z : _1729.z) * _1847)))));
    bool _1935 = 0.5f < TEXCOORD_7.z;
    float _2049;
    float _2050;
    float _2051;
    if (_440 == 0u)
    {
        float _1946 = dot(float3(_486, _488, _490), float3(0.2899999916553497314453125f, 0.60000002384185791015625f, 0.10999999940395355224609375f));
        bool _1953 = TEXCOORD_7.z < 0.5f;
        float _1954 = mad(_1946, 0.2874999940395355224609375f, 1.4375f);
        float _1957 = mad(_1946, 0.4000000059604644775390625f, 1.0f);
        float _1958 = dot(float3(_682, _683, _684), float3(_1935 ? _367 : TEXCOORD_2.x, _1935 ? _368 : TEXCOORD_2.y, _1935 ? _369 : TEXCOORD_2.z));
        float _1965 = clamp(mad((-0.0f) - (((-0.0f) - _1403) + _1958), 3.0f, 1.0f), 0.0f, 1.0f);
        float _1971 = clamp(_1403, 0.0f, 1.0f);
        float _1975 = clamp(_1958, 0.0f, 1.0f);
        float _1977 = max(_486, max(_490, _488));
        bool _1978 = 1.0f < _1977;
        float _1993 = mad(mad(mad(mad(_1403, 0.5f, 0.5f), min(sqrt(_1965) * (_1965 + _1965), 1.0f), (-0.0f) - _1971), 0.5f, _1971), ((-0.0f) - _1954) + 1.0f, _1954);
        float _2000 = exp2(_1993 * log2(asfloat(_1978 ? asuint(_486 / _1977) : _485)));
        float _2001 = exp2(_1993 * log2(asfloat(_1978 ? asuint(_488 / _1977) : _487)));
        float _2002 = exp2(_1993 * log2(asfloat(_1978 ? asuint(_490 / _1977) : _489)));
        float _2009 = mad(((-0.0f) - _486) + _2000, 0.5f, _486);
        float _2010 = mad(((-0.0f) - _488) + _2001, 0.5f, _488);
        float _2011 = mad(((-0.0f) - _490) + _2002, 0.5f, _490);
        float _2022 = mad((-0.0f) - _1946, 0.0500000007450580596923828125f, 1.0499999523162841796875f);
        _2049 = asfloat(_1953 ? asuint(mad(_1975, _2002 + ((-0.0f) - _2011), _2011)) : asuint(_2022 * exp2(_1957 * log2(_490))));
        _2050 = asfloat(_1953 ? asuint(mad(_1975, _2001 + ((-0.0f) - _2010), _2010)) : asuint(_2022 * exp2(_1957 * log2(_488))));
        _2051 = asfloat(_1953 ? asuint(mad(_1975, _2000 + ((-0.0f) - _2009), _2009)) : asuint(_2022 * exp2(_1957 * log2(_486))));
    }
    else
    {
        _2049 = _490;
        _2050 = _488;
        _2051 = _486;
    }
    float _2053 = mad((-0.0f) - _385, 0.959999978542327880859375f, 0.959999978542327880859375f);
    float _2055 = _2053 * _2051;
    float _2056 = _2053 * _2050;
    float _2057 = _2053 * _2049;
    float _2062 = mad(_385, _2051 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _2064 = mad(_385, _2050 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _2065 = mad(_385, _2049 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _2070 = mad((-0.0f) - _397, CB4_m0[137u].w, 1.0f);
    float _2071 = _2070 * _2070;
    float _2092 = dot(float3((_1930 + CB0_m0[2u].x) + TEXCOORD_8.x, (_1931 + CB0_m0[2u].y) + TEXCOORD_8.y, (_1932 + CB0_m0[2u].z) + TEXCOORD_8.z), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2106 = ((-0.0f) - CB0_m0[19u].x) + CB0_m0[19u].y;
    float _2107 = 1.0f / _2106;
    float _2130 = asfloat((_2092 < CB0_m0[19u].x) ? asuint(_2092) : asuint(mad((-0.0f) - _2106, 1.0f / mad(_2092, _2107, mad((-0.0f) - CB0_m0[19u].x, _2107, 1.0f)), CB0_m0[19u].y))) / (_2092 + 9.9999997473787516355514526367188e-05f);
    float _2131 = _1930 * _2130;
    float _2132 = _1931 * _2130;
    float _2133 = _1932 * _2130;
    uint4 _2137 = asuint(CB4_m0[75u]);
    uint4 _2144 = asuint(CB4_m0[74u]);
    uint4 _2154 = asuint(CB4_m0[76u]);
    uint4 _2164 = asuint(CB4_m0[77u]);
    uint4 _2174 = asuint(CB4_m0[78u]);
    float _2210 = asfloat(_491 ? asuint(CB4_m0[142u]).y : (_493 ? asuint(CB4_m0[142u]).x : (_495 ? asuint(CB4_m0[141u]).w : (_497 ? asuint(CB4_m0[141u]).z : asuint(CB4_m0[141u]).y))));
    float _2245;
    if (0.5f < _2210)
    {
        _2245 = clamp(((clamp(mad(_1420, 1.5f, -0.5f), 0.0f, 1.0f) + _379) + (-1.0f)) / max(asfloat(_491 ? asuint(CB4_m0[143u]).z : (_493 ? asuint(CB4_m0[143u]).y : (_495 ? asuint(CB4_m0[143u]).x : (_497 ? asuint(CB4_m0[142u]).w : asuint(CB4_m0[142u]).z)))), 9.9999997473787516355514526367188e-06f), 0.0f, 1.0f);
    }
    else
    {
        _2245 = _379;
    }
    float _2249 = _2245 * CB4_m0[143u].w;
    float _2257 = mad(_674, _681, _550);
    float _2258 = mad(_675, _681, _551);
    float _2259 = mad(_676, _681, _552);
    float _2263 = rsqrt(dot(float3(_2257, _2258, _2259), float3(_2257, _2258, _2259)));
    float _2264 = _2263 * _2257;
    float _2265 = _2263 * _2258;
    float _2266 = _2263 * _2259;
    float _2292 = asfloat(_491 ? asuint(CB4_m0[141u]).x : (_493 ? asuint(CB4_m0[140u]).w : (_495 ? asuint(CB4_m0[140u]).z : (_497 ? asuint(CB4_m0[140u]).y : asuint(CB4_m0[140u]).x))));
    float _2303 = clamp(mad(_2292 * dot(float3(_367, _368, _369), float3(_2264, _2265, _2266)), 0.75f, 0.25f), 0.0f, 1.0f);
    float _2309 = clamp(mad(_2292 * dot(float3(_682, _683, _684), float3(_2264, _2265, _2266)), 0.75f, 0.25f), 0.0f, 1.0f);
    float _2311 = mad(_2303 * _2303, mad(_2071, _2071, -1.0f), 1.000010013580322265625f);
    float _2385 = (((clamp(mad(_1403 * _2292, 0.75f, 0.25f), 0.0f, 1.0f) * clamp(mad((-0.0f) - _397, CB4_m0[137u].w, (_2071 * _2071) / (mad(_2071, 4.0f, 2.0f) * (max(_2309 * _2309, 0.100000001490116119384765625f) * (_2311 * _2311)))), 0.0f, 1.0f)) / max(_2071, 9.9999997473787516355514526367188e-06f)) * (asfloat(_491 ? asuint(CB4_m0[166u]).w : (_493 ? asuint(CB4_m0[166u]).z : (_495 ? asuint(CB4_m0[166u]).y : (_497 ? asuint(CB4_m0[166u]).x : asuint(CB4_m0[165u]).w)))) * asfloat(_491 ? asuint(CB4_m0[139u]).w : (_493 ? asuint(CB4_m0[139u]).z : (_495 ? asuint(CB4_m0[139u]).y : (_497 ? asuint(CB4_m0[139u]).x : asuint(CB4_m0[138u]).w)))))) * 10.0f;
    float _2393 = asfloat((_2210 < 0.5f) ? asuint(clamp(_2385, 0.0f, 1.0f) * 100.0f) : 1099257348u);
    float _2394 = (_2062 * (asfloat(_491 ? _2174.x : (_493 ? _2164.x : (_495 ? _2154.x : (_497 ? _2137.x : _2144.x)))) * _2249)) * _2393;
    float _2395 = (_2064 * (asfloat(_491 ? _2174.y : (_493 ? _2164.y : (_495 ? _2154.y : (_497 ? _2137.y : _2144.y)))) * _2249)) * _2393;
    float _2396 = (_2065 * (asfloat(_491 ? _2174.z : (_493 ? _2164.z : (_495 ? _2154.z : (_497 ? _2137.z : _2144.z)))) * _2249)) * _2393;
    uint _2413 = (CB4_m0[144u].x >= 0.5f) ? 4294967295u : 0u;
    uint4 _2417 = asuint(CB4_m0[80u]);
    uint4 _2424 = asuint(CB4_m0[79u]);
    uint4 _2434 = asuint(CB4_m0[81u]);
    uint4 _2444 = asuint(CB4_m0[82u]);
    uint4 _2454 = asuint(CB4_m0[83u]);
    float _2474 = asfloat(_2413 & asuint(_2051 * (_424 * asfloat(_491 ? _2454.x : (_493 ? _2444.x : (_495 ? _2434.x : (_497 ? _2417.x : _2424.x)))))));
    float _2476 = asfloat(_2413 & asuint(_2050 * (_424 * asfloat(_491 ? _2454.y : (_493 ? _2444.y : (_495 ? _2434.y : (_497 ? _2417.y : _2424.y)))))));
    float _2478 = asfloat(_2413 & asuint(_2049 * (_424 * asfloat(_491 ? _2454.z : (_493 ? _2444.z : (_495 ? _2434.z : (_497 ? _2417.z : _2424.z)))))));
    float _2480 = _2478 + (_2476 + _2474);
    float _2487 = _2130 * TEXCOORD_8.x;
    float _2488 = _2130 * TEXCOORD_8.y;
    float _2489 = _2130 * TEXCOORD_8.z;
    uint _2533;
    uint _2534;
    uint _2535;
    uint _2536;
    uint _2537;
    uint _2538;
    if (_591)
    {
        uint _2503 = uint(max(int(uint(min(int(asuint(CB0_m0[188u]).z + 4294967295u), int(uint(int(CB3_m0[2u].z)))))), int(0u)));
        uint _2505 = (_2503 * 32u) + 24u;
        uint3 _2515 = uint3(T1.Load(_2505).x, T1.Load(_2505 + 1u).x, T1.Load(_2505 + 2u).x);
        uint _2520 = (_2503 * 32u) + 28u;
        uint3 _2529 = uint3(T1.Load(_2520).x, T1.Load(_2520 + 1u).x, T1.Load(_2520 + 2u).x);
        _2533 = _2515.x;
        _2534 = _2515.y;
        _2535 = _2515.z;
        _2536 = _2529.x;
        _2537 = _2529.y;
        _2538 = _2529.z;
    }
    else
    {
        _2533 = 0u;
        _2534 = 0u;
        _2535 = 0u;
        _2536 = 0u;
        _2537 = 0u;
        _2538 = 0u;
    }
    bool _2542 = 0.5f < CB0_m0[23u].y;
    bool _2543 = _441 != 0u;
    float _2633;
    float _2635;
    float _2637;
    if (0.5f >= CB0_m0[188u].w)
    {
        float _2572 = clamp(mad((-0.0f) - dot(float3(_550, _551, _552), float3(_682, _683, _684)), 0.5f, 0.5f), 0.0f, 1.0f);
        float _2574 = mad(_368, 0.5f, 0.5f);
        float _2583 = clamp((asfloat((_441 != 0u) ? asuint(_2574) : asuint(_2574 * _2574)) + (-0.20000000298023223876953125f)) * 1.25f, 0.0f, 1.0f);
        float _2586 = (_2583 * _2583) * mad(_2583, -2.0f, 3.0f);
        float _2587 = _2586 * _2586;
        bool _2590 = _441 != 0u;
        float _2653;
        if (_591)
        {
            _2653 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _2653 = asfloat(0u);
        }
        float _2682 = min(_553 * 0.083333335816860198974609375f, 1.0f);
        float _2690 = ((-0.0f) - dot(float3(_550, _551, _552), float3(_367, _368, _369))) + 1.0f;
        float _2699 = clamp((((-0.0f) - mad(_2682, -0.300000011920928955078125f, 0.5f)) + _2690) * 3.3333332538604736328125f, 0.0f, 1.0f);
        float _2700 = clamp((((-0.0f) - mad(_2682, -0.300000011920928955078125f, 0.60000002384185791015625f)) + _2690) * 5.000000476837158203125f, 0.0f, 1.0f);
        float _2731 = CB0_m0[189u].x * CB0_m0[189u].x;
        float _2732 = CB0_m0[189u].y * CB0_m0[189u].y;
        float _2733 = CB0_m0[189u].z * CB0_m0[189u].z;
        float _2734 = _2731 * _2731;
        float _2735 = _2732 * _2732;
        float _2736 = _2733 * _2733;
        float _2737 = _2734 * _2734;
        float _2738 = _2735 * _2735;
        float _2739 = _2736 * _2736;
        float _2746 = dot(float3(CB0_m0[189u].xyz), 0.3300000131130218505859375f.xxx) * (1.0f / (dot(float3(_2737, _2738, _2739), 0.699999988079071044921875f.xxx) + 9.9999997473787516355514526367188e-06f));
        float _2753 = mad(_1317, mad(_2746, _2737, (-0.0f) - _2131), _2131);
        float _2754 = mad(_1317, mad(_2746, _2738, (-0.0f) - _2132), _2132);
        float _2755 = mad(_1317, mad(_2746, _2739, (-0.0f) - _2133), _2133);
        float _2760 = exp2(log2(_2572 * _2572) * 20.0f);
        float _2784 = mad(_2049, _2053, _2056 + _2055) * 0.3300000131130218505859375f;
        float _2801 = exp2(log2(clamp(_2055, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _2802 = exp2(log2(clamp(_2056, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _2803 = exp2(log2(clamp(_2057, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _2808 = rsqrt(max(dot(float3(_2801, _2802, _2803), float3(_2801, _2802, _2803)), 6.103515625e-05f));
        float _2809 = _2808 * _2801;
        float _2810 = _2808 * _2802;
        float _2811 = _2808 * _2803;
        float _2816 = CB0_m0[198u].w * 48.0f;
        float _2818 = mad((_2784 * _2784) * CB0_m0[199u].w, -0.199999988079071044921875f, 1.0f) * 0.100000001490116119384765625f;
        float _2822 = (-0.0f) - _2818;
        float _2832 = asfloat((_441 != 0u) ? asuint((_2699 * _2699) * mad(_2699, -2.0f, 3.0f)) : asuint((_2700 * _2700) * mad(_2700, -2.0f, 3.0f))) * (mad(CB0_m0[199u].y, mad(clamp((-0.0f) - _551, 0.0f, 1.0f), asfloat((0.0f != TEXCOORD_7.z) ? 1083179008u : asuint(mad(_381, CB4_m0[137u].z, 2.5f))), -0.5f), 1.0f) * (clamp(mad(_2653, 0.39999997615814208984375f, _1317) + 0.60000002384185791015625f, 0.0f, 1.0f) * (mad(_1326 * mad(_1403, 0.5f, 0.5f), 1.39999997615814208984375f, 0.100000001490116119384765625f) * (mad(_2572, 0.800000011920928955078125f, 0.20000000298023223876953125f) * mad(CB0_m0[199u].x, mad(_2586, mad(_2586 * (_2587 * _2587), asfloat(_2590 ? 3212836864u : 3204448256u) + asfloat(_2590 ? 1050253722u : 1065353216u), asfloat(_2590 ? 1065353216u : 1056964608u)), -0.100000001490116119384765625f), 0.100000001490116119384765625f)))));
        uint4 _2842 = asuint(CB4_m0[87u]);
        uint4 _2849 = asuint(CB4_m0[86u]);
        uint4 _2859 = asuint(CB4_m0[88u]);
        uint4 _2869 = asuint(CB4_m0[89u]);
        uint4 _2879 = asuint(CB4_m0[90u]);
        float _2891 = asfloat(_491 ? _2879.z : (_493 ? _2869.z : (_495 ? _2859.z : (_497 ? _2842.z : _2849.z)))) * ((_2816 * mad(_385, mad(_2822, _2811, _2065), _2811 * _2818)) * (mad(CB0_m0[199u].z, mad((-0.0f) - _1932, _2130, mad(_2760, mad(_1932, _2130, (-0.0f) - _2755), _2755)), _2133) * _2832));
        float _2894 = mad(clamp(mad(_553, 0.20000000298023223876953125f, -1.0f), 0.0f, 1.0f), -0.699999988079071044921875f, 1.0f);
        float _2896 = _2894 * (asfloat(_491 ? _2879.x : (_493 ? _2869.x : (_495 ? _2859.x : (_497 ? _2842.x : _2849.x)))) * ((_2816 * mad(_385, mad(_2822, _2809, _2062), _2809 * _2818)) * (mad(CB0_m0[199u].z, mad((-0.0f) - _1930, _2130, mad(_2760, mad(_1930, _2130, (-0.0f) - _2753), _2753)), _2131) * _2832)));
        float _2897 = _2894 * (asfloat(_491 ? _2879.y : (_493 ? _2869.y : (_495 ? _2859.y : (_497 ? _2842.y : _2849.y)))) * ((_2816 * mad(_385, mad(_2822, _2810, _2064), _2810 * _2818)) * (mad(CB0_m0[199u].z, mad((-0.0f) - _1931, _2130, mad(_2760, mad(_1931, _2130, (-0.0f) - _2754), _2754)), _2132) * _2832)));
        float _2900 = mad(_2891, _2894, _2897 + _2896);
        float _2902 = mad(_2900 * _2900, 0.0500000007450580596923828125f, 1.0f);
        float _2907 = asfloat(_1935 ? 1056964608u : 1065353216u);
        float _2908 = _2907 * (_2902 * _2896);
        float _2909 = _2907 * (_2902 * _2897);
        float _2910 = _2907 * (_2902 * (_2894 * _2891));
        bool _2914 = 0.5f < CB3_m0[1u].w;
        _2633 = asfloat(_2914 ? asuint(min(_2908, 0.699999988079071044921875f)) : asuint(_2908)) * CB0_m0[198u].x;
        _2635 = asfloat(_2914 ? asuint(min(_2909, 0.699999988079071044921875f)) : asuint(_2909)) * CB0_m0[198u].y;
        _2637 = asfloat(_2914 ? asuint(min(_2910, 0.699999988079071044921875f)) : asuint(_2910)) * CB0_m0[198u].z;
    }
    else
    {
        _2633 = asfloat(0u);
        _2635 = asfloat(0u);
        _2637 = asfloat(0u);
    }
    float _2645 = _2474 + (max(mad(_2394, _2131, -1.0f), 0.0f) + mad(asfloat(_2542 ? 1028443341u : (_2543 ? _2533 : _2536)), _2051 * _2130, mad(_2487, _2055, mad(_2055, _2131, _2131 * _2394))));
    float _2646 = _2476 + (max(mad(_2395, _2132, -1.0f), 0.0f) + mad(asfloat(_2542 ? 1028443341u : (_2543 ? _2534 : _2537)), _2050 * _2130, mad(_2488, _2056, mad(_2056, _2132, _2132 * _2395))));
    float _2647 = _2478 + (max(mad(_2396, _2133, -1.0f), 0.0f) + mad(asfloat(_2542 ? 1028443341u : (_2543 ? _2535 : _2538)), _2049 * _2130, mad(_2489, _2057, mad(_2057, _2133, _2133 * _2396))));
    float _3183;
    float _3184;
    float _3185;
    float _3186;
    if (CB4_m0[150u].x >= 0.5f)
    {
        bool _2938 = 0.5f < CB4_m0[150u].y;
        float _2947 = _2938 ? TEXCOORD_1.x : TEXCOORD.x;
        float _2948 = _2938 ? TEXCOORD_1.y : TEXCOORD.y;
        bool _2954 = 0.5f < CB4_m0[148u].z;
        bool _2955 = 0.5f < CB4_m0[148u].y;
        bool _2961 = CB4_m0[150u].y < 0.5f;
        bool _2964 = CB4_m0[150u].z < 0.5f;
        bool _2985 = 0.800000011920928955078125f < CB4_m0[147u].w;
        float4 _3038 = T10.SampleBias(S5, float2(mad(CB4_m0[108u].x, CB0_m0[40u].y, mad(_2947, CB4_m0[49u].x, CB4_m0[49u].z)), mad(CB4_m0[108u].y, CB0_m0[40u].y, mad(_2948, CB4_m0[49u].y, CB4_m0[49u].w))), CB0_m0[191u].x);
        float _3040 = _3038.x;
        float _3041 = _3038.y;
        float _3042 = _3038.z;
        float4 _3047 = T11.SampleBias(S6, float2(mad(CB4_m0[108u].z, CB0_m0[40u].y, mad(asfloat(_2985 ? asuint(_270) : (_2954 ? asuint(_2947) : asuint(_2961 ? TEXCOORD_1.x : TEXCOORD.x))), CB4_m0[50u].x, CB4_m0[50u].z)), mad(CB4_m0[108u].w, CB0_m0[40u].y, mad(asfloat(_2985 ? asuint(_271) : (_2954 ? asuint(_2948) : asuint(_2961 ? TEXCOORD_1.y : TEXCOORD.y))), CB4_m0[50u].y, CB4_m0[50u].w))), CB0_m0[191u].x);
        float _3057 = asfloat((CB4_m0[150u].w < 0.5f) ? asuint(_3047.x) : ((CB4_m0[150u].w < 1.5f) ? asuint(_3047.y) : asuint(_3047.z)));
        uint _3058 = asuint(_3040);
        float _3063 = asfloat(_2964 ? _3058 : asuint(_3040));
        float _3065 = asfloat(_2964 ? _3058 : asuint(_3041));
        float _3067 = asfloat(_2964 ? _3058 : asuint(_3042));
        uint _3113 = _2955 ? asuint(_3057 * mad(_3063, CB4_m0[34u].x + ((-0.0f) - CB4_m0[95u].x), CB4_m0[95u].x)) : asuint((_3057 * _3063) * CB4_m0[34u].x);
        uint _3115 = _2955 ? asuint(_3057 * mad(_3065, CB4_m0[34u].y + ((-0.0f) - CB4_m0[95u].y), CB4_m0[95u].y)) : asuint((_3057 * _3065) * CB4_m0[34u].y);
        uint _3117 = _2955 ? asuint(_3057 * mad(_3067, CB4_m0[34u].z + ((-0.0f) - CB4_m0[95u].z), CB4_m0[95u].z)) : asuint((_3057 * _3067) * CB4_m0[34u].z);
        bool _3122 = 0.5f < CB4_m0[151u].x;
        float _3130 = asfloat(_3122 ? asuint(_2051 * asfloat(_3113)) : _3113);
        float _3132 = asfloat(_3122 ? asuint(_2050 * asfloat(_3115)) : _3115);
        float _3134 = asfloat(_3122 ? asuint(_2049 * asfloat(_3117)) : _3117);
        bool _3138 = CB4_m0[147u].z < 0.5f;
        uint _3149 = _2964 ? asuint(_3040) : asuint(_3042 + (_3041 + _3040));
        float _3155 = min(asfloat((1.5f < CB4_m0[147u].z) ? asuint(_3057 + asfloat(_3149)) : _3149), 1.0f);
        float _3156 = _3057 * _3155;
        _3183 = asfloat(_3138 ? asuint(_3130 + _2645) : asuint(mad(_3156, _3130 + (-1.0f), 1.0f) * _2645));
        _3184 = asfloat(_3138 ? asuint(_3132 + _2646) : asuint(mad(_3156, _3132 + (-1.0f), 1.0f) * _2646));
        _3185 = asfloat(_3138 ? asuint(_3134 + _2647) : asuint(mad(_3156, _3134 + (-1.0f), 1.0f) * _2647));
        _3186 = asfloat(_3138 ? asuint((_3134 + (_3132 + _3130)) + _2480) : asuint(mad(_3057, _3155, _2480)));
    }
    else
    {
        _3183 = _2645;
        _3184 = _2646;
        _3185 = _2647;
        _3186 = _2480;
    }
    float _3432;
    float _3433;
    float _3434;
    float _3435;
    if (float(int(asuint(CB4_m0[132u]).w)) >= 0.5f)
    {
        bool _3198 = 0.5f < CB4_m0[127u].x;
        bool _3199 = 0.5f < CB4_m0[127u].z;
        bool _3217 = 0.5f < CB4_m0[128u].x;
        bool _3218 = 0.800000011920928955078125f < CB4_m0[128u].z;
        bool _3219 = 0.5f < CB4_m0[128u].y;
        float4 _3283 = T12.SampleBias(S0, float2(mad(CB4_m0[40u].x, CB0_m0[40u].y, mad(_3198 ? TEXCOORD_1.x : TEXCOORD.x, CB4_m0[51u].x, CB4_m0[51u].z)), mad(CB4_m0[40u].y, CB0_m0[40u].y, mad(_3198 ? TEXCOORD_1.y : TEXCOORD.y, CB4_m0[51u].y, CB4_m0[51u].w))), CB0_m0[191u].x);
        float _3285 = _3283.x;
        float _3286 = _3283.y;
        float _3287 = _3283.z;
        float4 _3292 = T13.SampleBias(S0, float2(mad(CB4_m0[40u].z, CB0_m0[40u].y, mad(asfloat(_3218 ? asuint(_270) : asuint(_3217 ? TEXCOORD_1.x : TEXCOORD.x)), CB4_m0[52u].x, CB4_m0[52u].z)), mad(CB4_m0[40u].w, CB0_m0[40u].y, mad(asfloat(_3218 ? asuint(_271) : asuint(_3217 ? TEXCOORD_1.y : TEXCOORD.y)), CB4_m0[52u].y, CB4_m0[52u].w))), CB0_m0[191u].x);
        bool _3303 = CB4_m0[127u].y < 0.5f;
        float _3309 = asfloat((CB4_m0[127u].w < 0.5f) ? asuint(_3292.x) : ((CB4_m0[127u].w < 1.5f) ? asuint(_3292.y) : asuint(_3292.z)));
        uint _3310 = asuint(_3285);
        float _3315 = asfloat(_3303 ? _3310 : asuint(_3285));
        float _3317 = asfloat(_3303 ? _3310 : asuint(_3286));
        float _3319 = asfloat(_3303 ? _3310 : asuint(_3287));
        uint _3366 = _3219 ? asuint(_3309 * mad(_3315, CB4_m0[110u].x + ((-0.0f) - CB4_m0[111u].x), CB4_m0[111u].x)) : asuint((_3309 * _3315) * CB4_m0[110u].x);
        uint _3368 = _3219 ? asuint(_3309 * mad(_3317, CB4_m0[110u].y + ((-0.0f) - CB4_m0[111u].y), CB4_m0[111u].y)) : asuint((_3309 * _3317) * CB4_m0[110u].y);
        uint _3370 = _3219 ? asuint(_3309 * mad(_3319, CB4_m0[110u].z + ((-0.0f) - CB4_m0[111u].z), CB4_m0[111u].z)) : asuint((_3309 * _3319) * CB4_m0[110u].z);
        float _3379 = asfloat(_3199 ? asuint(_2051 * asfloat(_3366)) : _3366);
        float _3381 = asfloat(_3199 ? asuint(_2050 * asfloat(_3368)) : _3368);
        float _3383 = asfloat(_3199 ? asuint(_2049 * asfloat(_3370)) : _3370);
        bool _3387 = CB4_m0[128u].w < 0.5f;
        uint _3398 = _3303 ? asuint(_3285) : asuint(_3287 + (_3286 + _3285));
        float _3404 = min(asfloat((1.5f < CB4_m0[128u].w) ? asuint(_3309 + asfloat(_3398)) : _3398), 1.0f);
        float _3405 = _3309 * _3404;
        _3432 = asfloat(_3387 ? asuint(_3379 + _3183) : asuint(mad(_3405, _3379 + (-1.0f), 1.0f) * _3183));
        _3433 = asfloat(_3387 ? asuint(_3381 + _3184) : asuint(mad(_3405, _3381 + (-1.0f), 1.0f) * _3184));
        _3434 = asfloat(_3387 ? asuint(_3383 + _3185) : asuint(mad(_3405, _3383 + (-1.0f), 1.0f) * _3185));
        _3435 = asfloat(_3387 ? asuint((_3383 + (_3381 + _3379)) + _3186) : asuint(mad(_3309, _3404, _3186)));
    }
    else
    {
        _3432 = _3183;
        _3433 = _3184;
        _3434 = _3185;
        _3435 = _3186;
    }
    float _3443 = CB4_m0[29u].w * CB4_m0[155u].w;
    float _3455 = mad(_3443, ((-0.0f) - _3432) + CB4_m0[29u].x, _3432);
    float _3456 = mad(_3443, ((-0.0f) - _3433) + CB4_m0[29u].y, _3433);
    float _3457 = mad(_3443, ((-0.0f) - _3434) + CB4_m0[29u].z, _3434);
    float _3465 = mad((-0.0f) - CB4_m0[29u].w, CB4_m0[155u].w, 1.0f);
    float _3466 = _3465 * (_2633 * mad(_2487, 2.0f, 1.0f));
    float _3467 = _3465 * (_2635 * mad(_2488, 2.0f, 1.0f));
    float _3468 = _3465 * (_2637 * mad(_2489, 2.0f, 1.0f));
    float _3550;
    uint _3552;
    float _3553;
    float _3555;
    float _3557;
    float _3559;
    float _3561;
    float _3563;
    if (0.5f < CB4_m0[158u].z)
    {
        bool _3491 = 0.5f < CB4_m0[159u].x;
        float4 _3540 = T14.Sample(S7, float2(mad(CB0_m0[40u].y, CB4_m0[103u].x, asfloat(_3491 ? asuint(mad(TEXCOORD_1.x, CB4_m0[55u].x, CB4_m0[55u].z)) : asuint(mad(TEXCOORD.x, CB4_m0[55u].x, CB4_m0[55u].z)))), mad(CB0_m0[40u].y, CB4_m0[103u].y, asfloat(_3491 ? asuint(mad(TEXCOORD_1.y, CB4_m0[55u].y, CB4_m0[55u].w)) : asuint(mad(TEXCOORD.y, CB4_m0[55u].y, CB4_m0[55u].w))))));
        float _3542 = _3540.x;
        float _3543 = _3540.y;
        float _3544 = _3540.z;
        float _3554;
        float _3556;
        float _3558;
        if (0.5f < CB4_m0[158u].w)
        {
            _3554 = mad(CB4_m0[33u].z * CB4_m0[33u].w, _3544, _3468);
            _3556 = mad(CB4_m0[33u].y * CB4_m0[33u].w, _3543, _3467);
            _3558 = mad(CB4_m0[33u].x * CB4_m0[33u].w, _3542, _3466);
        }
        else
        {
            float _4071 = _3540.w * CB4_m0[33u].w;
            _3554 = mad(_4071, mad(CB4_m0[33u].z, _3544, (-0.0f) - _3468), _3468);
            _3556 = mad(_4071, mad(CB4_m0[33u].y, _3543, (-0.0f) - _3467), _3467);
            _3558 = mad(_4071, mad(CB4_m0[33u].x, _3542, (-0.0f) - _3466), _3466);
        }
        uint4 _4090 = asuint(CB4_m0[131u]);
        float _4094 = float(int(_4090.x));
        float _4101 = exp2(log2(max(((-0.0f) - abs(dot(float3(TEXCOORD_2.x, TEXCOORD_2.y, TEXCOORD_2.z), float3(_550, _551, _552)))) + 1.0f, 0.0f)) * CB4_m0[155u].z) * float(int(_4090.y));
        float _4109 = exp2(max(CB4_m0[130u].x, 0.00999999977648258209228515625f) * log2(_4101));
        float _4115 = min(CB4_m0[121u].x, 65504.0f);
        float _4117 = min(CB4_m0[121u].y, 65504.0f);
        float _4118 = min(CB4_m0[121u].z, 65504.0f);
        float _4130 = mad(_4109, ((-0.0f) - _4115) + CB4_m0[120u].x, _4115);
        float _4131 = mad(_4109, ((-0.0f) - _4117) + CB4_m0[120u].y, _4117);
        float _4132 = mad(_4109, ((-0.0f) - _4118) + CB4_m0[120u].z, _4118);
        float _4143 = _4101 * asfloat(((_4101 >= CB4_m0[130u].y) ? 4294967295u : 0u) & 1065353216u);
        bool _4147 = _4094 < 0.5f;
        bool _4148 = _4094 < 1.5f;
        _3550 = (_3554 + (_3556 + _3558)) + _3435;
        _3552 = 0u;
        _3553 = _3554;
        _3555 = _3556;
        _3557 = _3558;
        _3559 = asfloat(_4147 ? asuint(mad(_4143, _3544 * _4132, _3457)) : (_4148 ? asuint(mad(_4143, mad(_4132, _3544, (-0.0f) - _3457), _3457)) : asuint(_3457 * mad(_4143, mad(_4132, _3544, -1.0f), 1.0f))));
        _3561 = asfloat(_4147 ? asuint(mad(_4143, _3543 * _4131, _3456)) : (_4148 ? asuint(mad(_4143, mad(_4131, _3543, (-0.0f) - _3456), _3456)) : asuint(_3456 * mad(_4143, mad(_4131, _3543, -1.0f), 1.0f))));
        _3563 = asfloat(_4147 ? asuint(mad(_4143, _3542 * _4130, _3455)) : (_4148 ? asuint(mad(_4143, mad(_4130, _3542, (-0.0f) - _3455), _3455)) : asuint(_3455 * mad(_4143, mad(_4130, _3542, -1.0f), 1.0f))));
    }
    else
    {
        _3550 = _3435;
        _3552 = _441;
        _3553 = _3468;
        _3555 = _3467;
        _3557 = _3466;
        _3559 = _3457;
        _3561 = _3456;
        _3563 = _3455;
    }
    bool _3571 = 0.5f < float(int(asuint(CB4_m0[131u]).y));
    bool _3614 = 0.5f < CB4_m0[130u].x;
    bool _3615 = 0.5f < CB4_m0[130u].y;
    float _3686 = asfloat(_3615 ? asuint(mad(TEXCOORD_1.y, CB4_m0[102u].y, CB4_m0[102u].w)) : asuint(mad(TEXCOORD.y, CB4_m0[102u].y, CB4_m0[102u].w)));
    float _3688 = asfloat(_3615 ? asuint(mad(TEXCOORD_1.x, CB4_m0[102u].x, CB4_m0[102u].z)) : asuint(mad(TEXCOORD.x, CB4_m0[102u].x, CB4_m0[102u].z)));
    bool _3694 = 0.5f < float(int(asuint(CB4_m0[130u]).z));
    bool _3733 = (gl_FrontFacing ? 4294967295u : 0u) != 0u;
    bool _3740 = (gl_FrontFacing ? 4294967295u : 0u) != 0u;
    float4 _3778 = T9.Sample(S4, float2(asfloat(_3694 ? asuint(mad(TEXCOORD_1.x, CB4_m0[41u].x, CB4_m0[41u].z)) : asuint(mad(TEXCOORD.x, CB4_m0[41u].x, CB4_m0[41u].z))), asfloat(_3694 ? asuint(mad(TEXCOORD_1.y, CB4_m0[41u].y, CB4_m0[41u].w)) : asuint(mad(TEXCOORD.y, CB4_m0[41u].y, CB4_m0[41u].w)))));
    float _3780 = _3778.x;
    float _3781 = _3778.y;
    float _3782 = mad(_3733 ? _367 : ((-0.0f) - _367), 0.5f, 0.75f);
    float _3783 = mad(_3733 ? _368 : ((-0.0f) - _368), 0.5f, 0.75f);
    float4 _3822 = T8.Sample(S3, float2(frac(mad(CB4_m0[154u].z, _3780, mad(_550, 0.25f, _3782)) + mad(CB0_m0[40u].y, CB4_m0[116u].x, asfloat(_3571 ? asuint(mad(TEXCOORD_1.x, CB4_m0[56u].x, CB4_m0[56u].z)) : asuint(mad(TEXCOORD.x, CB4_m0[56u].x, CB4_m0[56u].z))))), frac(mad(CB4_m0[154u].z, _3781, mad(_551 + _552, 0.25f, _3783)) + mad(CB0_m0[40u].y, CB4_m0[116u].y, asfloat(_3571 ? asuint(mad(TEXCOORD_1.y, CB4_m0[56u].y, CB4_m0[56u].w)) : asuint(mad(TEXCOORD.y, CB4_m0[56u].y, CB4_m0[56u].w)))))));
    float _3844 = exp2(log2(((-0.0f) - clamp(dot(float3(_3740 ? TEXCOORD_2.x : ((-0.0f) - TEXCOORD_2.x), _3740 ? TEXCOORD_2.y : ((-0.0f) - TEXCOORD_2.y), _3740 ? TEXCOORD_2.z : ((-0.0f) - TEXCOORD_2.z)), float3(_550, _551, _552)), 0.0f, 1.0f)) + 1.0f) * CB4_m0[155u].x);
    float _3849 = _3844 * CB4_m0[120u].w;
    float _3879 = CB0_m0[40u].y * CB4_m0[155u].z;
    float _3880 = sin(_3879);
    float _3881 = cos(_3879);
    uint4 _3896 = asuint(CB4_m0[130u]);
    uint _3897 = _3896.w;
    float _3947 = (dot(float4(T5.Sample(S2, float2(mad(_3688, _3881, (-0.0f) - (_3686 * _3880)), mad(_3686, _3881, _3688 * _3880)))), float4(_90[(_3897 * 4u) + 0u], _90[(_3897 * 4u) + 1u], _90[(_3897 * 4u) + 2u], _90[(_3897 * 4u) + 3u])) * dot(float4(T5.Sample(S2, float2(frac(mad(CB0_m0[40u].y, CB4_m0[118u].x, _3688)), frac(mad(CB0_m0[40u].y, CB4_m0[118u].y, _3686))))), float4(_90[(_3897 * 4u) + 0u], _90[(_3897 * 4u) + 1u], _90[(_3897 * 4u) + 2u], _90[(_3897 * 4u) + 3u]))) * ((((-0.0f) - _3844) + 1.0f) * min(CB4_m0[121u].w, 65000.0f));
    float _3948 = mad(_3947, min(CB4_m0[121u].x, 65000.0f), mad(CB4_m0[115u].x * CB4_m0[115u].w, _3822.x, _3849 * CB4_m0[120u].x));
    float _3949 = mad(_3947, min(CB4_m0[121u].y, 65000.0f), mad(CB4_m0[115u].y * CB4_m0[115u].w, _3822.y, _3849 * CB4_m0[120u].y));
    float _3950 = mad(_3947, min(CB4_m0[121u].z, 65000.0f), mad(CB4_m0[115u].z * CB4_m0[115u].w, _3822.z, _3849 * CB4_m0[120u].z));
    float4 _3965 = T14.Sample(S7, float2(frac((_3780 + _3782) + mad(CB0_m0[40u].y, CB4_m0[117u].x, frac(mad(CB0_m0[40u].y, CB4_m0[117u].x, asfloat(_3614 ? asuint(mad(TEXCOORD_1.x, CB4_m0[55u].x, CB4_m0[55u].z)) : asuint(mad(TEXCOORD.x, CB4_m0[55u].x, CB4_m0[55u].z))))))), frac((_3781 + _3783) + mad(CB0_m0[40u].y, CB4_m0[117u].y, frac(mad(CB0_m0[40u].y, CB4_m0[117u].y, asfloat(_3614 ? asuint(mad(TEXCOORD_1.y, CB4_m0[55u].y, CB4_m0[55u].w)) : asuint(mad(TEXCOORD.y, CB4_m0[55u].y, CB4_m0[55u].w)))))))));
    uint4 _3973 = asuint(CB4_m0[131u]);
    uint _3974 = _3973.x;
    float _4006 = clamp(mad(dot(float4(_3965), float4(_90[(_3974 * 4u) + 0u], _90[(_3974 * 4u) + 1u], _90[(_3974 * 4u) + 2u], _90[(_3974 * 4u) + 3u])) + 0.89999997615814208984375f, 0.4000000059604644775390625f, (-0.0f) - CB4_m0[155u].y) * (1.0f / CB4_m0[154u].w), 0.0f, 1.0f);
    float _4010 = min((_4006 * _4006) * mad(_4006, -2.0f, 3.0f), 1.0f);
    SV_Target.x = mad(_4010, ((-0.0f) - _3563) + _3948, _3563);
    SV_Target.y = mad(_4010, ((-0.0f) - _3561) + _3949, _3561);
    SV_Target.z = mad(_4010, ((-0.0f) - _3559) + _3950, _3559);
    SV_Target_1.x = min(sqrt(max(_3557, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.y = min(sqrt(max(_3555, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.z = min(sqrt(max(_3553, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.w = mad(_3950 + (_3949 + _3948), _4010, _3550) * 0.33329999446868896484375f;
    SV_Target_2.w = (_3552 != 0u) ? 0.3400000035762786865234375f : 0.0f;
    SV_Target_3.x = mad(_367, 0.5f, 0.5f);
    SV_Target_3.y = mad(_368, 0.5f, 0.5f);
    SV_Target_3.z = mad(_369, 0.5f, 0.5f);
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
