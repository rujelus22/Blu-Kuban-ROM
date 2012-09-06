.class public Lcom/google/android/apps/plus/views/GLTextureView;
.super Landroid/view/TextureView;
.source "GLTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/GLTextureView$1;,
        Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;,
        Lcom/google/android/apps/plus/views/GLTextureView$LogWriter;,
        Lcom/google/android/apps/plus/views/GLTextureView$GLThread;,
        Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;,
        Lcom/google/android/apps/plus/views/GLTextureView$SimpleEGLConfigChooser;,
        Lcom/google/android/apps/plus/views/GLTextureView$ComponentSizeChooser;,
        Lcom/google/android/apps/plus/views/GLTextureView$BaseConfigChooser;,
        Lcom/google/android/apps/plus/views/GLTextureView$EGLConfigChooser;,
        Lcom/google/android/apps/plus/views/GLTextureView$DefaultWindowSurfaceFactory;,
        Lcom/google/android/apps/plus/views/GLTextureView$EGLWindowSurfaceFactory;,
        Lcom/google/android/apps/plus/views/GLTextureView$DefaultContextFactory;,
        Lcom/google/android/apps/plus/views/GLTextureView$EGLContextFactory;,
        Lcom/google/android/apps/plus/views/GLTextureView$Renderer;,
        Lcom/google/android/apps/plus/views/GLTextureView$GLWrapper;
    }
.end annotation


# static fields
.field private static final sGLThreadManager:Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mDetached:Z

.field private mEGLConfigChooser:Lcom/google/android/apps/plus/views/GLTextureView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lcom/google/android/apps/plus/views/GLTextureView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/google/android/apps/plus/views/GLTextureView$EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

.field private mGLWrapper:Lcom/google/android/apps/plus/views/GLTextureView$GLWrapper;

.field private mPreserveEGLContextOnPause:Z

.field private mSizeChanged:Z

.field private mViewRenderer:Lcom/google/android/apps/plus/views/GLTextureView$Renderer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1865
    new-instance v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;-><init>(Lcom/google/android/apps/plus/views/GLTextureView$1;)V

    sput-object v0, Lcom/google/android/apps/plus/views/GLTextureView;->sGLThreadManager:Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 216
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 1866
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mSizeChanged:Z

    .line 217
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/GLTextureView;->init()V

    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 225
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1866
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mSizeChanged:Z

    .line 226
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/GLTextureView;->init()V

    .line 227
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/views/GLTextureView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mSizeChanged:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/google/android/apps/plus/views/GLTextureView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mSizeChanged:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/views/GLTextureView;)Lcom/google/android/apps/plus/views/GLTextureView$GLThread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mGLThread:Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/views/GLTextureView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 164
    iget v0, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/views/GLTextureView;)Lcom/google/android/apps/plus/views/GLTextureView$EGLConfigChooser;
    .registers 2
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mEGLConfigChooser:Lcom/google/android/apps/plus/views/GLTextureView$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/views/GLTextureView;)Lcom/google/android/apps/plus/views/GLTextureView$EGLContextFactory;
    .registers 2
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mEGLContextFactory:Lcom/google/android/apps/plus/views/GLTextureView$EGLContextFactory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/views/GLTextureView;)Lcom/google/android/apps/plus/views/GLTextureView$EGLWindowSurfaceFactory;
    .registers 2
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/google/android/apps/plus/views/GLTextureView$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/views/GLTextureView;)Lcom/google/android/apps/plus/views/GLTextureView$GLWrapper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mGLWrapper:Lcom/google/android/apps/plus/views/GLTextureView$GLWrapper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/views/GLTextureView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 164
    iget v0, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mDebugFlags:I

    return v0
.end method

.method static synthetic access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;
    .registers 1

    .prologue
    .line 164
    sget-object v0, Lcom/google/android/apps/plus/views/GLTextureView;->sGLThreadManager:Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/views/GLTextureView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method private checkRenderThreadState()V
    .registers 3

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mGLThread:Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

    if-eqz v0, :cond_c

    .line 1746
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1749
    :cond_c
    return-void
