.class public Landroid/net/fourG/wimax/Wimax4GManager;
.super Landroid/net/fourG/net4GManager;
.source "Wimax4GManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/fourG/wimax/Wimax4GManager$1;,
        Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;,
        Landroid/net/fourG/wimax/Wimax4GManager$Lock;,
        Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;,
        Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;
    }
.end annotation


# static fields
.field public static final EXTRA_4G_CURRENT_SERVING_BS:Ljava/lang/String; = "newBSID"

.field public static final EXTRA_DATA:Ljava/lang/String; = "android.net.wimax.EXTRA_DATA"

.field public static final EXTRA_LINK_CAPABILITIES:Ljava/lang/String; = "linkCapabilities"

.field public static final EXTRA_LINK_PROPERTIES:Ljava/lang/String; = "linkProperties"

.field public static final EXTRA_MODE:Ljava/lang/String; = "usbMode"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_NEW_FREQUENCY:Ljava/lang/String; = "newFrequency"

.field public static final EXTRA_NEW_SIGNAL_LEVEL:Ljava/lang/String; = "newSignalLevel"

.field public static final EXTRA_NEW_TIME:Ljava/lang/String; = "newTime"

.field public static final EXTRA_THROUGHPUT:Ljava/lang/String; = "android.net.wimax.EXTRA_THROUGHPUT"

.field public static final EXTRA_TIME:Ljava/lang/String; = "android.net.wimax.EXTRA_TIME"

.field public static final EXTRA_WIMAX_AUTH_ERROR:Ljava/lang/String; = "auth_error"

.field public static final EXTRA_WIMAX_DHCP_TIME:Ljava/lang/String; = "newDHCPTime"

.field public static final EXTRA_WIMAX_MRU_LIST:Ljava/lang/String; = "MruList"

.field public static final EXTRA_WIMAX_MRU_UPDATE_ERRORVALUE:Ljava/lang/String; = "ErrorValue"

.field public static final EXTRA_WIMAX_MRU_UPDATE_SUBTYPE:Ljava/lang/String; = "subType"

.field public static final EXTRA_WIMAX_OMADM_RESP_DATA:Ljava/lang/String; = "WimaxOMADMRespData"

.field public static final EXTRA_WIMAX_OMADM_RESP_STATE:Ljava/lang/String; = "WimaxOMADMRespState"

.field public static final EXTRA_WIMAX_RADIO_INFO:Ljava/lang/String; = "WimaxRadioInfo"

.field public static final EXTRA_WIMAX_WORK_MODE:Ljava/lang/String; = "WimaxWorkMode"

.field public static final FREQUENCY_CHANGED_ACTION:Ljava/lang/String; = "android.net.wimax.FREQUENCY_CHANGED"

.field public static final MODE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wimax.MODE_CHANGED"

.field public static final NETWORK_IP_CHANGED_ACTION:Ljava/lang/String; = "android.net.wimax.NETWORK_IP_CHANGED"

.field public static final NETWORK_PRIVATE:I = 0x1

.field public static final NETWORK_SPRINT:I = 0x0

.field public static final NET_4G_HANDOVER_COMPLETE_ACTION:Ljava/lang/String; = "android.net.wimax.NET_4G_HANDOVER_COMPLETE_ACTION"

.field public static final SIGNAL_LEVEL_CHANGED_ACTION:Ljava/lang/String; = "android.net.wimax.SIGNAL_LEVEL_CHANGED"

.field private static final TAG:Ljava/lang/String; = "Wimax4GManager"

.field public static final TIME_CHANGED_ACTION:Ljava/lang/String; = "android.net.wimax.TIME_CHANGED"

.field public static final WIMAX_AUTH_ERROR:Ljava/lang/String; = "android.net.wimax.WIMAX_AUTH_ERROR"

.field public static final WIMAX_DATA_THROUGHPUT_ACTION:Ljava/lang/String; = "android.net.wimax.WIMAX_DATA_THROUGHPUT"

.field public static final WIMAX_DHCP_TIME_ACTION:Ljava/lang/String; = "android.net.wimax.WIMAX_DHCP_TIME"

.field public static final WIMAX_FACTORY_DEFAULT_ALL:I = 0x2

