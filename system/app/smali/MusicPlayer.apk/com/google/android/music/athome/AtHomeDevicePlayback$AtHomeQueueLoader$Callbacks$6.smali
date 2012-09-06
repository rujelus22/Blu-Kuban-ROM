.class Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$6;
.super Ljava/lang/Object;
.source "AtHomeDevicePlayback.java"

# interfaces
.implements Landroid/support/place/rpc/RpcErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;)V
    .registers 2
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$6;->this$2:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/support/place/rpc/RpcError;)V
    .registers 6
    .parameter "error"

    .prologue
    .line 289
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$6;->this$2:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    monitor-enter v1

    .line 290
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$6;->this$2:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->mIgnore:Z
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->access$000(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 292
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$6;->this$2:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->this$1:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->reset()V
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->access$1000(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;)V

    .line 293
    const-string v0, "aah.Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RPC error when loading queue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$6;->this$2:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->this$1:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    monitor-enter v2
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_6e

    .line 295
    :try_start_35
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$6;->this$2:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->this$1:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector;

    move-result-object v0

    if-nez v0, :cond_44

    .line 297
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_71

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_6e

    .line 306
    :goto_43
    return-void

    .line 299
    :cond_44
    :try_start_44
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$6;->this$2:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->this$1:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    const/4 v3, 0x1

    #setter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeError:Z
    invoke-static {v0, v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$1102(Lcom/google/android/music/athome/AtHomeDevicePlayback;Z)Z

    .line 300
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$6;->this$2:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->this$1:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    const/16 v3, 0x138c

    #setter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeErrorType:I
    invoke-static {v0, v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$1202(Lcom/google/android/music/athome/AtHomeDevicePlayback;I)I

    .line 301
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$6;->this$2:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->this$1:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->onNonFatalErrorLocked()V
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$1300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    .line 302
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_44 .. :try_end_63} :catchall_71

    .line 303
    :try_start_63
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks$6;->this$2:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->this$1:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyFailure()V

    .line 305
    :cond_6c
    monitor-exit v1

    goto :goto_43

    :catchall_6e
    move-exception v0

    monitor-exit v1
    :try_end_70
    .catchall {:try_start_63 .. :try_end_70} :catchall_6e

    throw v0

    .line 302
    :catchall_71
    move-exception v0

    :try_start_72
    monitor-exit v2
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    :try_start_73
    throw v0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_6e
.end method
