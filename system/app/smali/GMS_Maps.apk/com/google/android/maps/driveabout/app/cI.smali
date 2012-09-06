.class public Lcom/google/android/maps/driveabout/app/ci;
.super Lcom/google/android/maps/driveabout/vector/dI;
.source "SourceFile"


# instance fields
.field private b:I

.field private c:I

.field private d:F

.field private e:I

.field private f:Z

.field private g:I

.field private h:Lcom/google/android/maps/driveabout/app/k;

.field private i:Ljava/util/HashMap;

.field private j:Lcom/google/android/maps/driveabout/app/bN;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 144
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/dI;-><init>(Landroid/content/Context;)V

    .line 78
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/ci;->f:Z

    .line 145
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/ci;->k()V

    .line 146
    iput v3, p0, Lcom/google/android/maps/driveabout/app/ci;->g:I

    .line 147
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->i:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cj;

    invoke-direct {v1, v3, v2, v2}, Lcom/google/android/maps/driveabout/app/cj;-><init>(IZI)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/k;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->h:Lcom/google/android/maps/driveabout/app/k;

    .line 149
    const/high16 v0, 0x3fc0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/ci;->d(F)V

    .line 150
    return-void
.end method

.method private a(Ln/aa;)Ln/aa;
    .registers 12
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 842
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0026

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 844
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ci;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sub-int v4, v0, v2

    .line 850
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0027

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 852
    mul-int/lit8 v0, v2, 0x3

    .line 856
    iget v3, p0, Lcom/google/android/maps/driveabout/app/ci;->b:I

    mul-int/lit8 v6, v5, 0x2

    sub-int/2addr v3, v6

    sub-int/2addr v3, v2

    sub-int/2addr v3, v0

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 857
    iget v6, p0, Lcom/google/android/maps/driveabout/app/ci;->c:I

    mul-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    sub-int/2addr v6, v4

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 858
    invoke-virtual {p1}, Ln/aa;->g()I

    move-result v7

    div-int v3, v7, v3

    invoke-virtual {p1}, Ln/aa;->h()I

    move-result v7

    div-int v6, v7, v6

    if-le v3, v6, :cond_77

    .line 863
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b002a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    move v2, v1

    .line 866
    :goto_6b
    add-int/2addr v2, v5

    add-int v3, v1, v5

    add-int/2addr v4, v5

    add-int/2addr v5, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/ci;->a(Ln/aa;IIII)Ln/aa;

    move-result-object v0

    return-object v0

    :cond_77
    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_6b
.end method

.method private a(Ln/aa;FFFF)Ln/aa;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 905
    invoke-virtual {p1}, Ln/aa;->g()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/ci;->b:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    sub-float/2addr v1, p3

    div-float/2addr v0, v1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 907
    invoke-virtual {p1}, Ln/aa;->g()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/ci;->b:I

    int-to-float v2, v2

    sub-float/2addr v2, p2

    sub-float/2addr v2, p3

    div-float/2addr v1, v2

    mul-float/2addr v1, p3

    float-to-int v1, v1

    .line 909
    invoke-virtual {p1}, Ln/aa;->h()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/maps/driveabout/app/ci;->c:I

    int-to-float v3, v3

    sub-float/2addr v3, p4

    sub-float/2addr v3, p5

    div-float/2addr v2, v3

    mul-float/2addr v2, p4

    float-to-int v2, v2

    .line 911
    invoke-virtual {p1}, Ln/aa;->h()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/google/android/maps/driveabout/app/ci;->c:I

    int-to-float v4, v4

    sub-float/2addr v4, p4

    sub-float/2addr v4, p5

    div-float/2addr v3, v4

    mul-float/2addr v3, p5

    float-to-int v3, v3

    .line 914
    invoke-virtual {p1}, Ln/aa;->d()Ln/Q;

    move-result-object v4

    new-instance v5, Ln/Q;

    invoke-direct {v5, v0, v3}, Ln/Q;-><init>(II)V

    invoke-virtual {v4, v5}, Ln/Q;->f(Ln/Q;)Ln/Q;

    move-result-object v0

    .line 915
    invoke-virtual {p1}, Ln/aa;->e()Ln/Q;

    move-result-object v3

    new-instance v4, Ln/Q;

    invoke-direct {v4, v1, v2}, Ln/Q;-><init>(II)V

    invoke-virtual {v3, v4}, Ln/Q;->e(Ln/Q;)Ln/Q;

    move-result-object v1

    .line 916
    new-instance v2, Ln/aa;

    invoke-direct {v2, v0, v1}, Ln/aa;-><init>(Ln/Q;Ln/Q;)V

    return-object v2
.end method

.method private a(Ln/aa;IIII)Ln/aa;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 886
    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    int-to-float v5, p5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/ci;->a(Ln/aa;FFFF)Ln/aa;

    move-result-object v0

    return-object v0
.end method

