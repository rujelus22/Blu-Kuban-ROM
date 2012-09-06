.class public Lcom/google/android/apps/unveil/TrackingTestActivity;
.super Lcom/google/android/apps/unveil/GogglesPreviewLoopingActivity;
.source "TrackingTestActivity.java"

# interfaces
.implements Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$EvaluationFinishedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/TrackingTestActivity$TrackingFinishedCallback;
    }
.end annotation


# static fields
.field public static final CPU_KEY:Ljava/lang/String; = "cpu_key"

.field public static final PERFORMANCE_KEY:Ljava/lang/String; = "performance_key"

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private evaluateTrackingActivity:Lcom/google/android/apps/unveil/TrackingTestActivity$TrackingFinishedCallback;

.field private evaluator:Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;

.field private finished:Z

.field private trackingTestView:Lcom/google/android/apps/unveil/tracking/TrackingTestView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/TrackingTestActivity;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/apps/unveil/GogglesPreviewLoopingActivity;-><init>()V

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/unveil/TrackingTestActivity;)Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/unveil/TrackingTestActivity;->evaluator:Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;

    return-object v0
.end method

.method private declared-synchronized maybeMakeCallback()V
    .registers 4

    .prologue
    .line 102
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/TrackingTestActivity;->finished:Z

    if-eqz v0, :cond_30

    .line 103
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/TrackingTestActivity;->pauseLooping()V

    .line 105
    iget-object v0, p0, Lcom/google/android/apps/unveil/TrackingTestActivity;->evaluateTrackingActivity:Lcom/google/android/apps/unveil/TrackingTestActivity$TrackingFinishedCallback;

    if-eqz v0, :cond_20

    .line 106
    iget-object v0, p0, Lcom/google/android/apps/unveil/TrackingTestActivity;->evaluateTrackingActivity:Lcom/google/android/apps/unveil/TrackingTestActivity$TrackingFinishedCallback;

    iget-object v1, p0, Lcom/google/android/apps/unveil/TrackingTestActivity;->evaluator:Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->getPerformance()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/TrackingTestActivity;->evaluator:Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;->getTimePerFrame()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/unveil/TrackingTestActivity$TrackingFinishedCallback;->callback(FF)V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/TrackingTestActivity;->evaluateTrackingActivity:Lcom/google/android/apps/unveil/TrackingTestActivity$TrackingFinishedCallback;

    .line 111
    :cond_20
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/apps/unveil/TrackingTestActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/unveil/TrackingTestActivity$1;-><init>(Lcom/google/android/apps/unveil/TrackingTestActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/TrackingTestActivity;->finished:Z
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 125
    :cond_30
    monitor-exit p0

    return-void

    .line 102
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected addFrameProcessors(Lcom/google/android/apps/unveil/nonstop/PreviewLooper;)V
    .registers 9
    .parameter "previewLooper"

    .prologue
    const/4 v6, 0x0

    .line 65
    sget-object v3, Lcom/google/android/apps/unveil/TrackingTestActivity;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v4, "addFrameProcessors"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iget-object v3, p0, Lcom/google/android/apps/unveil/TrackingTestActivity;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v3}, Lcom/google/android/apps/unveil/UnveilContext;->getUseGroundtruth()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 70
    iget-object v3, p0, Lcom/google/android/apps/unveil/TrackingTestActivity;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v3}, Lcom/google/android/apps/unveil/UnveilContext;->getGroundtruthDirectory()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, sequenceDirectory:Ljava/lang/String;
    new-instance v3, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/TrackingTestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v1, v5, p0}, Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/unveil/tracking/TrackingEvaluator$EvaluationFinishedCallback;)V

    iput-object v3, p0, Lcom/google/android/apps/unveil/TrackingTestActivity;->evaluator:Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;

    .line 74
    iget-object v3, p0, Lcom/google/android/apps/unveil/TrackingTestActivity;->evaluator:Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;

    invoke-virtual {p1, v3, v6}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->addPreviewProcessor(Lcom/google/android/apps/unveil/nonstop/FrameProcessor;I)V

    .line 77
    iget-object v3, p0, Lcom/google/android/apps/unveil/TrackingTestActivity;->evaluator:Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;

    invoke-virtual {p0, v3}, Lcom/google/android/apps/unveil/TrackingTestActivity;->addRenderCallback(Lcom/google/android/apps/unveil/nonstop/DebugView$RenderCallback;)V

    .line 82
    iget-object v3, p0, Lcom/google/android/apps/unveil/TrackingTestActivity;->evaluator:Lcom/google/android/apps/unveil/tracking/TrackingEvaluator;

    invoke-virtual {p0, v3}, Lcom/google/android/apps/unveil/TrackingTestActivity;->addGlRenderCallback(Lcom/google/android/apps/unveil/ui/GlOverlay$RenderCallback;)V

    .line 98
    .end local v1           #sequenceDirectory:Ljava/lang/String;
    :goto_33
    return-void

    .line 84
    :cond_34
    iget-object v3, p0, Lcom/google/android/apps/unveil/TrackingTestActivity;->trackingTestView:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .line 85
    .local v2, surface:Landroid/view/SurfaceHolder;
    const/4 v3, -0x3

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 87
    new-instance v0, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;

    iget-object v3, p0, Lcom/google/android/apps/unveil/TrackingTestActivity;->trackingTestView:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v3}, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;-><init>(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)V

    .line 90
    .local v0, processor:Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;
    invoke-virtual {p1, v0, v6}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->addPreviewProcessor(Lcom/google/android/apps/unveil/nonstop/FrameProcessor;I)V

    .line 92
    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/TrackingTestActivity;->addGlRenderCallback(Lcom/google/android/apps/unveil/ui/GlOverlay$RenderCallback;)V

    .line 93
    iget-object v3, p0, Lcom/google/android/apps/unveil/TrackingTestActivity;->trackingTestView:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    iget-object v4, p0, Lcom/google/android/apps/unveil/TrackingTestActivity;->glCameraPreview:Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;

    invoke-virtual {v4}, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;->getBoundingBoxLayer()Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->setBoundingBoxLayer(Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;)V

    .line 96
    new-instance v3, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;

    iget-object v4, p0, Lcom/google/android/apps/unveil/TrackingTestActivity;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-direct {v3, v4}, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;-><init>(Lcom/google/android/apps/unveil/sensors/CameraManager;)V

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->addPreviewProcessor(Lcom/google/android/apps/unveil/nonstop/FrameProcessor;I)V

    goto :goto_33
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 41
    sget-object v0, Lcom/google/android/apps/unveil/TrackingTestActivity;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "onCreate"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-super {p0, p1}, Lcom/google/android/apps/unveil/GogglesPreviewLoopingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    iput-boolean v3, p0, Lcom/google/android/apps/unveil/TrackingTestActivity;->finished:Z

    .line 46
    sget v0, Lcom/google/android/apps/unveil/R$layout;->tracking_test:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/TrackingTestActivity;->initializeActivity(I)V

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/unveil/TrackingTestActivity;->application:Lcom/google/android/apps/unveil/UnveilContext;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/apps/unveil/UnveilContext;->setContinuous(Z)V

    .line 49
    sget v0, Lcom/google/android/apps/unveil/R$id;->tracking_view:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/TrackingTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    iput-object v0, p0, Lcom/google/android/apps/unveil/TrackingTestActivity;->trackingTestView:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    .line 51
    iget-object v0, p0, Lcom/google/android/apps/unveil/TrackingTestActivity;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/UnveilContext;->getUseGroundtruth()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 52
    iget-object v0, p0, Lcom/google/android/apps/unveil/TrackingTestActivity;->trackingTestView:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->setVisibility(I)V

    .line 54
    :cond_33
    return-void
