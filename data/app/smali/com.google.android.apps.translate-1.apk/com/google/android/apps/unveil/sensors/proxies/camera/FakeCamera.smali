.class public abstract Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;
.super Ljava/lang/Object;
.source "FakeCamera.java"

# interfaces
.implements Lcom/google/android/apps/unveil/sensors/proxies/camera/CameraProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$5;,
        Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;,
        Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;
    }
.end annotation


# static fields
.field private static final FRAME_DELAY_FOR_FAILURE_MS:I = 0x3e8

.field public static final LOCKSTEP_KEY:Ljava/lang/String; = "lockstep_callbacks"

.field private static final MIN_FRAME_DELAY_MS:I = 0xa

.field public static final SKIP_RENDERING_KEY:Ljava/lang/String; = "skip_rendering"

.field protected static camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;


# instance fields
.field private final bufferQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private callback:Landroid/hardware/Camera$PreviewCallback;

.field private volatile callbackRunning:Z

.field private callbackType:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;

.field private cameraSurfaceHolder:Landroid/view/SurfaceHolder;

.field private final extraSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private focusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private final handler:Landroid/os/Handler;

.field private lastFrameData:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

.field private localRgbBuffer:[I

.field private final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

.field private final paint:Landroid/graphics/Paint;

.field private parameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;

.field private previewActive:Z

.field private previewHeight:I

.field private previewWidth:I

.field private renderRotation:I

.field protected resources:Landroid/content/res/Resources;

.field private final skipRendering:Z

.field private final waitForCallbacks:Z


# direct methods
.method protected constructor <init>(Landroid/os/Handler;Ljava/util/Map;Landroid/content/res/Resources;)V
    .registers 6
    .parameter "handler"
    .parameter
    .parameter "resources"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, extraParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 74
    iput-boolean v1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->callbackRunning:Z

    .line 116
    iput-object p2, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->extraSettings:Ljava/util/Map;

    .line 117
    iput-object p3, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->resources:Landroid/content/res/Resources;

    .line 119
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->paint:Landroid/graphics/Paint;

    .line 120
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 122
    new-instance v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->parameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->bufferQueue:Ljava/util/List;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->callback:Landroid/hardware/Camera$PreviewCallback;

    .line 126
    sget-object v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;->ONESHOT:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->callbackType:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;

    .line 128
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->handler:Landroid/os/Handler;

    .line 130
    const-string v0, "lockstep_callbacks"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->getExtraValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->waitForCallbacks:Z

    .line 131
    const-string v0, "skip_rendering"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->getExtraValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->skipRendering:Z

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;)Landroid/hardware/Camera$AutoFocusCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->focusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->frameLoop()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;)Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->lastFrameData:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;)Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->parameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->callbackRunning:Z

    return p1
.end method

