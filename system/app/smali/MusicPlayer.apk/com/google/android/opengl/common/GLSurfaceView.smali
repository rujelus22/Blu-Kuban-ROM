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

.field private final mThisWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/opengl/common/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1912
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
    .line 205
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1914
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 206
    invoke-direct {p0}, Lcom/google/android/opengl/common/GLSurfaceView;->init()V

    .line 207
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 214
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1914
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 215
    invoke-direct {p0}, Lcom/google/android/opengl/common/GLSurfaceView;->init()V

    .line 216
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/opengl/common/GLSurfaceView;)Lcom/google/android/opengl/common/GLSurfaceView$Renderer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mRenderer:Lcom/google/android/opengl/common/GLSurfaceView$Renderer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/opengl/common/GLSurfaceView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/opengl/common/GLSurfaceView;)Lcom/google/android/opengl/common/GLSurfaceView$EGLConfigChooser;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mEGLConfigChooser:Lcom/google/android/opengl/common/GLSurfaceView$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/opengl/common/GLSurfaceView;)Lcom/google/android/opengl/common/GLSurfaceView$EGLContextFactory;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mEGLContextFactory:Lcom/google/android/opengl/common/GLSurfaceView$EGLContextFactory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/opengl/common/GLSurfaceView;)Lcom/google/android/opengl/common/GLSurfaceView$EGLWindowSurfaceFactory;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/google/android/opengl/common/GLSurfaceView$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/opengl/common/GLSurfaceView;)Lcom/google/android/opengl/common/GLSurfaceView$GLWrapper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLWrapper:Lcom/google/android/opengl/common/GLSurfaceView$GLWrapper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/opengl/common/GLSurfaceView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method static synthetic access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;
    .registers 1

    .prologue
    .line 155
    sget-object v0, Lcom/google/android/opengl/common/GLSurfaceView;->sGLThreadManager:Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/opengl/common/GLSurfaceView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method private checkRenderThreadState()V
    .registers 3

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    if-eqz v0, :cond_c

    .line 1787
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1790
    :cond_c
    return-void
.end method

.method private init()V
    .registers 3

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/google/android/opengl/common/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 235
    .local v0, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 238
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 243
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
    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    if-eqz v0, :cond_9

    .line 224
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->requestExitAndWait()V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    .line 227
    :cond_9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 229
    return-void

    .line 227
    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 572
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 576
    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mDetached:Z

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mRenderer:Lcom/google/android/opengl/common/GLSurfaceView$Renderer;

    if-eqz v1, :cond_2c

    .line 577
    const/4 v0, 0x1

    .line 578
    .local v0, renderMode:I
    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    if-eqz v1, :cond_16

    .line 579
    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    invoke-virtual {v1}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    .line 581
    :cond_16
    new-instance v1, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    iget-object v2, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    .line 582
    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    .line 583
    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    invoke-virtual {v1, v0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->setRenderMode(I)V

    .line 585
    :cond_27
    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    invoke-virtual {v1}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->start()V

    .line 587
    .end local v0           #renderMode:I
    :cond_2c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mDetached:Z

    .line 588
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    if-eqz v0, :cond_9

    .line 601
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->requestExitAndWait()V

    .line 603
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mDetached:Z

    .line 604
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 605
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->onPause()V

    .line 543
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->onResume()V

    .line 554
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "r"

    .prologue
    .line 563
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 564
    return-void
.end method

.method public requestRender()V
    .registers 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->requestRender()V

    .line 508
    return-void
.end method

.method public setDebugFlags(I)V
    .registers 2
    .parameter "debugFlags"

    .prologue
    .line 272
    iput p1, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mDebugFlags:I

    .line 273
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
    .line 433
    new-instance v0, Lcom/google/android/opengl/common/GLSurfaceView$ComponentSizeChooser;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/opengl/common/GLSurfaceView$ComponentSizeChooser;-><init>(Lcom/google/android/opengl/common/GLSurfaceView;IIIIII)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/common/GLSurfaceView;->setEGLConfigChooser(Lcom/google/android/opengl/common/GLSurfaceView$EGLConfigChooser;)V

    .line 435
    return-void
.end method

.method public setEGLConfigChooser(Lcom/google/android/opengl/common/GLSurfaceView$EGLConfigChooser;)V
    .registers 2
    .parameter "configChooser"

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/google/android/opengl/common/GLSurfaceView;->checkRenderThreadState()V

    .line 397
    iput-object p1, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mEGLConfigChooser:Lcom/google/android/opengl/common/GLSurfaceView$EGLConfigChooser;

    .line 398
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .registers 3
    .parameter "needDepth"

    .prologue
    .line 415
    new-instance v0, Lcom/google/android/opengl/common/GLSurfaceView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lcom/google/android/opengl/common/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/google/android/opengl/common/GLSurfaceView;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/common/GLSurfaceView;->setEGLConfigChooser(Lcom/google/android/opengl/common/GLSurfaceView$EGLConfigChooser;)V

    .line 416
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .registers 2
    .parameter "version"

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/google/android/opengl/common/GLSurfaceView;->checkRenderThreadState()V

    .line 465
    iput p1, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mEGLContextClientVersion:I

    .line 466
    return-void
.end method

.method public setEGLContextFactory(Lcom/google/android/opengl/common/GLSurfaceView$EGLContextFactory;)V
    .registers 2
    .parameter "factory"

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/google/android/opengl/common/GLSurfaceView;->checkRenderThreadState()V

    .line 366
    iput-object p1, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mEGLContextFactory:Lcom/google/android/opengl/common/GLSurfaceView$EGLContextFactory;

    .line 367
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/google/android/opengl/common/GLSurfaceView$EGLWindowSurfaceFactory;)V
    .registers 2
    .parameter "factory"

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/google/android/opengl/common/GLSurfaceView;->checkRenderThreadState()V

    .line 380
    iput-object p1, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/google/android/opengl/common/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 381
    return-void
