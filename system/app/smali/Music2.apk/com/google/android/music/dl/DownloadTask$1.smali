.class Lcom/google/android/music/dl/DownloadTask$1;
.super Lcom/google/android/music/dl/IStreamabilityChangeListener$Stub;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/DownloadTask;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/DownloadTask;)V
    .registers 2
    .parameter

    .prologue
    .line 464
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadTask$1;->this$0:Lcom/google/android/music/dl/DownloadTask;

    invoke-direct {p0}, Lcom/google/android/music/dl/IStreamabilityChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamabilityChanged(Z)V
    .registers 6
    .parameter "isStreamable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTask$1;->this$0:Lcom/google/android/music/dl/DownloadTask;

    #getter for: Lcom/google/android/music/dl/DownloadTask;->mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/google/android/music/dl/DownloadTask;->access$000(Lcom/google/android/music/dl/DownloadTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eq v0, p1, :cond_2f

    .line 469
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTask$1;->this$0:Lcom/google/android/music/dl/DownloadTask;

    #getter for: Lcom/google/android/music/dl/DownloadTask;->mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/google/android/music/dl/DownloadTask;->access$000(Lcom/google/android/music/dl/DownloadTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 470
    :try_start_13
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTask$1;->this$0:Lcom/google/android/music/dl/DownloadTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #setter for: Lcom/google/android/music/dl/DownloadTask;->mStreamingEnabledChangedTime:J
    invoke-static {v0, v2, v3}, Lcom/google/android/music/dl/DownloadTask;->access$102(Lcom/google/android/music/dl/DownloadTask;J)J

    .line 471
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTask$1;->this$0:Lcom/google/android/music/dl/DownloadTask;

    #getter for: Lcom/google/android/music/dl/DownloadTask;->mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/google/android/music/dl/DownloadTask;->access$000(Lcom/google/android/music/dl/DownloadTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 472
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTask$1;->this$0:Lcom/google/android/music/dl/DownloadTask;

    #getter for: Lcom/google/android/music/dl/DownloadTask;->mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/google/android/music/dl/DownloadTask;->access$000(Lcom/google/android/music/dl/DownloadTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 473
    monitor-exit v1

    .line 475
    :cond_2f
    return-void

    .line 473
    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_13 .. :try_end_32} :catchall_30

    throw v0
.end method
