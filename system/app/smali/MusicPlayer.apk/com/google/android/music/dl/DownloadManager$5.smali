.class Lcom/google/android/music/dl/DownloadManager$5;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/dl/DownloadManager;->startAsyncDownloads()V
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
    .line 462
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadManager$5;->this$0:Lcom/google/android/music/dl/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager$5;->this$0:Lcom/google/android/music/dl/DownloadManager;

    invoke-virtual {v0}, Lcom/google/android/music/dl/DownloadManager;->notifyQueueComplete()V

    .line 465
    return-void
.end method
