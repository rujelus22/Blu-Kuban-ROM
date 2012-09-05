.class Lcom/google/android/finsky/download/DownloadQueueImpl$9;
.super Ljava/lang/Object;
.source "DownloadQueueImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/download/DownloadQueueImpl;->remove(Lcom/google/android/finsky/download/InternalDownload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

.field final synthetic val$download:Lcom/google/android/finsky/download/InternalDownload;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/InternalDownload;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$9;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    iput-object p2, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$9;->val$download:Lcom/google/android/finsky/download/InternalDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 411
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$9;->val$download:Lcom/google/android/finsky/download/InternalDownload;

    invoke-interface {v1}, Lcom/google/android/finsky/download/InternalDownload;->internalGetContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 413
    .local v0, contentUri:Landroid/net/Uri;
    if-eqz v0, :cond_15

    .line 414
    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$9;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    #getter for: Lcom/google/android/finsky/download/DownloadQueueImpl;->mUriUrlMap:Lcom/google/android/finsky/download/DownloadUriUrlMap;
    invoke-static {v1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->access$100(Lcom/google/android/finsky/download/DownloadQueueImpl;)Lcom/google/android/finsky/download/DownloadUriUrlMap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/download/DownloadUriUrlMap;->remove(Ljava/lang/String;)V

    .line 416
    :cond_15
    return-void
.end method
