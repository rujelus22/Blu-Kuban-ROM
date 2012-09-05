.class Ls/j;
.super Ljava/lang/Object;


# instance fields
.field a:D

.field b:D

.field c:D

.field d:Lt/L;

.field e:D

.field f:Z

.field g:D

.field h:D

.field i:Z

.field j:D

.field k:D

.field final l:Lu/x;

.field final m:Lz/l;


# direct methods
.method constructor <init>(Landroid/location/Location;Ls/j;Lz/l;Lu/x;)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Ls/j;->m:Lz/l;

    iput-object p4, p0, Ls/j;->l:Lu/x;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lt/L;->a(D)D

    move-result-wide v0

    iput-wide v0, p0, Ls/j;->a:D

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L

    div-double/2addr v0, v2

    iput-wide v0, p0, Ls/j;->b:D

    if-nez p2, :cond_ae

    const-wide/high16 v0, 0x4000

    :goto_22
    iput-wide v0, p0, Ls/j;->c:D

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_b5

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v3, v0

    :goto_2f
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Lt/L;->a(DD)Lt/L;

    move-result-object v0

    iput-object v0, p0, Ls/j;->d:Lt/L;

    iget-object v0, p0, Ls/j;->m:Lz/l;

    invoke-virtual {v0}, Lz/l;->f()I

    move-result v0

    int-to-double v0, v0

    add-double/2addr v0, v3

    iput-wide v0, p0, Ls/j;->e:D

    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_c3

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Ls/j;->g:D

    if-nez p2, :cond_bc

    iget-wide v0, p0, Ls/j;->g:D

    move-wide v5, v0

    :goto_59
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    float-to-double v1, v1

    double-to-float v5, v5

    iget-wide v6, p0, Ls/j;->g:D

    double-to-float v6, v6

    invoke-static {v5, v6}, Lt/N;->a(FF)F

    move-result v5

    float-to-double v5, v5

    iget-object v7, p0, Ls/j;->m:Lz/l;

    invoke-virtual {v7}, Lz/l;->g()I

    move-result v7

    int-to-double v7, v7

    invoke-static/range {v0 .. v8}, Ls/j;->a(ZDDDD)D

    move-result-wide v0

    iput-wide v0, p0, Ls/j;->h:D

    iget-wide v0, p0, Ls/j;->h:D

    const-wide/high16 v2, 0x4059

    cmpg-double v0, v0, v2

    if-gez v0, :cond_c0

    iget-wide v0, p0, Ls/j;->h:D

    :goto_82
    iput-wide v0, p0, Ls/j;->h:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls/j;->f:Z

    :goto_87
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_f8

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Ls/j;->c:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ls/j;->j:D

    const-wide/high16 v0, 0x4034

    const-wide/high16 v2, 0x4049

    iget-wide v4, p0, Ls/j;->j:D

    const-wide/high16 v6, 0x4000

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ls/j;->k:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls/j;->i:Z

    :goto_ad
    return-void

    :cond_ae
    iget-wide v0, p0, Ls/j;->b:D

    iget-wide v2, p2, Ls/j;->b:D

    sub-double/2addr v0, v2

    goto/16 :goto_22

    :cond_b5
    invoke-static {}, Ls/o;->a()F

    move-result v0

    float-to-double v3, v0

    goto/16 :goto_2f

    :cond_bc
    iget-wide v0, p2, Ls/j;->g:D

    move-wide v5, v0

    goto :goto_59

    :cond_c0
    const-wide/high16 v0, 0x4059

    goto :goto_82

    :cond_c3
    if-eqz p2, :cond_f4

    iget-boolean v0, p2, Ls/j;->f:Z

    if-eqz v0, :cond_f4

    iget-wide v0, p2, Ls/j;->g:D

    iput-wide v0, p0, Ls/j;->g:D

    iget-object v0, p2, Ls/j;->d:Lt/L;

    iget-object v1, p0, Ls/j;->d:Lt/L;

    invoke-virtual {v0, v1}, Lt/L;->c(Lt/L;)F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Ls/j;->a:D

    div-double/2addr v0, v2

    iget-wide v2, p2, Ls/j;->h:D

    const-wide/high16 v4, 0x3fe0

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Ls/j;->h:D

    iget-wide v0, p0, Ls/j;->h:D

    const-wide/high16 v2, 0x4059

    cmpg-double v0, v0, v2

    if-gez v0, :cond_f1

    iget-wide v0, p0, Ls/j;->h:D

    :goto_eb
    iput-wide v0, p0, Ls/j;->h:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls/j;->f:Z

    goto :goto_87

    :cond_f1
    const-wide/high16 v0, 0x4059

    goto :goto_eb

    :cond_f4
    const/4 v0, 0x0

    iput-boolean v0, p0, Ls/j;->f:Z

    goto :goto_87

    :cond_f8
    if-eqz p2, :cond_116

    iget-boolean v0, p2, Ls/j;->i:Z

    if-eqz v0, :cond_116

    iget-wide v0, p2, Ls/j;->j:D

    iput-wide v0, p0, Ls/j;->j:D

    const-wide/high16 v0, 0x4049

    iget-wide v2, p2, Ls/j;->k:D

    iget-wide v4, p0, Ls/j;->j:D

    const-wide/high16 v6, 0x4000

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Ls/j;->k:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls/j;->i:Z

    goto :goto_ad

    :cond_116
    const/4 v0, 0x0

    iput-boolean v0, p0, Ls/j;->i:Z

    goto :goto_ad
