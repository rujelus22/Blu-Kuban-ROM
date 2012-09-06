.class public Lcom/google/android/music/download/DownloadQueueService;
.super Landroid/app/Service;
.source "DownloadQueueService.java"


# instance fields
.field private volatile mDownloadQueueManager:Lcom/google/android/music/download/DownloadQueueManagerImpl;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/music/download/DownloadQueueService;->mDownloadQueueManager:Lcom/google/android/music/download/DownloadQueueManagerImpl;

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 20
    new-instance v0, Lcom/google/android/music/download/DownloadQueueManagerImpl;

    invoke-direct {v0, p0}, Lcom/google/android/music/download/DownloadQueueManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/music/download/DownloadQueueService;->mDownloadQueueManager:Lcom/google/android/music/download/DownloadQueueManagerImpl;

    .line 21
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/music/download/DownloadQueueService;->mDownloadQueueManager:Lcom/google/android/music/download/DownloadQueueManagerImpl;

    if-eqz v0, :cond_9

    .line 26
    iget-object v0, p0, Lcom/google/android/music/download/DownloadQueueService;->mDownloadQueueManager:Lcom/google/android/music/download/DownloadQueueManagerImpl;

    invoke-virtual {v0}, Lcom/google/android/music/download/DownloadQueueManagerImpl;->onDestroy()V

    .line 28
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/download/DownloadQueueService;->mDownloadQueueManager:Lcom/google/android/music/download/DownloadQueueManagerImpl;

    .line 29
    return-void
.end method
