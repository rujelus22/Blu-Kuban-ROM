.class public Lcom/google/android/maps/driveabout/app/dN;
.super Lcom/google/android/maps/driveabout/app/aK;


# instance fields
.field private a:Landroid/graphics/Path;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Lt/L;

.field private g:Lt/P;

.field private h:Lcom/google/android/maps/driveabout/vector/cw;

.field private i:F

.field private j:[I

.field private k:I

.field private l:Landroid/graphics/Bitmap;

.field private final m:Lt/L;

.field private final n:Lt/L;


# direct methods
.method public constructor <init>(Lu/x;Lu/I;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/aK;-><init>()V

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dN;->m:Lt/L;

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dN;->n:Lt/L;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/app/dN;->a(Lu/x;Lu/I;)V

    return-void
.end method

.method static a(Lcom/google/android/maps/driveabout/vector/t;Lt/P;Lt/L;I)Lt/P;
    .registers 12

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v0, Lt/L;

    invoke-direct {v0, p3, p3}, Lt/L;-><init>(II)V

    new-instance v1, Lt/V;

    invoke-virtual {p2, v0}, Lt/L;->f(Lt/L;)Lt/L;

    move-result-object v3

    invoke-virtual {p2, v0}, Lt/L;->e(Lt/L;)Lt/L;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lt/V;-><init>(Lt/L;Lt/L;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lt/f;

    invoke-direct {v0, v1}, Lt/f;-><init>(Lt/W;)V

    invoke-virtual {v0, p1, v6}, Lt/f;->a(Lt/P;Ljava/util/List;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_28

    :cond_27
    :goto_27
    return-object v4

    :cond_28
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_40

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/P;

    :goto_35
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lt/P;->b()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_27

    move-object v4, v0

    goto :goto_27

    :cond_40
    move v1, v2

    move-object v3, v4

    :goto_42
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6b

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/P;

    move v5, v2

    :goto_4f
    invoke-virtual {v0}, Lt/P;->b()I

    move-result v7

    if-ge v5, v7, :cond_60

    invoke-virtual {v0, v5}, Lt/P;->a(I)Lt/L;

    move-result-object v7

    invoke-virtual {v7, p2}, Lt/L;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_64

    move-object v3, v0

    :cond_60
    if-eqz v3, :cond_67

    move-object v0, v3

    goto :goto_35

    :cond_64
    add-int/lit8 v5, v5, 0x1

    goto :goto_4f

    :cond_67
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_42

    :cond_6b
    move-object v0, v3

    goto :goto_35
.end method

.method static a(Lu/x;I)Lt/P;
    .registers 10

    const-wide v6, 0x409f400000000000L

    invoke-virtual {p0, p1}, Lu/x;->b(I)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    sub-double v4, v0, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lu/x;->a(D)I

    move-result v2

    invoke-virtual {p0}, Lu/x;->n()Lt/P;

    move-result-object v3

    invoke-virtual {v3}, Lt/P;->b()I

    move-result v3

    add-double/2addr v0, v6

    const-wide/high16 v4, 0x3ff0

    sub-double/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Lu/x;->a(D)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v1, Lt/ab;

    invoke-virtual {p0}, Lu/x;->n()Lt/P;

    move-result-object v3

    invoke-direct {v1, v3, v2, v0}, Lt/ab;-><init>(Lt/P;II)V

    invoke-virtual {v1}, Lt/ab;->e()Lt/P;

    move-result-object v0

    return-object v0
.end method

.method private a(F)V
    .registers 13

    const/4 v10, -0x1

    const v9, -0xbbbbbc

    const/4 v8, 0x1

    const/high16 v7, 0x3f80

    const/high16 v0, 0x4080

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/high16 v1, 0x4198

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/high16 v2, 0x41c0

    mul-float/2addr v2, p1

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/high16 v3, 0x4000

    mul-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-int/lit8 v4, v0, 0x2

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/google/android/maps/driveabout/app/dN;->a:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/dN;->a:Landroid/graphics/Path;

    int-to-float v6, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/dN;->a:Landroid/graphics/Path;

    int-to-float v6, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Lcom/google/android/maps/driveabout/app/dN;->a:Landroid/graphics/Path;

    const/4 v6, 0x0

    neg-int v1, v1

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-virtual {v5, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->a:Landroid/graphics/Path;

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->a:Landroid/graphics/Path;

    neg-int v2, v4

    int-to-float v2, v2

    invoke-virtual {v1, v2, v7}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->b:Landroid/graphics/Paint;

    int-to-float v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->d:Landroid/graphics/Paint;

    mul-int/lit8 v2, v3, 0x2

    add-int/2addr v2, v0

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->e:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v0, 0x432a

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/cw;->a(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dN;->k:I

    return-void
.end method

.method private a(Landroid/graphics/Canvas;[IF)V
    .registers 8

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const/4 v0, 0x0

    aget v0, p2, v0

    int-to-float v0, v0

    const/4 v2, 0x1

    aget v2, p2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, 0x2

    :goto_11
    array-length v2, p2

    if-ge v0, v2, :cond_22

    aget v2, p2, v0

    int-to-float v2, v2

    add-int/lit8 v3, v0, 0x1

    aget v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_11

    :cond_22
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dN;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dN;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    array-length v0, p2

    add-int/lit8 v0, v0, -0x2

    aget v0, p2, v0

    int-to-float v0, v0

    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    aget v1, p2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dN;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dN;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;)V
    .registers 8

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->f()F

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->r()F

    move-result v1

    mul-float/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dN;->b:Landroid/graphics/Paint;

    if-nez v2, :cond_10

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/dN;->a(F)V

    :cond_10
    const/4 v0, 0x0

    const/high16 v2, 0x44fa

    const/high16 v3, 0x4140

    mul-float/2addr v3, v1

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2c

    const/16 v0, 0x7d0

    const/high16 v2, 0x4200

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->g:Lt/P;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dN;->f:Lt/L;

    invoke-static {p2, v1, v2, v0}, Lcom/google/android/maps/driveabout/app/dN;->a(Lcom/google/android/maps/driveabout/vector/t;Lt/P;Lt/L;I)Lt/P;

    move-result-object v0

    :cond_2c
    if-eqz v0, :cond_7b

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->f:Lt/L;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/dN;->k:I

    invoke-static {p2, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/dN;->b(Lcom/google/android/maps/driveabout/vector/t;Lt/P;Lt/L;I)[I

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dN;->j:[I

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dN;->j:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_7a

    :cond_42
    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->j:[I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dN;->m:Lt/L;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/dN;->n:Lt/L;

    invoke-virtual {v0}, Lt/P;->b()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v4, v2}, Lt/P;->a(ILt/L;)V

    invoke-virtual {v0, v3}, Lt/P;->a(Lt/L;)V

    invoke-static {v2, v3}, Lt/L;->a(Lt/L;Lt/L;)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dN;->i()Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v3, v1, v0}, Lcom/google/android/maps/driveabout/app/dN;->a(Landroid/graphics/Canvas;[IF)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dN;->e()V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cw;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/cw;-><init>(Lcom/google/android/maps/driveabout/vector/aT;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dN;->h:Lcom/google/android/maps/driveabout/vector/cw;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dN;->h:Lcom/google/android/maps/driveabout/vector/cw;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cw;->c(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dN;->h:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/cw;->b(Landroid/graphics/Bitmap;)V

    :cond_7a
    :goto_7a
    return-void

    :cond_7b
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dN;->e()V

    goto :goto_7a
.end method

.method static b(Lcom/google/android/maps/driveabout/vector/t;Lt/P;Lt/L;I)[I
    .registers 12

    const/4 v0, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x3f00

    invoke-virtual {p1}, Lt/P;->b()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/t;->r()F

    move-result v2

    new-instance v3, Lt/L;

    int-to-float v4, p3

    mul-float/2addr v4, v2

    mul-float/2addr v4, v6

    float-to-int v4, v4

    int-to-float v5, p3

    mul-float/2addr v5, v2

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Lt/L;-><init>(II)V

    invoke-virtual {p2, v3}, Lt/L;->f(Lt/L;)Lt/L;

    move-result-object v3

    const/high16 v4, 0x3f80

    div-float v2, v4, v2

    invoke-virtual {p1, v7}, Lt/P;->a(I)Lt/L;

    move-result-object v4

    invoke-static {v4, v3, v4}, Lt/L;->b(Lt/L;Lt/L;Lt/L;)V

    invoke-virtual {v4}, Lt/L;->f()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, v1, v7

    invoke-virtual {v4}, Lt/L;->g()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int v5, p3, v5

    aput v5, v1, v0

    :goto_46
    invoke-virtual {p1}, Lt/P;->b()I

    move-result v5

    if-ge v0, v5, :cond_75

    invoke-virtual {p1, v0, v4}, Lt/P;->a(ILt/L;)V

    invoke-static {v4, v3, v4}, Lt/L;->b(Lt/L;Lt/L;Lt/L;)V

    mul-int/lit8 v5, v0, 0x2

    invoke-virtual {v4}, Lt/L;->f()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    aput v6, v1, v5

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4}, Lt/L;->g()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sub-int v6, p3, v6

    aput v6, v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    :cond_75
    return-object v1
.end method

.method private e()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dN;->h:Lcom/google/android/maps/driveabout/vector/cw;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dN;->h:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->f()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->h:Lcom/google/android/maps/driveabout/vector/cw;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->j:[I

    :cond_e
    return-void
.end method

.method private h()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dN;->a:Landroid/graphics/Path;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dN;->b:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dN;->c:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dN;->d:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dN;->e:Landroid/graphics/Paint;

    return-void
.end method

.method private i()Landroid/graphics/Bitmap;
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dN;->l:Landroid/graphics/Bitmap;

    if-nez v0, :cond_10

    iget v0, p0, Lcom/google/android/maps/driveabout/app/dN;->k:I

    iget v1, p0, Lcom/google/android/maps/driveabout/app/dN;->k:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dN;->l:Landroid/graphics/Bitmap;

    :cond_10
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dN;->l:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dN;->l:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dN;->e()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/dN;->h()V

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dN;->i:F

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 8

    const v3, 0x3dcccccd

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->b()I

    move-result v0

    if-gtz v0, :cond_15

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->u()Lt/at;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->f:Lt/L;

    invoke-virtual {v0, v1}, Lt/at;->a(Lt/L;)Z

    move-result v0

    if-nez v0, :cond_16

    :cond_15
    :goto_15
    return-void

    :cond_16
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->k()F

    move-result v1

    monitor-enter p0

    :try_start_1f
    iget v2, p0, Lcom/google/android/maps/driveabout/app/dN;->i:F

    add-float/2addr v2, v3

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_2d

    iget v2, p0, Lcom/google/android/maps/driveabout/app/dN;->i:F

    sub-float/2addr v2, v3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_32

    :cond_2d
    iput v1, p0, Lcom/google/android/maps/driveabout/app/dN;->i:F

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/app/dN;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;)V

    :cond_32
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->f:Lt/L;

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1f .. :try_end_35} :catchall_76

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dN;->h:Lcom/google/android/maps/driveabout/vector/cw;

    if-eqz v2, :cond_15

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    iget v2, p0, Lcom/google/android/maps/driveabout/app/dN;->k:I

    int-to-float v2, v2

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->r()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v0, p2, v1, v2}, Lcom/google/android/maps/driveabout/vector/cN;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/t;Lt/L;F)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->o()V

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/di;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cp;->b:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/cp;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->h:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cw;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_15

    :catchall_76
    move-exception v0

    :try_start_77
    monitor-exit p0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    throw v0
.end method

.method public declared-synchronized a(Lu/x;Lu/I;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p2}, Lu/I;->y()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/app/dN;->a(Lu/x;I)Lt/P;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dN;->g:Lt/P;

    invoke-virtual {p2}, Lu/I;->a()Lt/L;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/dN;->f:Lt/L;

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/android/maps/driveabout/app/dN;->i:F
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/maps/driveabout/app/dN;

    if-eqz v2, :cond_21

    check-cast p1, Lcom/google/android/maps/driveabout/app/dN;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dN;->f:Lt/L;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/app/dN;->f:Lt/L;

    invoke-virtual {v2, v3}, Lt/L;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/dN;->g:Lt/P;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/app/dN;->g:Lt/P;

    invoke-virtual {v2, v3}, Lt/P;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1f
    move v0, v1

    goto :goto_4

    :cond_21
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dN;->g:Lt/P;

    invoke-virtual {v0}, Lt/P;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dN;->f:Lt/L;

    invoke-virtual {v1}, Lt/L;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method public s_()I
    .registers 2

    const v0, 0x320c8

    return v0
.end method