.end method

.method static a(ZDDDD)D
    .registers 19

    const-wide v0, 0x4046800000000000L

    const-wide/high16 v2, 0x3ff0

    neg-double v4, p3

    const-wide/high16 v6, 0x403e

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    mul-double/2addr v2, v0

    const-wide/high16 v0, 0x4010

    div-double v4, p5, v0

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_24

    const-wide/high16 v0, 0x4034

    neg-double v6, p1

    const-wide/high16 v8, 0x4000

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v0, v6

    :cond_24
    add-double/2addr v2, v4

    add-double/2addr v0, v2

    add-double v0, v0, p7

    return-wide v0
.end method


# virtual methods
.method a()D
    .registers 3

    iget-wide v0, p0, Ls/j;->a:D

    return-wide v0
.end method

.method a(D)D
    .registers 7

    iget-wide v0, p0, Ls/j;->j:D

    sub-double v0, p1, v0

    iget-wide v2, p0, Ls/j;->k:D

    div-double/2addr v0, v2

    neg-double v2, v0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method a(Lt/L;DLt/X;)D
    .registers 15

    const-wide v8, 0x400ccccccccccccdL

    const-wide/high16 v6, 0x4000

    iget-object v0, p0, Ls/j;->d:Lt/L;

    invoke-virtual {p1, v0}, Lt/L;->c(Lt/L;)F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Ls/j;->a:D

    div-double v2, v0, v2

    const-wide v0, 0x3ffccccccccccccdL

    invoke-virtual {p4}, Lt/X;->j()Z

    move-result v4

    if-nez v4, :cond_2f

    invoke-virtual {p4}, Lt/X;->f()I

    move-result v4

    const/16 v5, 0x40

    if-lt v4, v5, :cond_26

    add-double/2addr v0, v8

    :cond_26
    invoke-virtual {p4}, Lt/X;->f()I

    move-result v4

    const/16 v5, 0x80

    if-lt v4, v5, :cond_2f

    add-double/2addr v0, v8

    :cond_2f
    const-wide/16 v4, 0x0

    sub-double v0, v2, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iget-wide v2, p0, Ls/j;->e:D

    div-double/2addr v0, v2

    neg-double v2, v0

    mul-double/2addr v0, v2

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    iget-boolean v0, p0, Ls/j;->f:Z

    if-eqz v0, :cond_5a

    double-to-float v0, p2

    iget-wide v4, p0, Ls/j;->g:D

    double-to-float v1, v4

    invoke-static {v0, v1}, Lt/N;->a(FF)F

    move-result v0

    float-to-double v0, v0

    iget-wide v4, p0, Ls/j;->h:D

    div-double/2addr v0, v4

    neg-double v4, v0

    mul-double/2addr v0, v4

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    :goto_58
    mul-double/2addr v0, v2

    return-wide v0

    :cond_5a
    const-wide/high16 v0, 0x3ff0

    goto :goto_58
