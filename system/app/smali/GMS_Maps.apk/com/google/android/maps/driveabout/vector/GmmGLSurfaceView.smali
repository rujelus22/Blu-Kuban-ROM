.class public Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final a:Lcom/google/android/maps/driveabout/vector/bq;


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;

.field private c:Lcom/google/android/maps/driveabout/vector/bp;

.field private d:Lcom/google/android/maps/driveabout/vector/bt;

.field private e:Z

.field private f:Lcom/google/android/maps/driveabout/vector/bl;

.field private g:Lcom/google/android/maps/driveabout/vector/bm;

.field private h:Lcom/google/android/maps/driveabout/vector/bn;

.field private i:Lcom/google/android/maps/driveabout/vector/br;

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2045
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bq;-><init>(Lcom/google/android/maps/driveabout/vector/bg;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->a:Lcom/google/android/maps/driveabout/vector/bq;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 237
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 2047
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->b:Ljava/lang/ref/WeakReference;

    .line 238
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->a()V

    .line 239
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 246
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2047
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->b:Ljava/lang/ref/WeakReference;

    .line 247
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->a()V

    .line 248
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)I
    .registers 2
    .parameter

    .prologue
    .line 187
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->k:I

    return v0
.end method

.method private a()V
    .registers 4

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 267
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 270
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_11

    .line 271
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 277
    :cond_11
    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/bl;
    .registers 2
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f:Lcom/google/android/maps/driveabout/vector/bl;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/bm;
    .registers 2
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->g:Lcom/google/android/maps/driveabout/vector/bm;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/bn;
    .registers 2
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->h:Lcom/google/android/maps/driveabout/vector/bn;

    return-object v0
.end method

.method private d()V
    .registers 3

    .prologue
    .line 1919
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bp;

    if-eqz v0, :cond_c

    .line 1920
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1923
    :cond_c
    return-void
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/br;
    .registers 2
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->i:Lcom/google/android/maps/driveabout/vector/br;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)I
    .registers 2
    .parameter

    .prologue
    .line 187
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->j:I

    return v0
.end method

.method static synthetic f()Lcom/google/android/maps/driveabout/vector/bq;
    .registers 1

    .prologue
    .line 187
    sget-object v0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->a:Lcom/google/android/maps/driveabout/vector/bq;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Z
    .registers 2
    .parameter

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->l:Z

    return v0
.end method

