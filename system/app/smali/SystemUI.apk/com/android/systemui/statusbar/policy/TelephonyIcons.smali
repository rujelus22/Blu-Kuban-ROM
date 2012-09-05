.class Lcom/android/systemui/statusbar/policy/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field static final DATA_1X:[[I

.field static final DATA_3G:[[I

.field static final DATA_3G_PLUS:[[I

.field static final DATA_4G:[[I

.field static final DATA_4G_ATT:[[I

.field static final DATA_5_LEVEL_SIGNAL_STRENGTH:[[I

.field static final DATA_6_LEVEL_SIGNAL_STRENGTH:[[I

.field static final DATA_E:[[I

.field static final DATA_G:[[I

.field static final DATA_H:[[I

.field static final DATA_H_PLUS:[[I

.field static final DATA_LTE:[[I

.field static final DATA_LTE_ATT:[[I

.field static final DATA_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_6_LEVEL_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 25
    new-array v0, v5, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_124

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_132

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 38
    new-array v0, v5, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_140

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_14e

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    .line 52
    new-array v0, v5, [[I

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_15c

    aput-object v1, v0, v3

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_16c

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

    .line 67
    new-array v0, v5, [[I

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_17c

    aput-object v1, v0, v3

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_18e

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_6_LEVEL_SIGNAL_STRENGTH:[[I

    .line 85
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    .line 88
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_5_LEVEL_SIGNAL_STRENGTH:[[I

    .line 90
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_6_LEVEL_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_6_LEVEL_SIGNAL_STRENGTH:[[I

    .line 96
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_1a0

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1ac

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    .line 107
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_1b8

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1c4

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    .line 119
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_1d0

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1dc

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    .line 130
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_1e8

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1f4

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    .line 142
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_200

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_20c

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    .line 155
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_218

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_224

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    .line 169
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_230

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_23c

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    .line 181
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_248

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_254

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    .line 193
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_260

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_26c

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_ATT:[[I

    .line 204
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_278

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_284

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_ATT:[[I

    .line 218
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_290

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_29c

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    return-void

    .line 25
    :array_124
    .array-data 0x4
        0xc2t 0x0t 0x2t 0x7ft
        0xc4t 0x0t 0x2t 0x7ft
        0xc6t 0x0t 0x2t 0x7ft
        0xc8t 0x0t 0x2t 0x7ft
        0xcat 0x0t 0x2t 0x7ft
    .end array-data

    :array_132
    .array-data 0x4
        0xc3t 0x0t 0x2t 0x7ft
        0xc5t 0x0t 0x2t 0x7ft
        0xc7t 0x0t 0x2t 0x7ft
        0xc9t 0x0t 0x2t 0x7ft
        0xcbt 0x0t 0x2t 0x7ft
    .end array-data

    .line 38
    :array_140
    .array-data 0x4
        0xc2t 0x0t 0x2t 0x7ft
        0xc4t 0x0t 0x2t 0x7ft
        0xc6t 0x0t 0x2t 0x7ft
        0xc8t 0x0t 0x2t 0x7ft
        0xcat 0x0t 0x2t 0x7ft
    .end array-data

    :array_14e
    .array-data 0x4
        0xc3t 0x0t 0x2t 0x7ft
        0xc5t 0x0t 0x2t 0x7ft
        0xc7t 0x0t 0x2t 0x7ft
        0xc9t 0x0t 0x2t 0x7ft
        0xcbt 0x0t 0x2t 0x7ft
    .end array-data

    .line 52
    :array_15c
    .array-data 0x4
        0x59t 0x1t 0x2t 0x7ft
        0x5bt 0x1t 0x2t 0x7ft
        0x5dt 0x1t 0x2t 0x7ft
        0x5ft 0x1t 0x2t 0x7ft
        0x61t 0x1t 0x2t 0x7ft
        0x63t 0x1t 0x2t 0x7ft
    .end array-data

    :array_16c
    .array-data 0x4
        0x5at 0x1t 0x2t 0x7ft
        0x5ct 0x1t 0x2t 0x7ft
        0x5et 0x1t 0x2t 0x7ft
        0x60t 0x1t 0x2t 0x7ft
        0x62t 0x1t 0x2t 0x7ft
        0x64t 0x1t 0x2t 0x7ft
    .end array-data

    .line 67
    :array_17c
    .array-data 0x4
        0x65t 0x1t 0x2t 0x7ft
        0x67t 0x1t 0x2t 0x7ft
        0x69t 0x1t 0x2t 0x7ft
        0x6bt 0x1t 0x2t 0x7ft
        0x6dt 0x1t 0x2t 0x7ft
        0x6ft 0x1t 0x2t 0x7ft
        0x71t 0x1t 0x2t 0x7ft
    .end array-data

    :array_18e
    .array-data 0x4
        0x66t 0x1t 0x2t 0x7ft
        0x68t 0x1t 0x2t 0x7ft
        0x6at 0x1t 0x2t 0x7ft
        0x6ct 0x1t 0x2t 0x7ft
        0x6et 0x1t 0x2t 0x7ft
        0x70t 0x1t 0x2t 0x7ft
        0x72t 0x1t 0x2t 0x7ft
    .end array-data

    .line 96
    :array_1a0
    .array-data 0x4
        0x98t 0x0t 0x2t 0x7ft
        0x98t 0x0t 0x2t 0x7ft
        0x98t 0x0t 0x2t 0x7ft
        0x98t 0x0t 0x2t 0x7ft
    .end array-data

    :array_1ac
    .array-data 0x4
        0xa6t 0x0t 0x2t 0x7ft
        0xa6t 0x0t 0x2t 0x7ft
        0xa6t 0x0t 0x2t 0x7ft
        0xa6t 0x0t 0x2t 0x7ft
    .end array-data

    .line 107
    :array_1b8
    .array-data 0x4
        0x94t 0x0t 0x2t 0x7ft
        0x94t 0x0t 0x2t 0x7ft
        0x94t 0x0t 0x2t 0x7ft
        0x94t 0x0t 0x2t 0x7ft
    .end array-data

    :array_1c4
    .array-data 0x4
        0xa2t 0x0t 0x2t 0x7ft
        0xa2t 0x0t 0x2t 0x7ft
        0xa2t 0x0t 0x2t 0x7ft
        0xa2t 0x0t 0x2t 0x7ft
    .end array-data

    .line 119
    :array_1d0
    .array-data 0x4
        0x95t 0x0t 0x2t 0x7ft
        0x95t 0x0t 0x2t 0x7ft
        0x95t 0x0t 0x2t 0x7ft
        0x95t 0x0t 0x2t 0x7ft
    .end array-data

    :array_1dc
    .array-data 0x4
        0x95t 0x0t 0x2t 0x7ft
        0x95t 0x0t 0x2t 0x7ft
        0x95t 0x0t 0x2t 0x7ft
        0x95t 0x0t 0x2t 0x7ft
    .end array-data

    .line 130
    :array_1e8
    .array-data 0x4
        0x97t 0x0t 0x2t 0x7ft
        0x97t 0x0t 0x2t 0x7ft
        0x97t 0x0t 0x2t 0x7ft
        0x97t 0x0t 0x2t 0x7ft
    .end array-data

    :array_1f4
    .array-data 0x4
        0xa5t 0x0t 0x2t 0x7ft
        0xa5t 0x0t 0x2t 0x7ft
        0xa5t 0x0t 0x2t 0x7ft
        0xa5t 0x0t 0x2t 0x7ft
    .end array-data

    .line 142
    :array_200
    .array-data 0x4
        0x99t 0x0t 0x2t 0x7ft
        0x99t 0x0t 0x2t 0x7ft
        0x99t 0x0t 0x2t 0x7ft
        0x99t 0x0t 0x2t 0x7ft
    .end array-data

    :array_20c
    .array-data 0x4
        0xa7t 0x0t 0x2t 0x7ft
        0xa7t 0x0t 0x2t 0x7ft
        0xa7t 0x0t 0x2t 0x7ft
        0xa7t 0x0t 0x2t 0x7ft
    .end array-data

    .line 155
    :array_218
    .array-data 0x4
        0x9at 0x0t 0x2t 0x7ft
        0x9at 0x0t 0x2t 0x7ft
        0x9at 0x0t 0x2t 0x7ft
        0x9at 0x0t 0x2t 0x7ft
    .end array-data

    :array_224
    .array-data 0x4
        0x9at 0x0t 0x2t 0x7ft
        0x9at 0x0t 0x2t 0x7ft
        0x9at 0x0t 0x2t 0x7ft
        0x9at 0x0t 0x2t 0x7ft
    .end array-data

    .line 169
    :array_230
    .array-data 0x4
        0x93t 0x0t 0x2t 0x7ft
        0x93t 0x0t 0x2t 0x7ft
        0x93t 0x0t 0x2t 0x7ft
        0x93t 0x0t 0x2t 0x7ft
    .end array-data

    :array_23c
    .array-data 0x4
        0xa1t 0x0t 0x2t 0x7ft
        0xa1t 0x0t 0x2t 0x7ft
        0xa1t 0x0t 0x2t 0x7ft
        0xa1t 0x0t 0x2t 0x7ft
    .end array-data

    .line 181
    :array_248
    .array-data 0x4
        0x96t 0x0t 0x2t 0x7ft
        0x96t 0x0t 0x2t 0x7ft
        0x96t 0x0t 0x2t 0x7ft
        0x96t 0x0t 0x2t 0x7ft
    .end array-data

    :array_254
    .array-data 0x4
        0xa4t 0x0t 0x2t 0x7ft
        0xa4t 0x0t 0x2t 0x7ft
        0xa4t 0x0t 0x2t 0x7ft
        0xa4t 0x0t 0x2t 0x7ft
    .end array-data

    .line 193
    :array_260
    .array-data 0x4
        0x96t 0x0t 0x2t 0x7ft
        0x76t 0x1t 0x2t 0x7ft
        0x7bt 0x1t 0x2t 0x7ft
        0x7at 0x1t 0x2t 0x7ft
    .end array-data

    :array_26c
    .array-data 0x4
        0x96t 0x0t 0x2t 0x7ft
        0x76t 0x1t 0x2t 0x7ft
        0x7bt 0x1t 0x2t 0x7ft
        0x7at 0x1t 0x2t 0x7ft
    .end array-data

    .line 204
    :array_278
    .array-data 0x4
        0x75t 0x1t 0x2t 0x7ft
        0x76t 0x1t 0x2t 0x7ft
        0x7bt 0x1t 0x2t 0x7ft
        0x7at 0x1t 0x2t 0x7ft
    .end array-data

    :array_284
    .array-data 0x4
        0x75t 0x1t 0x2t 0x7ft
        0x76t 0x1t 0x2t 0x7ft
        0x7bt 0x1t 0x2t 0x7ft
        0x7at 0x1t 0x2t 0x7ft
    .end array-data

    .line 218
    :array_290
    .array-data 0x4
        0x9bt 0x0t 0x2t 0x7ft
        0x9bt 0x0t 0x2t 0x7ft
        0x9bt 0x0t 0x2t 0x7ft
        0x9bt 0x0t 0x2t 0x7ft
    .end array-data

    :array_29c
    .array-data 0x4
        0x9bt 0x0t 0x2t 0x7ft
        0x9bt 0x0t 0x2t 0x7ft
        0x9bt 0x0t 0x2t 0x7ft
        0x9bt 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