.end method

.method public declared-synchronized onEvaluationFinished()V
    .registers 2

    .prologue
    .line 129
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/apps/unveil/TrackingTestActivity;->finished:Z

    .line 131
    invoke-direct {p0}, Lcom/google/android/apps/unveil/TrackingTestActivity;->maybeMakeCallback()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 132
    monitor-exit p0

    return-void

    .line 129
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/unveil/TrackingTestActivity;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->forceReleaseCamera()V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/TrackingTestActivity;->pauseLooping()V

    .line 60
    invoke-super {p0}, Lcom/google/android/apps/unveil/GogglesPreviewLoopingActivity;->onStop()V

    .line 61
    return-void
.end method

.method public declared-synchronized setFinishedCallback(Lcom/google/android/apps/unveil/TrackingTestActivity$TrackingFinishedCallback;)V
    .registers 5
    .parameter "evaluateTrackingActivity"

    .prologue
    .line 139
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/TrackingTestActivity;->evaluateTrackingActivity:Lcom/google/android/apps/unveil/TrackingTestActivity$TrackingFinishedCallback;

    if-eqz v0, :cond_f

    .line 140
    sget-object v0, Lcom/google/android/apps/unveil/TrackingTestActivity;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "New callback registered before old one was called!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    :cond_f
    iput-object p1, p0, Lcom/google/android/apps/unveil/TrackingTestActivity;->evaluateTrackingActivity:Lcom/google/android/apps/unveil/TrackingTestActivity$TrackingFinishedCallback;

    .line 147
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/TrackingTestActivity;->finished:Z

    if-eqz v0, :cond_1f

    .line 148
    sget-object v0, Lcom/google/android/apps/unveil/TrackingTestActivity;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Tracking finished before callback was registered."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    :cond_1f
    invoke-direct {p0}, Lcom/google/android/apps/unveil/TrackingTestActivity;->maybeMakeCallback()V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 151
    monitor-exit p0

    return-void

    .line 139
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method
