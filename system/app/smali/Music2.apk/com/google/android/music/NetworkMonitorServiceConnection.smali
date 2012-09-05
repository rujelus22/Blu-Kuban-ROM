.class public Lcom/google/android/music/NetworkMonitorServiceConnection;
.super Ljava/lang/Object;
.source "NetworkMonitorServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

.field private final mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0, v0}, Lcom/google/android/music/NetworkMonitorServiceConnection;-><init>(Lcom/google/android/music/dl/INetworkChangeListener;Lcom/google/android/music/dl/IStreamabilityChangeListener;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/dl/INetworkChangeListener;)V
    .registers 3
    .parameter "networkChangeListener"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/NetworkMonitorServiceConnection;-><init>(Lcom/google/android/music/dl/INetworkChangeListener;Lcom/google/android/music/dl/IStreamabilityChangeListener;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/dl/INetworkChangeListener;Lcom/google/android/music/dl/IStreamabilityChangeListener;)V
    .registers 4
    .parameter "networkChangeListener"
    .parameter "streamabilityChangeListener"

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    .line 37
    iput-object v0, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mRunOnServiceConnected:Ljava/util/List;

    .line 55
    iput-object p1, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkChangeListener:Lcom/google/android/music/dl/INetworkChangeListener;

    .line 56
    iput-object p2, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/dl/IStreamabilityChangeListener;)V
    .registers 3
    .parameter "streamabilityChangeListener"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/music/NetworkMonitorServiceConnection;-><init>(Lcom/google/android/music/dl/INetworkChangeListener;Lcom/google/android/music/dl/IStreamabilityChangeListener;)V

    .line 50
    return-void
.end method

.method private static getBindIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 75
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
    .line 60
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    if-eqz v0, :cond_a

    .line 61
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1a

    .line 68
    :goto_8
    monitor-exit p0

    return-void

    .line 64
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mRunOnServiceConnected:Ljava/util/List;

    if-nez v0, :cond_14

    .line 65
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mRunOnServiceConnected:Ljava/util/List;

    .line 67
    :cond_14
    iget-object v0, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mRunOnServiceConnected:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1a

    goto :goto_8

    .line 60
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bindToService(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 71
    invoke-static {}, Lcom/google/android/music/NetworkMonitorServiceConnection;->getBindIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 72
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
    .line 141
    iget-object v0, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    if-eqz v0, :cond_10

    .line 142
    const-string v0, "NetworkMonitorServiceConn"

    const-string v1, "NetworkMonitorServiceConnection not unbinded cleanly"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    :cond_10
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 145
    return-void
.end method

.method public getNetworkMonitor()Lcom/google/android/music/dl/INetworkMonitor;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter "name"
    .parameter "service"

    .prologue
    .line 84
    invoke-static {p2}, Lcom/google/android/music/dl/INetworkMonitor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/dl/INetworkMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    .line 85
    invoke-virtual {p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->registerListeners()V

    .line 87
    monitor-enter p0

    .line 88
    :try_start_a
    iget-object v2, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mRunOnServiceConnected:Ljava/util/List;

    if-eqz v2, :cond_27

    .line 89
    iget-object v2, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mRunOnServiceConnected:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 90
    .local v1, run:Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_14

    .line 94
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #run:Ljava/lang/Runnable;
    :catchall_24
    move-exception v2

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_24

    throw v2

    .line 93
    :cond_27
    const/4 v2, 0x0

    :try_start_28
    iput-object v2, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mRunOnServiceConnected:Ljava/util/List;

    .line 94
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_24

    .line 95
    return-void
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 115
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 116
    monitor-exit p0

    return-void

    .line 115
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerListeners()V
    .registers 4

    .prologue
    .line 98
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    if-nez v1, :cond_e

    .line 99
    const-string v1, "NetworkMonitorServiceConn"

    const-string v2, "registerListeners: networkMonitor was never connected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_30

    .line 112
    :cond_c
    :goto_c
    monitor-exit p0

    return-void

    .line 103
    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkChangeListener:Lcom/google/android/music/dl/INetworkChangeListener;

    if-eqz v1, :cond_19

    .line 104
    iget-object v1, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    iget-object v2, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkChangeListener:Lcom/google/android/music/dl/INetworkChangeListener;

    invoke-interface {v1, v2}, Lcom/google/android/music/dl/INetworkMonitor;->registerNetworkChangeListener(Lcom/google/android/music/dl/INetworkChangeListener;)V

    .line 106
    :cond_19
    iget-object v1, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    if-eqz v1, :cond_c

    .line 107
    iget-object v1, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    iget-object v2, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    invoke-interface {v1, v2}, Lcom/google/android/music/dl/INetworkMonitor;->registerStreamabilityChangeListener(Lcom/google/android/music/dl/IStreamabilityChangeListener;)V
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_30
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_24} :catch_25

    goto :goto_c

    .line 109
    :catch_25
    move-exception v0

    .line 110
    .local v0, e:Landroid/os/RemoteException;
    :try_start_26
    const-string v1, "NetworkMonitorServiceConn"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_30

    goto :goto_c

    .line 98
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_30
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public unbindFromService(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/google/android/music/NetworkMonitorServiceConnection;->unregisterListeners()V

    .line 80
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 81
    return-void
.end method

.method public declared-synchronized unregisterListeners()V
    .registers 4

    .prologue
    .line 119
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    if-nez v1, :cond_e

    .line 120
    const-string v1, "NetworkMonitorServiceConn"

    const-string v2, "unregisterListeners: networkMonitor was never connected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_30

    .line 133
    :cond_c
    :goto_c
    monitor-exit p0

    return-void

    .line 124
    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkChangeListener:Lcom/google/android/music/dl/INetworkChangeListener;

    if-eqz v1, :cond_19

    .line 125
    iget-object v1, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    iget-object v2, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkChangeListener:Lcom/google/android/music/dl/INetworkChangeListener;

    invoke-interface {v1, v2}, Lcom/google/android/music/dl/INetworkMonitor;->unregisterNetworkChangeListener(Lcom/google/android/music/dl/INetworkChangeListener;)V

    .line 127
    :cond_19
    iget-object v1, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    if-eqz v1, :cond_c

    .line 128
    iget-object v1, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    iget-object v2, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mStreamabilityChangeListener:Lcom/google/android/music/dl/IStreamabilityChangeListener;

    invoke-interface {v1, v2}, Lcom/google/android/music/dl/INetworkMonitor;->unregisterStreamabilityChangeListener(Lcom/google/android/music/dl/IStreamabilityChangeListener;)V
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_30
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_24} :catch_25

    goto :goto_c

    .line 130
    :catch_25
    move-exception v0

    .line 131
    .local v0, e:Landroid/os/RemoteException;
    :try_start_26
    const-string v1, "NetworkMonitorServiceConn"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_30

    goto :goto_c

    .line 119
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
    .line 153
    monitor-enter p0

    .line 154
    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1a

    if-nez v1, :cond_8

    .line 156
    :try_start_5
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_1a
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_f

    .line 161
    :cond_8
    :goto_8
    :try_start_8
    iget-object v1, p0, Lcom/google/android/music/NetworkMonitorServiceConnection;->mNetworkMonitor:Lcom/google/android/music/dl/INetworkMonitor;

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    :goto_d
    monitor-exit p0

    return v1

    .line 157
    :catch_f
    move-exception v0

    .line 158
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "NetworkMonitorServiceConn"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 162
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_1a
    move-exception v1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_1a

    throw v1

    .line 161
    :cond_1d
    const/4 v1, 0x0

    goto :goto_d
.end method
