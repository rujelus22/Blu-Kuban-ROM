.class public Lcom/syncmldstmo/cust/smlPhoneStatus;
.super Landroid/telephony/PhoneStateListener;
.source "smlPhoneStatus.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# static fields
.field public static g_IsCallUsedStatus:Z

.field public static g_IsContactInitialized:Z

.field public static g_UsedNetwork:Z

.field public static g_UsedRomaing:Z

.field public static g_UsedRomaingUI:Z

.field public static serviceState:Landroid/telephony/ServiceState;

.field public static telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-boolean v0, Lcom/syncmldstmo/cust/smlPhoneStatus;->g_IsContactInitialized:Z

    .line 23
    sput-boolean v0, Lcom/syncmldstmo/cust/smlPhoneStatus;->g_IsCallUsedStatus:Z

    .line 24
    sput-boolean v0, Lcom/syncmldstmo/cust/smlPhoneStatus;->g_UsedNetwork:Z

    .line 25
    sput-boolean v0, Lcom/syncmldstmo/cust/smlPhoneStatus;->g_UsedRomaing:Z

    .line 26
    sput-boolean v0, Lcom/syncmldstmo/cust/smlPhoneStatus;->g_UsedRomaingUI:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method public static smlGetNetworkState()Z
    .registers 1

    .prologue
    .line 127
    sget-boolean v0, Lcom/syncmldstmo/cust/smlPhoneStatus;->g_UsedNetwork:Z

    return v0
.end method

.method public static smlGetRoamingUI()Z
    .registers 1

    .prologue
    .line 147
    sget-boolean v0, Lcom/syncmldstmo/cust/smlPhoneStatus;->g_UsedRomaingUI:Z

    return v0
.end method

.method public static smlGetRomingState()Z
    .registers 1

    .prologue
    .line 137
    sget-boolean v0, Lcom/syncmldstmo/cust/smlPhoneStatus;->g_UsedRomaing:Z

    return v0
.end method

.method public static smlIsRoamingChecked()Z
    .registers 3

    .prologue
    .line 186
    invoke-static {}, Lcom/syncmldstmo/DSService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, roaming:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "roaming checked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 188
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 189
    const/4 v1, 0x1

    .line 191
    :goto_2d
    return v1

    :cond_2e
    const/4 v1, 0x0

    goto :goto_2d
.end method

.method public static smlIsWiFiConnect(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    const/16 v3, 0x40

    .line 152
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 154
    .local v1, wManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 155
    .local v0, wInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 157
    const-string v2, "WiFi Conntected"

    invoke-static {v3, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 158
    const/4 v2, 0x1

    .line 163
    :goto_20
    return v2

    .line 162
    :cond_21
    const-string v2, "WiFi DisConnected"

    invoke-static {v3, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 163
    const/4 v2, 0x0

    goto :goto_20
.end method

.method public static smlSetCallStatus(I)V
    .registers 3
    .parameter "nState"

    .prologue
    const/4 v1, 0x1

    .line 95
    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    .line 96
    sput-boolean v1, Lcom/syncmldstmo/cust/smlPhoneStatus;->g_IsCallUsedStatus:Z

    .line 101
    :goto_6
    return-void

    .line 97
    :cond_7
    if-ne p0, v1, :cond_c

    .line 98
    sput-boolean v1, Lcom/syncmldstmo/cust/smlPhoneStatus;->g_IsCallUsedStatus:Z

    goto :goto_6

    .line 100
    :cond_c
    const/4 v0, 0x0

    sput-boolean v0, Lcom/syncmldstmo/cust/smlPhoneStatus;->g_IsCallUsedStatus:Z

    goto :goto_6
.end method

.method public static smlSetContactInitializing(Z)V
    .registers 4
    .parameter "initvalue"

    .prologue
    .line 169
    sput-boolean p0, Lcom/syncmldstmo/cust/smlPhoneStatus;->g_IsContactInitialized:Z

    .line 170
    const/16 v0, 0x40

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "g_IsContactInitialized : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/syncmldstmo/cust/smlPhoneStatus;->g_IsContactInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 171
    return-void
.end method

.method public static smlSetNetworkState(I)V
    .registers 3
    .parameter "nState"

    .prologue
    .line 110
    if-nez p0, :cond_18

    .line 112
    const/4 v0, 0x0

    sput-boolean v0, Lcom/syncmldstmo/cust/smlPhoneStatus;->g_UsedNetwork:Z

    .line 113
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->inSyncMode()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 115
    const/16 v0, 0x40

    const-string v1, "Network not available"

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 116
    sget-object v0, Lcom/syncmldstmo/DSService;->_task:Lcom/syncmldstmo/base/smlTask;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlTask;->smltpInterruptNetwork()I

    .line 123
    :cond_17
    :goto_17
    return-void

    .line 121
    :cond_18
    const/4 v0, 0x1

    sput-boolean v0, Lcom/syncmldstmo/cust/smlPhoneStatus;->g_UsedNetwork:Z

    goto :goto_17
.end method

.method public static smlSetRoamingUI(Z)V
    .registers 1
    .parameter "roamingui"

    .prologue
    .line 142
    sput-boolean p0, Lcom/syncmldstmo/cust/smlPhoneStatus;->g_UsedRomaingUI:Z

    .line 143
    return-void
.end method

.method public static smlSetRomingState(Z)V
    .registers 1
    .parameter "nState"

    .prologue
    .line 132
    sput-boolean p0, Lcom/syncmldstmo/cust/smlPhoneStatus;->g_UsedRomaing:Z

    .line 133
    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 4
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 31
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 36
    sget-object v0, Lcom/syncmldstmo/cust/smlPhoneStatus;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_d

    .line 38
    const-string v0, "onCallStateChanged telephonyManager is null"

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 54
    :goto_c
    return-void

    .line 53
    :cond_d
    invoke-static {p1}, Lcom/syncmldstmo/cust/smlPhoneStatus;->smlSetCallStatus(I)V

    goto :goto_c
.end method

.method public onDataConnectionStateChanged(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(I)V

    .line 86
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 6
    .parameter "state"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, nNetwork:I
    const/4 v0, 0x0

    .line 63
    .local v0, bRoming:Z
    sput-object p1, Lcom/syncmldstmo/cust/smlPhoneStatus;->serviceState:Landroid/telephony/ServiceState;

    .line 65
    sget-object v2, Lcom/syncmldstmo/cust/smlPhoneStatus;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_11

    .line 67
    const-string v2, "onServiceStateChanged telephonyManager is null"

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 80
    :goto_10
    return-void

    .line 71
    :cond_11
    sget-object v2, Lcom/syncmldstmo/cust/smlPhoneStatus;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 72
    sget-object v2, Lcom/syncmldstmo/cust/smlPhoneStatus;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 73
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-nez v2, :cond_4f

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceStateChanged nNetwork ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceStateChanged bRoming ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 78
    :cond_4f
    invoke-static {v1}, Lcom/syncmldstmo/cust/smlPhoneStatus;->smlSetNetworkState(I)V

    .line 79
    invoke-static {v0}, Lcom/syncmldstmo/cust/smlPhoneStatus;->smlSetRomingState(Z)V

    goto :goto_10
.end method