.field public static final WIMAX_FACTORY_DEFAULT_GDB:I = 0x0

.field public static final WIMAX_FACTORY_DEFAULT_ODB:I = 0x1

.field public static final WIMAX_MODE_BACKHAUL:I = 0x2

.field public static final WIMAX_MODE_DM_BACKHAUL:I = 0x4

.field public static final WIMAX_MODE_DM_NORMAL:I = 0x3

.field public static final WIMAX_MODE_NORMAL:I = 0x0

.field public static final WIMAX_MODE_TETHERED:I = 0x1

.field public static final WIMAX_RESPONSE_ACTION:Ljava/lang/String; = "android.net.wimax.WIMAX_RESPONSE"

.field public static final WIMAX_SERVICE:Ljava/lang/String; = "WiMax"

.field public static final WIMAX_WORK_MODE_ACTION:Ljava/lang/String; = "android.net.wimax.WIMAX_WORK_MODE"

.field public static final WORK_MODE_STATE_0:I = 0x0

.field public static final WORK_MODE_STATE_1:I = 0x1

.field public static final WORK_MODE_STATE_2:I = 0x2

.field public static final WORK_MODE_STATE_3:I = 0x3

.field protected static instance:Landroid/net/fourG/wimax/Wimax4GManager;

.field protected static mHandler:Landroid/os/Handler;

.field protected static mService:Landroid/net/fourG/wimax/IWimax4GManager;

.field public static m_bLog:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 229
    invoke-direct {p0}, Landroid/net/fourG/net4GManager;-><init>()V

    .line 230
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    if-nez v1, :cond_13

    .line 232
    const-string v1, "WiMax"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 233
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/fourG/wimax/IWimax4GManager;

    move-result-object v1

    sput-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    .line 235
    .end local v0           #b:Landroid/os/IBinder;
    :cond_13
    return-void
.end method

.method public constructor <init>(Landroid/net/fourG/wimax/IWimax4GManager;Landroid/os/Handler;)V
    .registers 3
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 257
    invoke-direct {p0}, Landroid/net/fourG/net4GManager;-><init>()V

    .line 258
    sput-object p1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    .line 259
    sput-object p2, Landroid/net/fourG/wimax/Wimax4GManager;->mHandler:Landroid/os/Handler;

    .line 260
    sput-object p0, Landroid/net/fourG/wimax/Wimax4GManager;->instance:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 261
    return-void
.end method

