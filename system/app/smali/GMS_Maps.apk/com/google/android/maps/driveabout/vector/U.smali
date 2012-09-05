.class public Lcom/google/android/maps/driveabout/vector/U;
.super Lcom/google/android/maps/driveabout/vector/aE;


# instance fields
.field private final a:I

.field private final b:[F

.field private c:Lcom/google/android/maps/driveabout/vector/m;

.field private d:Landroid/view/View;

.field private e:Lcom/google/android/maps/driveabout/vector/p;

.field private f:Landroid/graphics/Bitmap;

.field private g:Lcom/google/android/maps/driveabout/vector/cw;

.field private h:Lcom/google/android/maps/driveabout/vector/V;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:F

.field private final n:I


# direct methods
.method private constructor <init>(ILandroid/content/res/Resources;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aE;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->b:[F

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/U;->a:I

    if-nez p2, :cond_13

    const v0, 0xffff00

    :goto_10
    iput v0, p0, Lcom/google/android/maps/driveabout/vector/U;->n:I

    return-void

    :cond_13
    const v0, 0x7f080065

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_10
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    const v0, 0x927c0

    invoke-direct {p0, v0, p1}, Lcom/google/android/maps/driveabout/vector/U;-><init>(ILandroid/content/res/Resources;)V

    return-void
.end method

.method private a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/di;Lcom/google/android/maps/driveabout/vector/cp;)V
    .registers 8

    invoke-virtual {p3, p2}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    invoke-virtual {p4, p2}, Lcom/google/android/maps/driveabout/vector/cp;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->g:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cw;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    return-void
.end method

.method private c(FFLcom/google/android/maps/driveabout/vector/t;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/U;->c:Lcom/google/android/maps/driveabout/vector/m;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/U;->c:Lcom/google/android/maps/driveabout/vector/m;

    invoke-interface {v2}, Lcom/google/android/maps/driveabout/vector/m;->d()Lt/L;

    move-result-object v2

    if-nez v2, :cond_10

    :cond_e
    move v0, v1

    :cond_f
    :goto_f
    return v0

    :cond_10
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/U;->c:Lcom/google/android/maps/driveabout/vector/m;

    invoke-interface {v2}, Lcom/google/android/maps/driveabout/vector/m;->d()Lt/L;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/google/android/maps/driveabout/vector/t;->b(Lt/L;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/U;->e:Lcom/google/android/maps/driveabout/vector/p;

    aget v4, v2, v1

    int-to-float v4, v4

    aget v5, v2, v0

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/p;->a(FF)V

    aget v3, v2, v1

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/U;->k:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/U;->k:I

    add-int/2addr v4, v3

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_39

    int-to-float v3, v4

    cmpl-float v3, p1, v3

    if-lez v3, :cond_3b

    :cond_39
    move v0, v1

    goto :goto_f

    :cond_3b
    aget v2, v2, v0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/U;->c:Lcom/google/android/maps/driveabout/vector/m;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/m;->f()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/U;->l:I

    sub-int v3, v2, v3

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-ltz v3, :cond_52

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_f

    :cond_52
    move v0, v1

    goto :goto_f
.end method

.method private h()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->g:Lcom/google/android/maps/driveabout/vector/cw;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->g:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->f()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/U;->g:Lcom/google/android/maps/driveabout/vector/cw;

    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/U;->f:Landroid/graphics/Bitmap;

    :cond_17
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->e:Lcom/google/android/maps/driveabout/vector/p;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->e:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->b()V

    :cond_20
    return-void
.end method

.method private i()Landroid/graphics/Bitmap;
    .registers 7

    const/high16 v2, -0x8000

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/U;->i:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/U;->j:I

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/U;->d:Landroid/view/View;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/U;->k:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/U;->l:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->d:Landroid/view/View;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/U;->k:I

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/U;->l:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/U;->k:I

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/cw;->a(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/U;->l:I

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/vector/cw;->a(II)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/U;->k:I

    sub-int v4, v0, v4

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/U;->l:I

    sub-int v5, v1, v5

    int-to-float v4, v4

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/U;->d:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/U;->e:Lcom/google/android/maps/driveabout/vector/p;

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v3, v0, v1}, Lcom/google/android/maps/driveabout/vector/p;->d(FF)V

    return-object v2
.end method


# virtual methods
.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/V;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/U;->h:Lcom/google/android/maps/driveabout/vector/V;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/U;->h()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/cm;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->c:Lcom/google/android/maps/driveabout/vector/m;

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/U;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->f:Landroid/graphics/Bitmap;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 11

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->b()I

    move-result v0

    if-nez v0, :cond_10

    monitor-enter p0

    :try_start_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->c:Lcom/google/android/maps/driveabout/vector/m;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->f:Landroid/graphics/Bitmap;

    if-nez v0, :cond_11

    :cond_f
    monitor-exit p0

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->c:Lcom/google/android/maps/driveabout/vector/m;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/m;->d()Lt/L;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->u()Lt/at;

    move-result-object v1

    invoke-virtual {v1}, Lt/av;->a()Lt/au;

    move-result-object v2

    if-eqz v0, :cond_2d

    invoke-virtual {v2, v0}, Lt/au;->a(Lt/L;)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {v1, v0}, Lt/av;->a(Lt/L;)Z

    move-result v1

    if-nez v1, :cond_3a

    :cond_2d
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/U;->c:Lcom/google/android/maps/driveabout/vector/m;

    invoke-interface {v1, p2}, Lcom/google/android/maps/driveabout/vector/m;->b(Lcom/google/android/maps/driveabout/vector/t;)Z

    move-result v1

    if-nez v1, :cond_3a

    monitor-exit p0

    goto :goto_10

    :catchall_37
    move-exception v0

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_37

    throw v0

    :cond_3a
    :try_start_3a
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->o()V

    const/4 v2, 0x1

    const/16 v3, 0x303

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v2, 0x2300

    const/16 v3, 0x2200

    const/16 v4, 0x1e01

    invoke-interface {v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/U;->g:Lcom/google/android/maps/driveabout/vector/cw;

    if-nez v2, :cond_60

    new-instance v2, Lcom/google/android/maps/driveabout/vector/cw;

    invoke-direct {v2, p1}, Lcom/google/android/maps/driveabout/vector/cw;-><init>(Lcom/google/android/maps/driveabout/vector/aT;)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/U;->g:Lcom/google/android/maps/driveabout/vector/cw;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/U;->g:Lcom/google/android/maps/driveabout/vector/cw;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/U;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/cw;->b(Landroid/graphics/Bitmap;)V

    :cond_60
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/U;->b:[F

    invoke-virtual {p2, v0, v2}, Lcom/google/android/maps/driveabout/vector/t;->a(Lt/L;[F)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->b:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/U;->b:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v0, v2}, Lcom/google/android/maps/driveabout/vector/t;->d(FF)Lt/L;

    move-result-object v0

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/U;->m:F

    invoke-static {v1, p2, v0, v2}, Lcom/google/android/maps/driveabout/vector/cN;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/t;Lt/L;F)V

    invoke-static {v1, p2}, Lcom/google/android/maps/driveabout/vector/cN;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/t;)V

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->m()Lt/L;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->b()Lt/L;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lt/L;->d(Lt/L;Lt/L;Lt/L;)F

    move-result v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/U;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/U;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/U;->c:Lcom/google/android/maps/driveabout/vector/m;

    invoke-interface {v4}, Lcom/google/android/maps/driveabout/vector/m;->f()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    sub-float v4, v5, v4

    mul-float/2addr v0, v4

    neg-float v4, v2

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/U;->c:Lcom/google/android/maps/driveabout/vector/m;

    invoke-interface {v5}, Lcom/google/android/maps/driveabout/vector/m;->q_()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/U;->c:Lcom/google/android/maps/driveabout/vector/m;

    invoke-interface {v6}, Lcom/google/android/maps/driveabout/vector/m;->f()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v0, v6

    invoke-interface {v1, v4, v5, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    const/high16 v0, 0x3f80

    invoke-interface {v1, v2, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->e:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->c()Z

    move-result v0

    if-eqz v0, :cond_f9

    const/16 v0, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-interface {v1, v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/U;->n:I

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/vector/U;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/di;->c:Lcom/google/android/maps/driveabout/vector/di;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cp;->b:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/google/android/maps/driveabout/vector/U;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/di;Lcom/google/android/maps/driveabout/vector/cp;)V

    :cond_ee
    :goto_ee
    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    monitor-exit p0
    :try_end_f2
    .catchall {:try_start_3a .. :try_end_f2} :catchall_37

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->e:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->f()V

    goto/16 :goto_10

    :cond_f9
    :try_start_f9
    sget-object v0, Lcom/google/android/maps/driveabout/vector/di;->c:Lcom/google/android/maps/driveabout/vector/di;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cp;->b:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/google/android/maps/driveabout/vector/U;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/di;Lcom/google/android/maps/driveabout/vector/cp;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->e:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->a()Lcom/google/android/maps/driveabout/vector/q;

    move-result-object v0

    if-eqz v0, :cond_ee

    const/16 v2, 0x2300

    const/16 v3, 0x2200

    const/16 v4, 0x2100

    invoke-interface {v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/U;->n:I

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/vector/U;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/q;->a:Lcom/google/android/maps/driveabout/vector/di;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/q;->b:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-direct {p0, v1, p1, v2, v0}, Lcom/google/android/maps/driveabout/vector/U;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/di;Lcom/google/android/maps/driveabout/vector/cp;)V
    :try_end_11d
    .catchall {:try_start_f9 .. :try_end_11d} :catchall_37

    goto :goto_ee
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/m;Lcom/google/android/maps/driveabout/vector/p;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/U;->e:Lcom/google/android/maps/driveabout/vector/p;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->c:Lcom/google/android/maps/driveabout/vector/m;

    if-ne v0, p1, :cond_2d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->d:Landroid/view/View;

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/p;->e()Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_2d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->c:Lcom/google/android/maps/driveabout/vector/m;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->c:Lcom/google/android/maps/driveabout/vector/m;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/m;->o_()V

    :cond_18
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->d:Landroid/view/View;

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/U;->h()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/U;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->f:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_59

    :cond_2b
    :goto_2b
    monitor-exit p0

    return-void

    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->c:Lcom/google/android/maps/driveabout/vector/m;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->c:Lcom/google/android/maps/driveabout/vector/m;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/m;->p_()V

    :cond_36
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/U;->c:Lcom/google/android/maps/driveabout/vector/m;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->c:Lcom/google/android/maps/driveabout/vector/m;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/m;->o_()V

    if-eqz p2, :cond_45

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/p;->e()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->d:Landroid/view/View;

    :cond_45
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->d:Landroid/view/View;

    if-eqz v0, :cond_2b

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/U;->h()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/U;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->f:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_58
    .catchall {:try_start_2d .. :try_end_58} :catchall_59

    goto :goto_2b

    :catchall_59
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(FFLcom/google/android/maps/driveabout/vector/t;)Z
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/U;->c(FFLcom/google/android/maps/driveabout/vector/t;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->e:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/p;->c(FF)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_11

    const/4 v0, 0x1

    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_d

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a_(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/maps/driveabout/vector/U;->c(FFLcom/google/android/maps/driveabout/vector/t;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->e:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/p;->b(FF)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/U;->g()V

    const/4 v0, 0x1

    monitor-exit p0

    :goto_11
    return v0

    :cond_12
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->c:Lcom/google/android/maps/driveabout/vector/m;

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/U;->f()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/U;->g()V

    :cond_1c
    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_11

    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public declared-synchronized a_(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 4

    monitor-enter p0

    const/high16 v0, 0x3f80

    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->h()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/t;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/U;->m:F

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->d()I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/U;->i:I

    if-ne v0, v1, :cond_1d

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->e()I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/U;->j:I

    if-eq v0, v1, :cond_36

    :cond_1d
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->d()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/U;->i:I

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->e()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/U;->j:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_36

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/U;->h()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/U;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->f:Landroid/graphics/Bitmap;
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_39

    :cond_36
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/maps/driveabout/vector/U;->c(FFLcom/google/android/maps/driveabout/vector/t;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->h:Lcom/google/android/maps/driveabout/vector/V;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->h:Lcom/google/android/maps/driveabout/vector/V;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/U;->c:Lcom/google/android/maps/driveabout/vector/m;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/V;->b(Lcom/google/android/maps/driveabout/vector/m;)V

    :cond_12
    const/4 v0, 0x1

    monitor-exit p0

    :goto_14
    return v0

    :cond_15
    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_14

    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public c(FFLt/L;Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/maps/driveabout/vector/U;->c(FFLcom/google/android/maps/driveabout/vector/t;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/U;->r_()V

    const/4 v0, 0x1

    monitor-exit p0

    :goto_c
    return v0

    :cond_d
    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public declared-synchronized e()Lcom/google/android/maps/driveabout/vector/m;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->c:Lcom/google/android/maps/driveabout/vector/m;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->c:Lcom/google/android/maps/driveabout/vector/m;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->c:Lcom/google/android/maps/driveabout/vector/m;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/m;->p_()V

    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->c:Lcom/google/android/maps/driveabout/vector/m;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected g()V
    .registers 3

    invoke-super {p0}, Lcom/google/android/maps/driveabout/vector/aE;->g()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->h:Lcom/google/android/maps/driveabout/vector/V;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->h:Lcom/google/android/maps/driveabout/vector/V;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/U;->c:Lcom/google/android/maps/driveabout/vector/m;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/V;->a(Lcom/google/android/maps/driveabout/vector/m;)V

    :cond_e
    return-void
.end method

.method public declared-synchronized r_()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->e:Lcom/google/android/maps/driveabout/vector/p;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/U;->e:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->b()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public s_()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/U;->a:I

    return v0
.end method
