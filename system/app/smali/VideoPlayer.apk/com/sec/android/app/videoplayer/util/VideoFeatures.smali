.class public Lcom/sec/android/app/videoplayer/util/VideoFeatures;
.super Ljava/lang/Object;
.source "VideoFeatures.java"


# static fields
.field public static final DEBUG_HIGH:Z = false

.field public static final DEBUG_LOW:Z = true

.field public static final DEBUG_MID:Z = true

.field public static final DEBUG_SECURITY:Z = false

.field public static final FLAG_MDPI_MODEL:Z = false

.field public static final FLAG_REGIONAL_AUS_TEL:Z = false

.field public static final FLAG_REGIONAL_U1_NA_SPR:Z = true

.field public static final FLAG_SUPPORT_BATTERY_ADC_SUPPORT:Z = false

.field public static final FLAG_SUPPORT_DNIE:Z = true

#the value of this static final field might be set in the static constructor
.field public static final FLAG_SUPPORT_GATE_MESSAGE:Z = false

.field public static final FLAG_SUPPORT_INTERNAL_SDCARD:Z = true

.field public static final FLAG_SUPPORT_MEDIA_HUB:Z = true

.field public static final FLAG_SUPPORT_MEDIA_HUB_DOMAIN:Z = true

.field public static final FLAG_SUPPORT_MOTION_MUTE:Z = true

.field public static final FLAG_SUPPORT_MULTIWINDOW:Z = false

.field public static final FLAG_SUPPORT_QUALCOMM_VIDEO:Z = false

.field public static final FLAG_SUPPORT_SUSPEND_RESUME:Z = false

.field public static final FLAG_SUPPORT_VIDEO_AUTO_BRIGHTNESS:Z = true

.field public static final FLAG_SUPPORT_VIDEO_TRIM:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/videoplayer/util/VideoFeatures;->FLAG_SUPPORT_GATE_MESSAGE:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
