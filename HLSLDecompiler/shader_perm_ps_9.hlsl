static const float _92[16] = { 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f };

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
Texture2DArray<float4> T8 : register(t8, space0);
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

void discard_cond(bool _4526)
{
    if (_4526)
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
    bool _135 = 0.5f < CB1_m0[28u].y;
    float _159 = (TEXCOORD_5.x / TEXCOORD_5.w) + ((-0.0f) - (TXCOORDD_6.x / TXCOORDD_6.w));
    float _160 = (TEXCOORD_5.y / TEXCOORD_5.w) + ((-0.0f) - (TXCOORDD_6.y / TXCOORDD_6.w));
    float _169 = (-0.0f) - _160;
    SV_Target_2.x = _135 ? mad(sqrt(abs(_159 * 0.5f)) * float(int((0u - ((0.0f < _159) ? 4294967295u : 0u)) + ((_159 < 0.0f) ? 4294967295u : 0u))), 0.5f, 0.4980392158031463623046875f) : 0.4979999959468841552734375f;
    SV_Target_2.y = _135 ? mad(sqrt(abs(_160 * (-0.5f))) * float(int((0u - ((0.0f < _169) ? 4294967295u : 0u)) + ((_169 < 0.0f) ? 4294967295u : 0u))), 0.5f, 0.4980392158031463623046875f) : 0.4979999959468841552734375f;
    float _230 = mad((-0.0f) - gl_FragCoord.x, CB0_m0[160u].z, CB4_m0[126u].x) * asfloat(1065353216u);
    float _231 = mad((-0.0f) - gl_FragCoord.y, CB0_m0[160u].w, CB4_m0[126u].y) * (CB0_m0[83u].y / CB0_m0[83u].x);
    float _257 = mad(CB0_m0[118u].z, TEXCOORD_4.w, mad(CB0_m0[116u].z, TEXCOORD_2.w, TEXCOORD_3.w * CB0_m0[117u].z)) + CB0_m0[119u].z;
    uint _329 = 2u & 31u;
    uint _336 = 3u & 31u;
    uint _342 = 1u & 31u;
    uint _348 = 0u & 31u;
    SV_Target_2.z = float(spvBitfieldInsert((spvBitfieldInsert(0u, (0.0f != CB4_m0[152u].x) ? 4294967295u : 0u, _336, min((1u & 31u), (32u - _336))) + spvBitfieldInsert(0u, (CB3_m0[40u].x == 1.0f) ? 4294967295u : 0u, _329, min((1u & 31u), (32u - _329)))) + spvBitfieldInsert(0u, (0.0f != CB4_m0[151u].z) ? 4294967295u : 0u, _342, min((1u & 31u), (32u - _342))), (0.0f != CB4_m0[151u].w) ? 4294967295u : 0u, _348, min((1u & 31u), (32u - _348)))) * 0.0039215688593685626983642578125f;
    uint _369 = ((0.5f < CB4_m0[147u].x) ? 4294967295u : 0u) & (((gl_FrontFacing ? 4294967295u : 0u) == 0u) ? 4294967295u : 0u);
    bool _376 = ((((0.5f < CB4_m0[147u].y) ? 4294967295u : 0u) & ((1.0f < TEXCOORD.z) ? 4294967295u : 0u)) | _369) != 0u;
    float4 _393 = T3.SampleBias(S0, float2(_376 ? TEXCOORD.z : TEXCOORD.x, _376 ? TEXCOORD.w : TEXCOORD.y), CB0_m0[191u].x);
    float _395 = _393.x;
    float _396 = _393.y;
    float _397 = _393.z;
    bool _407 = _369 != 0u;
    float _416 = _407 ? TEXCOORD.z : TEXCOORD.x;
    float _417 = _407 ? TEXCOORD.w : TEXCOORD.y;
    float4 _422 = T4.SampleBias(S0, float2(_416, _417), CB0_m0[191u].x);
    float _440 = mad(clamp(_422.x, 0.0f, 1.0f), 2.0f, -1.0039999485015869140625f) * CB4_m0[137u].y;
    float _441 = mad(clamp(_422.y, 0.0f, 1.0f), 2.0f, -1.0039999485015869140625f) * CB4_m0[137u].y;
    float _449 = asfloat(((gl_FrontFacing ? 4294967295u : 0u) != 0u) ? 1065353216u : 3212836864u) * sqrt(((-0.0f) - min(dot(float2(_440, _441), float2(_440, _441)), 1.0f)) + 1.0f);
    float _474 = mad(_449, TEXCOORD_2.x, mad(_440, TEXCOORD_3.x, _441 * TEXCOORD_4.x));
    float _475 = mad(_449, TEXCOORD_2.y, mad(_440, TEXCOORD_3.y, _441 * TEXCOORD_4.y));
    float _476 = mad(_449, TEXCOORD_2.z, mad(_440, TEXCOORD_3.z, _441 * TEXCOORD_4.z));
    float _480 = rsqrt(dot(float3(_474, _475, _476), float3(_474, _475, _476)));
    float _481 = _480 * _474;
    float _482 = _480 * _475;
    float _483 = _480 * _476;
    float4 _488 = T6.SampleBias(S0, float2(_416, _417), CB0_m0[191u].x);
    float _493 = clamp(_488.z, 0.0f, 1.0f);
    float _494 = clamp(_488.x, 0.0f, 1.0f);
    float _495 = clamp(_488.y, 0.0f, 1.0f);
    float _499 = _495 * CB4_m0[137u].z;
    float4 _504 = T7.SampleBias(S0, float2(_416, _417), CB0_m0[191u].x);
    float _510 = clamp(_504.y, 0.0f, 1.0f);
    float _511 = clamp(_504.z, 0.0f, 1.0f);
    uint _519 = (0.5f < CB4_m0[144u].x) ? 4294967295u : 0u;
    uint _521 = ((0.5f < CB4_m0[144u].y) ? 4294967295u : 0u) & _519;
    float _532 = asfloat(_519 & ((_521 != 0u) ? asuint(max((_511 + (-0.20000000298023223876953125f)) * 1.25f, 0.0f)) : asuint(_511)));
    uint _540 = uint(int(max(((-0.0f) - floor(_494 * 5.0f)) + 4.0f, 0.0f)));
    bool _545 = _540 == asuint(CB4_m0[132u]).y;
    uint _546 = _545 ? 4294967295u : 0u;
    uint _547 = _546 & 1u;
    bool _551 = 0.5f < CB4_m0[136u].w;
    float4 _565 = T2.SampleBias(S0, float2(TEXCOORD.x * CB4_m0[137u].x, TEXCOORD.y * CB4_m0[137u].x), CB0_m0[191u].x);
    float _591 = asfloat(_551 ? asuint(max(mad(_395, CB4_m0[57u].x, _565.x) + (-0.5f), 0.0f)) : asuint(_395 * CB4_m0[57u].x));
    float _593 = asfloat(_551 ? asuint(max(mad(_396, CB4_m0[57u].y, _565.y) + (-0.5f), 0.0f)) : asuint(_396 * CB4_m0[57u].y));
    float _595 = asfloat(_551 ? asuint(max(mad(_397, CB4_m0[57u].z, _565.z) + (-0.5f), 0.0f)) : asuint(_397 * CB4_m0[57u].z));
    bool _596 = _494 < 0.20000000298023223876953125f;
    bool _598 = _494 < 0.4000000059604644775390625f;
    bool _600 = _494 < 0.60000002384185791015625f;
    bool _602 = _494 < 0.800000011920928955078125f;
    float _645 = ((-0.0f) - TEXCOORD_2.w) + CB0_m0[53u].x;
    float _646 = ((-0.0f) - TEXCOORD_3.w) + CB0_m0[53u].y;
    float _647 = ((-0.0f) - TEXCOORD_4.w) + CB0_m0[53u].z;
    float _648 = dot(float3(_645, _646, _647), float3(_645, _646, _647));
    float _652 = rsqrt(max(_648, 1.1754943508222875079687365372222e-38f));
    float _653 = _652 * _645;
    float _654 = _652 * _646;
    float _655 = _652 * _647;
    float _656 = sqrt(_648);
    bool _662 = int(0u) < int(asuint(CB0_m0[188u]).z);
    float _733;
    float _734;
    float _735;
    float _736;
    float _737;
    float _738;
    float _739;
    float _740;
    float _741;
    if (_662)
    {
        uint _673 = uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u)));
        uint _674 = _673 * 32u;
        uint4 _686 = uint4(T1.Load(_674).x, T1.Load(_674 + 1u).x, T1.Load(_674 + 2u).x, T1.Load(_674 + 3u).x);
        uint _697 = (_673 * 32u) + 4u;
        uint4 _709 = uint4(T1.Load(_697).x, T1.Load(_697 + 1u).x, T1.Load(_697 + 2u).x, T1.Load(_697 + 3u).x);
        _733 = asfloat(_686.x);
        _734 = asfloat(_686.y);
        _735 = asfloat(_686.z);
        _736 = asfloat(_686.w);
        _737 = asfloat(_709.x);
        _738 = asfloat(_709.y);
        _739 = asfloat(_709.z);
        _740 = asfloat(T1.Load((_673 * 32u) + 8u).x);
        _741 = asfloat(_709.w);
    }
    else
    {
        _733 = asfloat(0u);
        _734 = asfloat(0u);
        _735 = asfloat(0u);
        _736 = asfloat(0u);
        _737 = asfloat(0u);
        _738 = asfloat(0u);
        _739 = asfloat(0u);
        _740 = asfloat(0u);
        _741 = asfloat(0u);
    }
    float _745 = ((-0.0f) - TEXCOORD_2.w) + _737;
    float _746 = ((-0.0f) - TEXCOORD_3.w) + _738;
    float _747 = ((-0.0f) - TEXCOORD_4.w) + _739;
    float _751 = max(dot(float3(_745, _746, _747), float3(_745, _746, _747)), 1.1754943508222875079687365372222e-38f);
    float _752 = rsqrt(_751);
    float _753 = _752 * _745;
    float _754 = _752 * _746;
    float _755 = _752 * _747;
    float _760 = max(((-0.0f) - (_751 / (_736 * _736))) + 1.0f, 0.0f);
    float _778 = mad(_760, _733 + ((-0.0f) - CB0_m0[189u].x), CB0_m0[189u].x);
    float _779 = mad(_760, _734 + ((-0.0f) - CB0_m0[189u].y), CB0_m0[189u].y);
    float _780 = mad(_760, _735 + ((-0.0f) - CB0_m0[189u].z), CB0_m0[189u].z);
    float _782 = mad(_760, _760 + (-1.0f), 1.0f);
    float _1388;
    float _1389;
    if (0.5f < CB0_m0[22u].x)
    {
        float _831 = mad(_481, CB4_m0[135u].x, TEXCOORD_2.w) + ((-0.0f) - CB3_m0[39u].x);
        float _832 = mad(_482, CB4_m0[135u].x, TEXCOORD_3.w) + ((-0.0f) - CB3_m0[39u].y);
        float _833 = mad(_483, CB4_m0[135u].x, TEXCOORD_4.w) + ((-0.0f) - CB3_m0[39u].z);
        float _869 = mad(CB3_m0[35u].z, _833, mad(CB3_m0[33u].z, _831, _832 * CB3_m0[34u].z)) + CB3_m0[36u].z;
        float _879 = mad(mad(CB3_m0[35u].x, _833, mad(CB3_m0[33u].x, _831, _832 * CB3_m0[34u].x)) + CB3_m0[36u].x, CB3_m0[38u].x, CB3_m0[38u].z);
        float _880 = mad(mad(CB3_m0[35u].y, _833, mad(CB3_m0[33u].y, _831, _832 * CB3_m0[34u].y)) + CB3_m0[36u].y, CB3_m0[38u].y, CB3_m0[38u].w);
        float _963 = ((((((T15.SampleCmpLevelZero(S1, float2(_879 + ((-0.0f) - CB0_m0[200u].x), _880 + ((-0.0f) - CB0_m0[200u].y)), _869).xxxx.x + T15.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, -1.0f, _879), mad(CB0_m0[200u].y, 1.0f, _880)), _869).xxxx.x) + T15.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 1.0f, _879), mad(CB0_m0[200u].y, -1.0f, _880)), _869).xxxx.x) + T15.SampleCmpLevelZero(S1, float2(_879 + CB0_m0[200u].x, _880 + CB0_m0[200u].y), _869).xxxx.x) + T15.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, -1.4142129421234130859375f, _879), mad(CB0_m0[200u].y, 0.0f, _880)), _869).xxxx.x) + T15.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 1.4142129421234130859375f, _879), mad(CB0_m0[200u].y, 0.0f, _880)), _869).xxxx.x) + T15.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 0.0f, _879), mad(CB0_m0[200u].y, -1.4142129421234130859375f, _880)), _869).xxxx.x) + T15.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 0.0f, _879), mad(CB0_m0[200u].y, 1.4142129421234130859375f, _880)), _869).xxxx.x;
        float _986 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[20u].x);
        float _987 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[20u].y);
        float _988 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[20u].z);
        float _998 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[21u].x);
        float _999 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[21u].y);
        float _1000 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[21u].z);
        float _1009 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[22u].x);
        float _1010 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[22u].y);
        float _1011 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[22u].z);
        float _1021 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[23u].x);
        float _1022 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[23u].y);
        float _1023 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[23u].z);
        bool _1043 = dot(float3(_986, _987, _988), float3(_986, _987, _988)) < CB2_m0[24u].x;
        bool _1044 = dot(float3(_998, _999, _1000), float3(_998, _999, _1000)) < CB2_m0[24u].y;
        bool _1045 = dot(float3(_1009, _1010, _1011), float3(_1009, _1010, _1011)) < CB2_m0[24u].z;
        float _1077 = ((-0.0f) - dot(float4(asfloat((_1043 ? 4294967295u : 0u) & 1065353216u), max(asfloat(_1043 ? 3212836864u : 2147483648u) + asfloat((_1044 ? 4294967295u : 0u) & 1065353216u), 0.0f), max(asfloat(_1044 ? 3212836864u : 2147483648u) + asfloat((_1045 ? 4294967295u : 0u) & 1065353216u), 0.0f), max(asfloat(_1045 ? 3212836864u : 2147483648u) + asfloat(((dot(float3(_1021, _1022, _1023), float3(_1021, _1022, _1023)) < CB2_m0[24u].w) ? 4294967295u : 0u) & 1065353216u), 0.0f)), float4(4.0f, 3.0f, 2.0f, 1.0f))) + 4.0f;
        uint _1079 = uint(_1077) << 2u;
        uint _1082 = _1079 + 1u;
        uint _1101 = _1079 + 2u;
        uint _1112 = _1079 + 3u;
        float _1118 = mad(CB2_m0[_1101].x, TEXCOORD_4.w, mad(CB2_m0[_1079].x, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_1082].x)) + CB2_m0[_1112].x;
        float _1119 = mad(CB2_m0[_1101].y, TEXCOORD_4.w, mad(CB2_m0[_1079].y, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_1082].y)) + CB2_m0[_1112].y;
        float _1120 = mad(CB2_m0[_1101].z, TEXCOORD_4.w, mad(CB2_m0[_1079].z, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_1082].z)) + CB2_m0[_1112].z;
        float _1134 = frac(sin(dot(float2(frac(_1118 * 1024.0f), frac(_1119 * 1024.0f)), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
        float _1135 = sin(_1134);
        float _1136 = cos(_1134);
        float _1147 = (CB2_m0[26u].x * 1.2999999523162841796875f) * _1135;
        float _1148 = (CB2_m0[26u].x * 1.2999999523162841796875f) * _1136;
        float _1149 = (CB2_m0[26u].y * 1.2999999523162841796875f) * _1135;
        float _1150 = (CB2_m0[26u].y * 1.2999999523162841796875f) * _1136;
        float _1246 = ((((T0.SampleCmpLevelZero(S1, float3(_1118 + ((_1148 * (-0.97829997539520263671875f)) + (_1147 * (-0.172399997711181640625f))), _1119 + ((_1150 * 0.172399997711181640625f) + (_1149 * (-0.97829997539520263671875f))), _1077), _1120).xxxx.x + T0.SampleCmpLevelZero(S1, float3(_1118 + ((_1148 * 0.484600007534027099609375f) + (_1147 * 0.874700009822845458984375f)), _1119 + ((_1150 * (-0.874700009822845458984375f)) + (_1149 * 0.484600007534027099609375f)), _1077), _1120).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1118 + ((_1148 * (-0.037399999797344207763671875f)) + (_1147 * (-0.96829998493194580078125f))), _1119 + ((_1150 * 0.96829998493194580078125f) + (_1149 * (-0.037399999797344207763671875f))), _1077), _1120).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1118 + ((_1148 * 0.419600009918212890625f) + (_1147 * 0.278299987316131591796875f)), _1119 + ((_1150 * (-0.278299987316131591796875f)) + (_1149 * 0.419600009918212890625f)), _1077), _1120).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1118 + ((_1148 * 0.83910000324249267578125f) + (_1147 * (-0.1507000029087066650390625f))), _1119 + ((_1150 * (-0.1507000029087066650390625f)) + (_1149 * 0.83910000324249267578125f)), _1077), _1120).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1118 + ((_1148 * 0.4792999923229217529296875f) + (_1147 * (-0.6417000293731689453125f))), _1119 + ((_1150 * (-0.6417000293731689453125f)) + (_1149 * 0.4792999923229217529296875f)), _1077), _1120).xxxx.x;
        float _1327 = (((((_1246 + T0.SampleCmpLevelZero(S1, float3(_1118 + ((_1148 * (-0.81610000133514404296875f)) + (_1147 * 0.577899992465972900390625f)), _1119 + ((_1150 * 0.577899992465972900390625f) + (_1149 * (-0.81610000133514404296875f))), _1077), _1120).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1118 + ((_1148 * (-0.4587999880313873291015625f)) + (_1147 * (-0.5408999919891357421875f))), _1119 + ((_1150 * 0.5408999919891357421875f) + (_1149 * (-0.4587999880313873291015625f))), _1077), _1120).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1118 + ((_1148 * (-0.19189999997615814208984375f)) + (_1147 * 0.704400002956390380859375f)), _1119 + ((_1150 * 0.704400002956390380859375f) + (_1149 * (-0.19189999997615814208984375f))), _1077), _1120).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1118 + ((_1148 * (-0.446399986743927001953125f)) + (_1147 * 0.105300001800060272216796875f)), _1119 + ((_1150 * 0.105300001800060272216796875f) + (_1149 * (-0.446399986743927001953125f))), _1077), _1120).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1118 + ((_1148 * 0.06610000133514404296875f) + (_1147 * (-0.20659999549388885498046875f))), _1119 + ((_1150 * (-0.20659999549388885498046875f)) + (_1149 * 0.06610000133514404296875f)), _1077), _1120).xxxx.x) * CB2_m0[25u].x;
        float _1352 = clamp(mad(_740, 2.0f, -1.0f), 0.0f, 1.0f);
        float _1356 = _1352 * CB0_m0[189u].w;
        float _1366 = (asfloat(((((_1120 >= 1.0f) ? 4294967295u : 0u) | ((0.0f >= _1120) ? 4294967295u : 0u)) != 0u) ? 1065353216u : asuint(mad(_1327, 0.090899996459484100341796875f, ((-0.0f) - CB2_m0[25u].x) + 1.0f))) * mad(CB3_m0[40u].y, ((-0.0f) - _741) + 1.0f, _741)) * asfloat((0.5f < CB3_m0[37u].x) ? asuint(min(mad(_1352, (asfloat(_596 ? asuint(CB4_m0[163u]).w : (_598 ? asuint(CB4_m0[163u]).z : (_600 ? asuint(CB4_m0[163u]).y : (_602 ? asuint(CB4_m0[163u]).x : asuint(CB4_m0[162u]).w)))) * mad(_963 + T15.SampleCmpLevelZero(S1, float2(_879, _880), _869).xxxx.x, 0.11110000312328338623046875f, -1.0f)) * CB3_m0[37u].x, 1.0f), 1.0f)) : 1065353216u);
        _1388 = mad(_1366, _1356 * CB4_m0[133u].z, mad((-0.0f) - _1356, CB4_m0[133u].z, 1.0f));
        _1389 = mad(_1366, CB4_m0[133u].z, ((-0.0f) - CB4_m0[133u].z) + 1.0f);
    }
    else
    {
        _1388 = asfloat(1065353216u);
        _1389 = asfloat(1065353216u);
    }
    float _1395 = clamp(CB3_m0[1u].w * 2.5f, 0.0f, 1.0f);
    float _1398 = mad(((-0.0f) - _1395) + 1.0f, _1388, _1395);
    bool _1402 = CB3_m0[3u].w != 0.0f;
    float _1416 = clamp(dot(float3(CB3_m0[3u].xyz), float3(TEXCOORD_2.w, TEXCOORD_3.w, TEXCOORD_4.w)) + ((-0.0f) - CB3_m0[3u].w), 0.0f, 1.0f);
    float _1467 = asfloat(_1402 ? asuint(mad(_1416, ((-0.0f) - _778) + mad(CB0_m0[15u].w, mad((-0.0f) - _778, CB0_m0[15u].x, _778 + CB0_m0[15u].x), _778 * CB0_m0[15u].x), _778)) : asuint(_778));
    float _1469 = asfloat(_1402 ? asuint(mad(_1416, ((-0.0f) - _779) + mad(CB0_m0[15u].w, mad((-0.0f) - _779, CB0_m0[15u].y, _779 + CB0_m0[15u].y), _779 * CB0_m0[15u].y), _779)) : asuint(_779));
    float _1471 = asfloat(_1402 ? asuint(mad(_1416, ((-0.0f) - _780) + mad(CB0_m0[15u].w, mad((-0.0f) - _780, CB0_m0[15u].z, _780 + CB0_m0[15u].z), _780 * CB0_m0[15u].z), _780)) : asuint(_780));
    float _1472 = max(asfloat(_596 ? asuint(CB4_m0[134u]).w : (_598 ? asuint(CB4_m0[134u]).z : (_600 ? asuint(CB4_m0[134u]).y : (_602 ? asuint(CB4_m0[134u]).x : asuint(CB4_m0[133u]).w)))), 9.9999997473787516355514526367188e-06f);
    float _1474 = 1.0f / _1472;
    float _1475 = dot(float3(_481, _482, _483), float3(_753, _754, _755));
    float _1492 = mad(mad(clamp(_422.z, 0.0f, 1.0f), 2.0f, -1.0f), 2.0f, mad(TEXCOORD_7.y, ((-0.0f) - _1475) + mad(_1475 + 1.0f, clamp(mad((-0.0f) - min(_754 * 3.0f, 1.0f), 0.5f, _482) + 1.5f, 0.0f, 1.0f), -1.0f), _1475));
    float _1505 = mad((-0.0f) - _1472, 3.0f, 2.0f);
    float _1506 = ((_1492 * 3.0f) + 3.0f) / _1505;
    float _1507 = (mad(_1492, 3.0f, (-0.0f) - (_1472 * 1.5f)) + 1.0f) / _1505;
    float _1508 = (mad(_1492, 3.0f, (-0.0f) - (_1472 * 4.5f)) + (-1.0f)) / _1505;
    float _1520 = mad(_1474, _1492 + 0.33329999446868896484375f, 0.5f);
    float _1521 = mad(_1474, _1492 + (-0.33329999446868896484375f), 0.5f);
    float _1522 = mad(_1474, _1492 + (-0.33329999446868896484375f), -0.5f);
    float _1533 = clamp(((-0.0f) - _1506) + 1.0f, 0.0f, 1.0f);
    float _1534 = clamp(min(_1506, ((-0.0f) - _1520) + 1.0f), 0.0f, 1.0f);
    float _1535 = clamp(min(_1520, ((-0.0f) - _1507) + 1.0f), 0.0f, 1.0f);
    float _1539 = clamp(min(_1522, ((-0.0f) - _1508) + 1.0f), 0.0f, 1.0f);
    float _1540 = clamp(_1508, 0.0f, 1.0f);
    float _1546 = mad(CB3_m0[40u].y, ((-0.0f) - _1398) + _1389, _1398);
    float _1553 = clamp(min(mad(_1546, -2.0f, 2.0f), mad(_1546, 2.0f, 0.0f)), 0.0f, 1.0f);
    float _1554 = clamp(mad(_1546, 2.0f, -1.0f), 0.0f, 1.0f);
    float _1555 = clamp(mad(_1546, -2.0f, 1.0f), 0.0f, 1.0f);
    float _1627;
    float _1629;
    float _1631;
    if (0.5f < CB3_m0[40u].y)
    {
        float _1594;
        if (_662)
        {
            _1594 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _1594 = asfloat(0u);
        }
        float _1598 = _1594 * CB0_m0[189u].w;
        float _1599 = _1598 * _1553;
        float _1605 = (mad((-0.0f) - _1553, _1598, _1553) + mad((-0.0f) - _1555, _1598, _1555)) + _1554;
        float _1946;
        if (_662)
        {
            _1946 = asfloat(T1.Load((uint(max(int(uint(min(int(asuint(CB0_m0[188u]).z + 4294967295u), int(uint(int(CB3_m0[2u].z)))))), int(0u))) * 32u) + 7u).x);
        }
        else
        {
            _1946 = asfloat(0u);
        }
        _1627 = _1946 * _1599;
        _1629 = _1946 * _1605;
        _1631 = mad(_1555, _1598, mad((-0.0f) - _1605, _1946, _1605) + mad((-0.0f) - _1599, _1946, _1599));
    }
    else
    {
        float _1606;
        if (_662)
        {
            _1606 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _1606 = asfloat(0u);
        }
        _1627 = _1606 * _1553;
        _1629 = _1554;
        _1631 = _1606 * _1555;
    }
    float _1639 = mad(_1631, ((-0.0f) - _1535) + (((-0.0f) - _1534) + (((-0.0f) - _1533) + 1.0f)), _1535);
    float _1640 = _1629 + _1627;
    float _1641 = _1640 * clamp(min(_1507, ((-0.0f) - _1521) + 1.0f), 0.0f, 1.0f);
    float _1644 = mad(_1540 + _1539, _1627, _1640 * clamp(min(_1521, ((-0.0f) - _1522) + 1.0f), 0.0f, 1.0f));
    float _1645 = _1539 * _1629;
    float _1648 = _1533 * TEXCOORD_7.x;
    float _1653 = mad((-0.0f) - _1533, TEXCOORD_7.x, _1533) + _1534;
    uint4 _1657 = asuint(CB4_m0[60u]);
    uint4 _1664 = asuint(CB4_m0[59u]);
    uint4 _1674 = asuint(CB4_m0[61u]);
    uint4 _1684 = asuint(CB4_m0[62u]);
    uint4 _1694 = asuint(CB4_m0[63u]);
    uint4 _1707 = asuint(CB4_m0[65u]);
    uint4 _1714 = asuint(CB4_m0[64u]);
    uint4 _1724 = asuint(CB4_m0[66u]);
    uint4 _1734 = asuint(CB4_m0[67u]);
    uint4 _1744 = asuint(CB4_m0[68u]);
    uint4 _1757 = asuint(CB0_m0[10u]);
    uint4 _1763 = asuint(CB0_m0[3u]);
    uint4 _1776 = asuint(CB0_m0[11u]);
    uint4 _1782 = asuint(CB0_m0[4u]);
    uint4 _1795 = asuint(CB0_m0[12u]);
    uint4 _1802 = asuint(CB0_m0[5u]);
    uint4 _1815 = asuint(CB0_m0[9u]);
    uint4 _1822 = asuint(CB0_m0[6u]);
    uint4 _1835 = asuint(CB0_m0[13u]);
    uint4 _1841 = asuint(CB0_m0[7u]);
    uint4 _1854 = asuint(CB0_m0[14u]);
    uint4 _1860 = asuint(CB0_m0[8u]);
    float _1872 = min(_656 * 0.4372499883174896240234375f, 1.0f);
    float _1888 = mad(CB4_m0[133u].y, mad(_1872, CB3_m0[1u].w, (-0.0f) - _1872) + 1.0f, 0.0f);
    float _1889 = mad(CB4_m0[133u].y, mad((-0.0f) - _1872, CB3_m0[1u].w, _1872) + (-1.0f), 1.0f);
    float _1890 = asfloat(_596 ? _1694.x : (_598 ? _1684.x : (_600 ? _1674.x : (_602 ? _1657.x : _1664.x)))) + 6.103515625e-05f;
    float _1892 = asfloat(_596 ? _1694.y : (_598 ? _1684.y : (_600 ? _1674.y : (_602 ? _1657.y : _1664.y)))) + 6.103515625e-05f;
    float _1893 = asfloat(_596 ? _1694.z : (_598 ? _1684.z : (_600 ? _1674.z : (_602 ? _1657.z : _1664.z)))) + 6.103515625e-05f;
    float _1896 = (_1893 + (_1892 + _1890)) * 0.3333300054073333740234375f;
    float _1907 = mad(clamp(_1890 / _1896, 0.0f, 1.0f), _1888, _1889 * _1890);
    float _1908 = mad(clamp(_1892 / _1896, 0.0f, 1.0f), _1888, _1889 * _1892);
    float _1909 = mad(clamp(_1893 / _1896, 0.0f, 1.0f), _1888, _1889 * _1893);
    float _1910 = asfloat(_596 ? _1744.x : (_598 ? _1734.x : (_600 ? _1724.x : (_602 ? _1707.x : _1714.x)))) + 6.103515625e-05f;
    float _1911 = asfloat(_596 ? _1744.y : (_598 ? _1734.y : (_600 ? _1724.y : (_602 ? _1707.y : _1714.y)))) + 6.103515625e-05f;
    float _1912 = asfloat(_596 ? _1744.z : (_598 ? _1734.z : (_600 ? _1724.z : (_602 ? _1707.z : _1714.z)))) + 6.103515625e-05f;
    float _1915 = (_1912 + (_1911 + _1910)) * 0.3333300054073333740234375f;
    float _1925 = mad(clamp(_1910 / _1915, 0.0f, 1.0f), _1888, _1889 * _1910);
    float _1926 = mad(clamp(_1911 / _1915, 0.0f, 1.0f), _1888, _1889 * _1911);
    float _1927 = mad(clamp(_1912 / _1915, 0.0f, 1.0f), _1888, _1889 * _1912);
    float _1969;
    if (_662)
    {
        _1969 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
    }
    else
    {
        _1969 = asfloat(0u);
    }
    float _1972 = mad(_1969, ((-0.0f) - _782) + 1.0f, _782);
    float _1973 = _1972 * _1467;
    float _1974 = _1972 * _1469;
    float _1975 = _1972 * _1471;
    float _1976 = min(1.0f / max(_1471 + 1.1754943508222875079687365372222e-38f, max(_1469 + 1.1754943508222875079687365372222e-38f, _1467 + 1.1754943508222875079687365372222e-38f)), 1.0f);
    float _2004 = mad(_1973, mad(_1540, _1629, mad(asfloat(_545 ? _1835.x : _1841.x), _1644, _1645 * asfloat(_545 ? _1815.x : _1822.x))), (_1976 * _1973) * mad(asfloat(_545 ? _1757.x : _1763.x) * _1907, _1641, mad(asfloat(_545 ? _1776.x : _1782.x) * _1907, _1639, mad(asfloat(_545 ? _1854.x : _1860.x) * _1925, _1648, _1653 * (asfloat(_545 ? _1795.x : _1802.x) * _1925)))));
    float _2005 = mad(_1974, mad(_1540, _1629, mad(asfloat(_545 ? _1835.y : _1841.y), _1644, _1645 * asfloat(_545 ? _1815.y : _1822.y))), (_1976 * _1974) * mad(asfloat(_545 ? _1757.y : _1763.y) * _1908, _1641, mad(asfloat(_545 ? _1776.y : _1782.y) * _1908, _1639, mad(asfloat(_545 ? _1854.y : _1860.y) * _1926, _1648, _1653 * (asfloat(_545 ? _1795.y : _1802.y) * _1926)))));
    float _2006 = mad(_1975, mad(_1540, _1629, mad(asfloat(_545 ? _1835.z : _1841.z), _1644, _1645 * asfloat(_545 ? _1815.z : _1822.z))), (_1976 * _1975) * mad(asfloat(_545 ? _1757.z : _1763.z) * _1909, _1641, mad(asfloat(_545 ? _1776.z : _1782.z) * _1909, _1639, mad(asfloat(_545 ? _1854.z : _1860.z) * _1927, _1648, _1653 * (asfloat(_545 ? _1795.z : _1802.z) * _1927)))));
    float _2017;
    float _2019;
    float _2021;
    if (CB0_m0[22u].z >= 0.5f)
    {
        float _2018;
        float _2020;
        float _2022;
        if (CB4_m0[_540 + 10u].x < 50.0f)
        {
            float _2067 = mad(mad(CB0_m0[118u].x, _483, mad(CB0_m0[116u].x, _481, _482 * CB0_m0[117u].x)), 0.5f, 0.5f);
            float _2068 = mad(mad(CB0_m0[118u].y, _483, mad(CB0_m0[116u].y, _481, _482 * CB0_m0[117u].y)), 0.5f, 0.5f);
            float _2376;
            float _2377;
            if (0.5f < CB4_m0[_540 + 15u].z)
            {
                float _2359 = clamp(_504.x, 0.0f, 1.0f) * CB4_m0[_540 + 15u].w;
                _2376 = mad(_2359, _2067, mad(CB4_m0[_540].x, TEXCOORD.x, CB4_m0[_540].z));
                _2377 = mad(_2359, _2068, mad(CB4_m0[_540].y, TEXCOORD.y, CB4_m0[_540].w));
            }
            else
            {
                _2376 = _2067;
                _2377 = _2068;
            }
            float4 _2404 = T8.Sample(S3, float3(_2376 + (CB0_m0[40u].y * CB4_m0[_540 + 10u].w), _2377 + (CB0_m0[40u].y * CB4_m0[_540 + 15u].x), asfloat(asuint(CB4_m0[_540 + 10u]).x)));
            float _2406 = _2404.x;
            float _2407 = _2404.y;
            float _2408 = _2404.z;
            uint _2410 = _540 + 5u;
            float _2416 = _2406 * CB4_m0[_2410].x;
            float _2417 = _2407 * CB4_m0[_2410].y;
            float _2418 = _2408 * CB4_m0[_2410].z;
            float _2419 = mad(asfloat(((CB4_m0[144u].y >= 0.5f) ? 4294967295u : 0u) & 1065353216u), asfloat((_521 != 0u) ? asuint(min(_511 * 5.099999904632568359375f, 1.0f) * asfloat(((0.20000000298023223876953125f >= _511) ? 4294967295u : 0u) & 1065353216u)) : asuint(_511)) + (-1.0f), 1.0f) * _2404.w;
            float _2074;
            float _2075;
            float _2076;
            if (CB4_m0[_540 + 15u].y < 0.5f)
            {
                float _2710 = clamp(_2419 * CB4_m0[_540 + 10u].z, 0.0f, 1.0f);
                uint _2711 = _540 + 10u;
                _2074 = mad(_2710, mad(_2418, CB4_m0[_2711].y, (-0.0f) - _595), _595);
                _2075 = mad(_2710, mad(_2417, CB4_m0[_2711].y, (-0.0f) - _593), _593);
                _2076 = mad(_2710, mad(_2416, CB4_m0[_2711].y, (-0.0f) - _591), _591);
            }
            else
            {
                float _2781;
                float _2782;
                float _2783;
                if (CB4_m0[_540 + 15u].y < 1.5f)
                {
                    float _2789 = clamp(_2419 * CB4_m0[_540 + 10u].z, 0.0f, 1.0f);
                    uint _2793 = _540 + 10u;
                    _2781 = mad(_2789 * _2418, CB4_m0[_2793].y, _595);
                    _2782 = mad(_2789 * _2417, CB4_m0[_2793].y, _593);
                    _2783 = mad(_2789 * _2416, CB4_m0[_2793].y, _591);
                }
                else
                {
                    uint _2800 = _540 + 5u;
                    uint _2809 = _540 + 10u;
                    float _2824 = clamp(_2419 * CB4_m0[_540 + 10u].z, 0.0f, 1.0f);
                    float _2828 = mad(_2824, clamp(mad(mad(_2406, CB4_m0[_2800].x, -0.5f), CB4_m0[_2809].y, _2416), 0.0f, 1.0f) + (-0.5f), 0.5f);
                    float _2829 = mad(_2824, clamp(mad(mad(_2407, CB4_m0[_2800].y, -0.5f), CB4_m0[_2809].y, _2417), 0.0f, 1.0f) + (-0.5f), 0.5f);
                    float _2830 = mad(_2824, clamp(mad(mad(_2408, CB4_m0[_2800].z, -0.5f), CB4_m0[_2809].y, _2418), 0.0f, 1.0f) + (-0.5f), 0.5f);
                    float _2831 = _591 * _2828;
                    float _2832 = _593 * _2829;
                    float _2833 = _595 * _2830;
                    float _2840 = ((-0.0f) - _591) + 1.0f;
                    float _2841 = ((-0.0f) - _593) + 1.0f;
                    float _2842 = ((-0.0f) - _595) + 1.0f;
                    _2781 = mad(asfloat(((_595 >= 0.5f) ? 4294967295u : 0u) & 1065353216u), mad((-0.0f) - _2833, 2.0f, mad((-0.0f) - (_2842 + _2842), ((-0.0f) - _2830) + 1.0f, 1.0f)), _2833 + _2833);
                    _2782 = mad(asfloat(((_593 >= 0.5f) ? 4294967295u : 0u) & 1065353216u), mad((-0.0f) - _2832, 2.0f, mad((-0.0f) - (_2841 + _2841), ((-0.0f) - _2829) + 1.0f, 1.0f)), _2832 + _2832);
                    _2783 = mad(asfloat(((_591 >= 0.5f) ? 4294967295u : 0u) & 1065353216u), mad((-0.0f) - _2831, 2.0f, mad((-0.0f) - (_2840 + _2840), ((-0.0f) - _2828) + 1.0f, 1.0f)), _2831 + _2831);
                }
                _2074 = _2781;
                _2075 = _2782;
                _2076 = _2783;
            }
            _2018 = _2074;
            _2020 = _2075;
            _2022 = _2076;
        }
        else
        {
            _2018 = _595;
            _2020 = _593;
            _2022 = _591;
        }
        _2017 = _2018;
        _2019 = _2020;
        _2021 = _2022;
    }
    else
    {
        _2017 = _595;
        _2019 = _593;
        _2021 = _591;
    }
    bool _2025 = 0.5f < TEXCOORD_7.z;
    float _2192;
    float _2193;
    float _2194;
    if (_546 == 0u)
    {
        float _2086 = dot(float3(_2021, _2019, _2017), float3(0.2899999916553497314453125f, 0.60000002384185791015625f, 0.10999999940395355224609375f));
        bool _2093 = TEXCOORD_7.z < 0.5f;
        float _2094 = mad(_2086, 0.2874999940395355224609375f, 1.4375f);
        float _2097 = mad(_2086, 0.4000000059604644775390625f, 1.0f);
        float _2098 = dot(float3(_753, _754, _755), float3(_2025 ? _481 : TEXCOORD_2.x, _2025 ? _482 : TEXCOORD_2.y, _2025 ? _483 : TEXCOORD_2.z));
        float _2105 = clamp(mad((-0.0f) - (((-0.0f) - _1475) + _2098), 3.0f, 1.0f), 0.0f, 1.0f);
        float _2111 = clamp(_1475, 0.0f, 1.0f);
        float _2115 = clamp(_2098, 0.0f, 1.0f);
        float _2117 = max(_2021, max(_2017, _2019));
        bool _2118 = 1.0f < _2117;
        float _2136 = mad(mad(mad(mad(_1475, 0.5f, 0.5f), min(sqrt(_2105) * (_2105 + _2105), 1.0f), (-0.0f) - _2111), 0.5f, _2111), ((-0.0f) - _2094) + 1.0f, _2094);
        float _2143 = exp2(_2136 * log2(asfloat(_2118 ? asuint(_2021 / _2117) : asuint(_2021))));
        float _2144 = exp2(_2136 * log2(asfloat(_2118 ? asuint(_2019 / _2117) : asuint(_2019))));
        float _2145 = exp2(_2136 * log2(asfloat(_2118 ? asuint(_2017 / _2117) : asuint(_2017))));
        float _2152 = mad(((-0.0f) - _2021) + _2143, 0.5f, _2021);
        float _2153 = mad(((-0.0f) - _2019) + _2144, 0.5f, _2019);
        float _2154 = mad(((-0.0f) - _2017) + _2145, 0.5f, _2017);
        float _2165 = mad((-0.0f) - _2086, 0.0500000007450580596923828125f, 1.0499999523162841796875f);
        _2192 = asfloat(_2093 ? asuint(mad(_2115, _2145 + ((-0.0f) - _2154), _2154)) : asuint(_2165 * exp2(_2097 * log2(_2017))));
        _2193 = asfloat(_2093 ? asuint(mad(_2115, _2144 + ((-0.0f) - _2153), _2153)) : asuint(_2165 * exp2(_2097 * log2(_2019))));
        _2194 = asfloat(_2093 ? asuint(mad(_2115, _2143 + ((-0.0f) - _2152), _2152)) : asuint(_2165 * exp2(_2097 * log2(_2021))));
    }
    else
    {
        _2192 = _2017;
        _2193 = _2019;
        _2194 = _2021;
    }
    float _2196 = mad((-0.0f) - _499, 0.959999978542327880859375f, 0.959999978542327880859375f);
    float _2198 = _2194 * _2196;
    float _2199 = _2193 * _2196;
    float _2200 = _2192 * _2196;
    float _2205 = mad(_499, _2194 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _2207 = mad(_499, _2193 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _2208 = mad(_499, _2192 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _2213 = mad((-0.0f) - _510, CB4_m0[137u].w, 1.0f);
    float _2214 = _2213 * _2213;
    float _2235 = dot(float3((_2004 + CB0_m0[2u].x) + TEXCOORD_8.x, (_2005 + CB0_m0[2u].y) + TEXCOORD_8.y, (_2006 + CB0_m0[2u].z) + TEXCOORD_8.z), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2249 = ((-0.0f) - CB0_m0[19u].x) + CB0_m0[19u].y;
    float _2250 = 1.0f / _2249;
    float _2273 = asfloat((_2235 < CB0_m0[19u].x) ? asuint(_2235) : asuint(mad((-0.0f) - _2249, 1.0f / mad(_2235, _2250, mad((-0.0f) - CB0_m0[19u].x, _2250, 1.0f)), CB0_m0[19u].y))) / (_2235 + 9.9999997473787516355514526367188e-05f);
    float _2274 = _2273 * _2004;
    float _2275 = _2273 * _2005;
    float _2276 = _2273 * _2006;
    uint4 _2280 = asuint(CB4_m0[75u]);
    uint4 _2287 = asuint(CB4_m0[74u]);
    uint4 _2297 = asuint(CB4_m0[76u]);
    uint4 _2307 = asuint(CB4_m0[77u]);
    uint4 _2317 = asuint(CB4_m0[78u]);
    float _2353 = asfloat(_596 ? asuint(CB4_m0[142u]).y : (_598 ? asuint(CB4_m0[142u]).x : (_600 ? asuint(CB4_m0[141u]).w : (_602 ? asuint(CB4_m0[141u]).z : asuint(CB4_m0[141u]).y))));
    float _2458;
    if (0.5f < _2353)
    {
        _2458 = clamp(((clamp(mad(_1492, 1.5f, -0.5f), 0.0f, 1.0f) + _493) + (-1.0f)) / max(asfloat(_596 ? asuint(CB4_m0[143u]).z : (_598 ? asuint(CB4_m0[143u]).y : (_600 ? asuint(CB4_m0[143u]).x : (_602 ? asuint(CB4_m0[142u]).w : asuint(CB4_m0[142u]).z)))), 9.9999997473787516355514526367188e-06f), 0.0f, 1.0f);
    }
    else
    {
        _2458 = _493;
    }
    float _2462 = _2458 * CB4_m0[143u].w;
    float _2470 = mad(_745, _752, _653);
    float _2471 = mad(_746, _752, _654);
    float _2472 = mad(_747, _752, _655);
    float _2476 = rsqrt(dot(float3(_2470, _2471, _2472), float3(_2470, _2471, _2472)));
    float _2477 = _2476 * _2470;
    float _2478 = _2476 * _2471;
    float _2479 = _2476 * _2472;
    float _2505 = asfloat(_596 ? asuint(CB4_m0[141u]).x : (_598 ? asuint(CB4_m0[140u]).w : (_600 ? asuint(CB4_m0[140u]).z : (_602 ? asuint(CB4_m0[140u]).y : asuint(CB4_m0[140u]).x))));
    float _2516 = clamp(mad(_2505 * dot(float3(_481, _482, _483), float3(_2477, _2478, _2479)), 0.75f, 0.25f), 0.0f, 1.0f);
    float _2522 = clamp(mad(_2505 * dot(float3(_753, _754, _755), float3(_2477, _2478, _2479)), 0.75f, 0.25f), 0.0f, 1.0f);
    float _2524 = mad(_2516 * _2516, mad(_2214, _2214, -1.0f), 1.000010013580322265625f);
    float _2598 = (((clamp(mad(_1475 * _2505, 0.75f, 0.25f), 0.0f, 1.0f) * clamp(mad((-0.0f) - _510, CB4_m0[137u].w, (_2214 * _2214) / (mad(_2214, 4.0f, 2.0f) * (max(_2522 * _2522, 0.100000001490116119384765625f) * (_2524 * _2524)))), 0.0f, 1.0f)) / max(_2214, 9.9999997473787516355514526367188e-06f)) * (asfloat(_596 ? asuint(CB4_m0[166u]).w : (_598 ? asuint(CB4_m0[166u]).z : (_600 ? asuint(CB4_m0[166u]).y : (_602 ? asuint(CB4_m0[166u]).x : asuint(CB4_m0[165u]).w)))) * asfloat(_596 ? asuint(CB4_m0[139u]).w : (_598 ? asuint(CB4_m0[139u]).z : (_600 ? asuint(CB4_m0[139u]).y : (_602 ? asuint(CB4_m0[139u]).x : asuint(CB4_m0[138u]).w)))))) * 10.0f;
    float _2606 = asfloat((_2353 < 0.5f) ? asuint(clamp(_2598, 0.0f, 1.0f) * 100.0f) : 1099257348u);
    float _2607 = (_2205 * (asfloat(_596 ? _2317.x : (_598 ? _2307.x : (_600 ? _2297.x : (_602 ? _2280.x : _2287.x)))) * _2462)) * _2606;
    float _2608 = (_2207 * (asfloat(_596 ? _2317.y : (_598 ? _2307.y : (_600 ? _2297.y : (_602 ? _2280.y : _2287.y)))) * _2462)) * _2606;
    float _2609 = (_2208 * (asfloat(_596 ? _2317.z : (_598 ? _2307.z : (_600 ? _2297.z : (_602 ? _2280.z : _2287.z)))) * _2462)) * _2606;
    uint _2626 = (CB4_m0[144u].x >= 0.5f) ? 4294967295u : 0u;
    uint4 _2630 = asuint(CB4_m0[80u]);
    uint4 _2637 = asuint(CB4_m0[79u]);
    uint4 _2647 = asuint(CB4_m0[81u]);
    uint4 _2657 = asuint(CB4_m0[82u]);
    uint4 _2666 = asuint(CB4_m0[83u]);
    float _2686 = asfloat(_2626 & asuint(_2194 * (_532 * asfloat(_596 ? _2666.x : (_598 ? _2657.x : (_600 ? _2647.x : (_602 ? _2630.x : _2637.x)))))));
    float _2688 = asfloat(_2626 & asuint(_2193 * (_532 * asfloat(_596 ? _2666.y : (_598 ? _2657.y : (_600 ? _2647.y : (_602 ? _2630.y : _2637.y)))))));
    float _2690 = asfloat(_2626 & asuint(_2192 * (_532 * asfloat(_596 ? _2666.z : (_598 ? _2657.z : (_600 ? _2647.z : (_602 ? _2630.z : _2637.z)))))));
    float _2692 = _2690 + (_2688 + _2686);
    float _2699 = _2273 * TEXCOORD_8.x;
    float _2700 = _2273 * TEXCOORD_8.y;
    float _2701 = _2273 * TEXCOORD_8.z;
    float _2879;
    float _2880;
    float _2881;
    float _2882;
    float _2883;
    float _2884;
    if (_662)
    {
        uint _2739 = uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u)));
        uint _2741 = (_2739 * 32u) + 24u;
        uint3 _2751 = uint3(T1.Load(_2741).x, T1.Load(_2741 + 1u).x, T1.Load(_2741 + 2u).x);
        uint _2759 = (_2739 * 32u) + 28u;
        uint3 _2768 = uint3(T1.Load(_2759).x, T1.Load(_2759 + 1u).x, T1.Load(_2759 + 2u).x);
        _2879 = asfloat(_2751.x);
        _2880 = asfloat(_2751.y);
        _2881 = asfloat(_2751.z);
        _2882 = asfloat(_2768.x);
        _2883 = asfloat(_2768.y);
        _2884 = asfloat(_2768.z);
    }
    else
    {
        _2879 = asfloat(0u);
        _2880 = asfloat(0u);
        _2881 = asfloat(0u);
        _2882 = asfloat(0u);
        _2883 = asfloat(0u);
        _2884 = asfloat(0u);
    }
    bool _2888 = 0.5f < CB0_m0[23u].y;
    bool _2889 = _547 != 0u;
    float _2984;
    float _2986;
    float _2988;
    if (0.5f >= CB0_m0[188u].w)
    {
        float _2924 = clamp(mad((-0.0f) - dot(float3(_653, _654, _655), float3(_753, _754, _755)), 0.5f, 0.5f), 0.0f, 1.0f);
        float _2926 = mad(_482, 0.5f, 0.5f);
        float _2935 = clamp((asfloat((_547 != 0u) ? asuint(_2926) : asuint(_2926 * _2926)) + (-0.20000000298023223876953125f)) * 1.25f, 0.0f, 1.0f);
        float _2938 = (_2935 * _2935) * mad(_2935, -2.0f, 3.0f);
        float _2939 = _2938 * _2938;
        bool _2942 = _547 != 0u;
        float _3019;
        if (_662)
        {
            _3019 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _3019 = asfloat(0u);
        }
        float _3048 = min(_656 * 0.083333335816860198974609375f, 1.0f);
        float _3056 = ((-0.0f) - dot(float3(_653, _654, _655), float3(_481, _482, _483))) + 1.0f;
        float _3065 = clamp((((-0.0f) - mad(_3048, -0.300000011920928955078125f, 0.5f)) + _3056) * 3.3333332538604736328125f, 0.0f, 1.0f);
        float _3066 = clamp((((-0.0f) - mad(_3048, -0.300000011920928955078125f, 0.60000002384185791015625f)) + _3056) * 5.000000476837158203125f, 0.0f, 1.0f);
        float _3097 = CB0_m0[189u].x * CB0_m0[189u].x;
        float _3098 = CB0_m0[189u].y * CB0_m0[189u].y;
        float _3099 = CB0_m0[189u].z * CB0_m0[189u].z;
        float _3100 = _3097 * _3097;
        float _3101 = _3098 * _3098;
        float _3102 = _3099 * _3099;
        float _3103 = _3100 * _3100;
        float _3104 = _3101 * _3101;
        float _3105 = _3102 * _3102;
        float _3112 = dot(float3(CB0_m0[189u].xyz), 0.3300000131130218505859375f.xxx) * (1.0f / (dot(float3(_3103, _3104, _3105), 0.699999988079071044921875f.xxx) + 9.9999997473787516355514526367188e-06f));
        float _3119 = mad(_1389, mad(_3112, _3103, (-0.0f) - _2274), _2274);
        float _3120 = mad(_1389, mad(_3112, _3104, (-0.0f) - _2275), _2275);
        float _3121 = mad(_1389, mad(_3112, _3105, (-0.0f) - _2276), _2276);
        float _3126 = exp2(log2(_2924 * _2924) * 20.0f);
        float _3150 = mad(_2192, _2196, _2199 + _2198) * 0.3300000131130218505859375f;
        float _3167 = exp2(log2(clamp(_2198, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _3168 = exp2(log2(clamp(_2199, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _3169 = exp2(log2(clamp(_2200, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _3174 = rsqrt(max(dot(float3(_3167, _3168, _3169), float3(_3167, _3168, _3169)), 6.103515625e-05f));
        float _3175 = _3174 * _3167;
        float _3176 = _3174 * _3168;
        float _3177 = _3174 * _3169;
        float _3182 = CB0_m0[198u].w * 48.0f;
        float _3184 = mad((_3150 * _3150) * CB0_m0[199u].w, -0.199999988079071044921875f, 1.0f) * 0.100000001490116119384765625f;
        float _3188 = (-0.0f) - _3184;
        float _3198 = asfloat((_547 != 0u) ? asuint((_3065 * _3065) * mad(_3065, -2.0f, 3.0f)) : asuint((_3066 * _3066) * mad(_3066, -2.0f, 3.0f))) * (mad(CB0_m0[199u].y, mad(clamp((-0.0f) - _654, 0.0f, 1.0f), asfloat((0.0f != TEXCOORD_7.z) ? 1083179008u : asuint(mad(_495, CB4_m0[137u].z, 2.5f))), -0.5f), 1.0f) * (clamp(mad(_3019, 0.39999997615814208984375f, _1389) + 0.60000002384185791015625f, 0.0f, 1.0f) * (mad(_1398 * mad(_1475, 0.5f, 0.5f), 1.39999997615814208984375f, 0.100000001490116119384765625f) * (mad(_2924, 0.800000011920928955078125f, 0.20000000298023223876953125f) * mad(CB0_m0[199u].x, mad(_2938, mad(_2938 * (_2939 * _2939), asfloat(_2942 ? 3212836864u : 3204448256u) + asfloat(_2942 ? 1050253722u : 1065353216u), asfloat(_2942 ? 1065353216u : 1056964608u)), -0.100000001490116119384765625f), 0.100000001490116119384765625f)))));
        uint4 _3208 = asuint(CB4_m0[87u]);
        uint4 _3215 = asuint(CB4_m0[86u]);
        uint4 _3225 = asuint(CB4_m0[88u]);
        uint4 _3235 = asuint(CB4_m0[89u]);
        uint4 _3245 = asuint(CB4_m0[90u]);
        float _3257 = ((_3182 * mad(_499, mad(_3188, _3177, _2208), _3177 * _3184)) * (mad(CB0_m0[199u].z, mad((-0.0f) - _2006, _2273, mad(_3126, mad(_2006, _2273, (-0.0f) - _3121), _3121)), _2276) * _3198)) * asfloat(_596 ? _3245.z : (_598 ? _3235.z : (_600 ? _3225.z : (_602 ? _3208.z : _3215.z))));
        float _3260 = mad(clamp(mad(_656, 0.20000000298023223876953125f, -1.0f), 0.0f, 1.0f), -0.699999988079071044921875f, 1.0f);
        float _3262 = _3260 * (((_3182 * mad(_499, mad(_3188, _3175, _2205), _3175 * _3184)) * (mad(CB0_m0[199u].z, mad((-0.0f) - _2004, _2273, mad(_3126, mad(_2004, _2273, (-0.0f) - _3119), _3119)), _2274) * _3198)) * asfloat(_596 ? _3245.x : (_598 ? _3235.x : (_600 ? _3225.x : (_602 ? _3208.x : _3215.x)))));
        float _3263 = _3260 * (((_3182 * mad(_499, mad(_3188, _3176, _2207), _3176 * _3184)) * (mad(CB0_m0[199u].z, mad((-0.0f) - _2005, _2273, mad(_3126, mad(_2005, _2273, (-0.0f) - _3120), _3120)), _2275) * _3198)) * asfloat(_596 ? _3245.y : (_598 ? _3235.y : (_600 ? _3225.y : (_602 ? _3208.y : _3215.y)))));
        float _3266 = mad(_3257, _3260, _3263 + _3262);
        float _3268 = mad(_3266 * _3266, 0.0500000007450580596923828125f, 1.0f);
        float _3273 = asfloat(_2025 ? 1056964608u : 1065353216u);
        float _3274 = _3273 * (_3268 * _3262);
        float _3275 = _3273 * (_3268 * _3263);
        float _3276 = _3273 * (_3268 * (_3260 * _3257));
        bool _3280 = 0.5f < CB3_m0[1u].w;
        _2984 = asfloat(_3280 ? asuint(min(_3276, 0.699999988079071044921875f)) : asuint(_3276)) * CB0_m0[198u].z;
        _2986 = asfloat(_3280 ? asuint(min(_3275, 0.699999988079071044921875f)) : asuint(_3275)) * CB0_m0[198u].y;
        _2988 = asfloat(_3280 ? asuint(min(_3274, 0.699999988079071044921875f)) : asuint(_3274)) * CB0_m0[198u].x;
    }
    else
    {
        _2984 = asfloat(0u);
        _2986 = asfloat(0u);
        _2988 = asfloat(0u);
    }
    float _2990 = _2686 + (max(mad(_2607, _2274, -1.0f), 0.0f) + mad(asfloat(_2888 ? 1028443341u : (_2889 ? asuint(_2879) : asuint(_2882))), _2194 * _2273, mad(_2699, _2198, mad(_2198, _2274, _2274 * _2607))));
    float _2991 = _2688 + (max(mad(_2608, _2275, -1.0f), 0.0f) + mad(asfloat(_2888 ? 1028443341u : (_2889 ? asuint(_2880) : asuint(_2883))), _2193 * _2273, mad(_2700, _2199, mad(_2199, _2275, _2275 * _2608))));
    float _2992 = _2690 + (max(mad(_2609, _2276, -1.0f), 0.0f) + mad(asfloat(_2888 ? 1028443341u : (_2889 ? asuint(_2881) : asuint(_2884))), _2192 * _2273, mad(_2701, _2200, mad(_2200, _2276, _2276 * _2609))));
    float _3000 = CB4_m0[29u].w * CB4_m0[155u].w;
    float _3012 = mad(_3000, ((-0.0f) - _2990) + CB4_m0[29u].x, _2990);
    float _3013 = mad(_3000, ((-0.0f) - _2991) + CB4_m0[29u].y, _2991);
    float _3014 = mad(_3000, ((-0.0f) - _2992) + CB4_m0[29u].z, _2992);
    float _3466;
    float _3468;
    float _3470;
    float _3472;
    if (0.5f < CB4_m0[152u].y)
    {
        bool _3305 = CB4_m0[153u].x < 0.5f;
        float _3342 = mad(gl_FragCoord.x, CB0_m0[160u].z, -0.5f);
        float _3343 = mad(gl_FragCoord.y, CB0_m0[160u].w, -0.5f);
        float _3371 = ((-0.0f) - _257) / CB0_m0[93u].y;
        float _3382 = asfloat((0.5f < CB4_m0[152u].z) ? asuint(mad(CB0_m0[85u].w, mad((-0.0f) - _3371, 0.5f, 1.0f), _3371 * 0.5f)) : 1065353216u);
        float4 _3415 = T11.Sample(S6, float2((mad(_3382 * mad(CB4_m0[125u].z, mad(CB0_m0[118u].x, _483, mad(CB0_m0[116u].x, _481, _482 * CB0_m0[117u].x)), (CB0_m0[160u].w * CB0_m0[160u].x) * (_3342 + _3342)), CB4_m0[47u].x, CB4_m0[47u].z) + 0.5f) + mad(CB4_m0[124u].x, CB0_m0[40u].y, CB4_m0[124u].z), (mad(_3382 * mad(CB4_m0[125u].z, mad(CB0_m0[118u].y, _483, mad(CB0_m0[116u].y, _481, _482 * CB0_m0[117u].y)), _3343 + _3343), CB4_m0[47u].y, CB4_m0[47u].w) + 0.5f) + mad(CB4_m0[124u].y, CB0_m0[40u].y, CB4_m0[124u].w)));
        float _3431 = _3415.w * CB4_m0[109u].w;
        float _3464 = asfloat((0.5f < CB4_m0[153u].z) ? asuint(mad(mad(sin((CB0_m0[40u].y / max(CB4_m0[168u].x, 0.00999999977648258209228515625f)) * 6.283185482025146484375f), 0.5f, 0.5f), ((-0.0f) - CB4_m0[125u].x) + CB4_m0[125u].y, CB4_m0[125u].x)) : 1065353216u);
        float _3465 = _3464 * _3431;
        float _3544;
        float _3545;
        float _3546;
        if (0.5f < CB4_m0[152u].w)
        {
            float _3480 = mad((-0.0f) - _3431, _3464, 1.0f);
            _3544 = _2990 * mad(_3415.x * CB4_m0[109u].x, _3465, _3480);
            _3545 = _2991 * mad(_3415.y * CB4_m0[109u].y, _3465, _3480);
            _3546 = _2992 * mad(_3415.z * CB4_m0[109u].z, _3465, _3480);
        }
        else
        {
            _3544 = mad(_3465, mad(CB4_m0[109u].x, _3415.x, (-0.0f) - _2990), _2990);
            _3545 = mad(_3465, mad(CB4_m0[109u].y, _3415.y, (-0.0f) - _2991), _2991);
            _3546 = mad(_3465, mad(CB4_m0[109u].z, _3415.z, (-0.0f) - _2992), _2992);
        }
        float4 _3569 = T12.Sample(S7, float2(mad(CB0_m0[40u].y, CB4_m0[149u].z, mad(_3305 ? TEXCOORD.x : TEXCOORD_1.x, CB4_m0[48u].x, CB4_m0[48u].z)), mad(CB0_m0[40u].y, CB4_m0[149u].w, mad(_3305 ? TEXCOORD.y : TEXCOORD_1.y, CB4_m0[48u].y, CB4_m0[48u].w))));
        float _3571 = _3569.x;
        _3466 = mad(_3571, ((-0.0f) - _3012) + _3544, _3012);
        _3468 = mad(_3571, ((-0.0f) - _3013) + _3545, _3013);
        _3470 = mad(_3571, ((-0.0f) - _3014) + _3546, _3014);
        _3472 = mad(_3546 + (_3545 + _3544), _3571, _2692);
    }
    else
    {
        _3466 = _3012;
        _3468 = _3013;
        _3470 = _3014;
        _3472 = _2692;
    }
    float _3657;
    float _3659;
    float _3661;
    float _3663;
    float _3665;
    float _3667;
    float _3669;
    if (0.5f < CB4_m0[156u].x)
    {
        float _3504 = CB4_m0[156u].z * 0.01745329238474369049072265625f;
        float _3506 = sin(_3504);
        float _3507 = cos(_3504);
        bool _3512 = CB4_m0[156u].y < 0.5f;
        float _3676;
        float _3677;
        float _3678;
        if (1.5f < CB4_m0[156u].y)
        {
            bool _3584 = CB4_m0[157u].w < 0.5f;
            uint4 _3631 = asuint(CB4_m0[25u]);
            float _3644 = ((-0.0f) - TEXCOORD_2.w) + asfloat(_3584 ? asuint(mad(CB1_m0[2u].x, CB4_m0[25u].z, mad(CB1_m0[0u].x, CB4_m0[25u].x, CB1_m0[1u].x * CB4_m0[25u].y)) + CB1_m0[3u].x) : _3631.x);
            float _3645 = ((-0.0f) - TEXCOORD_3.w) + asfloat(_3584 ? asuint(mad(CB1_m0[2u].y, CB4_m0[25u].z, mad(CB1_m0[0u].y, CB4_m0[25u].x, CB1_m0[1u].y * CB4_m0[25u].y)) + CB1_m0[3u].y) : _3631.y);
            float _3646 = ((-0.0f) - TEXCOORD_4.w) + asfloat(_3584 ? asuint(mad(CB1_m0[2u].z, CB4_m0[25u].z, mad(CB1_m0[0u].z, CB4_m0[25u].x, CB1_m0[1u].z * CB4_m0[25u].y)) + CB1_m0[3u].z) : _3631.z);
            float _3651 = rsqrt(max(dot(float3(_3644, _3645, _3646), float3(_3644, _3645, _3646)), 1.1754943508222875079687365372222e-38f));
            _3676 = _3651 * _3644;
            _3677 = _3651 * _3646;
            _3678 = _3651 * _3645;
        }
        else
        {
            _3676 = asfloat(_3512 ? asuint(_753) : asuint(_653));
            _3677 = asfloat(_3512 ? asuint(_755) : asuint(_655));
            _3678 = asfloat(_3512 ? asuint(_754) : asuint(_654));
        }
        float _3698 = clamp((mad(CB4_m0[156u].w, 2.0f, dot(float3(_481, _482, _483), float3(dot(float2(_3507, _3506), float2(_3676, _3677)), _3678, dot(float2((-0.0f) - _3506, _3507), float2(_3676, _3677))))) + (-1.0f)) / max(CB4_m0[157u].x, 9.9999997473787516355514526367188e-06f), 0.0f, 1.0f);
        float _3726 = mad(_3698, CB4_m0[30u].x + ((-0.0f) - CB4_m0[31u].x), CB4_m0[31u].x);
        float _3727 = mad(_3698, CB4_m0[30u].y + ((-0.0f) - CB4_m0[31u].y), CB4_m0[31u].y);
        float _3728 = mad(_3698, CB4_m0[30u].z + ((-0.0f) - CB4_m0[31u].z), CB4_m0[31u].z);
        float _3729 = mad(_3698, CB4_m0[30u].w + ((-0.0f) - CB4_m0[31u].w), CB4_m0[31u].w);
        bool _3733 = 0.5f < CB4_m0[157u].z;
        float _3738 = asfloat(_3733 ? asuint(_2194) : 1065353216u);
        float _3740 = asfloat(_3733 ? asuint(_2193) : 1065353216u);
        float _3742 = asfloat(_3733 ? asuint(_2192) : 1065353216u);
        float _3743 = _3738 * _3726;
        float _3744 = _3740 * _3727;
        bool _3749 = CB4_m0[157u].y < 0.5f;
        _3657 = asfloat(_3749 ? asuint(mad(_3729, mad(_3726, _3738, (-0.0f) - _3466), _3466)) : asuint(mad(_3729, _3743, _3466)));
        _3659 = asfloat(_3749 ? asuint(mad(_3729, mad(_3727, _3740, (-0.0f) - _3468), _3468)) : asuint(mad(_3729, _3744, _3468)));
        _3661 = asfloat(_3749 ? asuint(mad(_3729, mad(_3728, _3742, (-0.0f) - _3470), _3470)) : asuint(mad(_3729, _3742 * _3728, _3470)));
        _3663 = mad(mad(_3728, _3742, _3744 + _3743), _3729, _3472);
        _3665 = asfloat(0u);
        _3667 = asfloat(0u);
        _3669 = asfloat(0u);
    }
    else
    {
        float _3540 = mad((-0.0f) - CB4_m0[29u].w, CB4_m0[155u].w, 1.0f);
        _3657 = _3466;
        _3659 = _3468;
        _3661 = _3470;
        _3663 = _3472;
        _3665 = (_2984 * mad(_2701, 2.0f, 1.0f)) * _3540;
        _3667 = (_2986 * mad(_2700, 2.0f, 1.0f)) * _3540;
        _3669 = (_2988 * mad(_2699, 2.0f, 1.0f)) * _3540;
    }
    float _3858;
    float _3859;
    float _3860;
    float _3861;
    float _3862;
    float _3863;
    float _3864;
    if (0.5f < CB4_m0[159u].y)
    {
        float _3786 = clamp((((-0.0f) - TEXCOORD_5.z) + CB4_m0[167u].x) * 100.0f, 0.0f, 1.0f) * CB4_m0[159u].z;
        float _3800 = mad(CB4_m0[159u].z, CB4_m0[167u].x, CB4_m0[167u].y + CB4_m0[167u].y);
        float _3806 = clamp((_3800 + ((-0.0f) - TEXCOORD_5.z)) / _3800, 0.0f, 1.0f);
        float _3807 = _3806 * _3806;
        float _3832 = mad(_3786, CB4_m0[113u].x + ((-0.0f) - CB4_m0[114u].x), CB4_m0[114u].x);
        float _3833 = mad(_3786, CB4_m0[113u].y + ((-0.0f) - CB4_m0[114u].y), CB4_m0[114u].y);
        float _3834 = mad(_3786, CB4_m0[113u].z + ((-0.0f) - CB4_m0[114u].z), CB4_m0[114u].z);
        float _3839 = clamp(mad(_3807 * _3807, CB4_m0[159u].w, _3786), 0.0f, 1.0f);
        _3858 = mad(_3839, ((-0.0f) - _3657) + _3832, _3657);
        _3859 = mad(_3839, ((-0.0f) - _3659) + _3833, _3659);
        _3860 = mad(_3839, ((-0.0f) - _3661) + _3834, _3661);
        _3861 = mad(_3834 + (_3833 + _3832), _3839, _3663);
        _3862 = mad(_3839, (-0.0f) - _3665, _3665);
        _3863 = mad(_3839, (-0.0f) - _3667, _3667);
        _3864 = mad(_3839, (-0.0f) - _3669, _3669);
    }
    else
    {
        _3858 = _3657;
        _3859 = _3659;
        _3860 = _3661;
        _3861 = _3663;
        _3862 = _3665;
        _3863 = _3667;
        _3864 = _3669;
    }
    discard_cond(TEXCOORD_5.z < 0.0f);
    float _3971;
    float _3972;
    float _3973;
    float _3974;
    if (0.5f < CB4_m0[153u].w)
    {
        bool _3879 = 0.5f < CB4_m0[158u].y;
        float _3888 = _3879 ? TEXCOORD_1.x : TEXCOORD.x;
        float _3889 = _3879 ? TEXCOORD_1.y : TEXCOORD.y;
        bool _3938 = mad(T14.Sample(S9, float2(mad(_3888, CB4_m0[43u].x, CB4_m0[43u].z), mad(_3889, CB4_m0[43u].y, CB4_m0[43u].w))).x, T5.Sample(S2, float2(mad(_3888, CB4_m0[102u].x, CB4_m0[102u].z), mad(_3889, CB4_m0[102u].y, CB4_m0[102u].w))).x, (-0.0f) - mad(CB4_m0[154u].y, CB4_m0[154u].x + 1.0f, (-0.0f) - CB4_m0[154u].x)) < CB4_m0[154u].x;
        uint4 _3954 = asuint(CB4_m0[100u]);
        _3971 = asfloat(_3938 ? _3954.x : asuint(_3858));
        _3972 = asfloat(_3938 ? _3954.y : asuint(_3859));
        _3973 = asfloat(_3938 ? _3954.z : asuint(_3860));
        _3974 = asfloat(_3938 ? asuint(((CB4_m0[100u].y + CB4_m0[100u].x) + CB4_m0[100u].z) + _3861) : asuint(_3861));
    }
    else
    {
        _3971 = _3858;
        _3972 = _3859;
        _3973 = _3860;
        _3974 = _3861;
    }
    bool _3981 = 0.5f < float(int(asuint(CB4_m0[131u]).y));
    bool _4024 = 0.5f < CB4_m0[130u].x;
    bool _4025 = 0.5f < CB4_m0[130u].y;
    float _4096 = asfloat(_4025 ? asuint(mad(TEXCOORD_1.y, CB4_m0[102u].y, CB4_m0[102u].w)) : asuint(mad(TEXCOORD.y, CB4_m0[102u].y, CB4_m0[102u].w)));
    float _4098 = asfloat(_4025 ? asuint(mad(TEXCOORD_1.x, CB4_m0[102u].x, CB4_m0[102u].z)) : asuint(mad(TEXCOORD.x, CB4_m0[102u].x, CB4_m0[102u].z)));
    bool _4104 = 0.5f < float(int(asuint(CB4_m0[130u]).z));
    bool _4143 = (gl_FrontFacing ? 4294967295u : 0u) != 0u;
    bool _4150 = (gl_FrontFacing ? 4294967295u : 0u) != 0u;
    float4 _4188 = T10.Sample(S5, float2(asfloat(_4104 ? asuint(mad(TEXCOORD_1.x, CB4_m0[41u].x, CB4_m0[41u].z)) : asuint(mad(TEXCOORD.x, CB4_m0[41u].x, CB4_m0[41u].z))), asfloat(_4104 ? asuint(mad(TEXCOORD_1.y, CB4_m0[41u].y, CB4_m0[41u].w)) : asuint(mad(TEXCOORD.y, CB4_m0[41u].y, CB4_m0[41u].w)))));
    float _4190 = _4188.x;
    float _4191 = _4188.y;
    float _4192 = mad(_4143 ? _481 : ((-0.0f) - _481), 0.5f, 0.75f);
    float _4193 = mad(_4143 ? _482 : ((-0.0f) - _482), 0.5f, 0.75f);
    float4 _4229 = T9.Sample(S4, float2(frac(mad(CB4_m0[154u].z, _4190, mad(_653, 0.25f, _4192)) + mad(CB0_m0[40u].y, CB4_m0[116u].x, asfloat(_3981 ? asuint(mad(TEXCOORD_1.x, CB4_m0[56u].x, CB4_m0[56u].z)) : asuint(mad(TEXCOORD.x, CB4_m0[56u].x, CB4_m0[56u].z))))), frac(mad(CB4_m0[154u].z, _4191, mad(_654 + _655, 0.25f, _4193)) + mad(CB0_m0[40u].y, CB4_m0[116u].y, asfloat(_3981 ? asuint(mad(TEXCOORD_1.y, CB4_m0[56u].y, CB4_m0[56u].w)) : asuint(mad(TEXCOORD.y, CB4_m0[56u].y, CB4_m0[56u].w)))))));
    float _4251 = exp2(log2(((-0.0f) - clamp(dot(float3(_4150 ? TEXCOORD_2.x : ((-0.0f) - TEXCOORD_2.x), _4150 ? TEXCOORD_2.y : ((-0.0f) - TEXCOORD_2.y), _4150 ? TEXCOORD_2.z : ((-0.0f) - TEXCOORD_2.z)), float3(_653, _654, _655)), 0.0f, 1.0f)) + 1.0f) * CB4_m0[155u].x);
    float _4256 = _4251 * CB4_m0[120u].w;
    float _4285 = CB0_m0[40u].y * CB4_m0[155u].z;
    float _4286 = sin(_4285);
    float _4287 = cos(_4285);
    uint4 _4302 = asuint(CB4_m0[130u]);
    uint _4303 = _4302.w;
    float _4353 = (dot(float4(T5.Sample(S2, float2(mad(_4098, _4287, (-0.0f) - (_4096 * _4286)), mad(_4096, _4287, _4098 * _4286)))), float4(_92[(_4303 * 4u) + 0u], _92[(_4303 * 4u) + 1u], _92[(_4303 * 4u) + 2u], _92[(_4303 * 4u) + 3u])) * dot(float4(T5.Sample(S2, float2(frac(mad(CB0_m0[40u].y, CB4_m0[118u].x, _4098)), frac(mad(CB0_m0[40u].y, CB4_m0[118u].y, _4096))))), float4(_92[(_4303 * 4u) + 0u], _92[(_4303 * 4u) + 1u], _92[(_4303 * 4u) + 2u], _92[(_4303 * 4u) + 3u]))) * ((((-0.0f) - _4251) + 1.0f) * min(CB4_m0[121u].w, 65000.0f));
    float _4354 = mad(_4353, min(CB4_m0[121u].x, 65000.0f), mad(CB4_m0[115u].x * CB4_m0[115u].w, _4229.x, _4256 * CB4_m0[120u].x));
    float _4355 = mad(_4353, min(CB4_m0[121u].y, 65000.0f), mad(CB4_m0[115u].y * CB4_m0[115u].w, _4229.y, _4256 * CB4_m0[120u].y));
    float _4356 = mad(_4353, min(CB4_m0[121u].z, 65000.0f), mad(CB4_m0[115u].z * CB4_m0[115u].w, _4229.z, _4256 * CB4_m0[120u].z));
    float4 _4371 = T13.Sample(S8, float2(frac((_4192 + _4190) + mad(CB0_m0[40u].y, CB4_m0[117u].x, frac(mad(CB0_m0[40u].y, CB4_m0[117u].x, asfloat(_4024 ? asuint(mad(TEXCOORD_1.x, CB4_m0[55u].x, CB4_m0[55u].z)) : asuint(mad(TEXCOORD.x, CB4_m0[55u].x, CB4_m0[55u].z))))))), frac((_4193 + _4191) + mad(CB0_m0[40u].y, CB4_m0[117u].y, frac(mad(CB0_m0[40u].y, CB4_m0[117u].y, asfloat(_4024 ? asuint(mad(TEXCOORD_1.y, CB4_m0[55u].y, CB4_m0[55u].w)) : asuint(mad(TEXCOORD.y, CB4_m0[55u].y, CB4_m0[55u].w)))))))));
    uint4 _4379 = asuint(CB4_m0[131u]);
    uint _4380 = _4379.x;
    float _4412 = clamp(mad(dot(float4(_4371), float4(_92[(_4380 * 4u) + 0u], _92[(_4380 * 4u) + 1u], _92[(_4380 * 4u) + 2u], _92[(_4380 * 4u) + 3u])) + 0.89999997615814208984375f, 0.4000000059604644775390625f, (-0.0f) - CB4_m0[155u].y) * (1.0f / CB4_m0[154u].w), 0.0f, 1.0f);
    float _4416 = min((_4412 * _4412) * mad(_4412, -2.0f, 3.0f), 1.0f);
    SV_Target.x = mad(_4416, ((-0.0f) - _3971) + _4354, _3971);
    SV_Target.y = mad(_4416, ((-0.0f) - _3972) + _4355, _3972);
    SV_Target.z = mad(_4416, ((-0.0f) - _3973) + _4356, _3973);
    SV_Target_1.x = min(sqrt(max(_3864, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.y = min(sqrt(max(_3863, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.z = min(sqrt(max(_3862, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.w = mad(_4356 + (_4355 + _4354), _4416, _3974) * 0.33329999446868896484375f;
    SV_Target_2.w = ((asfloat((0.5f < float(int(asuint(CB4_m0[132u]).z))) ? asuint(max(exp2(log2(min(sqrt(dot(float2(_230, _231), float2(_230, _231))) / max(CB4_m0[126u].z / ((_257 * (-0.100000001490116119384765625f)) / CB0_m0[160u].z), 1.1754943508222875079687365372222e-38f), 1.0f)) * CB4_m0[126u].w), CB4_m0[133u].x) * CB4_m0[136u].z) : asuint(CB4_m0[136u]).z) * CB4_m0[136u].y) < 0.941176474094390869140625f) ? 1.0f : asfloat((_547 != 0u) ? 1051595899u : 0u);
    SV_Target_3.x = mad(_481, 0.5f, 0.5f);
    SV_Target_3.y = mad(_482, 0.5f, 0.5f);
    SV_Target_3.z = mad(_483, 0.5f, 0.5f);
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
