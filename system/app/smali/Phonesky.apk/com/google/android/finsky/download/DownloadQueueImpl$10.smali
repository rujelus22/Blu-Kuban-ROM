.class Lcom/google/android/finsky/download/DownloadQueueImpl$10;
.super Ljava/lang/Object;
.source "DownloadQueueImpl.java"

# interfaces
.implements Lcom/google/android/finsky/utils/ParameterizedRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/download/DownloadQueueImpl;->enqueueDownload(Lcom/google/android/finsky/download/InternalDownload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/finsky/utils/ParameterizedRunnable",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$download:Lcom/google/android/finsky/download/InternalDownload;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Landroid/content/Context;Lcom/google/android/finsky/download/InternalDownload;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 678
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$10;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    iput-object p2, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$10;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$10;->val$download:Lcom/google/android/finsky/download/InternalDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/net/Uri;)V
    .registers 4
    .parameter "uri"

    .prologue
    .line 683
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$10;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/finsky/download/DownloadQueueImpl$10$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl$10$1;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl$10;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 699
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 678
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl$10;->run(Landroid/net/Uri;)V

    return-void
.end method
