.class final Lcom/google/android/youtube/core/transfer/m;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/transfer/TransfersExecutor;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/transfer/TransfersExecutor;Ljava/lang/Runnable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/m;->a:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/m;->a:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a(Lcom/google/android/youtube/core/transfer/TransfersExecutor;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 457
    :try_start_9
    invoke-super {p0}, Ljava/lang/Thread;->run()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_16

    .line 459
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/m;->a:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a(Lcom/google/android/youtube/core/transfer/TransfersExecutor;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 460
    return-void

    .line 459
    :catchall_16
    move-exception v0

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/m;->a:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a(Lcom/google/android/youtube/core/transfer/TransfersExecutor;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
