.class public Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# static fields
.field private static final a:Lcom/google/android/maps/driveabout/vector/bE;


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;

.field private c:Lcom/google/android/maps/driveabout/vector/bD;

.field private d:Lcom/google/android/maps/driveabout/vector/cy;

.field private e:Z

.field private f:Lcom/google/android/maps/driveabout/vector/bl;

.field private g:Lcom/google/android/maps/driveabout/vector/bA;

.field private h:Lcom/google/android/maps/driveabout/vector/bB;

.field private i:Lcom/google/android/maps/driveabout/vector/br;

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1770
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bE;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bE;-><init>(Lcom/google/android/maps/driveabout/vector/bv;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a:Lcom/google/android/maps/driveabout/vector/bE;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 130
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 1772
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->b:Ljava/lang/ref/WeakReference;

    .line 131
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->b()V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1772
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->b:Ljava/lang/ref/WeakReference;

    .line 140
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->b()V

    .line 141
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;)I
    .registers 2
    .parameter

    .prologue
    .line 80
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->k:I

    return v0
.end method

.method static synthetic a()Lcom/google/android/maps/driveabout/vector/bE;
    .registers 1

    .prologue
    .line 80
    sget-object v0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a:Lcom/google/android/maps/driveabout/vector/bE;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;)Lcom/google/android/maps/driveabout/vector/bl;
    .registers 2
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->f:Lcom/google/android/maps/driveabout/vector/bl;

    return-object v0
.end method

.method private b()V
    .registers 1

    .prologue
    .line 159
    invoke-virtual {p0, p0}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 160
    return-void
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;)Lcom/google/android/maps/driveabout/vector/bA;
    .registers 2
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->g:Lcom/google/android/maps/driveabout/vector/bA;

    return-object v0
.end method

.method private c()V
    .registers 3

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->c:Lcom/google/android/maps/driveabout/vector/bD;

    if-eqz v0, :cond_c

    .line 1645
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1648
    :cond_c
    return-void
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;)Lcom/google/android/maps/driveabout/vector/bB;
    .registers 2
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->h:Lcom/google/android/maps/driveabout/vector/bB;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;)Lcom/google/android/maps/driveabout/vector/br;
    .registers 2
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->i:Lcom/google/android/maps/driveabout/vector/br;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;)I
    .registers 2
    .parameter

    .prologue
    .line 80
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->j:I

    return v0
.end method

.method static synthetic g(Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;)Z
    .registers 2
    .parameter

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->l:Z

    return v0
.end method

.method static synthetic h(Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;)Lcom/google/android/maps/driveabout/vector/cy;
    .registers 2
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->d:Lcom/google/android/maps/driveabout/vector/cy;

    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .registers 2

    .prologue
    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->c:Lcom/google/android/maps/driveabout/vector/bD;

    if-eqz v0, :cond_9

    .line 149
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->c:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->e()V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    .line 152
    :cond_9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 154
    return-void

    .line 152
    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method protected onAttachedToWindow()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 528
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 532
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->e:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->d:Lcom/google/android/maps/driveabout/vector/cy;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->c:Lcom/google/android/maps/driveabout/vector/bD;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->c:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->f()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 535
    :cond_18
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->c:Lcom/google/android/maps/driveabout/vector/bD;

    if-eqz v0, :cond_3b

    .line 536
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->c:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->b()I

    move-result v0

    .line 538
    :goto_22
    new-instance v2, Lcom/google/android/maps/driveabout/vector/bD;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Lcom/google/android/maps/driveabout/vector/bD;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->c:Lcom/google/android/maps/driveabout/vector/bD;

    .line 539
    if-eq v0, v1, :cond_32

    .line 540
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->c:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/bD;->a(I)V

    .line 542
    :cond_32
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->c:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->start()V

    .line 544
    :cond_37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->e:Z

    .line 545
    return-void

    :cond_3b
    move v0, v1

    goto :goto_22
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->m:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->c:Lcom/google/android/maps/driveabout/vector/bD;

    if-eqz v0, :cond_d

    .line 558
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->c:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->e()V

    .line 560
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->e:Z

    .line 561
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 562
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->c:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->c()V

    .line 463
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->c:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/maps/driveabout/vector/bD;->a(II)V

    .line 464
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3
    .parameter

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->c:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->d()V

    .line 474
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 483
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->c:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/maps/driveabout/vector/bD;->a(II)V

    .line 484
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2
    .parameter

    .prologue
    .line 489
    return-void
