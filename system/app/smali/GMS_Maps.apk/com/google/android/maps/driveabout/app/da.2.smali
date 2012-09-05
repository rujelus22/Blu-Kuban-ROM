.class public Lcom/google/android/maps/driveabout/app/da;
.super Lcom/google/android/maps/driveabout/app/m;


# static fields
.field private static final e:F


# instance fields
.field private final d:[F

.field private final f:Z

.field private g:F


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide/high16 v0, 0x3ff0

    const-wide/high16 v2, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/app/da;->e:F

    return-void
.end method

.method public constructor <init>(FFFZ)V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/m;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/da;->d:[F

    iput p1, p0, Lcom/google/android/maps/driveabout/app/da;->g:F

    iput-boolean p4, p0, Lcom/google/android/maps/driveabout/app/da;->f:Z

    return-void
.end method

.method private static a(Landroid/location/Location;)F
    .registers 5

    const/high16 v1, 0x4168

    const/high16 v0, 0x4138

    instance-of v2, p0, Ls/b;

    if-nez v2, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    check-cast p0, Ls/b;

    invoke-virtual {p0}, Ls/b;->e()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {p0}, Ls/b;->h()Lt/X;

    move-result-object v2

    if-nez v2, :cond_19

    :cond_17
    move v0, v1

    goto :goto_8

    :cond_19
    invoke-virtual {p0}, Ls/b;->h()Lt/X;

    move-result-object v2

    invoke-virtual {v2}, Lt/X;->f()I

    move-result v2

    const/16 v3, 0x30

    if-gt v2, v3, :cond_27

    move v0, v1

    goto :goto_8

    :cond_27
    const/16 v1, 0x50

    if-gt v2, v1, :cond_8

    const/high16 v0, 0x4148

    goto :goto_8
.end method

.method private a(Lt/L;Lt/L;IF)F
    .registers 9

    invoke-virtual {p1, p2}, Lt/L;->c(Lt/L;)F

    move-result v0

    const/high16 v1, 0x4380

    mul-float/2addr v0, v1

    mul-float/2addr v0, p4

    int-to-float v1, p3

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x41f0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    double-to-float v0, v2

    sget v2, Lcom/google/android/maps/driveabout/app/da;->e:F

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    const v1, 0x3e4ccccd

    sub-float v1, v0, v1

    const/4 v0, 0x0

    :goto_20
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/da;->d:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_37

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/da;->d:[F

    aget v2, v2, v0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_34

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/da;->d:[F

    aget v0, v1, v0

    :goto_33
    return v0

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_37
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/da;->d:[F

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/da;->d:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_33
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/u;F)Lcom/google/android/maps/driveabout/vector/u;
    .registers 9

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/da;->f:Z

    if-eqz v0, :cond_29

    move v4, p2

    :goto_6
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_16

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_28

    :cond_16
    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->b()Lt/L;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->f()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    move-object p1, v0

    :cond_28
    return-object p1

    :cond_29
    move v4, v3

    goto :goto_6
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Landroid/location/Location;IIF)Lcom/google/android/maps/driveabout/vector/u;
    .registers 12

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lt/L;->a(DD)Lt/L;

    move-result-object v1

    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    invoke-static {p2}, Lcom/google/android/maps/driveabout/app/da;->a(Landroid/location/Location;)F

    move-result v2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    return-object v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Landroid/location/Location;Lcom/google/android/maps/driveabout/vector/bS;Lu/I;FIIF)Lcom/google/android/maps/driveabout/vector/u;
    .registers 15

    const/4 v3, 0x0

    cmpl-float v0, p5, v3

    if-ltz v0, :cond_15

    move v2, p5

    :goto_6
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/da;->f:Z

    if-eqz v0, :cond_31

    iget v4, p3, Lcom/google/android/maps/driveabout/vector/bS;->b:F

    :goto_c
    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    iget-object v1, p3, Lcom/google/android/maps/driveabout/vector/bS;->a:Lt/L;

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    return-object v0

    :cond_15
    if-eqz p4, :cond_2e

    iget v0, p0, Lcom/google/android/maps/driveabout/app/da;->b:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p7, v0

    invoke-static {p6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p3, Lcom/google/android/maps/driveabout/vector/bS;->a:Lt/L;

    invoke-virtual {p4}, Lu/I;->a()Lt/L;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0, p8}, Lcom/google/android/maps/driveabout/app/da;->a(Lt/L;Lt/L;IF)F

    move-result v2

    iput v2, p0, Lcom/google/android/maps/driveabout/app/da;->g:F

    goto :goto_6

    :cond_2e
    iget v2, p0, Lcom/google/android/maps/driveabout/app/da;->g:F

    goto :goto_6

    :cond_31
    move v4, v3

    goto :goto_c
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Landroid/location/Location;Lt/ab;IIF)Lcom/google/android/maps/driveabout/vector/u;
    .registers 16

    const/high16 v8, 0x4380

    const/4 v3, 0x0

    if-nez p3, :cond_6

    :goto_5
    return-object p1

    :cond_6
    invoke-virtual {p3}, Lt/ab;->f()Lt/V;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lt/L;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lt/V;->d()Lt/L;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Lt/V;->e()Lt/L;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x2

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lt/L;->a(DD)Lt/L;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lt/V;->a([Lt/L;)Lt/V;

    move-result-object v1

    invoke-virtual {v1}, Lt/V;->g()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v8

    mul-float/2addr v0, p6

    int-to-float v2, p4

    div-float/2addr v0, v2

    invoke-virtual {v1}, Lt/V;->h()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v8

    mul-float/2addr v2, p6

    int-to-float v4, p5

    div-float/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const v2, 0x3f4ccccd

    div-float/2addr v0, v2

    const/high16 v2, 0x41f0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    double-to-float v0, v4

    sget v4, Lcom/google/android/maps/driveabout/app/da;->e:F

    mul-float/2addr v0, v4

    sub-float v0, v2, v0

    const v2, 0x3e4ccccd

    sub-float/2addr v0, v2

    const/high16 v2, 0x4100

    const/high16 v4, 0x4170

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v1}, Lt/V;->f()Lt/L;

    move-result-object v1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    move-object p1, v0

    goto :goto_5
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lu/I;Z)Lcom/google/android/maps/driveabout/vector/u;
    .registers 10

    const/4 v3, 0x0

    invoke-virtual {p2}, Lu/I;->a()Lt/L;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/da;->f:Z

    if-eqz v0, :cond_16

    invoke-virtual {p2}, Lu/I;->g()F

    move-result v4

    :goto_d
    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    const/high16 v2, 0x4182

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    return-object v0

    :cond_16
    move v4, v3

    goto :goto_d
.end method
