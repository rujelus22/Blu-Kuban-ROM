.class Lcom/google/android/finsky/download/DownloadQueueImpl$PurgeCacheCallback;
.super Ljava/lang/Object;
.source "DownloadQueueImpl.java"

# interfaces
.implements Lcom/google/android/finsky/utils/PackageManagerUtils$FreeSpaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/download/DownloadQueueImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PurgeCacheCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/download/DownloadQueueImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$PurgeCacheCallback;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadQueueImpl$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 496
    invoke-direct {p0, p1}, Lcom/google/android/finsky/download/DownloadQueueImpl$PurgeCacheCallback;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;)V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .registers 6
    .parameter "success"

    .prologue
    .line 500
    if-nez p1, :cond_a

    .line 501
    const-string v0, "Could not free required amount of space for download"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    :cond_a
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$PurgeCacheCallback;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    #getter for: Lcom/google/android/finsky/download/DownloadQueueImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/finsky/download/DownloadQueueImpl;->access$600(Lcom/google/android/finsky/download/DownloadQueueImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;

    iget-object v2, p0, Lcom/google/android/finsky/download/DownloadQueueImpl$PurgeCacheCallback;->this$0:Lcom/google/android/finsky/download/DownloadQueueImpl;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/finsky/download/DownloadQueueImpl$StartNextDownloadRunnable;-><init>(Lcom/google/android/finsky/download/DownloadQueueImpl;Lcom/google/android/finsky/download/DownloadQueueImpl$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 504
    return-void
.end method
