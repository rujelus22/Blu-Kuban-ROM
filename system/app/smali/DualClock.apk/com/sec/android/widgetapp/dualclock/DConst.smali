.class public Lcom/sec/android/widgetapp/dualclock/DConst;
.super Ljava/lang/Object;
.source "DConst.java"


# static fields
.field public static final AMPM_TEXT:[I

.field public static final AMPM_TEXT_WITH_DST:[I

.field public static final BACKGROUND:[[I

.field public static final BG_LAYOUT:[I

.field public static final CITY_LAYOUT:[I

.field public static final CITY_LAYOUT_WITH_AMPM:[I

.field public static final CITY_LAYOUT_WITH_DST:[I

.field public static final CITY_LAYOUT_WITH_DST_AMPM:[I

.field public static final CITY_TEXT:[I

.field public static final CITY_TEXT_WITH_AMPM:[I

.field public static final CITY_TEXT_WITH_DST:[I

.field public static final CITY_TEXT_WITH_DST_AMPM:[I

.field public static final COLON:[I

.field public static final DST_ICONS:[I

.field public static final DST_IMAGE:[I

.field public static final DST_IMAGE_WITH_DST_AMPM:[I

.field public static final HH_1ST:[I

.field public static final HH_2ND:[I

.field public static final MM_1ST:[I

.field public static final MM_2ND:[I

.field public static final NUMBERS:[I

.field public static final TOUCH_LAYOUT:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    .line 24
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_ac

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->NUMBERS:[I

    .line 31
    new-array v0, v3, [I

    fill-array-data v0, :array_c4

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->DST_ICONS:[I

    .line 39
    new-array v0, v3, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_cc

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_d4

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->BACKGROUND:[[I

    .line 55
    new-array v0, v3, [I

    fill-array-data v0, :array_dc

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->CITY_LAYOUT:[I

    .line 58
    new-array v0, v3, [I

    fill-array-data v0, :array_e4

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->CITY_LAYOUT_WITH_DST:[I

    .line 61
    new-array v0, v3, [I

    fill-array-data v0, :array_ec

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->CITY_LAYOUT_WITH_AMPM:[I

    .line 64
    new-array v0, v3, [I

    fill-array-data v0, :array_f4

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->CITY_LAYOUT_WITH_DST_AMPM:[I

    .line 68
    new-array v0, v3, [I

    fill-array-data v0, :array_fc

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->CITY_TEXT:[I

    .line 71
    new-array v0, v3, [I

    fill-array-data v0, :array_104

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->CITY_TEXT_WITH_DST:[I

    .line 74
    new-array v0, v3, [I

    fill-array-data v0, :array_10c

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->CITY_TEXT_WITH_AMPM:[I

    .line 77
    new-array v0, v3, [I

    fill-array-data v0, :array_114

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->CITY_TEXT_WITH_DST_AMPM:[I

    .line 82
    new-array v0, v3, [I

    fill-array-data v0, :array_11c

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->DST_IMAGE:[I

    .line 85
    new-array v0, v3, [I

    fill-array-data v0, :array_124

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->DST_IMAGE_WITH_DST_AMPM:[I

    .line 89
    new-array v0, v3, [I

    fill-array-data v0, :array_12c

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->AMPM_TEXT:[I

    .line 91
    new-array v0, v3, [I

    fill-array-data v0, :array_134

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->AMPM_TEXT_WITH_DST:[I

    .line 96
    new-array v0, v3, [I

    fill-array-data v0, :array_13c

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->BG_LAYOUT:[I

    .line 100
    new-array v0, v3, [I

    fill-array-data v0, :array_144

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->TOUCH_LAYOUT:[I

    .line 104
    new-array v0, v3, [I

    fill-array-data v0, :array_14c

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->HH_1ST:[I

    .line 107
    new-array v0, v3, [I

    fill-array-data v0, :array_154

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->HH_2ND:[I

    .line 110
    new-array v0, v3, [I

    fill-array-data v0, :array_15c

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->COLON:[I

    .line 113
    new-array v0, v3, [I

    fill-array-data v0, :array_164

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->MM_1ST:[I

    .line 116
    new-array v0, v3, [I

    fill-array-data v0, :array_16c

    sput-object v0, Lcom/sec/android/widgetapp/dualclock/DConst;->MM_2ND:[I

    return-void

    .line 24
    nop

    :array_ac
    .array-data 0x4
        0x4t 0x0t 0x2t 0x7ft
        0x5t 0x0t 0x2t 0x7ft
        0x6t 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
        0x8t 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
    .end array-data

    .line 31
    :array_c4
    .array-data 0x4
        0x14t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
    .end array-data

    .line 39
    :array_cc
    .array-data 0x4
        0x10t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
    .end array-data

    :array_d4
    .array-data 0x4
        0xft 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
    .end array-data

    .line 55
    :array_dc
    .array-data 0x4
        0x1bt 0x0t 0xat 0x7ft
        0x32t 0x0t 0xat 0x7ft
    .end array-data

    .line 58
    :array_e4
    .array-data 0x4
        0x1dt 0x0t 0xat 0x7ft
        0x34t 0x0t 0xat 0x7ft
    .end array-data

    .line 61
    :array_ec
    .array-data 0x4
        0x20t 0x0t 0xat 0x7ft
        0x37t 0x0t 0xat 0x7ft
    .end array-data

    .line 64
    :array_f4
    .array-data 0x4
        0x23t 0x0t 0xat 0x7ft
        0x3at 0x0t 0xat 0x7ft
    .end array-data

    .line 68
    :array_fc
    .array-data 0x4
        0x1ct 0x0t 0xat 0x7ft
        0x33t 0x0t 0xat 0x7ft
    .end array-data

    .line 71
    :array_104
    .array-data 0x4
        0x1et 0x0t 0xat 0x7ft
        0x36t 0x0t 0xat 0x7ft
    .end array-data

    .line 74
    :array_10c
    .array-data 0x4
        0x21t 0x0t 0xat 0x7ft
        0x39t 0x0t 0xat 0x7ft
    .end array-data

    .line 77
    :array_114
    .array-data 0x4
        0x24t 0x0t 0xat 0x7ft
        0x3dt 0x0t 0xat 0x7ft
    .end array-data

    .line 82
    :array_11c
    .array-data 0x4
        0x1ft 0x0t 0xat 0x7ft
        0x35t 0x0t 0xat 0x7ft
    .end array-data

    .line 85
    :array_124
    .array-data 0x4
        0x25t 0x0t 0xat 0x7ft
        0x3ct 0x0t 0xat 0x7ft
    .end array-data

    .line 89
    :array_12c
    .array-data 0x4
        0x22t 0x0t 0xat 0x7ft
        0x38t 0x0t 0xat 0x7ft
    .end array-data

    .line 91
    :array_134
    .array-data 0x4
        0x26t 0x0t 0xat 0x7ft
        0x3bt 0x0t 0xat 0x7ft
    .end array-data

    .line 96
    :array_13c
    .array-data 0x4
        0x1at 0x0t 0xat 0x7ft
        0x2dt 0x0t 0xat 0x7ft
    .end array-data

    .line 100
    :array_144
    .array-data 0x4
        0x1at 0x0t 0xat 0x7ft
        0x2dt 0x0t 0xat 0x7ft
    .end array-data

    .line 104
    :array_14c
    .array-data 0x4
        0x28t 0x0t 0xat 0x7ft
        0x3ft 0x0t 0xat 0x7ft
    .end array-data

    .line 107
    :array_154
    .array-data 0x4
        0x29t 0x0t 0xat 0x7ft
        0x40t 0x0t 0xat 0x7ft
    .end array-data

    .line 110
    :array_15c
    .array-data 0x4
        0x2at 0x0t 0xat 0x7ft
        0x41t 0x0t 0xat 0x7ft
    .end array-data

    .line 113
    :array_164
    .array-data 0x4
        0x2bt 0x0t 0xat 0x7ft
        0x42t 0x0t 0xat 0x7ft
    .end array-data

    .line 116
    :array_16c
    .array-data 0x4
        0x2ct 0x0t 0xat 0x7ft
        0x43t 0x0t 0xat 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
