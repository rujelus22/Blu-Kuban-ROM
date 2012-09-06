.class Lcom/google/android/music/athome/AtHomeDevicePlayback$10;
.super Ljava/lang/Object;
.source "AtHomeDevicePlayback.java"

# interfaces
.implements Landroid/support/place/rpc/RpcErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeDevicePlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V
    .registers 2
    .parameter

    .prologue
    .line 1665
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$10;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/support/place/rpc/RpcError;)V
    .registers 5
    .parameter "error"

    .prologue
    .line 1667
    const-string v0, "aah.Music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fatal RPC error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$10;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    monitor-enter v1

    .line 1669
    :try_start_1f
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$10;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector;

    move-result-object v0

    if-nez v0, :cond_29

    .line 1671
    monitor-exit v1

    .line 1676
    :goto_28
    return-void

    .line 1673
    :cond_29
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$10;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    const/16 v2, 0x138c

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->onFatalErrorLocked(I)V
    invoke-static {v0, v2}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$4400(Lcom/google/android/music/athome/AtHomeDevicePlayback;I)V

    .line 1674
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_37

    .line 1675
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$10;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyFailure()V

    goto :goto_28

    .line 1674
    :catchall_37
    move-exception v0

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v0
.end method
