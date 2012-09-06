.class Lcom/google/android/music/dl/DownloadManager$6;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/dl/DownloadManager;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/DownloadManager;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/DownloadManager;)V
    .registers 2
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadManager$6;->this$0:Lcom/google/android/music/dl/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager$6;->this$0:Lcom/google/android/music/dl/DownloadManager;

    iget-object v0, v0, Lcom/google/android/music/dl/DownloadManager;->mDownloader:Lcom/google/android/music/dl/DownloadQueueManager;

    invoke-interface {v0}, Lcom/google/android/music/dl/DownloadQueueManager;->cancelAll()V

    .line 473
    return-void
.end method
