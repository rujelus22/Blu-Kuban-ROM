.class public Lcom/google/android/maps/driveabout/app/dC;
.super Lcom/google/android/maps/driveabout/app/aM;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Path;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Ln/Q;

.field private g:Ln/U;

.field private h:Lcom/google/android/maps/driveabout/vector/cV;

.field private i:F

.field private j:[I

.field private k:I

.field private l:Landroid/graphics/Bitmap;

.field private final m:Ln/Q;

.field private final n:Ln/Q;


# direct methods
.method public constructor <init>(Lo/x;Lo/I;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aM;-><init>()V

    .line 83
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->m:Ln/Q;

    .line 84
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->n:Ln/Q;

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/app/dC;->a(Lo/x;Lo/I;)V

    .line 91
    return-void
.end method

.method static a(Lcom/google/android/maps/driveabout/vector/k;Ln/U;Ln/Q;I)Ln/U;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 328
    new-instance v0, Ln/Q;

    invoke-direct {v0, p3, p3}, Ln/Q;-><init>(II)V

    .line 329
    new-instance v1, Ln/aa;

    invoke-virtual {p2, v0}, Ln/Q;->f(Ln/Q;)Ln/Q;

    move-result-object v3

    invoke-virtual {p2, v0}, Ln/Q;->e(Ln/Q;)Ln/Q;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Ln/aa;-><init>(Ln/Q;Ln/Q;)V

    .line 331
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 332
    new-instance v0, Ln/f;

    invoke-direct {v0, v1}, Ln/f;-><init>(Ln/ab;)V

    .line 333
    invoke-virtual {v0, p1, v6}, Ln/f;->a(Ln/U;Ljava/util/List;)V

    .line 336
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_28

    .line 358
    :cond_27
    :goto_27
    return-object v4

    .line 338
    :cond_28
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_40

    .line 339
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/U;

    .line 355
    :goto_35
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ln/U;->b()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_27

    move-object v4, v0

    .line 358
    goto :goto_27

    :cond_40
    move v1, v2

    move-object v3, v4

    .line 342
    :goto_42
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6b

    .line 343
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/U;

    move v5, v2

    .line 344
    :goto_4f
    invoke-virtual {v0}, Ln/U;->b()I

    move-result v7

    if-ge v5, v7, :cond_60

    .line 345
    invoke-virtual {v0, v5}, Ln/U;->a(I)Ln/Q;

    move-result-object v7

    invoke-virtual {v7, p2}, Ln/Q;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_64

    move-object v3, v0

    .line 350
    :cond_60
    if-eqz v3, :cond_67

    move-object v0, v3

    .line 351
    goto :goto_35

    .line 344
    :cond_64
    add-int/lit8 v5, v5, 0x1

    goto :goto_4f

    .line 342
    :cond_67
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_42

    :cond_6b
    move-object v0, v3

    goto :goto_35
.end method

.method static a(Lo/x;I)Ln/U;
    .registers 10
    .parameter
    .parameter

    .prologue
    const-wide v6, 0x409f400000000000L

    .line 125
    invoke-virtual {p0, p1}, Lo/x;->b(I)D

    move-result-wide v0

    .line 126
    const-wide/16 v2, 0x0

    sub-double v4, v0, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lo/x;->a(D)I

    move-result v2

    .line 128
    invoke-virtual {p0}, Lo/x;->n()Ln/U;

    move-result-object v3

    invoke-virtual {v3}, Ln/U;->b()I

    move-result v3

    add-double/2addr v0, v6

    const-wide/high16 v4, 0x3ff0

    sub-double/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Lo/x;->a(D)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 131
    new-instance v1, Ln/ai;

    invoke-virtual {p0}, Lo/x;->n()Ln/U;

    move-result-object v3

    invoke-direct {v1, v3, v2, v0}, Ln/ai;-><init>(Ln/U;II)V

    invoke-virtual {v1}, Ln/ai;->e()Ln/U;

    move-result-object v0

    return-object v0
.end method

.method private a(F)V
    .registers 13
    .parameter

    .prologue
    const/4 v10, -0x1

    const v9, -0xbbbbbc

    const/4 v8, 0x1

    const/high16 v7, 0x3f80

    .line 170
    const/high16 v0, 0x4080

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 171
    const/high16 v1, 0x4198

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 172
    const/high16 v2, 0x41c0

    mul-float/2addr v2, p1

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 173
    const/high16 v3, 0x4000

    mul-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 176
    div-int/lit8 v4, v0, 0x2

    .line 177
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/google/android/maps/driveabout/app/dC;->a:Landroid/graphics/Path;

    .line 178
    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/dC;->a:Landroid/graphics/Path;

    int-to-float v6, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 179
    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/dC;->a:Landroid/graphics/Path;

    int-to-float v6, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 180
    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/dC;->a:Landroid/graphics/Path;

    const/4 v6, 0x0

    neg-int v1, v1

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-virtual {v5, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 181
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->a:Landroid/graphics/Path;

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 182
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->a:Landroid/graphics/Path;

    neg-int v2, v4

    int-to-float v2, v2

    invoke-virtual {v1, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 185
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->b:Landroid/graphics/Paint;

    .line 186
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 187
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 188
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 189
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 190
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->b:Landroid/graphics/Paint;

    int-to-float v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 193
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->c:Landroid/graphics/Paint;

    .line 194
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 195
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 196
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->d:Landroid/graphics/Paint;

    .line 199
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 200
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 201
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 202
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 203
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->d:Landroid/graphics/Paint;

    mul-int/lit8 v2, v3, 0x2

    add-int/2addr v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 206
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->e:Landroid/graphics/Paint;

    .line 207
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 208
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 209
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 210
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 211
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->e:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 215
    const/high16 v0, 0x432a

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 217
    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->a(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dC;->k:I

    .line 218
    return-void
.end method

.method private a(Landroid/graphics/Canvas;[IF)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 395
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 396
    const/4 v0, 0x0

    aget v0, p2, v0

    int-to-float v0, v0

    const/4 v2, 0x1

    aget v2, p2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 397
    const/4 v0, 0x2

    :goto_11
    array-length v2, p2

    if-ge v0, v2, :cond_22

    .line 398
    aget v2, p2, v0

    int-to-float v2, v2

    add-int/lit8 v3, v0, 0x1

    aget v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 397
    add-int/lit8 v0, v0, 0x2

    goto :goto_11

    .line 400
    :cond_22
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 401
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 404
    array-length v0, p2

    add-int/lit8 v0, v0, -0x2

    aget v0, p2, v0

    int-to-float v0, v0

    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    aget v1, p2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 405
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 406
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 407
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 408
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 264
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->g()F

    move-result v0

    .line 265
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->s()F

    move-result v1

    mul-float/2addr v1, v0

    .line 266
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dC;->b:Landroid/graphics/Paint;

    if-nez v2, :cond_10

    .line 267
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/dC;->a(F)V

    .line 270
    :cond_10
    const/4 v0, 0x0

    .line 272
    const/high16 v2, 0x44fa

    const/high16 v3, 0x4140

    mul-float/2addr v3, v1

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2c

    .line 273
    const/16 v0, 0x7d0

    const/high16 v2, 0x4200

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 275
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->g:Ln/U;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dC;->f:Ln/Q;

    invoke-static {p2, v1, v2, v0}, Lcom/google/android/maps/driveabout/app/dC;->a(Lcom/google/android/maps/driveabout/vector/k;Ln/U;Ln/Q;I)Ln/U;

    move-result-object v0

    .line 278
    :cond_2c
    if-eqz v0, :cond_7b

    .line 279
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->f:Ln/Q;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/dC;->k:I

    invoke-static {p2, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/dC;->b(Lcom/google/android/maps/driveabout/vector/k;Ln/U;Ln/Q;I)[I

    move-result-object v1

    .line 284
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dC;->j:[I

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dC;->j:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_7a

    .line 286
    :cond_42
    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->j:[I

    .line 287
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dC;->m:Ln/Q;

    .line 288
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/dC;->n:Ln/Q;

    .line 289
    invoke-virtual {v0}, Ln/U;->b()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v4, v2}, Ln/U;->a(ILn/Q;)V

    .line 290
    invoke-virtual {v0, v3}, Ln/U;->a(Ln/Q;)V

    .line 291
    invoke-static {v2, v3}, Ln/Q;->a(Ln/Q;Ln/Q;)D

    move-result-wide v2

    double-to-float v0, v2

    .line 293
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dC;->i()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 294
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v3, v1, v0}, Lcom/google/android/maps/driveabout/app/dC;->a(Landroid/graphics/Canvas;[IF)V

    .line 296
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dC;->e()V

    .line 297
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cV;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/cV;-><init>(Lcom/google/android/maps/driveabout/vector/aU;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->h:Lcom/google/android/maps/driveabout/vector/cV;

    .line 298
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->h:Lcom/google/android/maps/driveabout/vector/cV;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->c(Z)V

    .line 299
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->h:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/cV;->b(Landroid/graphics/Bitmap;)V

    .line 304
    :cond_7a
    :goto_7a
    return-void

    .line 302
    :cond_7b
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dC;->e()V

    goto :goto_7a
.end method

.method static b(Lcom/google/android/maps/driveabout/vector/k;Ln/U;Ln/Q;I)[I
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x3f00

    .line 367
    invoke-virtual {p1}, Ln/U;->b()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 368
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/k;->s()F

    move-result v2

    .line 369
    new-instance v3, Ln/Q;

    int-to-float v4, p3

    mul-float/2addr v4, v2

    mul-float/2addr v4, v6

    float-to-int v4, v4

    int-to-float v5, p3

    mul-float/2addr v5, v2

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Ln/Q;-><init>(II)V

    invoke-virtual {p2, v3}, Ln/Q;->f(Ln/Q;)Ln/Q;

    move-result-object v3

    .line 373
    const/high16 v4, 0x3f80

    div-float v2, v4, v2

    .line 374
    invoke-virtual {p1, v7}, Ln/U;->a(I)Ln/Q;

    move-result-object v4

    .line 375
    invoke-static {v4, v3, v4}, Ln/Q;->b(Ln/Q;Ln/Q;Ln/Q;)V

    .line 376
    invoke-virtual {v4}, Ln/Q;->f()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, v1, v7

    .line 377
    invoke-virtual {v4}, Ln/Q;->g()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int v5, p3, v5

    aput v5, v1, v0

    .line 378
    :goto_46
    invoke-virtual {p1}, Ln/U;->b()I

    move-result v5

    if-ge v0, v5, :cond_75

    .line 379
    invoke-virtual {p1, v0, v4}, Ln/U;->a(ILn/Q;)V

    .line 380
    invoke-static {v4, v3, v4}, Ln/Q;->b(Ln/Q;Ln/Q;Ln/Q;)V

    .line 381
    mul-int/lit8 v5, v0, 0x2

    invoke-virtual {v4}, Ln/Q;->f()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    aput v6, v1, v5

    .line 382
    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4}, Ln/Q;->g()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sub-int v6, p3, v6

    aput v6, v1, v5

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 385
    :cond_75
    return-object v1
.end method

.method private e()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->h:Lcom/google/android/maps/driveabout/vector/cV;

    if-eqz v0, :cond_e

    .line 149
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->h:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->g()V

    .line 150
    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->h:Lcom/google/android/maps/driveabout/vector/cV;

    .line 151
    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->j:[I

    .line 153
    :cond_e
    return-void
.end method

.method private h()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->a:Landroid/graphics/Path;

    .line 157
    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->b:Landroid/graphics/Paint;

    .line 158
    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->c:Landroid/graphics/Paint;

    .line 159
    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->d:Landroid/graphics/Paint;

    .line 160
    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->e:Landroid/graphics/Paint;

    .line 161
    return-void
.end method

.method private i()Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->l:Landroid/graphics/Bitmap;

    if-nez v0, :cond_10

    .line 312
    iget v0, p0, Lcom/google/android/maps/driveabout/app/dC;->k:I

    iget v1, p0, Lcom/google/android/maps/driveabout/app/dC;->k:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->l:Landroid/graphics/Bitmap;

    .line 315
    :cond_10
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->l:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 316
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->l:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x3dcccccd

    .line 222
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->b()I

    move-result v0

    if-gtz v0, :cond_15

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->v()Ln/aK;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->f:Ln/Q;

    invoke-virtual {v0, v1}, Ln/aK;->a(Ln/Q;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 257
    :cond_15
    :goto_15
    return-void

    .line 226
    :cond_16
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    .line 227
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v1

    .line 229
    monitor-enter p0

    .line 230
    :try_start_1f
    iget v2, p0, Lcom/google/android/maps/driveabout/app/dC;->i:F

    add-float/2addr v2, v3

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_2d

    iget v2, p0, Lcom/google/android/maps/driveabout/app/dC;->i:F

    sub-float/2addr v2, v3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_32

    .line 232
    :cond_2d
    iput v1, p0, Lcom/google/android/maps/driveabout/app/dC;->i:F

    .line 233
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/app/dC;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;)V

    .line 235
    :cond_32
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->f:Ln/Q;

    .line 236
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1f .. :try_end_35} :catchall_76

    .line 237
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dC;->h:Lcom/google/android/maps/driveabout/vector/cV;

    if-eqz v2, :cond_15

    .line 242
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 243
    iget v2, p0, Lcom/google/android/maps/driveabout/app/dC;->k:I

    int-to-float v2, v2

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->s()F

    move-result v3

    mul-float/2addr v2, v3

    .line 244
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/maps/driveabout/vector/dz;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Ln/Q;F)V

    .line 247
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->o()V

    .line 248
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 249
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 252
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aU;->h:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 253
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aU;->d:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/cM;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 254
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->h:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cV;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 255
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 256
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_15

    .line 236
    :catchall_76
    move-exception v0

    :try_start_77
    monitor-exit p0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw v0
.end method

.method public declared-synchronized a(Lo/x;Lo/I;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 94
    monitor-enter p0

    :try_start_1
    invoke-virtual {p2}, Lo/I;->y()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/app/dC;->a(Lo/x;I)Ln/U;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->g:Ln/U;

    .line 95
    invoke-virtual {p2}, Lo/I;->a()Ln/Q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->f:Ln/Q;

    .line 96
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dC;->i:F
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 97
    monitor-exit p0

    return-void

    .line 94
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dC;->e()V

    .line 143
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dC;->h()V

    .line 144
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dC;->i:F

    .line 145
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 101
    if-ne p0, p1, :cond_5

    .line 109
    :cond_4
    :goto_4
    return v0

    .line 104
    :cond_5
    instance-of v2, p1, Lcom/google/android/maps/driveabout/app/dC;

    if-eqz v2, :cond_21

    .line 105
    check-cast p1, Lcom/google/android/maps/driveabout/app/dC;

    .line 106
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dC;->f:Ln/Q;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/app/dC;->f:Ln/Q;

    invoke-virtual {v2, v3}, Ln/Q;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dC;->g:Ln/U;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/app/dC;->g:Ln/U;

    invoke-virtual {v2, v3}, Ln/U;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1f
    move v0, v1

    goto :goto_4

    :cond_21
    move v0, v1

    .line 109
    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 114
    .line 115
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dC;->g:Ln/U;

    invoke-virtual {v0}, Ln/U;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dC;->f:Ln/Q;

    invoke-virtual {v1}, Ln/Q;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method public u_()I
    .registers 2

    .prologue
    .line 137
    const v0, 0x320c8

    return v0
.end method