.method private drawFrame(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;)Z
    .registers 13
    .parameter "frame"

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 418
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->cameraSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_7

    .line 441
    :goto_6
    return v2

    .line 423
    :cond_7
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->cameraSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 424
    .local v0, canvas:Landroid/graphics/Canvas;
    if-nez v0, :cond_19

    .line 425
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "couldn\'t get canvas!"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 429
    :cond_19
    iget-object v1, p1, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->frameSize:Lcom/google/android/apps/unveil/env/Size;

    new-instance v3, Lcom/google/android/apps/unveil/env/Size;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->getDisplayOrientation()I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/google/android/apps/unveil/env/ImageUtils;->getTransformationMatrix(Lcom/google/android/apps/unveil/env/Size;Lcom/google/android/apps/unveil/env/Size;I)Landroid/graphics/Matrix;

    move-result-object v10

    .line 433
    .local v10, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 434
    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 435
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->getRgbData()[I

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->frameSize:Lcom/google/android/apps/unveil/env/Size;

    iget v3, v3, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget-object v4, p1, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->frameSize:Lcom/google/android/apps/unveil/env/Size;

    iget v6, v4, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget-object v4, p1, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->frameSize:Lcom/google/android/apps/unveil/env/Size;

    iget v7, v4, Lcom/google/android/apps/unveil/env/Size;->height:I

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 437
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 439
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->cameraSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    move v2, v8

    .line 441
    goto :goto_6
.end method

.method private frameLoop()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 358
    const/16 v7, 0x3e8

    iget-object v8, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->parameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;

    const-string v9, "preview-frame-rate"

    invoke-virtual {v8, v9}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->getInt(Ljava/lang/String;)I

    move-result v8

    div-int/2addr v7, v8

    int-to-long v5, v7

    .line 360
    .local v5, timePerFrame:J
    new-instance v3, Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-direct {v3}, Lcom/google/android/apps/unveil/env/Stopwatch;-><init>()V

    .line 361
    .local v3, frameTimer:Lcom/google/android/apps/unveil/env/Stopwatch;
    invoke-virtual {v3}, Lcom/google/android/apps/unveil/env/Stopwatch;->start()V

    .line 363
    :goto_15
    iget-boolean v7, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->previewActive:Z

    if-eqz v7, :cond_50

    .line 364
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->maybeWaitForCallbacks()V

    .line 366
    invoke-virtual {v3}, Lcom/google/android/apps/unveil/env/Stopwatch;->reset()V

    .line 367
    invoke-direct {p0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->renderFrameAndCallBack()Z

    move-result v4

    .line 370
    .local v4, renderSuccessful:Z
    :try_start_23
    invoke-virtual {v3}, Lcom/google/android/apps/unveil/env/Stopwatch;->getElapsedMilliseconds()J

    move-result-wide v1

    .line 371
    .local v1, frameTime:J
    if-nez v4, :cond_44

    .line 372
    iget-object v7, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v8, "renderFrameAndCallBack() was unsuccessful. Sleeping for a while."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    const-wide/16 v7, 0x3e8

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_38} :catch_39

    goto :goto_15

    .line 377
    .end local v1           #frameTime:J
    :catch_39
    move-exception v0

    .line 378
    .local v0, e:Ljava/lang/InterruptedException;
    iget-object v7, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v8, "Problem sleeping."

    new-array v9, v11, [Ljava/lang/Object;

    invoke-virtual {v7, v0, v8, v9}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15

    .line 375
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #frameTime:J
    :cond_44
    const-wide/16 v7, 0xa

    sub-long v9, v5, v1

    :try_start_48
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_48 .. :try_end_4f} :catch_39

    goto :goto_15

    .line 381
    .end local v1           #frameTime:J
    .end local v4           #renderSuccessful:Z
    :cond_50
    return-void
.end method

.method private handleCallback(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;)V
    .registers 10
    .parameter "frame"

    .prologue
    const/4 v7, 0x0

    .line 472
    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->callback:Landroid/hardware/Camera$PreviewCallback;

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->callbackRunning:Z

    if-eqz v4, :cond_a

    .line 527
    :cond_9
    :goto_9
    return-void

    .line 476
    :cond_a
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->callback:Landroid/hardware/Camera$PreviewCallback;

    .line 477
    .local v3, tmpCallback:Landroid/hardware/Camera$PreviewCallback;
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->callbackRunning:Z

    .line 479
    const/4 v2, 0x0

    .line 482
    .local v2, frameBytesYUV:[B
    sget-object v4, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$5;->$SwitchMap$com$google$android$apps$unveil$sensors$proxies$camera$FakeCamera$CallbackType:[I

    iget-object v5, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->callbackType:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;

    invoke-virtual {v5}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_72

    .line 506
    :goto_1d
    #getter for: Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->yuvData:[B
    invoke-static {p1}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->access$400(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;)[B

    move-result-object v4

    if-nez v4, :cond_68

    .line 508
    #getter for: Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->rgbData:[I
    invoke-static {p1}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->access$300(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;)[I

    move-result-object v4

    iget v5, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->previewWidth:I

    iget v6, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->previewHeight:I

    invoke-static {v4, v2, v5, v6}, Lcom/google/android/apps/unveil/env/ImageUtils;->convertARGB8888ToYUV420SP([I[BII)V

    .line 516
    :goto_2e
    move-object v1, v2

    .line 517
    .local v1, dataBuffer:[B
    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$4;

    invoke-direct {v5, p0, v3, v1}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$4;-><init>(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;Landroid/hardware/Camera$PreviewCallback;[B)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_9

    .line 484
    .end local v1           #dataBuffer:[B
    :pswitch_3a
    iget-object v5, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->bufferQueue:Ljava/util/List;

    monitor-enter v5

    .line 485
    :try_start_3d
    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->bufferQueue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_55

    .line 486
    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->bufferQueue:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [B

    move-object v2, v0

    .line 492
    monitor-exit v5

    goto :goto_1d

    :catchall_52
    move-exception v4

    monitor-exit v5
    :try_end_54
    .catchall {:try_start_3d .. :try_end_54} :catchall_52

    throw v4

    .line 489
    :cond_55
    const/4 v4, 0x0

    :try_start_56
    iput-boolean v4, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->callbackRunning:Z

    .line 490
    monitor-exit v5
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_52

    goto :goto_9

    .line 496
    :pswitch_5a
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->callback:Landroid/hardware/Camera$PreviewCallback;

    .line 502
    :pswitch_5d
    iget v4, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->previewWidth:I

    iget v5, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->previewHeight:I

    invoke-static {v4, v5}, Lcom/google/android/apps/unveil/env/ImageUtils;->getYUVByteSize(II)I

    move-result v4

    new-array v2, v4, [B

    goto :goto_1d

    .line 512
    :cond_68
    #getter for: Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->yuvData:[B
    invoke-static {p1}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;->access$400(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;)[B

    move-result-object v4

    array-length v5, v2

    invoke-static {v4, v7, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2e

    .line 482
    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_5a
        :pswitch_5d
    .end packed-switch
.end method

.method private maybeWaitForCallbacks()V
    .registers 5

    .prologue
    .line 445
    iget-boolean v1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->waitForCallbacks:Z

    if-nez v1, :cond_5

    .line 464
    :goto_4
    return-void

    .line 449
    :cond_5
    monitor-enter p0

    .line 451
    :goto_6
    :try_start_6
    iget-boolean v1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->previewActive:Z

    if-eqz v1, :cond_35

    .line 453
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->callback:Landroid/hardware/Camera$PreviewCallback;

    if-eqz v1, :cond_25

    iget-boolean v1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->callbackRunning:Z

    if-nez v1, :cond_25

    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->callbackType:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;

    sget-object v2, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;->WITH_BUFFER:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;

    if-ne v1, v2, :cond_20

    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->bufferQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_25

    .line 455
    :cond_20
    monitor-exit p0

    goto :goto_4

    .line 463
    :catchall_22
    move-exception v1

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_22

    throw v1

    .line 458
    :cond_25
    :try_start_25
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_6

    .line 459
    :catch_29
    move-exception v0

    .line 460
    .local v0, e:Ljava/lang/Exception;
    :try_start_2a
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Exception!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 463
    .end local v0           #e:Ljava/lang/Exception;
    :cond_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_22

    goto :goto_4
.end method

.method private declared-synchronized renderFrameAndCallBack()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 384
    monitor-enter p0

    :try_start_2
    iget-boolean v2, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->previewActive:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_1b

    if-nez v2, :cond_8

    .line 409
    :goto_6
    monitor-exit p0

    return v1

    .line 389
    :cond_8
    :try_start_8
    iget v2, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->previewWidth:I

    if-eqz v2, :cond_10

    iget v2, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->previewHeight:I
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_1b

    if-nez v2, :cond_1e

    .line 391
    :cond_10
    const-wide/16 v2, 0x3e8

    :try_start_12
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1b
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_6

    .line 392
    :catch_16
    move-exception v0

    .line 393
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_17
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_6

    .line 384
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_1b
    move-exception v2

    monitor-exit p0

    throw v2

    .line 398
    :cond_1e
    :try_start_1e
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->localRgbBuffer:[I

    if-nez v2, :cond_2f

    .line 399
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->localRgbBuffer:[I

    .line 403
    :cond_2f
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->generateFrame()Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->lastFrameData:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

    .line 405
    iget-boolean v2, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->skipRendering:Z

    if-eqz v2, :cond_40

    const/4 v1, 0x1

    .line 407
    .local v1, renderSucessful:Z
    :goto_3a
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->lastFrameData:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

    invoke-direct {p0, v2}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->handleCallback(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;)V

    goto :goto_6

    .line 405
    .end local v1           #renderSucessful:Z
    :cond_40
    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->lastFrameData:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;

    invoke-direct {p0, v2}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->drawFrame(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;)Z
    :try_end_45
    .catchall {:try_start_1e .. :try_end_45} :catchall_1b

    move-result v1

    goto :goto_3a
.end method


# virtual methods
.method public declared-synchronized addCallbackBuffer([B)V
    .registers 4
    .parameter "buffer"

    .prologue
    .line 136
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->bufferQueue:Ljava/util/List;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_12

    .line 137
    :try_start_4
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->bufferQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_f

    .line 139
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_12

    .line 140
    monitor-exit p0

    return-void

    .line 138
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    :try_start_11
    throw v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_12

    .line 136
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .registers 3
    .parameter "autoFocusCallback"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->focusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 147
    new-instance v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$1;-><init>(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;)V

    .line 158
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 159
    return-void
.end method

.method public cancelAutoFocus()V
    .registers 1

    .prologue
    .line 540
    return-void
.end method

.method protected abstract generateFrame()Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$RawFrame;
.end method

.method protected getDisplayOrientation()I
    .registers 2

    .prologue
    .line 548
    iget v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->renderRotation:I

    return v0
.end method

.method protected getExtraValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "key"
    .parameter "defaulValue"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->extraSettings:Ljava/util/Map;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->extraSettings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    move-object v0, p2

    .line 555
    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->extraSettings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_d
.end method

.method protected getHeight()I
    .registers 2

    .prologue
    .line 534
    iget v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->previewHeight:I

    return v0
.end method

.method public getParameters()Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;
    .registers 3

    .prologue
    .line 163
    new-instance v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;

    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->parameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;

    invoke-direct {v0, v1}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;-><init>(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;)V

    return-object v0
.end method

.method protected getWidth()I
    .registers 2

    .prologue
    .line 530
    iget v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->previewWidth:I

    return v0
.end method

.method public release()V
    .registers 2

    .prologue
    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->previewActive:Z

    .line 169
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->camera:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;

    .line 170
    return-void
.end method

.method public setDisplayOrientation(I)V
    .registers 2
    .parameter "degrees"

    .prologue
    .line 544
    iput p1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->renderRotation:I

    .line 545
    return-void
.end method

.method public declared-synchronized setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 3
    .parameter "previewCallback"

    .prologue
    .line 174
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;->ONESHOT:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->callbackType:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;

    .line 175
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->callback:Landroid/hardware/Camera$PreviewCallback;

    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 177
    monitor-exit p0

    return-void

    .line 174
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setParameters(Lcom/google/android/apps/unveil/sensors/proxies/camera/ParametersProxy;)V
    .registers 7
    .parameter "params"

    .prologue
    .line 181
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;

    check-cast p1, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;

    .end local p1
    invoke-direct {v0, p1}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;-><init>(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->parameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;

    .line 182
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->parameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->getPreviewSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v0

    iget v0, v0, Lcom/google/android/apps/unveil/env/Size;->height:I

    iput v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->previewHeight:I

    .line 183
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->parameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->getPreviewSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v0

    iget v0, v0, Lcom/google/android/apps/unveil/env/Size;->width:I

    iput v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->previewWidth:I

    .line 185
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Setting picture size to %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->parameters:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;

    invoke-virtual {v4}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeParameters;->getPictureSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    .line 186
    monitor-exit p0

    return-void

    .line 181
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 3
    .parameter "previewCallback"

    .prologue
    .line 190
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;->REPEATING:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->callbackType:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;

    .line 191
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->callback:Landroid/hardware/Camera$PreviewCallback;

    .line 192
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 193
    monitor-exit p0

    return-void

    .line 190
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 3
    .parameter "previewCallback"

    .prologue
    .line 208
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->callback:Landroid/hardware/Camera$PreviewCallback;

    .line 210
    if-eqz p1, :cond_e

    .line 211
    sget-object v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;->WITH_BUFFER:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->callbackType:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;

    .line 215
    :goto_9
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_13

    .line 216
    monitor-exit p0

    return-void

    .line 213
    :cond_e
    :try_start_e
    sget-object v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;->ONESHOT:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->callbackType:Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$CallbackType;
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_13

    goto :goto_9

    .line 208
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter "cameraSurfaceHolder"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->cameraSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 198
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 199
    return-void
.end method

.method public setPreviewTexture(Lcom/google/android/apps/unveil/env/PlatformVersionUtils$TextureView;)V
    .registers 4
    .parameter "cameraSurfaceTexture"

    .prologue
    .line 203
    new-instance v0, Ljava/lang/NoSuchMethodError;

    const-string v1, "FakeCamera doesn\'t support setPreviewTexture"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "FakeCamera.setZoomChangeListener(): zooming not supported!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 566
    return-void
.end method

.method public startPreview()V
    .registers 5

    .prologue
    .line 220
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->previewActive:Z

    .line 221
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Starting preview loop."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    new-instance v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$2;-><init>(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;)V

    .line 226
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 227
    return-void
.end method

.method public startSmoothZoom(I)V
    .registers 5
    .parameter "value"

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "FakeCamera.startSmoothZoom(): zooming not supported!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 561
    return-void
.end method

.method public declared-synchronized stopPreview()V
    .registers 2

    .prologue
    .line 231
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;->previewActive:Z

    .line 232
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 233
    monitor-exit p0

    return-void

    .line 231
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .registers 5
    .parameter "shutterCallback"
    .parameter "object"
    .parameter "callback"

    .prologue
    .line 241
    new-instance v0, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$3;

    invoke-direct {v0, p0, p3}, Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera$3;-><init>(Lcom/google/android/apps/unveil/sensors/proxies/camera/FakeCamera;Landroid/hardware/Camera$PictureCallback;)V

    .line 283
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 284
    return-void
.end method
