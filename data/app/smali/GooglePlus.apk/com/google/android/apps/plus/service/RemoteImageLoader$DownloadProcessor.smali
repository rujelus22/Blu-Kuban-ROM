.class final Lcom/google/android/apps/plus/service/RemoteImageLoader$DownloadProcessor;
.super Ljava/lang/Object;
.source "RemoteImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/RemoteImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DownloadProcessor"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/service/RemoteImageLoader$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/RemoteImageLoader$DownloadProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 53
    const/16 v2, 0x13

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 56
    :goto_5
    invoke-static {}, Lcom/google/android/apps/plus/service/RemoteImageLoader;->access$100()Ljava/util/Stack;

    move-result-object v3

    monitor-enter v3

    .line 57
    :try_start_a
    invoke-static {}, Lcom/google/android/apps/plus/service/RemoteImageLoader;->access$100()Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 58
    monitor-exit v3

    return-void

    .line 61
    :cond_16
    invoke-static {}, Lcom/google/android/apps/plus/service/RemoteImageLoader;->access$100()Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/service/RemoteImageLoader$LoaderOperation;

    .line 62
    .local v1, op:Lcom/google/android/apps/plus/service/RemoteImageLoader$LoaderOperation;
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_3b

    .line 65
    iget-object v2, v1, Lcom/google/android/apps/plus/service/RemoteImageLoader$LoaderOperation;->mRequest:Lcom/google/android/apps/plus/content/ImageRequest;

    instance-of v2, v2, Lcom/google/android/apps/plus/content/LocalImageRequest;

    if-eqz v2, :cond_3e

    .line 66
    iget-object v3, v1, Lcom/google/android/apps/plus/service/RemoteImageLoader$LoaderOperation;->mContext:Landroid/content/Context;

    iget-object v2, v1, Lcom/google/android/apps/plus/service/RemoteImageLoader$LoaderOperation;->mRequest:Lcom/google/android/apps/plus/content/ImageRequest;

    check-cast v2, Lcom/google/android/apps/plus/content/LocalImageRequest;

    invoke-static {v3, v2}, Lcom/google/android/apps/plus/content/EsPhotosData;->loadLocalImageBytes(Landroid/content/Context;Lcom/google/android/apps/plus/content/LocalImageRequest;)[B

    move-result-object v0

    .line 72
    .local v0, imageBytes:[B
    :goto_31
    invoke-static {}, Lcom/google/android/apps/plus/service/RemoteImageLoader;->access$200()Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/apps/plus/service/RemoteImageLoader$LoaderOperation;->mRequest:Lcom/google/android/apps/plus/content/ImageRequest;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/apps/plus/service/ImageCache;->notifyRemoteImageChange(Lcom/google/android/apps/plus/content/ImageRequest;[B)V

    goto :goto_5

    .line 62
    .end local v0           #imageBytes:[B
    .end local v1           #op:Lcom/google/android/apps/plus/service/RemoteImageLoader$LoaderOperation;
    :catchall_3b
    move-exception v2

    :try_start_3c
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v2

    .line 69
    .restart local v1       #op:Lcom/google/android/apps/plus/service/RemoteImageLoader$LoaderOperation;
    :cond_3e
    iget-object v3, v1, Lcom/google/android/apps/plus/service/RemoteImageLoader$LoaderOperation;->mContext:Landroid/content/Context;

    iget-object v2, v1, Lcom/google/android/apps/plus/service/RemoteImageLoader$LoaderOperation;->mRequest:Lcom/google/android/apps/plus/content/ImageRequest;

    check-cast v2, Lcom/google/android/apps/plus/content/RemoteImageRequest;

    invoke-static {v3, v2}, Lcom/google/android/apps/plus/content/EsPhotosData;->loadRemoteImageBytes(Landroid/content/Context;Lcom/google/android/apps/plus/content/RemoteImageRequest;)[B

    move-result-object v0

    .restart local v0       #imageBytes:[B
    goto :goto_31
.end method
