.class public abstract Lcom/google/android/apps/unveil/GogglesPreviewLoopingActivity;
.super Lcom/google/android/apps/unveil/PreviewLoopingActivity;
.source "GogglesPreviewLoopingActivity.java"


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field protected application:Lcom/google/android/apps/unveil/UnveilContext;

.field private locationProvider:Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;

.field protected sensorProvider:Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/GogglesPreviewLoopingActivity;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/apps/unveil/PreviewLoopingActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected disableSensors()V
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/apps/unveil/GogglesPreviewLoopingActivity;->locationProvider:Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->off()V

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/unveil/GogglesPreviewLoopingActivity;->sensorProvider:Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->off()V

    .line 101
    return-void
.end method

.method protected enableSensors()V
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/apps/unveil/GogglesPreviewLoopingActivity;->locationProvider:Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;->on()V

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/unveil/GogglesPreviewLoopingActivity;->sensorProvider:Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->on()V

    .line 96
    return-void
.end method

.method public getSettings()Lcom/google/android/apps/unveil/UnveilSettings;
    .registers 4

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/GogglesPreviewLoopingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 54
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "UnveilSettings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 55
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "UnveilSettings"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/UnveilSettings;

    .line 57
    :goto_18
    return-object v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

.method protected initializeActivity(I)V
    .registers 6
    .parameter "contentView"

    .prologue
    .line 36
    sget-object v1, Lcom/google/android/apps/unveil/GogglesPreviewLoopingActivity;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "initializeActivity"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iget-object v1, p0, Lcom/google/android/apps/unveil/GogglesPreviewLoopingActivity;->application:Lcom/google/android/apps/unveil/UnveilContext;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/android/apps/unveil/UnveilContext;->setContinuous(Z)V

    .line 41
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/GogglesPreviewLoopingActivity;->getSettings()Lcom/google/android/apps/unveil/UnveilSettings;

    move-result-object v0

    .line 42
    .local v0, settings:Lcom/google/android/apps/unveil/UnveilSettings;
    if-eqz v0, :cond_1b

    .line 43
    iget-object v1, p0, Lcom/google/android/apps/unveil/GogglesPreviewLoopingActivity;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v1, v0}, Lcom/google/android/apps/unveil/UnveilContext;->setSettings(Lcom/google/android/apps/unveil/UnveilSettings;)V

    .line 46
    :cond_1b
    invoke-super {p0, p1}, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->initializeActivity(I)V

    .line 48
    iget-object v1, p0, Lcom/google/android/apps/unveil/GogglesPreviewLoopingActivity;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v1}, Lcom/google/android/apps/unveil/UnveilContext;->getLocationProvider()Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/unveil/GogglesPreviewLoopingActivity;->locationProvider:Lcom/google/android/apps/unveil/sensors/UnveilLocationProvider;

    .line 49
    iget-object v1, p0, Lcom/google/android/apps/unveil/GogglesPreviewLoopingActivity;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v1}, Lcom/google/android/apps/unveil/UnveilContext;->getSensorProvider()Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/unveil/GogglesPreviewLoopingActivity;->sensorProvider:Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;

    .line 50
    return-void
.end method

.method protected maybeCreateLooper()V
    .registers 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/apps/unveil/GogglesPreviewLoopingActivity;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    if-eqz v0, :cond_5

    .line 73
    :cond_4
    :goto_4
    return-void

    .line 66
    :cond_5
    invoke-super {p0}, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->maybeCreateLooper()V

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/unveil/GogglesPreviewLoopingActivity;->glCameraPreview:Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/unveil/GogglesPreviewLoopingActivity;->application:Lcom/google/android/apps/unveil/UnveilContext;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/UnveilContext;->getSettings()Lcom/google/android/apps/unveil/UnveilSettings;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/apps/unveil/UnveilSettings;->useGLES2Overlay:Z

    if-eqz v0, :cond_4

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/unveil/GogglesPreviewLoopingActivity;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    iget-object v1, p0, Lcom/google/android/apps/unveil/GogglesPreviewLoopingActivity;->glCameraPreview:Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;->getFrameLoader()Lcom/google/android/apps/unveil/nonstop/FrameProcessor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->addPreviewProcessor(Lcom/google/android/apps/unveil/nonstop/FrameProcessor;I)V

    goto :goto_4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/GogglesPreviewLoopingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/UnveilContext;

    iput-object v0, p0, Lcom/google/android/apps/unveil/GogglesPreviewLoopingActivity;->application:Lcom/google/android/apps/unveil/UnveilContext;

    .line 32
    return-void
.end method

.method protected declared-synchronized pauseLooping()V
    .registers 2

    .prologue
    .line 77
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/GogglesPreviewLoopingActivity;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/apps/unveil/GogglesPreviewLoopingActivity;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->isRunning()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_16

    move-result v0

    if-nez v0, :cond_f

    .line 82
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    .line 80
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/GogglesPreviewLoopingActivity;->disableSensors()V

    .line 81
    invoke-super {p0}, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->pauseLooping()V
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_16

    goto :goto_d

    .line 77
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized resumeLooping()V
    .registers 2

    .prologue
    .line 86
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/GogglesPreviewLoopingActivity;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/apps/unveil/GogglesPreviewLoopingActivity;->previewLooper:Lcom/google/android/apps/unveil/nonstop/PreviewLooper;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->isRunning()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_16

    move-result v0

    if-eqz v0, :cond_f

    .line 91
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    .line 89
    :cond_f
    :try_start_f
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/GogglesPreviewLoopingActivity;->enableSensors()V

    .line 90
    invoke-super {p0}, Lcom/google/android/apps/unveil/PreviewLoopingActivity;->resumeLooping()V
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_16

    goto :goto_d

    .line 86
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method
