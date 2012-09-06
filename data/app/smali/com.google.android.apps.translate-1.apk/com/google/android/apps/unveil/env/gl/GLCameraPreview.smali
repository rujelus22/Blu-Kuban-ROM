.class public Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;
.super Landroid/opengl/GLSurfaceView;
.source "GLCameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/env/gl/GLCameraPreview$GLPreviewFrameLoader;
    }
.end annotation


# instance fields
.field private final renderer:Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 12
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/4 v5, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/unveil/UnveilContext;

    .line 33
    .local v8, unveilContext:Lcom/google/android/apps/unveil/UnveilContext;
    invoke-interface {v8}, Lcom/google/android/apps/unveil/UnveilContext;->getSettings()Lcom/google/android/apps/unveil/UnveilSettings;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/apps/unveil/UnveilSettings;->useGLES2Overlay:Z

    if-nez v0, :cond_1b

    .line 34
    iput-object v2, p0, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;->renderer:Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;

    .line 35
    invoke-virtual {p0, v2}, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 58
    :goto_1a
    return-void

    .line 39
    :cond_1b
    invoke-virtual {p0, v5}, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;->setVisibility(I)V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;->setZOrderMediaOverlay(Z)V

    .line 42
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;->setEGLContextClientVersion(I)V

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v5

    .line 44
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;->setEGLConfigChooser(IIIIII)V

    .line 45
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 47
    new-instance v7, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview$1;

    invoke-direct {v7, p0}, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview$1;-><init>(Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;)V

    .line 55
    .local v7, callback:Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer$RenderCompletedCallback;
    new-instance v0, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;

    invoke-direct {v0, p1, v7}, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;-><init>(Landroid/content/Context;Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer$RenderCompletedCallback;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;->renderer:Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;->renderer:Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 57
    invoke-virtual {p0, v5}, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;->setRenderMode(I)V

    goto :goto_1a
.end method

.method static synthetic access$000(Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;)Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;->renderer:Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;

    return-object v0
.end method


# virtual methods
.method public getBoundingBoxLayer()Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;->renderer:Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;

    if-eqz v0, :cond_b

    .line 96
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;->renderer:Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->createBoundingBoxLayer()Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    move-result-object v0

    .line 98
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getFrameLoader()Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
    .registers 2

    .prologue
    .line 83
    new-instance v0, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview$GLPreviewFrameLoader;

    invoke-direct {v0, p0}, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview$GLPreviewFrameLoader;-><init>(Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;)V

    return-object v0
.end method

.method public handleClick()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 87
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_c

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;->setVisibility(I)V

    .line 92
    :cond_b
    :goto_b
    return-void

    .line 89
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    .line 90
    invoke-virtual {p0, v1}, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;->setVisibility(I)V

    goto :goto_b
.end method