.end method

.method private init()V
    .registers 1

    .prologue
    .line 232
    invoke-virtual {p0, p0}, Lcom/google/android/apps/plus/views/GLTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 233
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 576
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 580
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mDetached:Z

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mViewRenderer:Lcom/google/android/apps/plus/views/GLTextureView$Renderer;

    if-eqz v1, :cond_2c

    .line 581
    const/4 v0, 0x1

    .line 582
    .local v0, renderMode:I
    iget-object v1, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mGLThread:Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

    if-eqz v1, :cond_16

    .line 583
    iget-object v1, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mGLThread:Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->getRenderMode()I

    move-result v0

    .line 585
    :cond_16
    new-instance v1, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mViewRenderer:Lcom/google/android/apps/plus/views/GLTextureView$Renderer;

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;-><init>(Lcom/google/android/apps/plus/views/GLTextureView;Lcom/google/android/apps/plus/views/GLTextureView$Renderer;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mGLThread:Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

    .line 586
    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    .line 587
    iget-object v1, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mGLThread:Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->setRenderMode(I)V

    .line 589
    :cond_27
    iget-object v1, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mGLThread:Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->start()V

    .line 591
    .end local v0           #renderMode:I
    :cond_2c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mDetached:Z

    .line 592
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 604
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mGLThread:Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

    if-eqz v0, :cond_9

    .line 605
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mGLThread:Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->requestExitAndWait()V

    .line 607
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mDetached:Z

    .line 608
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 609
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mGLThread:Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->onPause()V

    .line 547
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mGLThread:Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->onResume()V

    .line 558
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 5
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mGLThread:Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->surfaceCreated()V

    .line 507
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mGLThread:Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->onWindowResize(II)V

    .line 508
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3
    .parameter "surface"

    .prologue
    .line 535
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mGLThread:Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->surfaceDestroyed()V

    .line 536
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 5
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mGLThread:Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->onWindowResize(II)V

    .line 526
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2
    .parameter "surface"

    .prologue
    .line 517
    return-void
.end method

.method public requestRender()V
    .registers 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mGLThread:Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->requestRender()V

    .line 498
    return-void
.end method

.method public setDebugFlags(I)V
    .registers 2
    .parameter "debugFlags"

    .prologue
    .line 262
    iput p1, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mDebugFlags:I

    .line 263
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .registers 15
    .parameter "redSize"
    .parameter "greenSize"
    .parameter "blueSize"
    .parameter "alphaSize"
    .parameter "depthSize"
    .parameter "stencilSize"

    .prologue
    .line 423
    new-instance v0, Lcom/google/android/apps/plus/views/GLTextureView$ComponentSizeChooser;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/views/GLTextureView$ComponentSizeChooser;-><init>(Lcom/google/android/apps/plus/views/GLTextureView;IIIIII)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/GLTextureView;->setEGLConfigChooser(Lcom/google/android/apps/plus/views/GLTextureView$EGLConfigChooser;)V

    .line 425
    return-void
.end method

.method public setEGLConfigChooser(Lcom/google/android/apps/plus/views/GLTextureView$EGLConfigChooser;)V
    .registers 2
    .parameter "configChooser"

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/GLTextureView;->checkRenderThreadState()V

    .line 387
    iput-object p1, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mEGLConfigChooser:Lcom/google/android/apps/plus/views/GLTextureView$EGLConfigChooser;

    .line 388
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .registers 3
    .parameter "needDepth"

    .prologue
    .line 405
    new-instance v0, Lcom/google/android/apps/plus/views/GLTextureView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/plus/views/GLTextureView$SimpleEGLConfigChooser;-><init>(Lcom/google/android/apps/plus/views/GLTextureView;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/GLTextureView;->setEGLConfigChooser(Lcom/google/android/apps/plus/views/GLTextureView$EGLConfigChooser;)V

    .line 406
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .registers 2
    .parameter "version"

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/GLTextureView;->checkRenderThreadState()V

    .line 455
    iput p1, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mEGLContextClientVersion:I

    .line 456
    return-void
.end method

.method public setEGLContextFactory(Lcom/google/android/apps/plus/views/GLTextureView$EGLContextFactory;)V
    .registers 2
    .parameter "factory"

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/GLTextureView;->checkRenderThreadState()V

    .line 356
    iput-object p1, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mEGLContextFactory:Lcom/google/android/apps/plus/views/GLTextureView$EGLContextFactory;

    .line 357
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/google/android/apps/plus/views/GLTextureView$EGLWindowSurfaceFactory;)V
    .registers 2
    .parameter "factory"

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/GLTextureView;->checkRenderThreadState()V

    .line 370
    iput-object p1, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/google/android/apps/plus/views/GLTextureView$EGLWindowSurfaceFactory;

    .line 371
    return-void
.end method

.method public setGLWrapper(Lcom/google/android/apps/plus/views/GLTextureView$GLWrapper;)V
    .registers 2
    .parameter "glWrapper"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mGLWrapper:Lcom/google/android/apps/plus/views/GLTextureView$GLWrapper;

    .line 250
    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .registers 2
    .parameter "preserveOnPause"

    .prologue
    .line 292
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mPreserveEGLContextOnPause:Z

    .line 293
    return-void
.end method

.method public setRenderMode(I)V
    .registers 3
    .parameter "renderMode"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mGLThread:Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->setRenderMode(I)V

    .line 476
    return-void
.end method

.method public setRenderer(Lcom/google/android/apps/plus/views/GLTextureView$Renderer;)V
    .registers 5
    .parameter "renderer"

    .prologue
    const/4 v2, 0x0

    .line 329
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/GLTextureView;->checkRenderThreadState()V

    .line 330
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mEGLConfigChooser:Lcom/google/android/apps/plus/views/GLTextureView$EGLConfigChooser;

    if-nez v0, :cond_10

    .line 331
    new-instance v0, Lcom/google/android/apps/plus/views/GLTextureView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/views/GLTextureView$SimpleEGLConfigChooser;-><init>(Lcom/google/android/apps/plus/views/GLTextureView;Z)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mEGLConfigChooser:Lcom/google/android/apps/plus/views/GLTextureView$EGLConfigChooser;

    .line 333
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mEGLContextFactory:Lcom/google/android/apps/plus/views/GLTextureView$EGLContextFactory;

    if-nez v0, :cond_1b

    .line 334
    new-instance v0, Lcom/google/android/apps/plus/views/GLTextureView$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Lcom/google/android/apps/plus/views/GLTextureView$DefaultContextFactory;-><init>(Lcom/google/android/apps/plus/views/GLTextureView;Lcom/google/android/apps/plus/views/GLTextureView$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mEGLContextFactory:Lcom/google/android/apps/plus/views/GLTextureView$EGLContextFactory;

    .line 336
    :cond_1b
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/google/android/apps/plus/views/GLTextureView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_26

    .line 337
    new-instance v0, Lcom/google/android/apps/plus/views/GLTextureView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/views/GLTextureView$DefaultWindowSurfaceFactory;-><init>(Lcom/google/android/apps/plus/views/GLTextureView$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/google/android/apps/plus/views/GLTextureView$EGLWindowSurfaceFactory;

    .line 339
    :cond_26
    iput-object p1, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mViewRenderer:Lcom/google/android/apps/plus/views/GLTextureView$Renderer;

    .line 340
    new-instance v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;-><init>(Lcom/google/android/apps/plus/views/GLTextureView;Lcom/google/android/apps/plus/views/GLTextureView$Renderer;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mGLThread:Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

    .line 341
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView;->mGLThread:Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->start()V

    .line 342
    return-void
.end method
