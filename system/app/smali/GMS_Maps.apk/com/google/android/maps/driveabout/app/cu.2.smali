.class public Lcom/google/android/maps/driveabout/app/cu;
.super Lcom/google/android/maps/driveabout/vector/cV;


# instance fields
.field private b:I

.field private c:I

.field private d:F

.field private e:I

.field private f:Z

.field private g:I

.field private h:Lcom/google/android/maps/driveabout/app/m;

.field private i:Ljava/util/HashMap;

.field private j:Lcom/google/android/maps/driveabout/app/bT;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/cV;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/cu;->f:Z

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/cu;->j()V

    iput v3, p0, Lcom/google/android/maps/driveabout/app/cu;->g:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->i:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cv;

    invoke-direct {v1, v3, v2, v2}, Lcom/google/android/maps/driveabout/app/cv;-><init>(IZI)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/m;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->h:Lcom/google/android/maps/driveabout/app/m;

    const/high16 v0, 0x3fc0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/cu;->d(F)V

    return-void
.end method

.method private a(Lt/V;)Lt/V;
    .registers 12

    const/4 v8, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090026

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cu;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sub-int v4, v0, v2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090027

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    mul-int/lit8 v0, v2, 0x3

    iget v3, p0, Lcom/google/android/maps/driveabout/app/cu;->b:I

    mul-int/lit8 v6, v5, 0x2

    sub-int/2addr v3, v6

    sub-int/2addr v3, v2

    sub-int/2addr v3, v0

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v6, p0, Lcom/google/android/maps/driveabout/app/cu;->c:I

    mul-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    sub-int/2addr v6, v4

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p1}, Lt/V;->g()I

    move-result v7

    div-int v3, v7, v3

    invoke-virtual {p1}, Lt/V;->h()I

    move-result v7

    div-int v6, v7, v6

    if-le v3, v6, :cond_77

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09002a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    move v2, v1

    :goto_6b
    add-int/2addr v2, v5

    add-int v3, v1, v5

    add-int/2addr v4, v5

    add-int/2addr v5, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/cu;->a(Lt/V;IIII)Lt/V;

    move-result-object v0

    return-object v0

    :cond_77
    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_6b
.end method

.method private a(Lt/V;FFFF)Lt/V;
    .registers 12

    invoke-virtual {p1}, Lt/V;->g()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/cu;->b:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    sub-float/2addr v1, p3

    div-float/2addr v0, v1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-virtual {p1}, Lt/V;->g()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/cu;->b:I

    int-to-float v2, v2

    sub-float/2addr v2, p2

    sub-float/2addr v2, p3

    div-float/2addr v1, v2

    mul-float/2addr v1, p3

    float-to-int v1, v1

    invoke-virtual {p1}, Lt/V;->h()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/maps/driveabout/app/cu;->c:I

    int-to-float v3, v3

    sub-float/2addr v3, p4

    sub-float/2addr v3, p5

    div-float/2addr v2, v3

    mul-float/2addr v2, p4

    float-to-int v2, v2

    invoke-virtual {p1}, Lt/V;->h()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/google/android/maps/driveabout/app/cu;->c:I

    int-to-float v4, v4

    sub-float/2addr v4, p4

    sub-float/2addr v4, p5

    div-float/2addr v3, v4

    mul-float/2addr v3, p5

    float-to-int v3, v3

    invoke-virtual {p1}, Lt/V;->d()Lt/L;

    move-result-object v4

    new-instance v5, Lt/L;

    invoke-direct {v5, v0, v3}, Lt/L;-><init>(II)V

    invoke-virtual {v4, v5}, Lt/L;->f(Lt/L;)Lt/L;

    move-result-object v0

    invoke-virtual {p1}, Lt/V;->e()Lt/L;

    move-result-object v3

    new-instance v4, Lt/L;

    invoke-direct {v4, v1, v2}, Lt/L;-><init>(II)V

    invoke-virtual {v3, v4}, Lt/L;->e(Lt/L;)Lt/L;

    move-result-object v1

    new-instance v2, Lt/V;

    invoke-direct {v2, v0, v1}, Lt/V;-><init>(Lt/L;Lt/L;)V

    return-object v2
.end method

.method private a(Lt/V;IIII)Lt/V;
    .registers 12

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    int-to-float v5, p5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/cu;->a(Lt/V;FFFF)Lt/V;

    move-result-object v0

    return-object v0
.end method

