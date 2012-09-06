.class public Lcom/google/android/maps/driveabout/vector/dQ;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"

# interfaces
.implements Laj/m;


# static fields
.field private static final c:F

.field private static final d:F

.field private static final e:D


# instance fields
.field private final a:F

.field private final b:F

.field private final f:Lcom/google/android/maps/driveabout/vector/dS;

.field private g:Lcom/google/android/maps/driveabout/vector/dT;

.field private h:Lcom/google/android/maps/driveabout/vector/dT;

.field private i:Landroid/view/MotionEvent;

.field private j:F

.field private k:F

.field private l:Lcom/google/android/maps/driveabout/vector/dR;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 141
    sget-boolean v0, Lcom/google/googlenav/android/E;->h:Z

    if-eqz v0, :cond_19

    const v0, 0x3f7f3b64

    :goto_7
    sput v0, Lcom/google/android/maps/driveabout/vector/dQ;->c:F

    .line 147
    const/high16 v0, 0x3f80

    sget v1, Lcom/google/android/maps/driveabout/vector/dQ;->c:F

    div-float/2addr v0, v1

    sput v0, Lcom/google/android/maps/driveabout/vector/dQ;->d:F

    .line 149
    const-wide/high16 v0, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/android/maps/driveabout/vector/dQ;->e:D

    return-void

    .line 141
    :cond_19
    const v0, 0x3f7fbe77

    goto :goto_7
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/dS;)V
    .registers 4
    .parameter

    .prologue
    const/16 v1, 0x14

    .line 187
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 182
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dR;->a:Lcom/google/android/maps/driveabout/vector/dR;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->l:Lcom/google/android/maps/driveabout/vector/dR;

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->m:Z

    .line 188
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    .line 189
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dT;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/dT;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->g:Lcom/google/android/maps/driveabout/vector/dT;

    .line 190
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->b:F

    .line 191
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->a:F

    .line 193
    return-void
.end method

