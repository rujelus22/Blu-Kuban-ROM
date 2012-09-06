.class public abstract Lcom/google/android/apps/unveil/PreviewLoopingActivity;
.super Landroid/app/Activity;
.source "PreviewLoopingActivity.java"

# interfaces
.implements Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;
.implements Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$CameraLayoutHandler;


# static fields
.field private static final LOOPER_FPS:I = 0x1e

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field protected cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

.field private debugView:Lcom/google/android/apps/unveil/nonstop/DebugView;

.field protected glCameraPreview:Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;

.field private glDebugView:Lcom/google/android/apps/unveil/ui/GlOverlay;

.field private isActivityRunning:Z

.field private needsStartCameraPreview:Z

.field private onResumePending:Z

.field private previewDisplayedSize:Lcom/google/android/apps/unveil/env/Size;

.field protected previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

.field private wrappingLayout:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->onResumePending:Z

    return-void
.end method

.method private onResumeInternal()V
    .registers 4

    .prologue
    .line 228
    sget-object v0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "onResumeInternal()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->acquireCamera()V

    .line 231
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->glDebugView:Lcom/google/android/apps/unveil/ui/GlOverlay;

    if-eqz v0, :cond_18

    .line 232
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->glDebugView:Lcom/google/android/apps/unveil/ui/GlOverlay;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/ui/GlOverlay;->onResume()V

    .line 240
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->onLooperRestart()V

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->isActivityRunning:Z

    .line 246
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->wrappingLayout:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->requestLayout()V

    .line 247
    return-void
.end method


# virtual methods
.method protected abstract addFrameProcessors(Lcom/google/android/apps/unveil/nonstop/PreviewLooper;)V
.end method

.method public addGlRenderCallback(Lcom/google/android/apps/unveil/ui/GlOverlay$RenderCallback;)V
    .registers 3
    .parameter "renderCallback"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->glDebugView:Lcom/google/android/apps/unveil/ui/GlOverlay;

    if-eqz v0, :cond_9

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->glDebugView:Lcom/google/android/apps/unveil/ui/GlOverlay;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/ui/GlOverlay;->addRenderCallback(Lcom/google/android/apps/unveil/ui/GlOverlay$RenderCallback;)V

    .line 118
    :cond_9
    return-void
.end method

.method public addRenderCallback(Lcom/google/android/apps/unveil/nonstop/DebugView$RenderCallback;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->debugView:Lcom/google/android/apps/unveil/nonstop/DebugView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/nonstop/DebugView;->addCallback(Lcom/google/android/apps/unveil/nonstop/DebugView$RenderCallback;)V

    .line 127
    return-void
.end method

.method protected addViewAsCameraOverlay(Landroid/view/View;I)V
    .registers 4
    .parameter "view"
    .parameter "index"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->wrappingLayout:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->addView(Landroid/view/View;I)V

    .line 106
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->wrappingLayout:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->requestLayout()V

    .line 107
    return-void
.end method

.method public getRotationAngleBetweenCameraAndDisplay()I
    .registers 4

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->getRequestedOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_2a

    .line 141
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->getRequestedOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :pswitch_24
    const/4 v0, 0x0

    .line 138
    :goto_25
    return v0

    :pswitch_26
    const/16 v0, 0x5a

    goto :goto_25

    .line 133
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_24
        :pswitch_26
    .end packed-switch
.end method

.method protected initializeActivity(I)V
    .registers 7
    .parameter "contentView"

    .prologue
    const/16 v4, 0x400

    const/4 v3, 0x1

    .line 68
    sget-object v0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "initializeActivity"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p0, v3}, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->requestWindowFeature(I)Z

    .line 71
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->setContentView(I)V

    .line 76
    sget v0, Lcom/google/android/apps/unveil/R$id;->nonstop_debug_view:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/nonstop/DebugView;

    iput-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->debugView:Lcom/google/android/apps/unveil/nonstop/DebugView;

    .line 84
    sget v0, Lcom/google/android/apps/unveil/R$id;->camera_preview:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/sensors/CameraManager;

    iput-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->registerListener(Lcom/google/android/apps/unveil/sensors/CameraManager$Listener;)V

    .line 87
    sget v0, Lcom/google/android/apps/unveil/R$id;->gl_camera_preview_overlay:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;

    iput-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->glCameraPreview:Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;

    .line 89
    sget v0, Lcom/google/android/apps/unveil/R$id;->camera_wrapper_layout:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;

    iput-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->wrappingLayout:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->wrappingLayout:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;

    iget-object v1, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->setCameraManager(Lcom/google/android/apps/unveil/sensors/CameraManager;)V

    .line 92
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->wrappingLayout:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->setCameraLayoutHandler(Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$CameraLayoutHandler;)V

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->wrappingLayout:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->getRotationAngleBetweenCameraAndDisplay()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->setRotation(I)V

    .line 95
    sget v0, Lcom/google/android/apps/unveil/R$id;->gl_overlay:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/ui/GlOverlay;

    iput-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->glDebugView:Lcom/google/android/apps/unveil/ui/GlOverlay;

    .line 96
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->glDebugView:Lcom/google/android/apps/unveil/ui/GlOverlay;

    if-eqz v0, :cond_6f

    .line 97
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->glDebugView:Lcom/google/android/apps/unveil/ui/GlOverlay;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/unveil/ui/GlOverlay;->setZOrderMediaOverlay(Z)V

    .line 101
    :cond_6f
    iput-boolean v3, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->needsStartCameraPreview:Z

    .line 102
    return-void
