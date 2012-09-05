.class final Lcom/google/android/apps/plus/service/ImageDownloader$DownloadProcessor;
.super Ljava/lang/Object;
.source "ImageDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DownloadProcessor"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/service/ImageDownloader$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/ImageDownloader$DownloadProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 32
    const/16 v1, 0x13

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 35
    :goto_5
    invoke-static {}, Lcom/google/android/apps/plus/service/ImageDownloader;->access$000()Ljava/util/Stack;

    move-result-object v2

    monitor-enter v2

    .line 36
    :try_start_a
    invoke-static {}, Lcom/google/android/apps/plus/service/ImageDownloader;->access$000()Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 37
    monitor-exit v2

    return-void

    .line 40
    :cond_16
    invoke-static {}, Lcom/google/android/apps/plus/service/ImageDownloader;->access$000()Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/api/DownloadImageOperation;

    .line 41
    .local v0, op:Lcom/google/android/apps/plus/api/DownloadImageOperation;
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_31

    .line 43
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/DownloadImageOperation;->start()V

    .line 45
    invoke-static {}, Lcom/google/android/apps/plus/service/ImageDownloader;->access$100()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/plus/service/ImageDownloader$DownloadProcessor$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/apps/plus/service/ImageDownloader$DownloadProcessor$1;-><init>(Lcom/google/android/apps/plus/service/ImageDownloader$DownloadProcessor;Lcom/google/android/apps/plus/api/DownloadImageOperation;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 41
    .end local v0           #op:Lcom/google/android/apps/plus/api/DownloadImageOperation;
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1
.end method
