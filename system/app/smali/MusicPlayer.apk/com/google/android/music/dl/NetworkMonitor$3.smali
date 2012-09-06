.class Lcom/google/android/music/dl/NetworkMonitor$3;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/NetworkMonitor;)V
    .registers 2
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/google/android/music/dl/NetworkMonitor$3;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 379
    iget-object v3, p0, Lcom/google/android/music/dl/NetworkMonitor$3;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mNetworkChangeListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/google/android/music/dl/NetworkMonitor;->access$2100(Lcom/google/android/music/dl/NetworkMonitor;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    monitor-enter v4

    .line 381
    :try_start_7
    iget-object v3, p0, Lcom/google/android/music/dl/NetworkMonitor$3;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mNetworkChangeListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/google/android/music/dl/NetworkMonitor;->access$2100(Lcom/google/android/music/dl/NetworkMonitor;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 383
    .local v1, i:I
    :goto_11
    if-lez v1, :cond_5f

    .line 384
    add-int/lit8 v1, v1, -0x1

    .line 385
    iget-object v3, p0, Lcom/google/android/music/dl/NetworkMonitor$3;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mNetworkChangeListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/google/android/music/dl/NetworkMonitor;->access$2100(Lcom/google/android/music/dl/NetworkMonitor;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/dl/INetworkChangeListener;
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_5a

    .line 387
    .local v2, listener:Lcom/google/android/music/dl/INetworkChangeListener;
    :try_start_21
    iget-object v3, p0, Lcom/google/android/music/dl/NetworkMonitor$3;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mMobileConnected:Z
    invoke-static {v3}, Lcom/google/android/music/dl/NetworkMonitor;->access$400(Lcom/google/android/music/dl/NetworkMonitor;)Z

    move-result v5

    iget-object v3, p0, Lcom/google/android/music/dl/NetworkMonitor$3;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mWifiConnected:Z
    invoke-static {v3}, Lcom/google/android/music/dl/NetworkMonitor;->access$600(Lcom/google/android/music/dl/NetworkMonitor;)Z

    move-result v3

    if-nez v3, :cond_37

    iget-object v3, p0, Lcom/google/android/music/dl/NetworkMonitor$3;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mEthernetConnected:Z
    invoke-static {v3}, Lcom/google/android/music/dl/NetworkMonitor;->access$800(Lcom/google/android/music/dl/NetworkMonitor;)Z

    move-result v3

    if-eqz v3, :cond_5d

    :cond_37
    const/4 v3, 0x1

    :goto_38
    invoke-interface {v2, v5, v3}, Lcom/google/android/music/dl/INetworkChangeListener;->onNetworkChanged(ZZ)V
    :try_end_3b
    .catchall {:try_start_21 .. :try_end_3b} :catchall_5a
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_3b} :catch_3c

    goto :goto_11

    .line 389
    :catch_3c
    move-exception v0

    .line 390
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3d
    const-string v3, "NetworkMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error trying to notify NetworkChangeListener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Lcom/google/android/music/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    .line 395
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #listener:Lcom/google/android/music/dl/INetworkChangeListener;
    :catchall_5a
    move-exception v3

    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_3d .. :try_end_5c} :catchall_5a

    throw v3

    .line 387
    .restart local v1       #i:I
    .restart local v2       #listener:Lcom/google/android/music/dl/INetworkChangeListener;
    :cond_5d
    const/4 v3, 0x0

    goto :goto_38

    .line 394
    .end local v2           #listener:Lcom/google/android/music/dl/INetworkChangeListener;
    :cond_5f
    :try_start_5f
    iget-object v3, p0, Lcom/google/android/music/dl/NetworkMonitor$3;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mNetworkChangeListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/google/android/music/dl/NetworkMonitor;->access$2100(Lcom/google/android/music/dl/NetworkMonitor;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 395
    monitor-exit v4
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_5a

    .line 396
    return-void
.end method