.method private a(Lt/V;Landroid/location/Location;)Lt/V;
    .registers 8

    if-eqz p2, :cond_30

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lt/L;->a(DD)Lt/L;

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lt/L;->a(DD)Lt/L;

    move-result-object v0

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Lt/L;->a(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-static {v0, v1}, Lt/V;->a(Lt/L;I)Lt/V;

    move-result-object v0

    invoke-virtual {p1, v0}, Lt/V;->a(Lt/V;)Lt/V;

    move-result-object p1

    :cond_30
    return-object p1
.end method

.method private a(Lt/V;Lt/o;)Lt/V;
    .registers 10

    if-eqz p2, :cond_48

    invoke-virtual {p2}, Lt/o;->a()I

    move-result v0

    invoke-virtual {p2}, Lt/o;->b()I

    move-result v1

    invoke-static {v0, v1}, Lt/L;->b(II)Lt/L;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/cu;->a(Lt/V;Lt/L;IIII)Lt/V;

    move-result-object p1

    :cond_48
    return-object p1
.end method

.method private a(Lcom/google/android/maps/driveabout/app/aL;Lt/V;)V
    .registers 9

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->x()Lu/P;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->x()Lu/P;

    move-result-object v0

    invoke-virtual {v0}, Lu/P;->c()Lt/o;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/maps/driveabout/app/cu;->a(Lt/V;Lt/o;)Lt/V;

    move-result-object p2

    :cond_12
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->a()Ls/b;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->a()Ls/b;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/maps/driveabout/app/cu;->a(Lt/V;Landroid/location/Location;)Lt/V;

    move-result-object p2

    :cond_20
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/app/cu;->a(Lt/V;)Lt/V;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/cu;->b:I

    iget v3, p0, Lcom/google/android/maps/driveabout/app/cu;->c:I

    iget v4, p0, Lcom/google/android/maps/driveabout/app/cu;->d:F

    const/16 v5, 0x320

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/cu;->a(Lt/V;IIFI)V

    return-void
.end method

.method private j()V
    .registers 16

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/high16 v12, 0x4282

    const/4 v11, 0x1

    const/4 v10, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->i:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->i:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cv;

    invoke-direct {v1, v14, v10, v10}, Lcom/google/android/maps/driveabout/app/cv;-><init>(IZI)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/da;

    const/high16 v3, 0x417c

    const/high16 v4, 0x4184

    const/high16 v5, 0x4174

    invoke-direct {v2, v3, v4, v5, v11}, Lcom/google/android/maps/driveabout/app/da;-><init>(FFFZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->i:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cv;

    invoke-direct {v1, v14, v10, v13}, Lcom/google/android/maps/driveabout/app/cv;-><init>(IZI)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/da;

    const/high16 v3, 0x4186

    const/high16 v4, 0x4186

    const/high16 v5, 0x4178

    invoke-direct {v2, v3, v4, v5, v11}, Lcom/google/android/maps/driveabout/app/da;-><init>(FFFZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->i:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cv;

    invoke-direct {v1, v14, v10, v14}, Lcom/google/android/maps/driveabout/app/cv;-><init>(IZI)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/da;

    const/high16 v3, 0x417c

    const/high16 v4, 0x4184

    const/high16 v5, 0x4174

    invoke-direct {v2, v3, v4, v5, v11}, Lcom/google/android/maps/driveabout/app/da;-><init>(FFFZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->i:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cv;

    invoke-direct {v1, v14, v11, v10}, Lcom/google/android/maps/driveabout/app/cv;-><init>(IZI)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/da;

    const/high16 v3, 0x4186

    const/high16 v4, 0x418c

    const/high16 v5, 0x4182

    invoke-direct {v2, v3, v4, v5, v11}, Lcom/google/android/maps/driveabout/app/da;-><init>(FFFZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->i:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cv;

    invoke-direct {v1, v14, v11, v13}, Lcom/google/android/maps/driveabout/app/cv;-><init>(IZI)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/da;

    const/high16 v3, 0x4188

    const/high16 v4, 0x4192

    const/high16 v5, 0x4182

    invoke-direct {v2, v3, v4, v5, v11}, Lcom/google/android/maps/driveabout/app/da;-><init>(FFFZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->i:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cv;

    invoke-direct {v1, v14, v11, v14}, Lcom/google/android/maps/driveabout/app/cv;-><init>(IZI)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/da;

    const/high16 v3, 0x4186

    const/high16 v4, 0x418c

    const/high16 v5, 0x4182

    invoke-direct {v2, v3, v4, v5, v11}, Lcom/google/android/maps/driveabout/app/da;-><init>(FFFZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->i:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cv;

    invoke-direct {v1, v13, v10, v10}, Lcom/google/android/maps/driveabout/app/cv;-><init>(IZI)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/da;

    const/high16 v3, 0x417c

    const/high16 v4, 0x4184

    const/high16 v5, 0x4174

    invoke-direct {v2, v3, v4, v5, v10}, Lcom/google/android/maps/driveabout/app/da;-><init>(FFFZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->i:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cv;

    invoke-direct {v1, v13, v10, v13}, Lcom/google/android/maps/driveabout/app/cv;-><init>(IZI)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/da;

    const/high16 v3, 0x4186

    const/high16 v4, 0x4186

    const/high16 v5, 0x4178

    invoke-direct {v2, v3, v4, v5, v10}, Lcom/google/android/maps/driveabout/app/da;-><init>(FFFZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->i:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cv;

    invoke-direct {v1, v13, v10, v14}, Lcom/google/android/maps/driveabout/app/cv;-><init>(IZI)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/da;

    const/high16 v3, 0x417c

    const/high16 v4, 0x4184

    const/high16 v5, 0x4174

    invoke-direct {v2, v3, v4, v5, v10}, Lcom/google/android/maps/driveabout/app/da;-><init>(FFFZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->i:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cv;

    invoke-direct {v1, v13, v11, v10}, Lcom/google/android/maps/driveabout/app/cv;-><init>(IZI)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/da;

    const/high16 v3, 0x4186

    const/high16 v4, 0x418c

    const/high16 v5, 0x4182

    invoke-direct {v2, v3, v4, v5, v10}, Lcom/google/android/maps/driveabout/app/da;-><init>(FFFZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->i:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cv;

    invoke-direct {v1, v13, v11, v13}, Lcom/google/android/maps/driveabout/app/cv;-><init>(IZI)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/da;

    const/high16 v3, 0x4188

    const/high16 v4, 0x4192

    const/high16 v5, 0x4182

    invoke-direct {v2, v3, v4, v5, v10}, Lcom/google/android/maps/driveabout/app/da;-><init>(FFFZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->i:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cv;

    invoke-direct {v1, v13, v11, v14}, Lcom/google/android/maps/driveabout/app/cv;-><init>(IZI)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/da;

    const/high16 v3, 0x4186

    const/high16 v4, 0x418c

    const/high16 v5, 0x4182

    invoke-direct {v2, v3, v4, v5, v10}, Lcom/google/android/maps/driveabout/app/da;-><init>(FFFZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cU;->a:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-static {v0}, Lx/aA;->b(Lcom/google/android/maps/driveabout/vector/cU;)Z

    move-result v0

    if-eqz v0, :cond_11d

    new-instance v5, Lx/ap;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cU;->a:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-static {v0}, Lx/aA;->c(Lcom/google/android/maps/driveabout/vector/cU;)Lx/ay;

    move-result-object v0

    invoke-direct {v5, v0}, Lx/ap;-><init>(Lx/ay;)V

    :cond_11d
    iget-object v6, p0, Lcom/google/android/maps/driveabout/app/cu;->i:Ljava/util/HashMap;

    new-instance v7, Lcom/google/android/maps/driveabout/app/cv;

    invoke-direct {v7, v11, v10, v10}, Lcom/google/android/maps/driveabout/app/cv;-><init>(IZI)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/bf;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cZ;

    const/high16 v2, 0x4186

    invoke-direct {v1, v2, v12}, Lcom/google/android/maps/driveabout/app/cZ;-><init>(FF)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/cZ;

    const/high16 v3, 0x418e

    const/high16 v4, 0x425c

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/app/cZ;-><init>(FF)V

    new-instance v3, Lcom/google/android/maps/driveabout/app/cZ;

    const/high16 v4, 0x4178

    invoke-direct {v3, v4, v12}, Lcom/google/android/maps/driveabout/app/cZ;-><init>(FF)V

    new-instance v4, Lcom/google/android/maps/driveabout/app/cZ;

    const/high16 v8, 0x4198

    const/high16 v9, 0x4296

    invoke-direct {v4, v8, v9}, Lcom/google/android/maps/driveabout/app/cZ;-><init>(FF)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/bf;-><init>(Lcom/google/android/maps/driveabout/app/cZ;Lcom/google/android/maps/driveabout/app/cZ;Lcom/google/android/maps/driveabout/app/cZ;Lcom/google/android/maps/driveabout/app/cZ;Lx/ap;)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/app/cu;->i:Ljava/util/HashMap;

    new-instance v7, Lcom/google/android/maps/driveabout/app/cv;

    invoke-direct {v7, v11, v11, v10}, Lcom/google/android/maps/driveabout/app/cv;-><init>(IZI)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/bf;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cZ;

    const/high16 v2, 0x4188

    invoke-direct {v1, v2, v12}, Lcom/google/android/maps/driveabout/app/cZ;-><init>(FF)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/cZ;

    const/high16 v3, 0x4192

    const/high16 v4, 0x425c

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/app/cZ;-><init>(FF)V

    new-instance v3, Lcom/google/android/maps/driveabout/app/cZ;

    const/high16 v4, 0x4178

    invoke-direct {v3, v4, v12}, Lcom/google/android/maps/driveabout/app/cZ;-><init>(FF)V

    new-instance v4, Lcom/google/android/maps/driveabout/app/cZ;

    const/high16 v8, 0x4198

    const/high16 v9, 0x4296

    invoke-direct {v4, v8, v9}, Lcom/google/android/maps/driveabout/app/cZ;-><init>(FF)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/bf;-><init>(Lcom/google/android/maps/driveabout/app/cZ;Lcom/google/android/maps/driveabout/app/cZ;Lcom/google/android/maps/driveabout/app/cZ;Lcom/google/android/maps/driveabout/app/cZ;Lx/ap;)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/app/cu;->i:Ljava/util/HashMap;

    new-instance v7, Lcom/google/android/maps/driveabout/app/cv;

    invoke-direct {v7, v11, v10, v13}, Lcom/google/android/maps/driveabout/app/cv;-><init>(IZI)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/cY;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cZ;

    const/high16 v2, 0x4192

    invoke-direct {v1, v2, v12}, Lcom/google/android/maps/driveabout/app/cZ;-><init>(FF)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/cZ;

    const/high16 v3, 0x4192

    const/high16 v4, 0x425c

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/app/cZ;-><init>(FF)V

    new-instance v3, Lcom/google/android/maps/driveabout/app/cZ;

    const/high16 v4, 0x4178

    invoke-direct {v3, v4, v12}, Lcom/google/android/maps/driveabout/app/cZ;-><init>(FF)V

    new-instance v4, Lcom/google/android/maps/driveabout/app/cZ;

    const/high16 v8, 0x41a0

    const/high16 v9, 0x4296

    invoke-direct {v4, v8, v9}, Lcom/google/android/maps/driveabout/app/cZ;-><init>(FF)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/cY;-><init>(Lcom/google/android/maps/driveabout/app/cZ;Lcom/google/android/maps/driveabout/app/cZ;Lcom/google/android/maps/driveabout/app/cZ;Lcom/google/android/maps/driveabout/app/cZ;Lx/ap;)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/app/cu;->i:Ljava/util/HashMap;

    new-instance v7, Lcom/google/android/maps/driveabout/app/cv;

    invoke-direct {v7, v11, v11, v13}, Lcom/google/android/maps/driveabout/app/cv;-><init>(IZI)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/cY;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cZ;

    const/high16 v2, 0x4194

    invoke-direct {v1, v2, v12}, Lcom/google/android/maps/driveabout/app/cZ;-><init>(FF)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/cZ;

    const/high16 v3, 0x4194

    const/high16 v4, 0x425c

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/app/cZ;-><init>(FF)V

    new-instance v3, Lcom/google/android/maps/driveabout/app/cZ;

    const/high16 v4, 0x4178

    invoke-direct {v3, v4, v12}, Lcom/google/android/maps/driveabout/app/cZ;-><init>(FF)V

    new-instance v4, Lcom/google/android/maps/driveabout/app/cZ;

    const/high16 v8, 0x41a0

    const/high16 v9, 0x4296

    invoke-direct {v4, v8, v9}, Lcom/google/android/maps/driveabout/app/cZ;-><init>(FF)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/cY;-><init>(Lcom/google/android/maps/driveabout/app/cZ;Lcom/google/android/maps/driveabout/app/cZ;Lcom/google/android/maps/driveabout/app/cZ;Lcom/google/android/maps/driveabout/app/cZ;Lx/ap;)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/app/cu;->i:Ljava/util/HashMap;

    new-instance v7, Lcom/google/android/maps/driveabout/app/cv;

    invoke-direct {v7, v11, v10, v14}, Lcom/google/android/maps/driveabout/app/cv;-><init>(IZI)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/bf;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cZ;

    const/high16 v2, 0x4186

    invoke-direct {v1, v2, v12}, Lcom/google/android/maps/driveabout/app/cZ;-><init>(FF)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/cZ;

    const/high16 v3, 0x418e

    const/high16 v4, 0x425c

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/app/cZ;-><init>(FF)V

    new-instance v3, Lcom/google/android/maps/driveabout/app/cZ;

    const/high16 v4, 0x4178

    invoke-direct {v3, v4, v12}, Lcom/google/android/maps/driveabout/app/cZ;-><init>(FF)V

    new-instance v4, Lcom/google/android/maps/driveabout/app/cZ;

    const/high16 v8, 0x4198

    const/high16 v9, 0x4296

    invoke-direct {v4, v8, v9}, Lcom/google/android/maps/driveabout/app/cZ;-><init>(FF)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/bf;-><init>(Lcom/google/android/maps/driveabout/app/cZ;Lcom/google/android/maps/driveabout/app/cZ;Lcom/google/android/maps/driveabout/app/cZ;Lcom/google/android/maps/driveabout/app/cZ;Lx/ap;)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/app/cu;->i:Ljava/util/HashMap;

    new-instance v7, Lcom/google/android/maps/driveabout/app/cv;

    invoke-direct {v7, v11, v11, v14}, Lcom/google/android/maps/driveabout/app/cv;-><init>(IZI)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/bf;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cZ;

    const/high16 v2, 0x4188

    invoke-direct {v1, v2, v12}, Lcom/google/android/maps/driveabout/app/cZ;-><init>(FF)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/cZ;

    const/high16 v3, 0x4192

    const/high16 v4, 0x425c

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/app/cZ;-><init>(FF)V

    new-instance v3, Lcom/google/android/maps/driveabout/app/cZ;

    const/high16 v4, 0x4178

    invoke-direct {v3, v4, v12}, Lcom/google/android/maps/driveabout/app/cZ;-><init>(FF)V

    new-instance v4, Lcom/google/android/maps/driveabout/app/cZ;

    const/high16 v8, 0x4198

    const/high16 v9, 0x4296

    invoke-direct {v4, v8, v9}, Lcom/google/android/maps/driveabout/app/cZ;-><init>(FF)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/bf;-><init>(Lcom/google/android/maps/driveabout/app/cZ;Lcom/google/android/maps/driveabout/app/cZ;Lcom/google/android/maps/driveabout/app/cZ;Lcom/google/android/maps/driveabout/app/cZ;Lx/ap;)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(F)F
    .registers 3

    const/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/cu;->a(FI)F

    move-result v0

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/t;)I
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cu;->j:Lcom/google/android/maps/driveabout/app/bT;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->j:Lcom/google/android/maps/driveabout/app/bT;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bT;->a()I

    move-result v0

    :cond_b
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/t;)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/app/cu;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/maps/driveabout/app/cu;->b:I

    iget v2, p1, Lcom/google/android/maps/driveabout/app/cu;->b:I

    if-eq v1, v2, :cond_2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nMapWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/cu;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/google/android/maps/driveabout/app/cu;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    iget v1, p0, Lcom/google/android/maps/driveabout/app/cu;->c:I

    iget v2, p1, Lcom/google/android/maps/driveabout/app/cu;->c:I

    if-eq v1, v2, :cond_59

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nMapHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/cu;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/google/android/maps/driveabout/app/cu;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_59
    iget v1, p0, Lcom/google/android/maps/driveabout/app/cu;->d:F

    iget v2, p1, Lcom/google/android/maps/driveabout/app/cu;->d:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_85

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nScreenDensity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/cu;->d:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/google/android/maps/driveabout/app/cu;->d:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_85
    iget v1, p0, Lcom/google/android/maps/driveabout/app/cu;->e:I

    iget v2, p1, Lcom/google/android/maps/driveabout/app/cu;->e:I

    if-eq v1, v2, :cond_af

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nBottomMargin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/cu;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/google/android/maps/driveabout/app/cu;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_af
    iget v1, p0, Lcom/google/android/maps/driveabout/app/cu;->g:I

    iget v2, p1, Lcom/google/android/maps/driveabout/app/cu;->g:I

    if-eq v1, v2, :cond_d9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nCameraType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/cu;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/google/android/maps/driveabout/app/cu;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d9
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/cu;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/cu;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/u;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nCameraPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/cu;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/cu;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Lt/V;Lt/L;IIII)Lt/V;
    .registers 13

    const/4 v0, 0x0

    invoke-virtual {p1}, Lt/V;->d()Lt/L;

    move-result-object v1

    invoke-virtual {p2, v1}, Lt/L;->f(Lt/L;)Lt/L;

    move-result-object v1

    invoke-virtual {v1}, Lt/L;->f()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lt/V;->g()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/maps/driveabout/app/cu;->b:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {v1}, Lt/L;->g()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lt/V;->h()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/app/cu;->c:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    int-to-float v2, p5

    cmpg-float v2, v3, v2

    if-gez v2, :cond_6b

    int-to-float v2, p5

    sub-float/2addr v2, v3

    :goto_2e
    iget v4, p0, Lcom/google/android/maps/driveabout/app/cu;->b:I

    int-to-float v4, v4

    sub-float/2addr v4, v3

    sub-int v5, p3, p5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_69

    int-to-float v4, p3

    int-to-float v5, p5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/google/android/maps/driveabout/app/cu;->b:I

    int-to-float v5, v5

    sub-float v3, v5, v3

    sub-float v3, v4, v3

    :goto_43
    iget v4, p0, Lcom/google/android/maps/driveabout/app/cu;->c:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    int-to-float v5, p6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_67

    int-to-float v4, p6

    iget v5, p0, Lcom/google/android/maps/driveabout/app/cu;->c:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    sub-float/2addr v4, v5

    :goto_52
    sub-int v5, p4, p6

    int-to-float v5, v5

    cmpg-float v5, v1, v5

    if-gez v5, :cond_65

    int-to-float v0, p4

    int-to-float v5, p6

    sub-float/2addr v0, v5

    sub-float v5, v0, v1

    :goto_5e
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/cu;->a(Lt/V;FFFF)Lt/V;

    move-result-object v0

    return-object v0

    :cond_65
    move v5, v0

    goto :goto_5e

    :cond_67
    move v4, v0

    goto :goto_52

    :cond_69
    move v3, v0

    goto :goto_43

    :cond_6b
    move v2, v0

    goto :goto_2e
.end method

.method public a()Lt/at;
    .registers 6

    new-instance v0, Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/cu;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/cu;->b:I

    iget v3, p0, Lcom/google/android/maps/driveabout/app/cu;->c:I

    iget v4, p0, Lcom/google/android/maps/driveabout/app/cu;->d:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/t;-><init>(Lcom/google/android/maps/driveabout/vector/u;IIF)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/t;->v()Lt/at;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .registers 3

    iput p1, p0, Lcom/google/android/maps/driveabout/app/cu;->e:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->h:Lcom/google/android/maps/driveabout/app/m;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/m;->a(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cu;->f:Z

    return-void
.end method

.method public a(IIF)V
    .registers 5

    iput p1, p0, Lcom/google/android/maps/driveabout/app/cu;->b:I

    iput p2, p0, Lcom/google/android/maps/driveabout/app/cu;->c:I

    iput p3, p0, Lcom/google/android/maps/driveabout/app/cu;->d:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cu;->f:Z

    return-void
.end method

.method public a(ILcom/google/android/maps/driveabout/vector/I;I)V
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput p1, p0, Lcom/google/android/maps/driveabout/app/cu;->g:I

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/cu;->i:Ljava/util/HashMap;

    new-instance v4, Lcom/google/android/maps/driveabout/app/cv;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/I;->b:Lcom/google/android/maps/driveabout/vector/I;

    if-ne p2, v0, :cond_57

    move v0, v1

    :goto_d
    invoke-direct {v4, p1, v0, p3}, Lcom/google/android/maps/driveabout/app/cv;-><init>(IZI)V

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/m;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/cu;->h:Lcom/google/android/maps/driveabout/app/m;

    if-eq v0, v3, :cond_1e

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->h:Lcom/google/android/maps/driveabout/app/m;

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/cu;->f:Z

    :cond_1e
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/cu;->f:Z

    if-nez v0, :cond_56

    :try_start_22
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0003

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_2e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_22 .. :try_end_2e} :catch_59

    move-result v0

    :goto_2f
    :try_start_2f
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/cu;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_3b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2f .. :try_end_3b} :catch_68

    move-result v2

    :goto_3c
    const/4 v3, 0x2

    if-ne p3, v3, :cond_76

    :goto_3f
    int-to-float v0, v0

    const/high16 v2, 0x42c8

    div-float/2addr v0, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/app/cu;->c:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cu;->h:Lcom/google/android/maps/driveabout/app/m;

    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/app/m;->b(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->h:Lcom/google/android/maps/driveabout/app/m;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/cu;->e:I

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/m;->a(I)V

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/cu;->f:Z

    :cond_56
    return-void

    :cond_57
    move v0, v2

    goto :goto_d

    :catch_59
    move-exception v0

    const-string v3, "Failed to load chevron walking margin resource."

    invoke-static {v3, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "NavigationMapController"

    const-string v3, "Failed to load da_mylocation_chevron_margin_walking_percent resource"

    invoke-static {v0, v3}, Ln/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_2f

    :catch_68
    move-exception v3

    const-string v4, "Failed to load chevron driving margin resource."

    invoke-static {v4, v3}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v3, "NavigationMapController"

    const-string v4, "Failed to load da_mylocation_chevron_margin_percent resource"

    invoke-static {v3, v4}, Ln/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    :cond_76
    move v0, v2

    goto :goto_3f
.end method

.method public a(Landroid/location/Location;)V
    .registers 8

    iget v0, p0, Lcom/google/android/maps/driveabout/app/cu;->b:I

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/google/android/maps/driveabout/app/cu;->c:I

    if-eqz v0, :cond_a

    if-nez p1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/cu;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->h:Lcom/google/android/maps/driveabout/app/m;

    iget v3, p0, Lcom/google/android/maps/driveabout/app/cu;->b:I

    iget v4, p0, Lcom/google/android/maps/driveabout/app/cu;->c:I

    iget v5, p0, Lcom/google/android/maps/driveabout/app/cu;->d:F

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/m;->a(Lcom/google/android/maps/driveabout/vector/u;Landroid/location/Location;IIF)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/cu;->a(Lcom/google/android/maps/driveabout/vector/v;I)V

    goto :goto_a
.end method

.method public a(Landroid/location/Location;Lt/ab;)V
    .registers 10

    iget v0, p0, Lcom/google/android/maps/driveabout/app/cu;->b:I

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/google/android/maps/driveabout/app/cu;->c:I

    if-eqz v0, :cond_a

    if-nez p1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/cu;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->h:Lcom/google/android/maps/driveabout/app/m;

    iget v4, p0, Lcom/google/android/maps/driveabout/app/cu;->b:I

    iget v5, p0, Lcom/google/android/maps/driveabout/app/cu;->c:I

    iget v6, p0, Lcom/google/android/maps/driveabout/app/cu;->d:F

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/m;->a(Lcom/google/android/maps/driveabout/vector/u;Landroid/location/Location;Lt/ab;IIF)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/cu;->a(Lcom/google/android/maps/driveabout/vector/v;I)V

    goto :goto_a
.end method

.method public a(Lcom/google/android/maps/driveabout/app/aL;)V
    .registers 3

    const/16 v0, 0x320

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/cu;->a(Lcom/google/android/maps/driveabout/app/aL;I)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/aL;FZ)V
    .registers 15

    const/16 v10, 0x1f4

    const/high16 v9, 0x4170

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->a()Ls/b;

    move-result-object v0

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/google/android/maps/driveabout/app/cu;->b:I

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/google/android/maps/driveabout/app/cu;->c:I

    if-nez v0, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->a()Ls/b;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/cu;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->j:Lcom/google/android/maps/driveabout/app/bT;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bT;->c()Lcom/google/android/maps/driveabout/vector/bS;

    move-result-object v3

    if-eqz v3, :cond_12

    iget-object v0, v3, Lcom/google/android/maps/driveabout/vector/bS;->a:Lt/L;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->h:Lcom/google/android/maps/driveabout/app/m;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->j()Lu/I;

    move-result-object v4

    iget v6, p0, Lcom/google/android/maps/driveabout/app/cu;->b:I

    iget v7, p0, Lcom/google/android/maps/driveabout/app/cu;->c:I

    iget v8, p0, Lcom/google/android/maps/driveabout/app/cu;->d:F

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/maps/driveabout/app/m;->a(Lcom/google/android/maps/driveabout/vector/u;Landroid/location/Location;Lcom/google/android/maps/driveabout/vector/bS;Lu/I;FIIF)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/cu;->g:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_a9

    const/high16 v1, -0x4080

    cmpl-float v1, p2, v1

    if-nez v1, :cond_a9

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->i()Z

    move-result v1

    if-nez v1, :cond_ca

    invoke-virtual {v2}, Ls/b;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_ca

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v1

    cmpl-float v1, v1, v9

    if-lez v1, :cond_c8

    new-instance v3, Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->b()Lt/L;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v6

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v7

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->f()F

    move-result v8

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    move-object v4, v3

    :goto_6e
    invoke-virtual {v2}, Ls/b;->getAccuracy()F

    move-result v0

    const v1, 0x3f8ccccd

    mul-float/2addr v0, v1

    invoke-virtual {v2}, Ls/b;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Lt/L;->a(D)D

    move-result-wide v5

    double-to-float v1, v5

    mul-float v5, v0, v1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/cu;->h:Lcom/google/android/maps/driveabout/app/m;

    iget v6, p0, Lcom/google/android/maps/driveabout/app/cu;->b:I

    iget v7, p0, Lcom/google/android/maps/driveabout/app/cu;->c:I

    iget v8, p0, Lcom/google/android/maps/driveabout/app/cu;->d:F

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/maps/driveabout/app/m;->a(Lcom/google/android/maps/driveabout/vector/u;FIIF)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    move-object v1, v0

    :goto_8e
    const/4 v0, 0x0

    invoke-virtual {v2}, Ls/b;->j()Lu/B;

    move-result-object v2

    if-eqz v2, :cond_9a

    invoke-virtual {v2}, Lu/B;->d()D

    move-result-wide v2

    double-to-float v0, v2

    :cond_9a
    const/high16 v2, 0x3fc0

    mul-float/2addr v2, v0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cu;->h:Lcom/google/android/maps/driveabout/app/m;

    iget v3, p0, Lcom/google/android/maps/driveabout/app/cu;->b:I

    iget v4, p0, Lcom/google/android/maps/driveabout/app/cu;->c:I

    iget v5, p0, Lcom/google/android/maps/driveabout/app/cu;->d:F

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/m;->a(Lcom/google/android/maps/driveabout/vector/u;FIIF)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    :cond_a9
    if-eqz p3, :cond_bc

    iget v1, p0, Lcom/google/android/maps/driveabout/app/cu;->g:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_bc

    new-instance v1, Lcom/google/android/maps/driveabout/app/cw;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cu;->j:Lcom/google/android/maps/driveabout/app/bT;

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/maps/driveabout/app/cw;-><init>(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/app/bT;Lcom/google/android/maps/driveabout/app/aL;)V

    invoke-virtual {p0, v1, v10}, Lcom/google/android/maps/driveabout/app/cu;->a(Lcom/google/android/maps/driveabout/vector/v;I)V

    goto/16 :goto_12

    :cond_bc
    new-instance v1, Lcom/google/android/maps/driveabout/app/cx;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cu;->j:Lcom/google/android/maps/driveabout/app/bT;

    invoke-direct {v1, v0, v2}, Lcom/google/android/maps/driveabout/app/cx;-><init>(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/app/bT;)V

    invoke-virtual {p0, v1, v10}, Lcom/google/android/maps/driveabout/app/cu;->a(Lcom/google/android/maps/driveabout/vector/v;I)V

    goto/16 :goto_12

    :cond_c8
    move-object v4, v0

    goto :goto_6e

    :cond_ca
    move-object v1, v0

    goto :goto_8e
.end method

.method public a(Lcom/google/android/maps/driveabout/app/aL;I)V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/cu;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->a()Ls/b;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cu;->h:Lcom/google/android/maps/driveabout/app/m;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->a()Ls/b;

    move-result-object v2

    invoke-virtual {v2}, Ls/b;->getBearing()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/driveabout/app/m;->a(Lcom/google/android/maps/driveabout/vector/u;F)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    :goto_18
    invoke-virtual {p0, v0, p2}, Lcom/google/android/maps/driveabout/app/cu;->a(Lcom/google/android/maps/driveabout/vector/v;I)V

    return-void

    :cond_1c
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cu;->h:Lcom/google/android/maps/driveabout/app/m;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/driveabout/app/m;->a(Lcom/google/android/maps/driveabout/vector/u;F)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    goto :goto_18
.end method

.method public a(Lcom/google/android/maps/driveabout/app/bT;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cu;->j:Lcom/google/android/maps/driveabout/app/bT;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/m;)V
    .registers 4

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/m;->d()Lt/L;

    move-result-object v0

    const/16 v1, 0x320

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/cu;->a(Lt/L;I)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/v;)V
    .registers 3

    const/16 v0, 0x320

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/cu;->a(Lcom/google/android/maps/driveabout/vector/v;I)V

    return-void
.end method

.method public a(Lu/I;ZZ)V
    .registers 6

    iget v0, p0, Lcom/google/android/maps/driveabout/app/cu;->b:I

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/google/android/maps/driveabout/app/cu;->c:I

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/cu;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cu;->h:Lcom/google/android/maps/driveabout/app/m;

    invoke-virtual {v1, v0, p1, p3}, Lcom/google/android/maps/driveabout/app/m;->a(Lcom/google/android/maps/driveabout/vector/u;Lu/I;Z)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    if-eqz p2, :cond_1b

    const/16 v0, 0x320

    :goto_17
    invoke-virtual {p0, v1, v0}, Lcom/google/android/maps/driveabout/app/cu;->a(Lcom/google/android/maps/driveabout/vector/v;I)V

    goto :goto_8

    :cond_1b
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public b()Lt/L;
    .registers 6

    new-instance v0, Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/cu;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/cu;->b:I

    iget v3, p0, Lcom/google/android/maps/driveabout/app/cu;->c:I

    iget v4, p0, Lcom/google/android/maps/driveabout/app/cu;->d:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/t;-><init>(Lcom/google/android/maps/driveabout/vector/u;IIF)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/t;->b()Lt/L;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/maps/driveabout/app/aL;)V
    .registers 6

    iget v0, p0, Lcom/google/android/maps/driveabout/app/cu;->b:I

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/google/android/maps/driveabout/app/cu;->c:I

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->l()[Lu/x;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->l()[Lu/x;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_16

    :cond_15
    :goto_15
    return-void

    :cond_16
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->l()[Lu/x;

    move-result-object v2

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lu/x;->n()Lt/P;

    move-result-object v0

    invoke-virtual {v0}, Lt/P;->a()Lt/V;

    move-result-object v1

    const/4 v0, 0x1

    :goto_26
    array-length v3, v2

    if-ge v0, v3, :cond_3a

    aget-object v3, v2, v0

    invoke-virtual {v3}, Lu/x;->n()Lt/P;

    move-result-object v3

    invoke-virtual {v3}, Lt/P;->a()Lt/V;

    move-result-object v3

    invoke-virtual {v1, v3}, Lt/V;->a(Lt/V;)Lt/V;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_3a
    invoke-direct {p0, p1, v1}, Lcom/google/android/maps/driveabout/app/cu;->a(Lcom/google/android/maps/driveabout/app/aL;Lt/V;)V

    goto :goto_15
.end method

.method public c()Lcom/google/android/maps/driveabout/vector/u;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lcom/google/android/maps/driveabout/app/aL;)V
    .registers 3

    iget v0, p0, Lcom/google/android/maps/driveabout/app/cu;->b:I

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/google/android/maps/driveabout/app/cu;->c:I

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v0

    if-nez v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    const/high16 v0, -0x4080

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/aL;->a(F)Lt/ab;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lt/ab;->f()Lt/V;

    move-result-object v0

    :goto_1b
    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/cu;->a(Lcom/google/android/maps/driveabout/app/aL;Lt/V;)V

    goto :goto_e

    :cond_1f
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aL;->k()Lu/x;

    move-result-object v0

    invoke-virtual {v0}, Lu/x;->n()Lt/P;

    move-result-object v0

    invoke-virtual {v0}, Lt/P;->a()Lt/V;

    move-result-object v0

    goto :goto_1b
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/maps/driveabout/app/cu;

    if-eqz v2, :cond_17

    check-cast p1, Lcom/google/android/maps/driveabout/app/cu;

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/cu;->a(Lcom/google/android/maps/driveabout/app/cu;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_17
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/android/maps/driveabout/app/cu;->g:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/app/cu;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/app/cu;->b:I

    add-int/2addr v0, v1

    return v0
.end method
