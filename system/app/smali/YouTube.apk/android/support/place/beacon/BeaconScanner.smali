.class public Landroid/support/place/beacon/BeaconScanner;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "aah.BeaconScanner"


# instance fields
.field private mBeaconScanner:Landroid/support/place/beacon/IBeaconScanner;

.field private final mBeaconScannerConnection:Landroid/support/place/beacon/SafeServiceConnection;

.field private final mBeaconScannerListener:Landroid/support/place/beacon/IBeaconScannerListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Landroid/support/place/beacon/BeaconScanner$Listener;

.field private mLock:Ljava/lang/Object;

.field private mSendCallbacks:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/place/beacon/BeaconScanner$Listener;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/place/beacon/BeaconScanner;->mHandler:Landroid/os/Handler;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/place/beacon/BeaconScanner;->mLock:Ljava/lang/Object;

    .line 144
    new-instance v0, Landroid/support/place/beacon/BeaconScanner$2;

    invoke-direct {v0, p0}, Landroid/support/place/beacon/BeaconScanner$2;-><init>(Landroid/support/place/beacon/BeaconScanner;)V

    iput-object v0, p0, Landroid/support/place/beacon/BeaconScanner;->mBeaconScannerConnection:Landroid/support/place/beacon/SafeServiceConnection;

    .line 162
    new-instance v0, Landroid/support/place/beacon/BeaconScanner$3;

    invoke-direct {v0, p0}, Landroid/support/place/beacon/BeaconScanner$3;-><init>(Landroid/support/place/beacon/BeaconScanner;)V

    iput-object v0, p0, Landroid/support/place/beacon/BeaconScanner;->mBeaconScannerListener:Landroid/support/place/beacon/IBeaconScannerListener;

    .line 37
    iput-object p1, p0, Landroid/support/place/beacon/BeaconScanner;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Landroid/support/place/beacon/BeaconScanner;->mListener:Landroid/support/place/beacon/BeaconScanner$Listener;

    .line 39
    invoke-direct {p0}, Landroid/support/place/beacon/BeaconScanner;->startBeaconScanner()Z

    .line 40
    return-void
.end method

.method static synthetic access$000(Landroid/support/place/beacon/BeaconScanner;)Landroid/support/place/beacon/BeaconScanner$Listener;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Landroid/support/place/beacon/BeaconScanner;->mListener:Landroid/support/place/beacon/BeaconScanner$Listener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/place/beacon/BeaconScanner;)Landroid/support/place/beacon/IBeaconScanner;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Landroid/support/place/beacon/BeaconScanner;->mBeaconScanner:Landroid/support/place/beacon/IBeaconScanner;

    return-object v0
.end method

.method static synthetic access$102(Landroid/support/place/beacon/BeaconScanner;Landroid/support/place/beacon/IBeaconScanner;)Landroid/support/place/beacon/IBeaconScanner;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Landroid/support/place/beacon/BeaconScanner;->mBeaconScanner:Landroid/support/place/beacon/IBeaconScanner;

    return-object p1
.end method

.method static synthetic access$200(Landroid/support/place/beacon/BeaconScanner;)Landroid/support/place/beacon/IBeaconScannerListener;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Landroid/support/place/beacon/BeaconScanner;->mBeaconScannerListener:Landroid/support/place/beacon/IBeaconScannerListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/place/beacon/BeaconScanner;)V
    .registers 1
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/place/beacon/BeaconScanner;->postBeaconScannerChange()V

    return-void
.end method