.end method

.method public setDebugFlags(I)V
    .registers 2
    .parameter

    .prologue
    .line 189
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->j:I

    .line 190
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
    .line 379
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bx;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/vector/bx;-><init>(Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;IIIIII)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->setEGLConfigChooser(Lcom/google/android/maps/driveabout/vector/bl;)V

    .line 381
    return-void
.end method

.method public setEGLConfigChooser(Lcom/google/android/maps/driveabout/vector/bl;)V
    .registers 2
    .parameter

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->c()V

    .line 343
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->f:Lcom/google/android/maps/driveabout/vector/bl;

    .line 344
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .registers 3
    .parameter

    .prologue
    .line 361
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bG;

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/driveabout/vector/bG;-><init>(Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->setEGLConfigChooser(Lcom/google/android/maps/driveabout/vector/bl;)V

    .line 362
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .registers 2
    .parameter

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->c()V

    .line 411
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->k:I

    .line 412
    return-void
.end method

.method public setEGLContextFactory(Lcom/google/android/maps/driveabout/vector/bA;)V
    .registers 2
    .parameter

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->c()V

    .line 312
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->g:Lcom/google/android/maps/driveabout/vector/bA;

    .line 313
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/google/android/maps/driveabout/vector/bB;)V
    .registers 2
    .parameter

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->c()V

    .line 326
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->h:Lcom/google/android/maps/driveabout/vector/bB;

    .line 327
    return-void
.end method

.method public setGLWrapper(Lcom/google/android/maps/driveabout/vector/br;)V
    .registers 2
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->i:Lcom/google/android/maps/driveabout/vector/br;

    .line 177
    return-void
.end method

.method public setKeepEglContextOnDetach(Z)V
    .registers 3
    .parameter

    .prologue
    .line 245
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->m:Z

    .line 246
    if-nez p1, :cond_19

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->e:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->c:Lcom/google/android/maps/driveabout/vector/bD;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->c:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->f()Z

    move-result v0

    if-nez v0, :cond_19

    .line 247
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->c:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->e()V

    .line 249
    :cond_19
    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .registers 2
    .parameter

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->l:Z

    .line 220
    return-void
.end method

.method public setRenderMode(I)V
    .registers 3
    .parameter

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->c:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bD;->a(I)V

    .line 432
    return-void
.end method

.method public setRenderer(Lcom/google/android/maps/driveabout/vector/cy;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 285
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->c()V

    .line 286
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->f:Lcom/google/android/maps/driveabout/vector/bl;

    if-nez v0, :cond_10

    .line 287
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bG;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/vector/bG;-><init>(Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;Z)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->f:Lcom/google/android/maps/driveabout/vector/bl;

    .line 289
    :cond_10
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->g:Lcom/google/android/maps/driveabout/vector/bA;

    if-nez v0, :cond_1b

    .line 290
    new-instance v0, Lcom/google/android/maps/driveabout/vector/by;

    invoke-direct {v0, p0, v2}, Lcom/google/android/maps/driveabout/vector/by;-><init>(Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;Lcom/google/android/maps/driveabout/vector/bv;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->g:Lcom/google/android/maps/driveabout/vector/bA;

    .line 292
    :cond_1b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->h:Lcom/google/android/maps/driveabout/vector/bB;

    if-nez v0, :cond_26

    .line 293
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bz;

    invoke-direct {v0, v2}, Lcom/google/android/maps/driveabout/vector/bz;-><init>(Lcom/google/android/maps/driveabout/vector/bv;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->h:Lcom/google/android/maps/driveabout/vector/bB;

    .line 295
    :cond_26
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->d:Lcom/google/android/maps/driveabout/vector/cy;

    .line 296
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bD;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bD;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->c:Lcom/google/android/maps/driveabout/vector/bD;

    .line 297
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->c:Lcom/google/android/maps/driveabout/vector/bD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->start()V

    .line 298
    return-void
.end method
