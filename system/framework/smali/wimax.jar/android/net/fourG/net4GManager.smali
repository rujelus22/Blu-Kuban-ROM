.class public abstract Landroid/net/fourG/net4GManager;
.super Ljava/lang/Object;
.source "net4GManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/fourG/net4GManager$RadioInfoTemperature;,
        Landroid/net/fourG/net4GManager$ConnectionStatistics;,
        Landroid/net/fourG/net4GManager$Lock;
    }
.end annotation


# static fields
.field public static final CINR_CHANGED_ACTION:Ljava/lang/String; = "android.net.CINR_CHANGED"

.field public static final ERROR_ALREADY_CONNECTED:I = 0x5

.field public static final ERROR_AUTHENTICATING:I = 0x1

.field public static final ERROR_DEVICE_NOT_PROVISIONED:I = 0x8

.field public static final ERROR_DEVICE_PROVISIONING_DATA_ERROR:I = 0x9

.field public static final ERROR_INVALID_DEVICE_PROFILE:I = 0xa

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NO_COVERAGE_AVAILABLE:I = 0x6

.field public static final ERROR_OPERATION_ALREADY_IN_PROGRESS:I = 0xb

.field public static final ERROR_OTHER:I = 0x64

.field public static final ERROR_RADIO_OFF:I = 0xd

.field public static final ERROR_RADIO_POLICY_VIOLATION:I = 0xc

.field public static final ERROR_ROAMING_NOT_ALLOWED:I = 0x7

.field public static final ERROR_SCAN_NOT_ALLOWED_NOW_MS_DATA_XFER_IMPACTS:I = 0x2

.field public static final ERROR_SCAN_NOT_ALLOWED_NOW_NETWORK_IMPACTS:I = 0x3

.field public static final ERROR_SCAN_NOT_ALLOWED_NOW_NETWORK_MGMT_PROHIBITED:I = 0x4

.field public static final EXTRA_4G_CURRENT_SERVING_BS:Ljava/lang/String; = "4G_current_serving_bs"

.field public static final EXTRA_4G_INFO:Ljava/lang/String; = "fourG_info"

.field public static final EXTRA_4G_PREVIOUS_SERVING_BS:Ljava/lang/String; = "4G_previous_serving_bs"

.field public static final EXTRA_4G_PREVIOUS_STATE:Ljava/lang/String; = "4G_previous_state"

.field public static final EXTRA_4G_STATE:Ljava/lang/String; = "4g_state"

.field public static final EXTRA_CURRENT_RADIO_TEMPERATURE:Ljava/lang/String; = "radio_temperature"

.field public static final EXTRA_HANDOVER_FAILURE_REASON:Ljava/lang/String; = "handover_failure_reason"

.field public static final EXTRA_LINK_STATE_DETAIL:Ljava/lang/String; = "link_state_detail"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "network_info"

.field public static final EXTRA_NEW_CINR:Ljava/lang/String; = "newCINR"

.field public static final EXTRA_NEW_RSSI:Ljava/lang/String; = "newRSSI"

.field public static final EXTRA_NEW_STATE:Ljava/lang/String; = "newState"

.field public static final EXTRA_PREVIOUS_4G_STATE:Ljava/lang/String; = "previousState"

.field public static final EXTRA_SCAN_RESULT_BS_LIST:Ljava/lang/String; = "bs_scan_result"

.field public static final EXTRA_SUPPLICANT_ERROR:Ljava/lang/String; = "supplicantError"

.field public static final EXTRA_SUPPLICANT_STATE:Ljava/lang/String; = "4g_supplicant_state"

.field public static final EXTRA_WIMAX_STATE:Ljava/lang/String; = "WimaxState"

.field public static final EXTRA_WIMAX_STATE_DETAILED:Ljava/lang/String; = "WimaxStateDetail"

.field public static final EXTRA_WIMAX_STATE_INT:Ljava/lang/String; = "WimaxStateInt"

.field public static final LINK_STATE_DETAIL_CHANGED_ACTION:Ljava/lang/String; = "android.net.LINK_STATE_DETAIL_CHANGED"

.field public static final LOGLEVEL_DEBUG:I = 0x4

.field public static final LOGLEVEL_ERROR:I = 0x2

.field public static final LOGLEVEL_FATAL:I = 0x1

.field public static final LOGLEVEL_WARNING:I = 0x3

.field protected static final MAX_ACTIVE_LOCKS:I = 0x32

.field public static final NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.fourG.wimax.NETWORK_STATE_CHANGED"

.field public static final NET_4G_HANDOVER_COMPLETE_ACTION:Ljava/lang/String; = "android.net.NET_4G_HANDOVER_COMPLETE"

.field public static final NET_4G_HANDOVER_FAILED_ACTION:Ljava/lang/String; = "android.net.NET_4G_HANDOVER_FAILED"

