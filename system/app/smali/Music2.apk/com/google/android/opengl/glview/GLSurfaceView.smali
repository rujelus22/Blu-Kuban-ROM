.class public Lcom/google/android/opengl/glview/GLSurfaceView;
.super Landroid/view/SurfaceView;
.source "GLSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/opengl/glview/GLSurfaceView$1;,
        Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;,
        Lcom/google/android/opengl/glview/GLSurfaceView$LogWriter;,
        Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;,
        Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;,
        Lcom/google/android/opengl/glview/GLSurfaceView$SimpleEGLConfigChooser;,
        Lcom/google/android/opengl/glview/GLSurfaceView$ComponentSizeChooser;,
        Lcom/google/android/opengl/glview/GLSurfaceView$BaseConfigChooser;,
        Lcom/google/android/opengl/glview/GLSurfaceView$EGLConfigChooser;,
        Lcom/google/android/opengl/glview/GLSurfaceView$DefaultWindowSurfaceFactory;,
        Lcom/google/android/opengl/glview/GLSurfaceView$EGLWindowSurfaceFactory;,
        Lcom/google/android/opengl/glview/GLSurfaceView$DefaultContextFactory;,
        Lcom/google/android/opengl/glview/GLSurfaceView$EGLContextFactory;,
        Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;,
        Lcom/google/android/opengl/glview/GLSurfaceView$GLWrapper;
    }
.end annotation


# static fields
.field private static final sGLThreadManager:Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mDetached:Z

.field private mEGLConfigChooser:Lcom/google/android/opengl/glview/GLSurfaceView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lcom/google/android/opengl/glview/GLSurfaceView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/google/android/opengl/glview/GLSurfaceView$EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

.field private mGLWrapper:Lcom/google/android/opengl/glview/GLSurfaceView$GLWrapper;

.field private mPreserveEGLContextOnPause:Z

.field private mRenderer:Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;

.field private final mThisWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/opengl/glview/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1859
    new-instance v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;-><init>(Lcom/google/android/opengl/glview/GLSurfaceView$1;)V

    sput-object v0, Lcom/google/android/opengl/glview/GLSurfaceView;->sGLThreadManager:Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 194
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1861
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 195
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLSurfaceView;->init()V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 203
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1861
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 204
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLSurfaceView;->init()V

    .line 205
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/opengl/glview/GLSurfaceView;)Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mRenderer:Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/opengl/glview/GLSurfaceView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/opengl/glview/GLSurfaceView;)Lcom/google/android/opengl/glview/GLSurfaceView$EGLConfigChooser;
    .registers 2
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLConfigChooser:Lcom/google/android/opengl/glview/GLSurfaceView$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/opengl/glview/GLSurfaceView;)Lcom/google/android/opengl/glview/GLSurfaceView$EGLContextFactory;
    .registers 2
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLContextFactory:Lcom/google/android/opengl/glview/GLSurfaceView$EGLContextFactory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/opengl/glview/GLSurfaceView;)Lcom/google/android/opengl/glview/GLSurfaceView$EGLWindowSurfaceFactory;
    .registers 2
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/google/android/opengl/glview/GLSurfaceView$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/opengl/glview/GLSurfaceView;)Lcom/google/android/opengl/glview/GLSurfaceView$GLWrapper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLWrapper:Lcom/google/android/opengl/glview/GLSurfaceView$GLWrapper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/opengl/glview/GLSurfaceView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 144
    iget v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method static synthetic access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;
    .registers 1

    .prologue
    .line 144
    sget-object v0, Lcom/google/android/opengl/glview/GLSurfaceView;->sGLThreadManager:Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/opengl/glview/GLSurfaceView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method private checkRenderThreadState()V
    .registers 3

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    if-eqz v0, :cond_c

    .line 1742
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1745
    :cond_c
    return-void
.end method

