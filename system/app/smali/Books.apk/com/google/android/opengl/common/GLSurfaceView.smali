.class public Lcom/google/android/opengl/common/GLSurfaceView;
.super Landroid/view/SurfaceView;
.source "GLSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/opengl/common/GLSurfaceView$1;,
        Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;,
        Lcom/google/android/opengl/common/GLSurfaceView$LogWriter;,
        Lcom/google/android/opengl/common/GLSurfaceView$GLThread;,
        Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;,
        Lcom/google/android/opengl/common/GLSurfaceView$SimpleEGLConfigChooser;,
        Lcom/google/android/opengl/common/GLSurfaceView$ComponentSizeChooser;,
        Lcom/google/android/opengl/common/GLSurfaceView$BaseConfigChooser;,
        Lcom/google/android/opengl/common/GLSurfaceView$EGLConfigChooser;,
        Lcom/google/android/opengl/common/GLSurfaceView$DefaultWindowSurfaceFactory;,
        Lcom/google/android/opengl/common/GLSurfaceView$EGLWindowSurfaceFactory;,
        Lcom/google/android/opengl/common/GLSurfaceView$DefaultContextFactory;,
        Lcom/google/android/opengl/common/GLSurfaceView$EGLContextFactory;,
        Lcom/google/android/opengl/common/GLSurfaceView$Renderer;,
        Lcom/google/android/opengl/common/GLSurfaceView$GLWrapper;
    }
.end annotation


# static fields
.field private static final sGLThreadManager:Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mDetached:Z

.field private mEGLConfigChooser:Lcom/google/android/opengl/common/GLSurfaceView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lcom/google/android/opengl/common/GLSurfaceView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/google/android/opengl/common/GLSurfaceView$EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

.field private mGLWrapper:Lcom/google/android/opengl/common/GLSurfaceView$GLWrapper;

.field private mPreserveEGLContextOnPause:Z

.field private mRenderer:Lcom/google/android/opengl/common/GLSurfaceView$Renderer;

.field private mSizeChanged:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1810
    new-instance v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;-><init>(Lcom/google/android/opengl/common/GLSurfaceView$1;)V

    sput-object v0, Lcom/google/android/opengl/common/GLSurfaceView;->sGLThreadManager:Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 197
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1811
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mSizeChanged:Z

    .line 198
    invoke-direct {p0}, Lcom/google/android/opengl/common/GLSurfaceView;->init()V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1811
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mSizeChanged:Z

    .line 207
    invoke-direct {p0}, Lcom/google/android/opengl/common/GLSurfaceView;->init()V

    .line 208
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/opengl/common/GLSurfaceView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mSizeChanged:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/google/android/opengl/common/GLSurfaceView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mSizeChanged:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/android/opengl/common/GLSurfaceView;)Lcom/google/android/opengl/common/GLSurfaceView$GLThread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/opengl/common/GLSurfaceView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 147
    iget v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/opengl/common/GLSurfaceView;)Lcom/google/android/opengl/common/GLSurfaceView$EGLConfigChooser;
    .registers 2
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mEGLConfigChooser:Lcom/google/android/opengl/common/GLSurfaceView$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/opengl/common/GLSurfaceView;)Lcom/google/android/opengl/common/GLSurfaceView$EGLContextFactory;
    .registers 2
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mEGLContextFactory:Lcom/google/android/opengl/common/GLSurfaceView$EGLContextFactory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/opengl/common/GLSurfaceView;)Lcom/google/android/opengl/common/GLSurfaceView$EGLWindowSurfaceFactory;
    .registers 2
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/google/android/opengl/common/GLSurfaceView$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/opengl/common/GLSurfaceView;)Lcom/google/android/opengl/common/GLSurfaceView$GLWrapper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLWrapper:Lcom/google/android/opengl/common/GLSurfaceView$GLWrapper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/opengl/common/GLSurfaceView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 147
    iget v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method static synthetic access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;
    .registers 1

    .prologue
    .line 147
    sget-object v0, Lcom/google/android/opengl/common/GLSurfaceView;->sGLThreadManager:Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/opengl/common/GLSurfaceView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method private checkRenderThreadState()V
    .registers 3

    .prologue
    .line 1692
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    if-eqz v0, :cond_c

    .line 1693
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1696
    :cond_c
    return-void
.end method

