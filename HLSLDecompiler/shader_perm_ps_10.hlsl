static const float _89[16] = { 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f };

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
    bool _129 = 0.5f < CB1_m0[28u].y;
    float _153 = (TEXCOORD_5.x / TEXCOORD_5.w) + ((-0.0f) - (TXCOORDD_6.x / TXCOORDD_6.w));
    float _154 = (TEXCOORD_5.y / TEXCOORD_5.w) + ((-0.0f) - (TXCOORDD_6.y / TXCOORDD_6.w));
    float _163 = (-0.0f) - _154;
    SV_Target_2.x = _129 ? mad(sqrt(abs(_153 * 0.5f)) * float(int((0u - ((0.0f < _153) ? 4294967295u : 0u)) + ((_153 < 0.0f) ? 4294967295u : 0u))), 0.5f, 0.4980392158031463623046875f) : 0.4979999959468841552734375f;
    SV_Target_2.y = _129 ? mad(sqrt(abs(_154 * (-0.5f))) * float(int((0u - ((0.0f < _163) ? 4294967295u : 0u)) + ((_163 < 0.0f) ? 4294967295u : 0u))), 0.5f, 0.4980392158031463623046875f) : 0.4979999959468841552734375f;
    float _234 = mad((-0.0f) - gl_FragCoord.x, CB0_m0[160u].z, CB4_m0[126u].x) * asfloat(1065353216u);
    float _235 = mad((-0.0f) - gl_FragCoord.y, CB0_m0[160u].w, CB4_m0[126u].y) * (CB0_m0[83u].y / CB0_m0[83u].x);
    float _261 = mad(CB0_m0[118u].z, TEXCOORD_4.w, mad(CB0_m0[116u].z, TEXCOORD_2.w, TEXCOORD_3.w * CB0_m0[117u].z)) + CB0_m0[119u].z;
    uint _333 = 3u & 31u;
    uint _339 = 2u & 31u;
    uint _345 = 1u & 31u;
    uint _352 = 0u & 31u;
    SV_Target_2.z = float(spvBitfieldInsert((spvBitfieldInsert(0u, (0.0f != CB4_m0[152u].x) ? 4294967295u : 0u, _333, min((1u & 31u), (32u - _333))) + spvBitfieldInsert(0u, (CB3_m0[40u].x == 1.0f) ? 4294967295u : 0u, _339, min((1u & 31u), (32u - _339)))) + spvBitfieldInsert(0u, (0.0f != CB4_m0[151u].z) ? 4294967295u : 0u, _345, min((1u & 31u), (32u - _345))), (0.0f != CB4_m0[151u].w) ? 4294967295u : 0u, _352, min((1u & 31u), (32u - _352)))) * 0.0039215688593685626983642578125f;
    uint _373 = (((gl_FrontFacing ? 4294967295u : 0u) == 0u) ? 4294967295u : 0u) & ((0.5f < CB4_m0[147u].x) ? 4294967295u : 0u);
    bool _380 = ((((1.0f < TEXCOORD.z) ? 4294967295u : 0u) & ((0.5f < CB4_m0[147u].y) ? 4294967295u : 0u)) | _373) != 0u;
    float4 _397 = T3.SampleBias(S0, float2(_380 ? TEXCOORD.z : TEXCOORD.x, _380 ? TEXCOORD.w : TEXCOORD.y), CB0_m0[191u].x);
    float _399 = _397.x;
    float _400 = _397.y;
    float _401 = _397.z;
    bool _411 = _373 != 0u;
    float _420 = _411 ? TEXCOORD.z : TEXCOORD.x;
    float _421 = _411 ? TEXCOORD.w : TEXCOORD.y;
    float4 _426 = T4.SampleBias(S0, float2(_420, _421), CB0_m0[191u].x);
    float _444 = mad(clamp(_426.x, 0.0f, 1.0f), 2.0f, -1.0039999485015869140625f) * CB4_m0[137u].y;
    float _445 = mad(clamp(_426.y, 0.0f, 1.0f), 2.0f, -1.0039999485015869140625f) * CB4_m0[137u].y;
    float _453 = asfloat(((gl_FrontFacing ? 4294967295u : 0u) != 0u) ? 1065353216u : 3212836864u) * sqrt(((-0.0f) - min(dot(float2(_444, _445), float2(_444, _445)), 1.0f)) + 1.0f);
    float _478 = mad(_453, TEXCOORD_2.x, mad(_444, TEXCOORD_3.x, _445 * TEXCOORD_4.x));
    float _479 = mad(_453, TEXCOORD_2.y, mad(_444, TEXCOORD_3.y, _445 * TEXCOORD_4.y));
    float _480 = mad(_453, TEXCOORD_2.z, mad(_444, TEXCOORD_3.z, _445 * TEXCOORD_4.z));
    float _484 = rsqrt(dot(float3(_478, _479, _480), float3(_478, _479, _480)));
    float _485 = _484 * _478;
    float _486 = _484 * _479;
    float _487 = _484 * _480;
    float4 _492 = T6.SampleBias(S0, float2(_420, _421), CB0_m0[191u].x);
    float _497 = clamp(_492.z, 0.0f, 1.0f);
    float _498 = clamp(_492.x, 0.0f, 1.0f);
    float _499 = clamp(_492.y, 0.0f, 1.0f);
    float _503 = _499 * CB4_m0[137u].z;
    float4 _508 = T7.SampleBias(S0, float2(_420, _421), CB0_m0[191u].x);
    float _512 = clamp(_508.z, 0.0f, 1.0f);
    float _513 = clamp(_508.y, 0.0f, 1.0f);
    float _540;
    if (0.5f < CB4_m0[135u].z)
    {
        uint _526 = (0.5f < CB4_m0[144u].x) ? 4294967295u : 0u;
        _540 = asfloat((((((0.5f < CB4_m0[144u].y) ? 4294967295u : 0u) & _526) != 0u) ? asuint(max((_512 + (-0.20000000298023223876953125f)) * 1.25f, 0.0f)) : asuint(_512)) & _526);
    }
    else
    {
        _540 = _512;
    }
    bool _553 = uint(int(max(((-0.0f) - floor(_498 * 5.0f)) + 4.0f, 0.0f))) == asuint(CB4_m0[132u]).y;
    uint _554 = _553 ? 4294967295u : 0u;
    uint _555 = _554 & 1u;
    bool _559 = 0.5f < CB4_m0[136u].w;
    float4 _573 = T2.SampleBias(S0, float2(TEXCOORD.x * CB4_m0[137u].x, TEXCOORD.y * CB4_m0[137u].x), CB0_m0[191u].x);
    bool _604 = _498 < 0.20000000298023223876953125f;
    bool _606 = _498 < 0.4000000059604644775390625f;
    bool _608 = _498 < 0.60000002384185791015625f;
    bool _610 = _498 < 0.800000011920928955078125f;
    bool _642 = 0.5f < CB4_m0[161u].w;
    float4 _657 = T9.SampleBias(S0, float2(_642 ? TEXCOORD.z : TEXCOORD.x, _642 ? TEXCOORD.w : TEXCOORD.y), CB0_m0[191u].x);
    float _659 = _657.x;
    float _660 = _657.y;
    float _661 = _657.z;
    float _662 = _657.w;
    float _663 = sqrt(asfloat(_559 ? asuint(max(mad(_399, CB4_m0[57u].x, _573.x) + (-0.5f), 0.0f)) : asuint(_399 * CB4_m0[57u].x)));
    float _664 = sqrt(asfloat(_559 ? asuint(max(mad(_400, CB4_m0[57u].y, _573.y) + (-0.5f), 0.0f)) : asuint(_400 * CB4_m0[57u].y)));
    float _665 = sqrt(asfloat(_559 ? asuint(max(mad(_401, CB4_m0[57u].z, _573.z) + (-0.5f), 0.0f)) : asuint(_401 * CB4_m0[57u].z)));
    float _687 = mad(_659, ((-0.0f) - _663) + max(_663 + ((-0.0f) - CB4_m0[104u].x), 0.0f), _663);
    float _688 = mad(_659, ((-0.0f) - _664) + max(_664 + ((-0.0f) - CB4_m0[104u].y), 0.0f), _664);
    float _689 = mad(_659, ((-0.0f) - _665) + max(_665 + ((-0.0f) - CB4_m0[104u].z), 0.0f), _665);
    float _711 = mad(_660, ((-0.0f) - _687) + max(_663 + ((-0.0f) - CB4_m0[105u].x), 0.0f), _687);
    float _712 = mad(_660, ((-0.0f) - _688) + max(_664 + ((-0.0f) - CB4_m0[105u].y), 0.0f), _688);
    float _713 = mad(_660, ((-0.0f) - _689) + max(_665 + ((-0.0f) - CB4_m0[105u].z), 0.0f), _689);
    float _735 = mad(_661, ((-0.0f) - _711) + max(_663 + ((-0.0f) - CB4_m0[106u].x), 0.0f), _711);
    float _736 = mad(_661, ((-0.0f) - _712) + max(_664 + ((-0.0f) - CB4_m0[106u].y), 0.0f), _712);
    float _737 = mad(_661, ((-0.0f) - _713) + max(_665 + ((-0.0f) - CB4_m0[106u].z), 0.0f), _713);
    float _759 = mad(_662, ((-0.0f) - _735) + max(_663 + ((-0.0f) - CB4_m0[107u].x), 0.0f), _735);
    float _760 = mad(_662, ((-0.0f) - _736) + max(_664 + ((-0.0f) - CB4_m0[107u].y), 0.0f), _736);
    float _761 = mad(_662, ((-0.0f) - _737) + max(_665 + ((-0.0f) - CB4_m0[107u].z), 0.0f), _737);
    float _762 = _759 * _759;
    float _763 = _760 * _760;
    float _764 = _761 * _761;
    float _780 = ((-0.0f) - TEXCOORD_2.w) + CB0_m0[53u].x;
    float _781 = ((-0.0f) - TEXCOORD_3.w) + CB0_m0[53u].y;
    float _782 = ((-0.0f) - TEXCOORD_4.w) + CB0_m0[53u].z;
    float _783 = dot(float3(_780, _781, _782), float3(_780, _781, _782));
    float _787 = rsqrt(max(_783, 1.1754943508222875079687365372222e-38f));
    float _788 = _787 * _780;
    float _789 = _787 * _781;
    float _790 = _787 * _782;
    float _791 = sqrt(_783);
    bool _797 = int(0u) < int(asuint(CB0_m0[188u]).z);
    float _868;
    float _869;
    float _870;
    float _871;
    float _872;
    float _873;
    float _874;
    float _875;
    float _876;
    if (_797)
    {
        uint _808 = uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u)));
        uint _809 = _808 * 32u;
        uint4 _821 = uint4(T1.Load(_809).x, T1.Load(_809 + 1u).x, T1.Load(_809 + 2u).x, T1.Load(_809 + 3u).x);
        uint _832 = (_808 * 32u) + 4u;
        uint4 _844 = uint4(T1.Load(_832).x, T1.Load(_832 + 1u).x, T1.Load(_832 + 2u).x, T1.Load(_832 + 3u).x);
        _868 = asfloat(_821.x);
        _869 = asfloat(_821.y);
        _870 = asfloat(_821.z);
        _871 = asfloat(_821.w);
        _872 = asfloat(_844.x);
        _873 = asfloat(_844.y);
        _874 = asfloat(_844.z);
        _875 = asfloat(T1.Load((_808 * 32u) + 8u).x);
        _876 = asfloat(_844.w);
    }
    else
    {
        _868 = asfloat(0u);
        _869 = asfloat(0u);
        _870 = asfloat(0u);
        _871 = asfloat(0u);
        _872 = asfloat(0u);
        _873 = asfloat(0u);
        _874 = asfloat(0u);
        _875 = asfloat(0u);
        _876 = asfloat(0u);
    }
    float _880 = ((-0.0f) - TEXCOORD_2.w) + _872;
    float _881 = ((-0.0f) - TEXCOORD_3.w) + _873;
    float _882 = ((-0.0f) - TEXCOORD_4.w) + _874;
    float _886 = max(dot(float3(_880, _881, _882), float3(_880, _881, _882)), 1.1754943508222875079687365372222e-38f);
    float _887 = rsqrt(_886);
    float _888 = _887 * _880;
    float _889 = _887 * _881;
    float _890 = _887 * _882;
    float _895 = max(((-0.0f) - (_886 / (_871 * _871))) + 1.0f, 0.0f);
    float _913 = mad(_895, _868 + ((-0.0f) - CB0_m0[189u].x), CB0_m0[189u].x);
    float _914 = mad(_895, _869 + ((-0.0f) - CB0_m0[189u].y), CB0_m0[189u].y);
    float _915 = mad(_895, _870 + ((-0.0f) - CB0_m0[189u].z), CB0_m0[189u].z);
    float _917 = mad(_895, _895 + (-1.0f), 1.0f);
    float _1522;
    float _1523;
    if (0.5f < CB0_m0[22u].x)
    {
        float _965 = mad(_485, CB4_m0[135u].x, TEXCOORD_2.w) + ((-0.0f) - CB3_m0[39u].x);
        float _966 = mad(_486, CB4_m0[135u].x, TEXCOORD_3.w) + ((-0.0f) - CB3_m0[39u].y);
        float _967 = mad(_487, CB4_m0[135u].x, TEXCOORD_4.w) + ((-0.0f) - CB3_m0[39u].z);
        float _1003 = mad(CB3_m0[35u].z, _967, mad(CB3_m0[33u].z, _965, _966 * CB3_m0[34u].z)) + CB3_m0[36u].z;
        float _1013 = mad(mad(CB3_m0[35u].x, _967, mad(CB3_m0[33u].x, _965, _966 * CB3_m0[34u].x)) + CB3_m0[36u].x, CB3_m0[38u].x, CB3_m0[38u].z);
        float _1014 = mad(mad(CB3_m0[35u].y, _967, mad(CB3_m0[33u].y, _965, _966 * CB3_m0[34u].y)) + CB3_m0[36u].y, CB3_m0[38u].y, CB3_m0[38u].w);
        float _1097 = ((((((T14.SampleCmpLevelZero(S1, float2(_1013 + ((-0.0f) - CB0_m0[200u].x), _1014 + ((-0.0f) - CB0_m0[200u].y)), _1003).xxxx.x + T14.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, -1.0f, _1013), mad(CB0_m0[200u].y, 1.0f, _1014)), _1003).xxxx.x) + T14.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 1.0f, _1013), mad(CB0_m0[200u].y, -1.0f, _1014)), _1003).xxxx.x) + T14.SampleCmpLevelZero(S1, float2(_1013 + CB0_m0[200u].x, _1014 + CB0_m0[200u].y), _1003).xxxx.x) + T14.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, -1.4142129421234130859375f, _1013), mad(CB0_m0[200u].y, 0.0f, _1014)), _1003).xxxx.x) + T14.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 1.4142129421234130859375f, _1013), mad(CB0_m0[200u].y, 0.0f, _1014)), _1003).xxxx.x) + T14.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 0.0f, _1013), mad(CB0_m0[200u].y, -1.4142129421234130859375f, _1014)), _1003).xxxx.x) + T14.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 0.0f, _1013), mad(CB0_m0[200u].y, 1.4142129421234130859375f, _1014)), _1003).xxxx.x;
        float _1120 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[20u].x);
        float _1121 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[20u].y);
        float _1122 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[20u].z);
        float _1132 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[21u].x);
        float _1133 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[21u].y);
        float _1134 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[21u].z);
        float _1143 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[22u].x);
        float _1144 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[22u].y);
        float _1145 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[22u].z);
        float _1155 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[23u].x);
        float _1156 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[23u].y);
        float _1157 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[23u].z);
        bool _1177 = dot(float3(_1120, _1121, _1122), float3(_1120, _1121, _1122)) < CB2_m0[24u].x;
        bool _1178 = dot(float3(_1132, _1133, _1134), float3(_1132, _1133, _1134)) < CB2_m0[24u].y;
        bool _1179 = dot(float3(_1143, _1144, _1145), float3(_1143, _1144, _1145)) < CB2_m0[24u].z;
        float _1211 = ((-0.0f) - dot(float4(asfloat((_1177 ? 4294967295u : 0u) & 1065353216u), max(asfloat(_1177 ? 3212836864u : 2147483648u) + asfloat((_1178 ? 4294967295u : 0u) & 1065353216u), 0.0f), max(asfloat(_1178 ? 3212836864u : 2147483648u) + asfloat((_1179 ? 4294967295u : 0u) & 1065353216u), 0.0f), max(asfloat(_1179 ? 3212836864u : 2147483648u) + asfloat(((dot(float3(_1155, _1156, _1157), float3(_1155, _1156, _1157)) < CB2_m0[24u].w) ? 4294967295u : 0u) & 1065353216u), 0.0f)), float4(4.0f, 3.0f, 2.0f, 1.0f))) + 4.0f;
        uint _1213 = uint(_1211) << 2u;
        uint _1216 = _1213 + 1u;
        uint _1235 = _1213 + 2u;
        uint _1246 = _1213 + 3u;
        float _1252 = mad(CB2_m0[_1235].x, TEXCOORD_4.w, mad(CB2_m0[_1213].x, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_1216].x)) + CB2_m0[_1246].x;
        float _1253 = mad(CB2_m0[_1235].y, TEXCOORD_4.w, mad(CB2_m0[_1213].y, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_1216].y)) + CB2_m0[_1246].y;
        float _1254 = mad(CB2_m0[_1235].z, TEXCOORD_4.w, mad(CB2_m0[_1213].z, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_1216].z)) + CB2_m0[_1246].z;
        float _1268 = frac(sin(dot(float2(frac(_1252 * 1024.0f), frac(_1253 * 1024.0f)), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
        float _1269 = sin(_1268);
        float _1270 = cos(_1268);
        float _1281 = (CB2_m0[26u].x * 1.2999999523162841796875f) * _1269;
        float _1282 = (CB2_m0[26u].x * 1.2999999523162841796875f) * _1270;
        float _1283 = (CB2_m0[26u].y * 1.2999999523162841796875f) * _1269;
        float _1284 = (CB2_m0[26u].y * 1.2999999523162841796875f) * _1270;
        float _1380 = ((((T0.SampleCmpLevelZero(S1, float3(_1252 + ((_1282 * (-0.97829997539520263671875f)) + (_1281 * (-0.172399997711181640625f))), _1253 + ((_1284 * 0.172399997711181640625f) + (_1283 * (-0.97829997539520263671875f))), _1211), _1254).xxxx.x + T0.SampleCmpLevelZero(S1, float3(_1252 + ((_1282 * 0.484600007534027099609375f) + (_1281 * 0.874700009822845458984375f)), _1253 + ((_1284 * (-0.874700009822845458984375f)) + (_1283 * 0.484600007534027099609375f)), _1211), _1254).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1252 + ((_1282 * (-0.037399999797344207763671875f)) + (_1281 * (-0.96829998493194580078125f))), _1253 + ((_1284 * 0.96829998493194580078125f) + (_1283 * (-0.037399999797344207763671875f))), _1211), _1254).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1252 + ((_1282 * 0.419600009918212890625f) + (_1281 * 0.278299987316131591796875f)), _1253 + ((_1284 * (-0.278299987316131591796875f)) + (_1283 * 0.419600009918212890625f)), _1211), _1254).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1252 + ((_1282 * 0.83910000324249267578125f) + (_1281 * (-0.1507000029087066650390625f))), _1253 + ((_1284 * (-0.1507000029087066650390625f)) + (_1283 * 0.83910000324249267578125f)), _1211), _1254).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1252 + ((_1282 * 0.4792999923229217529296875f) + (_1281 * (-0.6417000293731689453125f))), _1253 + ((_1284 * (-0.6417000293731689453125f)) + (_1283 * 0.4792999923229217529296875f)), _1211), _1254).xxxx.x;
        float _1461 = (((((_1380 + T0.SampleCmpLevelZero(S1, float3(_1252 + ((_1282 * (-0.81610000133514404296875f)) + (_1281 * 0.577899992465972900390625f)), _1253 + ((_1284 * 0.577899992465972900390625f) + (_1283 * (-0.81610000133514404296875f))), _1211), _1254).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1252 + ((_1282 * (-0.4587999880313873291015625f)) + (_1281 * (-0.5408999919891357421875f))), _1253 + ((_1284 * 0.5408999919891357421875f) + (_1283 * (-0.4587999880313873291015625f))), _1211), _1254).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1252 + ((_1282 * (-0.19189999997615814208984375f)) + (_1281 * 0.704400002956390380859375f)), _1253 + ((_1284 * 0.704400002956390380859375f) + (_1283 * (-0.19189999997615814208984375f))), _1211), _1254).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1252 + ((_1282 * (-0.446399986743927001953125f)) + (_1281 * 0.105300001800060272216796875f)), _1253 + ((_1284 * 0.105300001800060272216796875f) + (_1283 * (-0.446399986743927001953125f))), _1211), _1254).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1252 + ((_1282 * 0.06610000133514404296875f) + (_1281 * (-0.20659999549388885498046875f))), _1253 + ((_1284 * (-0.20659999549388885498046875f)) + (_1283 * 0.06610000133514404296875f)), _1211), _1254).xxxx.x) * CB2_m0[25u].x;
        float _1486 = clamp(mad(_875, 2.0f, -1.0f), 0.0f, 1.0f);
        float _1490 = _1486 * CB0_m0[189u].w;
        float _1500 = (asfloat(((((_1254 >= 1.0f) ? 4294967295u : 0u) | ((0.0f >= _1254) ? 4294967295u : 0u)) != 0u) ? 1065353216u : asuint(mad(_1461, 0.090899996459484100341796875f, ((-0.0f) - CB2_m0[25u].x) + 1.0f))) * mad(CB3_m0[40u].y, ((-0.0f) - _876) + 1.0f, _876)) * asfloat((0.5f < CB3_m0[37u].x) ? asuint(min(mad(_1486, (asfloat(_604 ? asuint(CB4_m0[163u]).w : (_606 ? asuint(CB4_m0[163u]).z : (_608 ? asuint(CB4_m0[163u]).y : (_610 ? asuint(CB4_m0[163u]).x : asuint(CB4_m0[162u]).w)))) * mad(_1097 + T14.SampleCmpLevelZero(S1, float2(_1013, _1014), _1003).xxxx.x, 0.11110000312328338623046875f, -1.0f)) * CB3_m0[37u].x, 1.0f), 1.0f)) : 1065353216u);
        _1522 = mad(_1500, _1490 * CB4_m0[133u].z, mad((-0.0f) - _1490, CB4_m0[133u].z, 1.0f));
        _1523 = mad(_1500, CB4_m0[133u].z, ((-0.0f) - CB4_m0[133u].z) + 1.0f);
    }
    else
    {
        _1522 = asfloat(1065353216u);
        _1523 = asfloat(1065353216u);
    }
    float _1529 = clamp(CB3_m0[1u].w * 2.5f, 0.0f, 1.0f);
    float _1532 = mad(((-0.0f) - _1529) + 1.0f, _1522, _1529);
    bool _1536 = CB3_m0[3u].w != 0.0f;
    float _1550 = clamp(dot(float3(CB3_m0[3u].xyz), float3(TEXCOORD_2.w, TEXCOORD_3.w, TEXCOORD_4.w)) + ((-0.0f) - CB3_m0[3u].w), 0.0f, 1.0f);
    float _1601 = asfloat(_1536 ? asuint(mad(_1550, ((-0.0f) - _913) + mad(CB0_m0[15u].w, mad((-0.0f) - _913, CB0_m0[15u].x, _913 + CB0_m0[15u].x), _913 * CB0_m0[15u].x), _913)) : asuint(_913));
    float _1603 = asfloat(_1536 ? asuint(mad(_1550, ((-0.0f) - _914) + mad(CB0_m0[15u].w, mad((-0.0f) - _914, CB0_m0[15u].y, _914 + CB0_m0[15u].y), _914 * CB0_m0[15u].y), _914)) : asuint(_914));
    float _1605 = asfloat(_1536 ? asuint(mad(_1550, ((-0.0f) - _915) + mad(CB0_m0[15u].w, mad((-0.0f) - _915, CB0_m0[15u].z, _915 + CB0_m0[15u].z), _915 * CB0_m0[15u].z), _915)) : asuint(_915));
    float _1606 = max(asfloat(_604 ? asuint(CB4_m0[134u]).w : (_606 ? asuint(CB4_m0[134u]).z : (_608 ? asuint(CB4_m0[134u]).y : (_610 ? asuint(CB4_m0[134u]).x : asuint(CB4_m0[133u]).w)))), 9.9999997473787516355514526367188e-06f);
    float _1608 = 1.0f / _1606;
    float _1609 = dot(float3(_485, _486, _487), float3(_888, _889, _890));
    float _1626 = mad(mad(clamp(_426.z, 0.0f, 1.0f), 2.0f, -1.0f), 2.0f, mad(TEXCOORD_7.y, ((-0.0f) - _1609) + mad(_1609 + 1.0f, clamp(mad((-0.0f) - min(_889 * 3.0f, 1.0f), 0.5f, _486) + 1.5f, 0.0f, 1.0f), -1.0f), _1609));
    float _1639 = mad((-0.0f) - _1606, 3.0f, 2.0f);
    float _1640 = ((_1626 * 3.0f) + 3.0f) / _1639;
    float _1641 = (mad(_1626, 3.0f, (-0.0f) - (_1606 * 1.5f)) + 1.0f) / _1639;
    float _1642 = (mad(_1626, 3.0f, (-0.0f) - (_1606 * 4.5f)) + (-1.0f)) / _1639;
    float _1654 = mad(_1608, _1626 + 0.33329999446868896484375f, 0.5f);
    float _1655 = mad(_1608, _1626 + (-0.33329999446868896484375f), 0.5f);
    float _1656 = mad(_1608, _1626 + (-0.33329999446868896484375f), -0.5f);
    float _1667 = clamp(((-0.0f) - _1640) + 1.0f, 0.0f, 1.0f);
    float _1668 = clamp(min(_1640, ((-0.0f) - _1654) + 1.0f), 0.0f, 1.0f);
    float _1669 = clamp(min(_1654, ((-0.0f) - _1641) + 1.0f), 0.0f, 1.0f);
    float _1673 = clamp(min(_1656, ((-0.0f) - _1642) + 1.0f), 0.0f, 1.0f);
    float _1674 = clamp(_1642, 0.0f, 1.0f);
    float _1680 = mad(CB3_m0[40u].y, ((-0.0f) - _1532) + _1523, _1532);
    float _1687 = clamp(min(mad(_1680, -2.0f, 2.0f), mad(_1680, 2.0f, 0.0f)), 0.0f, 1.0f);
    float _1688 = clamp(mad(_1680, 2.0f, -1.0f), 0.0f, 1.0f);
    float _1689 = clamp(mad(_1680, -2.0f, 1.0f), 0.0f, 1.0f);
    float _1761;
    float _1763;
    float _1765;
    if (0.5f < CB3_m0[40u].y)
    {
        float _1728;
        if (_797)
        {
            _1728 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _1728 = asfloat(0u);
        }
        float _1732 = _1728 * CB0_m0[189u].w;
        float _1733 = _1732 * _1687;
        float _1739 = (mad((-0.0f) - _1687, _1732, _1687) + mad((-0.0f) - _1689, _1732, _1689)) + _1688;
        float _2080;
        if (_797)
        {
            _2080 = asfloat(T1.Load((uint(max(int(uint(min(int(asuint(CB0_m0[188u]).z + 4294967295u), int(uint(int(CB3_m0[2u].z)))))), int(0u))) * 32u) + 7u).x);
        }
        else
        {
            _2080 = asfloat(0u);
        }
        _1761 = _2080 * _1733;
        _1763 = _2080 * _1739;
        _1765 = mad(_1689, _1732, mad((-0.0f) - _1739, _2080, _1739) + mad((-0.0f) - _1733, _2080, _1733));
    }
    else
    {
        float _1740;
        if (_797)
        {
            _1740 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _1740 = asfloat(0u);
        }
        _1761 = _1740 * _1687;
        _1763 = _1688;
        _1765 = _1740 * _1689;
    }
    float _1773 = mad(_1765, ((-0.0f) - _1669) + (((-0.0f) - _1668) + (((-0.0f) - _1667) + 1.0f)), _1669);
    float _1774 = _1763 + _1761;
    float _1775 = _1774 * clamp(min(_1641, ((-0.0f) - _1655) + 1.0f), 0.0f, 1.0f);
    float _1778 = mad(_1674 + _1673, _1761, _1774 * clamp(min(_1655, ((-0.0f) - _1656) + 1.0f), 0.0f, 1.0f));
    float _1779 = _1673 * _1763;
    float _1782 = _1667 * TEXCOORD_7.x;
    float _1787 = mad((-0.0f) - _1667, TEXCOORD_7.x, _1667) + _1668;
    uint4 _1791 = asuint(CB4_m0[60u]);
    uint4 _1798 = asuint(CB4_m0[59u]);
    uint4 _1808 = asuint(CB4_m0[61u]);
    uint4 _1818 = asuint(CB4_m0[62u]);
    uint4 _1828 = asuint(CB4_m0[63u]);
    uint4 _1841 = asuint(CB4_m0[65u]);
    uint4 _1848 = asuint(CB4_m0[64u]);
    uint4 _1858 = asuint(CB4_m0[66u]);
    uint4 _1868 = asuint(CB4_m0[67u]);
    uint4 _1878 = asuint(CB4_m0[68u]);
    uint4 _1891 = asuint(CB0_m0[10u]);
    uint4 _1897 = asuint(CB0_m0[3u]);
    uint4 _1910 = asuint(CB0_m0[11u]);
    uint4 _1916 = asuint(CB0_m0[4u]);
    uint4 _1929 = asuint(CB0_m0[12u]);
    uint4 _1936 = asuint(CB0_m0[5u]);
    uint4 _1949 = asuint(CB0_m0[9u]);
    uint4 _1956 = asuint(CB0_m0[6u]);
    uint4 _1969 = asuint(CB0_m0[13u]);
    uint4 _1975 = asuint(CB0_m0[7u]);
    uint4 _1988 = asuint(CB0_m0[14u]);
    uint4 _1994 = asuint(CB0_m0[8u]);
    float _2006 = min(_791 * 0.4372499883174896240234375f, 1.0f);
    float _2022 = mad(CB4_m0[133u].y, mad(_2006, CB3_m0[1u].w, (-0.0f) - _2006) + 1.0f, 0.0f);
    float _2023 = mad(CB4_m0[133u].y, mad((-0.0f) - _2006, CB3_m0[1u].w, _2006) + (-1.0f), 1.0f);
    float _2024 = asfloat(_604 ? _1828.x : (_606 ? _1818.x : (_608 ? _1808.x : (_610 ? _1791.x : _1798.x)))) + 6.103515625e-05f;
    float _2026 = asfloat(_604 ? _1828.y : (_606 ? _1818.y : (_608 ? _1808.y : (_610 ? _1791.y : _1798.y)))) + 6.103515625e-05f;
    float _2027 = asfloat(_604 ? _1828.z : (_606 ? _1818.z : (_608 ? _1808.z : (_610 ? _1791.z : _1798.z)))) + 6.103515625e-05f;
    float _2030 = (_2027 + (_2026 + _2024)) * 0.3333300054073333740234375f;
    float _2041 = mad(clamp(_2024 / _2030, 0.0f, 1.0f), _2022, _2023 * _2024);
    float _2042 = mad(clamp(_2026 / _2030, 0.0f, 1.0f), _2022, _2023 * _2026);
    float _2043 = mad(clamp(_2027 / _2030, 0.0f, 1.0f), _2022, _2023 * _2027);
    float _2044 = asfloat(_604 ? _1878.x : (_606 ? _1868.x : (_608 ? _1858.x : (_610 ? _1841.x : _1848.x)))) + 6.103515625e-05f;
    float _2045 = asfloat(_604 ? _1878.y : (_606 ? _1868.y : (_608 ? _1858.y : (_610 ? _1841.y : _1848.y)))) + 6.103515625e-05f;
    float _2046 = asfloat(_604 ? _1878.z : (_606 ? _1868.z : (_608 ? _1858.z : (_610 ? _1841.z : _1848.z)))) + 6.103515625e-05f;
    float _2049 = (_2046 + (_2045 + _2044)) * 0.3333300054073333740234375f;
    float _2059 = mad(clamp(_2044 / _2049, 0.0f, 1.0f), _2022, _2023 * _2044);
    float _2060 = mad(clamp(_2045 / _2049, 0.0f, 1.0f), _2022, _2023 * _2045);
    float _2061 = mad(clamp(_2046 / _2049, 0.0f, 1.0f), _2022, _2023 * _2046);
    float _2103;
    if (_797)
    {
        _2103 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
    }
    else
    {
        _2103 = asfloat(0u);
    }
    float _2106 = mad(_2103, ((-0.0f) - _917) + 1.0f, _917);
    float _2107 = _2106 * _1601;
    float _2108 = _2106 * _1603;
    float _2109 = _2106 * _1605;
    float _2110 = min(1.0f / max(_1605 + 1.1754943508222875079687365372222e-38f, max(_1603 + 1.1754943508222875079687365372222e-38f, _1601 + 1.1754943508222875079687365372222e-38f)), 1.0f);
    float _2138 = mad(_2107, mad(_1674, _1763, mad(asfloat(_553 ? _1969.x : _1975.x), _1778, _1779 * asfloat(_553 ? _1949.x : _1956.x))), (_2110 * _2107) * mad(asfloat(_553 ? _1891.x : _1897.x) * _2041, _1775, mad(asfloat(_553 ? _1910.x : _1916.x) * _2041, _1773, mad(asfloat(_553 ? _1988.x : _1994.x) * _2059, _1782, _1787 * (asfloat(_553 ? _1929.x : _1936.x) * _2059)))));
    float _2139 = mad(_2108, mad(_1674, _1763, mad(asfloat(_553 ? _1969.y : _1975.y), _1778, _1779 * asfloat(_553 ? _1949.y : _1956.y))), (_2110 * _2108) * mad(asfloat(_553 ? _1891.y : _1897.y) * _2042, _1775, mad(asfloat(_553 ? _1910.y : _1916.y) * _2042, _1773, mad(asfloat(_553 ? _1988.y : _1994.y) * _2060, _1782, _1787 * (asfloat(_553 ? _1929.y : _1936.y) * _2060)))));
    float _2140 = mad(_2109, mad(_1674, _1763, mad(asfloat(_553 ? _1969.z : _1975.z), _1778, _1779 * asfloat(_553 ? _1949.z : _1956.z))), (_2110 * _2109) * mad(asfloat(_553 ? _1891.z : _1897.z) * _2043, _1775, mad(asfloat(_553 ? _1910.z : _1916.z) * _2043, _1773, mad(asfloat(_553 ? _1988.z : _1994.z) * _2061, _1782, _1787 * (asfloat(_553 ? _1929.z : _1936.z) * _2061)))));
    bool _2143 = 0.5f < TEXCOORD_7.z;
    float _2260;
    float _2261;
    float _2262;
    if (_554 == 0u)
    {
        float _2154 = dot(float3(_762, _763, _764), float3(0.2899999916553497314453125f, 0.60000002384185791015625f, 0.10999999940395355224609375f));
        bool _2161 = TEXCOORD_7.z < 0.5f;
        float _2162 = mad(_2154, 0.2874999940395355224609375f, 1.4375f);
        float _2165 = mad(_2154, 0.4000000059604644775390625f, 1.0f);
        float _2166 = dot(float3(_888, _889, _890), float3(_2143 ? _485 : TEXCOORD_2.x, _2143 ? _486 : TEXCOORD_2.y, _2143 ? _487 : TEXCOORD_2.z));
        float _2173 = clamp(mad((-0.0f) - (((-0.0f) - _1609) + _2166), 3.0f, 1.0f), 0.0f, 1.0f);
        float _2179 = clamp(_1609, 0.0f, 1.0f);
        float _2183 = clamp(_2166, 0.0f, 1.0f);
        float _2185 = max(_762, max(_764, _763));
        bool _2186 = 1.0f < _2185;
        float _2204 = mad(mad(mad(mad(_1609, 0.5f, 0.5f), min(sqrt(_2173) * (_2173 + _2173), 1.0f), (-0.0f) - _2179), 0.5f, _2179), ((-0.0f) - _2162) + 1.0f, _2162);
        float _2211 = exp2(_2204 * log2(asfloat(_2186 ? asuint(_762 / _2185) : asuint(_762))));
        float _2212 = exp2(_2204 * log2(asfloat(_2186 ? asuint(_763 / _2185) : asuint(_763))));
        float _2213 = exp2(_2204 * log2(asfloat(_2186 ? asuint(_764 / _2185) : asuint(_764))));
        float _2220 = mad(mad((-0.0f) - _759, _759, _2211), 0.5f, _762);
        float _2221 = mad(mad((-0.0f) - _760, _760, _2212), 0.5f, _763);
        float _2222 = mad(mad((-0.0f) - _761, _761, _2213), 0.5f, _764);
        float _2233 = mad((-0.0f) - _2154, 0.0500000007450580596923828125f, 1.0499999523162841796875f);
        _2260 = asfloat(_2161 ? asuint(mad(_2183, ((-0.0f) - _2220) + _2211, _2220)) : asuint(_2233 * exp2(log2(_762) * _2165)));
        _2261 = asfloat(_2161 ? asuint(mad(_2183, ((-0.0f) - _2221) + _2212, _2221)) : asuint(_2233 * exp2(log2(_763) * _2165)));
        _2262 = asfloat(_2161 ? asuint(mad(_2183, ((-0.0f) - _2222) + _2213, _2222)) : asuint(_2233 * exp2(log2(_764) * _2165)));
    }
    else
    {
        _2260 = _762;
        _2261 = _763;
        _2262 = _764;
    }
    float _2264 = mad((-0.0f) - _503, 0.959999978542327880859375f, 0.959999978542327880859375f);
    float _2266 = _2264 * _2260;
    float _2267 = _2264 * _2261;
    float _2268 = _2264 * _2262;
    float _2273 = mad(_503, _2260 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _2275 = mad(_503, _2261 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _2276 = mad(_503, _2262 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _2281 = mad((-0.0f) - _513, CB4_m0[137u].w, 1.0f);
    float _2282 = _2281 * _2281;
    float _2303 = dot(float3((_2138 + CB0_m0[2u].x) + TEXCOORD_8.x, (_2139 + CB0_m0[2u].y) + TEXCOORD_8.y, (_2140 + CB0_m0[2u].z) + TEXCOORD_8.z), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2317 = ((-0.0f) - CB0_m0[19u].x) + CB0_m0[19u].y;
    float _2318 = 1.0f / _2317;
    float _2341 = asfloat((_2303 < CB0_m0[19u].x) ? asuint(_2303) : asuint(mad((-0.0f) - _2317, 1.0f / mad(_2303, _2318, mad((-0.0f) - CB0_m0[19u].x, _2318, 1.0f)), CB0_m0[19u].y))) / (_2303 + 9.9999997473787516355514526367188e-05f);
    float _2342 = _2138 * _2341;
    float _2343 = _2139 * _2341;
    float _2344 = _2140 * _2341;
    uint4 _2348 = asuint(CB4_m0[75u]);
    uint4 _2355 = asuint(CB4_m0[74u]);
    uint4 _2365 = asuint(CB4_m0[76u]);
    uint4 _2375 = asuint(CB4_m0[77u]);
    uint4 _2385 = asuint(CB4_m0[78u]);
    float _2421 = asfloat(_604 ? asuint(CB4_m0[142u]).y : (_606 ? asuint(CB4_m0[142u]).x : (_608 ? asuint(CB4_m0[141u]).w : (_610 ? asuint(CB4_m0[141u]).z : asuint(CB4_m0[141u]).y))));
    float _2456;
    if (0.5f < _2421)
    {
        _2456 = clamp(((clamp(mad(_1626, 1.5f, -0.5f), 0.0f, 1.0f) + _497) + (-1.0f)) / max(asfloat(_604 ? asuint(CB4_m0[143u]).z : (_606 ? asuint(CB4_m0[143u]).y : (_608 ? asuint(CB4_m0[143u]).x : (_610 ? asuint(CB4_m0[142u]).w : asuint(CB4_m0[142u]).z)))), 9.9999997473787516355514526367188e-06f), 0.0f, 1.0f);
    }
    else
    {
        _2456 = _497;
    }
    float _2460 = _2456 * CB4_m0[143u].w;
    float _2468 = mad(_880, _887, _788);
    float _2469 = mad(_881, _887, _789);
    float _2470 = mad(_882, _887, _790);
    float _2474 = rsqrt(dot(float3(_2468, _2469, _2470), float3(_2468, _2469, _2470)));
    float _2475 = _2474 * _2468;
    float _2476 = _2474 * _2469;
    float _2477 = _2474 * _2470;
    float _2503 = asfloat(_604 ? asuint(CB4_m0[141u]).x : (_606 ? asuint(CB4_m0[140u]).w : (_608 ? asuint(CB4_m0[140u]).z : (_610 ? asuint(CB4_m0[140u]).y : asuint(CB4_m0[140u]).x))));
    float _2514 = clamp(mad(_2503 * dot(float3(_485, _486, _487), float3(_2475, _2476, _2477)), 0.75f, 0.25f), 0.0f, 1.0f);
    float _2520 = clamp(mad(_2503 * dot(float3(_888, _889, _890), float3(_2475, _2476, _2477)), 0.75f, 0.25f), 0.0f, 1.0f);
    float _2522 = mad(_2514 * _2514, mad(_2282, _2282, -1.0f), 1.000010013580322265625f);
    float _2596 = (((clamp(mad(_1609 * _2503, 0.75f, 0.25f), 0.0f, 1.0f) * clamp(mad((-0.0f) - _513, CB4_m0[137u].w, (_2282 * _2282) / (mad(_2282, 4.0f, 2.0f) * (max(_2520 * _2520, 0.100000001490116119384765625f) * (_2522 * _2522)))), 0.0f, 1.0f)) / max(_2282, 9.9999997473787516355514526367188e-06f)) * (asfloat(_604 ? asuint(CB4_m0[139u]).w : (_606 ? asuint(CB4_m0[139u]).z : (_608 ? asuint(CB4_m0[139u]).y : (_610 ? asuint(CB4_m0[139u]).x : asuint(CB4_m0[138u]).w)))) * asfloat(_604 ? asuint(CB4_m0[166u]).w : (_606 ? asuint(CB4_m0[166u]).z : (_608 ? asuint(CB4_m0[166u]).y : (_610 ? asuint(CB4_m0[166u]).x : asuint(CB4_m0[165u]).w)))))) * 10.0f;
    float _2604 = asfloat((_2421 < 0.5f) ? asuint(clamp(_2596, 0.0f, 1.0f) * 100.0f) : 1099257348u);
    float _2605 = (_2273 * (asfloat(_604 ? _2385.x : (_606 ? _2375.x : (_608 ? _2365.x : (_610 ? _2348.x : _2355.x)))) * _2460)) * _2604;
    float _2606 = (_2275 * (asfloat(_604 ? _2385.y : (_606 ? _2375.y : (_608 ? _2365.y : (_610 ? _2348.y : _2355.y)))) * _2460)) * _2604;
    float _2607 = (_2276 * (asfloat(_604 ? _2385.z : (_606 ? _2375.z : (_608 ? _2365.z : (_610 ? _2348.z : _2355.z)))) * _2460)) * _2604;
    uint _2624 = (CB4_m0[144u].x >= 0.5f) ? 4294967295u : 0u;
    uint4 _2628 = asuint(CB4_m0[80u]);
    uint4 _2635 = asuint(CB4_m0[79u]);
    uint4 _2645 = asuint(CB4_m0[81u]);
    uint4 _2655 = asuint(CB4_m0[82u]);
    uint4 _2664 = asuint(CB4_m0[83u]);
    float _2684 = asfloat(_2624 & asuint(_2260 * (_540 * asfloat(_604 ? _2664.x : (_606 ? _2655.x : (_608 ? _2645.x : (_610 ? _2628.x : _2635.x)))))));
    float _2686 = asfloat(_2624 & asuint(_2261 * (_540 * asfloat(_604 ? _2664.y : (_606 ? _2655.y : (_608 ? _2645.y : (_610 ? _2628.y : _2635.y)))))));
    float _2688 = asfloat(_2624 & asuint(_2262 * (_540 * asfloat(_604 ? _2664.z : (_606 ? _2655.z : (_608 ? _2645.z : (_610 ? _2628.z : _2635.z)))))));
    float _2690 = _2688 + (_2686 + _2684);
    float _2697 = _2341 * TEXCOORD_8.x;
    float _2698 = _2341 * TEXCOORD_8.y;
    float _2699 = _2341 * TEXCOORD_8.z;
    float _2755;
    float _2756;
    float _2757;
    float _2758;
    float _2759;
    float _2760;
    if (_797)
    {
        uint _2713 = uint(max(int(uint(min(int(asuint(CB0_m0[188u]).z + 4294967295u), int(uint(int(CB3_m0[2u].z)))))), int(0u)));
        uint _2715 = (_2713 * 32u) + 24u;
        uint3 _2725 = uint3(T1.Load(_2715).x, T1.Load(_2715 + 1u).x, T1.Load(_2715 + 2u).x);
        uint _2733 = (_2713 * 32u) + 28u;
        uint3 _2742 = uint3(T1.Load(_2733).x, T1.Load(_2733 + 1u).x, T1.Load(_2733 + 2u).x);
        _2755 = asfloat(_2725.x);
        _2756 = asfloat(_2725.y);
        _2757 = asfloat(_2725.z);
        _2758 = asfloat(_2742.x);
        _2759 = asfloat(_2742.y);
        _2760 = asfloat(_2742.z);
    }
    else
    {
        _2755 = asfloat(0u);
        _2756 = asfloat(0u);
        _2757 = asfloat(0u);
        _2758 = asfloat(0u);
        _2759 = asfloat(0u);
        _2760 = asfloat(0u);
    }
    bool _2764 = 0.5f < CB0_m0[23u].y;
    bool _2765 = _555 != 0u;
    float _2858;
    float _2860;
    float _2862;
    if (0.5f >= CB0_m0[188u].w)
    {
        float _2800 = clamp(mad((-0.0f) - dot(float3(_788, _789, _790), float3(_888, _889, _890)), 0.5f, 0.5f), 0.0f, 1.0f);
        float _2802 = mad(_486, 0.5f, 0.5f);
        float _2811 = clamp((asfloat((_555 != 0u) ? asuint(_2802) : asuint(_2802 * _2802)) + (-0.20000000298023223876953125f)) * 1.25f, 0.0f, 1.0f);
        float _2814 = (_2811 * _2811) * mad(_2811, -2.0f, 3.0f);
        float _2815 = _2814 * _2814;
        bool _2818 = _555 != 0u;
        uint _2893;
        if (_797)
        {
            _2893 = T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x;
        }
        else
        {
            _2893 = 0u;
        }
        float _2923 = min(_791 * 0.083333335816860198974609375f, 1.0f);
        float _2931 = ((-0.0f) - dot(float3(_788, _789, _790), float3(_485, _486, _487))) + 1.0f;
        float _2940 = clamp((((-0.0f) - mad(_2923, -0.300000011920928955078125f, 0.5f)) + _2931) * 3.3333332538604736328125f, 0.0f, 1.0f);
        float _2941 = clamp((((-0.0f) - mad(_2923, -0.300000011920928955078125f, 0.60000002384185791015625f)) + _2931) * 5.000000476837158203125f, 0.0f, 1.0f);
        float _2972 = CB0_m0[189u].x * CB0_m0[189u].x;
        float _2973 = CB0_m0[189u].y * CB0_m0[189u].y;
        float _2974 = CB0_m0[189u].z * CB0_m0[189u].z;
        float _2975 = _2972 * _2972;
        float _2976 = _2973 * _2973;
        float _2977 = _2974 * _2974;
        float _2978 = _2975 * _2975;
        float _2979 = _2976 * _2976;
        float _2980 = _2977 * _2977;
        float _2987 = (1.0f / (dot(float3(_2978, _2979, _2980), 0.699999988079071044921875f.xxx) + 9.9999997473787516355514526367188e-06f)) * dot(float3(CB0_m0[189u].xyz), 0.3300000131130218505859375f.xxx);
        float _2994 = mad(_1523, mad(_2987, _2978, (-0.0f) - _2342), _2342);
        float _2995 = mad(_1523, mad(_2987, _2979, (-0.0f) - _2343), _2343);
        float _2996 = mad(_1523, mad(_2987, _2980, (-0.0f) - _2344), _2344);
        float _3001 = exp2(log2(_2800 * _2800) * 20.0f);
        float _3025 = mad(_2262, _2264, _2267 + _2266) * 0.3300000131130218505859375f;
        float _3042 = exp2(log2(clamp(_2266, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _3043 = exp2(log2(clamp(_2267, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _3044 = exp2(log2(clamp(_2268, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _3049 = rsqrt(max(dot(float3(_3042, _3043, _3044), float3(_3042, _3043, _3044)), 6.103515625e-05f));
        float _3050 = _3049 * _3042;
        float _3051 = _3049 * _3043;
        float _3052 = _3049 * _3044;
        float _3057 = CB0_m0[198u].w * 48.0f;
        float _3059 = mad((_3025 * _3025) * CB0_m0[199u].w, -0.199999988079071044921875f, 1.0f) * 0.100000001490116119384765625f;
        float _3063 = (-0.0f) - _3059;
        float _3073 = ((clamp(mad(asfloat(_2893), 0.39999997615814208984375f, _1523) + 0.60000002384185791015625f, 0.0f, 1.0f) * (mad(_1532 * mad(_1609, 0.5f, 0.5f), 1.39999997615814208984375f, 0.100000001490116119384765625f) * (mad(_2800, 0.800000011920928955078125f, 0.20000000298023223876953125f) * mad(CB0_m0[199u].x, mad(_2814, mad(_2814 * (_2815 * _2815), asfloat(_2818 ? 3212836864u : 3204448256u) + asfloat(_2818 ? 1050253722u : 1065353216u), asfloat(_2818 ? 1065353216u : 1056964608u)), -0.100000001490116119384765625f), 0.100000001490116119384765625f)))) * mad(CB0_m0[199u].y, mad(clamp((-0.0f) - _789, 0.0f, 1.0f), asfloat((0.0f != TEXCOORD_7.z) ? 1083179008u : asuint(mad(_499, CB4_m0[137u].z, 2.5f))), -0.5f), 1.0f)) * asfloat((_555 != 0u) ? asuint((_2940 * _2940) * mad(_2940, -2.0f, 3.0f)) : asuint((_2941 * _2941) * mad(_2941, -2.0f, 3.0f)));
        uint4 _3083 = asuint(CB4_m0[87u]);
        uint4 _3090 = asuint(CB4_m0[86u]);
        uint4 _3100 = asuint(CB4_m0[88u]);
        uint4 _3110 = asuint(CB4_m0[89u]);
        uint4 _3120 = asuint(CB4_m0[90u]);
        float _3132 = ((_3057 * mad(_503, mad(_3063, _3052, _2276), _3052 * _3059)) * (mad(CB0_m0[199u].z, mad((-0.0f) - _2140, _2341, mad(_3001, mad(_2140, _2341, (-0.0f) - _2996), _2996)), _2344) * _3073)) * asfloat(_604 ? _3120.z : (_606 ? _3110.z : (_608 ? _3100.z : (_610 ? _3083.z : _3090.z))));
        float _3135 = mad(clamp(mad(_791, 0.20000000298023223876953125f, -1.0f), 0.0f, 1.0f), -0.699999988079071044921875f, 1.0f);
        float _3137 = _3135 * (((_3057 * mad(_503, mad(_3063, _3050, _2273), _3050 * _3059)) * (mad(CB0_m0[199u].z, mad((-0.0f) - _2138, _2341, mad(_3001, mad(_2138, _2341, (-0.0f) - _2994), _2994)), _2342) * _3073)) * asfloat(_604 ? _3120.x : (_606 ? _3110.x : (_608 ? _3100.x : (_610 ? _3083.x : _3090.x)))));
        float _3138 = _3135 * (((_3057 * mad(_503, mad(_3063, _3051, _2275), _3051 * _3059)) * (mad(CB0_m0[199u].z, mad((-0.0f) - _2139, _2341, mad(_3001, mad(_2139, _2341, (-0.0f) - _2995), _2995)), _2343) * _3073)) * asfloat(_604 ? _3120.y : (_606 ? _3110.y : (_608 ? _3100.y : (_610 ? _3083.y : _3090.y)))));
        float _3141 = mad(_3132, _3135, _3138 + _3137);
        float _3143 = mad(_3141 * _3141, 0.0500000007450580596923828125f, 1.0f);
        float _3148 = asfloat(_2143 ? 1056964608u : 1065353216u);
        float _3149 = _3148 * (_3143 * _3137);
        float _3150 = _3148 * (_3143 * _3138);
        float _3151 = _3148 * (_3143 * (_3135 * _3132));
        bool _3155 = 0.5f < CB3_m0[1u].w;
        _2858 = asfloat(_3155 ? asuint(min(_3151, 0.699999988079071044921875f)) : asuint(_3151)) * CB0_m0[198u].z;
        _2860 = asfloat(_3155 ? asuint(min(_3150, 0.699999988079071044921875f)) : asuint(_3150)) * CB0_m0[198u].y;
        _2862 = asfloat(_3155 ? asuint(min(_3149, 0.699999988079071044921875f)) : asuint(_3149)) * CB0_m0[198u].x;
    }
    else
    {
        _2858 = asfloat(0u);
        _2860 = asfloat(0u);
        _2862 = asfloat(0u);
    }
    float _2864 = _2684 + (max(mad(_2605, _2342, -1.0f), 0.0f) + mad(asfloat(_2764 ? 1028443341u : (_2765 ? asuint(_2755) : asuint(_2758))), _2260 * _2341, mad(_2697, _2266, mad(_2266, _2342, _2342 * _2605))));
    float _2865 = _2686 + (max(mad(_2606, _2343, -1.0f), 0.0f) + mad(asfloat(_2764 ? 1028443341u : (_2765 ? asuint(_2756) : asuint(_2759))), _2261 * _2341, mad(_2698, _2267, mad(_2267, _2343, _2343 * _2606))));
    float _2866 = _2688 + (max(mad(_2607, _2344, -1.0f), 0.0f) + mad(asfloat(_2764 ? 1028443341u : (_2765 ? asuint(_2757) : asuint(_2760))), _2262 * _2341, mad(_2699, _2268, mad(_2268, _2344, _2344 * _2607))));
    float _2874 = CB4_m0[29u].w * CB4_m0[155u].w;
    float _2886 = mad(_2874, ((-0.0f) - _2864) + CB4_m0[29u].x, _2864);
    float _2887 = mad(_2874, ((-0.0f) - _2865) + CB4_m0[29u].y, _2865);
    float _2888 = mad(_2874, ((-0.0f) - _2866) + CB4_m0[29u].z, _2866);
    float _3341;
    float _3343;
    float _3345;
    float _3347;
    if (0.5f < CB4_m0[152u].y)
    {
        bool _3180 = CB4_m0[153u].x < 0.5f;
        float _3217 = mad(gl_FragCoord.x, CB0_m0[160u].z, -0.5f);
        float _3218 = mad(gl_FragCoord.y, CB0_m0[160u].w, -0.5f);
        float _3246 = ((-0.0f) - _261) / CB0_m0[93u].y;
        float _3257 = asfloat((0.5f < CB4_m0[152u].z) ? asuint(mad(CB0_m0[85u].w, mad((-0.0f) - _3246, 0.5f, 1.0f), _3246 * 0.5f)) : 1065353216u);
        float4 _3290 = T10.Sample(S4, float2((mad(_3257 * mad(CB4_m0[125u].z, mad(CB0_m0[118u].x, _487, mad(CB0_m0[116u].x, _485, _486 * CB0_m0[117u].x)), (CB0_m0[160u].w * CB0_m0[160u].x) * (_3217 + _3217)), CB4_m0[47u].x, CB4_m0[47u].z) + 0.5f) + mad(CB4_m0[124u].x, CB0_m0[40u].y, CB4_m0[124u].z), (mad(_3257 * mad(CB4_m0[125u].z, mad(CB0_m0[118u].y, _487, mad(CB0_m0[116u].y, _485, _486 * CB0_m0[117u].y)), _3218 + _3218), CB4_m0[47u].y, CB4_m0[47u].w) + 0.5f) + mad(CB4_m0[124u].y, CB0_m0[40u].y, CB4_m0[124u].w)));
        float _3306 = _3290.w * CB4_m0[109u].w;
        float _3339 = asfloat((0.5f < CB4_m0[153u].z) ? asuint(mad(mad(sin((CB0_m0[40u].y / max(CB4_m0[168u].x, 0.00999999977648258209228515625f)) * 6.283185482025146484375f), 0.5f, 0.5f), ((-0.0f) - CB4_m0[125u].x) + CB4_m0[125u].y, CB4_m0[125u].x)) : 1065353216u);
        float _3340 = _3339 * _3306;
        float _3419;
        float _3420;
        float _3421;
        if (0.5f < CB4_m0[152u].w)
        {
            float _3355 = mad((-0.0f) - _3306, _3339, 1.0f);
            _3419 = _2864 * mad(_3290.x * CB4_m0[109u].x, _3340, _3355);
            _3420 = _2865 * mad(_3290.y * CB4_m0[109u].y, _3340, _3355);
            _3421 = _2866 * mad(_3290.z * CB4_m0[109u].z, _3340, _3355);
        }
        else
        {
            _3419 = mad(_3340, mad(CB4_m0[109u].x, _3290.x, (-0.0f) - _2864), _2864);
            _3420 = mad(_3340, mad(CB4_m0[109u].y, _3290.y, (-0.0f) - _2865), _2865);
            _3421 = mad(_3340, mad(CB4_m0[109u].z, _3290.z, (-0.0f) - _2866), _2866);
        }
        float4 _3444 = T11.Sample(S5, float2(mad(CB0_m0[40u].y, CB4_m0[149u].z, mad(_3180 ? TEXCOORD.x : TEXCOORD_1.x, CB4_m0[48u].x, CB4_m0[48u].z)), mad(CB0_m0[40u].y, CB4_m0[149u].w, mad(_3180 ? TEXCOORD.y : TEXCOORD_1.y, CB4_m0[48u].y, CB4_m0[48u].w))));
        float _3446 = _3444.x;
        _3341 = mad(_3446, ((-0.0f) - _2886) + _3419, _2886);
        _3343 = mad(_3446, ((-0.0f) - _2887) + _3420, _2887);
        _3345 = mad(_3446, ((-0.0f) - _2888) + _3421, _2888);
        _3347 = mad(_3421 + (_3420 + _3419), _3446, _2690);
    }
    else
    {
        _3341 = _2886;
        _3343 = _2887;
        _3345 = _2888;
        _3347 = _2690;
    }
    float _3532;
    float _3534;
    float _3536;
    float _3538;
    float _3540;
    float _3542;
    float _3544;
    if (0.5f < CB4_m0[156u].x)
    {
        float _3379 = CB4_m0[156u].z * 0.01745329238474369049072265625f;
        float _3381 = sin(_3379);
        float _3382 = cos(_3379);
        bool _3387 = CB4_m0[156u].y < 0.5f;
        float _3550;
        float _3551;
        float _3552;
        if (1.5f < CB4_m0[156u].y)
        {
            bool _3459 = CB4_m0[157u].w < 0.5f;
            uint4 _3506 = asuint(CB4_m0[25u]);
            float _3519 = ((-0.0f) - TEXCOORD_2.w) + asfloat(_3459 ? asuint(mad(CB1_m0[2u].x, CB4_m0[25u].z, mad(CB1_m0[0u].x, CB4_m0[25u].x, CB1_m0[1u].x * CB4_m0[25u].y)) + CB1_m0[3u].x) : _3506.x);
            float _3520 = ((-0.0f) - TEXCOORD_3.w) + asfloat(_3459 ? asuint(mad(CB1_m0[2u].y, CB4_m0[25u].z, mad(CB1_m0[0u].y, CB4_m0[25u].x, CB1_m0[1u].y * CB4_m0[25u].y)) + CB1_m0[3u].y) : _3506.y);
            float _3521 = ((-0.0f) - TEXCOORD_4.w) + asfloat(_3459 ? asuint(mad(CB1_m0[2u].z, CB4_m0[25u].z, mad(CB1_m0[0u].z, CB4_m0[25u].x, CB1_m0[1u].z * CB4_m0[25u].y)) + CB1_m0[3u].z) : _3506.z);
            float _3526 = rsqrt(max(dot(float3(_3519, _3520, _3521), float3(_3519, _3520, _3521)), 1.1754943508222875079687365372222e-38f));
            _3550 = _3526 * _3520;
            _3551 = _3526 * _3521;
            _3552 = _3526 * _3519;
        }
        else
        {
            _3550 = asfloat(_3387 ? asuint(_889) : asuint(_789));
            _3551 = asfloat(_3387 ? asuint(_890) : asuint(_790));
            _3552 = asfloat(_3387 ? asuint(_888) : asuint(_788));
        }
        float _3572 = clamp((mad(CB4_m0[156u].w, 2.0f, dot(float3(_485, _486, _487), float3(dot(float2(_3382, _3381), float2(_3552, _3551)), _3550, dot(float2((-0.0f) - _3381, _3382), float2(_3552, _3551))))) + (-1.0f)) / max(CB4_m0[157u].x, 9.9999997473787516355514526367188e-06f), 0.0f, 1.0f);
        float _3600 = mad(_3572, CB4_m0[30u].x + ((-0.0f) - CB4_m0[31u].x), CB4_m0[31u].x);
        float _3601 = mad(_3572, CB4_m0[30u].y + ((-0.0f) - CB4_m0[31u].y), CB4_m0[31u].y);
        float _3602 = mad(_3572, CB4_m0[30u].z + ((-0.0f) - CB4_m0[31u].z), CB4_m0[31u].z);
        float _3603 = mad(_3572, CB4_m0[30u].w + ((-0.0f) - CB4_m0[31u].w), CB4_m0[31u].w);
        bool _3607 = 0.5f < CB4_m0[157u].z;
        float _3612 = asfloat(_3607 ? asuint(_2260) : 1065353216u);
        float _3614 = asfloat(_3607 ? asuint(_2261) : 1065353216u);
        float _3616 = asfloat(_3607 ? asuint(_2262) : 1065353216u);
        float _3617 = _3612 * _3600;
        float _3618 = _3614 * _3601;
        bool _3623 = CB4_m0[157u].y < 0.5f;
        _3532 = asfloat(0u);
        _3534 = asfloat(_3623 ? asuint(mad(_3603, mad(_3600, _3612, (-0.0f) - _3341), _3341)) : asuint(mad(_3603, _3617, _3341)));
        _3536 = asfloat(_3623 ? asuint(mad(_3603, mad(_3601, _3614, (-0.0f) - _3343), _3343)) : asuint(mad(_3603, _3618, _3343)));
        _3538 = asfloat(_3623 ? asuint(mad(_3603, mad(_3602, _3616, (-0.0f) - _3345), _3345)) : asuint(mad(_3603, _3616 * _3602, _3345)));
        _3540 = asfloat(0u);
        _3542 = mad(mad(_3602, _3616, _3618 + _3617), _3603, _3347);
        _3544 = asfloat(0u);
    }
    else
    {
        float _3415 = mad((-0.0f) - CB4_m0[29u].w, CB4_m0[155u].w, 1.0f);
        _3532 = _3415 * (_2858 * mad(_2699, 2.0f, 1.0f));
        _3534 = _3341;
        _3536 = _3343;
        _3538 = _3345;
        _3540 = _3415 * (_2862 * mad(_2697, 2.0f, 1.0f));
        _3542 = _3347;
        _3544 = _3415 * (_2860 * mad(_2698, 2.0f, 1.0f));
    }
    float _3743;
    float _3744;
    float _3745;
    float _3746;
    if (0.5f < CB4_m0[153u].w)
    {
        bool _3651 = 0.5f < CB4_m0[158u].y;
        float _3660 = _3651 ? TEXCOORD_1.x : TEXCOORD.x;
        float _3661 = _3651 ? TEXCOORD_1.y : TEXCOORD.y;
        bool _3710 = mad(T13.Sample(S7, float2(mad(_3660, CB4_m0[43u].x, CB4_m0[43u].z), mad(_3661, CB4_m0[43u].y, CB4_m0[43u].w))).x, T5.Sample(S2, float2(mad(_3660, CB4_m0[102u].x, CB4_m0[102u].z), mad(_3661, CB4_m0[102u].y, CB4_m0[102u].w))).x, (-0.0f) - mad(CB4_m0[154u].y, CB4_m0[154u].x + 1.0f, (-0.0f) - CB4_m0[154u].x)) < CB4_m0[154u].x;
        uint4 _3726 = asuint(CB4_m0[100u]);
        _3743 = asfloat(_3710 ? _3726.x : asuint(_3534));
        _3744 = asfloat(_3710 ? _3726.y : asuint(_3536));
        _3745 = asfloat(_3710 ? _3726.z : asuint(_3538));
        _3746 = asfloat(_3710 ? asuint(((CB4_m0[100u].y + CB4_m0[100u].x) + CB4_m0[100u].z) + _3542) : asuint(_3542));
    }
    else
    {
        _3743 = _3534;
        _3744 = _3536;
        _3745 = _3538;
        _3746 = _3542;
    }
    bool _3753 = 0.5f < float(int(asuint(CB4_m0[131u]).y));
    bool _3804 = (gl_FrontFacing ? 4294967295u : 0u) != 0u;
    float _3845 = max(CB4_m0[116u].x, 9.9999997473787516355514526367188e-05f);
    float _3846 = max(CB4_m0[116u].y, 9.9999997473787516355514526367188e-05f);
    float _3847 = _3846 * _3845;
    float _3858 = frac((CB0_m0[40u].y * CB4_m0[154u].z) / _3847);
    float4 _3870 = T8.Sample(S3, float2(mad(asfloat(_3753 ? asuint(mad(TEXCOORD_1.x, CB4_m0[56u].x, CB4_m0[56u].z)) : asuint(mad(TEXCOORD.x, CB4_m0[56u].x, CB4_m0[56u].z))), _3845, floor(_3847 * _3858) / _3845), mad(asfloat(_3753 ? asuint(mad(TEXCOORD_1.y, CB4_m0[56u].y, CB4_m0[56u].w)) : asuint(mad(TEXCOORD.y, CB4_m0[56u].y, CB4_m0[56u].w))), _3846, floor(_3846 * (((-0.0f) - _3858) + 1.0f)) / _3846)));
    float _3875 = log2(((-0.0f) - clamp(dot(float3(_3804 ? TEXCOORD_2.x : ((-0.0f) - TEXCOORD_2.x), _3804 ? TEXCOORD_2.y : ((-0.0f) - TEXCOORD_2.y), _3804 ? TEXCOORD_2.z : ((-0.0f) - TEXCOORD_2.z)), float3(_788, _789, _790)), 0.0f, 1.0f)) + 1.0f);
    float _3882 = exp2(_3875 * CB4_m0[155u].x);
    float _3888 = _3882 * CB4_m0[115u].w;
    float _3901 = mad(gl_FragCoord.x * CB0_m0[160u].z, CB4_m0[55u].x, CB4_m0[55u].z) * CB4_m0[55u].x;
    float _3902 = mad(gl_FragCoord.y * CB0_m0[160u].w, CB4_m0[55u].y, CB4_m0[55u].w) * CB4_m0[55u].y;
    float _3907 = max(CB4_m0[117u].x, 9.9999997473787516355514526367188e-05f);
    float _3908 = max(CB4_m0[117u].y, 9.9999997473787516355514526367188e-05f);
    float _3909 = _3908 * _3907;
    float _3911 = frac((CB0_m0[40u].y * CB4_m0[154u].w) / _3909);
    float _3932 = max(CB4_m0[117u].x + 1.0f, 9.9999997473787516355514526367188e-05f);
    float _3933 = max(CB4_m0[117u].y + 1.0f, 9.9999997473787516355514526367188e-05f);
    float _3934 = _3933 * _3932;
    float _3940 = frac(((CB4_m0[154u].w + 2.0f) * CB0_m0[40u].y) / _3934);
    uint4 _3960 = asuint(CB4_m0[131u]);
    uint _3961 = _3960.x;
    float _4008 = min(CB4_m0[121u].w, 65000.0f) * (dot(float4(T12.Sample(S6, float2(mad(_3901, _3932, floor(_3934 * _3940) / _3932), mad(_3902, _3933, floor(_3933 * (((-0.0f) - _3940) + 1.0f)) / _3933)))), float4(_89[(_3961 * 4u) + 0u], _89[(_3961 * 4u) + 1u], _89[(_3961 * 4u) + 2u], _89[(_3961 * 4u) + 3u])) * dot(float4(T12.Sample(S6, float2(mad(_3901, _3907, floor(_3909 * _3911) / _3907), mad(_3902, _3908, floor(_3908 * (((-0.0f) - _3911) + 1.0f)) / _3908)))), float4(_89[(_3961 * 4u) + 0u], _89[(_3961 * 4u) + 1u], _89[(_3961 * 4u) + 2u], _89[(_3961 * 4u) + 3u])));
    float _4009 = _3882 * _4008;
    float _4014 = exp2(_3875 * CB4_m0[155u].z) * CB4_m0[120u].w;
    float _4032 = mad(mad(sin(CB0_m0[40u].y * CB4_m0[155u].y), 0.5f, 0.5f), 0.4000000059604644775390625f, 0.100000001490116119384765625f);
    float _4039 = mad(_3888 * CB4_m0[115u].x, _3870.x, mad(_4009, min(CB4_m0[121u].x, 65000.0f), (_4014 * CB4_m0[120u].x) * _4032));
    float _4040 = mad(_3888 * CB4_m0[115u].y, _3870.y, mad(_4009, min(CB4_m0[121u].y, 65000.0f), (_4014 * CB4_m0[120u].y) * _4032));
    float _4041 = mad(_3888 * CB4_m0[115u].z, _3870.z, mad(_4009, min(CB4_m0[121u].z, 65000.0f), (_4014 * CB4_m0[120u].z) * _4032));
    SV_Target.x = _4039 + _3743;
    SV_Target.y = _4040 + _3744;
    SV_Target.z = _4041 + _3745;
    SV_Target_1.x = min(sqrt(max(_3540, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.y = min(sqrt(max(_3544, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.z = min(sqrt(max(_3532, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.w = ((_4041 + (_4040 + _4039)) + _3746) * 0.33329999446868896484375f;
    SV_Target_2.w = ((asfloat((0.5f < float(int(asuint(CB4_m0[132u]).z))) ? asuint(max(exp2(log2(min(sqrt(dot(float2(_234, _235), float2(_234, _235))) / max(CB4_m0[126u].z / ((_261 * (-0.100000001490116119384765625f)) / CB0_m0[160u].z), 1.1754943508222875079687365372222e-38f), 1.0f)) * CB4_m0[126u].w), CB4_m0[133u].x) * CB4_m0[136u].z) : asuint(CB4_m0[136u]).z) * CB4_m0[136u].y) < 0.941176474094390869140625f) ? 1.0f : asfloat((_555 != 0u) ? 1051595899u : 0u);
    SV_Target_3.x = mad(_485, 0.5f, 0.5f);
    SV_Target_3.y = mad(_486, 0.5f, 0.5f);
    SV_Target_3.z = mad(_487, 0.5f, 0.5f);
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
