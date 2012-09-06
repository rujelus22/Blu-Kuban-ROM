.class Lcom/google/android/music/dl/DownloadTaskImpl$1;
.super Lcom/google/android/music/dl/IStreamabilityChangeListener$Stub;
.source "DownloadTaskImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/DownloadTaskImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/DownloadTaskImpl;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/DownloadTaskImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadTaskImpl$1;->this$0:Lcom/google/android/music/dl/DownloadTaskImpl;

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
    .line 494
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl$1;->this$0:Lcom/google/android/music/dl/DownloadTaskImpl;

    #getter for: Lcom/google/android/music/dl/DownloadTaskImpl;->mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/google/android/music/dl/DownloadTaskImpl;->access$000(Lcom/google/android/music/dl/DownloadTaskImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eq v0, p1, :cond_2f

    .line 495
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl$1;->this$0:Lcom/google/android/music/dl/DownloadTaskImpl;

    #getter for: Lcom/google/android/music/dl/DownloadTaskImpl;->mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/google/android/music/dl/DownloadTaskImpl;->access$000(Lcom/google/android/music/dl/DownloadTaskImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 496
    :try_start_13
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl$1;->this$0:Lcom/google/android/music/dl/DownloadTaskImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #setter for: Lcom/google/android/music/dl/DownloadTaskImpl;->mStreamingEnabledChangedTime:J
    invoke-static {v0, v2, v3}, Lcom/google/android/music/dl/DownloadTaskImpl;->access$102(Lcom/google/android/music/dl/DownloadTaskImpl;J)J

    .line 497
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl$1;->this$0:Lcom/google/android/music/dl/DownloadTaskImpl;

    #getter for: Lcom/google/android/music/dl/DownloadTaskImpl;->mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/google/android/music/dl/DownloadTaskImpl;->access$000(Lcom/google/android/music/dl/DownloadTaskImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 498
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadTaskImpl$1;->this$0:Lcom/google/android/music/dl/DownloadTaskImpl;

    #getter for: Lcom/google/android/music/dl/DownloadTaskImpl;->mStreamingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/google/android/music/dl/DownloadTaskImpl;->access$000(Lcom/google/android/music/dl/DownloadTaskImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 499
    monitor-exit v1

    .line 501
    :cond_2f
    return-void

    .line 499
    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_13 .. :try_end_32} :catchall_30

    throw v0
.end method