.method private a(Ln/aa;Landroid/location/Location;)Ln/aa;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 782
    if-eqz p2, :cond_25

    .line 783
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ln/Q;->a(DD)Ln/Q;

    move-result-object v0

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ln/Q;->a(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-static {v0, v1}, Ln/aa;->a(Ln/Q;I)Ln/aa;

    move-result-object v0

    .line 790
    invoke-virtual {p1, v0}, Ln/aa;->a(Ln/aa;)Ln/aa;

    move-result-object p1

    .line 792
    :cond_25
    return-object p1
.end method

.method private a(Ln/aa;Ln/s;)Ln/aa;
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 754
    if-eqz p2, :cond_48

    .line 755
    invoke-virtual {p2}, Ln/s;->a()I

    move-result v0

    invoke-virtual {p2}, Ln/s;->b()I

    move-result v1

    invoke-static {v0, v1}, Ln/Q;->b(II)Ln/Q;

    move-result-object v2

    .line 757
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 759
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 761
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 763
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    .line 765
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/ci;->a(Ln/aa;Ln/Q;IIII)Ln/aa;

    move-result-object p1

    .line 768
    :cond_48
    return-object p1
.end method

.method private a(Lcom/google/android/maps/driveabout/app/aN;Ln/aa;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 731
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->C()Lo/P;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 732
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->C()Lo/P;

    move-result-object v0

    invoke-virtual {v0}, Lo/P;->c()Ln/s;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/maps/driveabout/app/ci;->a(Ln/aa;Ln/s;)Ln/aa;

    move-result-object p2

    .line 735
    :cond_12
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->b()Lm/b;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 736
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->b()Lm/b;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/maps/driveabout/app/ci;->a(Ln/aa;Landroid/location/Location;)Ln/aa;

    move-result-object p2

    .line 739
    :cond_20
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/app/ci;->a(Ln/aa;)Ln/aa;

    move-result-object v1

    .line 740
    iget v2, p0, Lcom/google/android/maps/driveabout/app/ci;->b:I

    iget v3, p0, Lcom/google/android/maps/driveabout/app/ci;->c:I

    iget v4, p0, Lcom/google/android/maps/driveabout/app/ci;->d:F

    const/16 v5, 0x320

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/ci;->a(Ln/aa;IIFI)V

    .line 742
    return-void
.end method

.method private k()V
    .registers 16

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/high16 v12, 0x4282

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->i:Ljava/util/HashMap;

    .line 158
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->i:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cj;

    invoke-direct {v1, v14, v10, v10}, Lcom/google/android/maps/driveabout/app/cj;-><init>(IZI)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/cO;

    const/high16 v3, 0x417c

    const/high16 v4, 0x4184

    const/high16 v5, 0x4174

    invoke-direct {v2, v3, v4, v5, v11}, Lcom/google/android/maps/driveabout/app/cO;-><init>(FFFZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->i:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cj;

    invoke-direct {v1, v14, v10, v13}, Lcom/google/android/maps/driveabout/app/cj;-><init>(IZI)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/cO;

    const/high16 v3, 0x4186

    const/high16 v4, 0x4186

    const/high16 v5, 0x4178

    invoke-direct {v2, v3, v4, v5, v11}, Lcom/google/android/maps/driveabout/app/cO;-><init>(FFFZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->i:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cj;

    invoke-direct {v1, v14, v10, v14}, Lcom/google/android/maps/driveabout/app/cj;-><init>(IZI)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/cO;

    const/high16 v3, 0x417c

    const/high16 v4, 0x4184

    const/high16 v5, 0x4174

    invoke-direct {v2, v3, v4, v5, v11}, Lcom/google/android/maps/driveabout/app/cO;-><init>(FFFZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->i:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cj;

    invoke-direct {v1, v14, v11, v10}, Lcom/google/android/maps/driveabout/app/cj;-><init>(IZI)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/cO;

    const/high16 v3, 0x4186

    const/high16 v4, 0x418c

    const/high16 v5, 0x4182

    invoke-direct {v2, v3, v4, v5, v11}, Lcom/google/android/maps/driveabout/app/cO;-><init>(FFFZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->i:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cj;

    invoke-direct {v1, v14, v11, v13}, Lcom/google/android/maps/driveabout/app/cj;-><init>(IZI)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/cO;

    const/high16 v3, 0x4188

    const/high16 v4, 0x4192

    const/high16 v5, 0x4182

    invoke-direct {v2, v3, v4, v5, v11}, Lcom/google/android/maps/driveabout/app/cO;-><init>(FFFZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->i:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cj;

    invoke-direct {v1, v14, v11, v14}, Lcom/google/android/maps/driveabout/app/cj;-><init>(IZI)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/cO;

    const/high16 v3, 0x4186

    const/high16 v4, 0x418c

    const/high16 v5, 0x4182

    invoke-direct {v2, v3, v4, v5, v11}, Lcom/google/android/maps/driveabout/app/cO;-><init>(FFFZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->i:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cj;

    invoke-direct {v1, v13, v10, v10}, Lcom/google/android/maps/driveabout/app/cj;-><init>(IZI)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/cO;

    const/high16 v3, 0x417c

    const/high16 v4, 0x4184

    const/high16 v5, 0x4174

    invoke-direct {v2, v3, v4, v5, v10}, Lcom/google/android/maps/driveabout/app/cO;-><init>(FFFZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->i:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cj;

    invoke-direct {v1, v13, v10, v13}, Lcom/google/android/maps/driveabout/app/cj;-><init>(IZI)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/cO;

    const/high16 v3, 0x4186

    const/high16 v4, 0x4186

    const/high16 v5, 0x4178

    invoke-direct {v2, v3, v4, v5, v10}, Lcom/google/android/maps/driveabout/app/cO;-><init>(FFFZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->i:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cj;

    invoke-direct {v1, v13, v10, v14}, Lcom/google/android/maps/driveabout/app/cj;-><init>(IZI)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/cO;

    const/high16 v3, 0x417c

    const/high16 v4, 0x4184

    const/high16 v5, 0x4174

    invoke-direct {v2, v3, v4, v5, v10}, Lcom/google/android/maps/driveabout/app/cO;-><init>(FFFZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->i:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cj;

    invoke-direct {v1, v13, v11, v10}, Lcom/google/android/maps/driveabout/app/cj;-><init>(IZI)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/cO;

    const/high16 v3, 0x4186

    const/high16 v4, 0x418c

    const/high16 v5, 0x4182

    invoke-direct {v2, v3, v4, v5, v10}, Lcom/google/android/maps/driveabout/app/cO;-><init>(FFFZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->i:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cj;

    invoke-direct {v1, v13, v11, v13}, Lcom/google/android/maps/driveabout/app/cj;-><init>(IZI)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/cO;

    const/high16 v3, 0x4188

    const/high16 v4, 0x4192

    const/high16 v5, 0x4182

    invoke-direct {v2, v3, v4, v5, v10}, Lcom/google/android/maps/driveabout/app/cO;-><init>(FFFZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->i:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cj;

    invoke-direct {v1, v13, v11, v14}, Lcom/google/android/maps/driveabout/app/cj;-><init>(IZI)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/cO;

    const/high16 v3, 0x4186

    const/high16 v4, 0x418c

    const/high16 v5, 0x4182

    invoke-direct {v2, v3, v4, v5, v10}, Lcom/google/android/maps/driveabout/app/cO;-><init>(FFFZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const/4 v5, 0x0

    .line 197
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->b:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-static {v0}, Lr/aJ;->b(Lcom/google/android/maps/driveabout/vector/dg;)Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 198
    new-instance v5, Lr/ao;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->b:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-static {v0}, Lr/aJ;->c(Lcom/google/android/maps/driveabout/vector/dg;)Lr/aH;

    move-result-object v0

    invoke-direct {v5, v0}, Lr/ao;-><init>(Lr/aH;)V

    .line 210
    :cond_11d
    iget-object v6, p0, Lcom/google/android/maps/driveabout/app/ci;->i:Ljava/util/HashMap;

    new-instance v7, Lcom/google/android/maps/driveabout/app/cj;

    invoke-direct {v7, v11, v10, v10}, Lcom/google/android/maps/driveabout/app/cj;-><init>(IZI)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/bh;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cN;

    const/high16 v2, 0x4186

    invoke-direct {v1, v2, v12}, Lcom/google/android/maps/driveabout/app/cN;-><init>(FF)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/cN;

    const/high16 v3, 0x418e

    const/high16 v4, 0x425c

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/app/cN;-><init>(FF)V

    new-instance v3, Lcom/google/android/maps/driveabout/app/cN;

    const/high16 v4, 0x4178

    invoke-direct {v3, v4, v12}, Lcom/google/android/maps/driveabout/app/cN;-><init>(FF)V

    new-instance v4, Lcom/google/android/maps/driveabout/app/cN;

    const/high16 v8, 0x4198

    const/high16 v9, 0x4296

    invoke-direct {v4, v8, v9}, Lcom/google/android/maps/driveabout/app/cN;-><init>(FF)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/bh;-><init>(Lcom/google/android/maps/driveabout/app/cN;Lcom/google/android/maps/driveabout/app/cN;Lcom/google/android/maps/driveabout/app/cN;Lcom/google/android/maps/driveabout/app/cN;Lr/ao;)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v6, p0, Lcom/google/android/maps/driveabout/app/ci;->i:Ljava/util/HashMap;

    new-instance v7, Lcom/google/android/maps/driveabout/app/cj;

    invoke-direct {v7, v11, v11, v10}, Lcom/google/android/maps/driveabout/app/cj;-><init>(IZI)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/bh;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cN;

    const/high16 v2, 0x4188

    invoke-direct {v1, v2, v12}, Lcom/google/android/maps/driveabout/app/cN;-><init>(FF)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/cN;

    const/high16 v3, 0x4192

    const/high16 v4, 0x425c

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/app/cN;-><init>(FF)V

    new-instance v3, Lcom/google/android/maps/driveabout/app/cN;

    const/high16 v4, 0x4178

    invoke-direct {v3, v4, v12}, Lcom/google/android/maps/driveabout/app/cN;-><init>(FF)V

    new-instance v4, Lcom/google/android/maps/driveabout/app/cN;

    const/high16 v8, 0x4198

    const/high16 v9, 0x4296

    invoke-direct {v4, v8, v9}, Lcom/google/android/maps/driveabout/app/cN;-><init>(FF)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/bh;-><init>(Lcom/google/android/maps/driveabout/app/cN;Lcom/google/android/maps/driveabout/app/cN;Lcom/google/android/maps/driveabout/app/cN;Lcom/google/android/maps/driveabout/app/cN;Lr/ao;)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v6, p0, Lcom/google/android/maps/driveabout/app/ci;->i:Ljava/util/HashMap;

    new-instance v7, Lcom/google/android/maps/driveabout/app/cj;

    invoke-direct {v7, v11, v10, v13}, Lcom/google/android/maps/driveabout/app/cj;-><init>(IZI)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/cM;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cN;

    const/high16 v2, 0x4192

    invoke-direct {v1, v2, v12}, Lcom/google/android/maps/driveabout/app/cN;-><init>(FF)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/cN;

    const/high16 v3, 0x4192

    const/high16 v4, 0x425c

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/app/cN;-><init>(FF)V

    new-instance v3, Lcom/google/android/maps/driveabout/app/cN;

    const/high16 v4, 0x4178

    invoke-direct {v3, v4, v12}, Lcom/google/android/maps/driveabout/app/cN;-><init>(FF)V

    new-instance v4, Lcom/google/android/maps/driveabout/app/cN;

    const/high16 v8, 0x41a0

    const/high16 v9, 0x4296

    invoke-direct {v4, v8, v9}, Lcom/google/android/maps/driveabout/app/cN;-><init>(FF)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/cM;-><init>(Lcom/google/android/maps/driveabout/app/cN;Lcom/google/android/maps/driveabout/app/cN;Lcom/google/android/maps/driveabout/app/cN;Lcom/google/android/maps/driveabout/app/cN;Lr/ao;)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v6, p0, Lcom/google/android/maps/driveabout/app/ci;->i:Ljava/util/HashMap;

    new-instance v7, Lcom/google/android/maps/driveabout/app/cj;

    invoke-direct {v7, v11, v11, v13}, Lcom/google/android/maps/driveabout/app/cj;-><init>(IZI)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/cM;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cN;

    const/high16 v2, 0x4194

    invoke-direct {v1, v2, v12}, Lcom/google/android/maps/driveabout/app/cN;-><init>(FF)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/cN;

    const/high16 v3, 0x4194

    const/high16 v4, 0x425c

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/app/cN;-><init>(FF)V

    new-instance v3, Lcom/google/android/maps/driveabout/app/cN;

    const/high16 v4, 0x4178

    invoke-direct {v3, v4, v12}, Lcom/google/android/maps/driveabout/app/cN;-><init>(FF)V

    new-instance v4, Lcom/google/android/maps/driveabout/app/cN;

    const/high16 v8, 0x41a0

    const/high16 v9, 0x4296

    invoke-direct {v4, v8, v9}, Lcom/google/android/maps/driveabout/app/cN;-><init>(FF)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/cM;-><init>(Lcom/google/android/maps/driveabout/app/cN;Lcom/google/android/maps/driveabout/app/cN;Lcom/google/android/maps/driveabout/app/cN;Lcom/google/android/maps/driveabout/app/cN;Lr/ao;)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v6, p0, Lcom/google/android/maps/driveabout/app/ci;->i:Ljava/util/HashMap;

    new-instance v7, Lcom/google/android/maps/driveabout/app/cj;

    invoke-direct {v7, v11, v10, v14}, Lcom/google/android/maps/driveabout/app/cj;-><init>(IZI)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/bh;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cN;

    const/high16 v2, 0x4186

    invoke-direct {v1, v2, v12}, Lcom/google/android/maps/driveabout/app/cN;-><init>(FF)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/cN;

    const/high16 v3, 0x418e

    const/high16 v4, 0x425c

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/app/cN;-><init>(FF)V

    new-instance v3, Lcom/google/android/maps/driveabout/app/cN;

    const/high16 v4, 0x4178

    invoke-direct {v3, v4, v12}, Lcom/google/android/maps/driveabout/app/cN;-><init>(FF)V

    new-instance v4, Lcom/google/android/maps/driveabout/app/cN;

    const/high16 v8, 0x4198

    const/high16 v9, 0x4296

    invoke-direct {v4, v8, v9}, Lcom/google/android/maps/driveabout/app/cN;-><init>(FF)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/bh;-><init>(Lcom/google/android/maps/driveabout/app/cN;Lcom/google/android/maps/driveabout/app/cN;Lcom/google/android/maps/driveabout/app/cN;Lcom/google/android/maps/driveabout/app/cN;Lr/ao;)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v6, p0, Lcom/google/android/maps/driveabout/app/ci;->i:Ljava/util/HashMap;

    new-instance v7, Lcom/google/android/maps/driveabout/app/cj;

    invoke-direct {v7, v11, v11, v14}, Lcom/google/android/maps/driveabout/app/cj;-><init>(IZI)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/bh;

    new-instance v1, Lcom/google/android/maps/driveabout/app/cN;

    const/high16 v2, 0x4188

    invoke-direct {v1, v2, v12}, Lcom/google/android/maps/driveabout/app/cN;-><init>(FF)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/cN;

    const/high16 v3, 0x4192

    const/high16 v4, 0x425c

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/app/cN;-><init>(FF)V

    new-instance v3, Lcom/google/android/maps/driveabout/app/cN;

    const/high16 v4, 0x4178

    invoke-direct {v3, v4, v12}, Lcom/google/android/maps/driveabout/app/cN;-><init>(FF)V

    new-instance v4, Lcom/google/android/maps/driveabout/app/cN;

    const/high16 v8, 0x4198

    const/high16 v9, 0x4296

    invoke-direct {v4, v8, v9}, Lcom/google/android/maps/driveabout/app/cN;-><init>(FF)V

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/bh;-><init>(Lcom/google/android/maps/driveabout/app/cN;Lcom/google/android/maps/driveabout/app/cN;Lcom/google/android/maps/driveabout/app/cN;Lcom/google/android/maps/driveabout/app/cN;Lr/ao;)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    return-void
.end method


# virtual methods
.method public a(F)F
    .registers 3
    .parameter

    .prologue
    .line 381
    const/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/ci;->a(FI)F

    move-result v0

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;)I
    .registers 4
    .parameter

    .prologue
    .line 925
    const/4 v0, 0x0

    .line 926
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ci;->j:Lcom/google/android/maps/driveabout/app/bN;

    if-eqz v1, :cond_b

    .line 927
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->j:Lcom/google/android/maps/driveabout/app/bN;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bN;->a()I

    move-result v0

    .line 929
    :cond_b
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/k;)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/app/ci;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    iget v1, p0, Lcom/google/android/maps/driveabout/app/ci;->b:I

    iget v2, p1, Lcom/google/android/maps/driveabout/app/ci;->b:I

    if-eq v1, v2, :cond_2f

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nMapWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/ci;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/google/android/maps/driveabout/app/ci;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_2f
    iget v1, p0, Lcom/google/android/maps/driveabout/app/ci;->c:I

    iget v2, p1, Lcom/google/android/maps/driveabout/app/ci;->c:I

    if-eq v1, v2, :cond_59

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nMapHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/ci;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/google/android/maps/driveabout/app/ci;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_59
    iget v1, p0, Lcom/google/android/maps/driveabout/app/ci;->d:F

    iget v2, p1, Lcom/google/android/maps/driveabout/app/ci;->d:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_85

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nScreenDensity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/ci;->d:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/google/android/maps/driveabout/app/ci;->d:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :cond_85
    iget v1, p0, Lcom/google/android/maps/driveabout/app/ci;->e:I

    iget v2, p1, Lcom/google/android/maps/driveabout/app/ci;->e:I

    if-eq v1, v2, :cond_af

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nBottomMargin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/ci;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/google/android/maps/driveabout/app/ci;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_af
    iget v1, p0, Lcom/google/android/maps/driveabout/app/ci;->g:I

    iget v2, p1, Lcom/google/android/maps/driveabout/app/ci;->g:I

    if-eq v1, v2, :cond_d9

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nCameraType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/ci;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/google/android/maps/driveabout/app/ci;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    :cond_d9
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/ci;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/ci;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/l;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10f

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nCameraPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/ci;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/ci;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_10f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Ln/aK;
    .registers 6

    .prologue
    .line 327
    new-instance v0, Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/ci;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/ci;->b:I

    iget v3, p0, Lcom/google/android/maps/driveabout/app/ci;->c:I

    iget v4, p0, Lcom/google/android/maps/driveabout/app/ci;->d:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/k;-><init>(Lcom/google/android/maps/driveabout/vector/l;IIF)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/k;->w()Ln/aK;

    move-result-object v0

    return-object v0
.end method

.method a(Ln/aa;Ln/Q;IIII)Ln/aa;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 811
    invoke-virtual {p1}, Ln/aa;->d()Ln/Q;

    move-result-object v1

    invoke-virtual {p2, v1}, Ln/Q;->f(Ln/Q;)Ln/Q;

    move-result-object v1

    .line 812
    invoke-virtual {v1}, Ln/Q;->f()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Ln/aa;->g()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/maps/driveabout/app/ci;->b:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    .line 813
    invoke-virtual {v1}, Ln/Q;->g()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Ln/aa;->h()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/app/ci;->c:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 815
    int-to-float v2, p5

    cmpg-float v2, v3, v2

    if-gez v2, :cond_6b

    .line 816
    int-to-float v2, p5

    sub-float/2addr v2, v3

    .line 818
    :goto_2e
    iget v4, p0, Lcom/google/android/maps/driveabout/app/ci;->b:I

    int-to-float v4, v4

    sub-float/2addr v4, v3

    sub-int v5, p3, p5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_69

    .line 819
    int-to-float v4, p3

    int-to-float v5, p5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/google/android/maps/driveabout/app/ci;->b:I

    int-to-float v5, v5

    sub-float v3, v5, v3

    sub-float v3, v4, v3

    .line 821
    :goto_43
    iget v4, p0, Lcom/google/android/maps/driveabout/app/ci;->c:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    int-to-float v5, p6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_67

    .line 822
    int-to-float v4, p6

    iget v5, p0, Lcom/google/android/maps/driveabout/app/ci;->c:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    sub-float/2addr v4, v5

    .line 824
    :goto_52
    sub-int v5, p4, p6

    int-to-float v5, v5

    cmpg-float v5, v1, v5

    if-gez v5, :cond_65

    .line 825
    int-to-float v0, p4

    int-to-float v5, p6

    sub-float/2addr v0, v5

    sub-float v5, v0, v1

    :goto_5e
    move-object v0, p0

    move-object v1, p1

    .line 827
    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/ci;->a(Ln/aa;FFFF)Ln/aa;

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

.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 359
    iput p1, p0, Lcom/google/android/maps/driveabout/app/ci;->e:I

    .line 360
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->h:Lcom/google/android/maps/driveabout/app/k;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/k;->a(I)V

    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/ci;->f:Z

    .line 362
    return-void
.end method

.method public a(IIF)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 347
    iput p1, p0, Lcom/google/android/maps/driveabout/app/ci;->b:I

    .line 348
    iput p2, p0, Lcom/google/android/maps/driveabout/app/ci;->c:I

    .line 349
    iput p3, p0, Lcom/google/android/maps/driveabout/app/ci;->d:F

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/ci;->f:Z

    .line 351
    return-void
.end method

.method public a(ILcom/google/android/maps/driveabout/vector/D;I)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 675
    iput p1, p0, Lcom/google/android/maps/driveabout/app/ci;->g:I

    .line 677
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/ci;->i:Ljava/util/HashMap;

    new-instance v4, Lcom/google/android/maps/driveabout/app/cj;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/D;->b:Lcom/google/android/maps/driveabout/vector/D;

    if-ne p2, v0, :cond_57

    move v0, v1

    :goto_d
    invoke-direct {v4, p1, v0, p3}, Lcom/google/android/maps/driveabout/app/cj;-><init>(IZI)V

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/k;

    .line 679
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/ci;->h:Lcom/google/android/maps/driveabout/app/k;

    if-eq v0, v3, :cond_1e

    .line 680
    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->h:Lcom/google/android/maps/driveabout/app/k;

    .line 681
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/app/ci;->f:Z

    .line 688
    :cond_1e
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/ci;->f:Z

    if-nez v0, :cond_56

    .line 692
    :try_start_22
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0003

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_2e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_22 .. :try_end_2e} :catch_59

    move-result v0

    .line 701
    :goto_2f
    :try_start_2f
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/ci;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_3b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2f .. :try_end_3b} :catch_68

    move-result v2

    .line 709
    :goto_3c
    const/4 v3, 0x2

    if-ne p3, v3, :cond_76

    :goto_3f
    int-to-float v0, v0

    const/high16 v2, 0x42c8

    div-float/2addr v0, v2

    .line 711
    iget v2, p0, Lcom/google/android/maps/driveabout/app/ci;->c:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 712
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ci;->h:Lcom/google/android/maps/driveabout/app/k;

    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/app/k;->b(I)V

    .line 713
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->h:Lcom/google/android/maps/driveabout/app/k;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/ci;->e:I

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/k;->a(I)V

    .line 715
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/app/ci;->f:Z

    .line 717
    :cond_56
    return-void

    :cond_57
    move v0, v2

    .line 677
    goto :goto_d

    .line 694
    :catch_59
    move-exception v0

    .line 695
    const-string v3, "Failed to load chevron walking margin resource."

    invoke-static {v3, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 696
    const-string v0, "NavigationMapController"

    const-string v3, "Failed to load da_mylocation_chevron_margin_walking_percent resource"

    invoke-static {v0, v3}, Lh/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_2f

    .line 703
    :catch_68
    move-exception v3

    .line 704
    const-string v4, "Failed to load chevron driving margin resource."

    invoke-static {v4, v3}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 705
    const-string v3, "NavigationMapController"

    const-string v4, "Failed to load da_mylocation_chevron_margin_percent resource"

    invoke-static {v3, v4}, Lh/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    :cond_76
    move v0, v2

    .line 709
    goto :goto_3f
.end method

.method public a(Landroid/location/Location;)V
    .registers 8
    .parameter

    .prologue
    .line 592
    iget v0, p0, Lcom/google/android/maps/driveabout/app/ci;->b:I

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/google/android/maps/driveabout/app/ci;->c:I

    if-eqz v0, :cond_a

    if-nez p1, :cond_b

    .line 599
    :cond_a
    :goto_a
    return-void

    .line 595
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/ci;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    .line 596
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->h:Lcom/google/android/maps/driveabout/app/k;

    iget v3, p0, Lcom/google/android/maps/driveabout/app/ci;->b:I

    iget v4, p0, Lcom/google/android/maps/driveabout/app/ci;->c:I

    iget v5, p0, Lcom/google/android/maps/driveabout/app/ci;->d:F

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/k;->a(Lcom/google/android/maps/driveabout/vector/l;Landroid/location/Location;IIF)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    .line 598
    const/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/ci;->a(Lcom/google/android/maps/driveabout/vector/m;I)V

    goto :goto_a
.end method

.method public a(Landroid/location/Location;Ln/ai;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 575
    iget v0, p0, Lcom/google/android/maps/driveabout/app/ci;->b:I

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/google/android/maps/driveabout/app/ci;->c:I

    if-eqz v0, :cond_a

    if-nez p1, :cond_b

    .line 583
    :cond_a
    :goto_a
    return-void

    .line 578
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/ci;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    .line 579
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->h:Lcom/google/android/maps/driveabout/app/k;

    iget v4, p0, Lcom/google/android/maps/driveabout/app/ci;->b:I

    iget v5, p0, Lcom/google/android/maps/driveabout/app/ci;->c:I

    iget v6, p0, Lcom/google/android/maps/driveabout/app/ci;->d:F

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/k;->a(Lcom/google/android/maps/driveabout/vector/l;Landroid/location/Location;Ln/ai;IIF)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    .line 582
    const/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/ci;->a(Lcom/google/android/maps/driveabout/vector/m;I)V

    goto :goto_a
.end method

.method public a(Lcom/google/android/maps/driveabout/app/aN;)V
    .registers 3
    .parameter

    .prologue
    .line 418
    const/16 v0, 0x320

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/ci;->a(Lcom/google/android/maps/driveabout/app/aN;I)V

    .line 419
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/aN;FZ)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x1f4

    const/high16 v9, 0x4170

    .line 444
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->b()Lm/b;

    move-result-object v0

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/google/android/maps/driveabout/app/ci;->b:I

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/google/android/maps/driveabout/app/ci;->c:I

    if-nez v0, :cond_13

    .line 497
    :cond_12
    :goto_12
    return-void

    .line 448
    :cond_13
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->b()Lm/b;

    move-result-object v2

    .line 449
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/ci;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    .line 450
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->j:Lcom/google/android/maps/driveabout/app/bN;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bN;->c()Ln/P;

    move-result-object v3

    .line 451
    if-eqz v3, :cond_12

    invoke-virtual {v3}, Ln/P;->j()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 454
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->h:Lcom/google/android/maps/driveabout/app/k;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->k()Lo/I;

    move-result-object v4

    iget v6, p0, Lcom/google/android/maps/driveabout/app/ci;->b:I

    iget v7, p0, Lcom/google/android/maps/driveabout/app/ci;->c:I

    iget v8, p0, Lcom/google/android/maps/driveabout/app/ci;->d:F

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/maps/driveabout/app/k;->a(Lcom/google/android/maps/driveabout/vector/l;Landroid/location/Location;Ln/P;Lo/I;FIIF)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    .line 458
    iget v1, p0, Lcom/google/android/maps/driveabout/app/ci;->g:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_ab

    const/high16 v1, -0x4080

    cmpl-float v1, p2, v1

    if-nez v1, :cond_ab

    .line 459
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->j()Z

    move-result v1

    if-nez v1, :cond_cc

    .line 462
    invoke-virtual {v2}, Lm/b;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 463
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v1

    cmpl-float v1, v1, v9

    if-lez v1, :cond_ca

    .line 464
    new-instance v3, Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/l;->b()Ln/Q;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v6

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v7

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/l;->f()F

    move-result v8

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    move-object v4, v3

    .line 468
    :goto_70
    invoke-virtual {v2}, Lm/b;->getAccuracy()F

    move-result v0

    const v1, 0x3f8ccccd

    mul-float/2addr v0, v1

    invoke-virtual {v2}, Lm/b;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ln/Q;->a(D)D

    move-result-wide v5

    double-to-float v1, v5

    mul-float v5, v0, v1

    .line 472
    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/ci;->h:Lcom/google/android/maps/driveabout/app/k;

    iget v6, p0, Lcom/google/android/maps/driveabout/app/ci;->b:I

    iget v7, p0, Lcom/google/android/maps/driveabout/app/ci;->c:I

    iget v8, p0, Lcom/google/android/maps/driveabout/app/ci;->d:F

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/maps/driveabout/app/k;->a(Lcom/google/android/maps/driveabout/vector/l;FIIF)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    move-object v1, v0

    .line 480
    :goto_90
    const/4 v0, 0x0

    .line 481
    invoke-virtual {v2}, Lm/b;->j()Lo/B;

    move-result-object v2

    .line 483
    if-eqz v2, :cond_9c

    .line 484
    invoke-virtual {v2}, Lo/B;->d()D

    move-result-wide v2

    double-to-float v0, v2

    .line 486
    :cond_9c
    const/high16 v2, 0x3fc0

    mul-float/2addr v2, v0

    .line 487
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ci;->h:Lcom/google/android/maps/driveabout/app/k;

    iget v3, p0, Lcom/google/android/maps/driveabout/app/ci;->b:I

    iget v4, p0, Lcom/google/android/maps/driveabout/app/ci;->c:I

    iget v5, p0, Lcom/google/android/maps/driveabout/app/ci;->d:F

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/k;->a(Lcom/google/android/maps/driveabout/vector/l;FIIF)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    .line 490
    :cond_ab
    if-eqz p3, :cond_be

    iget v1, p0, Lcom/google/android/maps/driveabout/app/ci;->g:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_be

    .line 491
    new-instance v1, Lcom/google/android/maps/driveabout/app/ck;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ci;->j:Lcom/google/android/maps/driveabout/app/bN;

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/maps/driveabout/app/ck;-><init>(Lcom/google/android/maps/driveabout/vector/l;Lcom/google/android/maps/driveabout/app/bN;Lcom/google/android/maps/driveabout/app/aN;)V

    invoke-virtual {p0, v1, v10}, Lcom/google/android/maps/driveabout/app/ci;->a(Lcom/google/android/maps/driveabout/vector/m;I)V

    goto/16 :goto_12

    .line 494
    :cond_be
    new-instance v1, Lcom/google/android/maps/driveabout/app/cl;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ci;->j:Lcom/google/android/maps/driveabout/app/bN;

    invoke-direct {v1, v0, v2}, Lcom/google/android/maps/driveabout/app/cl;-><init>(Lcom/google/android/maps/driveabout/vector/l;Lcom/google/android/maps/driveabout/app/bN;)V

    invoke-virtual {p0, v1, v10}, Lcom/google/android/maps/driveabout/app/ci;->a(Lcom/google/android/maps/driveabout/vector/m;I)V

    goto/16 :goto_12

    :cond_ca
    move-object v4, v0

    goto :goto_70

    :cond_cc
    move-object v1, v0

    goto :goto_90
.end method

.method public a(Lcom/google/android/maps/driveabout/app/aN;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/ci;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    .line 402
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->b()Lm/b;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 403
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ci;->h:Lcom/google/android/maps/driveabout/app/k;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->b()Lm/b;

    move-result-object v2

    invoke-virtual {v2}, Lm/b;->getBearing()F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/driveabout/app/k;->a(Lcom/google/android/maps/driveabout/vector/l;F)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    .line 408
    :goto_18
    invoke-virtual {p0, v0, p2}, Lcom/google/android/maps/driveabout/app/ci;->a(Lcom/google/android/maps/driveabout/vector/m;I)V

    .line 409
    return-void

    .line 406
    :cond_1c
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ci;->h:Lcom/google/android/maps/driveabout/app/k;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/driveabout/app/k;->a(Lcom/google/android/maps/driveabout/vector/l;F)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    goto :goto_18
.end method

.method public a(Lcom/google/android/maps/driveabout/app/bN;)V
    .registers 2
    .parameter

    .prologue
    .line 920
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ci;->j:Lcom/google/android/maps/driveabout/app/bN;

    .line 921
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/d;)V
    .registers 4
    .parameter

    .prologue
    .line 427
    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/d;->e()Ln/Q;

    move-result-object v0

    const/16 v1, 0x320

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/app/ci;->a(Ln/Q;I)V

    .line 428
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/m;)V
    .registers 3
    .parameter

    .prologue
    .line 390
    const/16 v0, 0x320

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/ci;->a(Lcom/google/android/maps/driveabout/vector/m;I)V

    .line 391
    return-void
.end method

.method public a(Lo/I;ZZ)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 657
    iget v0, p0, Lcom/google/android/maps/driveabout/app/ci;->b:I

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/google/android/maps/driveabout/app/ci;->c:I

    if-nez v0, :cond_9

    .line 663
    :cond_8
    :goto_8
    return-void

    .line 660
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/ci;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    .line 661
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ci;->h:Lcom/google/android/maps/driveabout/app/k;

    invoke-virtual {v1, v0, p1, p3}, Lcom/google/android/maps/driveabout/app/k;->a(Lcom/google/android/maps/driveabout/vector/l;Lo/I;Z)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    .line 662
    if-eqz p2, :cond_1b

    const/16 v0, 0x320

    :goto_17
    invoke-virtual {p0, v1, v0}, Lcom/google/android/maps/driveabout/app/ci;->a(Lcom/google/android/maps/driveabout/vector/m;I)V

    goto :goto_8

    :cond_1b
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public b()Ln/Q;
    .registers 6

    .prologue
    .line 332
    new-instance v0, Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/ci;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/ci;->b:I

    iget v3, p0, Lcom/google/android/maps/driveabout/app/ci;->c:I

    iget v4, p0, Lcom/google/android/maps/driveabout/app/ci;->d:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/k;-><init>(Lcom/google/android/maps/driveabout/vector/l;IIF)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/k;->b()Ln/Q;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/android/maps/driveabout/app/aN;)V
    .registers 6
    .parameter

    .prologue
    .line 609
    iget v0, p0, Lcom/google/android/maps/driveabout/app/ci;->b:I

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/google/android/maps/driveabout/app/ci;->c:I

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->m()[Lo/x;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->m()[Lo/x;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_16

    .line 620
    :cond_15
    :goto_15
    return-void

    .line 614
    :cond_16
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->m()[Lo/x;

    move-result-object v2

    .line 615
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lo/x;->n()Ln/U;

    move-result-object v0

    invoke-virtual {v0}, Ln/U;->a()Ln/aa;

    move-result-object v1

    .line 616
    const/4 v0, 0x1

    :goto_26
    array-length v3, v2

    if-ge v0, v3, :cond_3a

    .line 617
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lo/x;->n()Ln/U;

    move-result-object v3

    invoke-virtual {v3}, Ln/U;->a()Ln/aa;

    move-result-object v3

    invoke-virtual {v1, v3}, Ln/aa;->a(Ln/aa;)Ln/aa;

    move-result-object v1

    .line 616
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 619
    :cond_3a
    invoke-direct {p0, p1, v1}, Lcom/google/android/maps/driveabout/app/ci;->a(Lcom/google/android/maps/driveabout/app/aN;Ln/aa;)V

    goto :goto_15
.end method

.method public c()Lcom/google/android/maps/driveabout/vector/l;
    .registers 2

    .prologue
    .line 934
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lcom/google/android/maps/driveabout/app/aN;)V
    .registers 3
    .parameter

    .prologue
    .line 631
    iget v0, p0, Lcom/google/android/maps/driveabout/app/ci;->b:I

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/google/android/maps/driveabout/app/ci;->c:I

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v0

    if-nez v0, :cond_f

    .line 644
    :cond_e
    :goto_e
    return-void

    .line 635
    :cond_f
    const/high16 v0, -0x4080

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/aN;->a(F)Ln/ai;

    move-result-object v0

    .line 638
    if-eqz v0, :cond_1f

    .line 639
    invoke-virtual {v0}, Ln/ai;->f()Ln/aa;

    move-result-object v0

    .line 643
    :goto_1b
    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/ci;->a(Lcom/google/android/maps/driveabout/app/aN;Ln/aa;)V

    goto :goto_e

    .line 641
    :cond_1f
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/aN;->l()Lo/x;

    move-result-object v0

    invoke-virtual {v0}, Lo/x;->n()Ln/U;

    move-result-object v0

    invoke-virtual {v0}, Ln/U;->a()Ln/aa;

    move-result-object v0

    goto :goto_1b
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 276
    if-ne p0, p1, :cond_5

    .line 282
    :cond_4
    :goto_4
    return v0

    .line 279
    :cond_5
    instance-of v2, p1, Lcom/google/android/maps/driveabout/app/ci;

    if-eqz v2, :cond_17

    .line 280
    check-cast p1, Lcom/google/android/maps/driveabout/app/ci;

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/ci;->a(Lcom/google/android/maps/driveabout/app/ci;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_17
    move v0, v1

    .line 282
    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 263
    .line 265
    iget v0, p0, Lcom/google/android/maps/driveabout/app/ci;->g:I

    add-int/lit8 v0, v0, 0x1f

    .line 266
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/app/ci;->c:I

    add-int/2addr v0, v1

    .line 267
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/app/ci;->b:I

    add-int/2addr v0, v1

    .line 268
    return v0
.end method
