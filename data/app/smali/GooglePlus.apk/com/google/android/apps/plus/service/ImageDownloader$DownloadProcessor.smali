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
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/service/ImageDownloader$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/ImageDownloader$DownloadProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 41
    const/16 v1, 0x13

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 45
    :goto_5
    invoke-static {}, Lcom/google/android/apps/plus/service/ImageDownloader;->access$100()Ljava/util/Stack;

    move-result-object v6

    monitor-enter v6

    .line 46
    :try_start_a
    invoke-static {}, Lcom/google/android/apps/plus/service/ImageDownloader;->access$100()Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 47
    monitor-exit v6

    return-void

    .line 50
    :cond_16
    invoke-static {}, Lcom/google/android/apps/plus/service/ImageDownloader;->access$100()Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/content/MediaImageRequest;

    .line 51
    .local v3, request:Lcom/google/android/apps/plus/content/MediaImageRequest;
    new-instance v0, Lcom/google/android/apps/plus/api/DownloadImageOperation;

    invoke-static {}, Lcom/google/android/apps/plus/service/ImageDownloader;->access$200()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/google/android/apps/plus/service/ImageDownloader;->access$300()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/api/DownloadImageOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/content/MediaImageRequest;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 52
    .local v0, op:Lcom/google/android/apps/plus/api/DownloadImageOperation;
    monitor-exit v6
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_44

    .line 54
    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/DownloadImageOperation;->start()V

    .line 55
    invoke-static {}, Lcom/google/android/apps/plus/service/ImageDownloader;->access$100()Ljava/util/Stack;

    move-result-object v2

    monitor-enter v2

    .line 56
    :try_start_38
    invoke-static {}, Lcom/google/android/apps/plus/service/ImageDownloader;->access$400()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 57
    monitor-exit v2

    goto :goto_5

    :catchall_41
    move-exception v1

    monitor-exit v2
    :try_end_43
    .catchall {:try_start_38 .. :try_end_43} :catchall_41

    throw v1

    .line 52
    .end local v0           #op:Lcom/google/android/apps/plus/api/DownloadImageOperation;
    .end local v3           #request:Lcom/google/android/apps/plus/content/MediaImageRequest;
    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v6
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v1
.end method