.end method

.method protected declared-synchronized isLoopingPaused()Z
    .registers 2

    .prologue
    .line 364
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->isRunning()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    move-result v0

    if-nez v0, :cond_10

    :cond_d
    const/4 v0, 0x1

    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected maybeCreateLooper()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 175
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    if-eqz v0, :cond_6

    .line 191
    :goto_5
    return-void

    .line 179
    :cond_6
    sget-object v0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Initializing PreviewLooper."

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    new-instance v0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    iget-object v1, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->getRotationAngleBetweenCameraAndDisplay()I

    move-result v2

    const/high16 v3, 0x41f0

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;-><init>(Lcom/google/android/apps/unveil/sensors/CameraManager;IFI)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    .line 184
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    new-instance v1, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;

    iget-object v2, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->debugView:Lcom/google/android/apps/unveil/nonstop/DebugView;

    iget-object v5, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->glDebugView:Lcom/google/android/apps/unveil/ui/GlOverlay;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;-><init>(Lcom/google/android/apps/unveil/sensors/CameraManager;Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;Lcom/google/android/apps/unveil/nonstop/DebugView;Lcom/google/android/apps/unveil/ui/GlOverlay;)V

    invoke-virtual {v0, v1, v6}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->addPreviewProcessor(Lcom/google/android/apps/unveil/nonstop/FrameProcessor;I)V

    .line 188
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->addFrameProcessors(Lcom/google/android/apps/unveil/nonstop/PreviewLooper;)V

    .line 190
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->debugView:Lcom/google/android/apps/unveil/nonstop/DebugView;

    iget-object v1, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/nonstop/DebugView;->setCallback(Lcom/google/android/apps/unveil/nonstop/PreviewLooper;)V

    goto :goto_5
.end method

.method public onCameraAcquisitionError()V
    .registers 4

    .prologue
    .line 339
    sget-object v0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Failed to acquire camera."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    return-void
.end method

.method public onCameraConnected()V
    .registers 4

    .prologue
    .line 330
    sget-object v0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Camera connected, requesting final layout before starting preview."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->wrappingLayout:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->requestLayout()V

    .line 335
    return-void
.end method

.method public onCameraFlashControlError()V
    .registers 4

    .prologue
    .line 344
    sget-object v0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Failed to apply camera flash setting."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    return-void
.end method

.method public onCameraLayoutComplete()V
    .registers 4

    .prologue
    .line 360
    sget-object v0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Camera is measured successfully"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    return-void
.end method

.method public onCameraLayoutFinished(Lcom/google/android/apps/unveil/env/Size;Landroid/graphics/Matrix;)V
    .registers 4
    .parameter "previewDisplayedSize"
    .parameter "frameToCanvas"

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->isActivityRunning:Z

    if-nez v0, :cond_5

    .line 160
    :cond_4
    :goto_4
    return-void

    .line 150
    :cond_5
    iput-object p1, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->previewDisplayedSize:Lcom/google/android/apps/unveil/env/Size;

    .line 154
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->needsStartCameraPreview:Z

    if-eqz v0, :cond_4

    .line 155
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->startPreview()V

    .line 156
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->maybeCreateLooper()V

    .line 157
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->resumeLooping()V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->needsStartCameraPreview:Z

    goto :goto_4
.end method

