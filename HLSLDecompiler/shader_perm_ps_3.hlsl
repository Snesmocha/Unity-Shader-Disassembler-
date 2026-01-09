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
Texture2D<float4> T16 : register(t16, space0);
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
    bool _126 = 0.5f < CB1_m0[28u].y;
    float _150 = (TEXCOORD_5.x / TEXCOORD_5.w) + ((-0.0f) - (TXCOORDD_6.x / TXCOORDD_6.w));
    float _151 = (TEXCOORD_5.y / TEXCOORD_5.w) + ((-0.0f) - (TXCOORDD_6.y / TXCOORDD_6.w));
    float _160 = (-0.0f) - _151;
    SV_Target_2.x = _126 ? mad(sqrt(abs(_150 * 0.5f)) * float(int((0u - ((0.0f < _150) ? 4294967295u : 0u)) + ((_150 < 0.0f) ? 4294967295u : 0u))), 0.5f, 0.4980392158031463623046875f) : 0.4979999959468841552734375f;
    SV_Target_2.y = _126 ? mad(sqrt(abs(_151 * (-0.5f))) * float(int((0u - ((0.0f < _160) ? 4294967295u : 0u)) + ((_160 < 0.0f) ? 4294967295u : 0u))), 0.5f, 0.4980392158031463623046875f) : 0.4979999959468841552734375f;
    uint _211 = 3u & 31u;
    uint _217 = 2u & 31u;
    uint _223 = 1u & 31u;
    uint _230 = 0u & 31u;
    SV_Target_2.z = float(spvBitfieldInsert((spvBitfieldInsert(0u, (0.0f != CB4_m0[152u].x) ? 4294967295u : 0u, _211, min((1u & 31u), (32u - _211))) + spvBitfieldInsert(0u, (CB3_m0[40u].x == 1.0f) ? 4294967295u : 0u, _217, min((1u & 31u), (32u - _217)))) + spvBitfieldInsert(0u, (0.0f != CB4_m0[151u].z) ? 4294967295u : 0u, _223, min((1u & 31u), (32u - _223))), (0.0f != CB4_m0[151u].w) ? 4294967295u : 0u, _230, min((1u & 31u), (32u - _230)))) * 0.0039215688593685626983642578125f;
    uint _251 = (((gl_FrontFacing ? 4294967295u : 0u) == 0u) ? 4294967295u : 0u) & ((0.5f < CB4_m0[147u].x) ? 4294967295u : 0u);
    bool _258 = ((((1.0f < TEXCOORD.z) ? 4294967295u : 0u) & ((0.5f < CB4_m0[147u].y) ? 4294967295u : 0u)) | _251) != 0u;
    float _267 = _258 ? TEXCOORD.z : TEXCOORD.x;
    float _268 = _258 ? TEXCOORD.w : TEXCOORD.y;
    float4 _275 = T3.SampleBias(S0, float2(_267, _268), CB0_m0[191u].x);
    float _278 = _275.x;
    float _279 = _275.y;
    float _280 = _275.z;
    bool _290 = _251 != 0u;
    float _299 = _290 ? TEXCOORD.z : TEXCOORD.x;
    float _300 = _290 ? TEXCOORD.w : TEXCOORD.y;
    float4 _305 = T4.SampleBias(S0, float2(_299, _300), CB0_m0[191u].x);
    float _323 = mad(clamp(_305.x, 0.0f, 1.0f), 2.0f, -1.0039999485015869140625f) * CB4_m0[137u].y;
    float _324 = mad(clamp(_305.y, 0.0f, 1.0f), 2.0f, -1.0039999485015869140625f) * CB4_m0[137u].y;
    float _332 = asfloat(((gl_FrontFacing ? 4294967295u : 0u) != 0u) ? 1065353216u : 3212836864u) * sqrt(((-0.0f) - min(dot(float2(_323, _324), float2(_323, _324)), 1.0f)) + 1.0f);
    float _357 = mad(_332, TEXCOORD_2.x, mad(_323, TEXCOORD_3.x, _324 * TEXCOORD_4.x));
    float _358 = mad(_332, TEXCOORD_2.y, mad(_323, TEXCOORD_3.y, _324 * TEXCOORD_4.y));
    float _359 = mad(_332, TEXCOORD_2.z, mad(_323, TEXCOORD_3.z, _324 * TEXCOORD_4.z));
    float _363 = rsqrt(dot(float3(_357, _358, _359), float3(_357, _358, _359)));
    float _364 = _363 * _357;
    float _365 = _363 * _358;
    float _366 = _363 * _359;
    float4 _371 = T5.SampleBias(S0, float2(_299, _300), CB0_m0[191u].x);
    float _376 = clamp(_371.z, 0.0f, 1.0f);
    float _377 = clamp(_371.x, 0.0f, 1.0f);
    float _378 = clamp(_371.y, 0.0f, 1.0f);
    float _382 = _378 * CB4_m0[137u].z;
    float4 _387 = T6.SampleBias(S0, float2(_299, _300), CB0_m0[191u].x);
    float _393 = clamp(_387.y, 0.0f, 1.0f);
    float _394 = clamp(_387.z, 0.0f, 1.0f);
    uint _402 = (0.5f < CB4_m0[144u].x) ? 4294967295u : 0u;
    uint _404 = ((0.5f < CB4_m0[144u].y) ? 4294967295u : 0u) & _402;
    float _415 = asfloat(((_404 != 0u) ? asuint(max((_394 + (-0.20000000298023223876953125f)) * 1.25f, 0.0f)) : asuint(_394)) & _402);
    uint _423 = uint(int(max(((-0.0f) - floor(_377 * 5.0f)) + 4.0f, 0.0f)));
    bool _430 = _423 == asuint(CB4_m0[132u]).y;
    uint _431 = _430 ? 4294967295u : 0u;
    uint _432 = _431 & 1u;
    bool _437 = 0.5f < CB4_m0[136u].w;
    float4 _451 = T2.SampleBias(S0, float2(TEXCOORD.x * CB4_m0[137u].x, TEXCOORD.y * CB4_m0[137u].x), CB0_m0[191u].x);
    bool _482 = _377 < 0.20000000298023223876953125f;
    bool _484 = _377 < 0.4000000059604644775390625f;
    bool _486 = _377 < 0.60000002384185791015625f;
    bool _488 = _377 < 0.800000011920928955078125f;
    bool _521 = 0.5f < CB4_m0[161u].w;
    float4 _536 = T12.SampleBias(S0, float2(_521 ? TEXCOORD.z : TEXCOORD.x, _521 ? TEXCOORD.w : TEXCOORD.y), CB0_m0[191u].x);
    float _538 = _536.x;
    float _539 = _536.y;
    float _540 = _536.z;
    float _541 = _536.w;
    float _542 = sqrt(asfloat(_437 ? asuint(max(mad(_278, CB4_m0[57u].x, _451.x) + (-0.5f), 0.0f)) : asuint(_278 * CB4_m0[57u].x)));
    float _543 = sqrt(asfloat(_437 ? asuint(max(mad(_279, CB4_m0[57u].y, _451.y) + (-0.5f), 0.0f)) : asuint(_279 * CB4_m0[57u].y)));
    float _544 = sqrt(asfloat(_437 ? asuint(max(mad(_280, CB4_m0[57u].z, _451.z) + (-0.5f), 0.0f)) : asuint(_280 * CB4_m0[57u].z)));
    float _566 = mad(_538, ((-0.0f) - _542) + max(_542 + ((-0.0f) - CB4_m0[104u].x), 0.0f), _542);
    float _567 = mad(_538, ((-0.0f) - _543) + max(_543 + ((-0.0f) - CB4_m0[104u].y), 0.0f), _543);
    float _568 = mad(_538, ((-0.0f) - _544) + max(_544 + ((-0.0f) - CB4_m0[104u].z), 0.0f), _544);
    float _590 = mad(_539, ((-0.0f) - _566) + max(_542 + ((-0.0f) - CB4_m0[105u].x), 0.0f), _566);
    float _591 = mad(_539, ((-0.0f) - _567) + max(_543 + ((-0.0f) - CB4_m0[105u].y), 0.0f), _567);
    float _592 = mad(_539, ((-0.0f) - _568) + max(_544 + ((-0.0f) - CB4_m0[105u].z), 0.0f), _568);
    float _614 = mad(_540, ((-0.0f) - _590) + max(_542 + ((-0.0f) - CB4_m0[106u].x), 0.0f), _590);
    float _615 = mad(_540, ((-0.0f) - _591) + max(_543 + ((-0.0f) - CB4_m0[106u].y), 0.0f), _591);
    float _616 = mad(_540, ((-0.0f) - _592) + max(_544 + ((-0.0f) - CB4_m0[106u].z), 0.0f), _592);
    float _638 = mad(_541, ((-0.0f) - _614) + max(_542 + ((-0.0f) - CB4_m0[107u].x), 0.0f), _614);
    float _639 = mad(_541, ((-0.0f) - _615) + max(_543 + ((-0.0f) - CB4_m0[107u].y), 0.0f), _615);
    float _640 = mad(_541, ((-0.0f) - _616) + max(_544 + ((-0.0f) - CB4_m0[107u].z), 0.0f), _616);
    float _641 = _638 * _638;
    float _642 = _639 * _639;
    float _643 = _640 * _640;
    float _659 = ((-0.0f) - TEXCOORD_2.w) + CB0_m0[53u].x;
    float _660 = ((-0.0f) - TEXCOORD_3.w) + CB0_m0[53u].y;
    float _661 = ((-0.0f) - TEXCOORD_4.w) + CB0_m0[53u].z;
    float _662 = dot(float3(_659, _660, _661), float3(_659, _660, _661));
    float _667 = rsqrt(max(_662, 1.1754943508222875079687365372222e-38f));
    float _668 = _667 * _659;
    float _669 = _667 * _660;
    float _670 = _667 * _661;
    float _671 = sqrt(_662);
    bool _677 = int(0u) < int(asuint(CB0_m0[188u]).z);
    float _748;
    float _749;
    float _750;
    float _751;
    float _752;
    float _753;
    float _754;
    float _755;
    float _756;
    if (_677)
    {
        uint _688 = uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u)));
        uint _689 = _688 * 32u;
        uint4 _701 = uint4(T1.Load(_689).x, T1.Load(_689 + 1u).x, T1.Load(_689 + 2u).x, T1.Load(_689 + 3u).x);
        uint _712 = (_688 * 32u) + 4u;
        uint4 _724 = uint4(T1.Load(_712).x, T1.Load(_712 + 1u).x, T1.Load(_712 + 2u).x, T1.Load(_712 + 3u).x);
        _748 = asfloat(_701.x);
        _749 = asfloat(_701.y);
        _750 = asfloat(_701.z);
        _751 = asfloat(_701.w);
        _752 = asfloat(_724.x);
        _753 = asfloat(_724.y);
        _754 = asfloat(_724.z);
        _755 = asfloat(T1.Load((_688 * 32u) + 8u).x);
        _756 = asfloat(_724.w);
    }
    else
    {
        _748 = asfloat(0u);
        _749 = asfloat(0u);
        _750 = asfloat(0u);
        _751 = asfloat(0u);
        _752 = asfloat(0u);
        _753 = asfloat(0u);
        _754 = asfloat(0u);
        _755 = asfloat(0u);
        _756 = asfloat(0u);
    }
    float _760 = ((-0.0f) - TEXCOORD_2.w) + _752;
    float _761 = ((-0.0f) - TEXCOORD_3.w) + _753;
    float _762 = ((-0.0f) - TEXCOORD_4.w) + _754;
    float _766 = max(dot(float3(_760, _761, _762), float3(_760, _761, _762)), 1.1754943508222875079687365372222e-38f);
    float _767 = rsqrt(_766);
    float _768 = _767 * _760;
    float _769 = _767 * _761;
    float _770 = _767 * _762;
    float _775 = max(((-0.0f) - (_766 / (_751 * _751))) + 1.0f, 0.0f);
    float _793 = mad(_775, _748 + ((-0.0f) - CB0_m0[189u].x), CB0_m0[189u].x);
    float _794 = mad(_775, _749 + ((-0.0f) - CB0_m0[189u].y), CB0_m0[189u].y);
    float _795 = mad(_775, _750 + ((-0.0f) - CB0_m0[189u].z), CB0_m0[189u].z);
    float _797 = mad(_775, _775 + (-1.0f), 1.0f);
    float _1403;
    float _1404;
    if (0.5f < CB0_m0[22u].x)
    {
        float _846 = mad(_364, CB4_m0[135u].x, TEXCOORD_2.w) + ((-0.0f) - CB3_m0[39u].x);
        float _847 = mad(_365, CB4_m0[135u].x, TEXCOORD_3.w) + ((-0.0f) - CB3_m0[39u].y);
        float _848 = mad(_366, CB4_m0[135u].x, TEXCOORD_4.w) + ((-0.0f) - CB3_m0[39u].z);
        float _884 = mad(CB3_m0[35u].z, _848, mad(CB3_m0[33u].z, _846, _847 * CB3_m0[34u].z)) + CB3_m0[36u].z;
        float _894 = mad(mad(CB3_m0[35u].x, _848, mad(CB3_m0[33u].x, _846, _847 * CB3_m0[34u].x)) + CB3_m0[36u].x, CB3_m0[38u].x, CB3_m0[38u].z);
        float _895 = mad(mad(CB3_m0[35u].y, _848, mad(CB3_m0[33u].y, _846, _847 * CB3_m0[34u].y)) + CB3_m0[36u].y, CB3_m0[38u].y, CB3_m0[38u].w);
        float _978 = ((((((T16.SampleCmpLevelZero(S1, float2(_894 + ((-0.0f) - CB0_m0[200u].x), _895 + ((-0.0f) - CB0_m0[200u].y)), _884).xxxx.x + T16.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, -1.0f, _894), mad(CB0_m0[200u].y, 1.0f, _895)), _884).xxxx.x) + T16.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 1.0f, _894), mad(CB0_m0[200u].y, -1.0f, _895)), _884).xxxx.x) + T16.SampleCmpLevelZero(S1, float2(_894 + CB0_m0[200u].x, _895 + CB0_m0[200u].y), _884).xxxx.x) + T16.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, -1.4142129421234130859375f, _894), mad(CB0_m0[200u].y, 0.0f, _895)), _884).xxxx.x) + T16.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 1.4142129421234130859375f, _894), mad(CB0_m0[200u].y, 0.0f, _895)), _884).xxxx.x) + T16.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 0.0f, _894), mad(CB0_m0[200u].y, -1.4142129421234130859375f, _895)), _884).xxxx.x) + T16.SampleCmpLevelZero(S1, float2(mad(CB0_m0[200u].x, 0.0f, _894), mad(CB0_m0[200u].y, 1.4142129421234130859375f, _895)), _884).xxxx.x;
        float _1001 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[20u].x);
        float _1002 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[20u].y);
        float _1003 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[20u].z);
        float _1013 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[21u].x);
        float _1014 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[21u].y);
        float _1015 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[21u].z);
        float _1024 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[22u].x);
        float _1025 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[22u].y);
        float _1026 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[22u].z);
        float _1036 = TEXCOORD_2.w + ((-0.0f) - CB2_m0[23u].x);
        float _1037 = TEXCOORD_3.w + ((-0.0f) - CB2_m0[23u].y);
        float _1038 = TEXCOORD_4.w + ((-0.0f) - CB2_m0[23u].z);
        bool _1058 = dot(float3(_1001, _1002, _1003), float3(_1001, _1002, _1003)) < CB2_m0[24u].x;
        bool _1059 = dot(float3(_1013, _1014, _1015), float3(_1013, _1014, _1015)) < CB2_m0[24u].y;
        bool _1060 = dot(float3(_1024, _1025, _1026), float3(_1024, _1025, _1026)) < CB2_m0[24u].z;
        float _1092 = ((-0.0f) - dot(float4(asfloat((_1058 ? 4294967295u : 0u) & 1065353216u), max(asfloat(_1058 ? 3212836864u : 2147483648u) + asfloat((_1059 ? 4294967295u : 0u) & 1065353216u), 0.0f), max(asfloat(_1059 ? 3212836864u : 2147483648u) + asfloat((_1060 ? 4294967295u : 0u) & 1065353216u), 0.0f), max(asfloat(_1060 ? 3212836864u : 2147483648u) + asfloat(((dot(float3(_1036, _1037, _1038), float3(_1036, _1037, _1038)) < CB2_m0[24u].w) ? 4294967295u : 0u) & 1065353216u), 0.0f)), float4(4.0f, 3.0f, 2.0f, 1.0f))) + 4.0f;
        uint _1094 = uint(_1092) << 2u;
        uint _1097 = _1094 + 1u;
        uint _1116 = _1094 + 2u;
        uint _1127 = _1094 + 3u;
        float _1133 = mad(CB2_m0[_1116].x, TEXCOORD_4.w, mad(CB2_m0[_1094].x, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_1097].x)) + CB2_m0[_1127].x;
        float _1134 = mad(CB2_m0[_1116].y, TEXCOORD_4.w, mad(CB2_m0[_1094].y, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_1097].y)) + CB2_m0[_1127].y;
        float _1135 = mad(CB2_m0[_1116].z, TEXCOORD_4.w, mad(CB2_m0[_1094].z, TEXCOORD_2.w, TEXCOORD_3.w * CB2_m0[_1097].z)) + CB2_m0[_1127].z;
        float _1149 = frac(sin(dot(float2(frac(_1133 * 1024.0f), frac(_1134 * 1024.0f)), float2(12.98980045318603515625f, 78.233001708984375f))) * 43758.546875f);
        float _1150 = sin(_1149);
        float _1151 = cos(_1149);
        float _1162 = (CB2_m0[26u].x * 1.2999999523162841796875f) * _1150;
        float _1163 = (CB2_m0[26u].x * 1.2999999523162841796875f) * _1151;
        float _1164 = (CB2_m0[26u].y * 1.2999999523162841796875f) * _1150;
        float _1165 = (CB2_m0[26u].y * 1.2999999523162841796875f) * _1151;
        float _1261 = ((((T0.SampleCmpLevelZero(S1, float3(_1133 + ((_1163 * (-0.97829997539520263671875f)) + (_1162 * (-0.172399997711181640625f))), _1134 + ((_1165 * 0.172399997711181640625f) + (_1164 * (-0.97829997539520263671875f))), _1092), _1135).xxxx.x + T0.SampleCmpLevelZero(S1, float3(_1133 + ((_1163 * 0.484600007534027099609375f) + (_1162 * 0.874700009822845458984375f)), _1134 + ((_1165 * (-0.874700009822845458984375f)) + (_1164 * 0.484600007534027099609375f)), _1092), _1135).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1133 + ((_1163 * (-0.037399999797344207763671875f)) + (_1162 * (-0.96829998493194580078125f))), _1134 + ((_1165 * 0.96829998493194580078125f) + (_1164 * (-0.037399999797344207763671875f))), _1092), _1135).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1133 + ((_1163 * 0.419600009918212890625f) + (_1162 * 0.278299987316131591796875f)), _1134 + ((_1165 * (-0.278299987316131591796875f)) + (_1164 * 0.419600009918212890625f)), _1092), _1135).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1133 + ((_1163 * 0.83910000324249267578125f) + (_1162 * (-0.1507000029087066650390625f))), _1134 + ((_1165 * (-0.1507000029087066650390625f)) + (_1164 * 0.83910000324249267578125f)), _1092), _1135).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1133 + ((_1163 * 0.4792999923229217529296875f) + (_1162 * (-0.6417000293731689453125f))), _1134 + ((_1165 * (-0.6417000293731689453125f)) + (_1164 * 0.4792999923229217529296875f)), _1092), _1135).xxxx.x;
        float _1342 = (((((_1261 + T0.SampleCmpLevelZero(S1, float3(_1133 + ((_1163 * (-0.81610000133514404296875f)) + (_1162 * 0.577899992465972900390625f)), _1134 + ((_1165 * 0.577899992465972900390625f) + (_1164 * (-0.81610000133514404296875f))), _1092), _1135).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1133 + ((_1163 * (-0.4587999880313873291015625f)) + (_1162 * (-0.5408999919891357421875f))), _1134 + ((_1165 * 0.5408999919891357421875f) + (_1164 * (-0.4587999880313873291015625f))), _1092), _1135).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1133 + ((_1163 * (-0.19189999997615814208984375f)) + (_1162 * 0.704400002956390380859375f)), _1134 + ((_1165 * 0.704400002956390380859375f) + (_1164 * (-0.19189999997615814208984375f))), _1092), _1135).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1133 + ((_1163 * (-0.446399986743927001953125f)) + (_1162 * 0.105300001800060272216796875f)), _1134 + ((_1165 * 0.105300001800060272216796875f) + (_1164 * (-0.446399986743927001953125f))), _1092), _1135).xxxx.x) + T0.SampleCmpLevelZero(S1, float3(_1133 + ((_1163 * 0.06610000133514404296875f) + (_1162 * (-0.20659999549388885498046875f))), _1134 + ((_1165 * (-0.20659999549388885498046875f)) + (_1164 * 0.06610000133514404296875f)), _1092), _1135).xxxx.x) * CB2_m0[25u].x;
        float _1367 = clamp(mad(_755, 2.0f, -1.0f), 0.0f, 1.0f);
        float _1371 = _1367 * CB0_m0[189u].w;
        float _1381 = (asfloat(((((0.0f >= _1135) ? 4294967295u : 0u) | ((_1135 >= 1.0f) ? 4294967295u : 0u)) != 0u) ? 1065353216u : asuint(mad(_1342, 0.090899996459484100341796875f, ((-0.0f) - CB2_m0[25u].x) + 1.0f))) * mad(CB3_m0[40u].y, ((-0.0f) - _756) + 1.0f, _756)) * asfloat((0.5f < CB3_m0[37u].x) ? asuint(min(mad(_1367, (asfloat(_482 ? asuint(CB4_m0[163u]).w : (_484 ? asuint(CB4_m0[163u]).z : (_486 ? asuint(CB4_m0[163u]).y : (_488 ? asuint(CB4_m0[163u]).x : asuint(CB4_m0[162u]).w)))) * mad(_978 + T16.SampleCmpLevelZero(S1, float2(_894, _895), _884).xxxx.x, 0.11110000312328338623046875f, -1.0f)) * CB3_m0[37u].x, 1.0f), 1.0f)) : 1065353216u);
        _1403 = mad(_1381, _1371 * CB4_m0[133u].z, mad((-0.0f) - _1371, CB4_m0[133u].z, 1.0f));
        _1404 = mad(_1381, CB4_m0[133u].z, ((-0.0f) - CB4_m0[133u].z) + 1.0f);
    }
    else
    {
        _1403 = asfloat(1065353216u);
        _1404 = asfloat(1065353216u);
    }
    float _1410 = clamp(CB3_m0[1u].w * 2.5f, 0.0f, 1.0f);
    float _1413 = mad(((-0.0f) - _1410) + 1.0f, _1403, _1410);
    bool _1417 = CB3_m0[3u].w != 0.0f;
    float _1431 = clamp(dot(float3(CB3_m0[3u].xyz), float3(TEXCOORD_2.w, TEXCOORD_3.w, TEXCOORD_4.w)) + ((-0.0f) - CB3_m0[3u].w), 0.0f, 1.0f);
    float _1482 = asfloat(_1417 ? asuint(mad(_1431, ((-0.0f) - _793) + mad(CB0_m0[15u].w, mad((-0.0f) - _793, CB0_m0[15u].x, _793 + CB0_m0[15u].x), _793 * CB0_m0[15u].x), _793)) : asuint(_793));
    float _1484 = asfloat(_1417 ? asuint(mad(_1431, ((-0.0f) - _794) + mad(CB0_m0[15u].w, mad((-0.0f) - _794, CB0_m0[15u].y, _794 + CB0_m0[15u].y), _794 * CB0_m0[15u].y), _794)) : asuint(_794));
    float _1486 = asfloat(_1417 ? asuint(mad(_1431, ((-0.0f) - _795) + mad(CB0_m0[15u].w, mad((-0.0f) - _795, CB0_m0[15u].z, _795 + CB0_m0[15u].z), _795 * CB0_m0[15u].z), _795)) : asuint(_795));
    float _1487 = max(asfloat(_482 ? asuint(CB4_m0[134u]).w : (_484 ? asuint(CB4_m0[134u]).z : (_486 ? asuint(CB4_m0[134u]).y : (_488 ? asuint(CB4_m0[134u]).x : asuint(CB4_m0[133u]).w)))), 9.9999997473787516355514526367188e-06f);
    float _1489 = 1.0f / _1487;
    float _1490 = dot(float3(_364, _365, _366), float3(_768, _769, _770));
    float _1507 = mad(mad(clamp(_305.z, 0.0f, 1.0f), 2.0f, -1.0f), 2.0f, mad(TEXCOORD_7.y, ((-0.0f) - _1490) + mad(_1490 + 1.0f, clamp(mad((-0.0f) - min(_769 * 3.0f, 1.0f), 0.5f, _365) + 1.5f, 0.0f, 1.0f), -1.0f), _1490));
    float _1522 = mad((-0.0f) - _1487, 3.0f, 2.0f);
    float _1523 = ((_1507 * 3.0f) + 3.0f) / _1522;
    float _1524 = (mad(_1507, 3.0f, (-0.0f) - (_1487 * 1.5f)) + 1.0f) / _1522;
    float _1525 = (mad(_1507, 3.0f, (-0.0f) - (_1487 * 4.5f)) + (-1.0f)) / _1522;
    float _1537 = mad(_1489, _1507 + 0.33329999446868896484375f, 0.5f);
    float _1538 = mad(_1489, _1507 + (-0.33329999446868896484375f), 0.5f);
    float _1539 = mad(_1489, _1507 + (-0.33329999446868896484375f), -0.5f);
    float _1550 = clamp(((-0.0f) - _1523) + 1.0f, 0.0f, 1.0f);
    float _1551 = clamp(min(_1523, ((-0.0f) - _1537) + 1.0f), 0.0f, 1.0f);
    float _1552 = clamp(min(((-0.0f) - _1524) + 1.0f, _1537), 0.0f, 1.0f);
    float _1556 = clamp(min(((-0.0f) - _1525) + 1.0f, _1539), 0.0f, 1.0f);
    float _1557 = clamp(_1525, 0.0f, 1.0f);
    float _1563 = mad(CB3_m0[40u].y, ((-0.0f) - _1413) + _1404, _1413);
    float _1570 = clamp(min(mad(_1563, -2.0f, 2.0f), mad(_1563, 2.0f, 0.0f)), 0.0f, 1.0f);
    float _1571 = clamp(mad(_1563, 2.0f, -1.0f), 0.0f, 1.0f);
    float _1572 = clamp(mad(_1563, -2.0f, 1.0f), 0.0f, 1.0f);
    float _1644;
    float _1646;
    float _1648;
    if (0.5f < CB3_m0[40u].y)
    {
        float _1611;
        if (_677)
        {
            _1611 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _1611 = asfloat(0u);
        }
        float _1615 = _1611 * CB0_m0[189u].w;
        float _1616 = _1615 * _1570;
        float _1622 = (mad((-0.0f) - _1570, _1615, _1570) + mad((-0.0f) - _1572, _1615, _1572)) + _1571;
        float _1960;
        if (_677)
        {
            _1960 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 7u).x);
        }
        else
        {
            _1960 = asfloat(0u);
        }
        _1644 = _1960 * _1616;
        _1646 = _1960 * _1622;
        _1648 = mad(_1572, _1615, mad((-0.0f) - _1622, _1960, _1622) + mad((-0.0f) - _1616, _1960, _1616));
    }
    else
    {
        float _1623;
        if (_677)
        {
            _1623 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _1623 = asfloat(0u);
        }
        _1644 = _1623 * _1570;
        _1646 = _1571;
        _1648 = _1623 * _1572;
    }
    float _1656 = mad(_1648, ((-0.0f) - _1552) + (((-0.0f) - _1551) + (((-0.0f) - _1550) + 1.0f)), _1552);
    float _1657 = _1646 + _1644;
    float _1658 = _1657 * clamp(min(_1524, ((-0.0f) - _1538) + 1.0f), 0.0f, 1.0f);
    float _1661 = mad(_1557 + _1556, _1644, _1657 * clamp(min(_1538, ((-0.0f) - _1539) + 1.0f), 0.0f, 1.0f));
    float _1662 = _1556 * _1646;
    float _1665 = _1550 * TEXCOORD_7.x;
    float _1670 = mad((-0.0f) - _1550, TEXCOORD_7.x, _1550) + _1551;
    uint4 _1674 = asuint(CB4_m0[60u]);
    uint4 _1681 = asuint(CB4_m0[59u]);
    uint4 _1691 = asuint(CB4_m0[61u]);
    uint4 _1701 = asuint(CB4_m0[62u]);
    uint4 _1711 = asuint(CB4_m0[63u]);
    uint4 _1724 = asuint(CB4_m0[65u]);
    uint4 _1731 = asuint(CB4_m0[64u]);
    uint4 _1741 = asuint(CB4_m0[66u]);
    uint4 _1751 = asuint(CB4_m0[67u]);
    uint4 _1761 = asuint(CB4_m0[68u]);
    uint4 _1774 = asuint(CB0_m0[10u]);
    uint4 _1780 = asuint(CB0_m0[3u]);
    uint4 _1793 = asuint(CB0_m0[11u]);
    uint4 _1799 = asuint(CB0_m0[4u]);
    uint4 _1812 = asuint(CB0_m0[12u]);
    uint4 _1819 = asuint(CB0_m0[5u]);
    uint4 _1832 = asuint(CB0_m0[9u]);
    uint4 _1839 = asuint(CB0_m0[6u]);
    uint4 _1852 = asuint(CB0_m0[13u]);
    uint4 _1858 = asuint(CB0_m0[7u]);
    uint4 _1870 = asuint(CB0_m0[14u]);
    uint4 _1876 = asuint(CB0_m0[8u]);
    float _1886 = min(_671 * 0.4372499883174896240234375f, 1.0f);
    float _1902 = mad(CB4_m0[133u].y, mad(_1886, CB3_m0[1u].w, (-0.0f) - _1886) + 1.0f, 0.0f);
    float _1903 = mad(CB4_m0[133u].y, mad((-0.0f) - _1886, CB3_m0[1u].w, _1886) + (-1.0f), 1.0f);
    float _1904 = asfloat(_482 ? _1711.x : (_484 ? _1701.x : (_486 ? _1691.x : (_488 ? _1674.x : _1681.x)))) + 6.103515625e-05f;
    float _1906 = asfloat(_482 ? _1711.y : (_484 ? _1701.y : (_486 ? _1691.y : (_488 ? _1674.y : _1681.y)))) + 6.103515625e-05f;
    float _1907 = asfloat(_482 ? _1711.z : (_484 ? _1701.z : (_486 ? _1691.z : (_488 ? _1674.z : _1681.z)))) + 6.103515625e-05f;
    float _1910 = (_1907 + (_1906 + _1904)) * 0.3333300054073333740234375f;
    float _1921 = mad(clamp(_1904 / _1910, 0.0f, 1.0f), _1902, _1903 * _1904);
    float _1922 = mad(clamp(_1906 / _1910, 0.0f, 1.0f), _1902, _1903 * _1906);
    float _1923 = mad(clamp(_1907 / _1910, 0.0f, 1.0f), _1902, _1903 * _1907);
    float _1924 = asfloat(_482 ? _1761.x : (_484 ? _1751.x : (_486 ? _1741.x : (_488 ? _1724.x : _1731.x)))) + 6.103515625e-05f;
    float _1925 = asfloat(_482 ? _1761.y : (_484 ? _1751.y : (_486 ? _1741.y : (_488 ? _1724.y : _1731.y)))) + 6.103515625e-05f;
    float _1926 = asfloat(_482 ? _1761.z : (_484 ? _1751.z : (_486 ? _1741.z : (_488 ? _1724.z : _1731.z)))) + 6.103515625e-05f;
    float _1929 = (_1926 + (_1925 + _1924)) * 0.3333300054073333740234375f;
    float _1939 = mad(clamp(_1924 / _1929, 0.0f, 1.0f), _1902, _1903 * _1924);
    float _1940 = mad(clamp(_1925 / _1929, 0.0f, 1.0f), _1902, _1903 * _1925);
    float _1941 = mad(clamp(_1926 / _1929, 0.0f, 1.0f), _1902, _1903 * _1926);
    float _1983;
    if (_677)
    {
        _1983 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
    }
    else
    {
        _1983 = asfloat(0u);
    }
    float _1986 = mad(_1983, ((-0.0f) - _797) + 1.0f, _797);
    float _1987 = _1986 * _1482;
    float _1988 = _1986 * _1484;
    float _1989 = _1986 * _1486;
    float _1990 = min(1.0f / max(_1486 + 1.1754943508222875079687365372222e-38f, max(_1484 + 1.1754943508222875079687365372222e-38f, _1482 + 1.1754943508222875079687365372222e-38f)), 1.0f);
    float _2019 = mad(_1987, mad(_1557, _1646, mad(asfloat(_430 ? _1852.x : _1858.x), _1661, _1662 * asfloat(_430 ? _1832.x : _1839.x))), (_1990 * _1987) * mad(asfloat(_430 ? _1774.x : _1780.x) * _1921, _1658, mad(asfloat(_430 ? _1793.x : _1799.x) * _1921, _1656, mad(asfloat(_430 ? _1870.x : _1876.x) * _1939, _1665, _1670 * (asfloat(_430 ? _1812.x : _1819.x) * _1939)))));
    float _2020 = mad(_1988, mad(_1557, _1646, mad(asfloat(_430 ? _1852.y : _1858.y), _1661, _1662 * asfloat(_430 ? _1832.y : _1839.y))), (_1990 * _1988) * mad(asfloat(_430 ? _1774.y : _1780.y) * _1922, _1658, mad(asfloat(_430 ? _1793.y : _1799.y) * _1922, _1656, mad(asfloat(_430 ? _1870.y : _1876.y) * _1940, _1665, _1670 * (asfloat(_430 ? _1812.y : _1819.y) * _1940)))));
    float _2021 = mad(_1989, mad(_1557, _1646, mad(asfloat(_430 ? _1852.z : _1858.z), _1661, _1662 * asfloat(_430 ? _1832.z : _1839.z))), (_1990 * _1989) * mad(asfloat(_430 ? _1774.z : _1780.z) * _1923, _1658, mad(asfloat(_430 ? _1793.z : _1799.z) * _1923, _1656, mad(asfloat(_430 ? _1870.z : _1876.z) * _1941, _1665, _1670 * (asfloat(_430 ? _1812.z : _1819.z) * _1941)))));
    float _2032;
    float _2034;
    float _2036;
    if (CB0_m0[22u].z >= 0.5f)
    {
        float _2033;
        float _2035;
        float _2037;
        if (CB4_m0[_423 + 10u].x < 50.0f)
        {
            float _2085 = mad(mad(CB0_m0[118u].x, _366, mad(CB0_m0[116u].x, _364, _365 * CB0_m0[117u].x)), 0.5f, 0.5f);
            float _2086 = mad(mad(CB0_m0[118u].y, _366, mad(CB0_m0[116u].y, _364, _365 * CB0_m0[117u].y)), 0.5f, 0.5f);
            float _2394;
            float _2395;
            if (0.5f < CB4_m0[_423 + 15u].z)
            {
                float _2377 = clamp(_387.x, 0.0f, 1.0f) * CB4_m0[_423 + 15u].w;
                _2394 = mad(_2377, _2086, mad(CB4_m0[_423].y, TEXCOORD.y, CB4_m0[_423].w));
                _2395 = mad(_2377, _2085, mad(CB4_m0[_423].x, TEXCOORD.x, CB4_m0[_423].z));
            }
            else
            {
                _2394 = _2086;
                _2395 = _2085;
            }
            float4 _2422 = T7.Sample(S2, float3(_2395 + (CB0_m0[40u].y * CB4_m0[_423 + 10u].w), _2394 + (CB0_m0[40u].y * CB4_m0[_423 + 15u].x), asfloat(asuint(CB4_m0[_423 + 10u]).x)));
            float _2424 = _2422.x;
            float _2425 = _2422.y;
            float _2426 = _2422.z;
            uint _2428 = _423 + 5u;
            float _2434 = _2424 * CB4_m0[_2428].x;
            float _2435 = _2425 * CB4_m0[_2428].y;
            float _2436 = _2426 * CB4_m0[_2428].z;
            float _2437 = mad(asfloat(((CB4_m0[144u].y >= 0.5f) ? 4294967295u : 0u) & 1065353216u), asfloat((_404 != 0u) ? asuint(min(_394 * 5.099999904632568359375f, 1.0f) * asfloat(((0.20000000298023223876953125f >= _394) ? 4294967295u : 0u) & 1065353216u)) : asuint(_394)) + (-1.0f), 1.0f) * _2422.w;
            float _2092;
            float _2093;
            float _2094;
            if (CB4_m0[_423 + 15u].y < 0.5f)
            {
                float _2721 = clamp(_2437 * CB4_m0[_423 + 10u].z, 0.0f, 1.0f);
                uint _2722 = _423 + 10u;
                _2092 = mad(_2721, mad(_2434, CB4_m0[_2722].y, (-0.0f) - _641), _641);
                _2093 = mad(_2721, mad(_2435, CB4_m0[_2722].y, (-0.0f) - _642), _642);
                _2094 = mad(_2721, mad(_2436, CB4_m0[_2722].y, (-0.0f) - _643), _643);
            }
            else
            {
                float _2748;
                float _2749;
                float _2750;
                if (CB4_m0[_423 + 15u].y < 1.5f)
                {
                    float _2756 = clamp(_2437 * CB4_m0[_423 + 10u].z, 0.0f, 1.0f);
                    uint _2760 = _423 + 10u;
                    _2748 = mad(_2756 * _2434, CB4_m0[_2760].y, _641);
                    _2749 = mad(_2756 * _2435, CB4_m0[_2760].y, _642);
                    _2750 = mad(_2756 * _2436, CB4_m0[_2760].y, _643);
                }
                else
                {
                    uint _2767 = _423 + 5u;
                    uint _2776 = _423 + 10u;
                    float _2791 = clamp(_2437 * CB4_m0[_423 + 10u].z, 0.0f, 1.0f);
                    float _2795 = mad(_2791, clamp(mad(mad(_2424, CB4_m0[_2767].x, -0.5f), CB4_m0[_2776].y, _2434), 0.0f, 1.0f) + (-0.5f), 0.5f);
                    float _2796 = mad(_2791, clamp(mad(mad(_2425, CB4_m0[_2767].y, -0.5f), CB4_m0[_2776].y, _2435), 0.0f, 1.0f) + (-0.5f), 0.5f);
                    float _2797 = mad(_2791, clamp(mad(mad(_2426, CB4_m0[_2767].z, -0.5f), CB4_m0[_2776].y, _2436), 0.0f, 1.0f) + (-0.5f), 0.5f);
                    float _2798 = _641 * _2795;
                    float _2799 = _642 * _2796;
                    float _2800 = _643 * _2797;
                    float _2807 = mad((-0.0f) - _638, _638, 1.0f);
                    float _2808 = mad((-0.0f) - _639, _639, 1.0f);
                    float _2809 = mad((-0.0f) - _640, _640, 1.0f);
                    _2748 = mad(asfloat(((_641 >= 0.5f) ? 4294967295u : 0u) & 1065353216u), mad((-0.0f) - _2798, 2.0f, mad((-0.0f) - (_2807 + _2807), ((-0.0f) - _2795) + 1.0f, 1.0f)), _2798 + _2798);
                    _2749 = mad(asfloat(((_642 >= 0.5f) ? 4294967295u : 0u) & 1065353216u), mad((-0.0f) - _2799, 2.0f, mad((-0.0f) - (_2808 + _2808), ((-0.0f) - _2796) + 1.0f, 1.0f)), _2799 + _2799);
                    _2750 = mad(asfloat(((_643 >= 0.5f) ? 4294967295u : 0u) & 1065353216u), mad((-0.0f) - _2800, 2.0f, mad((-0.0f) - (_2809 + _2809), ((-0.0f) - _2797) + 1.0f, 1.0f)), _2800 + _2800);
                }
                _2092 = _2748;
                _2093 = _2749;
                _2094 = _2750;
            }
            _2033 = _2092;
            _2035 = _2093;
            _2037 = _2094;
        }
        else
        {
            _2033 = _641;
            _2035 = _642;
            _2037 = _643;
        }
        _2032 = _2033;
        _2034 = _2035;
        _2036 = _2037;
    }
    else
    {
        _2032 = _641;
        _2034 = _642;
        _2036 = _643;
    }
    bool _2040 = 0.5f < TEXCOORD_7.z;
    float _2210;
    float _2211;
    float _2212;
    if (_431 == 0u)
    {
        float _2104 = dot(float3(_2032, _2034, _2036), float3(0.2899999916553497314453125f, 0.60000002384185791015625f, 0.10999999940395355224609375f));
        bool _2111 = TEXCOORD_7.z < 0.5f;
        float _2112 = mad(_2104, 0.2874999940395355224609375f, 1.4375f);
        float _2115 = mad(_2104, 0.4000000059604644775390625f, 1.0f);
        float _2116 = dot(float3(_768, _769, _770), float3(_2040 ? _364 : TEXCOORD_2.x, _2040 ? _365 : TEXCOORD_2.y, _2040 ? _366 : TEXCOORD_2.z));
        float _2123 = clamp(mad((-0.0f) - (((-0.0f) - _1490) + _2116), 3.0f, 1.0f), 0.0f, 1.0f);
        float _2129 = clamp(_1490, 0.0f, 1.0f);
        float _2133 = clamp(_2116, 0.0f, 1.0f);
        float _2135 = max(max(_2036, _2034), _2032);
        bool _2136 = 1.0f < _2135;
        float _2154 = mad(mad(mad(mad(_1490, 0.5f, 0.5f), min(sqrt(_2123) * (_2123 + _2123), 1.0f), (-0.0f) - _2129), 0.5f, _2129), ((-0.0f) - _2112) + 1.0f, _2112);
        float _2161 = exp2(_2154 * log2(asfloat(_2136 ? asuint(_2032 / _2135) : asuint(_2032))));
        float _2162 = exp2(_2154 * log2(asfloat(_2136 ? asuint(_2034 / _2135) : asuint(_2034))));
        float _2163 = exp2(_2154 * log2(asfloat(_2136 ? asuint(_2036 / _2135) : asuint(_2036))));
        float _2170 = mad(((-0.0f) - _2032) + _2161, 0.5f, _2032);
        float _2171 = mad(((-0.0f) - _2034) + _2162, 0.5f, _2034);
        float _2172 = mad(((-0.0f) - _2036) + _2163, 0.5f, _2036);
        float _2183 = mad((-0.0f) - _2104, 0.0500000007450580596923828125f, 1.0499999523162841796875f);
        _2210 = asfloat(_2111 ? asuint(mad(_2133, _2161 + ((-0.0f) - _2170), _2170)) : asuint(_2183 * exp2(_2115 * log2(_2032))));
        _2211 = asfloat(_2111 ? asuint(mad(_2133, _2162 + ((-0.0f) - _2171), _2171)) : asuint(_2183 * exp2(_2115 * log2(_2034))));
        _2212 = asfloat(_2111 ? asuint(mad(_2133, _2163 + ((-0.0f) - _2172), _2172)) : asuint(_2183 * exp2(_2115 * log2(_2036))));
    }
    else
    {
        _2210 = _2032;
        _2211 = _2034;
        _2212 = _2036;
    }
    float _2214 = mad((-0.0f) - _382, 0.959999978542327880859375f, 0.959999978542327880859375f);
    float _2216 = _2214 * _2210;
    float _2217 = _2214 * _2211;
    float _2218 = _2214 * _2212;
    float _2223 = mad(_382, _2210 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _2225 = mad(_382, _2211 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _2226 = mad(_382, _2212 + (-0.039999999105930328369140625f), 0.039999999105930328369140625f);
    float _2231 = mad((-0.0f) - _393, CB4_m0[137u].w, 1.0f);
    float _2232 = _2231 * _2231;
    float _2253 = dot(float3((_2019 + CB0_m0[2u].x) + TEXCOORD_8.x, (_2020 + CB0_m0[2u].y) + TEXCOORD_8.y, (_2021 + CB0_m0[2u].z) + TEXCOORD_8.z), float3(0.21267290413379669189453125f, 0.715152204036712646484375f, 0.072175003588199615478515625f));
    float _2267 = ((-0.0f) - CB0_m0[19u].x) + CB0_m0[19u].y;
    float _2268 = 1.0f / _2267;
    float _2291 = asfloat((_2253 < CB0_m0[19u].x) ? asuint(_2253) : asuint(mad((-0.0f) - _2267, 1.0f / mad(_2253, _2268, mad((-0.0f) - CB0_m0[19u].x, _2268, 1.0f)), CB0_m0[19u].y))) / (_2253 + 9.9999997473787516355514526367188e-05f);
    float _2292 = _2291 * _2019;
    float _2293 = _2291 * _2020;
    float _2294 = _2291 * _2021;
    uint4 _2298 = asuint(CB4_m0[75u]);
    uint4 _2305 = asuint(CB4_m0[74u]);
    uint4 _2315 = asuint(CB4_m0[76u]);
    uint4 _2325 = asuint(CB4_m0[77u]);
    uint4 _2335 = asuint(CB4_m0[78u]);
    float _2371 = asfloat(_482 ? asuint(CB4_m0[142u]).y : (_484 ? asuint(CB4_m0[142u]).x : (_486 ? asuint(CB4_m0[141u]).w : (_488 ? asuint(CB4_m0[141u]).z : asuint(CB4_m0[141u]).y))));
    float _2476;
    if (0.5f < _2371)
    {
        _2476 = clamp(((clamp(mad(_1507, 1.5f, -0.5f), 0.0f, 1.0f) + _376) + (-1.0f)) / max(asfloat(_482 ? asuint(CB4_m0[143u]).z : (_484 ? asuint(CB4_m0[143u]).y : (_486 ? asuint(CB4_m0[143u]).x : (_488 ? asuint(CB4_m0[142u]).w : asuint(CB4_m0[142u]).z)))), 9.9999997473787516355514526367188e-06f), 0.0f, 1.0f);
    }
    else
    {
        _2476 = _376;
    }
    float _2480 = _2476 * CB4_m0[143u].w;
    float _2488 = mad(_760, _767, _668);
    float _2489 = mad(_761, _767, _669);
    float _2490 = mad(_762, _767, _670);
    float _2494 = rsqrt(dot(float3(_2488, _2489, _2490), float3(_2488, _2489, _2490)));
    float _2495 = _2494 * _2488;
    float _2496 = _2494 * _2489;
    float _2497 = _2494 * _2490;
    float _2523 = asfloat(_482 ? asuint(CB4_m0[141u]).x : (_484 ? asuint(CB4_m0[140u]).w : (_486 ? asuint(CB4_m0[140u]).z : (_488 ? asuint(CB4_m0[140u]).y : asuint(CB4_m0[140u]).x))));
    float _2534 = clamp(mad(_2523 * dot(float3(_364, _365, _366), float3(_2495, _2496, _2497)), 0.75f, 0.25f), 0.0f, 1.0f);
    float _2540 = clamp(mad(_2523 * dot(float3(_768, _769, _770), float3(_2495, _2496, _2497)), 0.75f, 0.25f), 0.0f, 1.0f);
    float _2542 = mad(_2534 * _2534, mad(_2232, _2232, -1.0f), 1.000010013580322265625f);
    float _2616 = (((clamp(mad(_1490 * _2523, 0.75f, 0.25f), 0.0f, 1.0f) * clamp(mad((-0.0f) - _393, CB4_m0[137u].w, (_2232 * _2232) / (mad(_2232, 4.0f, 2.0f) * ((_2542 * _2542) * max(_2540 * _2540, 0.100000001490116119384765625f)))), 0.0f, 1.0f)) / max(_2232, 9.9999997473787516355514526367188e-06f)) * (asfloat(_482 ? asuint(CB4_m0[139u]).w : (_484 ? asuint(CB4_m0[139u]).z : (_486 ? asuint(CB4_m0[139u]).y : (_488 ? asuint(CB4_m0[139u]).x : asuint(CB4_m0[138u]).w)))) * asfloat(_482 ? asuint(CB4_m0[166u]).w : (_484 ? asuint(CB4_m0[166u]).z : (_486 ? asuint(CB4_m0[166u]).y : (_488 ? asuint(CB4_m0[166u]).x : asuint(CB4_m0[165u]).w)))))) * 10.0f;
    float _2624 = asfloat((_2371 < 0.5f) ? asuint(clamp(_2616, 0.0f, 1.0f) * 100.0f) : 1099257348u);
    float _2625 = (_2223 * (asfloat(_482 ? _2335.x : (_484 ? _2325.x : (_486 ? _2315.x : (_488 ? _2298.x : _2305.x)))) * _2480)) * _2624;
    float _2626 = (_2225 * (asfloat(_482 ? _2335.y : (_484 ? _2325.y : (_486 ? _2315.y : (_488 ? _2298.y : _2305.y)))) * _2480)) * _2624;
    float _2627 = (_2226 * (asfloat(_482 ? _2335.z : (_484 ? _2325.z : (_486 ? _2315.z : (_488 ? _2298.z : _2305.z)))) * _2480)) * _2624;
    uint _2644 = (CB4_m0[144u].x >= 0.5f) ? 4294967295u : 0u;
    uint4 _2648 = asuint(CB4_m0[80u]);
    uint4 _2655 = asuint(CB4_m0[79u]);
    uint4 _2665 = asuint(CB4_m0[81u]);
    uint4 _2675 = asuint(CB4_m0[82u]);
    uint4 _2685 = asuint(CB4_m0[83u]);
    float _2705 = asfloat(_2644 & asuint(_2210 * (_415 * asfloat(_482 ? _2685.x : (_484 ? _2675.x : (_486 ? _2665.x : (_488 ? _2648.x : _2655.x)))))));
    float _2707 = asfloat(_2644 & asuint(_2211 * (_415 * asfloat(_482 ? _2685.y : (_484 ? _2675.y : (_486 ? _2665.y : (_488 ? _2648.y : _2655.y)))))));
    float _2709 = asfloat(_2644 & asuint(_2212 * (_415 * asfloat(_482 ? _2685.z : (_484 ? _2675.z : (_486 ? _2665.z : (_488 ? _2648.z : _2655.z)))))));
    float _2711 = _2709 + (_2707 + _2705);
    float _2949;
    float _2951;
    float _2953;
    if (0.0f < CB3_m0[2u].y)
    {
        float _2743 = min(CB3_m0[2u].y, 2.0f);
        float _3069;
        float _3070;
        float _3071;
        float _3072;
        float _3073;
        float _3074;
        if (0.0f < _2743)
        {
            float _2854 = ((-0.0f) - TEXCOORD_2.w) + CB3_m0[25u].x;
            float _2855 = ((-0.0f) - TEXCOORD_3.w) + CB3_m0[25u].y;
            float _2856 = ((-0.0f) - TEXCOORD_4.w) + CB3_m0[25u].z;
            float _2857 = dot(float3(_2854, _2855, _2856), float3(_2854, _2855, _2856));
            float _2860 = max(_2857, 1.1754943508222875079687365372222e-38f);
            float _2861 = rsqrt(_2860);
            float _2868 = _2860 * CB3_m0[27u].x;
            bool _2872 = (-0.5f) < CB3_m0[27u].y;
            uint _2880 = _2872 ? asuint(_2868 * _2868) : asuint(_2868);
            float _2894 = clamp(((-0.0f) - asfloat((CB3_m0[27u].y < (-1.5f)) ? (((asfloat(_2880) >= 1.0f) ? 4294967295u : 0u) & 1065353216u) : _2880)) + 1.0f, 0.0f, 1.0f);
            float _2912 = clamp(mad(dot(float3(CB3_m0[26u].xyz), float3(_2861 * _2854, _2861 * _2855, _2861 * _2856)), CB3_m0[27u].z, CB3_m0[27u].w), 0.0f, 1.0f);
            float _2914 = ((_2894 * _2894) * asfloat(_2872 ? asuint(1.0f / _2860) : 1065353216u)) * (_2912 * _2912);
            float _2920 = _2914 * CB3_m0[28u].x;
            float _2921 = _2914 * CB3_m0[28u].y;
            float _2922 = _2914 * CB3_m0[28u].z;
            float _2924 = max(_2922, max(_2921, _2920));
            float _2925 = _2924 + 6.103515625e-05f;
            float _2926 = rsqrt(_2857);
            float _2933 = dot(float3(_364, _365, _366), float3(_2926 * _2854, _2926 * _2855, _2926 * _2856)) * _2924;
            float _2937 = _2924 / CB3_m0[25u].w;
            float _2938 = _2924 * _2920;
            float _2939 = _2924 * _2921;
            float _2940 = _2924 * _2922;
            float _3063;
            float _3064;
            float _3065;
            float _3066;
            float _3067;
            float _3068;
            if (1.0f < _2743)
            {
                float _2975 = ((-0.0f) - TEXCOORD_2.w) + CB3_m0[29u].x;
                float _2976 = ((-0.0f) - TEXCOORD_3.w) + CB3_m0[29u].y;
                float _2977 = ((-0.0f) - TEXCOORD_4.w) + CB3_m0[29u].z;
                float _2978 = dot(float3(_2975, _2976, _2977), float3(_2975, _2976, _2977));
                float _2981 = max(_2978, 1.1754943508222875079687365372222e-38f);
                float _2982 = rsqrt(_2981);
                float _2989 = _2981 * CB3_m0[31u].x;
                bool _2993 = (-0.5f) < CB3_m0[31u].y;
                uint _3001 = _2993 ? asuint(_2989 * _2989) : asuint(_2989);
                float _3014 = clamp(((-0.0f) - asfloat((CB3_m0[31u].y < (-1.5f)) ? (((asfloat(_3001) >= 1.0f) ? 4294967295u : 0u) & 1065353216u) : _3001)) + 1.0f, 0.0f, 1.0f);
                float _3033 = clamp(mad(dot(float3(CB3_m0[30u].xyz), float3(_2982 * _2975, _2982 * _2976, _2982 * _2977)), CB3_m0[31u].z, CB3_m0[31u].w), 0.0f, 1.0f);
                float _3035 = ((_3014 * _3014) * asfloat(_2993 ? asuint(1.0f / _2981) : 1065353216u)) * (_3033 * _3033);
                float _3041 = _3035 * CB3_m0[32u].x;
                float _3042 = _3035 * CB3_m0[32u].y;
                float _3043 = _3035 * CB3_m0[32u].z;
                float _3045 = max(_3043, max(_3042, _3041));
                float _3047 = rsqrt(_2978);
                _3063 = _3045 + _2925;
                _3064 = (_3045 / CB3_m0[29u].w) + _2937;
                _3065 = mad(_3045, dot(float3(_364, _365, _366), float3(_3047 * _2975, _3047 * _2976, _3047 * _2977)), _2933);
                _3066 = mad(_3041, _3045, _2938);
                _3067 = mad(_3042, _3045, _2939);
                _3068 = mad(_3043, _3045, _2940);
            }
            else
            {
                _3063 = _2925;
                _3064 = _2937;
                _3065 = _2933;
                _3066 = _2938;
                _3067 = _2939;
                _3068 = _2940;
            }
            _3069 = _3063;
            _3070 = _3064;
            _3071 = _3065;
            _3072 = _3066;
            _3073 = _3067;
            _3074 = _3068;
        }
        else
        {
            _3069 = asfloat(947912704u);
            _3070 = asfloat(0u);
            _3071 = asfloat(0u);
            _3072 = asfloat(0u);
            _3073 = asfloat(0u);
            _3074 = asfloat(0u);
        }
        float _3077 = clamp((_3071 / _3070) + 0.5f, 0.0f, 1.0f);
        _2949 = _3077 * (_3072 / _3069);
        _2951 = _3077 * (_3073 / _3069);
        _2953 = _3077 * (_3074 / _3069);
    }
    else
    {
        _2949 = asfloat(0u);
        _2951 = asfloat(0u);
        _2953 = asfloat(0u);
    }
    float _2961 = mad(TEXCOORD_8.x, _2291, _2949);
    float _2962 = mad(TEXCOORD_8.y, _2291, _2951);
    float _2963 = mad(TEXCOORD_8.z, _2291, _2953);
    float _3133;
    float _3134;
    float _3135;
    float _3136;
    float _3137;
    float _3138;
    if (_677)
    {
        uint _3091 = uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u)));
        uint _3093 = (_3091 * 32u) + 24u;
        uint3 _3103 = uint3(T1.Load(_3093).x, T1.Load(_3093 + 1u).x, T1.Load(_3093 + 2u).x);
        uint _3111 = (_3091 * 32u) + 28u;
        uint3 _3120 = uint3(T1.Load(_3111).x, T1.Load(_3111 + 1u).x, T1.Load(_3111 + 2u).x);
        _3133 = asfloat(_3103.x);
        _3134 = asfloat(_3103.y);
        _3135 = asfloat(_3103.z);
        _3136 = asfloat(_3120.x);
        _3137 = asfloat(_3120.y);
        _3138 = asfloat(_3120.z);
    }
    else
    {
        _3133 = asfloat(0u);
        _3134 = asfloat(0u);
        _3135 = asfloat(0u);
        _3136 = asfloat(0u);
        _3137 = asfloat(0u);
        _3138 = asfloat(0u);
    }
    bool _3142 = 0.5f < CB0_m0[23u].y;
    bool _3143 = _432 != 0u;
    float _3239;
    float _3241;
    float _3243;
    if (0.5f >= CB0_m0[188u].w)
    {
        float _3178 = clamp(mad((-0.0f) - dot(float3(_668, _669, _670), float3(_768, _769, _770)), 0.5f, 0.5f), 0.0f, 1.0f);
        float _3180 = mad(_365, 0.5f, 0.5f);
        float _3189 = clamp((asfloat((_432 != 0u) ? asuint(_3180) : asuint(_3180 * _3180)) + (-0.20000000298023223876953125f)) * 1.25f, 0.0f, 1.0f);
        float _3192 = (_3189 * _3189) * mad(_3189, -2.0f, 3.0f);
        float _3193 = _3192 * _3192;
        bool _3196 = _432 != 0u;
        float _3259;
        if (_677)
        {
            _3259 = asfloat(T1.Load((uint(max(int(uint(min(int(uint(int(CB3_m0[2u].z))), int(asuint(CB0_m0[188u]).z + 4294967295u)))), int(0u))) * 32u) + 8u).x);
        }
        else
        {
            _3259 = asfloat(0u);
        }
        float _3288 = min(_671 * 0.083333335816860198974609375f, 1.0f);
        float _3296 = ((-0.0f) - dot(float3(_668, _669, _670), float3(_364, _365, _366))) + 1.0f;
        float _3305 = clamp((((-0.0f) - mad(_3288, -0.300000011920928955078125f, 0.5f)) + _3296) * 3.3333332538604736328125f, 0.0f, 1.0f);
        float _3306 = clamp((((-0.0f) - mad(_3288, -0.300000011920928955078125f, 0.60000002384185791015625f)) + _3296) * 5.000000476837158203125f, 0.0f, 1.0f);
        float _3337 = CB0_m0[189u].x * CB0_m0[189u].x;
        float _3338 = CB0_m0[189u].y * CB0_m0[189u].y;
        float _3339 = CB0_m0[189u].z * CB0_m0[189u].z;
        float _3340 = _3337 * _3337;
        float _3341 = _3338 * _3338;
        float _3342 = _3339 * _3339;
        float _3343 = _3340 * _3340;
        float _3344 = _3341 * _3341;
        float _3345 = _3342 * _3342;
        float _3352 = (1.0f / (dot(float3(_3343, _3344, _3345), 0.699999988079071044921875f.xxx) + 9.9999997473787516355514526367188e-06f)) * dot(float3(CB0_m0[189u].xyz), 0.3300000131130218505859375f.xxx);
        bool _3372 = max(CB0_m0[189u].z, CB0_m0[189u].y) < CB0_m0[189u].x;
        float _3388 = asfloat(_3372 ? asuint(mad(_1404, mad(_3352, _3343, (-0.0f) - _2292), _2292)) : asuint(CB0_m0[189u].x * 0.60000002384185791015625f));
        float _3390 = asfloat(_3372 ? asuint(mad(_1404, mad(_3352, _3344, (-0.0f) - _2293), _2293)) : asuint(CB0_m0[189u].y * 0.60000002384185791015625f));
        float _3392 = asfloat(_3372 ? asuint(mad(_1404, mad(_3352, _3345, (-0.0f) - _2294), _2294)) : asuint(CB0_m0[189u].z * 0.60000002384185791015625f));
        float _3397 = exp2(log2(_3178 * _3178) * 20.0f);
        float _3421 = mad(_2212, _2214, _2217 + _2216) * 0.3300000131130218505859375f;
        float _3438 = exp2(log2(clamp(_2216, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _3439 = exp2(log2(clamp(_2217, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _3440 = exp2(log2(clamp(_2218, 0.0f, 1.0f)) * 0.20000000298023223876953125f);
        float _3445 = rsqrt(max(dot(float3(_3438, _3439, _3440), float3(_3438, _3439, _3440)), 6.103515625e-05f));
        float _3446 = _3445 * _3438;
        float _3447 = _3445 * _3439;
        float _3448 = _3445 * _3440;
        float _3453 = CB0_m0[198u].w * 48.0f;
        float _3455 = mad((_3421 * _3421) * CB0_m0[199u].w, -0.199999988079071044921875f, 1.0f) * 0.100000001490116119384765625f;
        float _3459 = (-0.0f) - _3455;
        float _3469 = ((clamp(mad(_3259, 0.39999997615814208984375f, _1404) + 0.60000002384185791015625f, 0.0f, 1.0f) * (mad(_1413 * mad(_1490, 0.5f, 0.5f), 1.39999997615814208984375f, 0.100000001490116119384765625f) * (mad(_3178, 0.800000011920928955078125f, 0.20000000298023223876953125f) * mad(CB0_m0[199u].x, mad(_3192, mad(_3192 * (_3193 * _3193), asfloat(_3196 ? 3212836864u : 3204448256u) + asfloat(_3196 ? 1050253722u : 1065353216u), asfloat(_3196 ? 1065353216u : 1056964608u)), -0.100000001490116119384765625f), 0.100000001490116119384765625f)))) * mad(CB0_m0[199u].y, mad(clamp((-0.0f) - _669, 0.0f, 1.0f), asfloat((0.0f != TEXCOORD_7.z) ? 1083179008u : asuint(mad(_378, CB4_m0[137u].z, 2.5f))), -0.5f), 1.0f)) * asfloat((_432 != 0u) ? asuint((_3305 * _3305) * mad(_3305, -2.0f, 3.0f)) : asuint((_3306 * _3306) * mad(_3306, -2.0f, 3.0f)));
        uint4 _3479 = asuint(CB4_m0[87u]);
        uint4 _3486 = asuint(CB4_m0[86u]);
        uint4 _3496 = asuint(CB4_m0[88u]);
        uint4 _3506 = asuint(CB4_m0[89u]);
        uint4 _3516 = asuint(CB4_m0[90u]);
        float _3528 = ((mad(_382, mad(_3459, _3448, _2226), _3448 * _3455) * _3453) * (mad(CB0_m0[199u].z, mad((-0.0f) - _2021, _2291, mad(_3397, mad(_2021, _2291, (-0.0f) - _3392), _3392)), _2294) * _3469)) * asfloat(_482 ? _3516.z : (_484 ? _3506.z : (_486 ? _3496.z : (_488 ? _3479.z : _3486.z))));
        float _3531 = mad(clamp(mad(_671, 0.20000000298023223876953125f, -1.0f), 0.0f, 1.0f), -0.699999988079071044921875f, 1.0f);
        float _3533 = _3531 * (((mad(_382, mad(_3459, _3446, _2223), _3446 * _3455) * _3453) * (mad(CB0_m0[199u].z, mad((-0.0f) - _2019, _2291, mad(_3397, mad(_2019, _2291, (-0.0f) - _3388), _3388)), _2292) * _3469)) * asfloat(_482 ? _3516.x : (_484 ? _3506.x : (_486 ? _3496.x : (_488 ? _3479.x : _3486.x)))));
        float _3534 = _3531 * (((mad(_382, mad(_3459, _3447, _2225), _3447 * _3455) * _3453) * (mad(CB0_m0[199u].z, mad((-0.0f) - _2020, _2291, mad(_3397, mad(_2020, _2291, (-0.0f) - _3390), _3390)), _2293) * _3469)) * asfloat(_482 ? _3516.y : (_484 ? _3506.y : (_486 ? _3496.y : (_488 ? _3479.y : _3486.y)))));
        float _3537 = mad(_3528, _3531, _3534 + _3533);
        float _3539 = mad(_3537 * _3537, 0.0500000007450580596923828125f, 1.0f);
        float _3544 = asfloat(_2040 ? 1056964608u : 1065353216u);
        float _3545 = _3544 * (_3539 * _3533);
        float _3546 = _3544 * (_3539 * _3534);
        float _3547 = _3544 * (_3539 * (_3531 * _3528));
        bool _3551 = 0.5f < CB3_m0[1u].w;
        _3239 = asfloat(_3551 ? asuint(min(_3545, 0.699999988079071044921875f)) : asuint(_3545)) * CB0_m0[198u].x;
        _3241 = asfloat(_3551 ? asuint(min(_3546, 0.699999988079071044921875f)) : asuint(_3546)) * CB0_m0[198u].y;
        _3243 = asfloat(_3551 ? asuint(min(_3547, 0.699999988079071044921875f)) : asuint(_3547)) * CB0_m0[198u].z;
    }
    else
    {
        _3239 = asfloat(0u);
        _3241 = asfloat(0u);
        _3243 = asfloat(0u);
    }
    float _3251 = _2705 + (max(mad(_2625, _2292, -1.0f), 0.0f) + mad(asfloat(_3142 ? 1028443341u : (_3143 ? asuint(_3133) : asuint(_3136))), _2291 * _2210, mad(_2961, _2216, mad(_2216, _2292, _2292 * _2625))));
    float _3252 = _2707 + (max(mad(_2626, _2293, -1.0f), 0.0f) + mad(asfloat(_3142 ? 1028443341u : (_3143 ? asuint(_3134) : asuint(_3137))), _2291 * _2211, mad(_2962, _2217, mad(_2217, _2293, _2293 * _2626))));
    float _3253 = _2709 + (max(mad(_2627, _2294, -1.0f), 0.0f) + mad(asfloat(_3142 ? 1028443341u : (_3143 ? asuint(_3135) : asuint(_3138))), _2291 * _2212, mad(_2963, _2218, mad(_2218, _2294, _2294 * _2627))));
    float _3824;
    float _3825;
    float _3826;
    float _3827;
    float _3828;
    if (CB4_m0[150u].x >= 0.5f)
    {
        bool _3575 = 0.5f < CB4_m0[150u].y;
        float _3584 = _3575 ? TEXCOORD_1.x : TEXCOORD.x;
        float _3585 = _3575 ? TEXCOORD_1.y : TEXCOORD.y;
        bool _3591 = 0.5f < CB4_m0[148u].z;
        bool _3592 = 0.5f < CB4_m0[148u].y;
        bool _3598 = CB4_m0[150u].y < 0.5f;
        bool _3601 = CB4_m0[150u].z < 0.5f;
        bool _3622 = 0.800000011920928955078125f < CB4_m0[147u].w;
        float4 _3675 = T8.SampleBias(S3, float2(mad(CB4_m0[108u].x, CB0_m0[40u].y, mad(_3584, CB4_m0[49u].x, CB4_m0[49u].z)), mad(CB4_m0[108u].y, CB0_m0[40u].y, mad(_3585, CB4_m0[49u].y, CB4_m0[49u].w))), CB0_m0[191u].x);
        float _3677 = _3675.x;
        float _3678 = _3675.y;
        float _3679 = _3675.z;
        float4 _3684 = T9.SampleBias(S4, float2(mad(CB4_m0[108u].z, CB0_m0[40u].y, mad(asfloat(_3622 ? asuint(_267) : (_3591 ? asuint(_3584) : asuint(_3598 ? TEXCOORD_1.x : TEXCOORD.x))), CB4_m0[50u].x, CB4_m0[50u].z)), mad(CB4_m0[108u].w, CB0_m0[40u].y, mad(asfloat(_3622 ? asuint(_268) : (_3591 ? asuint(_3585) : asuint(_3598 ? TEXCOORD_1.y : TEXCOORD.y))), CB4_m0[50u].y, CB4_m0[50u].w))), CB0_m0[191u].x);
        uint _3693 = (CB4_m0[150u].w < 0.5f) ? asuint(_3684.x) : ((CB4_m0[150u].w < 1.5f) ? asuint(_3684.y) : asuint(_3684.z));
        float _3694 = asfloat(_3693);
        uint _3695 = asuint(_3677);
        float _3700 = asfloat(_3601 ? _3695 : asuint(_3677));
        float _3702 = asfloat(_3601 ? _3695 : asuint(_3678));
        float _3704 = asfloat(_3601 ? _3695 : asuint(_3679));
        uint _3750 = _3592 ? asuint(_3694 * mad(_3700, CB4_m0[34u].x + ((-0.0f) - CB4_m0[95u].x), CB4_m0[95u].x)) : asuint((_3694 * _3700) * CB4_m0[34u].x);
        uint _3752 = _3592 ? asuint(_3694 * mad(_3702, CB4_m0[34u].y + ((-0.0f) - CB4_m0[95u].y), CB4_m0[95u].y)) : asuint((_3694 * _3702) * CB4_m0[34u].y);
        uint _3754 = _3592 ? asuint(_3694 * mad(_3704, CB4_m0[34u].z + ((-0.0f) - CB4_m0[95u].z), CB4_m0[95u].z)) : asuint((_3694 * _3704) * CB4_m0[34u].z);
        bool _3759 = 0.5f < CB4_m0[151u].x;
        float _3767 = asfloat(_3759 ? asuint(_2210 * asfloat(_3750)) : _3750);
        float _3769 = asfloat(_3759 ? asuint(_2211 * asfloat(_3752)) : _3752);
        float _3771 = asfloat(_3759 ? asuint(_2212 * asfloat(_3754)) : _3754);
        bool _3775 = CB4_m0[147u].z < 0.5f;
        uint _3786 = _3601 ? asuint(_3677) : asuint(_3679 + (_3678 + _3677));
        float _3792 = min(asfloat((1.5f < CB4_m0[147u].z) ? asuint(_3694 + asfloat(_3786)) : _3786), 1.0f);
        float _3793 = _3694 * _3792;
        _3824 = asfloat(_3775 ? asuint(_3251 + _3767) : asuint(_3251 * mad(_3793, _3767 + (-1.0f), 1.0f)));
        _3825 = asfloat(_3775 ? asuint(_3252 + _3769) : asuint(_3252 * mad(_3793, _3769 + (-1.0f), 1.0f)));
        _3826 = asfloat(_3775 ? asuint(_3253 + _3771) : asuint(_3253 * mad(_3793, _3771 + (-1.0f), 1.0f)));
        _3827 = asfloat(_3775 ? asuint((_3771 + (_3769 + _3767)) + _2711) : asuint(mad(_3694, _3792, _2711)));
        _3828 = asfloat(_3775 ? _3693 : asuint(_3793));
    }
    else
    {
        _3824 = _3251;
        _3825 = _3252;
        _3826 = _3253;
        _3827 = _2711;
        _3828 = asfloat(0u);
    }
    float _4077;
    float _4078;
    float _4079;
    float _4080;
    float _4081;
    if (float(int(asuint(CB4_m0[132u]).w)) >= 0.5f)
    {
        bool _3840 = 0.5f < CB4_m0[127u].x;
        bool _3841 = 0.5f < CB4_m0[127u].z;
        bool _3859 = 0.5f < CB4_m0[128u].x;
        bool _3860 = 0.800000011920928955078125f < CB4_m0[128u].z;
        bool _3861 = 0.5f < CB4_m0[128u].y;
        float4 _3925 = T10.SampleBias(S0, float2(mad(CB4_m0[40u].x, CB0_m0[40u].y, mad(_3840 ? TEXCOORD_1.x : TEXCOORD.x, CB4_m0[51u].x, CB4_m0[51u].z)), mad(CB4_m0[40u].y, CB0_m0[40u].y, mad(_3840 ? TEXCOORD_1.y : TEXCOORD.y, CB4_m0[51u].y, CB4_m0[51u].w))), CB0_m0[191u].x);
        float _3927 = _3925.x;
        float _3928 = _3925.y;
        float _3929 = _3925.z;
        float4 _3934 = T11.SampleBias(S0, float2(mad(CB4_m0[40u].z, CB0_m0[40u].y, mad(asfloat(_3860 ? asuint(_267) : asuint(_3859 ? TEXCOORD_1.x : TEXCOORD.x)), CB4_m0[52u].x, CB4_m0[52u].z)), mad(CB4_m0[40u].w, CB0_m0[40u].y, mad(asfloat(_3860 ? asuint(_268) : asuint(_3859 ? TEXCOORD_1.y : TEXCOORD.y)), CB4_m0[52u].y, CB4_m0[52u].w))), CB0_m0[191u].x);
        bool _3945 = CB4_m0[127u].y < 0.5f;
        uint _3950 = (CB4_m0[127u].w < 0.5f) ? asuint(_3934.x) : ((CB4_m0[127u].w < 1.5f) ? asuint(_3934.y) : asuint(_3934.z));
        float _3951 = asfloat(_3950);
        uint _3952 = asuint(_3927);
        float _3957 = asfloat(_3945 ? _3952 : asuint(_3927));
        float _3959 = asfloat(_3945 ? _3952 : asuint(_3928));
        float _3961 = asfloat(_3945 ? _3952 : asuint(_3929));
        uint _4008 = _3861 ? asuint(_3951 * mad(_3957, CB4_m0[110u].x + ((-0.0f) - CB4_m0[111u].x), CB4_m0[111u].x)) : asuint((_3957 * _3951) * CB4_m0[110u].x);
        uint _4010 = _3861 ? asuint(_3951 * mad(_3959, CB4_m0[110u].y + ((-0.0f) - CB4_m0[111u].y), CB4_m0[111u].y)) : asuint((_3959 * _3951) * CB4_m0[110u].y);
        uint _4012 = _3861 ? asuint(_3951 * mad(_3961, CB4_m0[110u].z + ((-0.0f) - CB4_m0[111u].z), CB4_m0[111u].z)) : asuint((_3961 * _3951) * CB4_m0[110u].z);
        float _4021 = asfloat(_3841 ? asuint(_2210 * asfloat(_4008)) : _4008);
        float _4023 = asfloat(_3841 ? asuint(_2211 * asfloat(_4010)) : _4010);
        float _4025 = asfloat(_3841 ? asuint(_2212 * asfloat(_4012)) : _4012);
        bool _4029 = CB4_m0[128u].w < 0.5f;
        uint _4040 = _3945 ? asuint(_3927) : asuint(_3929 + (_3928 + _3927));
        float _4046 = min(asfloat((1.5f < CB4_m0[128u].w) ? asuint(asfloat(_4040) + _3951) : _4040), 1.0f);
        float _4047 = _4046 * _3951;
        _4077 = asfloat(_4029 ? asuint(_4021 + _3824) : asuint(mad(_4047, _4021 + (-1.0f), 1.0f) * _3824));
        _4078 = asfloat(_4029 ? asuint(_4023 + _3825) : asuint(mad(_4047, _4023 + (-1.0f), 1.0f) * _3825));
        _4079 = asfloat(_4029 ? asuint(_4025 + _3826) : asuint(mad(_4047, _4025 + (-1.0f), 1.0f) * _3826));
        _4080 = asfloat(_4029 ? asuint((_4025 + (_4023 + _4021)) + _3827) : asuint(mad(_3951, _4046, _3827)));
        _4081 = asfloat(_4029 ? _3950 : asuint(_4047));
    }
    else
    {
        _4077 = _3824;
        _4078 = _3825;
        _4079 = _3826;
        _4080 = _3827;
        _4081 = _3828;
    }
    float _4089 = CB4_m0[29u].w * CB4_m0[155u].w;
    float _4101 = mad(_4089, ((-0.0f) - _4077) + CB4_m0[29u].x, _4077);
    float _4102 = mad(_4089, ((-0.0f) - _4078) + CB4_m0[29u].y, _4078);
    float _4103 = mad(_4089, ((-0.0f) - _4079) + CB4_m0[29u].z, _4079);
    float _4111 = mad((-0.0f) - CB4_m0[29u].w, CB4_m0[155u].w, 1.0f);
    float _4112 = _4111 * (_3239 * mad(_2961, 2.0f, 1.0f));
    float _4113 = _4111 * (_3241 * mad(_2962, 2.0f, 1.0f));
    float _4114 = _4111 * (_3243 * mad(_2963, 2.0f, 1.0f));
    float _4315;
    float _4317;
    float _4319;
    float _4321;
    if (0.5f < CB4_m0[152u].y)
    {
        bool _4123 = CB4_m0[153u].x < 0.5f;
        float _4195 = mad(gl_FragCoord.x, CB0_m0[160u].z, -0.5f);
        float _4196 = mad(gl_FragCoord.y, CB0_m0[160u].w, -0.5f);
        float _4224 = ((-0.0f) - (mad(CB0_m0[118u].z, TEXCOORD_4.w, mad(CB0_m0[116u].z, TEXCOORD_2.w, TEXCOORD_3.w * CB0_m0[117u].z)) + CB0_m0[119u].z)) / CB0_m0[93u].y;
        float _4235 = asfloat((0.5f < CB4_m0[152u].z) ? asuint(mad(CB0_m0[85u].w, mad((-0.0f) - _4224, 0.5f, 1.0f), _4224 * 0.5f)) : 1065353216u);
        float4 _4268 = T13.Sample(S5, float2((mad(_4235 * mad(CB4_m0[125u].z, mad(CB0_m0[118u].x, _366, mad(CB0_m0[116u].x, _364, _365 * CB0_m0[117u].x)), (CB0_m0[160u].w * CB0_m0[160u].x) * (_4195 + _4195)), CB4_m0[47u].x, CB4_m0[47u].z) + 0.5f) + mad(CB4_m0[124u].x, CB0_m0[40u].y, CB4_m0[124u].z), (mad(_4235 * mad(CB4_m0[125u].z, mad(CB0_m0[118u].y, _366, mad(CB0_m0[116u].y, _364, _365 * CB0_m0[117u].y)), _4196 + _4196), CB4_m0[47u].y, CB4_m0[47u].w) + 0.5f) + mad(CB4_m0[124u].y, CB0_m0[40u].y, CB4_m0[124u].w)));
        float _4284 = _4268.w * CB4_m0[109u].w;
        float _4313 = asfloat((0.5f < CB4_m0[153u].z) ? asuint(mad(mad(sin((CB0_m0[40u].y / max(CB4_m0[168u].x, 0.00999999977648258209228515625f)) * 6.283185482025146484375f), 0.5f, 0.5f), ((-0.0f) - CB4_m0[125u].x) + CB4_m0[125u].y, CB4_m0[125u].x)) : 1065353216u);
        float _4314 = _4313 * _4284;
        float _4446;
        float _4447;
        float _4448;
        if (0.5f < CB4_m0[152u].w)
        {
            float _4329 = mad((-0.0f) - _4284, _4313, 1.0f);
            _4446 = _3251 * mad(_4268.x * CB4_m0[109u].x, _4314, _4329);
            _4447 = _3252 * mad(_4268.y * CB4_m0[109u].y, _4314, _4329);
            _4448 = _3253 * mad(_4268.z * CB4_m0[109u].z, _4314, _4329);
        }
        else
        {
            _4446 = mad(_4314, mad(CB4_m0[109u].x, _4268.x, (-0.0f) - _3251), _3251);
            _4447 = mad(_4314, mad(CB4_m0[109u].y, _4268.y, (-0.0f) - _3252), _3252);
            _4448 = mad(_4314, mad(CB4_m0[109u].z, _4268.z, (-0.0f) - _3253), _3253);
        }
        float _4474 = asfloat((0.5f < CB4_m0[153u].y) ? asuint(((-0.0f) - _4081) + 1.0f) : 1065353216u) * T14.Sample(S6, float2(mad(CB0_m0[40u].y, CB4_m0[149u].z, mad(_4123 ? TEXCOORD.x : TEXCOORD_1.x, CB4_m0[48u].x, CB4_m0[48u].z)), mad(CB0_m0[40u].y, CB4_m0[149u].w, mad(_4123 ? TEXCOORD.y : TEXCOORD_1.y, CB4_m0[48u].y, CB4_m0[48u].w)))).x;
        _4315 = mad(_4448 + (_4447 + _4446), _4474, _4080);
        _4317 = mad(_4474, ((-0.0f) - _4103) + _4448, _4103);
        _4319 = mad(_4474, ((-0.0f) - _4102) + _4447, _4102);
        _4321 = mad(_4474, ((-0.0f) - _4101) + _4446, _4101);
    }
    else
    {
        _4315 = _4080;
        _4317 = _4103;
        _4319 = _4102;
        _4321 = _4101;
    }
    float _4426;
    float _4428;
    float _4430;
    float _4432;
    uint _4434;
    float _4435;
    float _4437;
    float _4439;
    if (0.5f < CB4_m0[158u].z)
    {
        bool _4367 = 0.5f < CB4_m0[159u].x;
        float4 _4416 = T15.Sample(S7, float2(mad(CB0_m0[40u].y, CB4_m0[103u].x, asfloat(_4367 ? asuint(mad(TEXCOORD_1.x, CB4_m0[55u].x, CB4_m0[55u].z)) : asuint(mad(TEXCOORD.x, CB4_m0[55u].x, CB4_m0[55u].z)))), mad(CB0_m0[40u].y, CB4_m0[103u].y, asfloat(_4367 ? asuint(mad(TEXCOORD_1.y, CB4_m0[55u].y, CB4_m0[55u].w)) : asuint(mad(TEXCOORD.y, CB4_m0[55u].y, CB4_m0[55u].w))))));
        float _4418 = _4416.x;
        float _4419 = _4416.y;
        float _4420 = _4416.z;
        float _4427;
        float _4429;
        float _4431;
        if (0.5f < CB4_m0[158u].w)
        {
            _4427 = mad(CB4_m0[33u].x * CB4_m0[33u].w, _4418, _4112);
            _4429 = mad(CB4_m0[33u].y * CB4_m0[33u].w, _4419, _4113);
            _4431 = mad(CB4_m0[33u].z * CB4_m0[33u].w, _4420, _4114);
        }
        else
        {
            float _4500 = _4416.w * CB4_m0[33u].w;
            _4427 = mad(_4500, mad(CB4_m0[33u].x, _4418, (-0.0f) - _4112), _4112);
            _4429 = mad(_4500, mad(CB4_m0[33u].y, _4419, (-0.0f) - _4113), _4113);
            _4431 = mad(_4500, mad(CB4_m0[33u].z, _4420, (-0.0f) - _4114), _4114);
        }
        uint4 _4597 = asuint(CB4_m0[131u]);
        float _4601 = float(int(_4597.x));
        float _4608 = exp2(log2(max(((-0.0f) - abs(dot(float3(TEXCOORD_2.x, TEXCOORD_2.y, TEXCOORD_2.z), float3(_668, _669, _670)))) + 1.0f, 0.0f)) * CB4_m0[155u].z) * float(int(_4597.y));
        float _4616 = exp2(max(CB4_m0[130u].x, 0.00999999977648258209228515625f) * log2(_4608));
        float _4623 = min(CB4_m0[121u].x, 65504.0f);
        float _4625 = min(CB4_m0[121u].y, 65504.0f);
        float _4626 = min(CB4_m0[121u].z, 65504.0f);
        float _4639 = mad(_4616, ((-0.0f) - _4623) + CB4_m0[120u].x, _4623);
        float _4640 = mad(_4616, ((-0.0f) - _4625) + CB4_m0[120u].y, _4625);
        float _4641 = mad(_4616, ((-0.0f) - _4626) + CB4_m0[120u].z, _4626);
        float _4652 = _4608 * asfloat(((_4608 >= CB4_m0[130u].y) ? 4294967295u : 0u) & 1065353216u);
        bool _4656 = _4601 < 0.5f;
        bool _4657 = _4601 < 1.5f;
        _4426 = _4427;
        _4428 = _4429;
        _4430 = _4431;
        _4432 = mad(_4431 + (_4429 + _4427), ((-0.0f) - CB4_m0[156u].x) + 1.0f, _4315);
        _4434 = 0u;
        _4435 = asfloat(_4656 ? asuint(mad(_4652, _4420 * _4641, _4317)) : (_4657 ? asuint(mad(_4652, mad(_4641, _4420, (-0.0f) - _4317), _4317)) : asuint(_4317 * mad(_4652, mad(_4641, _4420, -1.0f), 1.0f))));
        _4437 = asfloat(_4656 ? asuint(mad(_4652, _4419 * _4640, _4319)) : (_4657 ? asuint(mad(_4652, mad(_4640, _4419, (-0.0f) - _4319), _4319)) : asuint(_4319 * mad(_4652, mad(_4640, _4419, -1.0f), 1.0f))));
        _4439 = asfloat(_4656 ? asuint(mad(_4652, _4418 * _4639, _4321)) : (_4657 ? asuint(mad(_4652, mad(_4639, _4418, (-0.0f) - _4321), _4321)) : asuint(_4321 * mad(_4652, mad(_4639, _4418, -1.0f), 1.0f))));
    }
    else
    {
        _4426 = _4112;
        _4428 = _4113;
        _4430 = _4114;
        _4432 = _4315;
        _4434 = _432;
        _4435 = _4317;
        _4437 = _4319;
        _4439 = _4321;
    }
    float _4541;
    float _4543;
    float _4545;
    float _4547;
    float _4549;
    float _4551;
    float _4553;
    if (0.5f < CB4_m0[156u].x)
    {
        float _4518 = CB4_m0[156u].z * 0.01745329238474369049072265625f;
        float _4520 = sin(_4518);
        float _4521 = cos(_4518);
        bool _4526 = CB4_m0[156u].y < 0.5f;
        float _4768;
        float _4769;
        float _4770;
        if (1.5f < CB4_m0[156u].y)
        {
            bool _4695 = CB4_m0[157u].w < 0.5f;
            uint4 _4742 = asuint(CB4_m0[25u]);
            float _4755 = ((-0.0f) - TEXCOORD_2.w) + asfloat(_4695 ? asuint(mad(CB1_m0[2u].x, CB4_m0[25u].z, mad(CB1_m0[0u].x, CB4_m0[25u].x, CB1_m0[1u].x * CB4_m0[25u].y)) + CB1_m0[3u].x) : _4742.x);
            float _4756 = ((-0.0f) - TEXCOORD_3.w) + asfloat(_4695 ? asuint(mad(CB1_m0[2u].y, CB4_m0[25u].z, mad(CB1_m0[0u].y, CB4_m0[25u].x, CB1_m0[1u].y * CB4_m0[25u].y)) + CB1_m0[3u].y) : _4742.y);
            float _4757 = ((-0.0f) - TEXCOORD_4.w) + asfloat(_4695 ? asuint(mad(CB1_m0[2u].z, CB4_m0[25u].z, mad(CB1_m0[0u].z, CB4_m0[25u].x, CB1_m0[1u].z * CB4_m0[25u].y)) + CB1_m0[3u].z) : _4742.z);
            float _4762 = rsqrt(max(dot(float3(_4755, _4756, _4757), float3(_4755, _4756, _4757)), 1.1754943508222875079687365372222e-38f));
            _4768 = _4762 * _4757;
            _4769 = _4762 * _4755;
            _4770 = _4762 * _4756;
        }
        else
        {
            _4768 = asfloat(_4526 ? asuint(_770) : asuint(_670));
            _4769 = asfloat(_4526 ? asuint(_768) : asuint(_668));
            _4770 = asfloat(_4526 ? asuint(_769) : asuint(_669));
        }
        float _4790 = clamp((mad(CB4_m0[156u].w, 2.0f, dot(float3(_364, _365, _366), float3(dot(float2(_4521, _4520), float2(_4769, _4768)), _4770, dot(float2((-0.0f) - _4520, _4521), float2(_4769, _4768))))) + (-1.0f)) / max(CB4_m0[157u].x, 9.9999997473787516355514526367188e-06f), 0.0f, 1.0f);
        float _4817 = mad(_4790, CB4_m0[30u].x + ((-0.0f) - CB4_m0[31u].x), CB4_m0[31u].x);
        float _4818 = mad(_4790, CB4_m0[30u].y + ((-0.0f) - CB4_m0[31u].y), CB4_m0[31u].y);
        float _4819 = mad(_4790, CB4_m0[30u].z + ((-0.0f) - CB4_m0[31u].z), CB4_m0[31u].z);
        float _4820 = mad(_4790, CB4_m0[30u].w + ((-0.0f) - CB4_m0[31u].w), CB4_m0[31u].w);
        bool _4824 = 0.5f < CB4_m0[157u].z;
        float _4829 = asfloat(_4824 ? asuint(_2210) : 1065353216u);
        float _4831 = asfloat(_4824 ? asuint(_2211) : 1065353216u);
        float _4833 = asfloat(_4824 ? asuint(_2212) : 1065353216u);
        float _4834 = _4817 * _4829;
        float _4835 = _4818 * _4831;
        bool _4840 = CB4_m0[157u].y < 0.5f;
        _4541 = asfloat(0u);
        _4543 = asfloat(0u);
        _4545 = asfloat(0u);
        _4547 = mad(mad(_4819, _4833, _4835 + _4834), _4820, _4432);
        _4549 = asfloat(_4840 ? asuint(mad(_4820, mad(_4819, _4833, (-0.0f) - _4435), _4435)) : asuint(mad(_4820, _4819 * _4833, _4435)));
        _4551 = asfloat(_4840 ? asuint(mad(_4820, mad(_4818, _4831, (-0.0f) - _4437), _4437)) : asuint(mad(_4820, _4835, _4437)));
        _4553 = asfloat(_4840 ? asuint(mad(_4820, mad(_4817, _4829, (-0.0f) - _4439), _4439)) : asuint(mad(_4820, _4834, _4439)));
    }
    else
    {
        _4541 = _4426;
        _4543 = _4428;
        _4545 = _4430;
        _4547 = _4432;
        _4549 = _4435;
        _4551 = _4437;
        _4553 = _4439;
    }
    SV_Target_1.x = min(sqrt(max(_4541, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.y = min(sqrt(max(_4543, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.z = min(sqrt(max(_4545, 0.0f)) * 0.20000000298023223876953125f, 1.0f);
    SV_Target_1.w = _4547 * 0.33329999446868896484375f;
    SV_Target_2.w = (_4434 != 0u) ? 0.3400000035762786865234375f : 0.0f;
    SV_Target_3.x = mad(_364, 0.5f, 0.5f);
    SV_Target_3.y = mad(_365, 0.5f, 0.5f);
    SV_Target_3.z = mad(_366, 0.5f, 0.5f);
    SV_Target.x = _4553;
    SV_Target.y = _4551;
    SV_Target.z = _4549;
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
