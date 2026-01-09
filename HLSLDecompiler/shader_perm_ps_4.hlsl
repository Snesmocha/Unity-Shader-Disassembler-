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
    float _414 = asfloat(((_402 != 0u) ? asuint(max((_392 + (-0.20000000298023223876953125f)) * 1.25f, 0.0f)) : asuint(_392)) & _400);
    uint _422 = uint(int(max(((-0.0f) - floor(_375 * 5.0f)) + 4.0f, 0.0f)));
    bool _429 = _422 == asuint(CB4_m0[132u]).y;
    uint _430 = _429 ? 4294967295u : 0u;
    uint _431 = _430 & 1u;
    bool _436 = 0.5f < CB4_m0[136u].w;
    float4 _450 = T2.SampleBias(S0, float2(TEXCOORD.x * CB4_m0[137u].x, TEXCOORD.y * CB4_m0[137u].x), CB0_m0[191u].x);
    float _476 = asfloat(_436 ? asuint(max(mad(_276, CB4_m0[57u].x, _450.x) + (-0.5f), 0.0f)) : asuint(_276 * CB4_m0[57u].x));
    float _478 = asfloat(_436 ? asuint(max(mad(_277, CB4_m0[57u].y, _450.y) + (-0.5f), 0.0f)) : asuint(_277 * CB4_m0[57u].y));
    float _480 = asfloat(_436 ? asuint(max(mad(_278, CB4_m0[57u].z, _450.z) + (-0.5f), 0.0f)) : asuint(_278 * CB4_m0[57u].z));
    bool _481 = _375 < 0.20000000298023223876953125f;
    bool _483 = _375 < 0.4000000059604644775390625f;
    bool _485 = _375 < 0.60000002384185791015625f;
    bool _487 = _375 < 0.800000011920928955078125f;
    float _531 = ((-0.0f) - TEXCOORD_2.w) + CB0_m0[53u].x;
    float _532 = ((-0.0f) - TEXCOORD_3.w) + CB0_m0[53u].y;
    float _533 = ((-0.0f) - TEXCOORD_4.w) + CB0_m0[53u].z;
    float _534 = dot(float3(_531, _532, _533), float3(_531, _532, _533));
    float _539 = rsqrt(max(_534, 1.1754943508222875079687365372222e-38f));
    float _540 = _539 * _531;
    float _541 = _539 * _532;
    float _542 = _539 * _533;
    float _543 = sqrt(_534);
    float _573 = mad(min(clamp((dot(float3(CB3_m0[5u].xyz), float3(_540, _541, _542)) + 0.449999988079071044921875f) * 2.22222232818603515625f, 0.0f, 1.0f), clamp((dot(float3(CB3_m0[6u].xyz), float3(_540, _541, _542)) + (-0.4000000059604644775390625f)) * 1.66666662693023681640625f, 0.0f, 1.0f)), clamp(_385.x, 0.0f, 1.0f) + (-1.0f), 1.0f);
    bool _579 = int(0u) < int(asuint(CB0_m0[188u]).z);
    float _650;
    float _651;
    float _652;
    float _653;
    float _654;
    float _655;
    float _656;
    float _657;
    float _658;
    if (_579)
    {
        uint _590 = uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u)));
        uint _591 = _590 * 32u;
        uint4 _603 = uint4(T1.Load(_591).x, T1.Load(_591 + 1u).x, T1.Load(_591 + 2u).x, T1.Load(_591 + 3u).x);
        uint _614 = (_590 * 32u) + 4u;
        uint4 _626 = uint4(T1.Load(_614).x, T1.Load(_614 + 1u).x, T1.Load(_614 + 2u).x, T1.Load(_614 + 3u).x);
        _650 = asfloat(_603.x);
        _651 = asfloat(_603.y);
        _652 = asfloat(_603.z);
        _653 = asfloat(_603.w);
        _654 = asfloat(_626.x);
        _655 = asfloat(_626.y);
        _656 = asfloat(_626.z);
        _657 = asfloat(T1.Load((_590 * 32u) + 8u).x);
        _658 = asfloat(_626.w);
    }
    else
    {
        _650 = asfloat(0u);
        _651 = asfloat(0u);
        _652 = asfloat(0u);
        _653 = asfloat(0u);
        _654 = asfloat(0u);
        _655 = asfloat(0u);
        _656 = asfloat(0u);
        _657 = asfloat(0u);
        _658 = asfloat(0u);
    }
    float _662 = ((-0.0f) - TEXCOORD_2.w) + _654;
    float _663 = ((-0.0f) - TEXCOORD_3.w) + _655;
    float _664 = ((-0.0f) - TEXCOORD_4.w) + _656;
    float _668 = max(dot(float3(_662, _663, _664), float3(_662, _663, _664)), 1.1754943508222875079687365372222e-38f);
    float _669 = rsqrt(_668);
    float _670 = _669 * _662;
    float _671 = _669 * _663;
    float _672 = _669 * _664;
    float _677 = max(((-0.0f) - (_668 / (_653 * _653))) + 1.0f, 0.0f);
    float _695 = mad(_677, _650 + ((-0.0f) - CB0_m0[189u].x), CB0_m0[189u].x);
    float _696 = mad(_677, _651 + ((-0.0f) - CB0_m0[189u].y), CB0_m0[189u].y);
    float _697 = mad(_677, _652 + ((-0.0f) - CB0_m0[189u].z), CB0_m0[189u].z);
    float _699 = mad(_677, _677 + (-1.0f), 1.0f);
    float _1305;
    float _1306;
    if (0.5f < CB0_m0[22u].x)
    {
        float _748 = mad(_362, CB4_m0[135u].x, TEXCOORD_2.w) + ((-0.0f) - CB3_m0[39u].x);
        float _749 = mad(_363, CB4_m0[135u].x, TEXCOORD_3.w) + ((-0.0f) - CB3_m0[39u].y);
        float _750 = mad(_364, CB4_m0[135u].x, TEXCOORD_4.w) + ((-0.0f) - CB3_m0[39u].z);
        float _786 = mad(CB3_m0[35u].z, _750, mad(CB3_m0[33u].z, _748, _749 * CB3_m0[34u].z)) + CB3_m0[36u].z;
        float _796 = mad(mad(CB3_m0[35u].x, _750, mad(CB3_m0[33u].x, _748, _749 * CB3_m0[34u].x)) + CB3_m0[36u].x, CB3_m0[38u].x, CB3_m0[38u].z);
        float _797 = mad(mad(CB3_m0[35u].y, _750, mad(CB3_m0[33u].y, _748, _749 * CB3_m0[34u].y)) + CB3_m0[36u].y, CB3_m0[38u].y, CB3_m0[38u].w);
        float _880 = ((((((T15.SampleCmpLevelZero(S1, float2(_796 + ((-0.0f) - CB0_m0[200u].x), _797 + ((-0.0f) - CB0_m0[200u].y)), _786).xxxx.x + T15.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, -1.0f, _796), mad(CB0_m0[200u].y, 1.0f, _797)), _786).xxxx.x) + T15.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 1.0f, _796), mad(CB0_m0[200u].y, -1.0f, _797)), _786).xxxx.x) + T15.SampleCmpLevelZero(S1, float2(_796 + CB0_m0[200u].x, _797 + CB0_m0[200u].y), _786).xxxx.x) + T15.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, -1.4142129421234130859375f, _796), mad(CB0_m0[200u].y, 0.0f, _797)), _786).xxxx.x) + T15.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 1.4142129421234130859375f, _796), mad(CB0_m0[200u].y, 0.0f, _797)), _786).xxxx.x) + T15.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 0.0f, _796), mad(CB0_m0[200u].y, -1.4142129421234130859375f, _797)), _786).xxxx.x) + T15.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 0.0f, _796), mad(CB0_m0[200u].y, 1.4142129421234130859375f, _797)), _786).xxxx.x;
        float _903 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[20u].x);
        float _904 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[20u].y);
        float _905 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[20u].z);
        float _915 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[21u].x);
        float _916 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[21u].y);
        float _917 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[21u].z);
        float _926 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[22u].x);
        float _927 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[22u].y);
        float _928 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[22u].z);
        float _938 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[23u].x);
        float _939 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[23u].y);
        float _940 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[23u].z);
        bool _960 = dot(float3(_903, _904, _905), float3(_903, _904, _905)) < CB2_m0[24u].x;
        bool _961 = dot(float3(_915, _916, _917), float3(_915, _916, _917)) < CB2_m0[24u].y;
        bool _962 = dot(float3(_926, _927, _928), float3(_926, _927, _928)) < CB2_m0[24u].z;
        float _994 = ((-0.0f) - dot(float4(asfloat((_960 ? 4294967295u : 0u) & 1065353216u), max(asfloat(_960 ? 3212836864u : 2147483648u) + asfloat((_961 ? 4294967295u : 0u) & 1065353216u), 0.0f), max(asfloat(_961 ? 3212836864u : 2147483648u) + asfloat((_962 ? 4294967295u : 0u) & 1065353216u), 0.0f), max(asfloat(_962 ? 3212836864u : 2147483648u) + asfloat(((dot(float3(_938, _939, _940), float3(_938, _939, _940)) < CB2_m0[24u].w) ? 4294967295u : 0u) & 1065353216u), 0.0f)), float4(4.0f, 3.0f, 2.0f, 1.0f))) + 4.0f;
        uint _996 = uint(_994) << 2u;
        uint _999 = _996 + 1u;
        uint _1018 = _996 + 2u;
        uint _1029 = _996 + 3u;
        float _1035 = mad(CB2_m0[_1018].x, TEXCOORD_4.w, mad(CB2_m0[_996].x, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_999].x)) + CB2_m0[_1029].x;
        float _1036 = mad(CB2_m0[_1018].y, TEXCOORD_4.w, mad(CB2_m0[_996].y, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_999].y)) + CB2_m0[_1029].y;
        float _1037 = mad(CB2_m0[_1018].z, TEXCOORD_4.w, mad(CB2_m0[_996].z, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_999].z)) + CB2_m0[_1029].z;
        float _1051 = frac(sin(dot(float2(frac(_1035 * 1024.0f), frac(_1036 * 1024.0f)), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
        float _1052 = sin(_1051);
        float _1053 = cos(_1051);
        float _1064 = (CB2_m0[26u].x * 1.2999999523162841796875f) * _1052;
        float _1065 = (CB2_m0[26u].x * 1.2999999523162841796875f) * _1053;
        float _1066 = (CB2_m0[26u].y * 1.2999999523162841796875f) * _1052;
        float _1067 = (CB2_m0[26u].y * 1.2999999523162841796875f) * _1053;
        float _1163 = ((((T0.SampleCmpLevelZero(S1, float3(_1035 + ((_1065 * (-0.97829997539520263671875f)) + (_1064 * (-0.172399997711181640625f))), _1036 + ((_1067 * 0.172399997711181640625f) + (_1066 * (-0.97829997539520263671875f))), _994), _1037).xxxx.x + T0.SampleCmpLevelZero(S1, float3(_1035 + ((_1065 * 0.484600007534027099609375f) + (_1064 * 0.874700009822845458984375f)), _1036 + ((_1067 * (-0.874700009822845458984375f)) + (_1066 * 0.484600007534027099609375f)), _994), _1037).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1035 + ((_1065 * (-0.037399999797344207763671875f)) + (_1064 * (-0.96829998493194580078125f))), _1036 + ((_1067 * 0.96829998493194580078125f) + (_1066 * (-0.037399999797344207763671875f))), _994), _1037).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1035 + ((_1065 * 0.419600009918212890625f) + (_1064 * 0.278299987316131591796875f)), _1036 + ((_1067 * (-0.278299987316131591796875f)) + (_1066 * 0.419600009918212890625f)), _994), _1037).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1035 + ((_1065 * 0.83910000324249267578125f) + (_1064 * (-0.1507000029087066650390625f))), _1036 + ((_1067 * (-0.1507000029087066650390625f)) + (_1066 * 0.83910000324249267578125f)), _994), _1037).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1035 + ((_1065 * 0.4792999923229217529296875f) + (_1064 * (-0.6417000293731689453125f))), _1036 + ((_1067 * (-0.6417000293731689453125f)) + (_1066 * 0.4792999923229217529296875f)), _994), _1037).xxxx.x;
        float _1244 = (((((_1163 + T0.SampleCmpLevelZero(S1, float3(_1035 + ((_1065 * (-0.81610000133514404296875f)) + (_1064 * 0.577899992465972900390625f)), _1036 + ((_1067 * 0.577899992465972900390625f) + (_1066 * (-0.81610000133514404296875f))), _994), _1037).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1035 + ((_1065 * (-0.4587999880313873291015625f)) + (_1064 * (-0.5408999919891357421875f))), _1036 + ((_1067 * 0.5408999919891357421875f) + (_1066 * (-0.4587999880313873291015625f))), _994), _1037).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1035 + ((_1065 * (-0.19189999997615814208984375f)) + (_1064 * 0.704400002956390380859375f)), _1036 + ((_1067 * 0.704400002956390380859375f) + (_1066 * (-0.19189999997615814208984375f))), _994), _1037).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1035 + ((_1065 * (-0.446399986743927001953125f)) + (_1064 * 0.105300001800060272216796875f)), _1036 + ((_1067 * 0.105300001800060272216796875f) + (_1066 * (-0.446399986743927001953125f))), _994), _1037).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1035 + ((_1065 * 0.06610000133514404296875f) + (_1064 * (-0.20659999549388885498046875f))), _1036 + ((_1067 * (-0.20659999549388885498046875f)) + (_1066 * 0.06610000133514404296875f)), _994), _1037).xxxx.x) * CB2_m0[25u].x;
        float _1269 = clamp(mad(_657, 2.0f, -1.0f), 0.0f, 1.0f);
        float _1273 = _1269 * CB0_m0[189u].w;
        float _1283 = (asfloat(((((0.0f >= _1037) ? 4294967295u : 0u) | ((_1037 >= 1.0f) ? 4294967295u : 0u)) != 0u) ? 1065353216u : asuint(mad(_1244, 0.090899996459484100341796875f, ((-0.0f) - CB2_m0[25u].x) + 1.0f))) * mad(CB3_m0[40u].y, ((-0.0f) - _658) + 1.0f, _658)) * asfloat((0.5f < CB3_m0[37u].x) ? asuint(min(mad(_1269, (asfloat(_481 ? asuint(CB4_m0[163u]).w : (_483 ? asuint(CB4_m0[163u]).z : (_485 ? asuint(CB4_m0[163u]).y : (_487 ? asuint(CB4_m0[163u]).x : asuint(CB4_m0[162u]).w)))) * mad(_880 + T15.SampleCmpLevelZero(S1, float2(_796, _797), _786).xxxx.x, 0.11110000312328338623046875f, -1.0f)) * CB3_m0[37u].x, 1.0f), 1.0f)) : 1065353216u);
        _1305 = mad(_1283, _1273 * CB4_m0[133u].z, mad((-0.0f) - _1273, CB4_m0[133u].z, 1.0f));
        _1306 = mad(_1283, CB4_m0[133u].z, ((-0.0f) - CB4_m0[133u].z) + 1.0f);
    }
    else
    {
        _1305 = asfloat(1065353216u);
        _1306 = asfloat(1065353216u);
    }
    float _1312 = clamp(CB3_m0[1u].w * 2.5f, 0.0f, 1.0f);
    float _1315 = mad(((-0.0f) - _1312) + 1.0f, _1305, _1312);
    bool _1319 = CB3_m0[3u].w != 0.0f;
    float _1333 = clamp(dot(float3(CB3_m0[3u].xyz), float3(TEXCOORD_2.w, TEXCOORD_3.w, TEXCOORD_4.w)) + ((-0.0f) - CB3_m0[3u].w), 0.0f, 1.0f);
    float _1384 = asfloat(_1319 ? asuint(mad(_1333, ((-0.0f) - _695) + mad(CB0_m0[15u].w, mad((-0.0f) - _695, CB0_m0[15u].x, _695 + CB0_m0[15u].x), _695 * CB0_m0[15u].x), _695)) : asuint(_695));
    float _1386 = asfloat(_1319 ? asuint(mad(_1333, ((-0.0f) - _696) + mad(CB0_m0[15u].w, mad((-0.0f) - _696, CB0_m0[15u].y, _696 + CB0_m0[15u].y), _696 * CB0_m0[15u].y), _696)) : asuint(_696));
    float _1388 = asfloat(_1319 ? asuint(mad(_1333, ((-0.0f) - _697) + mad(CB0_m0[15u].w, mad((-0.0f) - _697, CB0_m0[15u].z, _697 + CB0_m0[15u].z), _697 * CB0_m0[15u].z), _697)) : asuint(_697));
    float _1389 = max(asfloat(_481 ? asuint(CB4_m0[134u]).w : (_483 ? asuint(CB4_m0[134u]).z : (_485 ? asuint(CB4_m0[134u]).y : (_487 ? asuint(CB4_m0[134u]).x : asuint(CB4_m0[133u]).w)))), 9.9999997473787516355514526367188e-06f);
    float _1391 = 1.0f / _1389;
    float _1392 = dot(float3(_362, _363, _364), float3(_670, _671, _672));
    float _1409 = mad(mad(clamp(_303.z, 0.0f, 1.0f), 2.0f, -1.0f), 2.0f, mad(TEXCOORD_7.y, ((-0.0f) - _1392) + mad(_1392 + 1.0f, clamp(mad((-0.0f) - min(_671 * 3.0f, 1.0f), 0.5f, _363) + 1.5f, 0.0f, 1.0f), -1.0f), _1392));
    float _1424 = mad((-0.0f) - _1389, 3.0f, 2.0f);
    float _1425 = ((_1409 * 3.0f) + 3.0f) / _1424;
    float _1426 = (mad(_1409, 3.0f, (-0.0f) - (_1389 * 1.5f)) + 1.0f) / _1424;
    float _1427 = (mad(_1409, 3.0f, (-0.0f) - (_1389 * 4.5f)) + (-1.0f)) / _1424;
    float _1439 = mad(_1391, _1409 + 0.33329999446868896484375f, 0.5f);
    float _1440 = mad(_1391, _1409 + (-0.33329999446868896484375f), 0.5f);
    float _1441 = mad(_1391, _1409 + (-0.33329999446868896484375f), -0.5f);
    float _1452 = clamp(((-0.0f) - _1425) + 1.0f, 0.0f, 1.0f);
    float _1453 = clamp(min(_1425, ((-0.0f) - _1439) + 1.0f), 0.0f, 1.0f);
    float _1454 = clamp(min(((-0.0f) - _1426) + 1.0f, _1439), 0.0f, 1.0f);
    float _1458 = clamp(min(((-0.0f) - _1427) + 1.0f, _1441), 0.0f, 1.0f);
    float _1459 = clamp(_1427, 0.0f, 1.0f);
    float _1465 = mad(CB3_m0[40u].y, ((-0.0f) - _1315) + _1306, _1315);
    float _1472 = clamp(min(mad(_1465, -2.0f, 2.0f), mad(_1465, 2.0f, 0.0f)), 0.0f, 1.0f);
    float _1473 = clamp(mad(_1465, 2.0f, -1.0f), 0.0f, 1.0f);
    float _1474 = clamp(mad(_1465, -2.0f, 1.0f), 0.0f, 1.0f);
    float _1546;
    float _1548;
    float _1550;
    if (0.5f < CB3_m0[40u].y)
    {
        float _1513;
        if (_579)
        {
            _1513 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _1513 = asfloat(0u);
        }
        float _1517 = _1513 * CB0_m0[189u].w;
        float _1518 = _1517 * _1472;
        float _1524 = (mad((-0.0f) - _1472, _1517, _1472) + mad((-0.0f) - _1474, _1517, _1474)) + _1473;
        float _1861;
        if (_579)
        {
            _1861 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 7u).x);
        }
        else
        {
            _1861 = asfloat(0u);
        }
        _1546 = _1861 * _1518;
        _1548 = _1861 * _1524;
        _1550 = mad(_1474, _1517, mad((-0.0f) - _1524, _1861, _1524) + mad((-0.0f) - _1518, _1861, _1518));
    }
    else
    {
        float _1525;
        if (_579)
        {
            _1525 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _1525 = asfloat(0u);
        }
        _1546 = _1525 * _1472;
        _1548 = _1473;
        _1550 = _1525 * _1474;
    }
    float _1558 = mad(_1550, ((-0.0f) - _1454) + (((-0.0f) - _1453) + (((-0.0f) - _1452) + 1.0f)), _1454);
    float _1559 = _1548 + _1546;
    float _1560 = _1559 * clamp(min(_1426, ((-0.0f) - _1440) + 1.0f), 0.0f, 1.0f);
    float _1563 = mad(_1459 + _1458, _1546, _1559 * clamp(min(_1440, ((-0.0f) - _1441) + 1.0f), 0.0f, 1.0f));
    float _1564 = _1458 * _1548;
    float _1567 = _1452 * TEXCOORD_7.x;
    float _1572 = mad((-0.0f) - _1452, TEXCOORD_7.x, _1452) + _1453;
    uint4 _1576 = asuint(CB4_m0[60u]);
    uint4 _1583 = asuint(CB4_m0[59u]);
    uint4 _1593 = asuint(CB4_m0[61u]);
    uint4 _1603 = asuint(CB4_m0[62u]);
    uint4 _1613 = asuint(CB4_m0[63u]);
    uint4 _1626 = asuint(CB4_m0[65u]);
    uint4 _1633 = asuint(CB4_m0[64u]);
    uint4 _1643 = asuint(CB4_m0[66u]);
    uint4 _1653 = asuint(CB4_m0[67u]);
    uint4 _1663 = asuint(CB4_m0[68u]);
    uint4 _1676 = asuint(CB0_m0[10u]);
    uint4 _1682 = asuint(CB0_m0[3u]);
    uint4 _1695 = asuint(CB0_m0[11u]);
    uint4 _1701 = asuint(CB0_m0[4u]);
    uint4 _1714 = asuint(CB0_m0[12u]);
    uint4 _1720 = asuint(CB0_m0[5u]);
    uint4 _1733 = asuint(CB0_m0[9u]);
    uint4 _1739 = asuint(CB0_m0[6u]);
    uint4 _1752 = asuint(CB0_m0[13u]);
    uint4 _1758 = asuint(CB0_m0[7u]);
    uint4 _1771 = asuint(CB0_m0[14u]);
    uint4 _1777 = asuint(CB0_m0[8u]);
    float _1786 = min(_543 * 0.4372499883174896240234375f, 1.0f);
    float _1802 = mad(CB4_m0[133u].y, mad(_1786, CB3_m0[1u].w, (-0.0f) - _1786) + 1.0f, 0.0f);
    float _1803 = mad(CB4_m0[133u].y, mad((-0.0f) - _1786, CB3_m0[1u].w, _1786) + (-1.0f), 1.0f);
    float _1804 = asfloat(_481 ? _1613.x : (_483 ? _1603.x : (_485 ? _1593.x : (_487 ? _1576.x : _1583.x)))) + 6.103515625e-05f;
    float _1806 = asfloat(_481 ? _1613.y : (_483 ? _1603.y : (_485 ? _1593.y : (_487 ? _1576.y : _1583.y)))) + 6.103515625e-05f;
    float _1807 = asfloat(_481 ? _1613.z : (_483 ? _1603.z : (_485 ? _1593.z : (_487 ? _1576.z : _1583.z)))) + 6.103515625e-05f;
    float _1810 = (_1807 + (_1806 + _1804)) * 0.3333300054073333740234375f;
    float _1821 = mad(clamp(_1804 / _1810, 0.0f, 1.0f), _1802, _1803 * _1804);
    float _1822 = mad(clamp(_1806 / _1810, 0.0f, 1.0f), _1802, _1803 * _1806);
    float _1823 = mad(clamp(_1807 / _1810, 0.0f, 1.0f), _1802, _1803 * _1807);
    float _1824 = asfloat(_481 ? _1663.x : (_483 ? _1653.x : (_485 ? _1643.x : (_487 ? _1626.x : _1633.x)))) + 6.103515625e-05f;
    float _1825 = asfloat(_481 ? _1663.y : (_483 ? _1653.y : (_485 ? _1643.y : (_487 ? _1626.y : _1633.y)))) + 6.103515625e-05f;
    float _1826 = asfloat(_481 ? _1663.z : (_483 ? _1653.z : (_485 ? _1643.z : (_487 ? _1626.z : _1633.z)))) + 6.103515625e-05f;
    float _1829 = (_1826 + (_1825 + _1824)) * 0.3333300054073333740234375f;
    float _1839 = mad(clamp(_1824 / _1829, 0.0f, 1.0f), _1802, _1803 * _1824);
    float _1840 = mad(clamp(_1825 / _1829, 0.0f, 1.0f), _1802, _1803 * _1825);
    float _1841 = mad(clamp(_1826 / _1829, 0.0f, 1.0f), _1802, _1803 * _1826);
    float _1884;
    if (_579)
    {
        _1884 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
    }
    else
    {
        _1884 = asfloat(0u);
    }
    float _1887 = mad(_1884, ((-0.0f) - _699) + 1.0f, _699);
    float _1888 = _1887 * _1384;
    float _1889 = _1887 * _1386;
    float _1890 = _1887 * _1388;
    float _1891 = min(1.0f / max(_1388 + 1.1754943508222875079687365372222e-38f, max(_1386 + 1.1754943508222875079687365372222e-38f, _1384 + 1.1754943508222875079687365372222e-38f)), 1.0f);
    float _1919 = mad(_1888, mad(_1459, _1548, mad(asfloat(_429 ? _1752.x : _1758.x), _1563, _1564 * asfloat(_429 ? _1733.x : _1739.x))), (_1891 * _1888) * mad(asfloat(_429 ? _1676.x : _1682.x) * _1821, _1560, mad(asfloat(_429 ? _1695.x : _1701.x) * _1821, _1558, mad(asfloat(_429 ? _1771.x : _1777.x) * _1839, _1567, _1572 * (asfloat(_429 ? _1714.x : _1720.x) * _1839)))));
    float _1920 = mad(_1889, mad(_1459, _1548, mad(asfloat(_429 ? _1752.y : _1758.y), _1563, _1564 * asfloat(_429 ? _1733.y : _1739.y))), (_1891 * _1889) * mad(asfloat(_429 ? _1676.y : _1682.y) * _1822, _1560, mad(asfloat(_429 ? _1695.y : _1701.y) * _1822, _1558, mad(asfloat(_429 ? _1771.y : _1777.y) * _1840, _1567, _1572 * (asfloat(_429 ? _1714.y : _1720.y) * _1840)))));
    float _1921 = mad(_1890, mad(_1459, _1548, mad(asfloat(_429 ? _1752.z : _1758.z), _1563, _1564 * asfloat(_429 ? _1733.z : _1739.z))), (_1891 * _1890) * mad(asfloat(_429 ? _1676.z : _1682.z) * _1823, _1560, mad(asfloat(_429 ? _1695.z : _1701.z) * _1823, _1558, mad(asfloat(_429 ? _1771.z : _1777.z) * _1841, _1567, _1572 * (asfloat(_429 ? _1714.z : _1720.z) * _1841)))));
    float _1932;
    float _1934;
    float _1936;
    if (CB0_m0[22u].z >= 0.5f)
    {
        float _1933;
        float _1935;
        float _1937;
        if (CB4_m0[_422 + 10u].x < 50.0f)
        {
            float _1985 = mad(mad(CB0_m0[118u].x, _364, mad(CB0_m0[116u].x, _362, _363 * CB0_m0[117u].x)), 0.5f, 0.5f);
            float _1986 = mad(mad(CB0_m0[118u].y, _364, mad(CB0_m0[116u].y, _362, _363 * CB0_m0[117u].y)), 0.5f, 0.5f);
            float _2294;
            float _2295;
            if (0.5f < CB4_m0[_422 + 15u].z)
            {
                float _2277 = _573 * CB4_m0[_422 + 15u].w;
                _2294 = mad(_2277, _1985, mad(CB4_m0[_422].x, TEXCOORD.x, CB4_m0[_422].z));
                _2295 = mad(_2277, _1986, mad(CB4_m0[_422].y, TEXCOORD.y, CB4_m0[_422].w));
            }
            else
            {
                _2294 = _1985;
                _2295 = _1986;
            }
            float4 _2322 = T7.Sample(S2, float3(_2294 + (CB0_m0[40u].y * CB4_m0[_422 + 10u].w), _2295 + (CB0_m0[40u].y * CB4_m0[_422 + 15u].x), asfloat(asuint(CB4_m0[_422 + 10u]).x)));
            float _2324 = _2322.x;
            float _2325 = _2322.y;
            float _2326 = _2322.z;
            uint _2328 = _422 + 5u;
            float _2334 = _2324 * CB4_m0[_2328].x;
            float _2335 = _2325 * CB4_m0[_2328].y;
            float _2336 = _2326 * CB4_m0[_2328].z;
            float _2337 = mad(asfloat(((CB4_m0[144u].y >= 0.5f) ? 4294967295u : 0u) & 1065353216u), asfloat((_402 != 0u) ? asuint(min(_392 * 5.099999904632568359375f, 1.0f) * asfloat(((0.20000000298023223876953125f >= _392) ? 4294967295u : 0u) & 1065353216u)) : asuint(_392)) + (-1.0f), 1.0f) * _2322.w;
            float _1992;
            float _1993;
            float _1994;
            if (CB4_m0[_422 + 15u].y < 0.5f)
            {
                float _2643 = clamp(_2337 * CB4_m0[_422 + 10u].z, 0.0f, 1.0f);
                uint _2644 = _422 + 10u;
                _1992 = mad(_2643, mad(_2336, CB4_m0[_2644].y, (-0.0f) - _480), _480);
                _1993 = mad(_2643, mad(_2335, CB4_m0[_2644].y, (-0.0f) - _478), _478);
                _1994 = mad(_2643, mad(_2334, CB4_m0[_2644].y, (-0.0f) - _476), _476);
            }
            else
            {
                float _2670;
                float _2671;
                float _2672;
                if (CB4_m0[_422 + 15u].y < 1.5f)
                {
                    float _2678 = clamp(_2337 * CB4_m0[_422 + 10u].z, 0.0f, 1.0f);
                    uint _2682 = _422 + 10u;
                    _2670 = mad(_2678 * _2336, CB4_m0[_2682].y, _480);
                    _2671 = mad(_2678 * _2335, CB4_m0[_2682].y, _478);
                    _2672 = mad(_2678 * _2334, CB4_m0[_2682].y, _476);
                }
                else
                {
                    uint _2689 = _422 + 5u;
                    uint _2698 = _422 + 10u;
                    float _2713 = clamp(_2337 * CB4_m0[_422 + 10u].z, 0.0f, 1.0f);
                    float _2717 = mad(_2713, clamp(mad(mad(_2324, CB4_m0[_2689].x, -0.5f), CB4_m0[_2698].y, _2334), 0.0f, 1.0f) + (-0.5f), 0.5f);
                    float _2718 = mad(_2713, clamp(mad(mad(_2325, CB4_m0[_2689].y, -0.5f), CB4_m0[_2698].y, _2335), 0.0f, 1.0f) + (-0.5f), 0.5f);
                    float _2719 = mad(_2713, clamp(mad(mad(_2326, CB4_m0[_2689].z, -0.5f), CB4_m0[_2698].y, _2336), 0.0f, 1.0f) + (-0.5f), 0.5f);
                    float _2720 = _476 * _2717;
                    float _2721 = _478 * _2718;
                    float _2722 = _480 * _2719;
                    float _2729 = ((-0.0f) - _476) + 1.0f;
                    float _2730 = ((-0.0f) - _478) + 1.0f;
                    float _2731 = ((-0.0f) - _480) + 1.0f;
                    _2670 = mad(asfloat(((_480 >= 0.5f) ? 4294967295u : 0u) & 1065353216u), mad((-0.0f) - _2722, 2.0f, mad((-0.0f) - (_2731 + _2731), ((-0.0f) - _2719) + 1.0f, 1.0f)), _2722 + _2722);
                    _2671 = mad(asfloat(((_478 >= 0.5f) ? 4294967295u : 0u) & 1065353216u), mad((-0.0f) - _2721, 2.0f, mad((-0.0f) - (_2730 + _2730), ((-0.0f) - _2718) + 1.0f, 1.0f)), _2721 + _2721);
                    _2672 = mad(asfloat(((_476 >= 0.5f) ? 4294967295u : 0u) & 1065353216u), mad((-0.0f) - _2720, 2.0f, mad((-0.0f) - (_2729 + _2729), ((-0.0f) - _2717) + 1.0f, 1.0f)), _2720 + _2720);
                }
                _1992 = _2670;
                _1993 = _2671;
                _1994 = _2672;
            }
            _1933 = _1992;
            _1935 = _1993;
            _1937 = _1994;
        }
        else
        {
            _1933 = _480;
            _1935 = _478;
            _1937 = _476;
        }
        _1932 = _1933;
        _1934 = _1935;
        _1936 = _1937;
    }
    else
    {
        _1932 = _480;
        _1934 = _478;
        _1936 = _476;
    }
    bool _1940 = 0.5f < TEXCOORD_7.z;
    float _2110;
    float _2111;
    float _2112;
    if (_430 == 0u)
    {
        float _2004 = dot(float3(_1936, _1934, _1932), float3(0.2899999916553497314453125f, 0.60000002384185791015625f, 0.10999999940395355224609375f));
        bool _2011 = TEXCOORD_7.z < 0.5f;
        float _2012 = mad(_2004, 0.2874999940395355224609375f, 1.4375f);
        float _2015 = mad(_2004, 0.4000000059604644775390625f, 1.0f);
        float _2016 = dot(float3(_670, _671, _672), float3(_1940 ? _362 : TEXCOORD_2.x, _1940 ? _363 : TEXCOORD_2.y, _1940 ? _364 : TEXCOORD_2.z));
        float _2023 = clamp(mad((-0.0f) - (((-0.0f) - _1392) + _2016), 3.0f, 1.0f), 0.0f, 1.0f);
        float _2029 = clamp(_1392, 0.0f, 1.0f);
        float _2033 = clamp(_2016, 0.0f, 1.0f);
        float _2035 = max(_1936, max(_1932, _1934));
        bool _2036 = 1.0f < _2035;
        float _2054 = mad(mad(mad(mad(_1392, 0.5f, 0.5f), min(sqrt(_2023) * (_2023 + _2023), 1.0f), (-0.0f) - _2029), 0.5f, _2029), ((-0.0f) - _2012) + 1.0f, _2012);
        float _2061 = exp2(_2054 * log2(asfloat(_2036 ? asuint(_1936 / _2035) : asuint(_1936))));
        float _2062 = exp2(_2054 * log2(asfloat(_2036 ? asuint(_1934 / _2035) : asuint(_1934))));
        float _2063 = exp2(_2054 * log2(asfloat(_2036 ? asuint(_1932 / _2035) : asuint(_1932))));
        float _2070 = mad(((-0.0f) - _1936) + _2061, 0.5f, _1936);
        float _2071 = mad(((-0.0f) - _1934) + _2062, 0.5f, _1934);
        float _2072 = mad(((-0.0f) - _1932) + _2063, 0.5f, _1932);
        float _2083 = mad((-0.0f) - _2004, 0.0500000007450580596923828125f, 1.0499999523162841796875f);
        _2110 = asfloat(_2011 ? asuint(mad(_2033, _2063 + ((-0.0f) - _2072), _2072)) : asuint(_2083 * exp2(log2(_1932) * _2015)));
        _2111 = asfloat(_2011 ? asuint(mad(_2033, _2062 + ((-0.0f) - _2071), _2071)) : asuint(_2083 * exp2(log2(_1934) * _2015)));
        _2112 = asfloat(_2011 ? asuint(mad(_2033, _2061 + ((-0.0f) - _2070), _2070)) : asuint(_2083 * exp2(log2(_1936) * _2015)));
    }
    else
    {
        _2110 = _1932;
        _2111 = _1934;
        _2112 = _1936;
    }
    float _2114 = mad((-0.0f) - _380, 0.959999978542327880859375f, 0.959999978542327880859375f);
    float _2116 = _2112 * _2114;
    float _2117 = _2111 * _2114;
    float _2118 = _2110 * _2114;
    float _2123 = mad(_380, _2112 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _2125 = mad(_380, _2111 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _2126 = mad(_380, _2110 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _2131 = mad((-0.0f) - _391, CB4_m0[137u].w, 1.0f);
    float _2132 = _2131 * _2131;
    float _2153 = dot(float3((_1919 + CB0_m0[2u].x) + TEXCOORD_8.x, (_1920 + CB0_m0[2u].y) + TEXCOORD_8.y, (_1921 + CB0_m0[2u].z) + TEXCOORD_8.z), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2167 = ((-0.0f) - CB0_m0[19u].x) + CB0_m0[19u].y;
    float _2168 = 1.0f / _2167;
    float _2191 = asfloat((_2153 < CB0_m0[19u].x) ? asuint(_2153) : asuint(mad((-0.0f) - _2167, 1.0f / mad(_2153, _2168, mad((-0.0f) - CB0_m0[19u].x, _2168, 1.0f)), CB0_m0[19u].y))) / (_2153 + 9.9999997473787516355514526367188e-05f);
    float _2192 = _1919 * _2191;
    float _2193 = _1920 * _2191;
    float _2194 = _1921 * _2191;
    uint4 _2198 = asuint(CB4_m0[75u]);
    uint4 _2205 = asuint(CB4_m0[74u]);
    uint4 _2215 = asuint(CB4_m0[76u]);
    uint4 _2225 = asuint(CB4_m0[77u]);
    uint4 _2235 = asuint(CB4_m0[78u]);
    float _2271 = asfloat(_481 ? asuint(CB4_m0[142u]).y : (_483 ? asuint(CB4_m0[142u]).x : (_485 ? asuint(CB4_m0[141u]).w : (_487 ? asuint(CB4_m0[141u]).z : asuint(CB4_m0[141u]).y))));
    float _2393;
    if (0.5f < _2271)
    {
        float _2344 = clamp(mad(_1409, 1.5f, -0.5f), 0.0f, 1.0f);
        float _2371 = mad(_662, _669, _540);
        float _2372 = mad(_663, _669, _541);
        float _2373 = mad(_664, _669, _542);
        float _2377 = rsqrt(dot(float3(_2371, _2372, _2373), float3(_2371, _2372, _2373)));
        _2393 = clamp((((-0.0f) - mad((-0.0f) - (_2344 * _2344), clamp(dot(float3(_362, _363, _364), float3(_2371 * _2377, _2372 * _2377, _2373 * _2377)), 0.0f, 1.0f), 1.0f)) + _374) / max(asfloat(_481 ? asuint(CB4_m0[143u]).z : (_483 ? asuint(CB4_m0[143u]).y : (_485 ? asuint(CB4_m0[143u]).x : (_487 ? asuint(CB4_m0[142u]).w : asuint(CB4_m0[142u]).z)))), 9.9999997473787516355514526367188e-06f), 0.0f, 1.0f);
    }
    else
    {
        _2393 = _374;
    }
    float _2397 = _2393 * CB4_m0[143u].w;
    float _2405 = mad(_662, _669, _540);
    float _2406 = mad(_663, _669, _541);
    float _2407 = mad(_664, _669, _542);
    float _2411 = rsqrt(dot(float3(_2405, _2406, _2407), float3(_2405, _2406, _2407)));
    float _2412 = _2411 * _2405;
    float _2413 = _2411 * _2406;
    float _2414 = _2411 * _2407;
    float _2440 = asfloat(_481 ? asuint(CB4_m0[141u]).x : (_483 ? asuint(CB4_m0[140u]).w : (_485 ? asuint(CB4_m0[140u]).z : (_487 ? asuint(CB4_m0[140u]).y : asuint(CB4_m0[140u]).x))));
    float _2445 = clamp(mad(_1392 * _2440, 0.75f, 0.25f), 0.0f, 1.0f);
    float _2451 = clamp(mad(_2440 * dot(float3(_362, _363, _364), float3(_2412, _2413, _2414)), 0.75f, 0.25f), 0.0f, 1.0f);
    float _2457 = clamp(mad(_2440 * dot(float3(_670, _671, _672), float3(_2412, _2413, _2414)), 0.75f, 0.25f), 0.0f, 1.0f);
    float _2459 = mad(_2451 * _2451, mad(_2132, _2132, -1.0f), 1.000010013580322265625f);
    float _2463 = max(_2457 * _2457, 0.100000001490116119384765625f);
    float _2533 = (((_2445 * clamp(mad((-0.0f) - _391, CB4_m0[137u].w, (_2132 * _2132) / (mad(_2132, 4.0f, 2.0f) * (_2463 * (_2459 * _2459)))), 0.0f, 1.0f)) / max(_2132, 9.9999997473787516355514526367188e-06f)) * (asfloat(_481 ? asuint(CB4_m0[139u]).w : (_483 ? asuint(CB4_m0[139u]).z : (_485 ? asuint(CB4_m0[139u]).y : (_487 ? asuint(CB4_m0[139u]).x : asuint(CB4_m0[138u]).w)))) * asfloat(_481 ? asuint(CB4_m0[166u]).w : (_483 ? asuint(CB4_m0[166u]).z : (_485 ? asuint(CB4_m0[166u]).y : (_487 ? asuint(CB4_m0[166u]).x : asuint(CB4_m0[165u]).w)))))) * 10.0f;
    float _2546 = asfloat((_2271 < 0.5f) ? asuint(clamp(_2533, 0.0f, 1.0f) * 100.0f) : asuint((_2445 * min(0.16666333377361297607421875f / _2463, 1.0f)) * 100.0f));
    float _2547 = (_2123 * (asfloat(_481 ? _2235.x : (_483 ? _2225.x : (_485 ? _2215.x : (_487 ? _2198.x : _2205.x)))) * _2397)) * _2546;
    float _2548 = (_2125 * (asfloat(_481 ? _2235.y : (_483 ? _2225.y : (_485 ? _2215.y : (_487 ? _2198.y : _2205.y)))) * _2397)) * _2546;
    float _2549 = (_2126 * (asfloat(_481 ? _2235.z : (_483 ? _2225.z : (_485 ? _2215.z : (_487 ? _2198.z : _2205.z)))) * _2397)) * _2546;
    uint _2566 = (CB4_m0[144u].x >= 0.5f) ? 4294967295u : 0u;
    uint4 _2570 = asuint(CB4_m0[80u]);
    uint4 _2577 = asuint(CB4_m0[79u]);
    uint4 _2587 = asuint(CB4_m0[81u]);
    uint4 _2597 = asuint(CB4_m0[82u]);
    uint4 _2607 = asuint(CB4_m0[83u]);
    float _2627 = asfloat(_2566 & asuint(_2112 * (_414 * asfloat(_481 ? _2607.x : (_483 ? _2597.x : (_485 ? _2587.x : (_487 ? _2570.x : _2577.x)))))));
    float _2629 = asfloat(_2566 & asuint(_2111 * (_414 * asfloat(_481 ? _2607.y : (_483 ? _2597.y : (_485 ? _2587.y : (_487 ? _2570.y : _2577.y)))))));
    float _2631 = asfloat(_2566 & asuint(_2110 * (_414 * asfloat(_481 ? _2607.z : (_483 ? _2597.z : (_485 ? _2587.z : (_487 ? _2570.z : _2577.z)))))));
    float _2633 = _2631 + (_2629 + _2627);
    float _2871;
    float _2873;
    float _2875;
    if (0.0f < CB3_m0[2u].y)
    {
        float _2665 = min(CB3_m0[2u].y, 2.0f);
        float _2991;
        float _2992;
        float _2993;
        float _2994;
        float _2995;
        float _2996;
        if (0.0f < _2665)
        {
            float _2776 = ((-0.0f) - TEXCOORD_2.w) + CB3_m0[25u].x;
            float _2777 = ((-0.0f) - TEXCOORD_3.w) + CB3_m0[25u].y;
            float _2778 = ((-0.0f) - TEXCOORD_4.w) + CB3_m0[25u].z;
            float _2779 = dot(float3(_2776, _2777, _2778), float3(_2776, _2777, _2778));
            float _2782 = max(_2779, 1.1754943508222875079687365372222e-38f);
            float _2783 = rsqrt(_2782);
            float _2790 = _2782 * CB3_m0[27u].x;
            bool _2794 = (-0.5f) < CB3_m0[27u].y;
            uint _2802 = _2794 ? asuint(_2790 * _2790) : asuint(_2790);
            float _2816 = clamp(((-0.0f) - asfloat((CB3_m0[27u].y < (-1.5f)) ? (((asfloat(_2802) >= 1.0f) ? 4294967295u : 0u) & 1065353216u) : _2802)) + 1.0f, 0.0f, 1.0f);
            float _2834 = clamp(mad(dot(float3(CB3_m0[26u].xyz), float3(_2783 * _2776, _2783 * _2777, _2783 * _2778)), CB3_m0[27u].z, CB3_m0[27u].w), 0.0f, 1.0f);
            float _2836 = ((_2816 * _2816) * asfloat(_2794 ? asuint(1.0f / _2782) : 1065353216u)) * (_2834 * _2834);
            float _2842 = _2836 * CB3_m0[28u].x;
            float _2843 = _2836 * CB3_m0[28u].y;
            float _2844 = _2836 * CB3_m0[28u].z;
            float _2846 = max(_2844, max(_2843, _2842));
            float _2847 = _2846 + 6.103515625e-05f;
            float _2848 = rsqrt(_2779);
            float _2855 = dot(float3(_362, _363, _364), float3(_2848 * _2776, _2848 * _2777, _2848 * _2778)) * _2846;
            float _2859 = _2846 / CB3_m0[25u].w;
            float _2860 = _2846 * _2842;
            float _2861 = _2846 * _2843;
            float _2862 = _2846 * _2844;
            float _2985;
            float _2986;
            float _2987;
            float _2988;
            float _2989;
            float _2990;
            if (1.0f < _2665)
            {
                float _2897 = ((-0.0f) - TEXCOORD_2.w) + CB3_m0[29u].x;
                float _2898 = ((-0.0f) - TEXCOORD_3.w) + CB3_m0[29u].y;
                float _2899 = ((-0.0f) - TEXCOORD_4.w) + CB3_m0[29u].z;
                float _2900 = dot(float3(_2897, _2898, _2899), float3(_2897, _2898, _2899));
                float _2903 = max(_2900, 1.1754943508222875079687365372222e-38f);
                float _2904 = rsqrt(_2903);
                float _2911 = _2903 * CB3_m0[31u].x;
                bool _2915 = (-0.5f) < CB3_m0[31u].y;
                uint _2923 = _2915 ? asuint(_2911 * _2911) : asuint(_2911);
                float _2936 = clamp(((-0.0f) - asfloat((CB3_m0[31u].y < (-1.5f)) ? (((asfloat(_2923) >= 1.0f) ? 4294967295u : 0u) & 1065353216u) : _2923)) + 1.0f, 0.0f, 1.0f);
                float _2955 = clamp(mad(dot(float3(CB3_m0[30u].xyz), float3(_2904 * _2897, _2904 * _2898, _2904 * _2899)), CB3_m0[31u].z, CB3_m0[31u].w), 0.0f, 1.0f);
                float _2957 = ((_2936 * _2936) * asfloat(_2915 ? asuint(1.0f / _2903) : 1065353216u)) * (_2955 * _2955);
                float _2963 = _2957 * CB3_m0[32u].x;
                float _2964 = _2957 * CB3_m0[32u].y;
                float _2965 = _2957 * CB3_m0[32u].z;
                float _2967 = max(_2965, max(_2964, _2963));
                float _2969 = rsqrt(_2900);
                _2985 = _2967 + _2847;
                _2986 = (_2967 / CB3_m0[29u].w) + _2859;
                _2987 = mad(_2967, dot(float3(_362, _363, _364), float3(_2969 * _2897, _2969 * _2898, _2969 * _2899)), _2855);
                _2988 = mad(_2963, _2967, _2860);
                _2989 = mad(_2964, _2967, _2861);
                _2990 = mad(_2965, _2967, _2862);
            }
            else
            {
                _2985 = _2847;
                _2986 = _2859;
                _2987 = _2855;
                _2988 = _2860;
                _2989 = _2861;
                _2990 = _2862;
            }
            _2991 = _2985;
            _2992 = _2986;
            _2993 = _2987;
            _2994 = _2988;
            _2995 = _2989;
            _2996 = _2990;
        }
        else
        {
            _2991 = asfloat(947912704u);
            _2992 = asfloat(0u);
            _2993 = asfloat(0u);
            _2994 = asfloat(0u);
            _2995 = asfloat(0u);
            _2996 = asfloat(0u);
        }
        float _2999 = clamp((_2993 / _2992) + 0.5f, 0.0f, 1.0f);
        _2871 = _2999 * (_2994 / _2991);
        _2873 = _2999 * (_2995 / _2991);
        _2875 = _2999 * (_2996 / _2991);
    }
    else
    {
        _2871 = asfloat(0u);
        _2873 = asfloat(0u);
        _2875 = asfloat(0u);
    }
    float _2883 = mad(TEXCOORD_8.x, _2191, _2871);
    float _2884 = mad(TEXCOORD_8.y, _2191, _2873);
    float _2885 = mad(TEXCOORD_8.z, _2191, _2875);
    float _3055;
    float _3056;
    float _3057;
    float _3058;
    float _3059;
    float _3060;
    if (_579)
    {
        uint _3013 = uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u)));
        uint _3015 = (_3013 * 32u) + 24u;
        uint3 _3025 = uint3(T1.Load(_3015).x, T1.Load(_3015 + 1u).x, T1.Load(_3015 + 2u).x);
        uint _3033 = (_3013 * 32u) + 28u;
        uint3 _3042 = uint3(T1.Load(_3033).x, T1.Load(_3033 + 1u).x, T1.Load(_3033 + 2u).x);
        _3055 = asfloat(_3025.x);
        _3056 = asfloat(_3025.y);
        _3057 = asfloat(_3025.z);
        _3058 = asfloat(_3042.x);
        _3059 = asfloat(_3042.y);
        _3060 = asfloat(_3042.z);
    }
    else
    {
        _3055 = asfloat(0u);
        _3056 = asfloat(0u);
        _3057 = asfloat(0u);
        _3058 = asfloat(0u);
        _3059 = asfloat(0u);
        _3060 = asfloat(0u);
    }
    bool _3064 = 0.5f < CB0_m0[23u].y;
    bool _3065 = _431 != 0u;
    float _3161;
    float _3163;
    float _3165;
    if (0.5f >= CB0_m0[188u].w)
    {
        float _3100 = clamp(mad((-0.0f) - dot(float3(_540, _541, _542), float3(_670, _671, _672)), 0.5f, 0.5f), 0.0f, 1.0f);
        float _3102 = mad(_363, 0.5f, 0.5f);
        float _3111 = clamp((asfloat((_431 != 0u) ? asuint(_3102) : asuint(_3102 * _3102)) + (-0.20000000298023223876953125f)) * 1.25f, 0.0f, 1.0f);
        float _3114 = (_3111 * _3111) * mad(_3111, -2.0f, 3.0f);
        float _3115 = _3114 * _3114;
        bool _3118 = _431 != 0u;
        float _3181;
        if (_579)
        {
            _3181 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _3181 = asfloat(0u);
        }
        float _3210 = min(_543 * 0.083333335816860198974609375f, 1.0f);
        float _3218 = ((-0.0f) - dot(float3(_540, _541, _542), float3(_362, _363, _364))) + 1.0f;
        float _3227 = clamp((((-0.0f) - mad(_3210, -0.300000011920928955078125f, 0.5f)) + _3218) * 3.3333332538604736328125f, 0.0f, 1.0f);
        float _3228 = clamp((((-0.0f) - mad(_3210, -0.300000011920928955078125f, 0.60000002384185791015625f)) + _3218) * 5.000000476837158203125f, 0.0f, 1.0f);
        float _3259 = CB0_m0[189u].x * CB0_m0[189u].x;
        float _3260 = CB0_m0[189u].y * CB0_m0[189u].y;
        float _3261 = CB0_m0[189u].z * CB0_m0[189u].z;
        float _3262 = _3259 * _3259;
        float _3263 = _3260 * _3260;
        float _3264 = _3261 * _3261;
        float _3265 = _3262 * _3262;
        float _3266 = _3263 * _3263;
        float _3267 = _3264 * _3264;
        float _3274 = dot(float3(CB0_m0[189u].xyz), 0.3300000131130218505859375f.xxx) * (1.0f / (dot(float3(_3265, _3266, _3267), 0.699999988079071044921875f.xxx) + 9.9999997473787516355514526367188e-06f));
        bool _3294 = max(CB0_m0[189u].z, CB0_m0[189u].y) < CB0_m0[189u].x;
        float _3310 = asfloat(_3294 ? asuint(mad(_1306, mad(_3274, _3265, (-0.0f) - _2192), _2192)) : asuint(CB0_m0[189u].x * 0.60000002384185791015625f));
        float _3312 = asfloat(_3294 ? asuint(mad(_1306, mad(_3274, _3266, (-0.0f) - _2193), _2193)) : asuint(CB0_m0[189u].y * 0.60000002384185791015625f));
        float _3314 = asfloat(_3294 ? asuint(mad(_1306, mad(_3274, _3267, (-0.0f) - _2194), _2194)) : asuint(CB0_m0[189u].z * 0.60000002384185791015625f));
        float _3319 = exp2(log2(_3100 * _3100) * 20.0f);
        float _3343 = mad(_2110, _2114, _2117 + _2116) * 0.3300000131130218505859375f;
        float _3360 = exp2(log2(clamp(_2116, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _3361 = exp2(log2(clamp(_2117, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _3362 = exp2(log2(clamp(_2118, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _3367 = rsqrt(max(dot(float3(_3360, _3361, _3362), float3(_3360, _3361, _3362)), 6.103515625e-05f));
        float _3368 = _3367 * _3360;
        float _3369 = _3367 * _3361;
        float _3370 = _3367 * _3362;
        float _3375 = CB0_m0[198u].w * 48.0f;
        float _3377 = mad((_3343 * _3343) * CB0_m0[199u].w, -0.199999988079071044921875f, 1.0f) * 0.100000001490116119384765625f;
        float _3381 = (-0.0f) - _3377;
        float _3391 = asfloat((_431 != 0u) ? asuint((_3227 * _3227) * mad(_3227, -2.0f, 3.0f)) : asuint((_3228 * _3228) * mad(_3228, -2.0f, 3.0f))) * (mad(CB0_m0[199u].y, mad(clamp((-0.0f) - _541, 0.0f, 1.0f), asfloat((0.0f != TEXCOORD_7.z) ? 1083179008u : asuint(mad(_376, CB4_m0[137u].z, 2.5f))), -0.5f), 1.0f) * (clamp(mad(_3181, 0.39999997615814208984375f, _1306) + 0.60000002384185791015625f, 0.0f, 1.0f) * (mad(_1315 * mad(_1392, 0.5f, 0.5f), 1.39999997615814208984375f, 0.100000001490116119384765625f) * (mad(_3100, 0.800000011920928955078125f, 0.20000000298023223876953125f) * mad(CB0_m0[199u].x, mad(_3114, mad(_3114 * (_3115 * _3115), asfloat(_3118 ? 3212836864u : 3204448256u) + asfloat(_3118 ? 1050253722u : 1065353216u), asfloat(_3118 ? 1065353216u : 1056964608u)), -0.100000001490116119384765625f), 0.100000001490116119384765625f)))));
        uint4 _3401 = asuint(CB4_m0[87u]);
        uint4 _3408 = asuint(CB4_m0[86u]);
        uint4 _3418 = asuint(CB4_m0[88u]);
        uint4 _3428 = asuint(CB4_m0[89u]);
        uint4 _3438 = asuint(CB4_m0[90u]);
        float _3450 = ((_3375 * mad(_380, mad(_3381, _3370, _2126), _3370 * _3377)) * (mad(CB0_m0[199u].z, mad((-0.0f) - _1921, _2191, mad(_3319, mad(_1921, _2191, (-0.0f) - _3314), _3314)), _2194) * _3391)) * asfloat(_481 ? _3438.z : (_483 ? _3428.z : (_485 ? _3418.z : (_487 ? _3401.z : _3408.z))));
        float _3453 = mad(clamp(mad(_543, 0.20000000298023223876953125f, -1.0f), 0.0f, 1.0f), -0.699999988079071044921875f, 1.0f);
        float _3455 = _3453 * (((_3375 * mad(_380, mad(_3381, _3368, _2123), _3368 * _3377)) * (mad(CB0_m0[199u].z, mad((-0.0f) - _1919, _2191, mad(_3319, mad(_1919, _2191, (-0.0f) - _3310), _3310)), _2192) * _3391)) * asfloat(_481 ? _3438.x : (_483 ? _3428.x : (_485 ? _3418.x : (_487 ? _3401.x : _3408.x)))));
        float _3456 = _3453 * (((_3375 * mad(_380, mad(_3381, _3369, _2125), _3369 * _3377)) * (mad(CB0_m0[199u].z, mad((-0.0f) - _1920, _2191, mad(_3319, mad(_1920, _2191, (-0.0f) - _3312), _3312)), _2193) * _3391)) * asfloat(_481 ? _3438.y : (_483 ? _3428.y : (_485 ? _3418.y : (_487 ? _3401.y : _3408.y)))));
        float _3459 = mad(_3450, _3453, _3456 + _3455);
        float _3461 = mad(_3459 * _3459, 0.0500000007450580596923828125f, 1.0f);
        float _3466 = asfloat(_1940 ? 1056964608u : 1065353216u);
        float _3467 = _3466 * (_3461 * _3455);
        float _3468 = _3466 * (_3461 * _3456);
        float _3469 = _3466 * (_3461 * (_3453 * _3450));
        bool _3473 = 0.5f < CB3_m0[1u].w;
        _3161 = asfloat(_3473 ? asuint(min(_3469, 0.699999988079071044921875f)) : asuint(_3469)) * CB0_m0[198u].z;
        _3163 = asfloat(_3473 ? asuint(min(_3468, 0.699999988079071044921875f)) : asuint(_3468)) * CB0_m0[198u].y;
        _3165 = asfloat(_3473 ? asuint(min(_3467, 0.699999988079071044921875f)) : asuint(_3467)) * CB0_m0[198u].x;
    }
    else
    {
        _3161 = asfloat(0u);
        _3163 = asfloat(0u);
        _3165 = asfloat(0u);
    }
    float _3173 = _2627 + (max(mad(_2547, _2192, -1.0f), 0.0f) + mad(asfloat(_3064 ? 1028443341u : (_3065 ? asuint(_3055) : asuint(_3058))), _2112 * _2191, mad(_2883, _2116, mad(_2116, _2192, _2192 * _2547))));
    float _3174 = _2629 + (max(mad(_2548, _2193, -1.0f), 0.0f) + mad(asfloat(_3064 ? 1028443341u : (_3065 ? asuint(_3056) : asuint(_3059))), _2111 * _2191, mad(_2884, _2117, mad(_2117, _2193, _2193 * _2548))));
    float _3175 = _2631 + (max(mad(_2549, _2194, -1.0f), 0.0f) + mad(asfloat(_3064 ? 1028443341u : (_3065 ? asuint(_3057) : asuint(_3060))), _2110 * _2191, mad(_2885, _2118, mad(_2118, _2194, _2194 * _2549))));
    float _3747;
    float _3748;
    float _3749;
    float _3750;
    float _3751;
    if (CB4_m0[150u].x >= 0.5f)
    {
        bool _3497 = 0.5f < CB4_m0[150u].y;
        float _3506 = _3497 ? TEXCOORD_1.x : TEXCOORD.x;
        float _3507 = _3497 ? TEXCOORD_1.y : TEXCOORD.y;
        bool _3513 = 0.5f < CB4_m0[148u].z;
        bool _3514 = 0.5f < CB4_m0[148u].y;
        bool _3520 = CB4_m0[150u].y < 0.5f;
        bool _3523 = CB4_m0[150u].z < 0.5f;
        bool _3544 = 0.800000011920928955078125f < CB4_m0[147u].w;
        float4 _3597 = T8.SampleBias(S3, float2(mad(CB4_m0[108u].x, CB0_m0[40u].y, mad(_3506, CB4_m0[49u].x, CB4_m0[49u].z)), mad(CB4_m0[108u].y, CB0_m0[40u].y, mad(_3507, CB4_m0[49u].y, CB4_m0[49u].w))), CB0_m0[191u].x);
        float _3599 = _3597.x;
        float _3600 = _3597.y;
        float _3601 = _3597.z;
        float4 _3606 = T9.SampleBias(S4, float2(mad(CB4_m0[108u].z, CB0_m0[40u].y, mad(asfloat(_3544 ? asuint(_265) : (_3513 ? asuint(_3506) : asuint(_3520 ? TEXCOORD_1.x : TEXCOORD.x))), CB4_m0[50u].x, CB4_m0[50u].z)), mad(CB4_m0[108u].w, CB0_m0[40u].y, mad(asfloat(_3544 ? asuint(_266) : (_3513 ? asuint(_3507) : asuint(_3520 ? TEXCOORD_1.y : TEXCOORD.y))), CB4_m0[50u].y, CB4_m0[50u].w))), CB0_m0[191u].x);
        uint _3615 = (CB4_m0[150u].w < 0.5f) ? asuint(_3606.x) : ((CB4_m0[150u].w < 1.5f) ? asuint(_3606.y) : asuint(_3606.z));
        float _3616 = asfloat(_3615);
        uint _3617 = asuint(_3599);
        float _3622 = asfloat(_3523 ? _3617 : asuint(_3599));
        float _3624 = asfloat(_3523 ? _3617 : asuint(_3600));
        uint _3625 = _3523 ? _3617 : asuint(_3601);
        uint _3673 = _3514 ? asuint(_3616 * mad(_3622, CB4_m0[34u].x + ((-0.0f) - CB4_m0[95u].x), CB4_m0[95u].x)) : asuint((_3616 * _3622) * CB4_m0[34u].x);
        uint _3675 = _3514 ? asuint(_3616 * mad(_3624, CB4_m0[34u].y + ((-0.0f) - CB4_m0[95u].y), CB4_m0[95u].y)) : asuint((_3616 * _3624) * CB4_m0[34u].y);
        uint _3677 = _3514 ? asuint(_3616 * mad(asfloat(_3625), CB4_m0[34u].z + ((-0.0f) - CB4_m0[95u].z), CB4_m0[95u].z)) : asuint((_3616 * asfloat(_3625)) * CB4_m0[34u].z);
        bool _3682 = 0.5f < CB4_m0[151u].x;
        float _3690 = asfloat(_3682 ? asuint(_2112 * asfloat(_3673)) : _3673);
        float _3692 = asfloat(_3682 ? asuint(_2111 * asfloat(_3675)) : _3675);
        float _3694 = asfloat(_3682 ? asuint(_2110 * asfloat(_3677)) : _3677);
        bool _3698 = CB4_m0[147u].z < 0.5f;
        uint _3709 = _3523 ? asuint(_3599) : asuint(_3601 + (_3600 + _3599));
        float _3715 = min(asfloat((1.5f < CB4_m0[147u].z) ? asuint(_3616 + asfloat(_3709)) : _3709), 1.0f);
        float _3716 = _3616 * _3715;
        _3747 = asfloat(_3698 ? _3615 : asuint(_3716));
        _3748 = asfloat(_3698 ? asuint((_3694 + (_3692 + _3690)) + _2633) : asuint(mad(_3616, _3715, _2633)));
        _3749 = asfloat(_3698 ? asuint(_3173 + _3690) : asuint(_3173 * mad(_3716, _3690 + (-1.0f), 1.0f)));
        _3750 = asfloat(_3698 ? asuint(_3174 + _3692) : asuint(_3174 * mad(_3716, _3692 + (-1.0f), 1.0f)));
        _3751 = asfloat(_3698 ? asuint(_3175 + _3694) : asuint(_3175 * mad(_3716, _3694 + (-1.0f), 1.0f)));
    }
    else
    {
        _3747 = asfloat(0u);
        _3748 = _2633;
        _3749 = _3173;
        _3750 = _3174;
        _3751 = _3175;
    }
    float _4000;
    float _4001;
    float _4002;
    float _4003;
    float _4004;
    if (float(int(asuint(CB4_m0[132u]).w)) >= 0.5f)
    {
        bool _3763 = 0.5f < CB4_m0[127u].x;
        bool _3764 = 0.5f < CB4_m0[127u].z;
        bool _3782 = 0.5f < CB4_m0[128u].x;
        bool _3783 = 0.800000011920928955078125f < CB4_m0[128u].z;
        bool _3784 = 0.5f < CB4_m0[128u].y;
        float4 _3848 = T10.SampleBias(S0, float2(mad(CB4_m0[40u].x, CB0_m0[40u].y, mad(_3763 ? TEXCOORD_1.x : TEXCOORD.x, CB4_m0[51u].x, CB4_m0[51u].z)), mad(CB4_m0[40u].y, CB0_m0[40u].y, mad(_3763 ? TEXCOORD_1.y : TEXCOORD.y, CB4_m0[51u].y, CB4_m0[51u].w))), CB0_m0[191u].x);
        float _3850 = _3848.x;
        float _3851 = _3848.y;
        float _3852 = _3848.z;
        float4 _3857 = T11.SampleBias(S0, float2(mad(CB4_m0[40u].z, CB0_m0[40u].y, mad(asfloat(_3783 ? asuint(_265) : asuint(_3782 ? TEXCOORD_1.x : TEXCOORD.x)), CB4_m0[52u].x, CB4_m0[52u].z)), mad(CB4_m0[40u].w, CB0_m0[40u].y, mad(asfloat(_3783 ? asuint(_266) : asuint(_3782 ? TEXCOORD_1.y : TEXCOORD.y)), CB4_m0[52u].y, CB4_m0[52u].w))), CB0_m0[191u].x);
        bool _3868 = CB4_m0[127u].y < 0.5f;
        uint _3873 = (CB4_m0[127u].w < 0.5f) ? asuint(_3857.x) : ((CB4_m0[127u].w < 1.5f) ? asuint(_3857.y) : asuint(_3857.z));
        float _3874 = asfloat(_3873);
        uint _3875 = asuint(_3850);
        float _3880 = asfloat(_3868 ? _3875 : asuint(_3850));
        float _3882 = asfloat(_3868 ? _3875 : asuint(_3851));
        float _3884 = asfloat(_3868 ? _3875 : asuint(_3852));
        uint _3931 = _3784 ? asuint(_3874 * mad(_3880, CB4_m0[110u].x + ((-0.0f) - CB4_m0[111u].x), CB4_m0[111u].x)) : asuint((_3880 * _3874) * CB4_m0[110u].x);
        uint _3933 = _3784 ? asuint(_3874 * mad(_3882, CB4_m0[110u].y + ((-0.0f) - CB4_m0[111u].y), CB4_m0[111u].y)) : asuint((_3882 * _3874) * CB4_m0[110u].y);
        uint _3935 = _3784 ? asuint(_3874 * mad(_3884, CB4_m0[110u].z + ((-0.0f) - CB4_m0[111u].z), CB4_m0[111u].z)) : asuint((_3884 * _3874) * CB4_m0[110u].z);
        float _3944 = asfloat(_3764 ? asuint(_2112 * asfloat(_3931)) : _3931);
        float _3946 = asfloat(_3764 ? asuint(_2111 * asfloat(_3933)) : _3933);
        float _3948 = asfloat(_3764 ? asuint(_2110 * asfloat(_3935)) : _3935);
        bool _3952 = CB4_m0[128u].w < 0.5f;
        uint _3963 = _3868 ? asuint(_3850) : asuint(_3852 + (_3851 + _3850));
        float _3969 = min(asfloat((1.5f < CB4_m0[128u].w) ? asuint(asfloat(_3963) + _3874) : _3963), 1.0f);
        float _3970 = _3969 * _3874;
        _4000 = asfloat(_3952 ? _3873 : asuint(_3970));
        _4001 = asfloat(_3952 ? asuint((_3948 + (_3946 + _3944)) + _3748) : asuint(mad(_3874, _3969, _3748)));
        _4002 = asfloat(_3952 ? asuint(_3944 + _3749) : asuint(mad(_3970, _3944 + (-1.0f), 1.0f) * _3749));
        _4003 = asfloat(_3952 ? asuint(_3946 + _3750) : asuint(mad(_3970, _3946 + (-1.0f), 1.0f) * _3750));
        _4004 = asfloat(_3952 ? asuint(_3948 + _3751) : asuint(mad(_3970, _3948 + (-1.0f), 1.0f) * _3751));
    }
    else
    {
        _4000 = _3747;
        _4001 = _3748;
        _4002 = _3749;
        _4003 = _3750;
        _4004 = _3751;
    }
    float _4012 = CB4_m0[29u].w * CB4_m0[155u].w;
    float _4024 = mad(_4012, ((-0.0f) - _4002) + CB4_m0[29u].x, _4002);
    float _4025 = mad(_4012, ((-0.0f) - _4003) + CB4_m0[29u].y, _4003);
    float _4026 = mad(_4012, ((-0.0f) - _4004) + CB4_m0[29u].z, _4004);
    float _4034 = mad((-0.0f) - CB4_m0[29u].w, CB4_m0[155u].w, 1.0f);
    float _4035 = _4034 * (_3165 * mad(_2883, 2.0f, 1.0f));
    float _4036 = _4034 * (_3163 * mad(_2884, 2.0f, 1.0f));
    float _4037 = _4034 * (_3161 * mad(_2885, 2.0f, 1.0f));
    float _4238;
    float _4240;
    float _4242;
    float _4244;
    if (0.5f < CB4_m0[152u].y)
    {
        bool _4046 = CB4_m0[153u].x < 0.5f;
        float _4118 = mad(gl_FragCoord.x, CB0_m0[160u].z, -0.5f);
        float _4119 = mad(gl_FragCoord.y, CB0_m0[160u].w, -0.5f);
        float _4147 = ((-0.0f) - (mad(CB0_m0[118u].z, TEXCOORD_4.w, mad(CB0_m0[116u].z, TEXCOORD_2.w, TEXCOORD_3.w * CB0_m0[117u].z)) + CB0_m0[119u].z)) / CB0_m0[93u].y;
        float _4158 = asfloat((0.5f < CB4_m0[152u].z) ? asuint(mad(CB0_m0[85u].w, mad((-0.0f) - _4147, 0.5f, 1.0f), _4147 * 0.5f)) : 1065353216u);
        float4 _4191 = T12.Sample(S5, float2((mad(_4158 * mad(CB4_m0[125u].z, mad(CB0_m0[118u].x, _364, mad(CB0_m0[116u].x, _362, _363 * CB0_m0[117u].x)), (CB0_m0[160u].w * CB0_m0[160u].x) * (_4118 + _4118)), CB4_m0[47u].x, CB4_m0[47u].z) + 0.5f) + mad(CB4_m0[124u].x, CB0_m0[40u].y, CB4_m0[124u].z), (mad(_4158 * mad(CB4_m0[125u].z, mad(CB0_m0[118u].y, _364, mad(CB0_m0[116u].y, _362, _363 * CB0_m0[117u].y)), _4119 + _4119), CB4_m0[47u].y, CB4_m0[47u].w) + 0.5f) + mad(CB4_m0[124u].y, CB0_m0[40u].y, CB4_m0[124u].w)));
        float _4207 = _4191.w * CB4_m0[109u].w;
        float _4236 = asfloat((0.5f < CB4_m0[153u].z) ? asuint(mad(mad(sin((CB0_m0[40u].y / max(CB4_m0[168u].x, 0.00999999977648258209228515625f)) * 6.283185482025146484375f), 0.5f, 0.5f), ((-0.0f) - CB4_m0[125u].x) + CB4_m0[125u].y, CB4_m0[125u].x)) : 1065353216u);
        float _4237 = _4236 * _4207;
        float _4369;
        float _4370;
        float _4371;
        if (0.5f < CB4_m0[152u].w)
        {
            float _4252 = mad((-0.0f) - _4207, _4236, 1.0f);
            _4369 = _3173 * mad(_4191.x * CB4_m0[109u].x, _4237, _4252);
            _4370 = _3174 * mad(_4191.y * CB4_m0[109u].y, _4237, _4252);
            _4371 = _3175 * mad(_4191.z * CB4_m0[109u].z, _4237, _4252);
        }
        else
        {
            _4369 = mad(_4237, mad(CB4_m0[109u].x, _4191.x, (-0.0f) - _3173), _3173);
            _4370 = mad(_4237, mad(CB4_m0[109u].y, _4191.y, (-0.0f) - _3174), _3174);
            _4371 = mad(_4237, mad(CB4_m0[109u].z, _4191.z, (-0.0f) - _3175), _3175);
        }
        float _4397 = asfloat((0.5f < CB4_m0[153u].y) ? asuint(((-0.0f) - _4000) + 1.0f) : 1065353216u) * T13.Sample(S6, float2(mad(CB0_m0[40u].y, CB4_m0[149u].z, mad(_4046 ? TEXCOORD.x : TEXCOORD_1.x, CB4_m0[48u].x, CB4_m0[48u].z)), mad(CB0_m0[40u].y, CB4_m0[149u].w, mad(_4046 ? TEXCOORD.y : TEXCOORD_1.y, CB4_m0[48u].y, CB4_m0[48u].w)))).x;
        _4238 = mad(_4371 + (_4370 + _4369), _4397, _4001);
        _4240 = mad(_4397, ((-0.0f) - _4024) + _4369, _4024);
        _4242 = mad(_4397, ((-0.0f) - _4025) + _4370, _4025);
        _4244 = mad(_4397, ((-0.0f) - _4026) + _4371, _4026);
    }
    else
    {
        _4238 = _4001;
        _4240 = _4024;
        _4242 = _4025;
        _4244 = _4026;
    }
    float _4349;
    uint _4351;
    float _4352;
    float _4354;
    float _4356;
    float _4358;
    float _4360;
    float _4362;
    if (0.5f < CB4_m0[158u].z)
    {
        bool _4290 = 0.5f < CB4_m0[159u].x;
        float4 _4339 = T14.Sample(S7, float2(mad(CB0_m0[40u].y, CB4_m0[103u].x, asfloat(_4290 ? asuint(mad(TEXCOORD_1.x, CB4_m0[55u].x, CB4_m0[55u].z)) : asuint(mad(TEXCOORD.x, CB4_m0[55u].x, CB4_m0[55u].z)))), mad(CB0_m0[40u].y, CB4_m0[103u].y, asfloat(_4290 ? asuint(mad(TEXCOORD_1.y, CB4_m0[55u].y, CB4_m0[55u].w)) : asuint(mad(TEXCOORD.y, CB4_m0[55u].y, CB4_m0[55u].w))))));
        float _4341 = _4339.x;
        float _4342 = _4339.y;
        float _4343 = _4339.z;
        float _4353;
        float _4355;
        float _4357;
        if (0.5f < CB4_m0[158u].w)
        {
            _4353 = mad(CB4_m0[33u].z * CB4_m0[33u].w, _4343, _4037);
            _4355 = mad(CB4_m0[33u].y * CB4_m0[33u].w, _4342, _4036);
            _4357 = mad(CB4_m0[33u].x * CB4_m0[33u].w, _4341, _4035);
        }
        else
        {
            float _4423 = _4339.w * CB4_m0[33u].w;
            _4353 = mad(_4423, mad(CB4_m0[33u].z, _4343, (-0.0f) - _4037), _4037);
            _4355 = mad(_4423, mad(CB4_m0[33u].y, _4342, (-0.0f) - _4036), _4036);
            _4357 = mad(_4423, mad(CB4_m0[33u].x, _4341, (-0.0f) - _4035), _4035);
        }
        uint4 _4520 = asuint(CB4_m0[131u]);
        float _4524 = float(int(_4520.x));
        float _4531 = exp2(log2(max(((-0.0f) - abs(dot(float3(TEXCOORD_2.x, TEXCOORD_2.y, TEXCOORD_2.z), float3(_540, _541, _542)))) + 1.0f, 0.0f)) * CB4_m0[155u].z) * float(int(_4520.y));
        float _4539 = exp2(max(CB4_m0[130u].x, 0.00999999977648258209228515625f) * log2(_4531));
        float _4546 = min(CB4_m0[121u].x, 65504.0f);
        float _4548 = min(CB4_m0[121u].y, 65504.0f);
        float _4549 = min(CB4_m0[121u].z, 65504.0f);
        float _4562 = mad(_4539, ((-0.0f) - _4546) + CB4_m0[120u].x, _4546);
        float _4563 = mad(_4539, ((-0.0f) - _4548) + CB4_m0[120u].y, _4548);
        float _4564 = mad(_4539, ((-0.0f) - _4549) + CB4_m0[120u].z, _4549);
        float _4575 = _4531 * asfloat(((_4531 >= CB4_m0[130u].y) ? 4294967295u : 0u) & 1065353216u);
        bool _4579 = _4524 < 0.5f;
        bool _4580 = _4524 < 1.5f;
        _4349 = mad(_4353 + (_4355 + _4357), ((-0.0f) - CB4_m0[156u].x) + 1.0f, _4238);
        _4351 = 0u;
        _4352 = _4353;
        _4354 = _4355;
        _4356 = _4357;
        _4358 = asfloat(_4579 ? asuint(mad(_4575, _4341 * _4562, _4240)) : (_4580 ? asuint(mad(_4575, mad(_4562, _4341, (-0.0f) - _4240), _4240)) : asuint(_4240 * mad(_4575, mad(_4562, _4341, -1.0f), 1.0f))));
        _4360 = asfloat(_4579 ? asuint(mad(_4575, _4342 * _4563, _4242)) : (_4580 ? asuint(mad(_4575, mad(_4563, _4342, (-0.0f) - _4242), _4242)) : asuint(_4242 * mad(_4575, mad(_4563, _4342, -1.0f), 1.0f))));
        _4362 = asfloat(_4579 ? asuint(mad(_4575, _4343 * _4564, _4244)) : (_4580 ? asuint(mad(_4575, mad(_4564, _4343, (-0.0f) - _4244), _4244)) : asuint(_4244 * mad(_4575, mad(_4564, _4343, -1.0f), 1.0f))));
    }
    else
    {
        _4349 = _4238;
        _4351 = _431;
        _4352 = _4037;
        _4354 = _4036;
        _4356 = _4035;
        _4358 = _4240;
        _4360 = _4242;
        _4362 = _4244;
    }
    float _4464;
    float _4466;
    float _4468;
    float _4470;
    float _4472;
    float _4474;
    float _4476;
    if (0.5f < CB4_m0[156u].x)
    {
        float _4441 = CB4_m0[156u].z * 0.01745329238474369049072265625f;
        float _4443 = sin(_4441);
        float _4444 = cos(_4441);
        bool _4449 = CB4_m0[156u].y < 0.5f;
        float _4691;
        float _4692;
        float _4693;
        if (1.5f < CB4_m0[156u].y)
        {
            bool _4618 = CB4_m0[157u].w < 0.5f;
            uint4 _4665 = asuint(CB4_m0[25u]);
            float _4678 = ((-0.0f) - TEXCOORD_2.w) + asfloat(_4618 ? asuint(mad(CB1_m0[2u].x, CB4_m0[25u].z, mad(CB1_m0[0u].x, CB4_m0[25u].x, CB1_m0[1u].x * CB4_m0[25u].y)) + CB1_m0[3u].x) : _4665.x);
            float _4679 = ((-0.0f) - TEXCOORD_3.w) + asfloat(_4618 ? asuint(mad(CB1_m0[2u].y, CB4_m0[25u].z, mad(CB1_m0[0u].y, CB4_m0[25u].x, CB1_m0[1u].y * CB4_m0[25u].y)) + CB1_m0[3u].y) : _4665.y);
            float _4680 = ((-0.0f) - TEXCOORD_4.w) + asfloat(_4618 ? asuint(mad(CB1_m0[2u].z, CB4_m0[25u].z, mad(CB1_m0[0u].z, CB4_m0[25u].x, CB1_m0[1u].z * CB4_m0[25u].y)) + CB1_m0[3u].z) : _4665.z);
            float _4685 = rsqrt(max(dot(float3(_4678, _4679, _4680), float3(_4678, _4679, _4680)), 1.1754943508222875079687365372222e-38f));
            _4691 = _4685 * _4678;
            _4692 = _4685 * _4680;
            _4693 = _4685 * _4679;
        }
        else
        {
            _4691 = asfloat(_4449 ? asuint(_670) : asuint(_540));
            _4692 = asfloat(_4449 ? asuint(_672) : asuint(_542));
            _4693 = asfloat(_4449 ? asuint(_671) : asuint(_541));
        }
        float _4713 = clamp((mad(CB4_m0[156u].w, 2.0f, dot(float3(_362, _363, _364), float3(dot(float2(_4444, _4443), float2(_4691, _4692)), _4693, dot(float2((-0.0f) - _4443, _4444), float2(_4691, _4692))))) + (-1.0f)) / max(CB4_m0[157u].x, 9.9999997473787516355514526367188e-06f), 0.0f, 1.0f);
        float _4740 = mad(_4713, CB4_m0[30u].x + ((-0.0f) - CB4_m0[31u].x), CB4_m0[31u].x);
        float _4741 = mad(_4713, CB4_m0[30u].y + ((-0.0f) - CB4_m0[31u].y), CB4_m0[31u].y);
        float _4742 = mad(_4713, CB4_m0[30u].z + ((-0.0f) - CB4_m0[31u].z), CB4_m0[31u].z);
        float _4743 = mad(_4713, CB4_m0[30u].w + ((-0.0f) - CB4_m0[31u].w), CB4_m0[31u].w);
        bool _4747 = 0.5f < CB4_m0[157u].z;
        float _4752 = asfloat(_4747 ? asuint(_2112) : 1065353216u);
        float _4754 = asfloat(_4747 ? asuint(_2111) : 1065353216u);
        float _4756 = asfloat(_4747 ? asuint(_2110) : 1065353216u);
        float _4757 = _4752 * _4740;
        float _4758 = _4754 * _4741;
        bool _4763 = CB4_m0[157u].y < 0.5f;
        _4464 = mad(mad(_4742, _4756, _4758 + _4757), _4743, _4349);
        _4466 = asfloat(0u);
        _4468 = asfloat(0u);
        _4470 = asfloat(0u);
        _4472 = asfloat(_4763 ? asuint(mad(_4743, mad(_4740, _4752, (-0.0f) - _4358), _4358)) : asuint(mad(_4743, _4757, _4358)));
        _4474 = asfloat(_4763 ? asuint(mad(_4743, mad(_4741, _4754, (-0.0f) - _4360), _4360)) : asuint(mad(_4743, _4758, _4360)));
        _4476 = asfloat(_4763 ? asuint(mad(_4743, mad(_4742, _4756, (-0.0f) - _4362), _4362)) : asuint(mad(_4743, _4756 * _4742, _4362)));
    }
    else
    {
        _4464 = _4349;
        _4466 = _4352;
        _4468 = _4354;
        _4470 = _4356;
        _4472 = _4358;
        _4474 = _4360;
        _4476 = _4362;
    }
    SV_Target_1.x = min(sqrt(max(_4470, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.y = min(sqrt(max(_4468, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.z = min(sqrt(max(_4466, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.w = _4464 * 0.33329999446868896484375f;
    SV_Target_2.w = (_4351 != 0u) ? 0.3400000035762786865234375f : 0.0f;
    SV_Target_3.x = mad(_362, 0.5f, 0.5f);
    SV_Target_3.y = mad(_363, 0.5f, 0.5f);
    SV_Target_3.z = mad(_364, 0.5f, 0.5f);
    SV_Target.x = _4472;
    SV_Target.y = _4474;
    SV_Target.z = _4476;
    SV_Target.w = _573;
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