.field public static final NET_4G_RADIO_OVERHEAT_ACTION:Ljava/lang/String; = "android.net.RADIO_OVERHEAT"

.field public static final NET_4G_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.fourG.NET_4G_STATE_CHANGED"

.field public static final NET_4G_STATE_DISABLED:I = 0x1

.field public static final NET_4G_STATE_DISABLING:I = 0x0

.field public static final NET_4G_STATE_ENABLED:I = 0x3

.field public static final NET_4G_STATE_ENABLING:I = 0x2

.field public static final NET_4G_STATE_UNKNOWN:I = 0x4

.field public static final RSSI_CHANGED_ACTION:Ljava/lang/String; = "android.net.RSSI_CHANGED"

.field public static final SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.SCAN_RESULTS_AVAILABLE"

.field public static final SUPPLICANT_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.fourG.NET_4G_SUPPLICANT_STATE_CHANGED"

.field public static final WIMAX_MODE_FULL:I = 0x1

.field public static final WIMAX_MODE_SCAN_ONLY:I = 0x2

.field public static final WIMAX_NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"


# instance fields
.field protected mActiveLockCount:I

.field protected nlastError:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 359
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/fourG/net4GManager;->nlastError:I

    .line 360
    return-void
.end method

.method public constructor <init>(Landroid/net/fourG/INet4GManager;Landroid/os/Handler;)V
    .registers 4
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 356
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/fourG/net4GManager;->nlastError:I

    .line 357
    return-void
.end method

.method public static calculateSignalLevel(II)I
    .registers 3
    .parameter "rssi"
    .parameter "numLevels"

    .prologue
    .line 491
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/net/fourG/net4GManager;->calculateSignalLevel(III)I

    move-result v0

    return v0
.end method

.method public static calculateSignalLevel(III)I
    .registers 4
    .parameter "rssi"
    .parameter "cinr"
    .parameter "numLevels"

    .prologue
    .line 508
    const/4 v0, 0x0

    return v0
.end method

.method public static compareSignalLevel(II)I
    .registers 3
    .parameter "rssiA"
    .parameter "rssiB"

    .prologue
    .line 521
    sub-int v0, p0, p1

    return v0
.end method

.method public static compareSignalLevel_Cinr(II)I
    .registers 3
    .parameter "cinrA"
    .parameter "cinrB"

    .prologue
    .line 534
    sub-int v0, p0, p1

    return v0
.end method


# virtual methods
.method public createConnectionStatistics()Landroid/net/fourG/net4GManager$ConnectionStatistics;
    .registers 2

    .prologue
    .line 395
    const/4 v0, 0x0

    return-object v0
.end method

.method public createLock(ILjava/lang/String;)Landroid/net/fourG/net4GManager$Lock;
    .registers 4
    .parameter "lockType"
    .parameter "tag"

    .prologue
    .line 643
    const/4 v0, 0x0

    return-object v0
.end method

.method public createLock(Ljava/lang/String;)Landroid/net/fourG/net4GManager$Lock;
    .registers 3
    .parameter "tag"

    .prologue
    .line 659
    const/4 v0, 0x0

    return-object v0
.end method

.method public disconnect()Z
    .registers 2

    .prologue
    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method public get4GState()I
    .registers 2

    .prologue
    .line 468
    const/4 v0, 0x4

    return v0
.end method

.method public abstract getConnectionInfo()Landroid/net/fourG/net4GInfo;
.end method

.method public getDeviceInformation()Landroid/net/fourG/net4GDeviceInfo;
    .registers 2

    .prologue
    .line 402
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 2

    .prologue
    .line 411
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastError()I
    .registers 2

    .prologue
    .line 421
    iget v0, p0, Landroid/net/fourG/net4GManager;->nlastError:I

    return v0
.end method

.method public getRadioInfoTemperature()Landroid/net/fourG/net4GManager$RadioInfoTemperature;
    .registers 2

    .prologue
    .line 440
    const/4 v0, 0x0

    return-object v0
.end method

.method public is4GEnabled()Z
    .registers 3

    .prologue
    .line 477
    invoke-virtual {p0}, Landroid/net/fourG/net4GManager;->get4GState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isRoamingEnabled()Z
    .registers 2

    .prologue
    .line 436
    const/4 v0, 0x0

    return v0
.end method

.method public reassociate()Z
    .registers 2

    .prologue
    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public reconnect()Z
    .registers 2

    .prologue
    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public set4GEnabled(Z)Z
    .registers 3
    .parameter "enabled"

    .prologue
    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method public setLastError(I)I
    .registers 2
    .parameter "error"

    .prologue
    .line 428
    iput p1, p0, Landroid/net/fourG/net4GManager;->nlastError:I

    return p1
.end method

.method public setRoamingEnabled(Z)Z
    .registers 3
    .parameter "enabled"

    .prologue
    .line 432
    const/4 v0, 0x0

    return v0
.end method
