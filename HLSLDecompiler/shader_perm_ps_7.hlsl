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
    uint _265 = (((gl_FrontFacing ? 4294967295u : 0u) == 0u) ? 4294967295u : 0u) & ((0.5f < CB4_m0[147u].x) ? 4294967295u : 0u);
    bool _272 = (_265 | (((1.0f < TEXCOORD.z) ? 4294967295u : 0u) & ((0.5f < CB4_m0[147u].y) ? 4294967295u : 0u))) != 0u;
    float _281 = _272 ? TEXCOORD.z : TEXCOORD.x;
    float _282 = _272 ? TEXCOORD.w : TEXCOORD.y;
    float4 _289 = T3.SampleBias(S0, float2(_281, _282), CB0_m0[191u].x);
    float _292 = _289.x;
    float _293 = _289.y;
    float _294 = _289.z;
    bool _304 = _265 != 0u;
    float _313 = _304 ? TEXCOORD.z : TEXCOORD.x;
    float _314 = _304 ? TEXCOORD.w : TEXCOORD.y;
    float4 _319 = T4.SampleBias(S0, float2(_313, _314), CB0_m0[191u].x);
    float _337 = mad(clamp(_319.x, 0.0f, 1.0f), 2.0f, -1.0039999485015869140625f) * CB4_m0[137u].y;
    float _338 = mad(clamp(_319.y, 0.0f, 1.0f), 2.0f, -1.0039999485015869140625f) * CB4_m0[137u].y;
    float _346 = asfloat(((gl_FrontFacing ? 4294967295u : 0u) != 0u) ? 1065353216u : 3212836864u) * sqrt(((-0.0f) - min(dot(float2(_337, _338), float2(_337, _338)), 1.0f)) + 1.0f);
    float _371 = mad(_346, TEXCOORD_2.x, mad(_337, TEXCOORD_3.x, _338 * TEXCOORD_4.x));
    float _372 = mad(_346, TEXCOORD_2.y, mad(_337, TEXCOORD_3.y, _338 * TEXCOORD_4.y));
    float _373 = mad(_346, TEXCOORD_2.z, mad(_337, TEXCOORD_3.z, _338 * TEXCOORD_4.z));
    float _377 = rsqrt(dot(float3(_371, _372, _373), float3(_371, _372, _373)));
    float _378 = _377 * _371;
    float _379 = _377 * _372;
    float _380 = _377 * _373;
    float4 _385 = T5.SampleBias(S0, float2(_313, _314), CB0_m0[191u].x);
    float _390 = clamp(_385.z, 0.0f, 1.0f);
    float _391 = clamp(_385.x, 0.0f, 1.0f);
    float _392 = clamp(_385.y, 0.0f, 1.0f);
    float _396 = _392 * CB4_m0[137u].z;
    float4 _401 = T6.SampleBias(S0, float2(_313, _314), CB0_m0[191u].x);
    float _406 = clamp(_401.z, 0.0f, 1.0f);
    float _408 = clamp(_401.y, 0.0f, 1.0f);
    float _435;
    if (0.5f < CB4_m0[135u].z)
    {
        uint _421 = (0.5f < CB4_m0[144u].x) ? 4294967295u : 0u;
        _435 = asfloat((((((0.5f < CB4_m0[144u].y) ? 4294967295u : 0u) & _421) != 0u) ? asuint(max((_406 + (-0.20000000298023223876953125f)) * 1.25f, 0.0f)) : asuint(_406)) & _421);
    }
    else
    {
        _435 = _406;
    }
    bool _450 = uint(int(max(((-0.0f) - floor(_391 * 5.0f)) + 4.0f, 0.0f))) == asuint(CB4_m0[132u]).y;
    uint _451 = _450 ? 4294967295u : 0u;
    uint _452 = _451 & 1u;
    bool _457 = 0.5f < CB4_m0[136u].w;
    float4 _471 = T2.SampleBias(S0, float2(TEXCOORD.x * CB4_m0[137u].x, TEXCOORD.y * CB4_m0[137u].x), CB0_m0[191u].x);
    uint _496 = _457 ? asuint(max(mad(_292, CB4_m0[57u].x, _471.x) + (-0.5f), 0.0f)) : asuint(_292 * CB4_m0[57u].x);
    float _497 = asfloat(_496);
    uint _498 = _457 ? asuint(max(mad(_293, CB4_m0[57u].y, _471.y) + (-0.5f), 0.0f)) : asuint(_293 * CB4_m0[57u].y);
    float _499 = asfloat(_498);
    uint _500 = _457 ? asuint(max(mad(_294, CB4_m0[57u].z, _471.z) + (-0.5f), 0.0f)) : asuint(_294 * CB4_m0[57u].z);
    float _501 = asfloat(_500);
    bool _502 = _391 < 0.20000000298023223876953125f;
    bool _504 = _391 < 0.4000000059604644775390625f;
    bool _506 = _391 < 0.60000002384185791015625f;
    bool _508 = _391 < 0.800000011920928955078125f;
    float _552 = ((-0.0f) - TEXCOORD_2.w) + CB0_m0[53u].x;
    float _553 = ((-0.0f) - TEXCOORD_3.w) + CB0_m0[53u].y;
    float _554 = ((-0.0f) - TEXCOORD_4.w) + CB0_m0[53u].z;
    float _555 = dot(float3(_552, _553, _554), float3(_552, _553, _554));
    float _560 = rsqrt(max(_555, 1.1754943508222875079687365372222e-38f));
    float _561 = _560 * _552;
    float _562 = _560 * _553;
    float _563 = _560 * _554;
    float _564 = sqrt(_555);
    SV_Target.w = mad(min(clamp((dot(float3(CB3_m0[6u].xyz), float3(_561, _562, _563)) + (-0.4000000059604644775390625f)) * 1.66666662693023681640625f, 0.0f, 1.0f), clamp((dot(float3(CB3_m0[5u].xyz), float3(_561, _562, _563)) + 0.449999988079071044921875f) * 2.22222232818603515625f, 0.0f, 1.0f)), clamp(_401.x, 0.0f, 1.0f) + (-1.0f), 1.0f);
    bool _602 = int(0u) < int(asuint(CB0_m0[188u]).z);
    float _673;
    float _674;
    float _675;
    float _676;
    float _677;
    float _678;
    float _679;
    float _680;
    float _681;
    if (_602)
    {
        uint _613 = uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u)));
        uint _614 = _613 * 32u;
        uint4 _626 = uint4(T1.Load(_614).x, T1.Load(_614 + 1u).x, T1.Load(_614 + 2u).x, T1.Load(_614 + 3u).x);
        uint _637 = (_613 * 32u) + 4u;
        uint4 _649 = uint4(T1.Load(_637).x, T1.Load(_637 + 1u).x, T1.Load(_637 + 2u).x, T1.Load(_637 + 3u).x);
        _673 = asfloat(_626.x);
        _674 = asfloat(_626.y);
        _675 = asfloat(_626.z);
        _676 = asfloat(_626.w);
        _677 = asfloat(_649.x);
        _678 = asfloat(_649.y);
        _679 = asfloat(_649.z);
        _680 = asfloat(T1.Load((_613 * 32u) + 8u).x);
        _681 = asfloat(_649.w);
    }
    else
    {
        _673 = asfloat(0u);
        _674 = asfloat(0u);
        _675 = asfloat(0u);
        _676 = asfloat(0u);
        _677 = asfloat(0u);
        _678 = asfloat(0u);
        _679 = asfloat(0u);
        _680 = asfloat(0u);
        _681 = asfloat(0u);
    }
    float _685 = ((-0.0f) - TEXCOORD_2.w) + _677;
    float _686 = ((-0.0f) - TEXCOORD_3.w) + _678;
    float _687 = ((-0.0f) - TEXCOORD_4.w) + _679;
    float _691 = max(dot(float3(_685, _686, _687), float3(_685, _686, _687)), 1.1754943508222875079687365372222e-38f);
    float _692 = rsqrt(_691);
    float _693 = _692 * _685;
    float _694 = _692 * _686;
    float _695 = _692 * _687;
    float _700 = max(((-0.0f) - (_691 / (_676 * _676))) + 1.0f, 0.0f);
    float _718 = mad(_700, _673 + ((-0.0f) - CB0_m0[189u].x), CB0_m0[189u].x);
    float _719 = mad(_700, _674 + ((-0.0f) - CB0_m0[189u].y), CB0_m0[189u].y);
    float _720 = mad(_700, _675 + ((-0.0f) - CB0_m0[189u].z), CB0_m0[189u].z);
    float _722 = mad(_700, _700 + (-1.0f), 1.0f);
    float _1327;
    float _1328;
    if (0.5f < CB0_m0[22u].x)
    {
        float _770 = mad(_378, CB4_m0[135u].x, TEXCOORD_2.w) + ((-0.0f) - CB3_m0[39u].x);
        float _771 = mad(_379, CB4_m0[135u].x, TEXCOORD_3.w) + ((-0.0f) - CB3_m0[39u].y);
        float _772 = mad(_380, CB4_m0[135u].x, TEXCOORD_4.w) + ((-0.0f) - CB3_m0[39u].z);
        float _808 = mad(CB3_m0[35u].z, _772, mad(CB3_m0[33u].z, _770, _771 * CB3_m0[34u].z)) + CB3_m0[36u].z;
        float _818 = mad(mad(CB3_m0[35u].x, _772, mad(CB3_m0[33u].x, _770, _771 * CB3_m0[34u].x)) + CB3_m0[36u].x, CB3_m0[38u].x, CB3_m0[38u].z);
        float _819 = mad(mad(CB3_m0[35u].y, _772, mad(CB3_m0[33u].y, _770, _771 * CB3_m0[34u].y)) + CB3_m0[36u].y, CB3_m0[38u].y, CB3_m0[38u].w);
        float _902 = ((((((T15.SampleCmpLevelZero(S1, float2(_818 + ((-0.0f) - CB0_m0[200u].x), _819 + ((-0.0f) - CB0_m0[200u].y)), _808).xxxx.x + T15.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, -1.0f, _818), mad(CB0_m0[200u].y, 1.0f, _819)), _808).xxxx.x) + T15.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 1.0f, _818), mad(CB0_m0[200u].y, -1.0f, _819)), _808).xxxx.x) + T15.SampleCmpLevelZero(S1, float2(_818 + CB0_m0[200u].x, _819 + CB0_m0[200u].y), _808).xxxx.x) + T15.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, -1.4142129421234130859375f, _818), mad(CB0_m0[200u].y, 0.0f, _819)), _808).xxxx.x) + T15.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 1.4142129421234130859375f, _818), mad(CB0_m0[200u].y, 0.0f, _819)), _808).xxxx.x) + T15.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 0.0f, _818), mad(CB0_m0[200u].y, -1.4142129421234130859375f, _819)), _808).xxxx.x) + T15.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 0.0f, _818), mad(CB0_m0[200u].y, 1.4142129421234130859375f, _819)), _808).xxxx.x;
        float _925 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[20u].x);
        float _926 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[20u].y);
        float _927 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[20u].z);
        float _937 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[21u].x);
        float _938 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[21u].y);
        float _939 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[21u].z);
        float _948 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[22u].x);
        float _949 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[22u].y);
        float _950 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[22u].z);
        float _960 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[23u].x);
        float _961 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[23u].y);
        float _962 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[23u].z);
        bool _982 = dot(float3(_925, _926, _927), float3(_925, _926, _927)) < CB2_m0[24u].x;
        bool _983 = dot(float3(_937, _938, _939), float3(_937, _938, _939)) < CB2_m0[24u].y;
        bool _984 = dot(float3(_948, _949, _950), float3(_948, _949, _950)) < CB2_m0[24u].z;
        float _1016 = ((-0.0f) - dot(float4(asfloat((_982 ? 4294967295u : 0u) & 1065353216u), max(asfloat(_982 ? 3212836864u : 2147483648u) + asfloat((_983 ? 4294967295u : 0u) & 1065353216u), 0.0f), max(asfloat(_983 ? 3212836864u : 2147483648u) + asfloat((_984 ? 4294967295u : 0u) & 1065353216u), 0.0f), max(asfloat(_984 ? 3212836864u : 2147483648u) + asfloat(((dot(float3(_960, _961, _962), float3(_960, _961, _962)) < CB2_m0[24u].w) ? 4294967295u : 0u) & 1065353216u), 0.0f)), float4(4.0f, 3.0f, 2.0f, 1.0f))) + 4.0f;
        uint _1018 = uint(_1016) << 2u;
        uint _1021 = _1018 + 1u;
        uint _1040 = _1018 + 2u;
        uint _1051 = _1018 + 3u;
        float _1057 = mad(CB2_m0[_1040].x, TEXCOORD_4.w, mad(CB2_m0[_1018].x, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_1021].x)) + CB2_m0[_1051].x;
        float _1058 = mad(CB2_m0[_1040].y, TEXCOORD_4.w, mad(CB2_m0[_1018].y, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_1021].y)) + CB2_m0[_1051].y;
        float _1059 = mad(CB2_m0[_1040].z, TEXCOORD_4.w, mad(CB2_m0[_1018].z, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_1021].z)) + CB2_m0[_1051].z;
        float _1073 = frac(sin(dot(float2(frac(_1057 * 1024.0f), frac(_1058 * 1024.0f)), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
        float _1074 = sin(_1073);
        float _1075 = cos(_1073);
        float _1086 = (CB2_m0[26u].x * 1.2999999523162841796875f) * _1074;
        float _1087 = (CB2_m0[26u].x * 1.2999999523162841796875f) * _1075;
        float _1088 = (CB2_m0[26u].y * 1.2999999523162841796875f) * _1074;
        float _1089 = (CB2_m0[26u].y * 1.2999999523162841796875f) * _1075;
        float _1185 = ((((T0.SampleCmpLevelZero(S1, float3(_1057 + ((_1087 * (-0.97829997539520263671875f)) + (_1086 * (-0.172399997711181640625f))), _1058 + ((_1089 * 0.172399997711181640625f) + (_1088 * (-0.97829997539520263671875f))), _1016), _1059).xxxx.x + T0.SampleCmpLevelZero(S1, float3(_1057 + ((_1087 * 0.484600007534027099609375f) + (_1086 * 0.874700009822845458984375f)), _1058 + ((_1089 * (-0.874700009822845458984375f)) + (_1088 * 0.484600007534027099609375f)), _1016), _1059).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1057 + ((_1087 * (-0.037399999797344207763671875f)) + (_1086 * (-0.96829998493194580078125f))), _1058 + ((_1089 * 0.96829998493194580078125f) + (_1088 * (-0.037399999797344207763671875f))), _1016), _1059).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1057 + ((_1087 * 0.419600009918212890625f) + (_1086 * 0.278299987316131591796875f)), _1058 + ((_1089 * (-0.278299987316131591796875f)) + (_1088 * 0.419600009918212890625f)), _1016), _1059).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1057 + ((_1087 * 0.83910000324249267578125f) + (_1086 * (-0.1507000029087066650390625f))), _1058 + ((_1089 * (-0.1507000029087066650390625f)) + (_1088 * 0.83910000324249267578125f)), _1016), _1059).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1057 + ((_1087 * 0.4792999923229217529296875f) + (_1086 * (-0.6417000293731689453125f))), _1058 + ((_1089 * (-0.6417000293731689453125f)) + (_1088 * 0.4792999923229217529296875f)), _1016), _1059).xxxx.x;
        float _1266 = (((((_1185 + T0.SampleCmpLevelZero(S1, float3(_1057 + ((_1087 * (-0.81610000133514404296875f)) + (_1086 * 0.577899992465972900390625f)), _1058 + ((_1089 * 0.577899992465972900390625f) + (_1088 * (-0.81610000133514404296875f))), _1016), _1059).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1057 + ((_1087 * (-0.4587999880313873291015625f)) + (_1086 * (-0.5408999919891357421875f))), _1058 + ((_1089 * 0.5408999919891357421875f) + (_1088 * (-0.4587999880313873291015625f))), _1016), _1059).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1057 + ((_1087 * (-0.19189999997615814208984375f)) + (_1086 * 0.704400002956390380859375f)), _1058 + ((_1089 * 0.704400002956390380859375f) + (_1088 * (-0.19189999997615814208984375f))), _1016), _1059).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1057 + ((_1087 * (-0.446399986743927001953125f)) + (_1086 * 0.105300001800060272216796875f)), _1058 + ((_1089 * 0.105300001800060272216796875f) + (_1088 * (-0.446399986743927001953125f))), _1016), _1059).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1057 + ((_1087 * 0.06610000133514404296875f) + (_1086 * (-0.20659999549388885498046875f))), _1058 + ((_1089 * (-0.20659999549388885498046875f)) + (_1088 * 0.06610000133514404296875f)), _1016), _1059).xxxx.x) * CB2_m0[25u].x;
        float _1291 = clamp(mad(_680, 2.0f, -1.0f), 0.0f, 1.0f);
        float _1295 = _1291 * CB0_m0[189u].w;
        float _1305 = (asfloat(((((0.0f >= _1059) ? 4294967295u : 0u) | ((_1059 >= 1.0f) ? 4294967295u : 0u)) != 0u) ? 1065353216u : asuint(mad(_1266, 0.090899996459484100341796875f, ((-0.0f) - CB2_m0[25u].x) + 1.0f))) * mad(CB3_m0[40u].y, ((-0.0f) - _681) + 1.0f, _681)) * asfloat((0.5f < CB3_m0[37u].x) ? asuint(min(mad(_1291, (asfloat(_502 ? asuint(CB4_m0[163u]).w : (_504 ? asuint(CB4_m0[163u]).z : (_506 ? asuint(CB4_m0[163u]).y : (_508 ? asuint(CB4_m0[163u]).x : asuint(CB4_m0[162u]).w)))) * mad(_902 + T15.SampleCmpLevelZero(S1, float2(_818, _819), _808).xxxx.x, 0.11110000312328338623046875f, -1.0f)) * CB3_m0[37u].x, 1.0f), 1.0f)) : 1065353216u);
        _1327 = mad(_1305, _1295 * CB4_m0[133u].z, mad((-0.0f) - _1295, CB4_m0[133u].z, 1.0f));
        _1328 = mad(_1305, CB4_m0[133u].z, ((-0.0f) - CB4_m0[133u].z) + 1.0f);
    }
    else
    {
        _1327 = asfloat(1065353216u);
        _1328 = asfloat(1065353216u);
    }
    float _1334 = clamp(CB3_m0[1u].w * 2.5f, 0.0f, 1.0f);
    float _1337 = mad(((-0.0f) - _1334) + 1.0f, _1327, _1334);
    bool _1341 = CB3_m0[3u].w != 0.0f;
    float _1355 = clamp(dot(float3(CB3_m0[3u].xyz), float3(TEXCOORD_2.w, TEXCOORD_3.w, TEXCOORD_4.w)) + ((-0.0f) - CB3_m0[3u].w), 0.0f, 1.0f);
    float _1406 = asfloat(_1341 ? asuint(mad(_1355, ((-0.0f) - _718) + mad(CB0_m0[15u].w, mad((-0.0f) - _718, CB0_m0[15u].x, _718 + CB0_m0[15u].x), _718 * CB0_m0[15u].x), _718)) : asuint(_718));
    float _1408 = asfloat(_1341 ? asuint(mad(_1355, ((-0.0f) - _719) + mad(CB0_m0[15u].w, mad((-0.0f) - _719, CB0_m0[15u].y, _719 + CB0_m0[15u].y), _719 * CB0_m0[15u].y), _719)) : asuint(_719));
    float _1410 = asfloat(_1341 ? asuint(mad(_1355, ((-0.0f) - _720) + mad(CB0_m0[15u].w, mad((-0.0f) - _720, CB0_m0[15u].z, _720 + CB0_m0[15u].z), _720 * CB0_m0[15u].z), _720)) : asuint(_720));
    float _1411 = max(asfloat(_502 ? asuint(CB4_m0[134u]).w : (_504 ? asuint(CB4_m0[134u]).z : (_506 ? asuint(CB4_m0[134u]).y : (_508 ? asuint(CB4_m0[134u]).x : asuint(CB4_m0[133u]).w)))), 9.9999997473787516355514526367188e-06f);
    float _1413 = 1.0f / _1411;
    float _1414 = dot(float3(_378, _379, _380), float3(_693, _694, _695));
    float _1431 = mad(mad(clamp(_319.z, 0.0f, 1.0f), 2.0f, -1.0f), 2.0f, mad(TEXCOORD_7.y, ((-0.0f) - _1414) + mad(_1414 + 1.0f, clamp(mad((-0.0f) - min(_694 * 3.0f, 1.0f), 0.5f, _379) + 1.5f, 0.0f, 1.0f), -1.0f), _1414));
    float _1444 = mad((-0.0f) - _1411, 3.0f, 2.0f);
    float _1445 = ((_1431 * 3.0f) + 3.0f) / _1444;
    float _1446 = (mad(_1431, 3.0f, (-0.0f) - (_1411 * 1.5f)) + 1.0f) / _1444;
    float _1447 = (mad(_1431, 3.0f, (-0.0f) - (_1411 * 4.5f)) + (-1.0f)) / _1444;
    float _1459 = mad(_1413, _1431 + 0.33329999446868896484375f, 0.5f);
    float _1460 = mad(_1413, _1431 + (-0.33329999446868896484375f), 0.5f);
    float _1461 = mad(_1413, _1431 + (-0.33329999446868896484375f), -0.5f);
    float _1472 = clamp(((-0.0f) - _1445) + 1.0f, 0.0f, 1.0f);
    float _1473 = clamp(min(_1445, ((-0.0f) - _1459) + 1.0f), 0.0f, 1.0f);
    float _1474 = clamp(min(((-0.0f) - _1446) + 1.0f, _1459), 0.0f, 1.0f);
    float _1478 = clamp(min(((-0.0f) - _1447) + 1.0f, _1461), 0.0f, 1.0f);
    float _1479 = clamp(_1447, 0.0f, 1.0f);
    float _1485 = mad(CB3_m0[40u].y, ((-0.0f) - _1337) + _1328, _1337);
    float _1492 = clamp(min(mad(_1485, -2.0f, 2.0f), mad(_1485, 2.0f, 0.0f)), 0.0f, 1.0f);
    float _1493 = clamp(mad(_1485, 2.0f, -1.0f), 0.0f, 1.0f);
    float _1494 = clamp(mad(_1485, -2.0f, 1.0f), 0.0f, 1.0f);
    float _1566;
    float _1568;
    float _1570;
    if (0.5f < CB3_m0[40u].y)
    {
        float _1533;
        if (_602)
        {
            _1533 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _1533 = asfloat(0u);
        }
        float _1537 = _1533 * CB0_m0[189u].w;
        float _1538 = _1537 * _1492;
        float _1544 = (mad((-0.0f) - _1492, _1537, _1492) + mad((-0.0f) - _1494, _1537, _1494)) + _1493;
        float _1883;
        if (_602)
        {
            _1883 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 7u).x);
        }
        else
        {
            _1883 = asfloat(0u);
        }
        _1566 = _1883 * _1538;
        _1568 = _1883 * _1544;
        _1570 = mad(_1494, _1537, mad((-0.0f) - _1544, _1883, _1544) + mad((-0.0f) - _1538, _1883, _1538));
    }
    else
    {
        float _1545;
        if (_602)
        {
            _1545 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _1545 = asfloat(0u);
        }
        _1566 = _1545 * _1492;
        _1568 = _1493;
        _1570 = _1545 * _1494;
    }
    float _1578 = mad(_1570, ((-0.0f) - _1474) + (((-0.0f) - _1473) + (((-0.0f) - _1472) + 1.0f)), _1474);
    float _1579 = _1568 + _1566;
    float _1580 = _1579 * clamp(min(_1446, ((-0.0f) - _1460) + 1.0f), 0.0f, 1.0f);
    float _1583 = mad(_1479 + _1478, _1566, _1579 * clamp(min(_1460, ((-0.0f) - _1461) + 1.0f), 0.0f, 1.0f));
    float _1584 = _1478 * _1568;
    float _1587 = _1472 * TEXCOORD_7.x;
    float _1592 = mad((-0.0f) - _1472, TEXCOORD_7.x, _1472) + _1473;
    uint4 _1596 = asuint(CB4_m0[60u]);
    uint4 _1603 = asuint(CB4_m0[59u]);
    uint4 _1613 = asuint(CB4_m0[61u]);
    uint4 _1623 = asuint(CB4_m0[62u]);
    uint4 _1633 = asuint(CB4_m0[63u]);
    uint4 _1646 = asuint(CB4_m0[65u]);
    uint4 _1653 = asuint(CB4_m0[64u]);
    uint4 _1663 = asuint(CB4_m0[66u]);
    uint4 _1673 = asuint(CB4_m0[67u]);
    uint4 _1683 = asuint(CB4_m0[68u]);
    uint4 _1696 = asuint(CB0_m0[10u]);
    uint4 _1702 = asuint(CB0_m0[3u]);
    uint4 _1715 = asuint(CB0_m0[11u]);
    uint4 _1721 = asuint(CB0_m0[4u]);
    uint4 _1734 = asuint(CB0_m0[12u]);
    uint4 _1740 = asuint(CB0_m0[5u]);
    uint4 _1753 = asuint(CB0_m0[9u]);
    uint4 _1759 = asuint(CB0_m0[6u]);
    uint4 _1772 = asuint(CB0_m0[13u]);
    uint4 _1778 = asuint(CB0_m0[7u]);
    uint4 _1791 = asuint(CB0_m0[14u]);
    uint4 _1797 = asuint(CB0_m0[8u]);
    float _1809 = min(_564 * 0.4372499883174896240234375f, 1.0f);
    float _1825 = mad(CB4_m0[133u].y, mad(_1809, CB3_m0[1u].w, (-0.0f) - _1809) + 1.0f, 0.0f);
    float _1826 = mad(CB4_m0[133u].y, mad((-0.0f) - _1809, CB3_m0[1u].w, _1809) + (-1.0f), 1.0f);
    float _1827 = asfloat(_502 ? _1633.x : (_504 ? _1623.x : (_506 ? _1613.x : (_508 ? _1596.x : _1603.x)))) + 6.103515625e-05f;
    float _1829 = asfloat(_502 ? _1633.y : (_504 ? _1623.y : (_506 ? _1613.y : (_508 ? _1596.y : _1603.y)))) + 6.103515625e-05f;
    float _1830 = asfloat(_502 ? _1633.z : (_504 ? _1623.z : (_506 ? _1613.z : (_508 ? _1596.z : _1603.z)))) + 6.103515625e-05f;
    float _1833 = (_1830 + (_1829 + _1827)) * 0.3333300054073333740234375f;
    float _1844 = mad(clamp(_1827 / _1833, 0.0f, 1.0f), _1825, _1826 * _1827);
    float _1845 = mad(clamp(_1829 / _1833, 0.0f, 1.0f), _1825, _1826 * _1829);
    float _1846 = mad(clamp(_1830 / _1833, 0.0f, 1.0f), _1825, _1826 * _1830);
    float _1847 = asfloat(_502 ? _1683.x : (_504 ? _1673.x : (_506 ? _1663.x : (_508 ? _1646.x : _1653.x)))) + 6.103515625e-05f;
    float _1848 = asfloat(_502 ? _1683.y : (_504 ? _1673.y : (_506 ? _1663.y : (_508 ? _1646.y : _1653.y)))) + 6.103515625e-05f;
    float _1849 = asfloat(_502 ? _1683.z : (_504 ? _1673.z : (_506 ? _1663.z : (_508 ? _1646.z : _1653.z)))) + 6.103515625e-05f;
    float _1852 = (_1849 + (_1848 + _1847)) * 0.3333300054073333740234375f;
    float _1862 = mad(clamp(_1847 / _1852, 0.0f, 1.0f), _1825, _1826 * _1847);
    float _1863 = mad(clamp(_1848 / _1852, 0.0f, 1.0f), _1825, _1826 * _1848);
    float _1864 = mad(clamp(_1849 / _1852, 0.0f, 1.0f), _1825, _1826 * _1849);
    float _1906;
    if (_602)
    {
        _1906 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
    }
    else
    {
        _1906 = asfloat(0u);
    }
    float _1909 = mad(_1906, ((-0.0f) - _722) + 1.0f, _722);
    float _1910 = _1909 * _1406;
    float _1911 = _1909 * _1408;
    float _1912 = _1909 * _1410;
    float _1913 = min(1.0f / max(_1410 + 1.1754943508222875079687365372222e-38f, max(_1408 + 1.1754943508222875079687365372222e-38f, _1406 + 1.1754943508222875079687365372222e-38f)), 1.0f);
    float _1941 = mad(_1910, mad(_1479, _1568, mad(asfloat(_450 ? _1772.x : _1778.x), _1583, _1584 * asfloat(_450 ? _1753.x : _1759.x))), (_1913 * _1910) * mad(asfloat(_450 ? _1696.x : _1702.x) * _1844, _1580, mad(asfloat(_450 ? _1715.x : _1721.x) * _1844, _1578, mad(asfloat(_450 ? _1791.x : _1797.x) * _1862, _1587, _1592 * (asfloat(_450 ? _1734.x : _1740.x) * _1862)))));
    float _1942 = mad(_1911, mad(_1479, _1568, mad(asfloat(_450 ? _1772.y : _1778.y), _1583, _1584 * asfloat(_450 ? _1753.y : _1759.y))), (_1913 * _1911) * mad(asfloat(_450 ? _1696.y : _1702.y) * _1845, _1580, mad(asfloat(_450 ? _1715.y : _1721.y) * _1845, _1578, mad(asfloat(_450 ? _1791.y : _1797.y) * _1863, _1587, _1592 * (asfloat(_450 ? _1734.y : _1740.y) * _1863)))));
    float _1943 = mad(_1912, mad(_1479, _1568, mad(asfloat(_450 ? _1772.z : _1778.z), _1583, _1584 * asfloat(_450 ? _1753.z : _1759.z))), (_1913 * _1912) * mad(asfloat(_450 ? _1696.z : _1702.z) * _1846, _1580, mad(asfloat(_450 ? _1715.z : _1721.z) * _1846, _1578, mad(asfloat(_450 ? _1791.z : _1797.z) * _1864, _1587, _1592 * (asfloat(_450 ? _1734.z : _1740.z) * _1864)))));
    bool _1946 = 0.5f < TEXCOORD_7.z;
    float _2060;
    float _2061;
    float _2062;
    if (_451 == 0u)
    {
        float _1957 = dot(float3(_497, _499, _501), float3(0.2899999916553497314453125f, 0.60000002384185791015625f, 0.10999999940395355224609375f));
        bool _1964 = TEXCOORD_7.z < 0.5f;
        float _1965 = mad(_1957, 0.2874999940395355224609375f, 1.4375f);
        float _1968 = mad(_1957, 0.4000000059604644775390625f, 1.0f);
        float _1969 = dot(float3(_693, _694, _695), float3(_1946 ? _378 : TEXCOORD_2.x, _1946 ? _379 : TEXCOORD_2.y, _1946 ? _380 : TEXCOORD_2.z));
        float _1976 = clamp(mad((-0.0f) - (((-0.0f) - _1414) + _1969), 3.0f, 1.0f), 0.0f, 1.0f);
        float _1982 = clamp(_1414, 0.0f, 1.0f);
        float _1986 = clamp(_1969, 0.0f, 1.0f);
        float _1988 = max(_497, max(_501, _499));
        bool _1989 = 1.0f < _1988;
        float _2004 = mad(mad(mad(mad(_1414, 0.5f, 0.5f), min(sqrt(_1976) * (_1976 + _1976), 1.0f), (-0.0f) - _1982), 0.5f, _1982), ((-0.0f) - _1965) + 1.0f, _1965);
        float _2011 = exp2(_2004 * log2(asfloat(_1989 ? asuint(_497 / _1988) : _496)));
        float _2012 = exp2(_2004 * log2(asfloat(_1989 ? asuint(_499 / _1988) : _498)));
        float _2013 = exp2(_2004 * log2(asfloat(_1989 ? asuint(_501 / _1988) : _500)));
        float _2020 = mad(((-0.0f) - _497) + _2011, 0.5f, _497);
        float _2021 = mad(((-0.0f) - _499) + _2012, 0.5f, _499);
        float _2022 = mad(((-0.0f) - _501) + _2013, 0.5f, _501);
        float _2033 = mad((-0.0f) - _1957, 0.0500000007450580596923828125f, 1.0499999523162841796875f);
        _2060 = asfloat(_1964 ? asuint(mad(_1986, _2013 + ((-0.0f) - _2022), _2022)) : asuint(_2033 * exp2(log2(_501) * _1968)));
        _2061 = asfloat(_1964 ? asuint(mad(_1986, _2012 + ((-0.0f) - _2021), _2021)) : asuint(_2033 * exp2(log2(_499) * _1968)));
        _2062 = asfloat(_1964 ? asuint(mad(_1986, _2011 + ((-0.0f) - _2020), _2020)) : asuint(_2033 * exp2(log2(_497) * _1968)));
    }
    else
    {
        _2060 = _501;
        _2061 = _499;
        _2062 = _497;
    }
    float _2064 = mad((-0.0f) - _396, 0.959999978542327880859375f, 0.959999978542327880859375f);
    float _2066 = _2064 * _2062;
    float _2067 = _2064 * _2061;
    float _2068 = _2064 * _2060;
    float _2073 = mad(_396, _2062 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _2075 = mad(_396, _2061 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _2076 = mad(_396, _2060 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _2081 = mad((-0.0f) - _408, CB4_m0[137u].w, 1.0f);
    float _2082 = _2081 * _2081;
    float _2103 = dot(float3((_1941 + CB0_m0[2u].x) + TEXCOORD_8.x, (_1942 + CB0_m0[2u].y) + TEXCOORD_8.y, (_1943 + CB0_m0[2u].z) + TEXCOORD_8.z), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2117 = ((-0.0f) - CB0_m0[19u].x) + CB0_m0[19u].y;
    float _2118 = 1.0f / _2117;
    float _2141 = asfloat((_2103 < CB0_m0[19u].x) ? asuint(_2103) : asuint(mad((-0.0f) - _2117, 1.0f / mad(_2103, _2118, mad((-0.0f) - CB0_m0[19u].x, _2118, 1.0f)), CB0_m0[19u].y))) / (_2103 + 9.9999997473787516355514526367188e-05f);
    float _2142 = _1941 * _2141;
    float _2143 = _1942 * _2141;
    float _2144 = _1943 * _2141;
    uint4 _2148 = asuint(CB4_m0[75u]);
    uint4 _2155 = asuint(CB4_m0[74u]);
    uint4 _2165 = asuint(CB4_m0[76u]);
    uint4 _2175 = asuint(CB4_m0[77u]);
    uint4 _2185 = asuint(CB4_m0[78u]);
    float _2221 = asfloat(_502 ? asuint(CB4_m0[142u]).y : (_504 ? asuint(CB4_m0[142u]).x : (_506 ? asuint(CB4_m0[141u]).w : (_508 ? asuint(CB4_m0[141u]).z : asuint(CB4_m0[141u]).y))));
    float _2256;
    if (0.5f < _2221)
    {
        _2256 = clamp(((clamp(mad(_1431, 1.5f, -0.5f), 0.0f, 1.0f) + _390) + (-1.0f)) / max(asfloat(_502 ? asuint(CB4_m0[143u]).z : (_504 ? asuint(CB4_m0[143u]).y : (_506 ? asuint(CB4_m0[143u]).x : (_508 ? asuint(CB4_m0[142u]).w : asuint(CB4_m0[142u]).z)))), 9.9999997473787516355514526367188e-06f), 0.0f, 1.0f);
    }
    else
    {
        _2256 = _390;
    }
    float _2260 = _2256 * CB4_m0[143u].w;
    float _2268 = mad(_685, _692, _561);
    float _2269 = mad(_686, _692, _562);
    float _2270 = mad(_687, _692, _563);
    float _2274 = rsqrt(dot(float3(_2268, _2269, _2270), float3(_2268, _2269, _2270)));
    float _2275 = _2274 * _2268;
    float _2276 = _2274 * _2269;
    float _2277 = _2274 * _2270;
    float _2303 = asfloat(_502 ? asuint(CB4_m0[141u]).x : (_504 ? asuint(CB4_m0[140u]).w : (_506 ? asuint(CB4_m0[140u]).z : (_508 ? asuint(CB4_m0[140u]).y : asuint(CB4_m0[140u]).x))));
    float _2314 = clamp(mad(_2303 * dot(float3(_378, _379, _380), float3(_2275, _2276, _2277)), 0.75f, 0.25f), 0.0f, 1.0f);
    float _2320 = clamp(mad(_2303 * dot(float3(_693, _694, _695), float3(_2275, _2276, _2277)), 0.75f, 0.25f), 0.0f, 1.0f);
    float _2322 = mad(_2314 * _2314, mad(_2082, _2082, -1.0f), 1.000010013580322265625f);
    float _2396 = (((clamp(mad(_1414 * _2303, 0.75f, 0.25f), 0.0f, 1.0f) * clamp(mad((-0.0f) - _408, CB4_m0[137u].w, (_2082 * _2082) / (mad(_2082, 4.0f, 2.0f) * (max(_2320 * _2320, 0.100000001490116119384765625f) * (_2322 * _2322)))), 0.0f, 1.0f)) / max(_2082, 9.9999997473787516355514526367188e-06f)) * (asfloat(_502 ? asuint(CB4_m0[139u]).w : (_504 ? asuint(CB4_m0[139u]).z : (_506 ? asuint(CB4_m0[139u]).y : (_508 ? asuint(CB4_m0[139u]).x : asuint(CB4_m0[138u]).w)))) * asfloat(_502 ? asuint(CB4_m0[166u]).w : (_504 ? asuint(CB4_m0[166u]).z : (_506 ? asuint(CB4_m0[166u]).y : (_508 ? asuint(CB4_m0[166u]).x : asuint(CB4_m0[165u]).w)))))) * 10.0f;
    float _2404 = asfloat((_2221 < 0.5f) ? asuint(clamp(_2396, 0.0f, 1.0f) * 100.0f) : 1099257348u);
    float _2405 = (_2073 * (asfloat(_502 ? _2185.x : (_504 ? _2175.x : (_506 ? _2165.x : (_508 ? _2148.x : _2155.x)))) * _2260)) * _2404;
    float _2406 = (_2075 * (asfloat(_502 ? _2185.y : (_504 ? _2175.y : (_506 ? _2165.y : (_508 ? _2148.y : _2155.y)))) * _2260)) * _2404;
    float _2407 = (_2076 * (asfloat(_502 ? _2185.z : (_504 ? _2175.z : (_506 ? _2165.z : (_508 ? _2148.z : _2155.z)))) * _2260)) * _2404;
    uint _2424 = (CB4_m0[144u].x >= 0.5f) ? 4294967295u : 0u;
    uint4 _2428 = asuint(CB4_m0[80u]);
    uint4 _2435 = asuint(CB4_m0[79u]);
    uint4 _2445 = asuint(CB4_m0[81u]);
    uint4 _2455 = asuint(CB4_m0[82u]);
    uint4 _2465 = asuint(CB4_m0[83u]);
    float _2485 = asfloat(_2424 & asuint(_2062 * (_435 * asfloat(_502 ? _2465.x : (_504 ? _2455.x : (_506 ? _2445.x : (_508 ? _2428.x : _2435.x)))))));
    float _2487 = asfloat(_2424 & asuint(_2061 * (_435 * asfloat(_502 ? _2465.y : (_504 ? _2455.y : (_506 ? _2445.y : (_508 ? _2428.y : _2435.y)))))));
    float _2489 = asfloat(_2424 & asuint(_2060 * (_435 * asfloat(_502 ? _2465.z : (_504 ? _2455.z : (_506 ? _2445.z : (_508 ? _2428.z : _2435.z)))))));
    float _2491 = _2489 + (_2487 + _2485);
    float _2498 = _2141 * TEXCOORD_8.x;
    float _2499 = _2141 * TEXCOORD_8.y;
    float _2500 = _2141 * TEXCOORD_8.z;
    float _2556;
    float _2557;
    float _2558;
    float _2559;
    float _2560;
    float _2561;
    if (_602)
    {
        uint _2514 = uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u)));
        uint _2516 = (_2514 * 32u) + 24u;
        uint3 _2526 = uint3(T1.Load(_2516).x, T1.Load(_2516 + 1u).x, T1.Load(_2516 + 2u).x);
        uint _2534 = (_2514 * 32u) + 28u;
        uint3 _2543 = uint3(T1.Load(_2534).x, T1.Load(_2534 + 1u).x, T1.Load(_2534 + 2u).x);
        _2556 = asfloat(_2526.x);
        _2557 = asfloat(_2526.y);
        _2558 = asfloat(_2526.z);
        _2559 = asfloat(_2543.x);
        _2560 = asfloat(_2543.y);
        _2561 = asfloat(_2543.z);
    }
    else
    {
        _2556 = asfloat(0u);
        _2557 = asfloat(0u);
        _2558 = asfloat(0u);
        _2559 = asfloat(0u);
        _2560 = asfloat(0u);
        _2561 = asfloat(0u);
    }
    bool _2565 = 0.5f < CB0_m0[23u].y;
    bool _2566 = _452 != 0u;
    float _2662;
    float _2664;
    float _2666;
    if (0.5f >= CB0_m0[188u].w)
    {
        float _2601 = clamp(mad((-0.0f) - dot(float3(_561, _562, _563), float3(_693, _694, _695)), 0.5f, 0.5f), 0.0f, 1.0f);
        float _2603 = mad(_379, 0.5f, 0.5f);
        float _2612 = clamp((asfloat((_452 != 0u) ? asuint(_2603) : asuint(_2603 * _2603)) + (-0.20000000298023223876953125f)) * 1.25f, 0.0f, 1.0f);
        float _2615 = (_2612 * _2612) * mad(_2612, -2.0f, 3.0f);
        float _2616 = _2615 * _2615;
        bool _2619 = _452 != 0u;
        float _2682;
        if (_602)
        {
            _2682 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _2682 = asfloat(0u);
        }
        float _2711 = min(_564 * 0.083333335816860198974609375f, 1.0f);
        float _2719 = ((-0.0f) - dot(float3(_561, _562, _563), float3(_378, _379, _380))) + 1.0f;
        float _2728 = clamp((((-0.0f) - mad(_2711, -0.300000011920928955078125f, 0.5f)) + _2719) * 3.3333332538604736328125f, 0.0f, 1.0f);
        float _2729 = clamp((((-0.0f) - mad(_2711, -0.300000011920928955078125f, 0.60000002384185791015625f)) + _2719) * 5.000000476837158203125f, 0.0f, 1.0f);
        float _2760 = CB0_m0[189u].x * CB0_m0[189u].x;
        float _2761 = CB0_m0[189u].y * CB0_m0[189u].y;
        float _2762 = CB0_m0[189u].z * CB0_m0[189u].z;
        float _2763 = _2760 * _2760;
        float _2764 = _2761 * _2761;
        float _2765 = _2762 * _2762;
        float _2766 = _2763 * _2763;
        float _2767 = _2764 * _2764;
        float _2768 = _2765 * _2765;
        float _2775 = dot(float3(CB0_m0[189u].xyz), 0.3300000131130218505859375f.xxx) * (1.0f / (dot(float3(_2766, _2767, _2768), 0.699999988079071044921875f.xxx) + 9.9999997473787516355514526367188e-06f));
        float _2782 = mad(_1328, mad(_2775, _2766, (-0.0f) - _2142), _2142);
        float _2783 = mad(_1328, mad(_2775, _2767, (-0.0f) - _2143), _2143);
        float _2784 = mad(_1328, mad(_2775, _2768, (-0.0f) - _2144), _2144);
        float _2789 = exp2(log2(_2601 * _2601) * 20.0f);
        float _2813 = mad(_2060, _2064, _2067 + _2066) * 0.3300000131130218505859375f;
        float _2830 = exp2(log2(clamp(_2066, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _2831 = exp2(log2(clamp(_2067, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _2832 = exp2(log2(clamp(_2068, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _2837 = rsqrt(max(dot(float3(_2830, _2831, _2832), float3(_2830, _2831, _2832)), 6.103515625e-05f));
        float _2838 = _2837 * _2830;
        float _2839 = _2837 * _2831;
        float _2840 = _2837 * _2832;
        float _2845 = CB0_m0[198u].w * 48.0f;
        float _2847 = mad((_2813 * _2813) * CB0_m0[199u].w, -0.199999988079071044921875f, 1.0f) * 0.100000001490116119384765625f;
        float _2851 = (-0.0f) - _2847;
        float _2861 = asfloat((_452 != 0u) ? asuint((_2728 * _2728) * mad(_2728, -2.0f, 3.0f)) : asuint((_2729 * _2729) * mad(_2729, -2.0f, 3.0f))) * (mad(CB0_m0[199u].y, mad(clamp((-0.0f) - _562, 0.0f, 1.0f), asfloat((0.0f != TEXCOORD_7.z) ? 1083179008u : asuint(mad(_392, CB4_m0[137u].z, 2.5f))), -0.5f), 1.0f) * (clamp(mad(_2682, 0.39999997615814208984375f, _1328) + 0.60000002384185791015625f, 0.0f, 1.0f) * (mad(_1337 * mad(_1414, 0.5f, 0.5f), 1.39999997615814208984375f, 0.100000001490116119384765625f) * (mad(_2601, 0.800000011920928955078125f, 0.20000000298023223876953125f) * mad(CB0_m0[199u].x, mad(_2615, mad(_2615 * (_2616 * _2616), asfloat(_2619 ? 3212836864u : 3204448256u) + asfloat(_2619 ? 1050253722u : 1065353216u), asfloat(_2619 ? 1065353216u : 1056964608u)), -0.100000001490116119384765625f), 0.100000001490116119384765625f)))));
        uint4 _2871 = asuint(CB4_m0[87u]);
        uint4 _2878 = asuint(CB4_m0[86u]);
        uint4 _2888 = asuint(CB4_m0[88u]);
        uint4 _2898 = asuint(CB4_m0[89u]);
        uint4 _2908 = asuint(CB4_m0[90u]);
        float _2920 = asfloat(_502 ? _2908.z : (_504 ? _2898.z : (_506 ? _2888.z : (_508 ? _2871.z : _2878.z)))) * ((_2845 * mad(_396, mad(_2851, _2840, _2076), _2840 * _2847)) * (mad(CB0_m0[199u].z, mad((-0.0f) - _1943, _2141, mad(_2789, mad(_1943, _2141, (-0.0f) - _2784), _2784)), _2144) * _2861));
        float _2923 = mad(clamp(mad(_564, 0.20000000298023223876953125f, -1.0f), 0.0f, 1.0f), -0.699999988079071044921875f, 1.0f);
        float _2925 = _2923 * (asfloat(_502 ? _2908.x : (_504 ? _2898.x : (_506 ? _2888.x : (_508 ? _2871.x : _2878.x)))) * ((_2845 * mad(_396, mad(_2851, _2838, _2073), _2838 * _2847)) * (mad(CB0_m0[199u].z, mad((-0.0f) - _1941, _2141, mad(_2789, mad(_1941, _2141, (-0.0f) - _2782), _2782)), _2142) * _2861)));
        float _2926 = _2923 * (asfloat(_502 ? _2908.y : (_504 ? _2898.y : (_506 ? _2888.y : (_508 ? _2871.y : _2878.y)))) * ((_2845 * mad(_396, mad(_2851, _2839, _2075), _2839 * _2847)) * (mad(CB0_m0[199u].z, mad((-0.0f) - _1942, _2141, mad(_2789, mad(_1942, _2141, (-0.0f) - _2783), _2783)), _2143) * _2861)));
        float _2929 = mad(_2920, _2923, _2926 + _2925);
        float _2931 = mad(_2929 * _2929, 0.0500000007450580596923828125f, 1.0f);
        float _2936 = asfloat(_1946 ? 1056964608u : 1065353216u);
        float _2937 = _2936 * (_2931 * _2925);
        float _2938 = _2936 * (_2931 * _2926);
        float _2939 = _2936 * (_2931 * (_2923 * _2920));
        bool _2943 = 0.5f < CB3_m0[1u].w;
        _2662 = asfloat(_2943 ? asuint(min(_2939, 0.699999988079071044921875f)) : asuint(_2939)) * CB0_m0[198u].z;
        _2664 = asfloat(_2943 ? asuint(min(_2938, 0.699999988079071044921875f)) : asuint(_2938)) * CB0_m0[198u].y;
        _2666 = asfloat(_2943 ? asuint(min(_2937, 0.699999988079071044921875f)) : asuint(_2937)) * CB0_m0[198u].x;
    }
    else
    {
        _2662 = asfloat(0u);
        _2664 = asfloat(0u);
        _2666 = asfloat(0u);
    }
    float _2674 = _2485 + (max(mad(_2405, _2142, -1.0f), 0.0f) + mad(asfloat(_2565 ? 1028443341u : (_2566 ? asuint(_2556) : asuint(_2559))), _2062 * _2141, mad(_2498, _2066, mad(_2066, _2142, _2142 * _2405))));
    float _2675 = _2487 + (max(mad(_2406, _2143, -1.0f), 0.0f) + mad(asfloat(_2565 ? 1028443341u : (_2566 ? asuint(_2557) : asuint(_2560))), _2061 * _2141, mad(_2499, _2067, mad(_2067, _2143, _2143 * _2406))));
    float _2676 = _2489 + (max(mad(_2407, _2144, -1.0f), 0.0f) + mad(asfloat(_2565 ? 1028443341u : (_2566 ? asuint(_2558) : asuint(_2561))), _2060 * _2141, mad(_2500, _2068, mad(_2068, _2144, _2144 * _2407))));
    float _3216;
    float _3217;
    float _3218;
    float _3219;
    float _3220;
    if (CB4_m0[150u].x >= 0.5f)
    {
        bool _2967 = 0.5f < CB4_m0[150u].y;
        float _2976 = _2967 ? TEXCOORD_1.x : TEXCOORD.x;
        float _2977 = _2967 ? TEXCOORD_1.y : TEXCOORD.y;
        bool _2983 = 0.5f < CB4_m0[148u].z;
        bool _2984 = 0.5f < CB4_m0[148u].y;
        bool _2990 = CB4_m0[150u].y < 0.5f;
        bool _2993 = CB4_m0[150u].z < 0.5f;
        bool _3014 = 0.800000011920928955078125f < CB4_m0[147u].w;
        float4 _3067 = T8.SampleBias(S3, float2(mad(CB4_m0[108u].x, CB0_m0[40u].y, mad(_2976, CB4_m0[49u].x, CB4_m0[49u].z)), mad(CB4_m0[108u].y, CB0_m0[40u].y, mad(_2977, CB4_m0[49u].y, CB4_m0[49u].w))), CB0_m0[191u].x);
        float _3069 = _3067.x;
        float _3070 = _3067.y;
        float _3071 = _3067.z;
        float4 _3076 = T9.SampleBias(S4, float2(mad(CB4_m0[108u].z, CB0_m0[40u].y, mad(asfloat(_3014 ? asuint(_281) : (_2983 ? asuint(_2976) : asuint(_2990 ? TEXCOORD_1.x : TEXCOORD.x))), CB4_m0[50u].x, CB4_m0[50u].z)), mad(CB4_m0[108u].w, CB0_m0[40u].y, mad(asfloat(_3014 ? asuint(_282) : (_2983 ? asuint(_2977) : asuint(_2990 ? TEXCOORD_1.y : TEXCOORD.y))), CB4_m0[50u].y, CB4_m0[50u].w))), CB0_m0[191u].x);
        uint _3085 = (CB4_m0[150u].w < 0.5f) ? asuint(_3076.x) : ((CB4_m0[150u].w < 1.5f) ? asuint(_3076.y) : asuint(_3076.z));
        float _3086 = asfloat(_3085);
        uint _3087 = asuint(_3069);
        float _3092 = asfloat(_2993 ? _3087 : asuint(_3069));
        float _3094 = asfloat(_2993 ? _3087 : asuint(_3070));
        float _3096 = asfloat(_2993 ? _3087 : asuint(_3071));
        uint _3142 = _2984 ? asuint(_3086 * mad(_3092, CB4_m0[34u].x + ((-0.0f) - CB4_m0[95u].x), CB4_m0[95u].x)) : asuint((_3086 * _3092) * CB4_m0[34u].x);
        uint _3144 = _2984 ? asuint(_3086 * mad(_3094, CB4_m0[34u].y + ((-0.0f) - CB4_m0[95u].y), CB4_m0[95u].y)) : asuint((_3086 * _3094) * CB4_m0[34u].y);
        uint _3146 = _2984 ? asuint(_3086 * mad(_3096, CB4_m0[34u].z + ((-0.0f) - CB4_m0[95u].z), CB4_m0[95u].z)) : asuint((_3086 * _3096) * CB4_m0[34u].z);
        bool _3151 = 0.5f < CB4_m0[151u].x;
        float _3159 = asfloat(_3151 ? asuint(_2062 * asfloat(_3142)) : _3142);
        float _3161 = asfloat(_3151 ? asuint(_2061 * asfloat(_3144)) : _3144);
        float _3163 = asfloat(_3151 ? asuint(_2060 * asfloat(_3146)) : _3146);
        bool _3167 = CB4_m0[147u].z < 0.5f;
        uint _3178 = _2993 ? asuint(_3069) : asuint(_3071 + (_3070 + _3069));
        float _3184 = min(asfloat((1.5f < CB4_m0[147u].z) ? asuint(asfloat(_3178) + _3086) : _3178), 1.0f);
        float _3185 = _3184 * _3086;
        _3216 = asfloat(_3167 ? _3085 : asuint(_3185));
        _3217 = asfloat(_3167 ? asuint((_3163 + (_3161 + _3159)) + _2491) : asuint(mad(_3086, _3184, _2491)));
        _3218 = asfloat(_3167 ? asuint(_2674 + _3159) : asuint(_2674 * mad(_3185, _3159 + (-1.0f), 1.0f)));
        _3219 = asfloat(_3167 ? asuint(_2675 + _3161) : asuint(_2675 * mad(_3185, _3161 + (-1.0f), 1.0f)));
        _3220 = asfloat(_3167 ? asuint(_2676 + _3163) : asuint(_2676 * mad(_3185, _3163 + (-1.0f), 1.0f)));
    }
    else
    {
        _3216 = asfloat(0u);
        _3217 = _2491;
        _3218 = _2674;
        _3219 = _2675;
        _3220 = _2676;
    }
    float _3469;
    float _3470;
    float _3471;
    float _3472;
    float _3473;
    if (float(int(asuint(CB4_m0[132u]).w)) >= 0.5f)
    {
        bool _3232 = 0.5f < CB4_m0[127u].x;
        bool _3233 = 0.5f < CB4_m0[127u].z;
        bool _3251 = 0.5f < CB4_m0[128u].x;
        bool _3252 = 0.800000011920928955078125f < CB4_m0[128u].z;
        bool _3253 = 0.5f < CB4_m0[128u].y;
        float4 _3317 = T10.SampleBias(S0, float2(mad(CB4_m0[40u].x, CB0_m0[40u].y, mad(_3232 ? TEXCOORD_1.x : TEXCOORD.x, CB4_m0[51u].x, CB4_m0[51u].z)), mad(CB4_m0[40u].y, CB0_m0[40u].y, mad(_3232 ? TEXCOORD_1.y : TEXCOORD.y, CB4_m0[51u].y, CB4_m0[51u].w))), CB0_m0[191u].x);
        float _3319 = _3317.x;
        float _3320 = _3317.y;
        float _3321 = _3317.z;
        float4 _3326 = T11.SampleBias(S0, float2(mad(CB4_m0[40u].z, CB0_m0[40u].y, mad(asfloat(_3252 ? asuint(_281) : asuint(_3251 ? TEXCOORD_1.x : TEXCOORD.x)), CB4_m0[52u].x, CB4_m0[52u].z)), mad(CB4_m0[40u].w, CB0_m0[40u].y, mad(asfloat(_3252 ? asuint(_282) : asuint(_3251 ? TEXCOORD_1.y : TEXCOORD.y)), CB4_m0[52u].y, CB4_m0[52u].w))), CB0_m0[191u].x);
        bool _3337 = CB4_m0[127u].y < 0.5f;
        uint _3342 = (CB4_m0[127u].w < 0.5f) ? asuint(_3326.x) : ((CB4_m0[127u].w < 1.5f) ? asuint(_3326.y) : asuint(_3326.z));
        float _3343 = asfloat(_3342);
        uint _3344 = asuint(_3319);
        float _3349 = asfloat(_3337 ? _3344 : asuint(_3319));
        float _3351 = asfloat(_3337 ? _3344 : asuint(_3320));
        float _3353 = asfloat(_3337 ? _3344 : asuint(_3321));
        uint _3400 = _3253 ? asuint(_3343 * mad(_3349, CB4_m0[110u].x + ((-0.0f) - CB4_m0[111u].x), CB4_m0[111u].x)) : asuint((_3343 * _3349) * CB4_m0[110u].x);
        uint _3402 = _3253 ? asuint(_3343 * mad(_3351, CB4_m0[110u].y + ((-0.0f) - CB4_m0[111u].y), CB4_m0[111u].y)) : asuint((_3343 * _3351) * CB4_m0[110u].y);
        uint _3404 = _3253 ? asuint(_3343 * mad(_3353, CB4_m0[110u].z + ((-0.0f) - CB4_m0[111u].z), CB4_m0[111u].z)) : asuint((_3343 * _3353) * CB4_m0[110u].z);
        float _3413 = asfloat(_3233 ? asuint(_2062 * asfloat(_3400)) : _3400);
        float _3415 = asfloat(_3233 ? asuint(_2061 * asfloat(_3402)) : _3402);
        float _3417 = asfloat(_3233 ? asuint(_2060 * asfloat(_3404)) : _3404);
        bool _3421 = CB4_m0[128u].w < 0.5f;
        uint _3432 = _3337 ? asuint(_3319) : asuint(_3321 + (_3320 + _3319));
        float _3438 = min(asfloat((1.5f < CB4_m0[128u].w) ? asuint(asfloat(_3432) + _3343) : _3432), 1.0f);
        float _3439 = _3438 * _3343;
        _3469 = asfloat(_3421 ? _3342 : asuint(_3439));
        _3470 = asfloat(_3421 ? asuint((_3417 + (_3415 + _3413)) + _3217) : asuint(mad(_3343, _3438, _3217)));
        _3471 = asfloat(_3421 ? asuint(_3413 + _3218) : asuint(mad(_3439, _3413 + (-1.0f), 1.0f) * _3218));
        _3472 = asfloat(_3421 ? asuint(_3415 + _3219) : asuint(mad(_3439, _3415 + (-1.0f), 1.0f) * _3219));
        _3473 = asfloat(_3421 ? asuint(_3417 + _3220) : asuint(mad(_3439, _3417 + (-1.0f), 1.0f) * _3220));
    }
    else
    {
        _3469 = _3216;
        _3470 = _3217;
        _3471 = _3218;
        _3472 = _3219;
        _3473 = _3220;
    }
    float _3481 = CB4_m0[29u].w * CB4_m0[155u].w;
    float _3493 = mad(_3481, ((-0.0f) - _3471) + CB4_m0[29u].x, _3471);
    float _3494 = mad(_3481, ((-0.0f) - _3472) + CB4_m0[29u].y, _3472);
    float _3495 = mad(_3481, ((-0.0f) - _3473) + CB4_m0[29u].z, _3473);
    float _3503 = mad((-0.0f) - CB4_m0[29u].w, CB4_m0[155u].w, 1.0f);
    float _3504 = _3503 * (_2666 * mad(_2498, 2.0f, 1.0f));
    float _3505 = _3503 * (_2664 * mad(_2499, 2.0f, 1.0f));
    float _3506 = _3503 * (_2662 * mad(_2500, 2.0f, 1.0f));
    float _3708;
    float _3710;
    float _3712;
    float _3714;
    if (0.5f < CB4_m0[152u].y)
    {
        bool _3515 = CB4_m0[153u].x < 0.5f;
        float _3588 = mad(gl_FragCoord.x, CB0_m0[160u].z, -0.5f);
        float _3589 = mad(gl_FragCoord.y, CB0_m0[160u].w, -0.5f);
        float _3617 = ((-0.0f) - (mad(CB0_m0[118u].z, TEXCOORD_4.w, mad(CB0_m0[116u].z, TEXCOORD_2.w, TEXCOORD_3.w * CB0_m0[117u].z)) + CB0_m0[119u].z)) / CB0_m0[93u].y;
        float _3628 = asfloat((0.5f < CB4_m0[152u].z) ? asuint(mad(CB0_m0[85u].w, mad((-0.0f) - _3617, 0.5f, 1.0f), _3617 * 0.5f)) : 1065353216u);
        float4 _3661 = T12.Sample(S5, float2((mad(_3628 * mad(CB4_m0[125u].z, mad(CB0_m0[118u].x, _380, mad(CB0_m0[116u].x, _378, _379 * CB0_m0[117u].x)), (CB0_m0[160u].w * CB0_m0[160u].x) * (_3588 + _3588)), CB4_m0[47u].x, CB4_m0[47u].z) + 0.5f) + mad(CB4_m0[124u].x, CB0_m0[40u].y, CB4_m0[124u].z), (mad(_3628 * mad(CB4_m0[125u].z, mad(CB0_m0[118u].y, _380, mad(CB0_m0[116u].y, _378, _379 * CB0_m0[117u].y)), _3589 + _3589), CB4_m0[47u].y, CB4_m0[47u].w) + 0.5f) + mad(CB4_m0[124u].y, CB0_m0[40u].y, CB4_m0[124u].w)));
        float _3677 = _3661.w * CB4_m0[109u].w;
        float _3706 = asfloat((0.5f < CB4_m0[153u].z) ? asuint(mad(mad(sin((CB0_m0[40u].y / max(CB4_m0[168u].x, 0.00999999977648258209228515625f)) * 6.283185482025146484375f), 0.5f, 0.5f), ((-0.0f) - CB4_m0[125u].x) + CB4_m0[125u].y, CB4_m0[125u].x)) : 1065353216u);
        float _3707 = _3706 * _3677;
        float _3839;
        float _3840;
        float _3841;
        if (0.5f < CB4_m0[152u].w)
        {
            float _3722 = mad((-0.0f) - _3677, _3706, 1.0f);
            _3839 = _2674 * mad(_3661.x * CB4_m0[109u].x, _3707, _3722);
            _3840 = _2675 * mad(_3661.y * CB4_m0[109u].y, _3707, _3722);
            _3841 = _2676 * mad(_3661.z * CB4_m0[109u].z, _3707, _3722);
        }
        else
        {
            _3839 = mad(_3707, mad(CB4_m0[109u].x, _3661.x, (-0.0f) - _2674), _2674);
            _3840 = mad(_3707, mad(CB4_m0[109u].y, _3661.y, (-0.0f) - _2675), _2675);
            _3841 = mad(_3707, mad(CB4_m0[109u].z, _3661.z, (-0.0f) - _2676), _2676);
        }
        float _3868 = asfloat((0.5f < CB4_m0[153u].y) ? asuint(((-0.0f) - _3469) + 1.0f) : 1065353216u) * T13.Sample(S6, float2(mad(CB0_m0[40u].y, CB4_m0[149u].z, mad(_3515 ? TEXCOORD.x : TEXCOORD_1.x, CB4_m0[48u].x, CB4_m0[48u].z)), mad(CB0_m0[40u].y, CB4_m0[149u].w, mad(_3515 ? TEXCOORD.y : TEXCOORD_1.y, CB4_m0[48u].y, CB4_m0[48u].w)))).x;
        _3708 = mad(_3841 + (_3840 + _3839), _3868, _3470);
        _3710 = mad(_3868, ((-0.0f) - _3495) + _3841, _3495);
        _3712 = mad(_3868, ((-0.0f) - _3494) + _3840, _3494);
        _3714 = mad(_3868, ((-0.0f) - _3493) + _3839, _3493);
    }
    else
    {
        _3708 = _3470;
        _3710 = _3495;
        _3712 = _3494;
        _3714 = _3493;
    }
    float _3819;
    float _3821;
    float _3823;
    float _3825;
    float _3827;
    uint _3829;
    float _3830;
    float _3832;
    if (0.5f < CB4_m0[158u].z)
    {
        bool _3760 = 0.5f < CB4_m0[159u].x;
        float4 _3809 = T14.Sample(S7, float2(mad(CB0_m0[40u].y, CB4_m0[103u].x, asfloat(_3760 ? asuint(mad(TEXCOORD_1.x, CB4_m0[55u].x, CB4_m0[55u].z)) : asuint(mad(TEXCOORD.x, CB4_m0[55u].x, CB4_m0[55u].z)))), mad(CB0_m0[40u].y, CB4_m0[103u].y, asfloat(_3760 ? asuint(mad(TEXCOORD_1.y, CB4_m0[55u].y, CB4_m0[55u].w)) : asuint(mad(TEXCOORD.y, CB4_m0[55u].y, CB4_m0[55u].w))))));
        float _3811 = _3809.x;
        float _3812 = _3809.y;
        float _3813 = _3809.z;
        float _3822;
        float _3824;
        float _3826;
        if (0.5f < CB4_m0[158u].w)
        {
            _3822 = mad(CB4_m0[33u].z * CB4_m0[33u].w, _3813, _3506);
            _3824 = mad(CB4_m0[33u].y * CB4_m0[33u].w, _3812, _3505);
            _3826 = mad(CB4_m0[33u].x * CB4_m0[33u].w, _3811, _3504);
        }
        else
        {
            float _3894 = _3809.w * CB4_m0[33u].w;
            _3822 = mad(_3894, mad(CB4_m0[33u].z, _3813, (-0.0f) - _3506), _3506);
            _3824 = mad(_3894, mad(CB4_m0[33u].y, _3812, (-0.0f) - _3505), _3505);
            _3826 = mad(_3894, mad(CB4_m0[33u].x, _3811, (-0.0f) - _3504), _3504);
        }
        uint4 _4290 = asuint(CB4_m0[131u]);
        float _4294 = float(int(_4290.x));
        float _4301 = exp2(log2(max(((-0.0f) - abs(dot(float3(TEXCOORD_2.x, TEXCOORD_2.y, TEXCOORD_2.z), float3(_561, _562, _563)))) + 1.0f, 0.0f)) * CB4_m0[155u].z) * float(int(_4290.y));
        float _4309 = exp2(max(CB4_m0[130u].x, 0.00999999977648258209228515625f) * log2(_4301));
        float _4315 = min(CB4_m0[121u].x, 65504.0f);
        float _4317 = min(CB4_m0[121u].y, 65504.0f);
        float _4318 = min(CB4_m0[121u].z, 65504.0f);
        float _4330 = mad(_4309, ((-0.0f) - _4315) + CB4_m0[120u].x, _4315);
        float _4331 = mad(_4309, ((-0.0f) - _4317) + CB4_m0[120u].y, _4317);
        float _4332 = mad(_4309, ((-0.0f) - _4318) + CB4_m0[120u].z, _4318);
        float _4343 = asfloat(((_4301 >= CB4_m0[130u].y) ? 4294967295u : 0u) & 1065353216u) * _4301;
        bool _4347 = _4294 < 0.5f;
        bool _4348 = _4294 < 1.5f;
        _3819 = mad(_3822 + (_3824 + _3826), ((-0.0f) - CB4_m0[156u].x) + 1.0f, _3708);
        _3821 = _3822;
        _3823 = _3824;
        _3825 = _3826;
        _3827 = asfloat(_4347 ? asuint(mad(_4343, _3813 * _4332, _3710)) : (_4348 ? asuint(mad(_4343, mad(_4332, _3813, (-0.0f) - _3710), _3710)) : asuint(_3710 * mad(_4343, mad(_4332, _3813, -1.0f), 1.0f))));
        _3829 = 0u;
        _3830 = asfloat(_4347 ? asuint(mad(_4343, _3812 * _4331, _3712)) : (_4348 ? asuint(mad(_4343, mad(_4331, _3812, (-0.0f) - _3712), _3712)) : asuint(_3712 * mad(_4343, mad(_4331, _3812, -1.0f), 1.0f))));
        _3832 = asfloat(_4347 ? asuint(mad(_4343, _3811 * _4330, _3714)) : (_4348 ? asuint(mad(_4343, mad(_4330, _3811, (-0.0f) - _3714), _3714)) : asuint(_3714 * mad(_4343, mad(_4330, _3811, -1.0f), 1.0f))));
    }
    else
    {
        _3819 = _3708;
        _3821 = _3506;
        _3823 = _3505;
        _3825 = _3504;
        _3827 = _3710;
        _3829 = _452;
        _3830 = _3712;
        _3832 = _3714;
    }
    float _3935;
    float _3937;
    float _3939;
    float _3941;
    float _3943;
    float _3945;
    float _3947;
    if (0.5f < CB4_m0[156u].x)
    {
        float _3912 = CB4_m0[156u].z * 0.01745329238474369049072265625f;
        float _3914 = sin(_3912);
        float _3915 = cos(_3912);
        bool _3920 = CB4_m0[156u].y < 0.5f;
        float _4459;
        float _4460;
        float _4461;
        if (1.5f < CB4_m0[156u].y)
        {
            bool _4386 = CB4_m0[157u].w < 0.5f;
            uint4 _4433 = asuint(CB4_m0[25u]);
            float _4446 = ((-0.0f) - TEXCOORD_2.w) + asfloat(_4386 ? asuint(mad(CB1_m0[2u].x, CB4_m0[25u].z, mad(CB1_m0[0u].x, CB4_m0[25u].x, CB1_m0[1u].x * CB4_m0[25u].y)) + CB1_m0[3u].x) : _4433.x);
            float _4447 = ((-0.0f) - TEXCOORD_3.w) + asfloat(_4386 ? asuint(mad(CB1_m0[2u].y, CB4_m0[25u].z, mad(CB1_m0[0u].y, CB4_m0[25u].x, CB1_m0[1u].y * CB4_m0[25u].y)) + CB1_m0[3u].y) : _4433.y);
            float _4448 = ((-0.0f) - TEXCOORD_4.w) + asfloat(_4386 ? asuint(mad(CB1_m0[2u].z, CB4_m0[25u].z, mad(CB1_m0[0u].z, CB4_m0[25u].x, CB1_m0[1u].z * CB4_m0[25u].y)) + CB1_m0[3u].z) : _4433.z);
            float _4453 = rsqrt(max(dot(float3(_4446, _4447, _4448), float3(_4446, _4447, _4448)), 1.1754943508222875079687365372222e-38f));
            _4459 = _4453 * _4446;
            _4460 = _4453 * _4448;
            _4461 = _4453 * _4447;
        }
        else
        {
            _4459 = asfloat(_3920 ? asuint(_693) : asuint(_561));
            _4460 = asfloat(_3920 ? asuint(_695) : asuint(_563));
            _4461 = asfloat(_3920 ? asuint(_694) : asuint(_562));
        }
        float _4481 = clamp((mad(CB4_m0[156u].w, 2.0f, dot(float3(_378, _379, _380), float3(dot(float2(_3915, _3914), float2(_4459, _4460)), _4461, dot(float2((-0.0f) - _3914, _3915), float2(_4459, _4460))))) + (-1.0f)) / max(CB4_m0[157u].x, 9.9999997473787516355514526367188e-06f), 0.0f, 1.0f);
        float _4509 = mad(_4481, CB4_m0[30u].x + ((-0.0f) - CB4_m0[31u].x), CB4_m0[31u].x);
        float _4510 = mad(_4481, CB4_m0[30u].y + ((-0.0f) - CB4_m0[31u].y), CB4_m0[31u].y);
        float _4511 = mad(_4481, CB4_m0[30u].z + ((-0.0f) - CB4_m0[31u].z), CB4_m0[31u].z);
        float _4512 = mad(_4481, CB4_m0[30u].w + ((-0.0f) - CB4_m0[31u].w), CB4_m0[31u].w);
        bool _4516 = 0.5f < CB4_m0[157u].z;
        float _4521 = asfloat(_4516 ? asuint(_2062) : 1065353216u);
        float _4523 = asfloat(_4516 ? asuint(_2061) : 1065353216u);
        float _4525 = asfloat(_4516 ? asuint(_2060) : 1065353216u);
        float _4526 = _4521 * _4509;
        float _4527 = _4523 * _4510;
        bool _4532 = CB4_m0[157u].y < 0.5f;
        _3935 = mad(mad(_4511, _4525, _4527 + _4526), _4512, _3819);
        _3937 = asfloat(0u);
        _3939 = asfloat(0u);
        _3941 = asfloat(0u);
        _3943 = asfloat(_4532 ? asuint(mad(_4512, mad(_4511, _4525, (-0.0f) - _3827), _3827)) : asuint(mad(_4512, _4525 * _4511, _3827)));
        _3945 = asfloat(_4532 ? asuint(mad(_4512, mad(_4510, _4523, (-0.0f) - _3830), _3830)) : asuint(mad(_4512, _4527, _3830)));
        _3947 = asfloat(_4532 ? asuint(mad(_4512, mad(_4509, _4521, (-0.0f) - _3832), _3832)) : asuint(mad(_4512, _4526, _3832)));
    }
    else
    {
        _3935 = _3819;
        _3937 = _3821;
        _3939 = _3823;
        _3941 = _3825;
        _3943 = _3827;
        _3945 = _3830;
        _3947 = _3832;
    }
    bool _3955 = 0.5f < float(int(asuint(CB4_m0[131u]).y));
    bool _4005 = (gl_FrontFacing ? 4294967295u : 0u) != 0u;
    float _4046 = max(CB4_m0[116u].x, 9.9999997473787516355514526367188e-05f);
    float _4047 = max(CB4_m0[116u].y, 9.9999997473787516355514526367188e-05f);
    float _4048 = _4047 * _4046;
    float _4060 = frac((CB0_m0[40u].y * CB4_m0[154u].z) / _4048);
    float4 _4072 = T7.Sample(S2, float2(mad(asfloat(_3955 ? asuint(mad(TEXCOORD_1.x, CB4_m0[56u].x, CB4_m0[56u].z)) : asuint(mad(TEXCOORD.x, CB4_m0[56u].x, CB4_m0[56u].z))), _4046, floor(_4048 * _4060) / _4046), mad(asfloat(_3955 ? asuint(mad(TEXCOORD_1.y, CB4_m0[56u].y, CB4_m0[56u].w)) : asuint(mad(TEXCOORD.y, CB4_m0[56u].y, CB4_m0[56u].w))), _4047, floor(_4047 * (((-0.0f) - _4060) + 1.0f)) / _4047)));
    float _4077 = log2(((-0.0f) - clamp(dot(float3(_4005 ? TEXCOORD_2.x : ((-0.0f) - TEXCOORD_2.x), _4005 ? TEXCOORD_2.y : ((-0.0f) - TEXCOORD_2.y), _4005 ? TEXCOORD_2.z : ((-0.0f) - TEXCOORD_2.z)), float3(_561, _562, _563)), 0.0f, 1.0f)) + 1.0f);
    float _4084 = exp2(_4077 * CB4_m0[155u].x);
    float _4090 = _4084 * CB4_m0[115u].w;
    float _4103 = mad(gl_FragCoord.x * CB0_m0[160u].z, CB4_m0[55u].x, CB4_m0[55u].z) * CB4_m0[55u].x;
    float _4104 = mad(gl_FragCoord.y * CB0_m0[160u].w, CB4_m0[55u].y, CB4_m0[55u].w) * CB4_m0[55u].y;
    float _4109 = max(CB4_m0[117u].x, 9.9999997473787516355514526367188e-05f);
    float _4110 = max(CB4_m0[117u].y, 9.9999997473787516355514526367188e-05f);
    float _4111 = _4110 * _4109;
    float _4113 = frac((CB0_m0[40u].y * CB4_m0[154u].w) / _4111);
    float _4134 = max(CB4_m0[117u].x + 1.0f, 9.9999997473787516355514526367188e-05f);
    float _4135 = max(CB4_m0[117u].y + 1.0f, 9.9999997473787516355514526367188e-05f);
    float _4136 = _4135 * _4134;
    float _4142 = frac(((CB4_m0[154u].w + 2.0f) * CB0_m0[40u].y) / _4136);
    uint4 _4162 = asuint(CB4_m0[131u]);
    uint _4163 = _4162.x;
    float _4210 = min(CB4_m0[121u].w, 65000.0f) * (dot(float4(T14.Sample(S7, float2(mad(_4103, _4134, floor(_4136 * _4142) / _4134), mad(_4104, _4135, floor(_4135 * (((-0.0f) - _4142) + 1.0f)) / _4135)))), float4(_90[(_4163 * 4u) + 0u], _90[(_4163 * 4u) + 1u], _90[(_4163 * 4u) + 2u], _90[(_4163 * 4u) + 3u])) * dot(float4(T14.Sample(S7, float2(mad(_4103, _4109, floor(_4111 * _4113) / _4109), mad(_4104, _4110, floor(_4110 * (((-0.0f) - _4113) + 1.0f)) / _4110)))), float4(_90[(_4163 * 4u) + 0u], _90[(_4163 * 4u) + 1u], _90[(_4163 * 4u) + 2u], _90[(_4163 * 4u) + 3u])));
    float _4211 = _4084 * _4210;
    float _4216 = exp2(_4077 * CB4_m0[155u].z) * CB4_m0[120u].w;
    float _4234 = mad(mad(sin(CB0_m0[40u].y * CB4_m0[155u].y), 0.5f, 0.5f), 0.4000000059604644775390625f, 0.100000001490116119384765625f);
    float _4241 = mad(_4090 * CB4_m0[115u].x, _4072.x, mad(_4211, min(CB4_m0[121u].x, 65000.0f), (_4216 * CB4_m0[120u].x) * _4234));
    float _4242 = mad(_4090 * CB4_m0[115u].y, _4072.y, mad(_4211, min(CB4_m0[121u].y, 65000.0f), (_4216 * CB4_m0[120u].y) * _4234));
    float _4243 = mad(_4090 * CB4_m0[115u].z, _4072.z, mad(_4211, min(CB4_m0[121u].z, 65000.0f), (_4216 * CB4_m0[120u].z) * _4234));
    SV_Target.x = _4241 + _3947;
    SV_Target.y = _4242 + _3945;
    SV_Target.z = _4243 + _3943;
    SV_Target_1.x = min(sqrt(max(_3941, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.y = min(sqrt(max(_3939, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.z = min(sqrt(max(_3937, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.w = ((_4243 + (_4242 + _4241)) + _3935) * 0.33329999446868896484375f;
    SV_Target_2.w = (_3829 != 0u) ? 0.3400000035762786865234375f : 0.0f;
    SV_Target_3.x = mad(_378, 0.5f, 0.5f);
    SV_Target_3.y = mad(_379, 0.5f, 0.5f);
    SV_Target_3.z = mad(_380, 0.5f, 0.5f);
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
