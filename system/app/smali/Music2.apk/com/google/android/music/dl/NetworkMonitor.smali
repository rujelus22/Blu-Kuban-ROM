.class public Lcom/google/android/music/dl/NetworkMonitor;
.super Landroid/app/Service;
.source "NetworkMonitor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;,
        Lcom/google/android/music/dl/NetworkMonitor$NotifyListenersStreamabilityChangedRunnable;
    }
.end annotation


# static fields
.field private static final LOGV:Z

.field private static sActiveNetworkMonitor:Lcom/google/android/music/dl/NetworkMonitor;

.field private static sCurrentBitrate:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mConnectedMobileDataType:I

.field private final mConnectionBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectivityType:I

.field private mEthernetConnected:Z

.field private mEthernetNetworkType:I

.field private mHasEthernetType:Z

.field private mIsStreamingAvailable:Z

.field private mMobileConnected:Z

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNetworkChangeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/google/android/music/dl/INetworkChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkMonitorBinder:Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;

.field private mNotifiyListenersNetworkChangedRunnable:Ljava/lang/Runnable;

.field private final mStateRecievedLock:Ljava/lang/Object;

.field private mStreamabilityListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/google/android/music/dl/IStreamabilityChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUpdateStreamingAvailable:Ljava/lang/Runnable;

.field private mWifiConnected:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
    const-string v0, "NetworkMonitor"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/NetworkMonitor;->LOGV:Z

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x60

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/android/music/dl/NetworkMonitor;->sCurrentBitrate:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 93
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/music/dl/NetworkMonitor;->sActiveNetworkMonitor:Lcom/google/android/music/dl/NetworkMonitor;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
    iput-object v3, p0, Lcom/google/android/music/dl/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 57
    new-instance v0, Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;

    invoke-direct {v0, p0, v3}, Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;-><init>(Lcom/google/android/music/dl/NetworkMonitor;Lcom/google/android/music/dl/NetworkMonitor$1;)V

    iput-object v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mNetworkMonitorBinder:Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;

    .line 59
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mStreamabilityListeners:Landroid/os/RemoteCallbackList;

    .line 62
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mNetworkChangeListeners:Landroid/os/RemoteCallbackList;

    .line 68
    iput-boolean v1, p0, Lcom/google/android/music/dl/NetworkMonitor;->mMobileConnected:Z

    .line 69
    iput v2, p0, Lcom/google/android/music/dl/NetworkMonitor;->mConnectivityType:I

    .line 70
    iput v2, p0, Lcom/google/android/music/dl/NetworkMonitor;->mConnectedMobileDataType:I

    .line 75
    iput-boolean v1, p0, Lcom/google/android/music/dl/NetworkMonitor;->mWifiConnected:Z

    .line 80
    iput-boolean v1, p0, Lcom/google/android/music/dl/NetworkMonitor;->mEthernetConnected:Z

    .line 83
    iput-boolean v1, p0, Lcom/google/android/music/dl/NetworkMonitor;->mIsStreamingAvailable:Z

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mStateRecievedLock:Ljava/lang/Object;

    .line 91
    iput-boolean v1, p0, Lcom/google/android/music/dl/NetworkMonitor;->mHasEthernetType:Z

    .line 290
    new-instance v0, Lcom/google/android/music/dl/NetworkMonitor$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/NetworkMonitor$1;-><init>(Lcom/google/android/music/dl/NetworkMonitor;)V

    iput-object v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mConnectionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 337
    new-instance v0, Lcom/google/android/music/dl/NetworkMonitor$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/NetworkMonitor$2;-><init>(Lcom/google/android/music/dl/NetworkMonitor;)V

    iput-object v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mUpdateStreamingAvailable:Ljava/lang/Runnable;

    .line 396
    new-instance v0, Lcom/google/android/music/dl/NetworkMonitor$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/dl/NetworkMonitor$3;-><init>(Lcom/google/android/music/dl/NetworkMonitor;)V

    iput-object v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mNotifiyListenersNetworkChangedRunnable:Ljava/lang/Runnable;

    .line 36
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/dl/NetworkMonitor;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mStateRecievedLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/android/music/dl/NetworkMonitor;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/google/android/music/dl/NetworkMonitor;->mConnectedMobileDataType:I

    return p1
.end method

