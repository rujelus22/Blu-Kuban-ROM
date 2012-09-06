.class public Lcom/google/android/music/NetworkMonitorServiceConnection;
.super Ljava/lang/Object;
.source "NetworkMonitorServiceConnection.java"


# instance fields
.field private final mNetworkChangeListener:Lcom/google/android/music/dl/INetworkChangeListener;

.field private mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

.field private mRunOnServiceConnected:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mSafeServiceConnection:Lcom/google/android/music/utils/SafeServiceConnection;

.field private final mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, v0, v0}, Lcom/google/android/music/NetworkMonitorServiceConnection;-><init>(Lcom/google/android/music/dl/INetworkChangeListener;Lcom/google/android/music/dl/IStreamabilityChangeListener;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/dl/INetworkChangeListener;)V
    .registers 3
    .parameter "networkChangeListener"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/NetworkMonitorServiceConnection;-><init>(Lcom/google/android/music/dl/INetworkChangeListener;Lcom/google/android/music/dl/IStreamabilityChangeListener;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/dl/INetworkChangeListener;Lcom/google/android/music/dl/IStreamabilityChangeListener;)V
    .registers 4
    .parameter "networkChangeListener"
    .parameter "streamabilityChangeListener"

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    .line 37
    iput-object v0, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mRunOnServiceConnected:Ljava/util/List;

    .line 39
    new-instance v0, Lcom/google/android/music/NetworkMonitorServiceConnection$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/NetworkMonitorServiceConnection$1;-><init>(Lcom/google/android/music/NetworkMonitorServiceConnection;)V

    iput-object v0, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mSafeServiceConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    .line 79
    iput-object p1, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkChangeListener:Lcom/google/android/music/dl/INetworkChangeListener;

    .line 80
    iput-object p2, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/dl/IStreamabilityChangeListener;)V
    .registers 3
    .parameter "streamabilityChangeListener"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/music/NetworkMonitorServiceConnection;-><init>(Lcom/google/android/music/dl/INetworkChangeListener;Lcom/google/android/music/dl/IStreamabilityChangeListener;)V

    .line 74
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/music/NetworkMonitorServiceConnection;Lcom/google/android/music/dl/INetworkMonitor;)Lcom/google/android/music/dl/INetworkMonitor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/music/NetworkMonitorServiceConnection;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mRunOnServiceConnected:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/music/NetworkMonitorServiceConnection;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mRunOnServiceConnected:Ljava/util/List;

    return-object p1
.end method

.method private static getBindIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.music.NETWORK_MONITOR_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addRunOnServiceConnected(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "runnable"

    .prologue
    .line 84
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    if-eqz v0, :cond_a

    .line 85
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1a

    .line 92
    :goto_8
    monitor-exit p0

    return-void

    .line 88
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mRunOnServiceConnected:Ljava/util/List;

    if-nez v0, :cond_14

    .line 89
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mRunOnServiceConnected:Ljava/util/List;

    .line 91
    :cond_14
    iget-object v0, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mRunOnServiceConnected:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1a

    goto :goto_8

    .line 84
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bindToService(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mSafeServiceConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    invoke-static {}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getBindIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/music/utils/SafeServiceConnection;->bindService(Landroid/content/Context;Landroid/content/Intent;I)Z

    .line 96
    return-void
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    if-eqz v0, :cond_10

    .line 149
    const-string v0, "NetworkMonitorServiceConn"

    const-string v1, "NetworkMonitorServiceConnection not unbinded cleanly"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    :cond_10
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 152
    return-void
.end method

.method public getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    return-object v0
.end method

.method public declared-synchronized registerListeners()V
    .registers 4

    .prologue
    .line 109
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    if-nez v1, :cond_e

    .line 110
    const-string v1, "NetworkMonitorServiceConn"

    const-string v2, "registerListeners: networkMonitor was never connected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_30

    .line 123
    :cond_c
    :goto_c
    monitor-exit p0

    return-void

    .line 114
    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkChangeListener:Lcom/google/android/music/dl/INetworkChangeListener;

    if-eqz v1, :cond_19

    .line 115
    iget-object v1, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    iget-object v2, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkChangeListener:Lcom/google/android/music/dl/INetworkChangeListener;

    invoke-interface {v1, v2}, Lcom/google/android/music/dl/INetworkMonitor;->registerNetworkChangeListener(Lcom/google/android/music/dl/INetworkChangeListener;)V

    .line 117
    :cond_19
    iget-object v1, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    if-eqz v1, :cond_c

    .line 118
    iget-object v1, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    iget-object v2, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    invoke-interface {v1, v2}, Lcom/google/android/music/dl/INetworkMonitor;->registerStreamabilityChangeListener(Lcom/google/android/music/dl/IStreamabilityChangeListener;)V
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_30
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_24} :catch_25

    goto :goto_c

    .line 120
    :catch_25
    move-exception v0

    .line 121
    .local v0, e:Landroid/os/RemoteException;
    :try_start_26
    const-string v1, "NetworkMonitorServiceConn"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_30

    goto :goto_c

    .line 109
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_30
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public unbindFromService(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->unregisterListeners()V

    .line 104
    iget-object v0, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mSafeServiceConnection:Lcom/google/android/music/utils/SafeServiceConnection;

    invoke-virtual {v0, p1}, Lcom/google/android/music/utils/SafeServiceConnection;->unbindService(Landroid/content/Context;)V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    .line 106
    return-void
.end method

.method public declared-synchronized unregisterListeners()V
    .registers 4

    .prologue
    .line 126
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    if-nez v1, :cond_e

    .line 127
    const-string v1, "NetworkMonitorServiceConn"

    const-string v2, "unregisterListeners: networkMonitor was never connected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_30

    .line 140
    :cond_c
    :goto_c
    monitor-exit p0

    return-void

    .line 131
    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkChangeListener:Lcom/google/android/music/dl/INetworkChangeListener;

    if-eqz v1, :cond_19

    .line 132
    iget-object v1, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    iget-object v2, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkChangeListener:Lcom/google/android/music/dl/INetworkChangeListener;

    invoke-interface {v1, v2}, Lcom/google/android/music/dl/INetworkMonitor;->unregisterNetworkChangeListener(Lcom/google/android/music/dl/INetworkChangeListener;)V

    .line 134
    :cond_19
    iget-object v1, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    if-eqz v1, :cond_c

    .line 135
    iget-object v1, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    iget-object v2, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    invoke-interface {v1, v2}, Lcom/google/android/music/dl/INetworkMonitor;->unregisterStreamabilityChangeListener(Lcom/google/android/music/dl/IStreamabilityChangeListener;)V
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_30
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_24} :catch_25

    goto :goto_c

    .line 137
    :catch_25
    move-exception v0

    .line 138
    .local v0, e:Landroid/os/RemoteException;
    :try_start_26
    const-string v1, "NetworkMonitorServiceConn"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_30

    goto :goto_c

    .line 126
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_30
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public waitForServiceConnection(J)Z
    .registers 6
    .parameter "timeout"

    .prologue
    .line 160
    monitor-enter p0

    .line 161
    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1a

    if-nez v1, :cond_8

    .line 163
    :try_start_5
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_1a
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_f

    .line 168
    :cond_8
    :goto_8
    :try_start_8
    iget-object v1, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    :goto_d
    monitor-exit p0

    return v1

    .line 164
    :catch_f
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "NetworkMonitorServiceConn"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 169
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_1a
    move-exception v1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_1a

    throw v1

    .line 168
    :cond_1d
    const/4 v1, 0x0

    goto :goto_d
.end method
