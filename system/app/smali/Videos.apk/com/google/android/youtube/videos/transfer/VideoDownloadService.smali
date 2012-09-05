.class public Lcom/google/android/youtube/videos/transfer/VideoDownloadService;
.super Lcom/google/android/youtube/core/transfer/DownloadService;
.source "VideoDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/transfer/VideoDownloadService$BootReceiver;
    }
.end annotation


# instance fields
.field private subtitlesClient:Lcom/google/android/youtube/core/client/SubtitlesClient;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/DownloadService;-><init>()V

    .line 42
    return-void
.end method

.method public static createIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 2
    .parameter "context"

    .prologue
    .line 34
    const-class v0, Lcom/google/android/youtube/videos/transfer/VideoDownloadService;

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/transfer/TransferService;->createIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected createTask(Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;Lcom/google/android/youtube/core/transfer/TransferTask$Listener;)Lcom/google/android/youtube/core/transfer/TransferTask;
    .registers 9
    .parameter "transfer"
    .parameter "listener"

    .prologue
    .line 39
    new-instance v0, Lcom/google/android/youtube/videos/transfer/VideoDownloadTask;

    iget-object v1, p0, Lcom/google/android/youtube/videos/transfer/VideoDownloadService;->subtitlesClient:Lcom/google/android/youtube/core/client/SubtitlesClient;

    invoke-virtual {p1}, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->getImmutable()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/videos/transfer/VideoDownloadTask;-><init>(Lcom/google/android/youtube/core/client/SubtitlesClient;Lcom/google/android/youtube/core/transfer/Transfer;Lcom/google/android/youtube/core/transfer/TransferTask$Listener;ZZ)V

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 28
    invoke-super {p0}, Lcom/google/android/youtube/core/transfer/DownloadService;->onCreate()V

    .line 29
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/transfer/VideoDownloadService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/VideosApplication;

    .line 30
    .local v0, videosApp:Lcom/google/android/youtube/videos/VideosApplication;
    invoke-virtual {v0}, Lcom/google/android/youtube/videos/VideosApplication;->getStoringSubtitlesClient()Lcom/google/android/youtube/core/client/SubtitlesClient;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/videos/transfer/VideoDownloadService;->subtitlesClient:Lcom/google/android/youtube/core/client/SubtitlesClient;

    .line 31
    return-void
.end method
