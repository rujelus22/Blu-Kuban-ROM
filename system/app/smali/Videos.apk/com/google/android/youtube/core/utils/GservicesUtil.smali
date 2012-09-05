.class public Lcom/google/android/youtube/core/utils/GservicesUtil;
.super Ljava/lang/Object;
.source "GservicesUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static getDeviceTier(Landroid/content/ContentResolver;)I
    .registers 3
    .parameter "cr"

    .prologue
    .line 37
    const-string v0, "youtube:device_lowend"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
