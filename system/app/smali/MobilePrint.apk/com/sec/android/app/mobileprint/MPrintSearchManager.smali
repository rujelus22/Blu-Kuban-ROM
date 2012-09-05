.class public Lcom/sec/android/app/mobileprint/MPrintSearchManager;
.super Ljava/lang/Object;
.source "MPrintSearchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/mobileprint/MPrintSearchManager$1;,
        Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;,
        Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;,
        Lcom/sec/android/app/mobileprint/MPrintSearchManager$BindServiceThread;,
        Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;
    }
.end annotation


# static fields
.field private static final SAPS_DEVICE_MANAGER_SERVICE:Ljava/lang/String; = "com.sec.android.app.mobileprint.SAPS.DeviceManagerService"


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mCallback:Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;

.field private mCancelSearchFlag:Ljava/lang/Boolean;

.field private mGetAttrThread:Ljava/lang/Thread;

.field private mIsSAPSDiscoveryStarted:Z

.field private mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private mRetry:I

.field private mSAPSConnection:Landroid/content/ServiceConnection;

.field private mSAPSDeviceManagerService:Lcom/sec/print/mobileprint/dm/IDeviceManagerService;

.field private mSearchPrinterThread:Ljava/lang/Thread;

.field private mServiceBindThread:Ljava/lang/Thread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifi:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;)V
    .registers 6
    .parameter "appContext"
    .parameter "cb"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mAppContext:Landroid/content/Context;

    .line 49
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mCallback:Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;

    .line 50
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mWifi:Landroid/net/wifi/WifiManager;

    .line 51
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 52
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 54
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mCancelSearchFlag:Ljava/lang/Boolean;

    .line 55
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mServiceBindThread:Ljava/lang/Thread;

    .line 56
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSearchPrinterThread:Ljava/lang/Thread;

    .line 57
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mGetAttrThread:Ljava/lang/Thread;

    .line 59
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSAPSConnection:Landroid/content/ServiceConnection;

    .line 60
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSAPSDeviceManagerService:Lcom/sec/print/mobileprint/dm/IDeviceManagerService;

    .line 61
    iput-boolean v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mIsSAPSDiscoveryStarted:Z

    .line 62
    iput v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mRetry:I

    .line 75
    if-eqz p1, :cond_27

    if-nez p2, :cond_2f

    .line 76
    :cond_27
    const-string v0, "MobilePrint"

    const-string v1, "MPrintSearchManager : appContext or callback is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_2e
    return-void

    .line 80
    :cond_2f
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mAppContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mCallback:Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mAppContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mWifi:Landroid/net/wifi/WifiManager;

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mWifi:Landroid/net/wifi/WifiManager;

    const-string v1, "MobilePrint"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    .line 87
    new-instance v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$BindServiceThread;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/mobileprint/MPrintSearchManager$BindServiceThread;-><init>(Lcom/sec/android/app/mobileprint/MPrintSearchManager;Lcom/sec/android/app/mobileprint/MPrintSearchManager$1;)V

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mServiceBindThread:Ljava/lang/Thread;

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mServiceBindThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_2e
.end method

.method static synthetic access$100(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Landroid/content/ServiceConnection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSAPSConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->acqiureWakelock()V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/app/mobileprint/MPrintSearchManager;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSAPSConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->releaseWakelock()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mGetAttrThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/mobileprint/MPrintSearchManager;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mGetAttrThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Lcom/sec/print/mobileprint/dm/IDeviceManagerService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSAPSDeviceManagerService:Lcom/sec/print/mobileprint/dm/IDeviceManagerService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/mobileprint/MPrintSearchManager;Lcom/sec/print/mobileprint/dm/IDeviceManagerService;)Lcom/sec/print/mobileprint/dm/IDeviceManagerService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSAPSDeviceManagerService:Lcom/sec/print/mobileprint/dm/IDeviceManagerService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Landroid/net/wifi/WifiManager$MulticastLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mCancelSearchFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mRetry:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/mobileprint/MPrintSearchManager;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mRetry:I

    return p1
.end method

.method static synthetic access$608(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mRetry:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mRetry:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mIsSAPSDiscoveryStarted:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/mobileprint/MPrintSearchManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mIsSAPSDiscoveryStarted:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mCallback:Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSearchPrinterThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/mobileprint/MPrintSearchManager;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSearchPrinterThread:Ljava/lang/Thread;

    return-object p1
.end method

.method private declared-synchronized acqiureWakelock()V
    .registers 4

    .prologue
    .line 187
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_26

    .line 188
    const-string v1, "MobilePrint"

    const-string v2, "MPrintSearchManager : acqiureWakelock()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mAppContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 190
    .local v0, powerManager:Landroid/os/PowerManager;
    const v1, 0x20000006

    const-string v2, "MobilePrint"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 191
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    .line 193
    .end local v0           #powerManager:Landroid/os/PowerManager;
    :cond_26
    monitor-exit p0

    return-void

    .line 187
    :catchall_28
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized releaseWakelock()V
    .registers 3

    .prologue
    .line 196
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_14

    .line 197
    const-string v0, "MobilePrint"

    const-string v1, "MPrintSearchManager : releaseWakelock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 201
    :cond_14
    monitor-exit p0

    return-void

    .line 196
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public release()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 92
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mCancelSearchFlag:Ljava/lang/Boolean;

    .line 94
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSearchPrinterThread:Ljava/lang/Thread;

    if-eqz v1, :cond_11

    .line 96
    :try_start_c
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSearchPrinterThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_11} :catch_43

    .line 102
    :cond_11
    :goto_11
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSAPSDeviceManagerService:Lcom/sec/print/mobileprint/dm/IDeviceManagerService;

    if-eqz v1, :cond_28

    .line 103
    iget-boolean v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mIsSAPSDiscoveryStarted:Z

    if-eqz v1, :cond_21

    .line 105
    :try_start_19
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSAPSDeviceManagerService:Lcom/sec/print/mobileprint/dm/IDeviceManagerService;

    invoke-interface {v1}, Lcom/sec/print/mobileprint/dm/IDeviceManagerService;->stop()I

    .line 106
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mIsSAPSDiscoveryStarted:Z
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_21} :catch_48

    .line 111
    :cond_21
    :goto_21
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSAPSConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 115
    :cond_28
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v1, :cond_3b

    .line 116
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v1

    if-ne v1, v4, :cond_39

    .line 117
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 119
    :cond_39
    iput-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 122
    :cond_3b
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->releaseWakelock()V

    .line 124
    iput-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mAppContext:Landroid/content/Context;

    .line 125
    iput-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mCallback:Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;

    .line 126
    return-void

    .line 97
    :catch_43
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_11

    .line 107
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_48
    move-exception v0

    .line 108
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_21
.end method

