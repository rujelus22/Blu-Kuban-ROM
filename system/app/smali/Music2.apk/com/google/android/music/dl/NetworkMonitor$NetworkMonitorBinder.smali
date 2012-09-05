.class Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;
.super Lcom/google/android/music/dl/INetworkMonitor$Stub;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkMonitorBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/google/android/music/dl/NetworkMonitor;)V
    .registers 2
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    invoke-direct {p0}, Lcom/google/android/music/dl/INetworkMonitor$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/dl/NetworkMonitor;Lcom/google/android/music/dl/NetworkMonitor$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 428
    invoke-direct {p0, p1}, Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;-><init>(Lcom/google/android/music/dl/NetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public hasHighSpeedConnection()Z
    .registers 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mWifiConnected:Z
    invoke-static {v0}, Lcom/google/android/music/dl/NetworkMonitor;->access$500(Lcom/google/android/music/dl/NetworkMonitor;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mEthernetConnected:Z
    invoke-static {v0}, Lcom/google/android/music/dl/NetworkMonitor;->access$700(Lcom/google/android/music/dl/NetworkMonitor;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public hasMobileConnection()Z
    .registers 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mMobileConnected:Z
    invoke-static {v0}, Lcom/google/android/music/dl/NetworkMonitor;->access$300(Lcom/google/android/music/dl/NetworkMonitor;)Z

    move-result v0

    return v0
.end method

.method public hasWifiConnection()Z
    .registers 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mWifiConnected:Z
    invoke-static {v0}, Lcom/google/android/music/dl/NetworkMonitor;->access$500(Lcom/google/android/music/dl/NetworkMonitor;)Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mMobileConnected:Z
    invoke-static {v0}, Lcom/google/android/music/dl/NetworkMonitor;->access$300(Lcom/google/android/music/dl/NetworkMonitor;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mWifiConnected:Z
    invoke-static {v0}, Lcom/google/android/music/dl/NetworkMonitor;->access$500(Lcom/google/android/music/dl/NetworkMonitor;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mEthernetConnected:Z
    invoke-static {v0}, Lcom/google/android/music/dl/NetworkMonitor;->access$700(Lcom/google/android/music/dl/NetworkMonitor;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public isStreamingAvailable()Z
    .registers 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mIsStreamingAvailable:Z
    invoke-static {v0}, Lcom/google/android/music/dl/NetworkMonitor;->access$1800(Lcom/google/android/music/dl/NetworkMonitor;)Z

    move-result v0

    return v0
.end method

.method public registerNetworkChangeListener(Lcom/google/android/music/dl/INetworkChangeListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    .line 448
    iget-object v1, p0, Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mNetworkChangeListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v1}, Lcom/google/android/music/dl/NetworkMonitor;->access$2100(Lcom/google/android/music/dl/NetworkMonitor;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    monitor-enter v2

    .line 449
    :try_start_7
    iget-object v1, p0, Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mNetworkChangeListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v1}, Lcom/google/android/music/dl/NetworkMonitor;->access$2100(Lcom/google/android/music/dl/NetworkMonitor;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 450
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_2c

    .line 452
    :try_start_11
    iget-object v1, p0, Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mMobileConnected:Z
    invoke-static {v1}, Lcom/google/android/music/dl/NetworkMonitor;->access$300(Lcom/google/android/music/dl/NetworkMonitor;)Z

    move-result v2

    iget-object v1, p0, Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mWifiConnected:Z
    invoke-static {v1}, Lcom/google/android/music/dl/NetworkMonitor;->access$500(Lcom/google/android/music/dl/NetworkMonitor;)Z

    move-result v1

    if-nez v1, :cond_27

    iget-object v1, p0, Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mEthernetConnected:Z
    invoke-static {v1}, Lcom/google/android/music/dl/NetworkMonitor;->access$700(Lcom/google/android/music/dl/NetworkMonitor;)Z

    move-result v1

    if-eqz v1, :cond_2f

    :cond_27
    const/4 v1, 0x1

    :goto_28
    invoke-interface {p1, v2, v1}, Lcom/google/android/music/dl/INetworkChangeListener;->onNetworkChanged(ZZ)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_2b} :catch_31

    .line 456
    :goto_2b
    return-void

    .line 450
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1

    .line 452
    :cond_2f
    const/4 v1, 0x0

    goto :goto_28

    .line 453
    :catch_31
    move-exception v0

    .line 454
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "NetworkMonitor"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b
.end method

.method public registerStreamabilityChangeListener(Lcom/google/android/music/dl/IStreamabilityChangeListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    .line 437
    iget-object v1, p0, Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mStreamabilityListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v1}, Lcom/google/android/music/dl/NetworkMonitor;->access$2000(Lcom/google/android/music/dl/NetworkMonitor;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    monitor-enter v2

    .line 438
    :try_start_7
    iget-object v1, p0, Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mStreamabilityListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v1}, Lcom/google/android/music/dl/NetworkMonitor;->access$2000(Lcom/google/android/music/dl/NetworkMonitor;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 439
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_1b

    .line 441
    :try_start_11
    iget-object v1, p0, Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mIsStreamingAvailable:Z
    invoke-static {v1}, Lcom/google/android/music/dl/NetworkMonitor;->access$1800(Lcom/google/android/music/dl/NetworkMonitor;)Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/google/android/music/dl/IStreamabilityChangeListener;->onStreamabilityChanged(Z)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1a} :catch_1e

    .line 445
    :goto_1a
    return-void

    .line 439
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1

    .line 442
    :catch_1e
    move-exception v0

    .line 443
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "NetworkMonitor"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a
.end method

.method public unregisterNetworkChangeListener(Lcom/google/android/music/dl/INetworkChangeListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mNetworkChangeListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/google/android/music/dl/NetworkMonitor;->access$2100(Lcom/google/android/music/dl/NetworkMonitor;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    monitor-enter v1

    .line 460
    :try_start_7
    iget-object v0, p0, Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mNetworkChangeListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/google/android/music/dl/NetworkMonitor;->access$2100(Lcom/google/android/music/dl/NetworkMonitor;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 461
    monitor-exit v1

    .line 462
    return-void

    .line 461
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public unregisterStreamabilityChangeListener(Lcom/google/android/music/dl/IStreamabilityChangeListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mStreamabilityListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/google/android/music/dl/NetworkMonitor;->access$2000(Lcom/google/android/music/dl/NetworkMonitor;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    monitor-enter v1

    .line 432
    :try_start_7
    iget-object v0, p0, Lcom/google/android/music/dl/NetworkMonitor$NetworkMonitorBinder;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mStreamabilityListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/google/android/music/dl/NetworkMonitor;->access$2000(Lcom/google/android/music/dl/NetworkMonitor;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 433
    monitor-exit v1

    .line 434
    return-void

    .line 433
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v0
.end method
