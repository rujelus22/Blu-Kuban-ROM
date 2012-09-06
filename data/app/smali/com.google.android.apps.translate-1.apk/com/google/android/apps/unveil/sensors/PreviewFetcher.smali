.class public Lcom/google/android/apps/unveil/sensors/PreviewFetcher;
.super Ljava/lang/Object;
.source "PreviewFetcher.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field protected final camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

.field private previewBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field protected final previewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private final size:Lcom/google/android/apps/unveil/env/Size;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;Landroid/hardware/Camera$PreviewCallback;Lcom/google/android/apps/unveil/env/Size;)V
    .registers 5
    .parameter "camera"
    .parameter "previewCallback"
    .parameter "size"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/PreviewFetcher;->previewBuffers:Ljava/util/ArrayList;

    .line 28
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/PreviewFetcher;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    .line 29
    iput-object p2, p0, Lcom/google/android/apps/unveil/sensors/PreviewFetcher;->previewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 30
    iput-object p3, p0, Lcom/google/android/apps/unveil/sensors/PreviewFetcher;->size:Lcom/google/android/apps/unveil/env/Size;

    .line 31
    return-void
.end method


# virtual methods
.method public addPreviewBuffer([B)V
    .registers 4
    .parameter "previewBuffer"

    .prologue
    .line 79
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/PreviewFetcher;->previewBuffers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 80
    :try_start_3
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/PreviewFetcher;->previewBuffers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    monitor-exit v1

    .line 82
    return-void

    .line 81
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method protected getPreviewBufferSize(Lcom/google/android/apps/unveil/env/Size;)I
    .registers 4
    .parameter "size"

    .prologue
    .line 70
    iget v0, p1, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget v1, p1, Lcom/google/android/apps/unveil/env/Size;->height:I

    invoke-static {v0, v1}, Lcom/google/android/apps/unveil/env/ImageUtils;->getYUVByteSize(II)I

    move-result v0

    return v0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 4
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/PreviewFetcher;->previewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-interface {v0, p1, p2}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    .line 87
    return-void
.end method

.method protected requestFrame()V
    .registers 6

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 48
    .local v1, buffer:[B
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/PreviewFetcher;->previewBuffers:Ljava/util/ArrayList;

    monitor-enter v3

    .line 50
    :try_start_4
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/PreviewFetcher;->previewBuffers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 51
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/PreviewFetcher;->size:Lcom/google/android/apps/unveil/env/Size;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/unveil/sensors/PreviewFetcher;->getPreviewBufferSize(Lcom/google/android/apps/unveil/env/Size;)I

    move-result v2

    new-array v1, v2, [B

    .line 55
    :goto_14
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_27

    .line 57
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/PreviewFetcher;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    invoke-interface {v2, v1}, Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;->addCallbackBuffer([B)V

    .line 58
    return-void

    .line 53
    :cond_1b
    :try_start_1b
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/PreviewFetcher;->previewBuffers:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [B

    move-object v1, v0

    goto :goto_14

    .line 55
    :catchall_27
    move-exception v2

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_27

    throw v2
.end method

.method protected start()V
    .registers 2

    .prologue
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/PreviewFetcher;->previewBuffers:Ljava/util/ArrayList;

    .line 38
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/PreviewFetcher;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    invoke-interface {v0, p0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 39
    return-void
.end method

.method protected stop()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 65
    iput-object v1, p0, Lcom/google/android/apps/unveil/sensors/PreviewFetcher;->previewBuffers:Ljava/util/ArrayList;

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/PreviewFetcher;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;

    invoke-interface {v0, v1}, Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 67
    return-void
.end method