.method static synthetic access$1100(Lcom/google/android/music/dl/NetworkMonitor;)Landroid/telephony/TelephonyManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .registers 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/google/android/music/dl/NetworkMonitor;->LOGV:Z

    return v0
.end method

.method static synthetic access$1300()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/music/dl/NetworkMonitor;->sCurrentBitrate:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/music/dl/NetworkMonitor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/music/dl/NetworkMonitor;->resetBitrate()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/music/dl/NetworkMonitor;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mUpdateStreamingAvailable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/music/dl/NetworkMonitor;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/music/dl/NetworkMonitor;->getIsStreamingAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/google/android/music/dl/NetworkMonitor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/music/dl/NetworkMonitor;->notifyListenersNetworkChanged()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/music/dl/NetworkMonitor;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mIsStreamingAvailable:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/google/android/music/dl/NetworkMonitor;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/google/android/music/dl/NetworkMonitor;->mIsStreamingAvailable:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/google/android/music/dl/NetworkMonitor;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/music/dl/NetworkMonitor;->notifyListenersStreamabilityChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/music/dl/NetworkMonitor;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/music/dl/NetworkMonitor;->isSupportedType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/google/android/music/dl/NetworkMonitor;)Landroid/os/RemoteCallbackList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mStreamabilityListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/android/music/dl/NetworkMonitor;)Landroid/os/RemoteCallbackList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mNetworkChangeListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/dl/NetworkMonitor;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mMobileConnected:Z

    return v0
.end method

