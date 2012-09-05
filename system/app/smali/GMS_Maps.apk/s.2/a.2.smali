.class public Ls/a;
.super Ls/f;


# instance fields
.field private c:Z

.field private d:J

.field private e:F

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>(Ls/c;)V
    .registers 3

    const-string v0, "driveabout_bearing_noise_reduction"

    invoke-direct {p0, v0, p1}, Ls/f;-><init>(Ljava/lang/String;Ls/c;)V

    const/high16 v0, -0x4080

    iput v0, p0, Ls/a;->e:F

    return-void
.end method

.method private a()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Ls/a;->f:F

    iput v0, p0, Ls/a;->g:F

    return-void
.end method

.method private a(Landroid/location/Location;)Z
    .registers 13

    const/4 v3, 0x0

    const v9, 0x3c8efa35

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lz/n;->a()Lz/l;

    move-result-object v4

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    iget-wide v7, p0, Ls/a;->d:J

    sub-long/2addr v5, v7

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    iput-wide v7, p0, Ls/a;->d:J

    invoke-virtual {v4}, Lz/l;->k()I

    move-result v0

    int-to-long v7, v0

    cmp-long v0, v5, v7

    if-lez v0, :cond_28

    invoke-direct {p0}, Ls/a;->a()V

    const/high16 v0, -0x4080

    iput v0, p0, Ls/a;->e:F

    :goto_27
    return v2

    :cond_28
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    iput v0, p0, Ls/a;->e:F

    :goto_34
    invoke-virtual {v4}, Lz/l;->i()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3c23d70a

    mul-float/2addr v7, v8

    cmpl-float v8, v0, v7

    if-lez v8, :cond_52

    invoke-direct {p0}, Ls/a;->a()V

    goto :goto_27

    :cond_45
    iget v0, p0, Ls/a;->e:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4e

    iget v0, p0, Ls/a;->e:F

    goto :goto_34

    :cond_4e
    invoke-direct {p0}, Ls/a;->a()V

    goto :goto_27

    :cond_52
    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v8

    if-nez v8, :cond_5d

    invoke-direct {p0}, Ls/a;->a()V

    move v2, v3

    goto :goto_27

    :cond_5d
    cmpl-float v8, v0, v1

    if-lez v8, :cond_b0

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    mul-float/2addr v1, v9

    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v8

    mul-float/2addr v8, v9

    invoke-static {v8}, Landroid/util/FloatMath;->cos(F)F

    move-result v8

    mul-float/2addr v1, v0

    mul-float/2addr v0, v8

    :goto_75
    invoke-virtual {v4}, Lz/l;->j()I

    move-result v4

    int-to-float v4, v4

    iget v8, p0, Ls/a;->f:F

    neg-long v9, v5

    long-to-float v9, v9

    div-float/2addr v9, v4

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->exp(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v8, v9

    add-float/2addr v1, v8

    iput v1, p0, Ls/a;->f:F

    iget v1, p0, Ls/a;->g:F

    neg-long v5, v5

    long-to-float v5, v5

    div-float v4, v5, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Ls/a;->g:F

    iget v0, p0, Ls/a;->f:F

    iget v1, p0, Ls/a;->f:F

    mul-float/2addr v0, v1

    iget v1, p0, Ls/a;->g:F

    iget v4, p0, Ls/a;->g:F

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    mul-float v1, v7, v7

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_ae

    move v0, v2

    :goto_ab
    move v2, v0

    goto/16 :goto_27

    :cond_ae
    move v0, v3

    goto :goto_ab

    :cond_b0
    move v0, v1

    goto :goto_75
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4

    new-instance v1, Ls/b;

    invoke-direct {v1, p1}, Ls/b;-><init>(Landroid/location/Location;)V

    const-string v0, "driveabout_bearing_noise_reduction"

    invoke-virtual {v1, v0}, Ls/b;->setProvider(Ljava/lang/String;)V

    instance-of v0, p1, Ls/b;

    if-eqz v0, :cond_20

    move-object v0, p1

    check-cast v0, Ls/b;

    invoke-virtual {v0}, Ls/b;->a()Z

    move-result v0

    if-eqz v0, :cond_20

    move-object v0, p1

    check-cast v0, Ls/b;

    invoke-virtual {v0}, Ls/b;->b()Z

    move-result v0

    if-nez v0, :cond_26

    :cond_20
    iget-object v0, p0, Ls/a;->b:Ls/c;

    invoke-interface {v0, v1}, Ls/c;->onLocationChanged(Landroid/location/Location;)V

    :goto_25
    return-void

    :cond_26
    invoke-direct {p0, p1}, Ls/a;->a(Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-boolean v0, p0, Ls/a;->c:Z

    if-eqz v0, :cond_33

    invoke-virtual {v1}, Ls/b;->removeBearing()V

    :cond_33
    invoke-virtual {v1}, Ls/b;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls/a;->c:Z

    :cond_3c
    iget-object v0, p0, Ls/a;->b:Ls/c;

    invoke-interface {v0, v1}, Ls/c;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_25
.end method
