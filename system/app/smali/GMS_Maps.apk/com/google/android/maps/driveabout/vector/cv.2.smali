.class public Lcom/google/android/maps/driveabout/vector/cV;
.super Lz/A;
.source "SourceFile"


# instance fields
.field private i:Z

.field private j:Landroid/graphics/Bitmap;

.field private k:I

.field private l:I

.field private final m:[I

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:F

.field private s:F

.field private final t:J

.field private u:I

.field private v:I

.field private w:Z


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Lz/A;-><init>()V

    .line 49
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->m:[I

    .line 52
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cV;->n:Z

    .line 53
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cV;->o:Z

    .line 54
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cV;->p:Z

    .line 55
    iput-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/cV;->q:Z

    .line 75
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cV;->v:I

    .line 80
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cV;->w:Z

    .line 83
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/aU;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->t:J

    .line 84
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->m:[I

    aput v2, v0, v2

    .line 85
    iput v3, p0, Lcom/google/android/maps/driveabout/vector/cV;->u:I

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/aU;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/cV;-><init>(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 93
    iput-boolean p2, p0, Lcom/google/android/maps/driveabout/vector/cV;->w:Z

    .line 94
    return-void
.end method

.method public static a(II)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 406
    .line 407
    :goto_0
    if-ge p1, p0, :cond_5

    .line 408
    shl-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 410
    :cond_5
    return p1
.end method

.method static a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;Lcom/google/android/maps/driveabout/vector/cp;)Landroid/graphics/Bitmap;
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 429
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 430
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 431
    invoke-static {v0, v3}, Lcom/google/android/maps/driveabout/vector/cV;->a(II)I

    move-result v2

    .line 432
    invoke-static {v1, v3}, Lcom/google/android/maps/driveabout/vector/cV;->a(II)I

    move-result v3

    .line 434
    invoke-virtual {p2, v2, v3, p1}, Lcom/google/android/maps/driveabout/vector/cp;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 435
    invoke-virtual {v4, v10}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 436
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 437
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 438
    invoke-virtual {v5, p0, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 440
    if-le v2, v0, :cond_3a

    .line 441
    new-instance v7, Landroid/graphics/Rect;

    add-int/lit8 v8, v0, -0x1

    invoke-direct {v7, v8, v10, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    add-int/lit8 v9, v0, 0x1

    invoke-direct {v8, v0, v10, v9, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, p0, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 444
    :cond_3a
    if-le v3, v1, :cond_4d

    .line 445
    new-instance v7, Landroid/graphics/Rect;

    add-int/lit8 v8, v1, -0x1

    invoke-direct {v7, v10, v8, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    add-int/lit8 v9, v1, 0x1

    invoke-direct {v8, v10, v1, v0, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, p0, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 448
    :cond_4d
    if-le v2, v0, :cond_66

    if-le v3, v1, :cond_66

    .line 449
    new-instance v2, Landroid/graphics/Rect;

    add-int/lit8 v3, v0, -0x1

    add-int/lit8 v7, v1, -0x1

    invoke-direct {v2, v3, v7, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    add-int/lit8 v7, v0, 0x1

    add-int/lit8 v8, v1, 0x1

    invoke-direct {v3, v0, v1, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, p0, v2, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 452
    :cond_66
    return-object v4
.end method

.method static c(Landroid/graphics/Bitmap;)Z
    .registers 4
    .parameter

    .prologue
    .line 417
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 418
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 419
    add-int/lit8 v2, v0, -0x1

    and-int/2addr v0, v2

    if-nez v0, :cond_14

    add-int/lit8 v0, v1, -0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 391
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 392
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 393
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 394
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 395
    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private j()Lcom/google/android/maps/driveabout/vector/aU;
    .registers 3

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->t:J

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/aU;->b(J)Lcom/google/android/maps/driveabout/vector/aU;

    move-result-object v0

    .line 98
    if-nez v0, :cond_10

    .line 99
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Texture is out of date."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_10
    return-object v0
.end method


# virtual methods
.method public a()Ljavax/microedition/khronos/opengles/GL10;
    .registers 2

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cV;->j()Lcom/google/android/maps/driveabout/vector/aU;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    return-object v0
.end method

.method public a(Landroid/content/res/Resources;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/vector/cV;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cV;->a(Landroid/graphics/Bitmap;II)V

    .line 143
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->i:Z

    if-nez v1, :cond_16

    .line 144
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 146
    :cond_16
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .registers 10
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 171
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 172
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 174
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/cV;->c(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 175
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cV;->j()Lcom/google/android/maps/driveabout/vector/aU;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/aU;->k()Lcom/google/android/maps/driveabout/vector/cp;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;Lcom/google/android/maps/driveabout/vector/cp;)Landroid/graphics/Bitmap;

    move-result-object v1

    move v7, v6

    :goto_1f
    move-object v0, p0

    move v5, v4

    .line 182
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/cV;->a(Landroid/graphics/Bitmap;IIZZZ)V

    .line 183
    if-eqz v7, :cond_2d

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->i:Z

    if-nez v0, :cond_2d

    .line 184
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 186
    :cond_2d
    return-void

    :cond_2e
    move v7, v4

    move-object v1, p1

    goto :goto_1f
.end method

.method public a(Landroid/graphics/Bitmap;II)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 203
    .line 204
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/cV;->c(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 205
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cV;->j()Lcom/google/android/maps/driveabout/vector/aU;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/aU;->k()Lcom/google/android/maps/driveabout/vector/cp;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;Lcom/google/android/maps/driveabout/vector/cp;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 207
    const/4 v0, 0x1

    move v7, v0

    :goto_17
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    .line 212
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/cV;->a(Landroid/graphics/Bitmap;IIZZZ)V

    .line 213
    if-eqz v7, :cond_28

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->i:Z

    if-nez v0, :cond_28

    .line 214
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 216
    :cond_28
    return-void

    :cond_29
    move v7, v4

    move-object v1, p1

    goto :goto_17
.end method

.method declared-synchronized a(Landroid/graphics/Bitmap;IIZZZ)V
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 475
    monitor-enter p0

    if-eqz p5, :cond_10

    if-eqz p6, :cond_10

    .line 476
    :try_start_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot have both isMipMap and autoGenerateMipMap be true."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    .line 475
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 480
    :cond_10
    :try_start_10
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cV;->j()Lcom/google/android/maps/driveabout/vector/aU;

    move-result-object v8

    .line 481
    iget-object v0, v8, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 484
    if-eqz p6, :cond_75

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/aU;->E()Z

    move-result v1

    if-eqz v1, :cond_75

    const/4 v1, 0x1

    move v3, v1

    .line 487
    :goto_20
    if-nez p1, :cond_78

    .line 488
    iput p2, p0, Lcom/google/android/maps/driveabout/vector/cV;->k:I

    .line 489
    iput p3, p0, Lcom/google/android/maps/driveabout/vector/cV;->l:I

    .line 490
    const/4 v1, 0x1

    invoke-static {p2, v1}, Lcom/google/android/maps/driveabout/vector/cV;->a(II)I

    move-result v6

    .line 491
    const/4 v1, 0x1

    invoke-static {p3, v1}, Lcom/google/android/maps/driveabout/vector/cV;->a(II)I

    move-result v7

    .line 498
    :goto_30
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/aU;->B()I

    move-result v1

    .line 499
    if-gt v6, v1, :cond_38

    if-le v7, v1, :cond_8b

    .line 500
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Textures with dimensions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " are larger than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " the maximum supported size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :cond_75
    const/4 v1, 0x0

    move v3, v1

    goto :goto_20

    .line 493
    :cond_78
    iput p2, p0, Lcom/google/android/maps/driveabout/vector/cV;->k:I

    .line 494
    if-eqz p5, :cond_89

    div-int/lit8 v1, p3, 0x2

    :goto_7e
    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->l:I

    .line 495
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 496
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    goto :goto_30

    :cond_89
    move v1, p3

    .line 494
    goto :goto_7e

    .line 505
    :cond_8b
    int-to-float v1, p2

    int-to-float v2, v6

    div-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->r:F

    .line 506
    int-to-float v1, p3

    int-to-float v2, v7

    div-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->s:F

    .line 508
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->w:Z

    if-eqz v1, :cond_fc

    .line 509
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->n:Z

    if-eqz v1, :cond_f3

    const/16 v1, 0x2901

    move v2, v1

    :goto_a0
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->o:Z

    if-eqz v1, :cond_f8

    const/16 v1, 0x2901

    :goto_a6
    invoke-virtual {p0, v2, v1}, Lcom/google/android/maps/driveabout/vector/cV;->b(II)V

    .line 557
    :goto_a9
    if-eqz p1, :cond_205

    .line 558
    if-eqz p5, :cond_1b6

    .line 560
    const/4 v3, 0x0

    .line 561
    const/4 v2, 0x0

    .line 570
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    move v5, v2

    move v2, v3

    :goto_b5
    if-lez v1, :cond_1c5

    .line 573
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9}, Landroid/graphics/Canvas;-><init>()V

    .line 574
    new-instance v10, Landroid/graphics/Rect;

    const/4 v3, 0x0

    add-int v4, v1, v5

    invoke-direct {v10, v3, v5, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 575
    new-instance v11, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v11, v3, v4, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 577
    if-eqz p4, :cond_192

    .line 578
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/aU;->k()Lcom/google/android/maps/driveabout/vector/cp;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v1, v1, v4}, Lcom/google/android/maps/driveabout/vector/cp;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v4, v3

    .line 584
    :goto_d8
    invoke-virtual {v9, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 585
    const/4 v3, 0x0

    invoke-virtual {v9, p1, v10, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 586
    iget-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/cV;->w:Z

    if-eqz v3, :cond_19f

    .line 587
    const/4 v1, 0x1

    .line 588
    new-instance v3, Lz/q;

    invoke-direct {v3, v4}, Lz/q;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v3, v1}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lz/q;Z)V

    .line 592
    const/4 v1, 0x0

    .line 598
    :goto_ed
    add-int v3, v5, v1

    .line 570
    div-int/lit8 v1, v1, 0x2

    move v5, v3

    goto :goto_b5

    .line 509
    :cond_f3
    const v1, 0x812f

    move v2, v1

    goto :goto_a0

    :cond_f8
    const v1, 0x812f

    goto :goto_a6

    .line 513
    :cond_fc
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->m:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-nez v1, :cond_10a

    .line 514
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cV;->m:[I

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 516
    :cond_10a
    const/16 v1, 0xde1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cV;->m:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 519
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->n:Z

    if-eqz v1, :cond_152

    .line 520
    const/16 v1, 0xde1

    const/16 v2, 0x2802

    const v4, 0x46240400

    invoke-interface {v0, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 526
    :goto_122
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->o:Z

    if-eqz v1, :cond_15d

    .line 527
    const/16 v1, 0xde1

    const/16 v2, 0x2803

    const v4, 0x46240400

    invoke-interface {v0, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 534
    :goto_130
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->p:Z

    if-eqz v1, :cond_17e

    .line 535
    if-nez p5, :cond_138

    if-eqz v3, :cond_173

    .line 536
    :cond_138
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->q:Z

    if-eqz v1, :cond_168

    .line 537
    const/16 v1, 0xde1

    const/16 v2, 0x2801

    const v4, 0x461c0c00

    invoke-interface {v0, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 547
    :goto_146
    const/16 v1, 0xde1

    const/16 v2, 0x2800

    const v4, 0x46180400

    invoke-interface {v0, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    goto/16 :goto_a9

    .line 523
    :cond_152
    const/16 v1, 0xde1

    const/16 v2, 0x2802

    const v4, 0x47012f00

    invoke-interface {v0, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    goto :goto_122

    .line 530
    :cond_15d
    const/16 v1, 0xde1

    const/16 v2, 0x2803

    const v4, 0x47012f00

    invoke-interface {v0, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    goto :goto_130

    .line 540
    :cond_168
    const/16 v1, 0xde1

    const/16 v2, 0x2801

    const v4, 0x461c0400

    invoke-interface {v0, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    goto :goto_146

    .line 544
    :cond_173
    const/16 v1, 0xde1

    const/16 v2, 0x2801

    const v4, 0x46180400

    invoke-interface {v0, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    goto :goto_146

    .line 550
    :cond_17e
    const/16 v1, 0xde1

    const/16 v2, 0x2801

    const/high16 v4, 0x4618

    invoke-interface {v0, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 552
    const/16 v1, 0xde1

    const/16 v2, 0x2800

    const/high16 v4, 0x4618

    invoke-interface {v0, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    goto/16 :goto_a9

    .line 581
    :cond_192
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/aU;->k()Lcom/google/android/maps/driveabout/vector/cp;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v1, v1, v4}, Lcom/google/android/maps/driveabout/vector/cp;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v4, v3

    goto/16 :goto_d8

    .line 594
    :cond_19f
    const/16 v3, 0xde1

    const v9, 0x8191

    const/4 v10, 0x0

    invoke-interface {v0, v3, v9, v10}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 595
    const/16 v9, 0xde1

    add-int/lit8 v3, v2, 0x1

    const/4 v10, 0x0

    invoke-static {v9, v2, v4, v10}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 596
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    move v2, v3

    goto/16 :goto_ed

    .line 600
    :cond_1b6
    if-eqz v3, :cond_1e6

    .line 601
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->w:Z

    if-eqz v1, :cond_1d5

    .line 602
    const/4 v0, 0x1

    .line 603
    new-instance v1, Lz/q;

    invoke-direct {v1, p1}, Lz/q;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1, v0}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lz/q;Z)V

    .line 649
    :cond_1c5
    :goto_1c5
    if-nez p1, :cond_21d

    mul-int v0, v6, v7

    mul-int/lit8 v0, v0, 0x3

    :goto_1cb
    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->v:I

    .line 652
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->i:Z

    if-eqz v0, :cond_1d3

    .line 653
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cV;->j:Landroid/graphics/Bitmap;
    :try_end_1d3
    .catchall {:try_start_10 .. :try_end_1d3} :catchall_d

    .line 655
    :cond_1d3
    monitor-exit p0

    return-void

    .line 609
    :cond_1d5
    const/16 v1, 0xde1

    const v2, 0x8191

    const/4 v3, 0x1

    :try_start_1db
    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 611
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    goto :goto_1c5

    .line 626
    :cond_1e6
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->w:Z

    if-eqz v1, :cond_1f4

    .line 627
    const/4 v0, 0x0

    .line 628
    new-instance v1, Lz/q;

    invoke-direct {v1, p1}, Lz/q;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1, v0}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lz/q;Z)V

    goto :goto_1c5

    .line 630
    :cond_1f4
    const/16 v1, 0xde1

    const v2, 0x8191

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 631
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    goto :goto_1c5

    .line 644
    :cond_205
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFinish()V

    .line 645
    const/16 v1, 0xde1

    const v2, 0x8191

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 646
    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1907

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexImage2D(IIIIIIII)V

    goto :goto_1c5

    .line 649
    :cond_21d
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_224
    .catchall {:try_start_1db .. :try_end_224} :catchall_d

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_1cb
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cV;->j()Lcom/google/android/maps/driveabout/vector/aU;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    if-eq p1, v0, :cond_11

    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to bind texture into an OpenGL context other than the one it was created from."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_11
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->m:[I

    aget v0, v0, v2

    if-eqz v0, :cond_20

    .line 114
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->m:[I

    aget v1, v1, v2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 116
    :cond_20
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 289
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/cV;->n:Z

    .line 290
    return-void
.end method

.method public b()F
    .registers 2

    .prologue
    .line 321
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->r:F

    return v0
.end method

.method public b(Landroid/content/res/Resources;I)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 154
    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/vector/cV;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 156
    const/4 v5, 0x1

    .line 158
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object v0, p0

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/cV;->a(Landroid/graphics/Bitmap;IIZZZ)V

    .line 160
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->i:Z

    if-nez v0, :cond_1a

    .line 161
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 163
    :cond_1a
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->a(Landroid/graphics/Bitmap;II)V

    .line 194
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;II)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 265
    .line 266
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/cV;->c(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 267
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cV;->j()Lcom/google/android/maps/driveabout/vector/aU;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/aU;->k()Lcom/google/android/maps/driveabout/vector/cp;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;Lcom/google/android/maps/driveabout/vector/cp;)Landroid/graphics/Bitmap;

    move-result-object p1

    move v7, v4

    .line 274
    :goto_17
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/cV;->a(Landroid/graphics/Bitmap;IIZZZ)V

    .line 275
    if-eqz v7, :cond_2b

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->i:Z

    if-nez v0, :cond_2b

    .line 276
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 278
    :cond_2b
    return-void

    :cond_2c
    move v7, v5

    goto :goto_17
.end method

.method public b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 293
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/cV;->o:Z

    .line 294
    return-void
.end method

.method public c()F
    .registers 2

    .prologue
    .line 329
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->s:F

    return v0
.end method

.method public c(Landroid/content/res/Resources;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 224
    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/vector/cV;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cV;->b(Landroid/graphics/Bitmap;II)V

    .line 226
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->i:Z

    if-nez v1, :cond_16

    .line 227
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 229
    :cond_16
    return-void
.end method

.method public c(Z)V
    .registers 2
    .parameter

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/cV;->p:Z

    .line 302
    return-void
.end method

.method public d()I
    .registers 2

    .prologue
    .line 338
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->k:I

    return v0
.end method

.method public d(Landroid/content/res/Resources;I)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 238
    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/vector/cV;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 241
    const/4 v6, 0x0

    .line 242
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/cV;->a(Landroid/graphics/Bitmap;IIZZZ)V

    .line 244
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->i:Z

    if-nez v0, :cond_1a

    .line 245
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 247
    :cond_1a
    return-void
.end method

.method public d(Z)V
    .registers 2
    .parameter

    .prologue
    .line 309
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/cV;->q:Z

    .line 310
    return-void
.end method

.method public e()I
    .registers 2

    .prologue
    .line 347
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->l:I

    return v0
.end method

.method e(Z)V
    .registers 2
    .parameter

    .prologue
    .line 664
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/cV;->i:Z

    .line 665
    return-void
.end method

.method public declared-synchronized f()V
    .registers 2

    .prologue
    .line 354
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->u:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 355
    monitor-exit p0

    return-void

    .line 354
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()V
    .registers 4

    .prologue
    .line 362
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->u:I

    if-gtz v0, :cond_36

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseRef called on Texture with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->u:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " references!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 366
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2c

    .line 362
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 368
    :cond_2f
    :try_start_2f
    const-string v1, "Texture"

    invoke-static {v1, v0}, Lh/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_2c

    .line 382
    :cond_34
    :goto_34
    monitor-exit p0

    return-void

    .line 373
    :cond_36
    :try_start_36
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->t:J

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/aU;->b(J)Lcom/google/android/maps/driveabout/vector/aU;

    move-result-object v0

    .line 374
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->u:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->u:I

    if-nez v1, :cond_34

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->m:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-eqz v1, :cond_34

    .line 375
    if-eqz v0, :cond_55

    .line 376
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->m:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/aU;->c(I)V

    .line 380
    :cond_55
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->v:I
    :try_end_58
    .catchall {:try_start_36 .. :try_end_58} :catchall_2c

    goto :goto_34
.end method

.method public h()I
    .registers 2

    .prologue
    .line 386
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->u:I

    return v0
.end method

.method public i()I
    .registers 2

    .prologue
    .line 658
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->v:I

    return v0
.end method