.method public declared-synchronized onCameraPreviewSizeChanged()V
    .registers 6

    .prologue
    .line 354
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Camera preview size changed to %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v4}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getPreviewSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->wrappingLayout:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;->requestLayout()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 356
    monitor-exit p0

    return-void

    .line 354
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCameraQualityError()V
    .registers 4

    .prologue
    .line 349
    sget-object v0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Failed to apply camera quality settings."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    return-void
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 270
    sget-object v0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "onDestroy"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    if-eqz v0, :cond_1c

    .line 272
    sget-object v0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Shutting down preview frame processing."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->shutdown()V

    .line 276
    :cond_1c
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 277
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 282
    packed-switch p1, :pswitch_data_28

    .line 304
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_8
    :goto_8
    return v0

    .line 285
    :pswitch_9
    iget-object v1, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->debugView:Lcom/google/android/apps/unveil/nonstop/DebugView;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/unveil/nonstop/DebugView;->cycleDebugMode(Z)V

    .line 286
    iget-object v1, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->glDebugView:Lcom/google/android/apps/unveil/ui/GlOverlay;

    if-eqz v1, :cond_8

    .line 287
    iget-object v1, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->glDebugView:Lcom/google/android/apps/unveil/ui/GlOverlay;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/ui/GlOverlay;->requestRender()V

    goto :goto_8

    .line 295
    :pswitch_18
    iget-object v1, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->debugView:Lcom/google/android/apps/unveil/nonstop/DebugView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/nonstop/DebugView;->cycleDebugMode(Z)V

    .line 296
    iget-object v1, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->glDebugView:Lcom/google/android/apps/unveil/ui/GlOverlay;

    if-eqz v1, :cond_8

    .line 297
    iget-object v1, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->glDebugView:Lcom/google/android/apps/unveil/ui/GlOverlay;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/ui/GlOverlay;->requestRender()V

    goto :goto_8

    .line 282
    :pswitch_data_28
    .packed-switch 0x18
        :pswitch_9
        :pswitch_18
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 311
    packed-switch p1, :pswitch_data_a

    .line 325
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :pswitch_8
    return v0

    .line 311
    nop

    :pswitch_data_a
    .packed-switch 0x18
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method protected onLooperRestart()V
    .registers 1

    .prologue
    .line 200
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->isActivityRunning:Z

    .line 253
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->glDebugView:Lcom/google/android/apps/unveil/ui/GlOverlay;

    if-eqz v0, :cond_c

    .line 254
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->glDebugView:Lcom/google/android/apps/unveil/ui/GlOverlay;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/ui/GlOverlay;->onPause()V

    .line 257
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->pauseLooping()V

    .line 261
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->needsStartCameraPreview:Z

    .line 264
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->forceReleaseCamera()V

    .line 265
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 266
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 216
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 217
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_17

    .line 218
    sget-object v0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "onResume. onResumePending=true"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->onResumePending:Z

    .line 225
    :goto_16
    return-void

    .line 221
    :cond_17
    sget-object v0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "onResume. onResumePending=false"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    invoke-direct {p0}, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->onResumeInternal()V

    .line 223
    iput-boolean v3, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->onResumePending:Z

    goto :goto_16
.end method

.method public onWindowFocusChanged(Z)V
    .registers 8
    .parameter "hasFocus"

    .prologue
    const/4 v5, 0x0

    .line 207
    sget-object v0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "onWindowFocusChanged.hasFocus=%B, .onResumePending=%B"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->onResumePending:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    if-eqz p1, :cond_25

    iget-boolean v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->onResumePending:Z

    if-eqz v0, :cond_25

    .line 209
    invoke-direct {p0}, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->onResumeInternal()V

    .line 210
    iput-boolean v5, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->onResumePending:Z

    .line 212
    :cond_25
    return-void
.end method

.method protected declared-synchronized pauseLooping()V
    .registers 4

    .prologue
    .line 368
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->isRunning()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1f

    move-result v0

    if-nez v0, :cond_f

    .line 373
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    .line 371
    :cond_f
    :try_start_f
    sget-object v0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Attempting to pause looping."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->pauseLoop()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_1f

    goto :goto_d

    .line 368
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized resumeLooping()V
    .registers 4

    .prologue
    .line 376
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->isRunning()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_24

    move-result v0

    if-eqz v0, :cond_f

    .line 383
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    .line 379
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->onLooperRestart()V

    .line 381
    sget-object v0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Attempting to resume looping."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    iget-object v0, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    iget-object v1, p0, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->previewDisplayedSize:Lcom/google/android/apps/unveil/env/Size;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->startLoop(Lcom/google/android/apps/unveil/env/Size;)V
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_24

    goto :goto_d

    .line 376
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method