.method private static b(Laj/t;)Z
    .registers 3
    .parameter

    .prologue
    .line 400
    invoke-virtual {p0}, Laj/t;->g()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Laj/t;->e()F

    move-result v0

    sget v1, Lcom/google/android/maps/driveabout/vector/dQ;->c:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1c

    invoke-virtual {p0}, Laj/t;->e()F

    move-result v0

    sget v1, Lcom/google/android/maps/driveabout/vector/dQ;->d:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 458
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dT;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dQ;->g:Lcom/google/android/maps/driveabout/vector/dT;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/dT;-><init>(Lcom/google/android/maps/driveabout/vector/dT;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->h:Lcom/google/android/maps/driveabout/vector/dT;

    .line 459
    return-void
.end method

.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->g:Lcom/google/android/maps/driveabout/vector/dT;

    iput-boolean p1, v0, Lcom/google/android/maps/driveabout/vector/dT;->a:Z

    .line 427
    return-void
.end method

.method public a(Laj/r;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 407
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->g:Lcom/google/android/maps/driveabout/vector/dT;

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/dT;->d:Z

    if-eqz v0, :cond_59

    .line 408
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/dS;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/vector/dS;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Laj/r;->a(FF)V

    .line 409
    invoke-virtual {p1}, Laj/r;->e()F

    move-result v0

    const v1, 0x42652ee0

    mul-float v5, v0, v1

    .line 410
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->g:Lcom/google/android/maps/driveabout/vector/dT;

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/dT;->f:Z

    if-eqz v0, :cond_4f

    .line 411
    invoke-virtual {p1}, Laj/r;->a()F

    move-result v1

    .line 412
    invoke-virtual {p1}, Laj/r;->b()F

    move-result v2

    .line 413
    invoke-virtual {p1}, Laj/r;->c()F

    move-result v3

    .line 414
    invoke-virtual {p1}, Laj/r;->d()F

    move-result v4

    .line 415
    invoke-virtual {p1}, Laj/r;->f()Z

    move-result v0

    if-nez v0, :cond_45

    invoke-virtual {p1}, Laj/r;->g()Z

    move-result v0

    if-nez v0, :cond_45

    move v6, v7

    .line 416
    :cond_45
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/dS;->c_()Lcom/google/android/maps/driveabout/vector/dI;

    move-result-object v0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/dI;->b(FFFFFZ)F

    .line 422
    :goto_4e
    return v7

    .line 418
    :cond_4f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/dS;->c_()Lcom/google/android/maps/driveabout/vector/dI;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lcom/google/android/maps/driveabout/vector/dI;->b(FI)F

    goto :goto_4e

    :cond_59
    move v7, v6

    .line 422
    goto :goto_4e
.end method

.method public a(Laj/t;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v4, 0x4000

    .line 366
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->g:Lcom/google/android/maps/driveabout/vector/dT;

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/dT;->b:Z

    if-eqz v0, :cond_33

    .line 367
    invoke-virtual {p1}, Laj/t;->i()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 368
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/dS;->c_()Lcom/google/android/maps/driveabout/vector/dI;

    move-result-object v0

    const/high16 v1, -0x4080

    const/16 v2, 0x14a

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/dI;->a(FI)F

    move-result v0

    .line 370
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    invoke-interface {v2}, Lcom/google/android/maps/driveabout/vector/dS;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/dS;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/maps/driveabout/vector/dS;->a(FFF)V

    :cond_33
    :goto_33
    move v6, v7

    .line 396
    :cond_34
    return v6

    .line 372
    :cond_35
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->g:Lcom/google/android/maps/driveabout/vector/dT;

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/dT;->e:Z

    if-nez v0, :cond_41

    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/dQ;->b(Laj/t;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 375
    :cond_41
    invoke-virtual {p1}, Laj/t;->e()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lcom/google/android/maps/driveabout/vector/dQ;->e:D

    div-double/2addr v0, v2

    double-to-float v1, v0

    .line 377
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->g:Lcom/google/android/maps/driveabout/vector/dT;

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/dT;->e:Z

    if-eqz v0, :cond_8e

    .line 378
    invoke-virtual {p1}, Laj/t;->a()F

    move-result v2

    .line 379
    invoke-virtual {p1}, Laj/t;->b()F

    move-result v3

    .line 380
    invoke-virtual {p1}, Laj/t;->c()F

    move-result v4

    .line 381
    invoke-virtual {p1}, Laj/t;->d()F

    move-result v5

    .line 382
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/dQ;->b(Laj/t;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 383
    const/4 v1, 0x0

    .line 385
    :cond_6b
    invoke-virtual {p1}, Laj/t;->j()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-virtual {p1}, Laj/t;->f()Z

    move-result v0

    if-nez v0, :cond_7e

    invoke-virtual {p1}, Laj/t;->h()Z

    move-result v0

    if-nez v0, :cond_7e

    move v6, v7

    .line 386
    :cond_7e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/dS;->c_()Lcom/google/android/maps/driveabout/vector/dI;

    move-result-object v0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/dI;->a(FFFFFZ)F

    move-result v0

    .line 393
    :goto_88
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/maps/driveabout/vector/dS;->a(FFF)V

    goto :goto_33

    .line 389
    :cond_8e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/dS;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v2, v0, v4

    .line 390
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/dS;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v0, v4

    .line 391
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/dS;->c_()Lcom/google/android/maps/driveabout/vector/dI;

    move-result-object v0

    invoke-virtual {v0, v1, v6}, Lcom/google/android/maps/driveabout/vector/dI;->a(FI)F

    move-result v0

    goto :goto_88
.end method

.method public a(Laj/z;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 357
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dQ;->g:Lcom/google/android/maps/driveabout/vector/dT;

    iget-boolean v1, v1, Lcom/google/android/maps/driveabout/vector/dT;->c:Z

    if-eqz v1, :cond_15

    .line 358
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/vector/dS;->c_()Lcom/google/android/maps/driveabout/vector/dI;

    move-result-object v1

    invoke-virtual {p1}, Laj/z;->a()F

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/dI;->c(FI)V

    .line 359
    const/4 v0, 0x1

    .line 361
    :cond_15
    return v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->h:Lcom/google/android/maps/driveabout/vector/dT;

    if-eqz v0, :cond_8

    .line 463
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->h:Lcom/google/android/maps/driveabout/vector/dT;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->g:Lcom/google/android/maps/driveabout/vector/dT;

    .line 465
    :cond_8
    return-void
.end method

.method public b(Z)V
    .registers 3
    .parameter

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->g:Lcom/google/android/maps/driveabout/vector/dT;

    iput-boolean p1, v0, Lcom/google/android/maps/driveabout/vector/dT;->b:Z

    .line 431
    return-void
.end method

.method public c(Z)V
    .registers 3
    .parameter

    .prologue
    .line 434
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->g:Lcom/google/android/maps/driveabout/vector/dT;

    iput-boolean p1, v0, Lcom/google/android/maps/driveabout/vector/dT;->c:Z

    .line 435
    return-void
.end method

.method public d(Z)V
    .registers 3
    .parameter

    .prologue
    .line 438
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->g:Lcom/google/android/maps/driveabout/vector/dT;

    iput-boolean p1, v0, Lcom/google/android/maps/driveabout/vector/dT;->d:Z

    .line 439
    return-void
.end method

.method public e(Z)V
    .registers 3
    .parameter

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->g:Lcom/google/android/maps/driveabout/vector/dT;

    iput-boolean p1, v0, Lcom/google/android/maps/driveabout/vector/dT;->e:Z

    .line 443
    return-void
.end method

.method public f(Z)V
    .registers 3
    .parameter

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->g:Lcom/google/android/maps/driveabout/vector/dT;

    iput-boolean p1, v0, Lcom/google/android/maps/driveabout/vector/dT;->f:Z

    .line 447
    return-void
.end method

.method public g(Z)V
    .registers 3
    .parameter

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->g:Lcom/google/android/maps/driveabout/vector/dT;

    iput-boolean p1, v0, Lcom/google/android/maps/driveabout/vector/dT;->g:Z

    .line 451
    return-void
.end method

.method public h(Z)V
    .registers 3
    .parameter

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->g:Lcom/google/android/maps/driveabout/vector/dT;

    iput-boolean p1, v0, Lcom/google/android/maps/driveabout/vector/dT;->h:Z

    .line 455
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter

    .prologue
    .line 286
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dR;->b:Lcom/google/android/maps/driveabout/vector/dR;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->l:Lcom/google/android/maps/driveabout/vector/dR;

    .line 287
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/dS;->e()V

    .line 288
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/dS;->d(FF)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 289
    const/4 v0, 0x1

    .line 294
    :goto_1a
    return v0

    .line 291
    :cond_1b
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/dQ;->i:Landroid/view/MotionEvent;

    .line 292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->j:F

    .line 293
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->k:F

    .line 294
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 344
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->l:Lcom/google/android/maps/driveabout/vector/dR;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dR;->a:Lcom/google/android/maps/driveabout/vector/dR;

    if-ne v0, v1, :cond_13

    .line 200
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/dS;->a(FF)V

    .line 202
    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->g:Lcom/google/android/maps/driveabout/vector/dT;

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/dT;->a:Z

    if-eqz v0, :cond_1a

    .line 267
    invoke-virtual {p0, p2}, Lcom/google/android/maps/driveabout/vector/dQ;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 268
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/dS;->c_()Lcom/google/android/maps/driveabout/vector/dI;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/google/android/maps/driveabout/vector/dI;->b(FF)V

    .line 269
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/dS;->e()V

    .line 272
    :cond_1a
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 5
    .parameter

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->i:Landroid/view/MotionEvent;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->g:Lcom/google/android/maps/driveabout/vector/dT;

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/dT;->g:Z

    if-eqz v0, :cond_17

    .line 351
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/dS;->e(FF)V

    .line 353
    :cond_17
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 247
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    invoke-interface {v0, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/dS;->a(Landroid/view/MotionEvent;FF)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 256
    :cond_9
    :goto_9
    return v1

    .line 249
    :cond_a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->g:Lcom/google/android/maps/driveabout/vector/dT;

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/dT;->a:Z

    if-eqz v0, :cond_9

    .line 251
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    invoke-interface {v0, p3, p4}, Lcom/google/android/maps/driveabout/vector/dS;->f(FF)V

    .line 252
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/dS;->c_()Lcom/google/android/maps/driveabout/vector/dI;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/google/android/maps/driveabout/vector/dI;->a(FF)V

    .line 253
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/dS;->e()V

    .line 254
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/dQ;->m:Z

    goto :goto_9
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->g:Lcom/google/android/maps/driveabout/vector/dT;

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/dT;->h:Z

    if-eqz v0, :cond_18

    .line 278
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/dS;->e()V

    .line 279
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/dS;->c(FF)V

    .line 281
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/high16 v2, 0x4000

    .line 208
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->m:Z

    if-eqz v0, :cond_13

    .line 209
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/dS;->c_()Lcom/google/android/maps/driveabout/vector/dI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dI;->h()V

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->m:Z

    .line 214
    :cond_13
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->i:Landroid/view/MotionEvent;

    if-eqz v0, :cond_64

    .line 215
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->g:Lcom/google/android/maps/driveabout/vector/dT;

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/dT;->b:Z

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->l:Lcom/google/android/maps/driveabout/vector/dR;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dR;->b:Lcom/google/android/maps/driveabout/vector/dR;

    if-ne v0, v1, :cond_5e

    .line 217
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->g:Lcom/google/android/maps/driveabout/vector/dT;

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/dT;->e:Z

    if-eqz v0, :cond_4c

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 224
    :goto_31
    const/high16 v2, 0x3f80

    .line 231
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/dS;->c_()Lcom/google/android/maps/driveabout/vector/dI;

    move-result-object v3

    const/16 v4, 0x14a

    invoke-virtual {v3, v2, v1, v0, v4}, Lcom/google/android/maps/driveabout/vector/dI;->a(FFFI)F

    move-result v2

    .line 233
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    invoke-interface {v3, v2, v1, v0}, Lcom/google/android/maps/driveabout/vector/dS;->a(FFF)V

    .line 234
    iput-object v5, p0, Lcom/google/android/maps/driveabout/vector/dQ;->i:Landroid/view/MotionEvent;

    .line 235
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dR;->a:Lcom/google/android/maps/driveabout/vector/dR;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->l:Lcom/google/android/maps/driveabout/vector/dR;

    .line 236
    const/4 v0, 0x1

    .line 241
    :goto_4b
    return v0

    .line 221
    :cond_4c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/dS;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v1, v0, v2

    .line 222
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/dS;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    goto :goto_31

    .line 238
    :cond_5e
    iput-object v5, p0, Lcom/google/android/maps/driveabout/vector/dQ;->i:Landroid/view/MotionEvent;

    .line 239
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dR;->a:Lcom/google/android/maps/driveabout/vector/dR;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->l:Lcom/google/android/maps/driveabout/vector/dR;

    .line 241
    :cond_64
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dQ;->f:Lcom/google/android/maps/driveabout/vector/dS;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/dS;->b(FF)Z

    move-result v0

    goto :goto_4b
.end method
