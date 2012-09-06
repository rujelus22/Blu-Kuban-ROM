.class public Lcom/google/android/maps/driveabout/vector/cR;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ln/ak;

.field public static final b:Lcom/google/android/maps/driveabout/vector/cT;

.field public static final c:Lcom/google/android/maps/driveabout/vector/cT;

.field public static final d:Lcom/google/android/maps/driveabout/vector/cT;


# instance fields
.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Path;

.field private h:Lcom/google/android/maps/driveabout/vector/cW;

.field private i:Z

.field private final j:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 46
    sput-object v1, Lcom/google/android/maps/driveabout/vector/cR;->a:Ln/ak;

    .line 126
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cT;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cT;-><init>(Lcom/google/android/maps/driveabout/vector/cS;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cR;->b:Lcom/google/android/maps/driveabout/vector/cT;

    .line 131
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cT;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cT;-><init>(Lcom/google/android/maps/driveabout/vector/cS;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cR;->c:Lcom/google/android/maps/driveabout/vector/cT;

    .line 136
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cT;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cT;-><init>(Lcom/google/android/maps/driveabout/vector/cS;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cR;->d:Lcom/google/android/maps/driveabout/vector/cT;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cR;->e:Landroid/graphics/Paint;

    .line 145
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cR;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 146
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cR;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 147
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cR;->f:Landroid/graphics/Paint;

    .line 148
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cR;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 149
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cR;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cR;->g:Landroid/graphics/Path;

    .line 151
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cW;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cW;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cR;->h:Lcom/google/android/maps/driveabout/vector/cW;

    .line 156
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cR;->j:F

    .line 157
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aU;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;FIIIZ)Lcom/google/android/maps/driveabout/vector/cV;
    .registers 22
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 383
    move-object/from16 v0, p4

    invoke-direct {p0, p3, v0}, Lcom/google/android/maps/driveabout/vector/cR;->a(Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;)V

    .line 384
    const/high16 v1, 0x3fc0

    mul-float v1, v1, p5

    float-to-int v1, v1

    int-to-float v5, v1

    .line 385
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cR;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 387
    if-eqz p9, :cond_107

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cR;->j:F

    move v8, v1

    :goto_15
    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p9

    .line 388
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/maps/driveabout/vector/cR;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;FZ)[F

    move-result-object v1

    .line 393
    const/4 v2, 0x0

    aget v2, v1, v2

    const v3, 0x3f820c4a

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/lit8 v9, v2, 0x1

    .line 394
    const/4 v2, 0x1

    aget v1, v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v10, v1

    .line 397
    const/16 v1, 0x8

    invoke-static {v9, v1}, Lcom/google/android/maps/driveabout/vector/cV;->a(II)I

    move-result v2

    .line 398
    const/16 v1, 0x8

    invoke-static {v10, v1}, Lcom/google/android/maps/driveabout/vector/cV;->a(II)I

    move-result v1

    .line 400
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->H()I

    move-result v3

    if-gt v2, v3, :cond_50

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->H()I

    move-result v3

    if-le v1, v3, :cond_112

    .line 401
    :cond_50
    const-string v3, "TextGenerator texture too large"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because of string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->H()I

    move-result v2

    .line 405
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->H()I

    move-result v1

    move v3, v2

    move v2, v1

    .line 410
    :goto_8a
    const/high16 v1, -0x100

    move/from16 v0, p6

    if-eq v0, v1, :cond_95

    const/4 v1, -0x1

    move/from16 v0, p6

    if-ne v0, v1, :cond_10b

    :cond_95
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 412
    :goto_97
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->k()Lcom/google/android/maps/driveabout/vector/cp;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v1}, Lcom/google/android/maps/driveabout/vector/cp;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 413
    move/from16 v0, p8

    invoke-virtual {v11, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 414
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 415
    invoke-virtual {v2, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 418
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cR;->e:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 419
    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v1, v1

    add-float/2addr v1, v8

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 422
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cR;->f:Landroid/graphics/Paint;

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 423
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cR;->f:Landroid/graphics/Paint;

    const/high16 v4, 0x4000

    mul-float/2addr v4, v8

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 424
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cR;->e:Landroid/graphics/Paint;

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 425
    if-eqz p7, :cond_10e

    const/4 v3, 0x0

    cmpl-float v3, v8, v3

    if-lez v3, :cond_10e

    const/4 v6, 0x1

    .line 426
    :goto_da
    if-eqz p6, :cond_110

    const/4 v7, 0x1

    .line 428
    :goto_dd
    float-to-double v3, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 429
    float-to-int v3, v3

    int-to-float v4, v3

    int-to-float v5, v1

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/maps/driveabout/vector/cR;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFZZ)V

    .line 432
    new-instance v1, Lcom/google/android/maps/driveabout/vector/cV;

    invoke-direct {v1, p1}, Lcom/google/android/maps/driveabout/vector/cV;-><init>(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 433
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cR;->i:Z

    if-eqz v2, :cond_f8

    .line 434
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/cV;->e(Z)V

    .line 436
    :cond_f8
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/cV;->c(Z)V

    .line 437
    invoke-virtual {v1, v11, v9, v10}, Lcom/google/android/maps/driveabout/vector/cV;->a(Landroid/graphics/Bitmap;II)V

    .line 438
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cR;->i:Z

    if-nez v2, :cond_106

    .line 439
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 441
    :cond_106
    return-object v1

    .line 387
    :cond_107
    const/4 v1, 0x0

    move v8, v1

    goto/16 :goto_15

    .line 410
    :cond_10b
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_97

    .line 425
    :cond_10e
    const/4 v6, 0x0

    goto :goto_da

    .line 426
    :cond_110
    const/4 v7, 0x0

    goto :goto_dd

    :cond_112
    move v3, v2

    move v2, v1

    goto/16 :goto_8a
.end method

.method private a(Landroid/graphics/Canvas;Ljava/lang/String;FFZZ)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cR;->e:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/cR;->g:Landroid/graphics/Path;

    move-object v1, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 451
    if-eqz p5, :cond_18

    .line 452
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cR;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cR;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 454
    :cond_18
    if-eqz p6, :cond_21

    .line 455
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cR;->g:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cR;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 457
    :cond_21
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 497
    const/4 v0, 0x0

    .line 498
    sget-object v1, Lcom/google/android/maps/driveabout/vector/cR;->d:Lcom/google/android/maps/driveabout/vector/cT;

    if-ne p1, v1, :cond_6

    .line 499
    const/4 v0, 0x1

    .line 501
    :cond_6
    if-eqz p2, :cond_18

    .line 502
    invoke-virtual {p2}, Ln/ak;->b()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 503
    or-int/lit8 v0, v0, 0x1

    .line 505
    :cond_10
    invoke-virtual {p2}, Ln/ak;->c()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 506
    or-int/lit8 v0, v0, 0x2

    .line 509
    :cond_18
    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 510
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cR;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 513
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;F)F
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 184
    invoke-direct {p0, p2, p3}, Lcom/google/android/maps/driveabout/vector/cR;->a(Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;)V

    .line 185
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cR;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 187
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cR;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;FIII)Lcom/google/android/maps/driveabout/vector/cV;
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 312
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cU;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/vector/cU;-><init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;FIII)V

    .line 314
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cR;->h:Lcom/google/android/maps/driveabout/vector/cW;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cW;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/cV;

    .line 315
    if-nez v1, :cond_35

    .line 319
    if-nez p7, :cond_1e

    if-eqz p8, :cond_39

    :cond_1e
    const/4 v10, 0x1

    :goto_1f
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 321
    invoke-direct/range {v1 .. v10}, Lcom/google/android/maps/driveabout/vector/cR;->a(Lcom/google/android/maps/driveabout/vector/aU;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;FIIIZ)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v1

    .line 324
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cR;->h:Lcom/google/android/maps/driveabout/vector/cW;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/cW;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 328
    :cond_35
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cV;->f()V

    .line 329
    return-object v1

    .line 319
    :cond_39
    const/4 v10, 0x0

    goto :goto_1f