.end method

.method a(Lu/B;Lt/L;D)D
    .registers 7

    invoke-virtual {p0, p1, p2, p3, p4}, Ls/j;->b(Lu/B;Lt/L;D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method a(Lt/L;D)Lu/B;
    .registers 13

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Ls/j;->l:Lu/x;

    if-eqz v1, :cond_34

    iget-wide v1, p0, Ls/j;->a:D

    iget-wide v5, p0, Ls/j;->k:D

    const-wide/high16 v7, 0x4008

    mul-double/2addr v5, v7

    iget-object v3, p0, Ls/j;->m:Lz/l;

    invoke-virtual {v3}, Lz/l;->f()I

    move-result v3

    int-to-double v7, v3

    add-double/2addr v5, v7

    mul-double/2addr v1, v5

    iget-object v3, p0, Ls/j;->l:Lu/x;

    invoke-virtual {v3, p1, v1, v2, v0}, Lu/x;->a(Lt/L;DZ)[Lu/B;

    move-result-object v6

    const-wide/high16 v2, -0x10

    move v5, v0

    :goto_1f
    array-length v0, v6

    if-ge v5, v0, :cond_34

    aget-object v0, v6, v5

    invoke-virtual {p0, v0, p1, p2, p3}, Ls/j;->b(Lu/B;Lt/L;D)D

    move-result-wide v0

    cmpl-double v7, v0, v2

    if-lez v7, :cond_35

    aget-object v2, v6, v5

    :goto_2e
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v4, v2

    move-wide v2, v0

    goto :goto_1f

    :cond_34
    return-object v4

    :cond_35
    move-wide v0, v2

    move-object v2, v4

    goto :goto_2e
.end method

.method b(D)D
    .registers 7

    const-wide/high16 v0, 0x3ff0

    iget-object v2, p0, Ls/j;->m:Lz/l;

    invoke-virtual {v2}, Lz/l;->h()D

    move-result-wide v2

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    return-wide v0
.end method

.method b(Lu/B;Lt/L;D)D
    .registers 11

    invoke-virtual {p1}, Lu/B;->b()Lt/L;

    move-result-object v0

    invoke-virtual {v0, p2}, Lt/L;->c(Lt/L;)F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Ls/j;->a:D

    iget-object v4, p0, Ls/j;->m:Lz/l;

    invoke-virtual {v4}, Lz/l;->f()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-virtual {p1}, Lu/B;->c()D

    move-result-wide v2

    double-to-float v2, v2

    double-to-float v3, p3

    invoke-static {v2, v3}, Lt/N;->a(FF)F

    move-result v2

    iget-object v3, p0, Ls/j;->m:Lz/l;

    invoke-virtual {v3}, Lz/l;->g()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v4, -0x4020

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    mul-double/2addr v0, v4

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationModel[mTimeSinceLastUpdate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ls/j;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mPositionMean:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ls/j;->d:Lt/L;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mPositionStdMeters:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ls/j;->e:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mDistanceMeanMeters:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Ls/j;->i:Z

    if-eqz v0, :cond_74

    iget-wide v2, p0, Ls/j;->j:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mDistanceStdMeters:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Ls/j;->i:Z

    if-eqz v0, :cond_77

    iget-wide v2, p0, Ls/j;->k:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_4d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mBearingMeanDeg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ls/j;->g:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mBearingStdDeg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ls/j;->h:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_74
    const-string v0, "--"

    goto :goto_39

    :cond_77
    const-string v0, "--"

    goto :goto_4d
.end method