.method private init()V
    .registers 3

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/google/android/opengl/common/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 214
    .local v0, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 217
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 222
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 553
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 557
    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mDetached:Z

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mRenderer:Lcom/google/android/opengl/common/GLSurfaceView$Renderer;

    if-eqz v1, :cond_2c

    .line 558
    const/4 v0, 0x1

    .line 559
    .local v0, renderMode:I
    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    if-eqz v1, :cond_16

    .line 560
    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    invoke-virtual {v1}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    .line 562
    :cond_16
    new-instance v1, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    iget-object v2, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mRenderer:Lcom/google/android/opengl/common/GLSurfaceView$Renderer;

    invoke-direct {v1, p0, v2}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;-><init>(Lcom/google/android/opengl/common/GLSurfaceView;Lcom/google/android/opengl/common/GLSurfaceView$Renderer;)V

    iput-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    .line 563
    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    .line 564
    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    invoke-virtual {v1, v0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->setRenderMode(I)V

    .line 566
    :cond_27
    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    invoke-virtual {v1}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->start()V

    .line 568
    .end local v0           #renderMode:I
    :cond_2c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mDetached:Z

    .line 569
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    if-eqz v0, :cond_9

    .line 582
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->requestExitAndWait()V

    .line 584
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mDetached:Z

    .line 585
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 586
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->onPause()V

    .line 524
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->onResume()V

    .line 535
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "r"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 545
    return-void
.end method

.method public requestRender()V
    .registers 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->requestRender()V

    .line 489
    return-void
.end method

.method public setEGLConfigChooser(Lcom/google/android/opengl/common/GLSurfaceView$EGLConfigChooser;)V
    .registers 2
    .parameter "configChooser"

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/google/android/opengl/common/GLSurfaceView;->checkRenderThreadState()V

    .line 378
    iput-object p1, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mEGLConfigChooser:Lcom/google/android/opengl/common/GLSurfaceView$EGLConfigChooser;

    .line 379
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .registers 3
    .parameter "needDepth"

    .prologue
    .line 396
    new-instance v0, Lcom/google/android/opengl/common/GLSurfaceView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lcom/google/android/opengl/common/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/google/android/opengl/common/GLSurfaceView;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/common/GLSurfaceView;->setEGLConfigChooser(Lcom/google/android/opengl/common/GLSurfaceView$EGLConfigChooser;)V

    .line 397
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .registers 2
    .parameter "version"

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/google/android/opengl/common/GLSurfaceView;->checkRenderThreadState()V

    .line 446
    iput p1, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mEGLContextClientVersion:I

    .line 447
    return-void
.end method

.method public setRenderMode(I)V
    .registers 3
    .parameter "renderMode"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->setRenderMode(I)V

    .line 467
    return-void
.end method

.method public setRenderer(Lcom/google/android/opengl/common/GLSurfaceView$Renderer;)V
    .registers 5
    .parameter "renderer"

    .prologue
    const/4 v2, 0x0

    .line 320
    invoke-direct {p0}, Lcom/google/android/opengl/common/GLSurfaceView;->checkRenderThreadState()V

    .line 321
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mEGLConfigChooser:Lcom/google/android/opengl/common/GLSurfaceView$EGLConfigChooser;

    if-nez v0, :cond_10

    .line 322
    new-instance v0, Lcom/google/android/opengl/common/GLSurfaceView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/opengl/common/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/google/android/opengl/common/GLSurfaceView;Z)V

    iput-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mEGLConfigChooser:Lcom/google/android/opengl/common/GLSurfaceView$EGLConfigChooser;

    .line 324
    :cond_10
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mEGLContextFactory:Lcom/google/android/opengl/common/GLSurfaceView$EGLContextFactory;

    if-nez v0, :cond_1b

    .line 325
    new-instance v0, Lcom/google/android/opengl/common/GLSurfaceView$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Lcom/google/android/opengl/common/GLSurfaceView$DefaultContextFactory;-><init>(Lcom/google/android/opengl/common/GLSurfaceView;Lcom/google/android/opengl/common/GLSurfaceView$1;)V

    iput-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mEGLContextFactory:Lcom/google/android/opengl/common/GLSurfaceView$EGLContextFactory;

    .line 327
    :cond_1b
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/google/android/opengl/common/GLSurfaceView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_26

    .line 328
    new-instance v0, Lcom/google/android/opengl/common/GLSurfaceView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Lcom/google/android/opengl/common/GLSurfaceView$DefaultWindowSurfaceFactory;-><init>(Lcom/google/android/opengl/common/GLSurfaceView$1;)V

    iput-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/google/android/opengl/common/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 330
    :cond_26
    iput-object p1, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mRenderer:Lcom/google/android/opengl/common/GLSurfaceView$Renderer;

    .line 331
    new-instance v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    invoke-direct {v0, p0, p1}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;-><init>(Lcom/google/android/opengl/common/GLSurfaceView;Lcom/google/android/opengl/common/GLSurfaceView$Renderer;)V

    iput-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    .line 332
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->start()V

    .line 333
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 6
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    invoke-virtual {v0, p3, p4}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->onWindowResize(II)V

    .line 514
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter "holder"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->surfaceCreated()V

    .line 497
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter "holder"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->surfaceDestroyed()V

    .line 506
    return-void
.end method