.method static synthetic h(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/bt;
    .registers 2
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->d:Lcom/google/android/maps/driveabout/vector/bt;

    return-object v0
.end method


# virtual methods
.method public b()V
    .registers 2

    .prologue
    .line 616
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bp;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bp;->g()V

    .line 617
    return-void
.end method

.method public b_()V
    .registers 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bp;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bp;->f()V

    .line 606
    return-void
.end method

.method public d_()V
    .registers 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bp;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bp;->c()V

    .line 571
    return-void
.end method

.method protected finalize()V
    .registers 2

    .prologue
    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bp;

    if-eqz v0, :cond_9

    .line 256
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bp;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bp;->h()V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    .line 259
    :cond_9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 261
    return-void

    .line 259
    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method protected onAttachedToWindow()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 635
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 639
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->e:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->d:Lcom/google/android/maps/driveabout/vector/bt;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bp;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bp;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bp;->i()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 642
    :cond_18
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bp;

    if-eqz v0, :cond_3b

    .line 643
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bp;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bp;->b()I

    move-result v0

    .line 645
    :goto_22
    new-instance v2, Lcom/google/android/maps/driveabout/vector/bp;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Lcom/google/android/maps/driveabout/vector/bp;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bp;

    .line 646
    if-eq v0, v1, :cond_32

    .line 647
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bp;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/bp;->a(I)V

    .line 649
    :cond_32
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bp;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bp;->start()V

    .line 651
    :cond_37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->e:Z

    .line 652
    return-void

    :cond_3b
    move v0, v1

    goto :goto_22
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 664
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->m:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bp;

    if-eqz v0, :cond_d

    .line 665
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bp;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bp;->h()V

    .line 667
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->e:Z

    .line 668
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 669
    return-void
.end method

.method public setDebugFlags(I)V
    .registers 2
    .parameter

    .prologue
    .line 306
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->j:I

    .line 307
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 496
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bi;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/vector/bi;-><init>(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;IIIIII)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->setEGLConfigChooser(Lcom/google/android/maps/driveabout/vector/bl;)V

    .line 498
    return-void
.end method

.method public setEGLConfigChooser(Lcom/google/android/maps/driveabout/vector/bl;)V
    .registers 2
    .parameter

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->d()V

    .line 460
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f:Lcom/google/android/maps/driveabout/vector/bl;

    .line 461
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .registers 3
    .parameter

    .prologue
    .line 478
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bu;

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/driveabout/vector/bu;-><init>(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->setEGLConfigChooser(Lcom/google/android/maps/driveabout/vector/bl;)V

    .line 479
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .registers 2
    .parameter

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->d()V

    .line 528
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->k:I

    .line 529
    return-void
.end method

.method public setEGLContextFactory(Lcom/google/android/maps/driveabout/vector/bm;)V
    .registers 2
    .parameter

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->d()V

    .line 429
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->g:Lcom/google/android/maps/driveabout/vector/bm;

    .line 430
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/google/android/maps/driveabout/vector/bn;)V
    .registers 2
    .parameter

    .prologue
    .line 442
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->d()V

    .line 443
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->h:Lcom/google/android/maps/driveabout/vector/bn;

    .line 444
    return-void
.end method

.method public setGLWrapper(Lcom/google/android/maps/driveabout/vector/br;)V
    .registers 2
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->i:Lcom/google/android/maps/driveabout/vector/br;

    .line 294
    return-void
.end method

.method public setKeepEglContextOnDetach(Z)V
    .registers 3
    .parameter

    .prologue
    .line 362
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->m:Z

    .line 363
    if-nez p1, :cond_19

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->e:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bp;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bp;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bp;->i()Z

    move-result v0

    if-nez v0, :cond_19

    .line 364
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bp;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bp;->h()V

    .line 366
    :cond_19
    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .registers 2
    .parameter

    .prologue
    .line 336
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->l:Z

    .line 337
    return-void
.end method

.method public setRenderMode(I)V
    .registers 3
    .parameter

    .prologue
    .line 548
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bp;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bp;->a(I)V

    .line 549
    return-void
.end method

.method public setRenderer(Lcom/google/android/maps/driveabout/vector/bt;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 402
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->d()V

    .line 403
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f:Lcom/google/android/maps/driveabout/vector/bl;

    if-nez v0, :cond_10

    .line 404
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bu;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/vector/bu;-><init>(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;Z)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f:Lcom/google/android/maps/driveabout/vector/bl;

    .line 406
    :cond_10
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->g:Lcom/google/android/maps/driveabout/vector/bm;

    if-nez v0, :cond_1b

    .line 407
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bj;

    invoke-direct {v0, p0, v2}, Lcom/google/android/maps/driveabout/vector/bj;-><init>(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;Lcom/google/android/maps/driveabout/vector/bg;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->g:Lcom/google/android/maps/driveabout/vector/bm;

    .line 409
    :cond_1b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->h:Lcom/google/android/maps/driveabout/vector/bn;

    if-nez v0, :cond_26

    .line 410
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bk;

    invoke-direct {v0, v2}, Lcom/google/android/maps/driveabout/vector/bk;-><init>(Lcom/google/android/maps/driveabout/vector/bg;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->h:Lcom/google/android/maps/driveabout/vector/bn;

    .line 412
    :cond_26
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->d:Lcom/google/android/maps/driveabout/vector/bt;

    .line 413
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bp;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bp;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bp;

    .line 414
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bp;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bp;->start()V

    .line 415
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 595
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bp;

    invoke-virtual {v0, p3, p4}, Lcom/google/android/maps/driveabout/vector/bp;->a(II)V

    .line 596
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bp;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bp;->d()V

    .line 579
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter

    .prologue
    .line 587
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c:Lcom/google/android/maps/driveabout/vector/bp;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bp;->e()V

    .line 588
    return-void
.end method
