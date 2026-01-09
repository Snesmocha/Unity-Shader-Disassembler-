static const float _95[16] = { 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f };

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
Texture2D<float4> T16 : register(t16, space0);
Texture2D<float4> T17 : register(t17, space0);
Texture2D<float4> T18 : register(t18, space0);
SamplerState S0 : register(s0, space0);
SamplerComparisonState S1 : register(s1, space0);
SamplerState S2 : register(s2, space0);
SamplerState S3 : register(s3, space0);
SamplerState S4 : register(s4, space0);
SamplerState S5 : register(s5, space0);
SamplerState S6 : register(s6, space0);
SamplerState S7 : register(s7, space0);
SamplerState S8 : register(s8, space0);
SamplerState S9 : register(s9, space0);

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
    bool _141 = 0.5f < CB1_m0[28u].y;
    float _165 = (TEXCOORD_5.x / TEXCOORD_5.w) + ((-0.0f) - (TXCOORDD_6.x / TXCOORDD_6.w));
    float _166 = (TEXCOORD_5.y / TEXCOORD_5.w) + ((-0.0f) - (TXCOORDD_6.y / TXCOORDD_6.w));
    float _175 = (-0.0f) - _166;
    SV_Target_2.x = _141 ? mad(sqrt(abs(_165 * 0.5f)) * float(int((0u - ((0.0f < _165) ? 4294967295u : 0u)) + ((_165 < 0.0f) ? 4294967295u : 0u))), 0.5f, 0.4980392158031463623046875f) : 0.4979999959468841552734375f;
    SV_Target_2.y = _141 ? mad(sqrt(abs(_166 * (-0.5f))) * float(int((0u - ((0.0f < _175) ? 4294967295u : 0u)) + ((_175 < 0.0f) ? 4294967295u : 0u))), 0.5f, 0.4980392158031463623046875f) : 0.4979999959468841552734375f;
    uint _224 = 3u & 31u;
    uint _230 = 2u & 31u;
    uint _236 = 1u & 31u;
    uint _243 = 0u & 31u;
    SV_Target_2.z = float(spvBitfieldInsert((spvBitfieldInsert(0u, (0.0f != CB4_m0[152u].x) ? 4294967295u : 0u, _224, min((1u & 31u), (32u - _224))) + spvBitfieldInsert(0u, (CB3_m0[40u].x == 1.0f) ? 4294967295u : 0u, _230, min((1u & 31u), (32u - _230)))) + spvBitfieldInsert(0u, (0.0f != CB4_m0[151u].z) ? 4294967295u : 0u, _236, min((1u & 31u), (32u - _236))), (0.0f != CB4_m0[151u].w) ? 4294967295u : 0u, _243, min((1u & 31u), (32u - _243)))) * 0.0039215688593685626983642578125f;
    uint _264 = (((gl_FrontFacing ? 4294967295u : 0u) == 0u) ? 4294967295u : 0u) & ((0.5f < CB4_m0[147u].x) ? 4294967295u : 0u);
    bool _271 = ((((1.0f < TEXCOORD.z) ? 4294967295u : 0u) & ((0.5f < CB4_m0[147u].y) ? 4294967295u : 0u)) | _264) != 0u;
    float _280 = _271 ? TEXCOORD.z : TEXCOORD.x;
    float _281 = _271 ? TEXCOORD.w : TEXCOORD.y;
    float4 _288 = T3.SampleBias(S0, float2(_280, _281), CB0_m0[191u].x);
    float _291 = _288.x;
    float _292 = _288.y;
    float _293 = _288.z;
    bool _303 = _264 != 0u;
    float _312 = _303 ? TEXCOORD.z : TEXCOORD.x;
    float _313 = _303 ? TEXCOORD.w : TEXCOORD.y;
    float4 _318 = T4.SampleBias(S0, float2(_312, _313), CB0_m0[191u].x);
    float _336 = mad(clamp(_318.x, 0.0f, 1.0f), 2.0f, -1.0039999485015869140625f) * CB4_m0[137u].y;
    float _337 = mad(clamp(_318.y, 0.0f, 1.0f), 2.0f, -1.0039999485015869140625f) * CB4_m0[137u].y;
    float _345 = asfloat(((gl_FrontFacing ? 4294967295u : 0u) != 0u) ? 1065353216u : 3212836864u) * sqrt(((-0.0f) - min(dot(float2(_336, _337), float2(_336, _337)), 1.0f)) + 1.0f);
    float _370 = mad(_345, TEXCOORD_2.x, mad(_336, TEXCOORD_3.x, _337 * TEXCOORD_4.x));
    float _371 = mad(_345, TEXCOORD_2.y, mad(_336, TEXCOORD_3.y, _337 * TEXCOORD_4.y));
    float _372 = mad(_345, TEXCOORD_2.z, mad(_336, TEXCOORD_3.z, _337 * TEXCOORD_4.z));
    float _376 = rsqrt(dot(float3(_370, _371, _372), float3(_370, _371, _372)));
    float _377 = _376 * _370;
    float _378 = _376 * _371;
    float _379 = _376 * _372;
    float4 _384 = T6.SampleBias(S0, float2(_312, _313), CB0_m0[191u].x);
    float _389 = clamp(_384.z, 0.0f, 1.0f);
    float _390 = clamp(_384.x, 0.0f, 1.0f);
    float _391 = clamp(_384.y, 0.0f, 1.0f);
    float _395 = _391 * CB4_m0[137u].z;
    float4 _400 = T7.SampleBias(S0, float2(_312, _313), CB0_m0[191u].x);
    float _404 = clamp(_400.z, 0.0f, 1.0f);
    float _405 = clamp(_400.y, 0.0f, 1.0f);
    float _432;
    if (0.5f < CB4_m0[135u].z)
    {
        uint _418 = (0.5f < CB4_m0[144u].x) ? 4294967295u : 0u;
        _432 = asfloat((((((0.5f < CB4_m0[144u].y) ? 4294967295u : 0u) & _418) != 0u) ? asuint(max((_404 + (-0.20000000298023223876953125f)) * 1.25f, 0.0f)) : asuint(_404)) & _418);
    }
    else
    {
        _432 = _404;
    }
    bool _447 = uint(int(max(((-0.0f) - floor(_390 * 5.0f)) + 4.0f, 0.0f))) == asuint(CB4_m0[132u]).y;
    uint _448 = _447 ? 4294967295u : 0u;
    uint _449 = _448 & 1u;
    bool _454 = 0.5f < CB4_m0[136u].w;
    float4 _468 = T2.SampleBias(S0, float2(TEXCOORD.x * CB4_m0[137u].x, TEXCOORD.y * CB4_m0[137u].x), CB0_m0[191u].x);
    bool _499 = _390 < 0.20000000298023223876953125f;
    bool _501 = _390 < 0.4000000059604644775390625f;
    bool _503 = _390 < 0.60000002384185791015625f;
    bool _505 = _390 < 0.800000011920928955078125f;
    bool _538 = 0.5f < CB4_m0[161u].w;
    float4 _553 = T14.SampleBias(S0, float2(_538 ? TEXCOORD.z : TEXCOORD.x, _538 ? TEXCOORD.w : TEXCOORD.y), CB0_m0[191u].x);
    float _555 = _553.x;
    float _556 = _553.y;
    float _557 = _553.z;
    float _558 = _553.w;
    float _559 = sqrt(asfloat(_454 ? asuint(max(mad(_291, CB4_m0[57u].x, _468.x) + (-0.5f), 0.0f)) : asuint(_291 * CB4_m0[57u].x)));
    float _560 = sqrt(asfloat(_454 ? asuint(max(mad(_292, CB4_m0[57u].y, _468.y) + (-0.5f), 0.0f)) : asuint(_292 * CB4_m0[57u].y)));
    float _561 = sqrt(asfloat(_454 ? asuint(max(mad(_293, CB4_m0[57u].z, _468.z) + (-0.5f), 0.0f)) : asuint(_293 * CB4_m0[57u].z)));
    float _583 = mad(_555, ((-0.0f) - _559) + max(_559 + ((-0.0f) - CB4_m0[104u].x), 0.0f), _559);
    float _584 = mad(_555, ((-0.0f) - _560) + max(_560 + ((-0.0f) - CB4_m0[104u].y), 0.0f), _560);
    float _585 = mad(_555, ((-0.0f) - _561) + max(_561 + ((-0.0f) - CB4_m0[104u].z), 0.0f), _561);
    float _607 = mad(_556, ((-0.0f) - _583) + max(_559 + ((-0.0f) - CB4_m0[105u].x), 0.0f), _583);
    float _608 = mad(_556, ((-0.0f) - _584) + max(_560 + ((-0.0f) - CB4_m0[105u].y), 0.0f), _584);
    float _609 = mad(_556, ((-0.0f) - _585) + max(_561 + ((-0.0f) - CB4_m0[105u].z), 0.0f), _585);
    float _631 = mad(_557, ((-0.0f) - _607) + max(_559 + ((-0.0f) - CB4_m0[106u].x), 0.0f), _607);
    float _632 = mad(_557, ((-0.0f) - _608) + max(_560 + ((-0.0f) - CB4_m0[106u].y), 0.0f), _608);
    float _633 = mad(_557, ((-0.0f) - _609) + max(_561 + ((-0.0f) - CB4_m0[106u].z), 0.0f), _609);
    float _655 = mad(_558, ((-0.0f) - _631) + max(_559 + ((-0.0f) - CB4_m0[107u].x), 0.0f), _631);
    float _656 = mad(_558, ((-0.0f) - _632) + max(_560 + ((-0.0f) - CB4_m0[107u].y), 0.0f), _632);
    float _657 = mad(_558, ((-0.0f) - _633) + max(_561 + ((-0.0f) - CB4_m0[107u].z), 0.0f), _633);
    float _658 = _655 * _655;
    float _659 = _656 * _656;
    float _660 = _657 * _657;
    float _676 = ((-0.0f) - TEXCOORD_2.w) + CB0_m0[53u].x;
    float _677 = ((-0.0f) - TEXCOORD_3.w) + CB0_m0[53u].y;
    float _678 = ((-0.0f) - TEXCOORD_4.w) + CB0_m0[53u].z;
    float _679 = dot(float3(_676, _677, _678), float3(_676, _677, _678));
    float _684 = rsqrt(max(_679, 1.1754943508222875079687365372222e-38f));
    float _685 = _684 * _676;
    float _686 = _684 * _677;
    float _687 = _684 * _678;
    float _688 = sqrt(_679);
    bool _694 = int(0u) < int(asuint(CB0_m0[188u]).z);
    float _765;
    float _766;
    float _767;
    float _768;
    float _769;
    float _770;
    float _771;
    float _772;
    float _773;
    if (_694)
    {
        uint _705 = uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u)));
        uint _706 = _705 * 32u;
        uint4 _718 = uint4(T1.Load(_706).x, T1.Load(_706 + 1u).x, T1.Load(_706 + 2u).x, T1.Load(_706 + 3u).x);
        uint _729 = (_705 * 32u) + 4u;
        uint4 _741 = uint4(T1.Load(_729).x, T1.Load(_729 + 1u).x, T1.Load(_729 + 2u).x, T1.Load(_729 + 3u).x);
        _765 = asfloat(_718.x);
        _766 = asfloat(_718.y);
        _767 = asfloat(_718.z);
        _768 = asfloat(_718.w);
        _769 = asfloat(_741.x);
        _770 = asfloat(_741.y);
        _771 = asfloat(_741.z);
        _772 = asfloat(T1.Load((_705 * 32u) + 8u).x);
        _773 = asfloat(_741.w);
    }
    else
    {
        _765 = asfloat(0u);
        _766 = asfloat(0u);
        _767 = asfloat(0u);
        _768 = asfloat(0u);
        _769 = asfloat(0u);
        _770 = asfloat(0u);
        _771 = asfloat(0u);
        _772 = asfloat(0u);
        _773 = asfloat(0u);
    }
    float _777 = ((-0.0f) - TEXCOORD_2.w) + _769;
    float _778 = ((-0.0f) - TEXCOORD_3.w) + _770;
    float _779 = ((-0.0f) - TEXCOORD_4.w) + _771;
    float _783 = max(dot(float3(_777, _778, _779), float3(_777, _778, _779)), 1.1754943508222875079687365372222e-38f);
    float _784 = rsqrt(_783);
    float _785 = _784 * _777;
    float _786 = _784 * _778;
    float _787 = _784 * _779;
    float _792 = max(((-0.0f) - (_783 / (_768 * _768))) + 1.0f, 0.0f);
    float _810 = mad(_792, _765 + ((-0.0f) - CB0_m0[189u].x), CB0_m0[189u].x);
    float _811 = mad(_792, _766 + ((-0.0f) - CB0_m0[189u].y), CB0_m0[189u].y);
    float _812 = mad(_792, _767 + ((-0.0f) - CB0_m0[189u].z), CB0_m0[189u].z);
    float _814 = mad(_792, _792 + (-1.0f), 1.0f);
    float _1419;
    float _1420;
    if (0.5f < CB0_m0[22u].x)
    {
        float _862 = mad(_377, CB4_m0[135u].x, TEXCOORD_2.w) + ((-0.0f) - CB3_m0[39u].x);
        float _863 = mad(_378, CB4_m0[135u].x, TEXCOORD_3.w) + ((-0.0f) - CB3_m0[39u].y);
        float _864 = mad(_379, CB4_m0[135u].x, TEXCOORD_4.w) + ((-0.0f) - CB3_m0[39u].z);
        float _900 = mad(CB3_m0[35u].z, _864, mad(CB3_m0[33u].z, _862, _863 * CB3_m0[34u].z)) + CB3_m0[36u].z;
        float _910 = mad(mad(CB3_m0[35u].x, _864, mad(CB3_m0[33u].x, _862, _863 * CB3_m0[34u].x)) + CB3_m0[36u].x, CB3_m0[38u].x, CB3_m0[38u].z);
        float _911 = mad(mad(CB3_m0[35u].y, _864, mad(CB3_m0[33u].y, _862, _863 * CB3_m0[34u].y)) + CB3_m0[36u].y, CB3_m0[38u].y, CB3_m0[38u].w);
        float _994 = ((((((T18.SampleCmpLevelZero(S1, float2(_910 + ((-0.0f) - CB0_m0[200u].x), _911 + ((-0.0f) - CB0_m0[200u].y)), _900).xxxx.x + T18.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, -1.0f, _910), mad(CB0_m0[200u].y, 1.0f, _911)), _900).xxxx.x) + T18.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 1.0f, _910), mad(CB0_m0[200u].y, -1.0f, _911)), _900).xxxx.x) + T18.SampleCmpLevelZero(S1, float2(_910 + CB0_m0[200u].x, _911 + CB0_m0[200u].y), _900).xxxx.x) + T18.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, -1.4142129421234130859375f, _910), mad(CB0_m0[200u].y, 0.0f, _911)), _900).xxxx.x) + T18.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 1.4142129421234130859375f, _910), mad(CB0_m0[200u].y, 0.0f, _911)), _900).xxxx.x) + T18.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 0.0f, _910), mad(CB0_m0[200u].y, -1.4142129421234130859375f, _911)), _900).xxxx.x) + T18.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 0.0f, _910), mad(CB0_m0[200u].y, 1.4142129421234130859375f, _911)), _900).xxxx.x;
        float _1017 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[20u].x);
        float _1018 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[20u].y);
        float _1019 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[20u].z);
        float _1029 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[21u].x);
        float _1030 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[21u].y);
        float _1031 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[21u].z);
        float _1040 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[22u].x);
        float _1041 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[22u].y);
        float _1042 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[22u].z);
        float _1052 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[23u].x);
        float _1053 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[23u].y);
        float _1054 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[23u].z);
        bool _1074 = dot(float3(_1017, _1018, _1019), float3(_1017, _1018, _1019)) < CB2_m0[24u].x;
        bool _1075 = dot(float3(_1029, _1030, _1031), float3(_1029, _1030, _1031)) < CB2_m0[24u].y;
        bool _1076 = dot(float3(_1040, _1041, _1042), float3(_1040, _1041, _1042)) < CB2_m0[24u].z;
        float _1108 = ((-0.0f) - dot(float4(asfloat((_1074 ? 4294967295u : 0u) & 1065353216u), max(asfloat(_1074 ? 3212836864u : 2147483648u) + asfloat((_1075 ? 4294967295u : 0u) & 1065353216u), 0.0f), max(asfloat(_1075 ? 3212836864u : 2147483648u) + asfloat((_1076 ? 4294967295u : 0u) & 1065353216u), 0.0f), max(asfloat(_1076 ? 3212836864u : 2147483648u) + asfloat(((dot(float3(_1052, _1053, _1054), float3(_1052, _1053, _1054)) < CB2_m0[24u].w) ? 4294967295u : 0u) & 1065353216u), 0.0f)), float4(4.0f, 3.0f, 2.0f, 1.0f))) + 4.0f;
        uint _1110 = uint(_1108) << 2u;
        uint _1113 = _1110 + 1u;
        uint _1132 = _1110 + 2u;
        uint _1143 = _1110 + 3u;
        float _1149 = mad(CB2_m0[_1132].x, TEXCOORD_4.w, mad(CB2_m0[_1110].x, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_1113].x)) + CB2_m0[_1143].x;
        float _1150 = mad(CB2_m0[_1132].y, TEXCOORD_4.w, mad(CB2_m0[_1110].y, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_1113].y)) + CB2_m0[_1143].y;
        float _1151 = mad(CB2_m0[_1132].z, TEXCOORD_4.w, mad(CB2_m0[_1110].z, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_1113].z)) + CB2_m0[_1143].z;
        float _1165 = frac(sin(dot(float2(frac(_1149 * 1024.0f), frac(_1150 * 1024.0f)), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
        float _1166 = sin(_1165);
        float _1167 = cos(_1165);
        float _1178 = (CB2_m0[26u].x * 1.2999999523162841796875f) * _1166;
        float _1179 = (CB2_m0[26u].x * 1.2999999523162841796875f) * _1167;
        float _1180 = (CB2_m0[26u].y * 1.2999999523162841796875f) * _1166;
        float _1181 = (CB2_m0[26u].y * 1.2999999523162841796875f) * _1167;
        float _1277 = ((((T0.SampleCmpLevelZero(S1, float3(_1149 + ((_1179 * (-0.97829997539520263671875f)) + (_1178 * (-0.172399997711181640625f))), _1150 + ((_1181 * 0.172399997711181640625f) + (_1180 * (-0.97829997539520263671875f))), _1108), _1151).xxxx.x + T0.SampleCmpLevelZero(S1, float3(_1149 + ((_1179 * 0.484600007534027099609375f) + (_1178 * 0.874700009822845458984375f)), _1150 + ((_1181 * (-0.874700009822845458984375f)) + (_1180 * 0.484600007534027099609375f)), _1108), _1151).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1149 + ((_1179 * (-0.037399999797344207763671875f)) + (_1178 * (-0.96829998493194580078125f))), _1150 + ((_1181 * 0.96829998493194580078125f) + (_1180 * (-0.037399999797344207763671875f))), _1108), _1151).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1149 + ((_1179 * 0.419600009918212890625f) + (_1178 * 0.278299987316131591796875f)), _1150 + ((_1181 * (-0.278299987316131591796875f)) + (_1180 * 0.419600009918212890625f)), _1108), _1151).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1149 + ((_1179 * 0.83910000324249267578125f) + (_1178 * (-0.1507000029087066650390625f))), _1150 + ((_1181 * (-0.1507000029087066650390625f)) + (_1180 * 0.83910000324249267578125f)), _1108), _1151).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1149 + ((_1179 * 0.4792999923229217529296875f) + (_1178 * (-0.6417000293731689453125f))), _1150 + ((_1181 * (-0.6417000293731689453125f)) + (_1180 * 0.4792999923229217529296875f)), _1108), _1151).xxxx.x;
        float _1358 = (((((_1277 + T0.SampleCmpLevelZero(S1, float3(_1149 + ((_1179 * (-0.81610000133514404296875f)) + (_1178 * 0.577899992465972900390625f)), _1150 + ((_1181 * 0.577899992465972900390625f) + (_1180 * (-0.81610000133514404296875f))), _1108), _1151).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1149 + ((_1179 * (-0.4587999880313873291015625f)) + (_1178 * (-0.5408999919891357421875f))), _1150 + ((_1181 * 0.5408999919891357421875f) + (_1180 * (-0.4587999880313873291015625f))), _1108), _1151).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1149 + ((_1179 * (-0.19189999997615814208984375f)) + (_1178 * 0.704400002956390380859375f)), _1150 + ((_1181 * 0.704400002956390380859375f) + (_1180 * (-0.19189999997615814208984375f))), _1108), _1151).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1149 + ((_1179 * (-0.446399986743927001953125f)) + (_1178 * 0.105300001800060272216796875f)), _1150 + ((_1181 * 0.105300001800060272216796875f) + (_1180 * (-0.446399986743927001953125f))), _1108), _1151).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1149 + ((_1179 * 0.06610000133514404296875f) + (_1178 * (-0.20659999549388885498046875f))), _1150 + ((_1181 * (-0.20659999549388885498046875f)) + (_1180 * 0.06610000133514404296875f)), _1108), _1151).xxxx.x) * CB2_m0[25u].x;
        float _1383 = clamp(mad(_772, 2.0f, -1.0f), 0.0f, 1.0f);
        float _1387 = _1383 * CB0_m0[189u].w;
        float _1397 = (asfloat(((((0.0f >= _1151) ? 4294967295u : 0u) | ((_1151 >= 1.0f) ? 4294967295u : 0u)) != 0u) ? 1065353216u : asuint(mad(_1358, 0.090899996459484100341796875f, ((-0.0f) - CB2_m0[25u].x) + 1.0f))) * mad(CB3_m0[40u].y, ((-0.0f) - _773) + 1.0f, _773)) * asfloat((0.5f < CB3_m0[37u].x) ? asuint(min(mad(_1383, (asfloat(_499 ? asuint(CB4_m0[163u]).w : (_501 ? asuint(CB4_m0[163u]).z : (_503 ? asuint(CB4_m0[163u]).y : (_505 ? asuint(CB4_m0[163u]).x : asuint(CB4_m0[162u]).w)))) * mad(_994 + T18.SampleCmpLevelZero(S1, float2(_910, _911), _900).xxxx.x, 0.11110000312328338623046875f, -1.0f)) * CB3_m0[37u].x, 1.0f), 1.0f)) : 1065353216u);
        _1419 = mad(_1397, CB4_m0[133u].z, ((-0.0f) - CB4_m0[133u].z) + 1.0f);
        _1420 = mad(_1397, _1387 * CB4_m0[133u].z, mad((-0.0f) - _1387, CB4_m0[133u].z, 1.0f));
    }
    else
    {
        _1419 = asfloat(1065353216u);
        _1420 = asfloat(1065353216u);
    }
    float _1426 = clamp(CB3_m0[1u].w * 2.5f, 0.0f, 1.0f);
    float _1429 = mad(((-0.0f) - _1426) + 1.0f, _1420, _1426);
    bool _1433 = CB3_m0[3u].w != 0.0f;
    float _1447 = clamp(dot(float3(CB3_m0[3u].xyz), float3(TEXCOORD_2.w, TEXCOORD_3.w, TEXCOORD_4.w)) + ((-0.0f) - CB3_m0[3u].w), 0.0f, 1.0f);
    float _1498 = asfloat(_1433 ? asuint(mad(_1447, ((-0.0f) - _810) + mad(CB0_m0[15u].w, mad((-0.0f) - _810, CB0_m0[15u].x, _810 + CB0_m0[15u].x), _810 * CB0_m0[15u].x), _810)) : asuint(_810));
    float _1500 = asfloat(_1433 ? asuint(mad(_1447, ((-0.0f) - _811) + mad(CB0_m0[15u].w, mad((-0.0f) - _811, CB0_m0[15u].y, _811 + CB0_m0[15u].y), _811 * CB0_m0[15u].y), _811)) : asuint(_811));
    float _1502 = asfloat(_1433 ? asuint(mad(_1447, ((-0.0f) - _812) + mad(CB0_m0[15u].w, mad((-0.0f) - _812, CB0_m0[15u].z, _812 + CB0_m0[15u].z), _812 * CB0_m0[15u].z), _812)) : asuint(_812));
    float _1503 = max(asfloat(_499 ? asuint(CB4_m0[134u]).w : (_501 ? asuint(CB4_m0[134u]).z : (_503 ? asuint(CB4_m0[134u]).y : (_505 ? asuint(CB4_m0[134u]).x : asuint(CB4_m0[133u]).w)))), 9.9999997473787516355514526367188e-06f);
    float _1505 = 1.0f / _1503;
    float _1506 = dot(float3(_377, _378, _379), float3(_785, _786, _787));
    float _1523 = mad(mad(clamp(_318.z, 0.0f, 1.0f), 2.0f, -1.0f), 2.0f, mad(TEXCOORD_7.y, ((-0.0f) - _1506) + mad(_1506 + 1.0f, clamp(mad((-0.0f) - min(_786 * 3.0f, 1.0f), 0.5f, _378) + 1.5f, 0.0f, 1.0f), -1.0f), _1506));
    float _1536 = mad((-0.0f) - _1503, 3.0f, 2.0f);
    float _1537 = ((_1523 * 3.0f) + 3.0f) / _1536;
    float _1538 = (mad(_1523, 3.0f, (-0.0f) - (_1503 * 1.5f)) + 1.0f) / _1536;
    float _1539 = (mad(_1523, 3.0f, (-0.0f) - (_1503 * 4.5f)) + (-1.0f)) / _1536;
    float _1551 = mad(_1505, _1523 + 0.33329999446868896484375f, 0.5f);
    float _1552 = mad(_1505, _1523 + (-0.33329999446868896484375f), 0.5f);
    float _1553 = mad(_1505, _1523 + (-0.33329999446868896484375f), -0.5f);
    float _1564 = clamp(((-0.0f) - _1537) + 1.0f, 0.0f, 1.0f);
    float _1565 = clamp(min(_1537, ((-0.0f) - _1551) + 1.0f), 0.0f, 1.0f);
    float _1566 = clamp(min(((-0.0f) - _1538) + 1.0f, _1551), 0.0f, 1.0f);
    float _1570 = clamp(min(((-0.0f) - _1539) + 1.0f, _1553), 0.0f, 1.0f);
    float _1571 = clamp(_1539, 0.0f, 1.0f);
    float _1577 = mad(CB3_m0[40u].y, ((-0.0f) - _1429) + _1419, _1429);
    float _1584 = clamp(min(mad(_1577, -2.0f, 2.0f), mad(_1577, 2.0f, 0.0f)), 0.0f, 1.0f);
    float _1585 = clamp(mad(_1577, 2.0f, -1.0f), 0.0f, 1.0f);
    float _1586 = clamp(mad(_1577, -2.0f, 1.0f), 0.0f, 1.0f);
    float _1658;
    float _1660;
    float _1662;
    if (0.5f < CB3_m0[40u].y)
    {
        float _1625;
        if (_694)
        {
            _1625 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _1625 = asfloat(0u);
        }
        float _1629 = _1625 * CB0_m0[189u].w;
        float _1630 = _1629 * _1584;
        float _1636 = (mad((-0.0f) - _1584, _1629, _1584) + mad((-0.0f) - _1586, _1629, _1586)) + _1585;
        float _1977;
        if (_694)
        {
            _1977 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 7u).x);
        }
        else
        {
            _1977 = asfloat(0u);
        }
        _1658 = _1977 * _1630;
        _1660 = _1977 * _1636;
        _1662 = mad(_1586, _1629, mad((-0.0f) - _1636, _1977, _1636) + mad((-0.0f) - _1630, _1977, _1630));
    }
    else
    {
        float _1637;
        if (_694)
        {
            _1637 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _1637 = asfloat(0u);
        }
        _1658 = _1637 * _1584;
        _1660 = _1585;
        _1662 = _1637 * _1586;
    }
    float _1670 = mad(_1662, ((-0.0f) - _1566) + (((-0.0f) - _1565) + (((-0.0f) - _1564) + 1.0f)), _1566);
    float _1671 = _1660 + _1658;
    float _1672 = _1671 * clamp(min(_1538, ((-0.0f) - _1552) + 1.0f), 0.0f, 1.0f);
    float _1675 = mad(_1571 + _1570, _1658, _1671 * clamp(min(_1552, ((-0.0f) - _1553) + 1.0f), 0.0f, 1.0f));
    float _1676 = _1570 * _1660;
    float _1679 = _1564 * TEXCOORD_7.x;
    float _1684 = mad((-0.0f) - _1564, TEXCOORD_7.x, _1564) + _1565;
    uint4 _1688 = asuint(CB4_m0[60u]);
    uint4 _1695 = asuint(CB4_m0[59u]);
    uint4 _1705 = asuint(CB4_m0[61u]);
    uint4 _1715 = asuint(CB4_m0[62u]);
    uint4 _1725 = asuint(CB4_m0[63u]);
    uint4 _1738 = asuint(CB4_m0[65u]);
    uint4 _1745 = asuint(CB4_m0[64u]);
    uint4 _1755 = asuint(CB4_m0[66u]);
    uint4 _1765 = asuint(CB4_m0[67u]);
    uint4 _1775 = asuint(CB4_m0[68u]);
    uint4 _1788 = asuint(CB0_m0[10u]);
    uint4 _1794 = asuint(CB0_m0[3u]);
    uint4 _1807 = asuint(CB0_m0[11u]);
    uint4 _1813 = asuint(CB0_m0[4u]);
    uint4 _1826 = asuint(CB0_m0[12u]);
    uint4 _1833 = asuint(CB0_m0[5u]);
    uint4 _1846 = asuint(CB0_m0[9u]);
    uint4 _1853 = asuint(CB0_m0[6u]);
    uint4 _1866 = asuint(CB0_m0[13u]);
    uint4 _1872 = asuint(CB0_m0[7u]);
    uint4 _1885 = asuint(CB0_m0[14u]);
    uint4 _1891 = asuint(CB0_m0[8u]);
    float _1903 = min(_688 * 0.4372499883174896240234375f, 1.0f);
    float _1919 = mad(CB4_m0[133u].y, mad(_1903, CB3_m0[1u].w, (-0.0f) - _1903) + 1.0f, 0.0f);
    float _1920 = mad(CB4_m0[133u].y, mad((-0.0f) - _1903, CB3_m0[1u].w, _1903) + (-1.0f), 1.0f);
    float _1921 = asfloat(_499 ? _1725.x : (_501 ? _1715.x : (_503 ? _1705.x : (_505 ? _1688.x : _1695.x)))) + 6.103515625e-05f;
    float _1923 = asfloat(_499 ? _1725.y : (_501 ? _1715.y : (_503 ? _1705.y : (_505 ? _1688.y : _1695.y)))) + 6.103515625e-05f;
    float _1924 = asfloat(_499 ? _1725.z : (_501 ? _1715.z : (_503 ? _1705.z : (_505 ? _1688.z : _1695.z)))) + 6.103515625e-05f;
    float _1927 = (_1924 + (_1923 + _1921)) * 0.3333300054073333740234375f;
    float _1938 = mad(clamp(_1921 / _1927, 0.0f, 1.0f), _1919, _1920 * _1921);
    float _1939 = mad(clamp(_1923 / _1927, 0.0f, 1.0f), _1919, _1920 * _1923);
    float _1940 = mad(clamp(_1924 / _1927, 0.0f, 1.0f), _1919, _1920 * _1924);
    float _1941 = asfloat(_499 ? _1775.x : (_501 ? _1765.x : (_503 ? _1755.x : (_505 ? _1738.x : _1745.x)))) + 6.103515625e-05f;
    float _1942 = asfloat(_499 ? _1775.y : (_501 ? _1765.y : (_503 ? _1755.y : (_505 ? _1738.y : _1745.y)))) + 6.103515625e-05f;
    float _1943 = asfloat(_499 ? _1775.z : (_501 ? _1765.z : (_503 ? _1755.z : (_505 ? _1738.z : _1745.z)))) + 6.103515625e-05f;
    float _1946 = (_1943 + (_1942 + _1941)) * 0.3333300054073333740234375f;
    float _1956 = mad(clamp(_1941 / _1946, 0.0f, 1.0f), _1919, _1920 * _1941);
    float _1957 = mad(clamp(_1942 / _1946, 0.0f, 1.0f), _1919, _1920 * _1942);
    float _1958 = mad(clamp(_1943 / _1946, 0.0f, 1.0f), _1919, _1920 * _1943);
    float _2000;
    if (_694)
    {
        _2000 = asfloat(T1.Load((uint(max(int(uint(min(int(asuint(CB0_m0[188u]).z + 4294967295u), int(uint(int(CB3_m0[2u].z)))))), int(0u))) * 32u) + 8u).x);
    }
    else
    {
        _2000 = asfloat(0u);
    }
    float _2003 = mad(_2000, ((-0.0f) - _814) + 1.0f, _814);
    float _2004 = _2003 * _1498;
    float _2005 = _2003 * _1500;
    float _2006 = _2003 * _1502;
    float _2007 = min(1.0f / max(_1502 + 1.1754943508222875079687365372222e-38f, max(_1500 + 1.1754943508222875079687365372222e-38f, _1498 + 1.1754943508222875079687365372222e-38f)), 1.0f);
    float _2035 = mad(_2004, mad(_1571, _1660, mad(asfloat(_447 ? _1866.x : _1872.x), _1675, _1676 * asfloat(_447 ? _1846.x : _1853.x))), (_2007 * _2004) * mad(asfloat(_447 ? _1788.x : _1794.x) * _1938, _1672, mad(asfloat(_447 ? _1807.x : _1813.x) * _1938, _1670, mad(asfloat(_447 ? _1885.x : _1891.x) * _1956, _1679, _1684 * (asfloat(_447 ? _1826.x : _1833.x) * _1956)))));
    float _2036 = mad(_2005, mad(_1571, _1660, mad(asfloat(_447 ? _1866.y : _1872.y), _1675, _1676 * asfloat(_447 ? _1846.y : _1853.y))), (_2007 * _2005) * mad(asfloat(_447 ? _1788.y : _1794.y) * _1939, _1672, mad(asfloat(_447 ? _1807.y : _1813.y) * _1939, _1670, mad(asfloat(_447 ? _1885.y : _1891.y) * _1957, _1679, _1684 * (asfloat(_447 ? _1826.y : _1833.y) * _1957)))));
    float _2037 = mad(_2006, mad(_1571, _1660, mad(asfloat(_447 ? _1866.z : _1872.z), _1675, _1676 * asfloat(_447 ? _1846.z : _1853.z))), (_2007 * _2006) * mad(asfloat(_447 ? _1788.z : _1794.z) * _1940, _1672, mad(asfloat(_447 ? _1807.z : _1813.z) * _1940, _1670, mad(asfloat(_447 ? _1885.z : _1891.z) * _1958, _1679, _1684 * (asfloat(_447 ? _1826.z : _1833.z) * _1958)))));
    bool _2040 = 0.5f < TEXCOORD_7.z;
    float _2157;
    float _2158;
    float _2159;
    if (_448 == 0u)
    {
        float _2051 = dot(float3(_658, _659, _660), float3(0.2899999916553497314453125f, 0.60000002384185791015625f, 0.10999999940395355224609375f));
        bool _2058 = TEXCOORD_7.z < 0.5f;
        float _2059 = mad(_2051, 0.2874999940395355224609375f, 1.4375f);
        float _2062 = mad(_2051, 0.4000000059604644775390625f, 1.0f);
        float _2063 = dot(float3(_785, _786, _787), float3(_2040 ? _377 : TEXCOORD_2.x, _2040 ? _378 : TEXCOORD_2.y, _2040 ? _379 : TEXCOORD_2.z));
        float _2070 = clamp(mad((-0.0f) - (((-0.0f) - _1506) + _2063), 3.0f, 1.0f), 0.0f, 1.0f);
        float _2076 = clamp(_1506, 0.0f, 1.0f);
        float _2080 = clamp(_2063, 0.0f, 1.0f);
        float _2082 = max(_658, max(_660, _659));
        bool _2083 = 1.0f < _2082;
        float _2101 = mad(mad(mad(mad(_1506, 0.5f, 0.5f), min(sqrt(_2070) * (_2070 + _2070), 1.0f), (-0.0f) - _2076), 0.5f, _2076), ((-0.0f) - _2059) + 1.0f, _2059);
        float _2108 = exp2(_2101 * log2(asfloat(_2083 ? asuint(_658 / _2082) : asuint(_658))));
        float _2109 = exp2(_2101 * log2(asfloat(_2083 ? asuint(_659 / _2082) : asuint(_659))));
        float _2110 = exp2(_2101 * log2(asfloat(_2083 ? asuint(_660 / _2082) : asuint(_660))));
        float _2117 = mad(mad((-0.0f) - _655, _655, _2108), 0.5f, _658);
        float _2118 = mad(mad((-0.0f) - _656, _656, _2109), 0.5f, _659);
        float _2119 = mad(mad((-0.0f) - _657, _657, _2110), 0.5f, _660);
        float _2130 = mad((-0.0f) - _2051, 0.0500000007450580596923828125f, 1.0499999523162841796875f);
        _2157 = asfloat(_2058 ? asuint(mad(_2080, ((-0.0f) - _2117) + _2108, _2117)) : asuint(_2130 * exp2(log2(_658) * _2062)));
        _2158 = asfloat(_2058 ? asuint(mad(_2080, ((-0.0f) - _2118) + _2109, _2118)) : asuint(_2130 * exp2(log2(_659) * _2062)));
        _2159 = asfloat(_2058 ? asuint(mad(_2080, ((-0.0f) - _2119) + _2110, _2119)) : asuint(_2130 * exp2(log2(_660) * _2062)));
    }
    else
    {
        _2157 = _658;
        _2158 = _659;
        _2159 = _660;
    }
    float _2161 = mad((-0.0f) - _395, 0.959999978542327880859375f, 0.959999978542327880859375f);
    float _2163 = _2161 * _2157;
    float _2164 = _2161 * _2158;
    float _2165 = _2161 * _2159;
    float _2170 = mad(_395, _2157 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _2172 = mad(_395, _2158 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _2173 = mad(_395, _2159 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _2178 = mad((-0.0f) - _405, CB4_m0[137u].w, 1.0f);
    float _2179 = _2178 * _2178;
    float _2200 = dot(float3((_2035 + CB0_m0[2u].x) + TEXCOORD_8.x, (_2036 + CB0_m0[2u].y) + TEXCOORD_8.y, (_2037 + CB0_m0[2u].z) + TEXCOORD_8.z), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2214 = ((-0.0f) - CB0_m0[19u].x) + CB0_m0[19u].y;
    float _2215 = 1.0f / _2214;
    float _2238 = asfloat((_2200 < CB0_m0[19u].x) ? asuint(_2200) : asuint(mad((-0.0f) - _2214, 1.0f / mad(_2200, _2215, mad((-0.0f) - CB0_m0[19u].x, _2215, 1.0f)), CB0_m0[19u].y))) / (_2200 + 9.9999997473787516355514526367188e-05f);
    float _2239 = _2035 * _2238;
    float _2240 = _2036 * _2238;
    float _2241 = _2037 * _2238;
    uint4 _2245 = asuint(CB4_m0[75u]);
    uint4 _2252 = asuint(CB4_m0[74u]);
    uint4 _2262 = asuint(CB4_m0[76u]);
    uint4 _2272 = asuint(CB4_m0[77u]);
    uint4 _2282 = asuint(CB4_m0[78u]);
    float _2318 = asfloat(_499 ? asuint(CB4_m0[142u]).y : (_501 ? asuint(CB4_m0[142u]).x : (_503 ? asuint(CB4_m0[141u]).w : (_505 ? asuint(CB4_m0[141u]).z : asuint(CB4_m0[141u]).y))));
    float _2370;
    if (0.5f < _2318)
    {
        float _2321 = clamp(mad(_1523, 1.5f, -0.5f), 0.0f, 1.0f);
        float _2348 = mad(_777, _784, _685);
        float _2349 = mad(_778, _784, _686);
        float _2350 = mad(_779, _784, _687);
        float _2354 = rsqrt(dot(float3(_2348, _2349, _2350), float3(_2348, _2349, _2350)));
        _2370 = clamp((((-0.0f) - mad((-0.0f) - (_2321 * _2321), clamp(dot(float3(_377, _378, _379), float3(_2354 * _2348, _2354 * _2349, _2354 * _2350)), 0.0f, 1.0f), 1.0f)) + _389) / max(asfloat(_499 ? asuint(CB4_m0[143u]).z : (_501 ? asuint(CB4_m0[143u]).y : (_503 ? asuint(CB4_m0[143u]).x : (_505 ? asuint(CB4_m0[142u]).w : asuint(CB4_m0[142u]).z)))), 9.9999997473787516355514526367188e-06f), 0.0f, 1.0f);
    }
    else
    {
        _2370 = _389;
    }
    float _2374 = _2370 * CB4_m0[143u].w;
    float _2382 = mad(_777, _784, _685);
    float _2383 = mad(_778, _784, _686);
    float _2384 = mad(_779, _784, _687);
    float _2388 = rsqrt(dot(float3(_2382, _2383, _2384), float3(_2382, _2383, _2384)));
    float _2389 = _2388 * _2382;
    float _2390 = _2388 * _2383;
    float _2391 = _2388 * _2384;
    float _2417 = asfloat(_499 ? asuint(CB4_m0[141u]).x : (_501 ? asuint(CB4_m0[140u]).w : (_503 ? asuint(CB4_m0[140u]).z : (_505 ? asuint(CB4_m0[140u]).y : asuint(CB4_m0[140u]).x))));
    float _2422 = clamp(mad(_1506 * _2417, 0.75f, 0.25f), 0.0f, 1.0f);
    float _2428 = clamp(mad(_2417 * dot(float3(_377, _378, _379), float3(_2389, _2390, _2391)), 0.75f, 0.25f), 0.0f, 1.0f);
    float _2434 = clamp(mad(_2417 * dot(float3(_785, _786, _787), float3(_2389, _2390, _2391)), 0.75f, 0.25f), 0.0f, 1.0f);
    float _2436 = mad(_2428 * _2428, mad(_2179, _2179, -1.0f), 1.000010013580322265625f);
    float _2440 = max(_2434 * _2434, 0.100000001490116119384765625f);
    float _2510 = (((_2422 * clamp(mad((-0.0f) - _405, CB4_m0[137u].w, (_2179 * _2179) / (mad(_2179, 4.0f, 2.0f) * (_2440 * (_2436 * _2436)))), 0.0f, 1.0f)) / max(_2179, 9.9999997473787516355514526367188e-06f)) * (asfloat(_499 ? asuint(CB4_m0[139u]).w : (_501 ? asuint(CB4_m0[139u]).z : (_503 ? asuint(CB4_m0[139u]).y : (_505 ? asuint(CB4_m0[139u]).x : asuint(CB4_m0[138u]).w)))) * asfloat(_499 ? asuint(CB4_m0[166u]).w : (_501 ? asuint(CB4_m0[166u]).z : (_503 ? asuint(CB4_m0[166u]).y : (_505 ? asuint(CB4_m0[166u]).x : asuint(CB4_m0[165u]).w)))))) * 10.0f;
    float _2523 = asfloat((_2318 < 0.5f) ? asuint(clamp(_2510, 0.0f, 1.0f) * 100.0f) : asuint((_2422 * min(0.16666333377361297607421875f / _2440, 1.0f)) * 100.0f));
    float _2524 = (_2170 * (asfloat(_499 ? _2282.x : (_501 ? _2272.x : (_503 ? _2262.x : (_505 ? _2245.x : _2252.x)))) * _2374)) * _2523;
    float _2525 = (_2172 * (asfloat(_499 ? _2282.y : (_501 ? _2272.y : (_503 ? _2262.y : (_505 ? _2245.y : _2252.y)))) * _2374)) * _2523;
    float _2526 = (_2173 * (asfloat(_499 ? _2282.z : (_501 ? _2272.z : (_503 ? _2262.z : (_505 ? _2245.z : _2252.z)))) * _2374)) * _2523;
    uint _2543 = (CB4_m0[144u].x >= 0.5f) ? 4294967295u : 0u;
    uint4 _2547 = asuint(CB4_m0[80u]);
    uint4 _2554 = asuint(CB4_m0[79u]);
    uint4 _2564 = asuint(CB4_m0[81u]);
    uint4 _2574 = asuint(CB4_m0[82u]);
    uint4 _2584 = asuint(CB4_m0[83u]);
    float _2604 = asfloat(_2543 & asuint(_2157 * (_432 * asfloat(_499 ? _2584.x : (_501 ? _2574.x : (_503 ? _2564.x : (_505 ? _2547.x : _2554.x)))))));
    float _2606 = asfloat(_2543 & asuint(_2158 * (_432 * asfloat(_499 ? _2584.y : (_501 ? _2574.y : (_503 ? _2564.y : (_505 ? _2547.y : _2554.y)))))));
    float _2608 = asfloat(_2543 & asuint(_2159 * (_432 * asfloat(_499 ? _2584.z : (_501 ? _2574.z : (_503 ? _2564.z : (_505 ? _2547.z : _2554.z)))))));
    float _2610 = _2608 + (_2606 + _2604);
    float _2617 = _2238 * TEXCOORD_8.x;
    float _2618 = _2238 * TEXCOORD_8.y;
    float _2619 = _2238 * TEXCOORD_8.z;
    float _2675;
    float _2676;
    float _2677;
    float _2678;
    float _2679;
    float _2680;
    if (_694)
    {
        uint _2633 = uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u)));
        uint _2635 = (_2633 * 32u) + 24u;
        uint3 _2645 = uint3(T1.Load(_2635).x, T1.Load(_2635 + 1u).x, T1.Load(_2635 + 2u).x);
        uint _2653 = (_2633 * 32u) + 28u;
        uint3 _2662 = uint3(T1.Load(_2653).x, T1.Load(_2653 + 1u).x, T1.Load(_2653 + 2u).x);
        _2675 = asfloat(_2645.x);
        _2676 = asfloat(_2645.y);
        _2677 = asfloat(_2645.z);
        _2678 = asfloat(_2662.x);
        _2679 = asfloat(_2662.y);
        _2680 = asfloat(_2662.z);
    }
    else
    {
        _2675 = asfloat(0u);
        _2676 = asfloat(0u);
        _2677 = asfloat(0u);
        _2678 = asfloat(0u);
        _2679 = asfloat(0u);
        _2680 = asfloat(0u);
    }
    bool _2684 = 0.5f < CB0_m0[23u].y;
    bool _2685 = _449 != 0u;
    float _2781;
    float _2783;
    float _2785;
    if (0.5f >= CB0_m0[188u].w)
    {
        float _2720 = clamp(mad((-0.0f) - dot(float3(_685, _686, _687), float3(_785, _786, _787)), 0.5f, 0.5f), 0.0f, 1.0f);
        float _2722 = mad(_378, 0.5f, 0.5f);
        float _2731 = clamp((asfloat((_449 != 0u) ? asuint(_2722) : asuint(_2722 * _2722)) + (-0.20000000298023223876953125f)) * 1.25f, 0.0f, 1.0f);
        float _2734 = (_2731 * _2731) * mad(_2731, -2.0f, 3.0f);
        float _2735 = _2734 * _2734;
        bool _2738 = _449 != 0u;
        float _2801;
        if (_694)
        {
            _2801 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _2801 = asfloat(0u);
        }
        float _2830 = min(_688 * 0.083333335816860198974609375f, 1.0f);
        float _2838 = ((-0.0f) - dot(float3(_685, _686, _687), float3(_377, _378, _379))) + 1.0f;
        float _2847 = clamp((((-0.0f) - mad(_2830, -0.300000011920928955078125f, 0.5f)) + _2838) * 3.3333332538604736328125f, 0.0f, 1.0f);
        float _2848 = clamp((((-0.0f) - mad(_2830, -0.300000011920928955078125f, 0.60000002384185791015625f)) + _2838) * 5.000000476837158203125f, 0.0f, 1.0f);
        float _2879 = CB0_m0[189u].x * CB0_m0[189u].x;
        float _2880 = CB0_m0[189u].y * CB0_m0[189u].y;
        float _2881 = CB0_m0[189u].z * CB0_m0[189u].z;
        float _2882 = _2879 * _2879;
        float _2883 = _2880 * _2880;
        float _2884 = _2881 * _2881;
        float _2885 = _2882 * _2882;
        float _2886 = _2883 * _2883;
        float _2887 = _2884 * _2884;
        float _2894 = (1.0f / (dot(float3(_2885, _2886, _2887), 0.699999988079071044921875f.xxx) + 9.9999997473787516355514526367188e-06f)) * dot(float3(CB0_m0[189u].xyz), 0.3300000131130218505859375f.xxx);
        bool _2914 = max(CB0_m0[189u].z, CB0_m0[189u].y) < CB0_m0[189u].x;
        float _2930 = asfloat(_2914 ? asuint(mad(_1419, mad(_2894, _2885, (-0.0f) - _2239), _2239)) : asuint(CB0_m0[189u].x * 0.60000002384185791015625f));
        float _2932 = asfloat(_2914 ? asuint(mad(_1419, mad(_2894, _2886, (-0.0f) - _2240), _2240)) : asuint(CB0_m0[189u].y * 0.60000002384185791015625f));
        float _2934 = asfloat(_2914 ? asuint(mad(_1419, mad(_2894, _2887, (-0.0f) - _2241), _2241)) : asuint(CB0_m0[189u].z * 0.60000002384185791015625f));
        float _2939 = exp2(log2(_2720 * _2720) * 20.0f);
        float _2963 = mad(_2159, _2161, _2164 + _2163) * 0.3300000131130218505859375f;
        float _2980 = exp2(log2(clamp(_2163, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _2981 = exp2(log2(clamp(_2164, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _2982 = exp2(log2(clamp(_2165, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _2987 = rsqrt(max(dot(float3(_2980, _2981, _2982), float3(_2980, _2981, _2982)), 6.103515625e-05f));
        float _2988 = _2980 * _2987;
        float _2989 = _2981 * _2987;
        float _2990 = _2982 * _2987;
        float _2995 = CB0_m0[198u].w * 48.0f;
        float _2997 = mad((_2963 * _2963) * CB0_m0[199u].w, -0.199999988079071044921875f, 1.0f) * 0.100000001490116119384765625f;
        float _3001 = (-0.0f) - _2997;
        float _3011 = asfloat((_449 != 0u) ? asuint((_2847 * _2847) * mad(_2847, -2.0f, 3.0f)) : asuint((_2848 * _2848) * mad(_2848, -2.0f, 3.0f))) * (mad(CB0_m0[199u].y, mad(clamp((-0.0f) - _686, 0.0f, 1.0f), asfloat((0.0f != TEXCOORD_7.z) ? 1083179008u : asuint(mad(_391, CB4_m0[137u].z, 2.5f))), -0.5f), 1.0f) * (clamp(mad(_2801, 0.39999997615814208984375f, _1419) + 0.60000002384185791015625f, 0.0f, 1.0f) * (mad(_1429 * mad(_1506, 0.5f, 0.5f), 1.39999997615814208984375f, 0.100000001490116119384765625f) * (mad(CB0_m0[199u].x, mad(_2734, mad(_2734 * (_2735 * _2735), asfloat(_2738 ? 3212836864u : 3204448256u) + asfloat(_2738 ? 1050253722u : 1065353216u), asfloat(_2738 ? 1065353216u : 1056964608u)), -0.100000001490116119384765625f), 0.100000001490116119384765625f) * mad(_2720, 0.800000011920928955078125f, 0.20000000298023223876953125f)))));
        uint4 _3021 = asuint(CB4_m0[87u]);
        uint4 _3028 = asuint(CB4_m0[86u]);
        uint4 _3038 = asuint(CB4_m0[88u]);
        uint4 _3048 = asuint(CB4_m0[89u]);
        uint4 _3058 = asuint(CB4_m0[90u]);
        float _3070 = ((mad(_395, mad(_3001, _2990, _2173), _2990 * _2997) * _2995) * (mad(CB0_m0[199u].z, mad((-0.0f) - _2037, _2238, mad(_2939, mad(_2037, _2238, (-0.0f) - _2934), _2934)), _2241) * _3011)) * asfloat(_499 ? _3058.z : (_501 ? _3048.z : (_503 ? _3038.z : (_505 ? _3021.z : _3028.z))));
        float _3073 = mad(clamp(mad(_688, 0.20000000298023223876953125f, -1.0f), 0.0f, 1.0f), -0.699999988079071044921875f, 1.0f);
        float _3075 = _3073 * (((mad(_395, mad(_3001, _2988, _2170), _2988 * _2997) * _2995) * (mad(CB0_m0[199u].z, mad((-0.0f) - _2035, _2238, mad(_2939, mad(_2035, _2238, (-0.0f) - _2930), _2930)), _2239) * _3011)) * asfloat(_499 ? _3058.x : (_501 ? _3048.x : (_503 ? _3038.x : (_505 ? _3021.x : _3028.x)))));
        float _3076 = _3073 * (((mad(_395, mad(_3001, _2989, _2172), _2989 * _2997) * _2995) * (mad(CB0_m0[199u].z, mad((-0.0f) - _2036, _2238, mad(_2939, mad(_2036, _2238, (-0.0f) - _2932), _2932)), _2240) * _3011)) * asfloat(_499 ? _3058.y : (_501 ? _3048.y : (_503 ? _3038.y : (_505 ? _3021.y : _3028.y)))));
        float _3079 = mad(_3070, _3073, _3076 + _3075);
        float _3081 = mad(_3079 * _3079, 0.0500000007450580596923828125f, 1.0f);
        float _3086 = asfloat(_2040 ? 1056964608u : 1065353216u);
        float _3087 = _3086 * (_3081 * _3075);
        float _3088 = _3086 * (_3081 * _3076);
        float _3089 = _3086 * (_3081 * (_3073 * _3070));
        bool _3093 = 0.5f < CB3_m0[1u].w;
        _2781 = asfloat(_3093 ? asuint(min(_3089, 0.699999988079071044921875f)) : asuint(_3089)) * CB0_m0[198u].z;
        _2783 = asfloat(_3093 ? asuint(min(_3088, 0.699999988079071044921875f)) : asuint(_3088)) * CB0_m0[198u].y;
        _2785 = asfloat(_3093 ? asuint(min(_3087, 0.699999988079071044921875f)) : asuint(_3087)) * CB0_m0[198u].x;
    }
    else
    {
        _2781 = asfloat(0u);
        _2783 = asfloat(0u);
        _2785 = asfloat(0u);
    }
    float _2793 = _2604 + (max(mad(_2524, _2239, -1.0f), 0.0f) + mad(asfloat(_2684 ? 1028443341u : (_2685 ? asuint(_2675) : asuint(_2678))), _2157 * _2238, mad(_2617, _2163, mad(_2163, _2239, _2239 * _2524))));
    float _2794 = _2606 + (max(mad(_2525, _2240, -1.0f), 0.0f) + mad(asfloat(_2684 ? 1028443341u : (_2685 ? asuint(_2676) : asuint(_2679))), _2158 * _2238, mad(_2618, _2164, mad(_2164, _2240, _2240 * _2525))));
    float _2795 = _2608 + (max(mad(_2526, _2241, -1.0f), 0.0f) + mad(asfloat(_2684 ? 1028443341u : (_2685 ? asuint(_2677) : asuint(_2680))), _2159 * _2238, mad(_2619, _2165, mad(_2165, _2241, _2241 * _2526))));
    float _3366;
    float _3367;
    float _3368;
    float _3369;
    float _3370;
    if (CB4_m0[150u].x >= 0.5f)
    {
        bool _3117 = 0.5f < CB4_m0[150u].y;
        float _3126 = _3117 ? TEXCOORD_1.x : TEXCOORD.x;
        float _3127 = _3117 ? TEXCOORD_1.y : TEXCOORD.y;
        bool _3133 = 0.5f < CB4_m0[148u].z;
        bool _3134 = 0.5f < CB4_m0[148u].y;
        bool _3140 = CB4_m0[150u].y < 0.5f;
        bool _3143 = CB4_m0[150u].z < 0.5f;
        bool _3164 = 0.800000011920928955078125f < CB4_m0[147u].w;
        float4 _3217 = T10.SampleBias(S5, float2(mad(CB4_m0[108u].x, CB0_m0[40u].y, mad(_3126, CB4_m0[49u].x, CB4_m0[49u].z)), mad(CB4_m0[108u].y, CB0_m0[40u].y, mad(_3127, CB4_m0[49u].y, CB4_m0[49u].w))), CB0_m0[191u].x);
        float _3219 = _3217.x;
        float _3220 = _3217.y;
        float _3221 = _3217.z;
        float4 _3226 = T11.SampleBias(S6, float2(mad(CB4_m0[108u].z, CB0_m0[40u].y, mad(asfloat(_3164 ? asuint(_280) : (_3133 ? asuint(_3126) : asuint(_3140 ? TEXCOORD_1.x : TEXCOORD.x))), CB4_m0[50u].x, CB4_m0[50u].z)), mad(CB4_m0[108u].w, CB0_m0[40u].y, mad(asfloat(_3164 ? asuint(_281) : (_3133 ? asuint(_3127) : asuint(_3140 ? TEXCOORD_1.y : TEXCOORD.y))), CB4_m0[50u].y, CB4_m0[50u].w))), CB0_m0[191u].x);
        uint _3235 = (CB4_m0[150u].w < 0.5f) ? asuint(_3226.x) : ((CB4_m0[150u].w < 1.5f) ? asuint(_3226.y) : asuint(_3226.z));
        float _3236 = asfloat(_3235);
        uint _3237 = asuint(_3219);
        float _3242 = asfloat(_3143 ? _3237 : asuint(_3219));
        float _3244 = asfloat(_3143 ? _3237 : asuint(_3220));
        float _3246 = asfloat(_3143 ? _3237 : asuint(_3221));
        uint _3292 = _3134 ? asuint(_3236 * mad(_3242, CB4_m0[34u].x + ((-0.0f) - CB4_m0[95u].x), CB4_m0[95u].x)) : asuint((_3236 * _3242) * CB4_m0[34u].x);
        uint _3294 = _3134 ? asuint(_3236 * mad(_3244, CB4_m0[34u].y + ((-0.0f) - CB4_m0[95u].y), CB4_m0[95u].y)) : asuint((_3236 * _3244) * CB4_m0[34u].y);
        uint _3296 = _3134 ? asuint(_3236 * mad(_3246, CB4_m0[34u].z + ((-0.0f) - CB4_m0[95u].z), CB4_m0[95u].z)) : asuint((_3236 * _3246) * CB4_m0[34u].z);
        bool _3301 = 0.5f < CB4_m0[151u].x;
        float _3309 = asfloat(_3301 ? asuint(_2157 * asfloat(_3292)) : _3292);
        float _3311 = asfloat(_3301 ? asuint(_2158 * asfloat(_3294)) : _3294);
        float _3313 = asfloat(_3301 ? asuint(_2159 * asfloat(_3296)) : _3296);
        bool _3317 = CB4_m0[147u].z < 0.5f;
        uint _3328 = _3143 ? asuint(_3219) : asuint(_3221 + (_3220 + _3219));
        float _3334 = min(asfloat((1.5f < CB4_m0[147u].z) ? asuint(_3236 + asfloat(_3328)) : _3328), 1.0f);
        float _3335 = _3236 * _3334;
        _3366 = asfloat(_3317 ? asuint(_2793 + _3309) : asuint(_2793 * mad(_3335, _3309 + (-1.0f), 1.0f)));
        _3367 = asfloat(_3317 ? asuint(_2794 + _3311) : asuint(_2794 * mad(_3335, _3311 + (-1.0f), 1.0f)));
        _3368 = asfloat(_3317 ? asuint(_2795 + _3313) : asuint(_2795 * mad(_3335, _3313 + (-1.0f), 1.0f)));
        _3369 = asfloat(_3317 ? asuint((_3313 + (_3311 + _3309)) + _2610) : asuint(mad(_3236, _3334, _2610)));
        _3370 = asfloat(_3317 ? _3235 : asuint(_3335));
    }
    else
    {
        _3366 = _2793;
        _3367 = _2794;
        _3368 = _2795;
        _3369 = _2610;
        _3370 = asfloat(0u);
    }
    float _3619;
    float _3620;
    float _3621;
    float _3622;
    float _3623;
    if (float(int(asuint(CB4_m0[132u]).w)) >= 0.5f)
    {
        bool _3382 = 0.5f < CB4_m0[127u].x;
        bool _3383 = 0.5f < CB4_m0[127u].z;
        bool _3401 = 0.5f < CB4_m0[128u].x;
        bool _3402 = 0.800000011920928955078125f < CB4_m0[128u].z;
        bool _3403 = 0.5f < CB4_m0[128u].y;
        float4 _3467 = T12.SampleBias(S0, float2(mad(CB4_m0[40u].x, CB0_m0[40u].y, mad(_3382 ? TEXCOORD_1.x : TEXCOORD.x, CB4_m0[51u].x, CB4_m0[51u].z)), mad(CB4_m0[40u].y, CB0_m0[40u].y, mad(_3382 ? TEXCOORD_1.y : TEXCOORD.y, CB4_m0[51u].y, CB4_m0[51u].w))), CB0_m0[191u].x);
        float _3469 = _3467.x;
        float _3470 = _3467.y;
        float _3471 = _3467.z;
        float4 _3476 = T13.SampleBias(S0, float2(mad(CB4_m0[40u].z, CB0_m0[40u].y, mad(asfloat(_3402 ? asuint(_280) : asuint(_3401 ? TEXCOORD_1.x : TEXCOORD.x)), CB4_m0[52u].x, CB4_m0[52u].z)), mad(CB4_m0[40u].w, CB0_m0[40u].y, mad(asfloat(_3402 ? asuint(_281) : asuint(_3401 ? TEXCOORD_1.y : TEXCOORD.y)), CB4_m0[52u].y, CB4_m0[52u].w))), CB0_m0[191u].x);
        bool _3487 = CB4_m0[127u].y < 0.5f;
        uint _3492 = (CB4_m0[127u].w < 0.5f) ? asuint(_3476.x) : ((CB4_m0[127u].w < 1.5f) ? asuint(_3476.y) : asuint(_3476.z));
        float _3493 = asfloat(_3492);
        uint _3494 = asuint(_3469);
        float _3499 = asfloat(_3487 ? _3494 : asuint(_3469));
        float _3501 = asfloat(_3487 ? _3494 : asuint(_3470));
        float _3503 = asfloat(_3487 ? _3494 : asuint(_3471));
        uint _3550 = _3403 ? asuint(_3493 * mad(_3499, CB4_m0[110u].x + ((-0.0f) - CB4_m0[111u].x), CB4_m0[111u].x)) : asuint((_3499 * _3493) * CB4_m0[110u].x);
        uint _3552 = _3403 ? asuint(_3493 * mad(_3501, CB4_m0[110u].y + ((-0.0f) - CB4_m0[111u].y), CB4_m0[111u].y)) : asuint((_3501 * _3493) * CB4_m0[110u].y);
        uint _3554 = _3403 ? asuint(_3493 * mad(_3503, CB4_m0[110u].z + ((-0.0f) - CB4_m0[111u].z), CB4_m0[111u].z)) : asuint((_3503 * _3493) * CB4_m0[110u].z);
        float _3563 = asfloat(_3383 ? asuint(_2157 * asfloat(_3550)) : _3550);
        float _3565 = asfloat(_3383 ? asuint(_2158 * asfloat(_3552)) : _3552);
        float _3567 = asfloat(_3383 ? asuint(_2159 * asfloat(_3554)) : _3554);
        bool _3571 = CB4_m0[128u].w < 0.5f;
        uint _3582 = _3487 ? asuint(_3469) : asuint(_3471 + (_3470 + _3469));
        float _3588 = min(asfloat((1.5f < CB4_m0[128u].w) ? asuint(asfloat(_3582) + _3493) : _3582), 1.0f);
        float _3589 = _3588 * _3493;
        _3619 = asfloat(_3571 ? asuint(_3563 + _3366) : asuint(mad(_3589, _3563 + (-1.0f), 1.0f) * _3366));
        _3620 = asfloat(_3571 ? asuint(_3565 + _3367) : asuint(mad(_3589, _3565 + (-1.0f), 1.0f) * _3367));
        _3621 = asfloat(_3571 ? asuint(_3567 + _3368) : asuint(mad(_3589, _3567 + (-1.0f), 1.0f) * _3368));
        _3622 = asfloat(_3571 ? asuint((_3567 + (_3565 + _3563)) + _3369) : asuint(mad(_3493, _3588, _3369)));
        _3623 = asfloat(_3571 ? _3492 : asuint(_3589));
    }
    else
    {
        _3619 = _3366;
        _3620 = _3367;
        _3621 = _3368;
        _3622 = _3369;
        _3623 = _3370;
    }
    float _3631 = CB4_m0[29u].w * CB4_m0[155u].w;
    float _3643 = mad(_3631, ((-0.0f) - _3619) + CB4_m0[29u].x, _3619);
    float _3644 = mad(_3631, ((-0.0f) - _3620) + CB4_m0[29u].y, _3620);
    float _3645 = mad(_3631, ((-0.0f) - _3621) + CB4_m0[29u].z, _3621);
    float _3653 = mad((-0.0f) - CB4_m0[29u].w, CB4_m0[155u].w, 1.0f);
    float _3654 = _3653 * (_2785 * mad(_2617, 2.0f, 1.0f));
    float _3655 = _3653 * (_2783 * mad(_2618, 2.0f, 1.0f));
    float _3656 = _3653 * (_2781 * mad(_2619, 2.0f, 1.0f));
    float _3860;
    float _3862;
    float _3864;
    float _3866;
    if (0.5f < CB4_m0[152u].y)
    {
        bool _3665 = CB4_m0[153u].x < 0.5f;
        float _3740 = mad(gl_FragCoord.x, CB0_m0[160u].z, -0.5f);
        float _3741 = mad(gl_FragCoord.y, CB0_m0[160u].w, -0.5f);
        float _3769 = ((-0.0f) - (mad(CB0_m0[118u].z, TEXCOORD_4.w, mad(CB0_m0[116u].z, TEXCOORD_2.w, TEXCOORD_3.w * CB0_m0[117u].z)) + CB0_m0[119u].z)) / CB0_m0[93u].y;
        float _3780 = asfloat((0.5f < CB4_m0[152u].z) ? asuint(mad(CB0_m0[85u].w, mad((-0.0f) - _3769, 0.5f, 1.0f), _3769 * 0.5f)) : 1065353216u);
        float4 _3813 = T15.Sample(S7, float2((mad(_3780 * mad(CB4_m0[125u].z, mad(CB0_m0[118u].x, _379, mad(CB0_m0[116u].x, _377, _378 * CB0_m0[117u].x)), (CB0_m0[160u].w * CB0_m0[160u].x) * (_3740 + _3740)), CB4_m0[47u].x, CB4_m0[47u].z) + 0.5f) + mad(CB4_m0[124u].x, CB0_m0[40u].y, CB4_m0[124u].z), (mad(_3780 * mad(CB4_m0[125u].z, mad(CB0_m0[118u].y, _379, mad(CB0_m0[116u].y, _377, _378 * CB0_m0[117u].y)), _3741 + _3741), CB4_m0[47u].y, CB4_m0[47u].w) + 0.5f) + mad(CB4_m0[124u].y, CB0_m0[40u].y, CB4_m0[124u].w)));
        float _3829 = _3813.w * CB4_m0[109u].w;
        float _3858 = asfloat((0.5f < CB4_m0[153u].z) ? asuint(mad(mad(sin((CB0_m0[40u].y / max(CB4_m0[168u].x, 0.00999999977648258209228515625f)) * 6.283185482025146484375f), 0.5f, 0.5f), ((-0.0f) - CB4_m0[125u].x) + CB4_m0[125u].y, CB4_m0[125u].x)) : 1065353216u);
        float _3859 = _3858 * _3829;
        float _3991;
        float _3992;
        float _3993;
        if (0.5f < CB4_m0[152u].w)
        {
            float _3874 = mad((-0.0f) - _3829, _3858, 1.0f);
            _3991 = _2793 * mad(_3813.x * CB4_m0[109u].x, _3859, _3874);
            _3992 = _2794 * mad(_3813.y * CB4_m0[109u].y, _3859, _3874);
            _3993 = _2795 * mad(_3813.z * CB4_m0[109u].z, _3859, _3874);
        }
        else
        {
            _3991 = mad(_3859, mad(CB4_m0[109u].x, _3813.x, (-0.0f) - _2793), _2793);
            _3992 = mad(_3859, mad(CB4_m0[109u].y, _3813.y, (-0.0f) - _2794), _2794);
            _3993 = mad(_3859, mad(CB4_m0[109u].z, _3813.z, (-0.0f) - _2795), _2795);
        }
        float _4019 = asfloat((0.5f < CB4_m0[153u].y) ? asuint(((-0.0f) - _3623) + 1.0f) : 1065353216u) * T16.Sample(S8, float2(mad(CB0_m0[40u].y, CB4_m0[149u].z, mad(_3665 ? TEXCOORD.x : TEXCOORD_1.x, CB4_m0[48u].x, CB4_m0[48u].z)), mad(CB0_m0[40u].y, CB4_m0[149u].w, mad(_3665 ? TEXCOORD.y : TEXCOORD_1.y, CB4_m0[48u].y, CB4_m0[48u].w)))).x;
        _3860 = mad(_3993 + (_3992 + _3991), _4019, _3622);
        _3862 = mad(_4019, ((-0.0f) - _3645) + _3993, _3645);
        _3864 = mad(_4019, ((-0.0f) - _3644) + _3992, _3644);
        _3866 = mad(_4019, ((-0.0f) - _3643) + _3991, _3643);
    }
    else
    {
        _3860 = _3622;
        _3862 = _3645;
        _3864 = _3644;
        _3866 = _3643;
    }
    float _3971;
    uint _3973;
    float _3974;
    float _3976;
    float _3978;
    float _3980;
    float _3982;
    float _3984;
    if (0.5f < CB4_m0[158u].z)
    {
        bool _3912 = 0.5f < CB4_m0[159u].x;
        float4 _3961 = T17.Sample(S9, float2(mad(CB0_m0[40u].y, CB4_m0[103u].x, asfloat(_3912 ? asuint(mad(TEXCOORD_1.x, CB4_m0[55u].x, CB4_m0[55u].z)) : asuint(mad(TEXCOORD.x, CB4_m0[55u].x, CB4_m0[55u].z)))), mad(CB0_m0[40u].y, CB4_m0[103u].y, asfloat(_3912 ? asuint(mad(TEXCOORD_1.y, CB4_m0[55u].y, CB4_m0[55u].w)) : asuint(mad(TEXCOORD.y, CB4_m0[55u].y, CB4_m0[55u].w))))));
        float _3963 = _3961.x;
        float _3964 = _3961.y;
        float _3965 = _3961.z;
        float _3975;
        float _3977;
        float _3979;
        if (0.5f < CB4_m0[158u].w)
        {
            _3975 = mad(CB4_m0[33u].z * CB4_m0[33u].w, _3965, _3656);
            _3977 = mad(CB4_m0[33u].y * CB4_m0[33u].w, _3964, _3655);
            _3979 = mad(CB4_m0[33u].x * CB4_m0[33u].w, _3963, _3654);
        }
        else
        {
            float _4045 = _3961.w * CB4_m0[33u].w;
            _3975 = mad(_4045, mad(CB4_m0[33u].z, _3965, (-0.0f) - _3656), _3656);
            _3977 = mad(_4045, mad(CB4_m0[33u].y, _3964, (-0.0f) - _3655), _3655);
            _3979 = mad(_4045, mad(CB4_m0[33u].x, _3963, (-0.0f) - _3654), _3654);
        }
        uint4 _4596 = asuint(CB4_m0[131u]);
        float _4600 = float(int(_4596.x));
        float _4607 = exp2(log2(max(((-0.0f) - abs(dot(float3(TEXCOORD_2.x, TEXCOORD_2.y, TEXCOORD_2.z), float3(_685, _686, _687)))) + 1.0f, 0.0f)) * CB4_m0[155u].z) * float(int(_4596.y));
        float _4614 = exp2(max(CB4_m0[130u].x, 0.00999999977648258209228515625f) * log2(_4607));
        float _4620 = min(CB4_m0[121u].x, 65504.0f);
        float _4622 = min(CB4_m0[121u].y, 65504.0f);
        float _4623 = min(CB4_m0[121u].z, 65504.0f);
        float _4635 = mad(_4614, ((-0.0f) - _4620) + CB4_m0[120u].x, _4620);
        float _4636 = mad(_4614, ((-0.0f) - _4622) + CB4_m0[120u].y, _4622);
        float _4637 = mad(_4614, ((-0.0f) - _4623) + CB4_m0[120u].z, _4623);
        float _4648 = _4607 * asfloat(((_4607 >= CB4_m0[130u].y) ? 4294967295u : 0u) & 1065353216u);
        bool _4652 = _4600 < 0.5f;
        bool _4653 = _4600 < 1.5f;
        _3971 = mad(_3975 + (_3977 + _3979), ((-0.0f) - CB4_m0[156u].x) + 1.0f, _3860);
        _3973 = 0u;
        _3974 = _3975;
        _3976 = _3977;
        _3978 = _3979;
        _3980 = asfloat(_4652 ? asuint(mad(_4648, _3965 * _4637, _3862)) : (_4653 ? asuint(mad(_4648, mad(_4637, _3965, (-0.0f) - _3862), _3862)) : asuint(_3862 * mad(_4648, mad(_4637, _3965, -1.0f), 1.0f))));
        _3982 = asfloat(_4652 ? asuint(mad(_4648, _3964 * _4636, _3864)) : (_4653 ? asuint(mad(_4648, mad(_4636, _3964, (-0.0f) - _3864), _3864)) : asuint(_3864 * mad(_4648, mad(_4636, _3964, -1.0f), 1.0f))));
        _3984 = asfloat(_4652 ? asuint(mad(_4648, _3963 * _4635, _3866)) : (_4653 ? asuint(mad(_4648, mad(_4635, _3963, (-0.0f) - _3866), _3866)) : asuint(_3866 * mad(_4648, mad(_4635, _3963, -1.0f), 1.0f))));
    }
    else
    {
        _3971 = _3860;
        _3973 = _449;
        _3974 = _3656;
        _3976 = _3655;
        _3978 = _3654;
        _3980 = _3862;
        _3982 = _3864;
        _3984 = _3866;
    }
    float _4086;
    float _4088;
    float _4090;
    float _4092;
    float _4094;
    float _4096;
    float _4098;
    if (0.5f < CB4_m0[156u].x)
    {
        float _4063 = CB4_m0[156u].z * 0.01745329238474369049072265625f;
        float _4065 = sin(_4063);
        float _4066 = cos(_4063);
        bool _4071 = CB4_m0[156u].y < 0.5f;
        float _4764;
        float _4765;
        float _4766;
        if (1.5f < CB4_m0[156u].y)
        {
            bool _4691 = CB4_m0[157u].w < 0.5f;
            uint4 _4738 = asuint(CB4_m0[25u]);
            float _4751 = ((-0.0f) - TEXCOORD_2.w) + asfloat(_4691 ? asuint(mad(CB1_m0[2u].x, CB4_m0[25u].z, mad(CB1_m0[0u].x, CB4_m0[25u].x, CB1_m0[1u].x * CB4_m0[25u].y)) + CB1_m0[3u].x) : _4738.x);
            float _4752 = ((-0.0f) - TEXCOORD_3.w) + asfloat(_4691 ? asuint(mad(CB1_m0[2u].y, CB4_m0[25u].z, mad(CB1_m0[0u].y, CB4_m0[25u].x, CB1_m0[1u].y * CB4_m0[25u].y)) + CB1_m0[3u].y) : _4738.y);
            float _4753 = ((-0.0f) - TEXCOORD_4.w) + asfloat(_4691 ? asuint(mad(CB1_m0[2u].z, CB4_m0[25u].z, mad(CB1_m0[0u].z, CB4_m0[25u].x, CB1_m0[1u].z * CB4_m0[25u].y)) + CB1_m0[3u].z) : _4738.z);
            float _4758 = rsqrt(max(dot(float3(_4751, _4752, _4753), float3(_4751, _4752, _4753)), 1.1754943508222875079687365372222e-38f));
            _4764 = _4758 * _4751;
            _4765 = _4758 * _4753;
            _4766 = _4758 * _4752;
        }
        else
        {
            _4764 = asfloat(_4071 ? asuint(_785) : asuint(_685));
            _4765 = asfloat(_4071 ? asuint(_787) : asuint(_687));
            _4766 = asfloat(_4071 ? asuint(_786) : asuint(_686));
        }
        float _4786 = clamp((mad(CB4_m0[156u].w, 2.0f, dot(float3(_377, _378, _379), float3(dot(float2(_4066, _4065), float2(_4764, _4765)), _4766, dot(float2((-0.0f) - _4065, _4066), float2(_4764, _4765))))) + (-1.0f)) / max(CB4_m0[157u].x, 9.9999997473787516355514526367188e-06f), 0.0f, 1.0f);
        float _4814 = mad(_4786, CB4_m0[30u].x + ((-0.0f) - CB4_m0[31u].x), CB4_m0[31u].x);
        float _4815 = mad(_4786, CB4_m0[30u].y + ((-0.0f) - CB4_m0[31u].y), CB4_m0[31u].y);
        float _4816 = mad(_4786, CB4_m0[30u].z + ((-0.0f) - CB4_m0[31u].z), CB4_m0[31u].z);
        float _4817 = mad(_4786, CB4_m0[30u].w + ((-0.0f) - CB4_m0[31u].w), CB4_m0[31u].w);
        bool _4821 = 0.5f < CB4_m0[157u].z;
        float _4826 = asfloat(_4821 ? asuint(_2157) : 1065353216u);
        float _4828 = asfloat(_4821 ? asuint(_2158) : 1065353216u);
        float _4830 = asfloat(_4821 ? asuint(_2159) : 1065353216u);
        float _4831 = _4814 * _4826;
        float _4832 = _4815 * _4828;
        bool _4837 = CB4_m0[157u].y < 0.5f;
        _4086 = mad(mad(_4816, _4830, _4832 + _4831), _4817, _3971);
        _4088 = asfloat(0u);
        _4090 = asfloat(0u);
        _4092 = asfloat(0u);
        _4094 = asfloat(_4837 ? asuint(mad(_4817, mad(_4816, _4830, (-0.0f) - _3980), _3980)) : asuint(mad(_4817, _4816 * _4830, _3980)));
        _4096 = asfloat(_4837 ? asuint(mad(_4817, mad(_4815, _4828, (-0.0f) - _3982), _3982)) : asuint(mad(_4817, _4832, _3982)));
        _4098 = asfloat(_4837 ? asuint(mad(_4817, mad(_4814, _4826, (-0.0f) - _3984), _3984)) : asuint(mad(_4817, _4831, _3984)));
    }
    else
    {
        _4086 = _3971;
        _4088 = _3974;
        _4090 = _3976;
        _4092 = _3978;
        _4094 = _3980;
        _4096 = _3982;
        _4098 = _3984;
    }
    bool _4106 = 0.5f < float(int(asuint(CB4_m0[131u]).y));
    bool _4149 = 0.5f < CB4_m0[130u].x;
    bool _4150 = 0.5f < CB4_m0[130u].y;
    float _4221 = asfloat(_4150 ? asuint(mad(TEXCOORD_1.y, CB4_m0[102u].y, CB4_m0[102u].w)) : asuint(mad(TEXCOORD.y, CB4_m0[102u].y, CB4_m0[102u].w)));
    float _4223 = asfloat(_4150 ? asuint(mad(TEXCOORD_1.x, CB4_m0[102u].x, CB4_m0[102u].z)) : asuint(mad(TEXCOORD.x, CB4_m0[102u].x, CB4_m0[102u].z)));
    bool _4229 = 0.5f < float(int(asuint(CB4_m0[130u]).z));
    bool _4268 = (gl_FrontFacing ? 4294967295u : 0u) != 0u;
    bool _4275 = (gl_FrontFacing ? 4294967295u : 0u) != 0u;
    float4 _4313 = T9.Sample(S4, float2(asfloat(_4229 ? asuint(mad(TEXCOORD_1.x, CB4_m0[41u].x, CB4_m0[41u].z)) : asuint(mad(TEXCOORD.x, CB4_m0[41u].x, CB4_m0[41u].z))), asfloat(_4229 ? asuint(mad(TEXCOORD_1.y, CB4_m0[41u].y, CB4_m0[41u].w)) : asuint(mad(TEXCOORD.y, CB4_m0[41u].y, CB4_m0[41u].w)))));
    float _4315 = _4313.x;
    float _4316 = _4313.y;
    float _4317 = mad(_4268 ? _377 : ((-0.0f) - _377), 0.5f, 0.75f);
    float _4318 = mad(_4268 ? _378 : ((-0.0f) - _378), 0.5f, 0.75f);
    float4 _4355 = T8.Sample(S3, float2(frac(mad(CB4_m0[154u].z, _4315, mad(_685, 0.25f, _4317)) + mad(CB0_m0[40u].y, CB4_m0[116u].x, asfloat(_4106 ? asuint(mad(TEXCOORD_1.x, CB4_m0[56u].x, CB4_m0[56u].z)) : asuint(mad(TEXCOORD.x, CB4_m0[56u].x, CB4_m0[56u].z))))), frac(mad(CB4_m0[154u].z, _4316, mad(_686 + _687, 0.25f, _4318)) + mad(CB0_m0[40u].y, CB4_m0[116u].y, asfloat(_4106 ? asuint(mad(TEXCOORD_1.y, CB4_m0[56u].y, CB4_m0[56u].w)) : asuint(mad(TEXCOORD.y, CB4_m0[56u].y, CB4_m0[56u].w)))))));
    float _4377 = exp2(log2(((-0.0f) - clamp(dot(float3(_4275 ? TEXCOORD_2.x : ((-0.0f) - TEXCOORD_2.x), _4275 ? TEXCOORD_2.y : ((-0.0f) - TEXCOORD_2.y), _4275 ? TEXCOORD_2.z : ((-0.0f) - TEXCOORD_2.z)), float3(_685, _686, _687)), 0.0f, 1.0f)) + 1.0f) * CB4_m0[155u].x);
    float _4382 = _4377 * CB4_m0[120u].w;
    float _4411 = CB0_m0[40u].y * CB4_m0[155u].z;
    float _4412 = sin(_4411);
    float _4413 = cos(_4411);
    uint4 _4428 = asuint(CB4_m0[130u]);
    uint _4429 = _4428.w;
    float _4479 = (dot(float4(T5.Sample(S2, float2(mad(_4223, _4413, (-0.0f) - (_4221 * _4412)), mad(_4221, _4413, _4223 * _4412)))), float4(_95[(_4429 * 4u) + 0u], _95[(_4429 * 4u) + 1u], _95[(_4429 * 4u) + 2u], _95[(_4429 * 4u) + 3u])) * dot(float4(T5.Sample(S2, float2(frac(mad(CB0_m0[40u].y, CB4_m0[118u].x, _4223)), frac(mad(CB0_m0[40u].y, CB4_m0[118u].y, _4221))))), float4(_95[(_4429 * 4u) + 0u], _95[(_4429 * 4u) + 1u], _95[(_4429 * 4u) + 2u], _95[(_4429 * 4u) + 3u]))) * ((((-0.0f) - _4377) + 1.0f) * min(CB4_m0[121u].w, 65000.0f));
    float _4480 = mad(_4479, min(CB4_m0[121u].x, 65000.0f), mad(CB4_m0[115u].x * CB4_m0[115u].w, _4355.x, _4382 * CB4_m0[120u].x));
    float _4481 = mad(_4479, min(CB4_m0[121u].y, 65000.0f), mad(CB4_m0[115u].y * CB4_m0[115u].w, _4355.y, _4382 * CB4_m0[120u].y));
    float _4482 = mad(_4479, min(CB4_m0[121u].z, 65000.0f), mad(CB4_m0[115u].z * CB4_m0[115u].w, _4355.z, _4382 * CB4_m0[120u].z));
    float4 _4497 = T17.Sample(S9, float2(frac((_4317 + _4315) + mad(CB0_m0[40u].y, CB4_m0[117u].x, frac(mad(CB0_m0[40u].y, CB4_m0[117u].x, asfloat(_4149 ? asuint(mad(TEXCOORD_1.x, CB4_m0[55u].x, CB4_m0[55u].z)) : asuint(mad(TEXCOORD.x, CB4_m0[55u].x, CB4_m0[55u].z))))))), frac((_4318 + _4316) + mad(CB0_m0[40u].y, CB4_m0[117u].y, frac(mad(CB0_m0[40u].y, CB4_m0[117u].y, asfloat(_4149 ? asuint(mad(TEXCOORD_1.y, CB4_m0[55u].y, CB4_m0[55u].w)) : asuint(mad(TEXCOORD.y, CB4_m0[55u].y, CB4_m0[55u].w)))))))));
    uint4 _4505 = asuint(CB4_m0[131u]);
    uint _4506 = _4505.x;
    float _4538 = clamp(mad(dot(float4(_4497), float4(_95[(_4506 * 4u) + 0u], _95[(_4506 * 4u) + 1u], _95[(_4506 * 4u) + 2u], _95[(_4506 * 4u) + 3u])) + 0.89999997615814208984375f, 0.4000000059604644775390625f, (-0.0f) - CB4_m0[155u].y) * (1.0f / CB4_m0[154u].w), 0.0f, 1.0f);
    float _4542 = min((_4538 * _4538) * mad(_4538, -2.0f, 3.0f), 1.0f);
    SV_Target.x = mad(_4542, ((-0.0f) - _4098) + _4480, _4098);
    SV_Target.y = mad(_4542, ((-0.0f) - _4096) + _4481, _4096);
    SV_Target.z = mad(_4542, ((-0.0f) - _4094) + _4482, _4094);
    SV_Target_1.x = min(sqrt(max(_4092, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.y = min(sqrt(max(_4090, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.z = min(sqrt(max(_4088, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.w = mad(_4482 + (_4481 + _4480), _4542, _4086) * 0.33329999446868896484375f;
    SV_Target_2.w = (_3973 != 0u) ? 0.3400000035762786865234375f : 0.0f;
    SV_Target_3.x = mad(_377, 0.5f, 0.5f);
    SV_Target_3.y = mad(_378, 0.5f, 0.5f);
    SV_Target_3.z = mad(_379, 0.5f, 0.5f);
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
