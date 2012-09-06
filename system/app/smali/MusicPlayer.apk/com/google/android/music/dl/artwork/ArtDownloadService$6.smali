.class Lcom/google/android/music/dl/artwork/ArtDownloadService$6;
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
    .line 620
    iput-object p1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$6;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;

    invoke-direct {p0}, Lcom/google/android/music/dl/IStreamabilityChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamabilityChanged(Z)V
    .registers 4
    .parameter "isStreamable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 624
    if-eqz p1, :cond_d

    .line 625
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/dl/artwork/ArtDownloadService$6$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/dl/artwork/ArtDownloadService$6$1;-><init>(Lcom/google/android/music/dl/artwork/ArtDownloadService$6;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 633
    :goto_c
    return-void

    .line 631
    :cond_d
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadService$6;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadService;

    #calls: Lcom/google/android/music/dl/artwork/ArtDownloadService;->shutdownArtExecutorNow()V
    invoke-static {v0}, Lcom/google/android/music/dl/artwork/ArtDownloadService;->access$200(Lcom/google/android/music/dl/artwork/ArtDownloadService;)V

    goto :goto_c
.end method