.end method

.method public a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;FIII)Lcom/google/android/maps/driveabout/vector/cV;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 346
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cU;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/maps/driveabout/vector/cU;-><init>(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;FIII)V

    .line 348
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cR;->h:Lcom/google/android/maps/driveabout/vector/cW;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cW;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cV;

    .line 349
    if-eqz v0, :cond_19

    .line 350
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->f()V

    .line 352
    :cond_19
    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cR;->h:Lcom/google/android/maps/driveabout/vector/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cW;->e()V

    .line 360
    return-void
.end method

.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cR;->h:Lcom/google/android/maps/driveabout/vector/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cW;->f()I

    move-result v0

    if-eq p1, v0, :cond_14

    .line 170
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cR;->h:Lcom/google/android/maps/driveabout/vector/cW;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cW;->e()V

    .line 171
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cW;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/cW;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cR;->h:Lcom/google/android/maps/driveabout/vector/cW;

    .line 173
    :cond_14
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;FZ)[F
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 199
    const/high16 v6, 0x3f80

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/cR;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;FZF)[F

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;FZF)[F
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x4000

    .line 219
    invoke-direct {p0, p2, p3}, Lcom/google/android/maps/driveabout/vector/cR;->a(Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;)V

    .line 220
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cR;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 222
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cR;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 224
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cR;->e:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 225
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 226
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v4, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v4

    .line 227
    iget v4, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float v0, v4, v0

    .line 230
    const/high16 v4, 0x3f80

    sub-float v4, p6, v4

    mul-float/2addr v4, v3

    .line 233
    if-eqz p5, :cond_42

    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_42

    .line 234
    iget v5, p0, Lcom/google/android/maps/driveabout/vector/cR;->j:F

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    .line 235
    iget v5, p0, Lcom/google/android/maps/driveabout/vector/cR;->j:F

    add-float/2addr v1, v5

    .line 236
    iget v5, p0, Lcom/google/android/maps/driveabout/vector/cR;->j:F

    add-float/2addr v0, v5

    .line 240
    :cond_42
    add-float v5, v1, v0

    add-float/2addr v3, v5

    .line 248
    div-float v5, v4, v6

    sub-float/2addr v1, v5

    .line 249
    div-float/2addr v4, v6

    sub-float/2addr v0, v4

    .line 251
    const/4 v4, 0x4

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v2, 0x1

    aput v3, v4, v2

    const/4 v2, 0x2

    aput v1, v4, v2

    const/4 v1, 0x3

    aput v0, v4, v1

    return-object v4
.end method

.method public b()V
    .registers 4

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cR;->h:Lcom/google/android/maps/driveabout/vector/cW;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cR;->h:Lcom/google/android/maps/driveabout/vector/cW;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cW;->f()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/16 v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cW;->a(I)V

    .line 367
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;FZ)[F
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 266
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [F

    .line 267
    array-length v0, v4

    if-nez v0, :cond_e

    move-object v0, v4

    .line 291
    :goto_d
    return-object v0

    .line 272
    :cond_e
    invoke-direct {p0, p2, p3}, Lcom/google/android/maps/driveabout/vector/cR;->a(Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;)V

    .line 273
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cR;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 274
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cR;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 278
    if-eqz p5, :cond_2d

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cR;->j:F

    :goto_1f
    move v2, v0

    move v0, v1

    .line 279
    :goto_21
    array-length v3, v4

    if-ge v0, v3, :cond_2f

    .line 281
    aget v3, v4, v0

    add-float/2addr v3, v2

    .line 282
    aput v2, v4, v0

    .line 279
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_21

    .line 278
    :cond_2d
    const/4 v0, 0x0

    goto :goto_1f

    .line 287
    :cond_2f
    if-eqz p5, :cond_42

    .line 288
    aget v0, v4, v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cR;->j:F

    sub-float/2addr v0, v2

    aput v0, v4, v1

    .line 289
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    aget v1, v4, v0

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cR;->j:F

    add-float/2addr v1, v2

    aput v1, v4, v0

    :cond_42
    move-object v0, v4

    .line 291
    goto :goto_d
.end method
