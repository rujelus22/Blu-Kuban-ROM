.class Lcom/google/android/finsky/download/DownloadQueueImpl$7$1;
.super Ljava/lang/Object;
.source "DownloadQueueImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/download/DownloadQueueImpl$7;->run(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/download/DownloadQueueImpl$7;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/download/DownloadQueueImpl$7;Landroid/net/Uri;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$7$1;->this$1:Lcom/google/android/finsky/download/DownloadQueueImpl$7;

    iput-object p2, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$7$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 558
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$7$1;->this$1:Lcom/google/android/finsky/download/DownloadQueueImpl$7;

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadQueueImpl$7;->val$download:Lcom/google/android/finsky/download/InternalDownload;

    invoke-interface {v0}, Lcom/google/android/finsky/download/InternalDownload;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 559
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$7$1;->this$1:Lcom/google/android/finsky/download/DownloadQueueImpl$7;

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadQueueImpl$7;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    #getter for: Lcom/google/android/finsky/download/DownloadQueueImpl;->mDownloadManager:Lcom/google/android/finsky/download/DownloadManager;
    invoke-static {v0}, Lcom/google/android/finsky/download/DownloadQueueImpl;->access$800(Lcom/google/android/finsky/download/DownloadQueueImpl;)Lcom/google/android/finsky/download/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$7$1;->val$uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/download/DownloadManager;->remove(Landroid/net/Uri;)V

    .line 564
    :goto_17
    return-void

    .line 562
    :cond_18
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$7$1;->this$1:Lcom/google/android/finsky/download/DownloadQueueImpl$7;

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadQueueImpl$7;->val$download:Lcom/google/android/finsky/download/InternalDownload;

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$7$1;->val$uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/download/InternalDownload;->setContentUri(Landroid/net/Uri;)V

    .line 563
    iget-object v0, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$7$1;->this$1:Lcom/google/android/finsky/download/DownloadQueueImpl$7;

    iget-object v0, v0, Lcom/google/android/finsky/download/DownloadQueueImpl$7;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$7$1;->this$1:Lcom/google/android/finsky/download/DownloadQueueImpl$7;

    iget-object v1, v1, Lcom/google/android/finsky/download/DownloadQueueImpl$7;->val$download:Lcom/google/android/finsky/download/InternalDownload;

    sget-object v2, Lcom/google/android/finsky/download/Download$DownloadState;->DOWNLOADING:Lcom/google/android/finsky/download/Download$DownloadState;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/download/DownloadQueueImpl;->setDownloadState(Lcom/google/android/finsky/download/InternalDownload;Lcom/google/android/finsky/download/Download$DownloadState;)V

    goto :goto_17
.end method
