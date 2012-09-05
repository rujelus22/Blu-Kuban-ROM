.class public Lcom/sec/android/socialhub/util/WifiUtil;
.super Ljava/lang/Object;
.source "WifiUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getImeiInfo(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 44
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 45
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, device:Ljava/lang/String;
    return-object v0
.end method

.method public static isWifiModel(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 18
    invoke-static {p0}, Lcom/sec/android/socialhub/util/WifiUtil;->getImeiInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 20
    const/4 v0, 0x1

    .line 23
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