.method static synthetic access$302(Lcom/google/android/music/dl/NetworkMonitor;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/google/android/music/dl/NetworkMonitor;->mMobileConnected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/music/dl/NetworkMonitor;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/music/dl/NetworkMonitor;->isMobileType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/music/dl/NetworkMonitor;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mWifiConnected:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/android/music/dl/NetworkMonitor;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/google/android/music/dl/NetworkMonitor;->mWifiConnected:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/music/dl/NetworkMonitor;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/music/dl/NetworkMonitor;->isWifiType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/music/dl/NetworkMonitor;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mEthernetConnected:Z

    return v0
.end method

.method static synthetic access$702(Lcom/google/android/music/dl/NetworkMonitor;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/google/android/music/dl/NetworkMonitor;->mEthernetConnected:Z

    return p1
.end method

.method static synthetic access$800(Lcom/google/android/music/dl/NetworkMonitor;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/music/dl/NetworkMonitor;->isEthernetType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$902(Lcom/google/android/music/dl/NetworkMonitor;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/google/android/music/dl/NetworkMonitor;->mConnectivityType:I

    return p1
.end method

.method public static getActiveNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;
    .registers 4

    .prologue
    .line 490
    sget-boolean v1, Lcom/google/android/music/DebugUtils;->IS_DEBUG_BUILD:Z

    if-eqz v1, :cond_2b

    .line 491
    invoke-static {}, Lcom/google/android/music/MusicUtils;->getProcessName()Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, processName:Ljava/lang/String;
    if-eqz v0, :cond_12

    const-string v1, "main"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 493
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkMonitor.getActiveNetworkMonitor() being used from invalid process: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 497
    :cond_2b
    sget-object v1, Lcom/google/android/music/dl/NetworkMonitor;->sActiveNetworkMonitor:Lcom/google/android/music/dl/NetworkMonitor;

    if-eqz v1, :cond_34

    .line 498
    sget-object v1, Lcom/google/android/music/dl/NetworkMonitor;->sActiveNetworkMonitor:Lcom/google/android/music/dl/NetworkMonitor;

    iget-object v1, v1, Lcom/google/android/music/dl/NetworkMonitor;->mNetworkMonitorBinder:Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;

    .line 500
    :goto_33
    return-object v1

    :cond_34
    const/4 v1, 0x0

    goto :goto_33
.end method

.method private getIsStreamingAvailable()Z
    .registers 3

    .prologue
    .line 145
    iget-object v1, p0, Lcom/google/android/music/dl/NetworkMonitor;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamOnlyOnWifi()Z

    move-result v0

    .line 146
    .local v0, streamOnlyOnWifi:Z
    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/google/android/music/dl/NetworkMonitor;->mNetworkMonitorBinder:Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;

    invoke-virtual {v1}, Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;->hasHighSpeedConnection()Z

    move-result v1

    :goto_e
    return v1

    :cond_f
    iget-object v1, p0, Lcom/google/android/music/dl/NetworkMonitor;->mNetworkMonitorBinder:Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;

    invoke-virtual {v1}, Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;->isConnected()Z

    move-result v1

    goto :goto_e
.end method

.method public static getRecommendedBitrate()I
    .registers 1

    .prologue
    .line 198
    sget-object v0, Lcom/google/android/music/dl/NetworkMonitor;->sCurrentBitrate:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method private isEthernetType(I)Z
    .registers 3
    .parameter "type"

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mHasEthernetType:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mEthernetNetworkType:I

    if-ne p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isMobileType(I)Z
    .registers 3
    .parameter "type"

    .prologue
    .line 219
    if-eqz p1, :cond_5

    const/4 v0, 0x6

    if-ne p1, v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private isSupportedType(I)Z
    .registers 4
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 244
    if-eqz p1, :cond_10

    if-eq p1, v0, :cond_10

    const/4 v1, 0x6

    if-eq p1, v1, :cond_10

    iget-boolean v1, p0, Lcom/google/android/music/dl/NetworkMonitor;->mHasEthernetType:Z

    if-eqz v1, :cond_11

    iget v1, p0, Lcom/google/android/music/dl/NetworkMonitor;->mEthernetNetworkType:I

    if-ne p1, v1, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private isWifiType(I)Z
    .registers 3
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 229
    if-ne p1, v0, :cond_4

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private notifyListenersNetworkChanged()V
    .registers 3

    .prologue
    .line 419
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    iget-object v1, p0, Lcom/google/android/music/dl/NetworkMonitor;->mNotifiyListenersNetworkChangedRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 421
    return-void
.end method

.method private notifyListenersStreamabilityChanged(Z)V
    .registers 4
    .parameter "isStreamable"

    .prologue
    .line 392
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/dl/NetworkMonitor$NotifyListenersStreamabilityChangedRunnable;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/dl/NetworkMonitor$NotifyListenersStreamabilityChangedRunnable;-><init>(Lcom/google/android/music/dl/NetworkMonitor;Z)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 394
    return-void
.end method

.method private populateEthernetType(Landroid/net/ConnectivityManager;)V
    .registers 7
    .parameter "cm"

    .prologue
    const/4 v4, 0x0

    .line 257
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "TYPE_ETHERNET"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 258
    .local v1, typeValue:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/google/android/music/dl/NetworkMonitor;->mEthernetNetworkType:I

    .line 259
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/music/dl/NetworkMonitor;->mHasEthernetType:Z
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1a} :catch_1b
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1a} :catch_1f
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1a} :catch_23
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1a} :catch_27

    .line 269
    .end local v1           #typeValue:Ljava/lang/Integer;
    :goto_1a
    return-void

    .line 260
    :catch_1b
    move-exception v0

    .line 261
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iput-boolean v4, p0, Lcom/google/android/music/dl/NetworkMonitor;->mHasEthernetType:Z

    goto :goto_1a

    .line 262
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1f
    move-exception v0

    .line 263
    .local v0, e:Ljava/lang/SecurityException;
    iput-boolean v4, p0, Lcom/google/android/music/dl/NetworkMonitor;->mHasEthernetType:Z

    goto :goto_1a

    .line 264
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_23
    move-exception v0

    .line 265
    .local v0, e:Ljava/lang/IllegalAccessException;
    iput-boolean v4, p0, Lcom/google/android/music/dl/NetworkMonitor;->mHasEthernetType:Z

    goto :goto_1a

    .line 266
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_27
    move-exception v0

    .line 267
    .local v0, e:Ljava/lang/NoSuchFieldException;
    iput-boolean v4, p0, Lcom/google/android/music/dl/NetworkMonitor;->mHasEthernetType:Z

    goto :goto_1a
.end method

.method public static reportBitrate(Landroid/content/Context;JJ)V
    .registers 12
    .parameter "context"
    .parameter "totalLengthDownloaded"
    .parameter "timeToDownload"

    .prologue
    const-wide v5, 0x408f400000000000L

    .line 204
    const-wide/32 v1, 0x80000

    cmp-long v1, p1, v1

    if-ltz v1, :cond_12

    const-wide/16 v1, 0xbb8

    cmp-long v1, p3, v1

    if-gez v1, :cond_13

    .line 216
    :cond_12
    :goto_12
    return-void

    .line 208
    :cond_13
    const-wide/16 v1, 0x8

    mul-long/2addr v1, p1

    long-to-float v1, v1

    const/high16 v2, 0x3f40

    mul-float/2addr v1, v2

    float-to-double v1, v1

    div-double/2addr v1, v5

    long-to-double v3, p3

    div-double/2addr v3, v5

    div-double/2addr v1, v3

    double-to-int v0, v1

    .line 211
    .local v0, newBitrate:I
    const/16 v1, 0x30

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 213
    sget-object v1, Lcom/google/android/music/dl/NetworkMonitor;->sCurrentBitrate:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_12
