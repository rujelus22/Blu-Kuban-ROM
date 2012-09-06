.class public Lm/a;
.super Lm/f;
.source "SourceFile"


# instance fields
.field private c:Z

.field private d:J

.field private e:F

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>(Lm/c;)V
    .registers 3
    .parameter

    .prologue
    .line 32
    const-string v0, "driveabout_bearing_noise_reduction"

    invoke-direct {p0, v0, p1}, Lm/f;-><init>(Ljava/lang/String;Lm/c;)V

    .line 25
    const/high16 v0, -0x4080

    iput v0, p0, Lm/a;->e:F

    .line 33
    return-void
.end method

.method private a()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 131
    iput v0, p0, Lm/a;->f:F

    .line 132
    iput v0, p0, Lm/a;->g:F

    .line 133
    return-void
.end method

.method private a(Landroid/location/Location;)Z
    .registers 13
    .parameter

    .prologue
    const/4 v3, 0x0

    const v9, 0x3c8efa35

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 66
    invoke-static {}, Lt/m;->a()Lt/k;

    move-result-object v4

    .line 69
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    iget-wide v7, p0, Lm/a;->d:J

    sub-long/2addr v5, v7

    .line 70
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    iput-wide v7, p0, Lm/a;->d:J

    .line 71
    invoke-virtual {v4}, Lt/k;->k()I

    move-result v0

    int-to-long v7, v0

    cmp-long v0, v5, v7

    if-lez v0, :cond_28

    .line 72
    invoke-direct {p0}, Lm/a;->a()V

    .line 73
    const/high16 v0, -0x4080

    iput v0, p0, Lm/a;->e:F

    .line 127
    :goto_27
    return v2

    .line 78
    :cond_28
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 79
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    .line 80
    iput v0, p0, Lm/a;->e:F

    .line 94
    :goto_34
    invoke-virtual {v4}, Lt/k;->i()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3c23d70a

    mul-float/2addr v7, v8

    .line 96
    cmpl-float v8, v0, v7

    if-lez v8, :cond_52

    .line 97
    invoke-direct {p0}, Lm/a;->a()V

    goto :goto_27

    .line 85
    :cond_45
    iget v0, p0, Lm/a;->e:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4e

    .line 86
    iget v0, p0, Lm/a;->e:F

    goto :goto_34

    .line 88
    :cond_4e
    invoke-direct {p0}, Lm/a;->a()V

    goto :goto_27

    .line 101
    :cond_52
    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v8

    if-nez v8, :cond_5d

    .line 102
    invoke-direct {p0}, Lm/a;->a()V

    move v2, v3

    .line 103
    goto :goto_27

    .line 108
    :cond_5d
    cmpl-float v8, v0, v1

    if-lez v8, :cond_b0

    .line 109
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v1

    mul-float/2addr v1, v9

    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    .line 111
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v8

    mul-float/2addr v8, v9

    invoke-static {v8}, Landroid/util/FloatMath;->cos(F)F

    move-result v8

    .line 113
    mul-float/2addr v1, v0

    .line 114
    mul-float/2addr v0, v8

    .line 117
    :goto_75
    invoke-virtual {v4}, Lt/k;->j()I

    move-result v4

    int-to-float v4, v4

    .line 118
    iget v8, p0, Lm/a;->f:F

    neg-long v9, v5

    long-to-float v9, v9

    div-float/2addr v9, v4

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->exp(D)D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v8, v9

    add-float/2addr v1, v8

    iput v1, p0, Lm/a;->f:F

    .line 120
    iget v1, p0, Lm/a;->g:F

    neg-long v5, v5

    long-to-float v5, v5

    div-float v4, v5, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lm/a;->g:F

    .line 125
    iget v0, p0, Lm/a;->f:F

    iget v1, p0, Lm/a;->f:F

    mul-float/2addr v0, v1

    iget v1, p0, Lm/a;->g:F

    iget v4, p0, Lm/a;->g:F

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    .line 126
    mul-float v1, v7, v7

    .line 127
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
    .parameter

    .prologue
    .line 38
    new-instance v1, Lm/b;

    invoke-direct {v1, p1}, Lm/b;-><init>(Landroid/location/Location;)V

    .line 39
    const-string v0, "driveabout_bearing_noise_reduction"

    invoke-virtual {v1, v0}, Lm/b;->setProvider(Ljava/lang/String;)V

    .line 43
    instance-of v0, p1, Lm/b;

    if-eqz v0, :cond_20

    move-object v0, p1

    check-cast v0, Lm/b;

    invoke-virtual {v0}, Lm/b;->a()Z

    move-result v0

    if-eqz v0, :cond_20

    move-object v0, p1

    check-cast v0, Lm/b;

    invoke-virtual {v0}, Lm/b;->b()Z

    move-result v0

    if-nez v0, :cond_26

    .line 46
    :cond_20
    iget-object v0, p0, Lm/a;->b:Lm/c;

    invoke-interface {v0, v1}, Lm/c;->onLocationChanged(Landroid/location/Location;)V

    .line 59
    :goto_25
    return-void

    .line 52
    :cond_26
    invoke-direct {p0, p1}, Lm/a;->a(Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-boolean v0, p0, Lm/a;->c:Z

    if-eqz v0, :cond_33

    .line 53
    invoke-virtual {v1}, Lm/b;->removeBearing()V

    .line 55
    :cond_33
    invoke-virtual {v1}, Lm/b;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm/a;->c:Z

    .line 58
    :cond_3c
    iget-object v0, p0, Lm/a;->b:Lm/c;

    invoke-interface {v0, v1}, Lm/c;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_25
.end method