.method public declared-synchronized requestCancelSearching()I
    .registers 2

    .prologue
    .line 145
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mCancelSearchFlag:Ljava/lang/Boolean;
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_b

    .line 146
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 145
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestGetAttr(Lcom/sec/android/app/mobileprint/MPrintPrinterItem;)I
    .registers 4
    .parameter "printer"

    .prologue
    .line 150
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mAppContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mCallback:Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;

    if-nez v0, :cond_13

    .line 151
    :cond_9
    const-string v0, "MobilePrint"

    const-string v1, "MPrintSearchManager : requestGetAttr() - mAppContext or mCallback is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_25

    .line 152
    const/4 v0, -0x1

    .line 160
    :goto_11
    monitor-exit p0

    return v0

    .line 155
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mGetAttrThread:Ljava/lang/Thread;

    if-nez v0, :cond_23

    .line 156
    new-instance v0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/mobileprint/MPrintSearchManager$GetPrinterAttrThread;-><init>(Lcom/sec/android/app/mobileprint/MPrintSearchManager;Lcom/sec/android/app/mobileprint/MPrintPrinterItem;)V

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mGetAttrThread:Ljava/lang/Thread;

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mGetAttrThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_25

    .line 160
    :cond_23
    const/4 v0, 0x0

    goto :goto_11

    .line 150
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestGetPrinterAndAttr()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 164
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mAppContext:Landroid/content/Context;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mCallback:Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;

    if-nez v2, :cond_14

    .line 165
    :cond_a
    const-string v1, "MobilePrint"

    const-string v2, "MPrintSearchManager : requestGetPrinterAndAttr() - mAppContext or mCallback is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_3c

    .line 166
    const/4 v1, -0x1

    .line 183
    :goto_12
    monitor-exit p0

    return v1

    .line 169
    :cond_14
    const/4 v2, 0x1

    :try_start_15
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mCancelSearchFlag:Ljava/lang/Boolean;

    .line 170
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSearchPrinterThread:Ljava/lang/Thread;
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_3c

    if-eqz v2, :cond_24

    .line 172
    :try_start_1f
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSearchPrinterThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_3c
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_24} :catch_3f

    .line 178
    :cond_24
    :goto_24
    const/4 v2, 0x0

    :try_start_25
    iput v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mRetry:I

    .line 179
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mCancelSearchFlag:Ljava/lang/Boolean;

    .line 180
    new-instance v2, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;-><init>(Lcom/sec/android/app/mobileprint/MPrintSearchManager;Z)V

    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSearchPrinterThread:Ljava/lang/Thread;

    .line 181
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSearchPrinterThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_3c

    goto :goto_12

    .line 164
    :catchall_3c
    move-exception v1

    monitor-exit p0

    throw v1

    .line 173
    :catch_3f
    move-exception v0

    .line 174
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_40
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_3c

    goto :goto_24
.end method

.method public declared-synchronized requestSearchPrinter()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 129
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mAppContext:Landroid/content/Context;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mCallback:Lcom/sec/android/app/mobileprint/MPrintSearchManager$Callback;

    if-nez v1, :cond_14

    .line 130
    :cond_a
    const-string v0, "MobilePrint"

    const-string v1, "MPrintSearchManager : requestSearchPrinter() - mAppContext or mCallback is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_2f

    .line 131
    const/4 v0, -0x1

    .line 141
    :cond_12
    :goto_12
    monitor-exit p0

    return v0

    .line 134
    :cond_14
    const/4 v1, 0x0

    :try_start_15
    iput v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mRetry:I

    .line 135
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mCancelSearchFlag:Ljava/lang/Boolean;

    .line 136
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSearchPrinterThread:Ljava/lang/Thread;

    if-nez v1, :cond_12

    .line 137
    new-instance v1, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;

    invoke-direct {v1, p0}, Lcom/sec/android/app/mobileprint/MPrintSearchManager$SearchPrinterThread;-><init>(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)V

    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSearchPrinterThread:Ljava/lang/Thread;

    .line 138
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSearchPrinterThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_2e
    .catchall {:try_start_15 .. :try_end_2e} :catchall_2f

    goto :goto_12

    .line 129
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