.method private init()V
    .registers 3

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 224
    .local v0, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 227
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 232
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    if-eqz v0, :cond_9

    .line 213
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->requestExitAndWait()V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    .line 216
    :cond_9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 218
    return-void

    .line 216
    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 563
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 567
    iget-boolean v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mDetached:Z

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mRenderer:Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;

    if-eqz v1, :cond_2c

    .line 568
    const/4 v0, 0x1

    .line 569
    .local v0, renderMode:I
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    if-eqz v1, :cond_16

    .line 570
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    invoke-virtual {v1}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    .line 572
    :cond_16
    new-instance v1, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    .line 573
    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    .line 574
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    invoke-virtual {v1, v0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->setRenderMode(I)V

    .line 576
    :cond_27
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    invoke-virtual {v1}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->start()V

    .line 578
    .end local v0           #renderMode:I
    :cond_2c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mDetached:Z

    .line 579
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    if-eqz v0, :cond_9

    .line 592
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->requestExitAndWait()V

    .line 594
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mDetached:Z

    .line 595
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 596
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->onPause()V

    .line 534
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->onResume()V

    .line 545
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "r"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 555
    return-void
.end method

.method public requestRender()V
    .registers 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->requestRender()V

    .line 499
    return-void
.end method

.method public setDebugFlags(I)V
    .registers 2
    .parameter "debugFlags"

    .prologue
    .line 261
    iput p1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mDebugFlags:I

    .line 262
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
    .line 424
    new-instance v0, Lcom/google/android/opengl/glview/GLSurfaceView$ComponentSizeChooser;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/opengl/glview/GLSurfaceView$ComponentSizeChooser;-><init>(Lcom/google/android/opengl/glview/GLSurfaceView;IIIIII)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/GLSurfaceView;->setEGLConfigChooser(Lcom/google/android/opengl/glview/GLSurfaceView$EGLConfigChooser;)V

    .line 426
    return-void
.end method

.method public setEGLConfigChooser(Lcom/google/android/opengl/glview/GLSurfaceView$EGLConfigChooser;)V
    .registers 2
    .parameter "configChooser"

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLSurfaceView;->checkRenderThreadState()V

    .line 388
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLConfigChooser:Lcom/google/android/opengl/glview/GLSurfaceView$EGLConfigChooser;

    .line 389
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .registers 3
    .parameter "needDepth"

    .prologue
    .line 406
    new-instance v0, Lcom/google/android/opengl/glview/GLSurfaceView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lcom/google/android/opengl/glview/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/google/android/opengl/glview/GLSurfaceView;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/GLSurfaceView;->setEGLConfigChooser(Lcom/google/android/opengl/glview/GLSurfaceView$EGLConfigChooser;)V

    .line 407
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .registers 2
    .parameter "version"

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLSurfaceView;->checkRenderThreadState()V

    .line 456
    iput p1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLContextClientVersion:I

    .line 457
    return-void
.end method

.method public setEGLContextFactory(Lcom/google/android/opengl/glview/GLSurfaceView$EGLContextFactory;)V
    .registers 2
    .parameter "factory"

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLSurfaceView;->checkRenderThreadState()V

    .line 357
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLContextFactory:Lcom/google/android/opengl/glview/GLSurfaceView$EGLContextFactory;

    .line 358
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/google/android/opengl/glview/GLSurfaceView$EGLWindowSurfaceFactory;)V
    .registers 2
    .parameter "factory"

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLSurfaceView;->checkRenderThreadState()V

    .line 371
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/google/android/opengl/glview/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 372
    return-void
.end method

.method public setGLWrapper(Lcom/google/android/opengl/glview/GLSurfaceView$GLWrapper;)V
    .registers 2
    .parameter "glWrapper"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLWrapper:Lcom/google/android/opengl/glview/GLSurfaceView$GLWrapper;

    .line 249
    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .registers 2
    .parameter "preserveOnPause"

    .prologue
    .line 292
    iput-boolean p1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mPreserveEGLContextOnPause:Z

    .line 293
    return-void
.end method

.method public setRenderMode(I)V
    .registers 3
    .parameter "renderMode"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->setRenderMode(I)V

    .line 477
    return-void
.end method

.method public setRenderer(Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;)V
    .registers 5
    .parameter "renderer"

    .prologue
    const/4 v2, 0x0

    .line 330
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLSurfaceView;->checkRenderThreadState()V

    .line 331
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLConfigChooser:Lcom/google/android/opengl/glview/GLSurfaceView$EGLConfigChooser;

    if-nez v0, :cond_10

    .line 332
    new-instance v0, Lcom/google/android/opengl/glview/GLSurfaceView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/opengl/glview/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/google/android/opengl/glview/GLSurfaceView;Z)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLConfigChooser:Lcom/google/android/opengl/glview/GLSurfaceView$EGLConfigChooser;

    .line 334
    :cond_10
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLContextFactory:Lcom/google/android/opengl/glview/GLSurfaceView$EGLContextFactory;

    if-nez v0, :cond_1b

    .line 335
    new-instance v0, Lcom/google/android/opengl/glview/GLSurfaceView$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Lcom/google/android/opengl/glview/GLSurfaceView$DefaultContextFactory;-><init>(Lcom/google/android/opengl/glview/GLSurfaceView;Lcom/google/android/opengl/glview/GLSurfaceView$1;)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLContextFactory:Lcom/google/android/opengl/glview/GLSurfaceView$EGLContextFactory;

    .line 337
    :cond_1b
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/google/android/opengl/glview/GLSurfaceView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_26

    .line 338
    new-instance v0, Lcom/google/android/opengl/glview/GLSurfaceView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Lcom/google/android/opengl/glview/GLSurfaceView$DefaultWindowSurfaceFactory;-><init>(Lcom/google/android/opengl/glview/GLSurfaceView$1;)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/google/android/opengl/glview/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 340
    :cond_26
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mRenderer:Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;

    .line 341
    new-instance v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    .line 342
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->start()V

    .line 343
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 6
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    invoke-virtual {v0, p3, p4}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->onWindowResize(II)V

    .line 524
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter "holder"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->surfaceCreated()V

    .line 507
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter "holder"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->surfaceDestroyed()V

    .line 516
    return-void
.end method
