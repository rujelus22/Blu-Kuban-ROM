.class Lcom/google/android/music/dl/NetworkMonitor$NotifyListenersStreamabilityChangedRunnable;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyListenersStreamabilityChangedRunnable"
.end annotation


# instance fields
.field private final mIsStreamable:Z

.field final synthetic this$0:Lcom/google/android/music/dl/NetworkMonitor;


# direct methods
.method public constructor <init>(Lcom/google/android/music/dl/NetworkMonitor;Z)V
    .registers 3
    .parameter
    .parameter "isStreamable"

    .prologue
    .line 366
    iput-object p1, p0, Lcom/google/android/music/dl/NetworkMonitor$NotifyListenersStreamabilityChangedRunnable;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-boolean p2, p0, Lcom/google/android/music/dl/NetworkMonitor$NotifyListenersStreamabilityChangedRunnable;->mIsStreamable:Z

    .line 368
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 372
    iget-object v3, p0, Lcom/google/android/music/dl/NetworkMonitor$NotifyListenersStreamabilityChangedRunnable;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mStreamabilityListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/google/android/music/dl/NetworkMonitor;->access$2000(Lcom/google/android/music/dl/NetworkMonitor;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    monitor-enter v4

    .line 374
    :try_start_7
    iget-object v3, p0, Lcom/google/android/music/dl/NetworkMonitor$NotifyListenersStreamabilityChangedRunnable;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mStreamabilityListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/google/android/music/dl/NetworkMonitor;->access$2000(Lcom/google/android/music/dl/NetworkMonitor;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 375
    .local v1, i:I
    :goto_11
    if-lez v1, :cond_48

    .line 376
    add-int/lit8 v1, v1, -0x1

    .line 377
    iget-object v3, p0, Lcom/google/android/music/dl/NetworkMonitor$NotifyListenersStreamabilityChangedRunnable;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mStreamabilityListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/google/android/music/dl/NetworkMonitor;->access$2000(Lcom/google/android/music/dl/NetworkMonitor;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/dl/IStreamabilityChangeListener;
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_45

    .line 380
    .local v2, listener:Lcom/google/android/music/dl/IStreamabilityChangeListener;
    :try_start_21
    iget-boolean v3, p0, Lcom/google/android/music/dl/NetworkMonitor$NotifyListenersStreamabilityChangedRunnable;->mIsStreamable:Z

    invoke-interface {v2, v3}, Lcom/google/android/music/dl/IStreamabilityChangeListener;->onStreamabilityChanged(Z)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_45
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_27

    goto :goto_11

    .line 381
    :catch_27
    move-exception v0

    .line 382
    .local v0, e:Landroid/os/RemoteException;
    :try_start_28
    const-string v3, "NetworkMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error trying to notify StreamabilityListener: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 387
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #listener:Lcom/google/android/music/dl/IStreamabilityChangeListener;
    :catchall_45
    move-exception v3

    monitor-exit v4
    :try_end_47
    .catchall {:try_start_28 .. :try_end_47} :catchall_45

    throw v3

    .line 386
    .restart local v1       #i:I
    :cond_48
    :try_start_48
    iget-object v3, p0, Lcom/google/android/music/dl/NetworkMonitor$NotifyListenersStreamabilityChangedRunnable;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    #getter for: Lcom/google/android/music/dl/NetworkMonitor;->mStreamabilityListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/google/android/music/dl/NetworkMonitor;->access$2000(Lcom/google/android/music/dl/NetworkMonitor;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 387
    monitor-exit v4
    :try_end_52
    .catchall {:try_start_48 .. :try_end_52} :catchall_45

    .line 388
    return-void
.end method