.end method

.method public setGLWrapper(Lcom/google/android/opengl/common/GLSurfaceView$GLWrapper;)V
    .registers 2
    .parameter "glWrapper"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLWrapper:Lcom/google/android/opengl/common/GLSurfaceView$GLWrapper;

    .line 260
    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .registers 2
    .parameter "preserveOnPause"

    .prologue
    .line 302
    iput-boolean p1, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mPreserveEGLContextOnPause:Z

    .line 303
    return-void
.end method

.method public setRenderMode(I)V
    .registers 3
    .parameter "renderMode"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->setRenderMode(I)V

    .line 486
    return-void
.end method

.method public setRenderer(Lcom/google/android/opengl/common/GLSurfaceView$Renderer;)V
    .registers 5
    .parameter "renderer"

    .prologue
    const/4 v2, 0x0

    .line 339
    invoke-direct {p0}, Lcom/google/android/opengl/common/GLSurfaceView;->checkRenderThreadState()V

    .line 340
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mEGLConfigChooser:Lcom/google/android/opengl/common/GLSurfaceView$EGLConfigChooser;

    if-nez v0, :cond_10

    .line 341
    new-instance v0, Lcom/google/android/opengl/common/GLSurfaceView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/opengl/common/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/google/android/opengl/common/GLSurfaceView;Z)V

    iput-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mEGLConfigChooser:Lcom/google/android/opengl/common/GLSurfaceView$EGLConfigChooser;

    .line 343
    :cond_10
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mEGLContextFactory:Lcom/google/android/opengl/common/GLSurfaceView$EGLContextFactory;

    if-nez v0, :cond_1b

    .line 344
    new-instance v0, Lcom/google/android/opengl/common/GLSurfaceView$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Lcom/google/android/opengl/common/GLSurfaceView$DefaultContextFactory;-><init>(Lcom/google/android/opengl/common/GLSurfaceView;Lcom/google/android/opengl/common/GLSurfaceView$1;)V

    iput-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mEGLContextFactory:Lcom/google/android/opengl/common/GLSurfaceView$EGLContextFactory;

    .line 346
    :cond_1b
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/google/android/opengl/common/GLSurfaceView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_26

    .line 347
    new-instance v0, Lcom/google/android/opengl/common/GLSurfaceView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Lcom/google/android/opengl/common/GLSurfaceView$DefaultWindowSurfaceFactory;-><init>(Lcom/google/android/opengl/common/GLSurfaceView$1;)V

    iput-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/google/android/opengl/common/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 349
    :cond_26
    iput-object p1, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mRenderer:Lcom/google/android/opengl/common/GLSurfaceView$Renderer;

    .line 350
    new-instance v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    .line 351
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->start()V

    .line 352
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 6
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    invoke-virtual {v0, p3, p4}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->onWindowResize(II)V

    .line 533
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter "holder"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->surfaceCreated()V

    .line 516
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter "holder"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->surfaceDestroyed()V

    .line 525
    return-void
.end method
