.class Lcom/google/android/music/dl/artwork/ArtDownloadService$5;
.super Lcom/google/android/music/dl/IStreamabilityChangeListener$Stub;
.source "ArtDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/artwork/ArtDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/artwork/ArtDownloadService;)V
    .registers 2
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$5;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;

    invoke-direct {p0}, Lcom/google/android/music/dl/IStreamabilityChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamabilityChanged(Z)V
    .registers 5
    .parameter "isStreamable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 331
    if-eqz p1, :cond_d

    .line 332
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/dl/artwork/ArtDownloadService$5$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService$5$1;-><init>(Lcom/google/android/music/dl/artwork/ArtDownloadService$5;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 345
    :goto_c
    return-void

    .line 338
    :cond_d
    iget-object v1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$5;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;

    monitor-enter v1

    .line 339
    :try_start_10
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$5;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;

    #getter for: Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;
    invoke-static {v0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->access$100(Lcom/google/android/music/dl/artwork/ArtDownloadService;)Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 340
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$5;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;

    #getter for: Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;
    invoke-static {v0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->access$100(Lcom/google/android/music/dl/artwork/ArtDownloadService;)Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->shutdownNow()Ljava/util/List;

    .line 341
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$5;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/music/dl/artwork/ArtDownloadService;->mArtExecutor:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;
    invoke-static {v0, v2}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->access$102(Lcom/google/android/music/dl/artwork/ArtDownloadService;Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;)Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    .line 343
    :cond_27
    monitor-exit v1

    goto :goto_c

    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_29

    throw v0
.end method