.end method

.method private resetBitrate()V
    .registers 5

    .prologue
    const/16 v1, 0x200

    const/16 v3, 0x100

    const/16 v2, 0x60

    .line 154
    iget-boolean v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mWifiConnected:Z

    if-eqz v0, :cond_10

    .line 155
    sget-object v0, Lcom/google/android/music/dl/NetworkMonitor;->sCurrentBitrate:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 195
    :goto_f
    return-void

    .line 158
    :cond_10
    iget-boolean v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mEthernetConnected:Z

    if-eqz v0, :cond_1a

    .line 159
    sget-object v0, Lcom/google/android/music/dl/NetworkMonitor;->sCurrentBitrate:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_f

    .line 162
    :cond_1a
    iget-boolean v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mMobileConnected:Z

    if-eqz v0, :cond_4a

    .line 163
    iget v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mConnectivityType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_29

    .line 164
    sget-object v0, Lcom/google/android/music/dl/NetworkMonitor;->sCurrentBitrate:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_f

    .line 166
    :cond_29
    iget v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mConnectedMobileDataType:I

    packed-switch v0, :pswitch_data_50

    .line 188
    sget-object v0, Lcom/google/android/music/dl/NetworkMonitor;->sCurrentBitrate:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_f

    .line 170
    :pswitch_34
    sget-object v0, Lcom/google/android/music/dl/NetworkMonitor;->sCurrentBitrate:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_f

    .line 182
    :pswitch_3c
    sget-object v0, Lcom/google/android/music/dl/NetworkMonitor;->sCurrentBitrate:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0xc0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_f

    .line 185
    :pswitch_44
    sget-object v0, Lcom/google/android/music/dl/NetworkMonitor;->sCurrentBitrate:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_f

    .line 193
    :cond_4a
    sget-object v0, Lcom/google/android/music/dl/NetworkMonitor;->sCurrentBitrate:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_f

    .line 166
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_34
        :pswitch_34
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_34
        :pswitch_3c
        :pswitch_44
        :pswitch_3c
    .end packed-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mNetworkMonitorBinder:Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 96
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 97
    sput-object p0, Lcom/google/android/music/dl/NetworkMonitor;->sActiveNetworkMonitor:Lcom/google/android/music/dl/NetworkMonitor;

    .line 98
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/google/android/music/dl/NetworkMonitor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/google/android/music/dl/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 101
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lcom/google/android/music/dl/NetworkMonitor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 102
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-direct {p0, v0}, Lcom/google/android/music/dl/NetworkMonitor;->populateEthernetType(Landroid/net/ConnectivityManager;)V

    .line 103
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 104
    .local v3, netInfo:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_84

    .line 105
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 106
    .local v4, type:I
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 107
    .local v2, isConnected:Z
    sget-boolean v5, Lcom/google/android/music/dl/NetworkMonitor;->LOGV:Z

    if-eqz v5, :cond_51

    .line 108
    const-string v5, "NetworkMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Network Type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isConnected: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_51
    invoke-direct {p0, v4}, Lcom/google/android/music/dl/NetworkMonitor;->isSupportedType(I)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 111
    invoke-direct {p0, v4}, Lcom/google/android/music/dl/NetworkMonitor;->isMobileType(I)Z

    move-result v5

    if-eqz v5, :cond_aa

    if-eqz v2, :cond_aa

    move v5, v6

    :goto_60
    iput-boolean v5, p0, Lcom/google/android/music/dl/NetworkMonitor;->mMobileConnected:Z

    .line 112
    invoke-direct {p0, v4}, Lcom/google/android/music/dl/NetworkMonitor;->isWifiType(I)Z

    move-result v5

    if-eqz v5, :cond_ac

    if-eqz v2, :cond_ac

    move v5, v6

    :goto_6b
    iput-boolean v5, p0, Lcom/google/android/music/dl/NetworkMonitor;->mWifiConnected:Z

    .line 113
    invoke-direct {p0, v4}, Lcom/google/android/music/dl/NetworkMonitor;->isEthernetType(I)Z

    move-result v5

    if-eqz v5, :cond_ae

    if-eqz v2, :cond_ae

    :goto_75
    iput-boolean v6, p0, Lcom/google/android/music/dl/NetworkMonitor;->mEthernetConnected:Z

    .line 114
    iput v4, p0, Lcom/google/android/music/dl/NetworkMonitor;->mConnectivityType:I

    .line 115
    iget-object v5, p0, Lcom/google/android/music/dl/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    iput v5, p0, Lcom/google/android/music/dl/NetworkMonitor;->mConnectedMobileDataType:I

    .line 116
    invoke-direct {p0}, Lcom/google/android/music/dl/NetworkMonitor;->resetBitrate()V

    .line 120
    .end local v2           #isConnected:Z
    .end local v4           #type:I
    :cond_84
    invoke-static {p0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->getMusicPreferences(Landroid/content/Context;Ljava/lang/Object;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/music/dl/NetworkMonitor;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 121
    iget-object v5, p0, Lcom/google/android/music/dl/NetworkMonitor;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v5, p0}, Lcom/google/android/music/jumper/MusicPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 124
    iget-object v5, p0, Lcom/google/android/music/dl/NetworkMonitor;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v5}, Lcom/google/android/music/jumper/MusicPreferences;->preferencesLoaded()Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 127
    invoke-virtual {p0, v10, v10}, Lcom/google/android/music/dl/NetworkMonitor;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 130
    :cond_9a
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 131
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    iget-object v5, p0, Lcom/google/android/music/dl/NetworkMonitor;->mConnectionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/google/android/music/dl/NetworkMonitor;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    return-void

    .end local v1           #filter:Landroid/content/IntentFilter;
    .restart local v2       #isConnected:Z
    .restart local v4       #type:I
    :cond_aa
    move v5, v7

    .line 111
    goto :goto_60

    :cond_ac
    move v5, v7

    .line 112
    goto :goto_6b

    :cond_ae
    move v6, v7

    .line 113
    goto :goto_75
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 138
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/music/dl/NetworkMonitor;->sActiveNetworkMonitor:Lcom/google/android/music/dl/NetworkMonitor;

    .line 139
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 140
    invoke-static {p0}, Lcom/google/android/music/jumper/MusicPreferences;->releaseMusicPreferences(Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/google/android/music/dl/NetworkMonitor;->mConnectionBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/NetworkMonitor;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 142
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 7
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 273
    iget-object v2, p0, Lcom/google/android/music/dl/NetworkMonitor;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v2

    if-eqz v2, :cond_18

    const/4 v0, 0x1

    .line 275
    .local v0, hasStreamingAccount:Z
    :goto_9
    if-eqz v0, :cond_17

    .line 276
    iget-object v3, p0, Lcom/google/android/music/dl/NetworkMonitor;->mStateRecievedLock:Ljava/lang/Object;

    monitor-enter v3

    .line 277
    :try_start_e
    invoke-direct {p0}, Lcom/google/android/music/dl/NetworkMonitor;->getIsStreamingAvailable()Z

    move-result v1

    .line 279
    .local v1, newIsAvail:Z
    iget-boolean v2, p0, Lcom/google/android/music/dl/NetworkMonitor;->mIsStreamingAvailable:Z

    if-ne v1, v2, :cond_1a

    .line 281
    monitor-exit v3

    .line 288
    .end local v1           #newIsAvail:Z
    :cond_17
    :goto_17
    return-void

    .line 273
    .end local v0           #hasStreamingAccount:Z
    :cond_18
    const/4 v0, 0x0

    goto :goto_9

    .line 283
    .restart local v0       #hasStreamingAccount:Z
    .restart local v1       #newIsAvail:Z
    :cond_1a
    iput-boolean v1, p0, Lcom/google/android/music/dl/NetworkMonitor;->mIsStreamingAvailable:Z

    .line 285
    invoke-direct {p0, v1}, Lcom/google/android/music/dl/NetworkMonitor;->notifyListenersStreamabilityChanged(Z)V

    .line 286
    monitor-exit v3

    goto :goto_17

    .end local v1           #newIsAvail:Z
    :catchall_21
    move-exception v2

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_21

    throw v2
.end method