.method private postBeaconScannerChange()V
    .registers 5

    .prologue
    .line 124
    iget-object v1, p0, Landroid/support/place/beacon/BeaconScanner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    :try_start_3
    iget-object v0, p0, Landroid/support/place/beacon/BeaconScanner;->mBeaconScanner:Landroid/support/place/beacon/IBeaconScanner;

    invoke-interface {v0}, Landroid/support/place/beacon/IBeaconScanner;->getBeacons()Ljava/util/List;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_27
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_1d

    move-result-object v0

    .line 133
    :try_start_9
    iget-boolean v2, p0, Landroid/support/place/beacon/BeaconScanner;->mSendCallbacks:Z

    if-eqz v2, :cond_1b

    iget-object v2, p0, Landroid/support/place/beacon/BeaconScanner;->mListener:Landroid/support/place/beacon/BeaconScanner$Listener;

    if-eqz v2, :cond_1b

    .line 134
    iget-object v2, p0, Landroid/support/place/beacon/BeaconScanner;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/support/place/beacon/BeaconScanner$1;

    invoke-direct {v3, p0, v0}, Landroid/support/place/beacon/BeaconScanner$1;-><init>(Landroid/support/place/beacon/BeaconScanner;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    :cond_1b
    monitor-exit v1

    :goto_1c
    return-void

    .line 129
    :catch_1d
    move-exception v0

    const-string v0, "aah.BeaconScanner"

    const-string v2, "Error requesting places from BeaconScanner"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_27

    goto :goto_1c

    .line 141
    :catchall_27
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startBeaconScanner()Z
    .registers 5

    .prologue
    .line 115
    iget-object v0, p0, Landroid/support/place/beacon/BeaconScanner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/place/connector/BeaconScannerConstants;->getServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 116
    if-nez v0, :cond_a

    .line 117
    const/4 v0, 0x0

    .line 119
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Landroid/support/place/beacon/BeaconScanner;->mBeaconScannerConnection:Landroid/support/place/beacon/SafeServiceConnection;

    iget-object v2, p0, Landroid/support/place/beacon/BeaconScanner;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/place/beacon/SafeServiceConnection;->bindService(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    goto :goto_9
.end method


# virtual methods
.method public getBeacons()Ljava/util/List;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/place/beacon/BeaconScanner;->mBeaconScanner:Landroid/support/place/beacon/IBeaconScanner;

    if-eqz v0, :cond_c

    .line 67
    :try_start_4
    iget-object v0, p0, Landroid/support/place/beacon/BeaconScanner;->mBeaconScanner:Landroid/support/place/beacon/IBeaconScanner;

    invoke-interface {v0}, Landroid/support/place/beacon/IBeaconScanner;->getBeacons()Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v0

    .line 72
    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_a
.end method

.method public scanForBeacons()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 84
    iget-object v1, p0, Landroid/support/place/beacon/BeaconScanner;->mBeaconScanner:Landroid/support/place/beacon/IBeaconScanner;

    if-eqz v1, :cond_b

    .line 86
    :try_start_5
    iget-object v1, p0, Landroid/support/place/beacon/BeaconScanner;->mBeaconScanner:Landroid/support/place/beacon/IBeaconScanner;

    invoke-interface {v1}, Landroid/support/place/beacon/IBeaconScanner;->scanForBeacons()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    .line 87
    const/4 v0, 0x1

    .line 92
    :cond_b
    :goto_b
    return v0

    .line 89
    :catch_c
    move-exception v1

    goto :goto_b
.end method

.method public startListening()V
    .registers 3

    .prologue
    .line 43
    iget-object v1, p0, Landroid/support/place/beacon/BeaconScanner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Landroid/support/place/beacon/BeaconScanner;->mSendCallbacks:Z

    .line 45
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_f

    .line 46
    iget-object v0, p0, Landroid/support/place/beacon/BeaconScanner;->mBeaconScanner:Landroid/support/place/beacon/IBeaconScanner;

    if-eqz v0, :cond_e

    .line 47
    invoke-direct {p0}, Landroid/support/place/beacon/BeaconScanner;->postBeaconScannerChange()V

    .line 49
    :cond_e
    return-void

    .line 45
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public stopListening()V
    .registers 3

    .prologue
    .line 52
    iget-object v1, p0, Landroid/support/place/beacon/BeaconScanner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Landroid/support/place/beacon/BeaconScanner;->mSendCallbacks:Z

    .line 54
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public terminate()V
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Landroid/support/place/beacon/BeaconScanner;->mBeaconScanner:Landroid/support/place/beacon/IBeaconScanner;

    if-eqz v0, :cond_12

    .line 104
    :try_start_4
    iget-object v0, p0, Landroid/support/place/beacon/BeaconScanner;->mBeaconScanner:Landroid/support/place/beacon/IBeaconScanner;

    iget-object v1, p0, Landroid/support/place/beacon/BeaconScanner;->mBeaconScannerListener:Landroid/support/place/beacon/IBeaconScannerListener;

    invoke-interface {v0, v1}, Landroid/support/place/beacon/IBeaconScanner;->removeListener(Landroid/support/place/beacon/IBeaconScannerListener;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_13

    .line 109
    :goto_b
    iget-object v0, p0, Landroid/support/place/beacon/BeaconScanner;->mBeaconScannerConnection:Landroid/support/place/beacon/SafeServiceConnection;

    iget-object v1, p0, Landroid/support/place/beacon/BeaconScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/support/place/beacon/SafeServiceConnection;->unbindService(Landroid/content/Context;)V

    .line 111
    :cond_12
    return-void

    .line 106
    :catch_13
    move-exception v0

    const-string v0, "aah.BeaconScanner"

    const-string v1, "Error removing listener from BeaconScanner while terminating(terminating anyway)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method