.method static synthetic access$000(Landroid/net/fourG/wimax/Wimax4GManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Landroid/net/fourG/net4GManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$108(Landroid/net/fourG/wimax/Wimax4GManager;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Landroid/net/fourG/net4GManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/fourG/net4GManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$210(Landroid/net/fourG/wimax/Wimax4GManager;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Landroid/net/fourG/net4GManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/net/fourG/net4GManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$310(Landroid/net/fourG/wimax/Wimax4GManager;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Landroid/net/fourG/net4GManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/net/fourG/net4GManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$600(Landroid/net/fourG/wimax/Wimax4GManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Landroid/net/fourG/net4GManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$708(Landroid/net/fourG/wimax/Wimax4GManager;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Landroid/net/fourG/net4GManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/fourG/net4GManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$810(Landroid/net/fourG/wimax/Wimax4GManager;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Landroid/net/fourG/net4GManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/net/fourG/net4GManager;->mActiveLockCount:I

    return v0
.end method

.method public static calculateSignalLevel(II)I
    .registers 3
    .parameter "rssi"
    .parameter "numLevels"

    .prologue
    .line 555
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/net/fourG/wimax/Wimax4GManager;->calculateSignalLevel(III)I

    move-result v0

    return v0
.end method

.method public static calculateSignalLevel(III)I
    .registers 5
    .parameter "nRSSI"
    .parameter "nCINR"
    .parameter "numLevels"

    .prologue
    .line 567
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1, p0, p1, p2}, Landroid/net/fourG/wimax/IWimax4GManager;->calculateSignalLevel(III)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 569
    :goto_6
    return v1

    .line 568
    :catch_7
    move-exception v0

    .line 569
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public static declared-synchronized getInstance()Landroid/net/fourG/wimax/Wimax4GManager;
    .registers 2

    .prologue
    .line 238
    const-class v1, Landroid/net/fourG/wimax/Wimax4GManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->instance:Landroid/net/fourG/wimax/Wimax4GManager;

    if-nez v0, :cond_e

    .line 240
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-direct {v0}, Landroid/net/fourG/wimax/Wimax4GManager;-><init>()V

    sput-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->instance:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 244
    :cond_e
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->instance:Landroid/net/fourG/wimax/Wimax4GManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 238
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public OdbAddReq([B)I
    .registers 4
    .parameter "tlvDataArray"

    .prologue
    .line 700
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1, p1}, Landroid/net/fourG/wimax/IWimax4GManager;->OdbAddReq([B)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 702
    :goto_6
    return v1

    .line 701
    :catch_7
    move-exception v0

    .line 702
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public OdbDeleteReq([B)I
    .registers 4
    .parameter "tlvDataArray"

    .prologue
    .line 708
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1, p1}, Landroid/net/fourG/wimax/IWimax4GManager;->OdbDeleteReq([B)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 710
    :goto_6
    return v1

    .line 709
    :catch_7
    move-exception v0

    .line 710
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public OdbReadReq([B)I
    .registers 4
    .parameter "tlvDataArray"

    .prologue
    .line 676
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1, p1}, Landroid/net/fourG/wimax/IWimax4GManager;->OdbReadReq([B)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 678
    :goto_6
    return v1

    .line 677
    :catch_7
    move-exception v0

    .line 678
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public OdbUpdateReq()I
    .registers 3

    .prologue
    .line 692
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->OdbUpdateReq()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 694
    :goto_6
    return v1

    .line 693
    :catch_7
    move-exception v0

    .line 694
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public OdbWriteReq([B)I
    .registers 4
    .parameter "tlvDataArray"

    .prologue
    .line 684
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1, p1}, Landroid/net/fourG/wimax/IWimax4GManager;->OdbWriteReq([B)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 686
    :goto_6
    return v1

    .line 685
    :catch_7
    move-exception v0

    .line 686
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public calWiMAXThroughput(Z)V
    .registers 4
    .parameter "bstart"

    .prologue
    .line 575
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1, p1}, Landroid/net/fourG/wimax/IWimax4GManager;->calWiMAXThroughput(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 579
    :goto_5
    return-void

    .line 576
    :catch_6
    move-exception v0

    .line 577
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public checkUSBstate()Z
    .registers 3

    .prologue
    .line 652
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->checkUSBstate()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 654
    :goto_6
    return v1

    .line 653
    :catch_7
    move-exception v0

    .line 654
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .parameter "homeNspName"
    .parameter "roamingNspName"
    .parameter "userName"
    .parameter "passWord"

    .prologue
    const/4 v1, -0x1

    .line 582
    const-string v2, ""

    if-eq p2, v2, :cond_6

    .line 589
    :goto_5
    return v1

    .line 587
    :cond_6
    :try_start_6
    sget-object v2, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/net/fourG/wimax/IWimax4GManager;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 588
    :catch_d
    move-exception v0

    .line 589
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public connectDefaultNetwork()I
    .registers 5

    .prologue
    const/4 v1, 0x5

    .line 268
    invoke-virtual {p0}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v0

    .line 269
    .local v0, nWimaxEnabledState:I
    const/4 v2, 0x3

    if-eq v0, v2, :cond_b

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1a

    .line 270
    :cond_b
    sget-boolean v2, Landroid/net/fourG/wimax/Wimax4GManager;->m_bLog:Z

    if-eqz v2, :cond_16

    const-string v2, "Wimax4GManager"

    const-string v3, "[connectDefaultNetwork] already enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_16
    invoke-virtual {p0, v1}, Landroid/net/fourG/wimax/Wimax4GManager;->setLastError(I)I

    .line 275
    :goto_19
    return v1

    .line 274
    :cond_1a
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    .line 275
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public createConnectionStatistics()Landroid/net/fourG/net4GManager$ConnectionStatistics;
    .registers 3

    .prologue
    .line 335
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->createConnectionStatistics()Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 337
    :goto_6
    return-object v1

    .line 336
    :catch_7
    move-exception v0

    .line 337
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public bridge synthetic createLock(ILjava/lang/String;)Landroid/net/fourG/net4GManager$Lock;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Landroid/net/fourG/wimax/Wimax4GManager;->createLock(ILjava/lang/String;)Landroid/net/fourG/wimax/Wimax4GManager$Lock;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createLock(Ljava/lang/String;)Landroid/net/fourG/net4GManager$Lock;
    .registers 3
    .parameter "x0"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Landroid/net/fourG/wimax/Wimax4GManager;->createLock(Ljava/lang/String;)Landroid/net/fourG/wimax/Wimax4GManager$Lock;

    move-result-object v0

    return-object v0
.end method

.method public createLock(ILjava/lang/String;)Landroid/net/fourG/wimax/Wimax4GManager$Lock;
    .registers 5
    .parameter "lockType"
    .parameter "tag"

    .prologue
    .line 1230
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GManager$Lock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/net/fourG/wimax/Wimax4GManager$Lock;-><init>(Landroid/net/fourG/wimax/Wimax4GManager;ILjava/lang/String;Landroid/net/fourG/wimax/Wimax4GManager$1;)V

    return-object v0
.end method

.method public createLock(Ljava/lang/String;)Landroid/net/fourG/wimax/Wimax4GManager$Lock;
    .registers 5
    .parameter "tag"

    .prologue
    .line 1246
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GManager$Lock;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Landroid/net/fourG/wimax/Wimax4GManager$Lock;-><init>(Landroid/net/fourG/wimax/Wimax4GManager;ILjava/lang/String;Landroid/net/fourG/wimax/Wimax4GManager$1;)V

    return-object v0
.end method

.method public createMulticastLock(Ljava/lang/String;)Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;
    .registers 4
    .parameter "tag"

    .prologue
    .line 1263
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;-><init>(Landroid/net/fourG/wimax/Wimax4GManager;Ljava/lang/String;Landroid/net/fourG/wimax/Wimax4GManager$1;)V

    return-object v0
.end method

.method public deleteStaticIP()I
    .registers 3

    .prologue
    .line 746
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->deleteStaticIP()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 748
    :goto_6
    return v1

    .line 747
    :catch_7
    move-exception v0

    .line 748
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public disconnect()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 287
    invoke-virtual {p0}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v1

    .line 288
    .local v1, nWimaxEnabledState:I
    const/4 v3, 0x3

    if-eq v1, v3, :cond_b

    const/4 v3, 0x2

    if-ne v1, v3, :cond_11

    .line 290
    :cond_b
    :try_start_b
    sget-object v3, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v3}, Landroid/net/fourG/wimax/IWimax4GManager;->disconnect()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    move-result v2

    .line 295
    :cond_11
    :goto_11
    return v2

    .line 291
    :catch_12
    move-exception v0

    .line 292
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_11
.end method

.method public enableLog(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 1426
    sput-boolean p1, Landroid/net/fourG/wimax/Wimax4GManager;->m_bLog:Z

    .line 1427
    return-void
.end method

.method public enableLogLevel(I)V
    .registers 3
    .parameter "nLoglevel"

    .prologue
    .line 549
    :try_start_0
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v0, p1}, Landroid/net/fourG/wimax/IWimax4GManager;->enableLogLevel(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 552
    :goto_5
    return-void

    .line 550
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public get4GState()I
    .registers 3

    .prologue
    .line 507
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->get4GState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 509
    :goto_6
    return v1

    .line 508
    :catch_7
    move-exception v0

    .line 509
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x4

    goto :goto_6
.end method

.method public getAvailableNetworks()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/fourG/wimax/Wimax4GConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 541
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->getAvailableNetworks()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 543
    :goto_6
    return-object v1

    .line 542
    :catch_7
    move-exception v0

    .line 543
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getConnectedNSP()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;
    .registers 3

    .prologue
    .line 660
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->getConnectedNSP()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 662
    :goto_6
    return-object v1

    .line 661
    :catch_7
    move-exception v0

    .line 662
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public bridge synthetic getConnectionInfo()Landroid/net/fourG/net4GInfo;
    .registers 2

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/net/fourG/wimax/Wimax4GManager;->getConnectionInfo()Landroid/net/fourG/wimax/Wimax4GInfo;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionInfo()Landroid/net/fourG/wimax/Wimax4GInfo;
    .registers 3

    .prologue
    .line 326
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->getConnectionInfo()Landroid/net/fourG/wimax/Wimax4GInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 328
    :goto_6
    return-object v1

    .line 327
    :catch_7
    move-exception v0

    .line 328
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public bridge synthetic getDeviceInformation()Landroid/net/fourG/net4GDeviceInfo;
    .registers 2

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/net/fourG/wimax/Wimax4GManager;->getDeviceInformation()Landroid/net/fourG/wimax/Wimax4GDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInformation()Landroid/net/fourG/wimax/Wimax4GDeviceInfo;
    .registers 3

    .prologue
    .line 347
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->getDeviceInformation()Landroid/net/fourG/wimax/Wimax4GDeviceInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 349
    :goto_6
    return-object v1

    .line 348
    :catch_7
    move-exception v0

    .line 349
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 3

    .prologue
    .line 360
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->getDhcpInfo()Landroid/net/DhcpInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 362
    :goto_6
    return-object v1

    .line 361
    :catch_7
    move-exception v0

    .line 362
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getMruList()V
    .registers 3

    .prologue
    .line 434
    sget-boolean v0, Landroid/net/fourG/wimax/Wimax4GManager;->m_bLog:Z

    if-eqz v0, :cond_b

    const-string v0, "getMruList"

    const-string v1, "getMruList entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_b
    :try_start_b
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v0}, Landroid/net/fourG/wimax/IWimax4GManager;->getMruList()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    .line 440
    :goto_10
    return-void

    .line 437
    :catch_11
    move-exception v0

    goto :goto_10
.end method

.method public getMruListRsp()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/fourG/wimax/MruList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 443
    sget-boolean v1, Landroid/net/fourG/wimax/Wimax4GManager;->m_bLog:Z

    if-eqz v1, :cond_b

    const-string v1, "getMruListRsp"

    const-string v2, "getMruListRsp entered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_b
    :try_start_b
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->getMruListRsp()Ljava/util/List;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    move-result-object v1

    .line 447
    :goto_11
    return-object v1

    .line 446
    :catch_12
    move-exception v0

    .line 447
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public getMruUpdate(Ljava/util/List;I)Z
    .registers 15
    .parameter
    .parameter "nSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/fourG/wimax/MruList;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/fourG/wimax/MruList;>;"
    const/4 v8, 0x0

    .line 452
    sget-boolean v9, Landroid/net/fourG/wimax/Wimax4GManager;->m_bLog:Z

    if-eqz v9, :cond_1d

    const-string v9, "getMruUpdate"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getMruUpdate nSize : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_1d
    if-nez p2, :cond_28

    .line 455
    :try_start_1f
    sget-object v9, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    const-string v10, ""

    invoke-interface {v9, v10, p2}, Landroid/net/fourG/wimax/IWimax4GManager;->getMruUpdate(Ljava/lang/String;I)Z

    move-result v8

    .line 479
    :cond_27
    :goto_27
    return v8

    .line 457
    :cond_28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 458
    .local v5, nListSize:I
    if-ne p2, v5, :cond_27

    .line 462
    const-string v6, ""

    .line 464
    .local v6, strUpdate:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_31
    if-ge v3, p2, :cond_b5

    .line 465
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/fourG/wimax/MruList;

    .line 467
    .local v7, temp:Landroid/net/fourG/wimax/MruList;
    invoke-virtual {v7}, Landroid/net/fourG/wimax/MruList;->getCenterfrequency()I

    move-result v4

    .line 468
    .local v4, nCF:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 469
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 470
    invoke-virtual {v7}, Landroid/net/fourG/wimax/MruList;->getBW()B

    move-result v0

    .line 471
    .local v0, bw:B
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 472
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 473
    invoke-virtual {v7}, Landroid/net/fourG/wimax/MruList;->getFFTSize()B

    move-result v2

    .line 474
    .local v2, fft:B
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 475
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#@"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 464
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_31

    .line 477
    .end local v0           #bw:B
    .end local v2           #fft:B
    .end local v4           #nCF:I
    .end local v7           #temp:Landroid/net/fourG/wimax/MruList;
    :cond_b5
    sget-object v9, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v9, v6, p2}, Landroid/net/fourG/wimax/IWimax4GManager;->getMruUpdate(Ljava/lang/String;I)Z
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_ba} :catch_bd

    move-result v8

    goto/16 :goto_27

    .line 478
    .end local v3           #i:I
    .end local v5           #nListSize:I
    .end local v6           #strUpdate:Ljava/lang/String;
    :catch_bd
    move-exception v1

    .line 479
    .local v1, e:Landroid/os/RemoteException;
    goto/16 :goto_27
.end method

.method public getNeighborList()V
    .registers 2

    .prologue
    .line 395
    :try_start_0
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v0}, Landroid/net/fourG/wimax/IWimax4GManager;->getNeighborList()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 399
    :goto_5
    return-void

    .line 396
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public getNetworkEntryCompleteTimes()[I
    .registers 3

    .prologue
    .line 387
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->getNetworkEntryCompleteTimes()[I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 389
    :goto_6
    return-object v1

    .line 388
    :catch_7
    move-exception v0

    .line 389
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getPersistedWimaxEnabled()Z
    .registers 3

    .prologue
    .line 492
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->getPersistedWimaxEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 494
    :goto_6
    return v1

    .line 493
    :catch_7
    move-exception v0

    .line 494
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getRadioInfo()V
    .registers 3

    .prologue
    .line 411
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->getRadioInfoTemperature()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 415
    :goto_5
    return-void

    .line 412
    :catch_6
    move-exception v0

    .line 413
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public getRadioInfoTemperature()Landroid/net/fourG/net4GManager$RadioInfoTemperature;
    .registers 3

    .prologue
    .line 403
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->getRadioInfoTemperatureResponse()Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 405
    :goto_6
    return-object v1

    .line 404
    :catch_7
    move-exception v0

    .line 405
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWimaxMode()I
    .registers 3

    .prologue
    .line 631
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->getWimaxMode()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 633
    :goto_6
    return v1

    .line 632
    :catch_7
    move-exception v0

    .line 633
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWimaxState()Landroid/net/fourG/wimax/WimaxState;
    .registers 3

    .prologue
    .line 525
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 527
    :goto_6
    return-object v1

    .line 526
    :catch_7
    move-exception v0

    .line 527
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->UNKNOWN:Landroid/net/fourG/wimax/WimaxState;

    goto :goto_6
.end method

.method public getWimaxStateDetail()I
    .registers 3

    .prologue
    .line 533
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->getWimaxStateDetail()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 535
    :goto_6
    return v1

    .line 534
    :catch_7
    move-exception v0

    .line 535
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getWorkModeState()I
    .registers 3

    .prologue
    .line 419
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->getWorkModeState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 421
    :goto_6
    return v1

    .line 420
    :catch_7
    move-exception v0

    .line 421
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public is4GEnabled()Z
    .registers 3

    .prologue
    .line 381
    invoke-virtual {p0}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

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

.method public isDataDisabledExternally()Z
    .registers 3

    .prologue
    .line 1431
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->isDataDisabledExternally()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1433
    :goto_6
    return v1

    .line 1432
    :catch_7
    move-exception v0

    .line 1433
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isRoamingEnabled()Z
    .registers 3

    .prologue
    .line 603
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->isRoamingEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 605
    :goto_6
    return v1

    .line 604
    :catch_7
    move-exception v0

    .line 605
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public makeOdbTlvData([BIIII[B)I
    .registers 15
    .parameter "pBuffer"
    .parameter "nBufferIndex"
    .parameter "wBufferLen"
    .parameter "wTag"
    .parameter "wLength"
    .parameter "pbValue"

    .prologue
    .line 668
    :try_start_0
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/net/fourG/wimax/IWimax4GManager;->makeOdbTlvData([BIIII[B)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v0

    .line 670
    :goto_c
    return v0

    .line 669
    :catch_d
    move-exception v7

    .line 670
    .local v7, e:Landroid/os/RemoteException;
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public readStaticIP(I)Ljava/lang/String;
    .registers 4
    .parameter "nIndex"

    .prologue
    .line 738
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1, p1}, Landroid/net/fourG/wimax/IWimax4GManager;->readStaticIP(I)Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 740
    :goto_6
    return-object v1

    .line 739
    :catch_7
    move-exception v0

    .line 740
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "error"

    goto :goto_6
.end method

.method public reassociate()Z
    .registers 3

    .prologue
    .line 301
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->reassociate()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 303
    :goto_6
    return v1

    .line 302
    :catch_7
    move-exception v0

    .line 303
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public reconnect()Z
    .registers 3

    .prologue
    .line 313
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->reconnect()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 315
    :goto_6
    return v1

    .line 314
    :catch_7
    move-exception v0

    .line 315
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public saveStaticIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 13
    .parameter "ip"
    .parameter "gateway"
    .parameter "netmask"
    .parameter "dns1"
    .parameter "dns2"

    .prologue
    .line 727
    :try_start_0
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/net/fourG/wimax/IWimax4GManager;->saveStaticIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    move-result v0

    .line 729
    :goto_b
    return v0

    .line 728
    :catch_c
    move-exception v6

    .line 729
    .local v6, e:Landroid/os/RemoteException;
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public set4GEnabled(Z)Z
    .registers 4
    .parameter "enabled"

    .prologue
    .line 374
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1, p1}, Landroid/net/fourG/wimax/IWimax4GManager;->set4GEnabled(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 376
    :goto_6
    return v1

    .line 375
    :catch_7
    move-exception v0

    .line 376
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setFactoryDefault(I)Z
    .registers 4
    .parameter "nType"

    .prologue
    .line 716
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1, p1}, Landroid/net/fourG/wimax/IWimax4GManager;->setFactoryDefault(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 718
    :goto_6
    return v1

    .line 717
    :catch_7
    move-exception v0

    .line 718
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setMruWorking(Z)V
    .registers 3
    .parameter "bWorking"

    .prologue
    .line 485
    :try_start_0
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v0, p1}, Landroid/net/fourG/wimax/IWimax4GManager;->setMruWorking(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 488
    :goto_5
    return-void

    .line 486
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setRoamingEnabled(Z)Z
    .registers 4
    .parameter "enabled"

    .prologue
    .line 595
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1, p1}, Landroid/net/fourG/wimax/IWimax4GManager;->setRoamingEnabled(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 597
    :goto_6
    return v1

    .line 596
    :catch_7
    move-exception v0

    .line 597
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWimax4GState(I)V
    .registers 3
    .parameter "nWimax4GState"

    .prologue
    .line 515
    :try_start_0
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v0, p1}, Landroid/net/fourG/wimax/IWimax4GManager;->setWimaxStatus(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 518
    :goto_5
    return-void

    .line 516
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setWimaxMode(IZ)I
    .registers 5
    .parameter "nMode"
    .parameter "enable"

    .prologue
    .line 644
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1, p1, p2}, Landroid/net/fourG/wimax/IWimax4GManager;->setWimaxMode(IZ)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 646
    :goto_6
    return v1

    .line 645
    :catch_7
    move-exception v0

    .line 646
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public setWorkModeState(I)Z
    .registers 4
    .parameter "workMode"

    .prologue
    .line 427
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1, p1}, Landroid/net/fourG/wimax/IWimax4GManager;->setWorkModeState(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 429
    :goto_6
    return v1

    .line 428
    :catch_7
    move-exception v0

    .line 429
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public startScan()Z
    .registers 2

    .prologue
    .line 613
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/fourG/wimax/Wimax4GManager;->startScan(Z)Z

    move-result v0

    return v0
.end method

.method public startScan(Z)Z
    .registers 4
    .parameter "bUserReq"

    .prologue
    .line 618
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1, p1}, Landroid/net/fourG/wimax/IWimax4GManager;->startScan(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 620
    :goto_6
    return v1

    .line 619
    :catch_7
    move-exception v0

    .line 620
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method
