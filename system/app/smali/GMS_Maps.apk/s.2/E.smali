.class public Ls/E;
.super Ls/f;


# instance fields
.field private final c:Landroid/os/Handler;

.field private final d:Laf/a;

.field private e:Ls/b;

.field private f:J

.field private final g:[F

.field private h:I

.field private i:Lz/l;

.field private final j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ls/c;Landroid/os/Handler;Laf/a;)V
    .registers 6

    const-string v0, "da_tunnel_heartbeat"

    invoke-direct {p0, v0, p1}, Ls/f;-><init>(Ljava/lang/String;Ls/c;)V

    const/4 v0, 0x0

    iput v0, p0, Ls/E;->h:I

    new-instance v0, Ls/F;

    invoke-direct {v0, p0}, Ls/F;-><init>(Ls/E;)V

    iput-object v0, p0, Ls/E;->j:Ljava/lang/Runnable;

    iput-object p2, p0, Ls/E;->c:Landroid/os/Handler;

    iput-object p3, p0, Ls/E;->d:Laf/a;

    const/16 v0, 0xa

    new-array v0, v0, [F

    iput-object v0, p0, Ls/E;->g:[F

    iget-object v0, p0, Ls/E;->g:[F

    const/high16 v1, -0x4080

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method static a([F)F
    .registers 9

    const/4 v0, 0x0

    const/high16 v2, -0x4080

    const/4 v1, 0x0

    array-length v4, p0

    move v3, v0

    move v7, v1

    move v1, v0

    move v0, v7

    :goto_9
    if-ge v3, v4, :cond_17

    aget v5, p0, v3

    cmpl-float v6, v5, v2

    if-eqz v6, :cond_14

    add-float/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_17
    const/4 v3, 0x2

    if-ge v1, v3, :cond_1c

    move v0, v2

    :goto_1b
    return v0

    :cond_1c
    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_1b
.end method

.method static a(Ls/b;F)Ls/b;
    .registers 10

    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    invoke-virtual {p0}, Ls/b;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Lt/L;->a(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, p1

    invoke-virtual {p0}, Ls/b;->j()Lu/B;

    move-result-object v4

    if-nez v4, :cond_16

    move-object v0, v2

    :goto_15
    return-object v0

    :cond_16
    invoke-virtual {v4}, Lu/B;->a()Lu/x;

    move-result-object v5

    invoke-virtual {v5, v4}, Lu/x;->a(Lu/B;)D

    move-result-wide v6

    double-to-float v4, v6

    add-float/2addr v3, v4

    invoke-virtual {v5}, Lu/x;->n()Lt/P;

    move-result-object v4

    float-to-double v6, v3

    invoke-virtual {v5, v6, v7}, Lu/x;->a(D)I

    move-result v6

    if-ltz v6, :cond_33

    invoke-virtual {v4}, Lt/P;->b()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-lt v6, v7, :cond_35

    :cond_33
    move-object v0, v2

    goto :goto_15

    :cond_35
    invoke-virtual {v4, v6}, Lt/P;->a(I)Lt/L;

    move-result-object v7

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v4, v2}, Lt/P;->a(I)Lt/L;

    move-result-object v4

    invoke-virtual {v5, v6}, Lu/x;->b(I)D

    move-result-wide v5

    double-to-float v2, v5

    sub-float v2, v3, v2

    invoke-virtual {v7, v4}, Lt/L;->c(Lt/L;)F

    move-result v3

    div-float/2addr v2, v3

    cmpg-float v3, v2, v0

    if-gez v3, :cond_6f

    :goto_4f
    invoke-virtual {v7, v4, v0}, Lt/L;->a(Lt/L;F)Lt/L;

    move-result-object v1

    new-instance v0, Ls/b;

    invoke-direct {v0, p0}, Ls/b;-><init>(Landroid/location/Location;)V

    invoke-virtual {v1}, Lt/L;->b()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ls/b;->setLatitude(D)V

    invoke-virtual {v1}, Lt/L;->d()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ls/b;->setLongitude(D)V

    invoke-static {v7, v4}, Lt/L;->a(Lt/L;Lt/L;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Ls/b;->setBearing(F)V

    goto :goto_15

    :cond_6f
    cmpl-float v0, v2, v1

    if-lez v0, :cond_75

    move v0, v1

    goto :goto_4f

    :cond_75
    move v0, v2

    goto :goto_4f
.end method

.method public static a(Landroid/location/Location;)Z
    .registers 3

    const/4 v0, 0x0

    instance-of v1, p0, Ls/b;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p0, Ls/b;

    invoke-virtual {p0}, Ls/b;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Ls/b;->h()Lt/X;

    move-result-object v0

    invoke-virtual {v0}, Lt/X;->g()Z

    move-result v0

    goto :goto_5
.end method

.method private d()J
    .registers 5

    const-wide/16 v0, 0x7d0

    iget-object v2, p0, Ls/E;->i:Lz/l;

    invoke-virtual {v2}, Lz/l;->l()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Ls/E;->c:Landroid/os/Handler;

    if-eqz v0, :cond_b

    iget-object v0, p0, Ls/E;->c:Landroid/os/Handler;

    iget-object v1, p0, Ls/E;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_b
    return-void
.end method

.method a(J)V
    .registers 5

    iget-object v0, p0, Ls/E;->c:Landroid/os/Handler;

    if-eqz v0, :cond_12

    iget-object v0, p0, Ls/E;->c:Landroid/os/Handler;

    iget-object v1, p0, Ls/E;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Ls/E;->c:Landroid/os/Handler;

    iget-object v1, p0, Ls/E;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_12
    return-void
.end method

.method public b()V
    .registers 3

    invoke-static {}, Lz/n;->a()Lz/l;

    move-result-object v0

    iput-object v0, p0, Ls/E;->i:Lz/l;

    invoke-direct {p0}, Ls/E;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ls/E;->a(J)V

    return-void
.end method

.method c()V
    .registers 7

    iget-object v0, p0, Ls/E;->e:Ls/b;

    invoke-static {v0}, Ls/E;->a(Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Ls/E;->g:[F

    invoke-static {v0}, Ls/E;->a([F)F

    move-result v0

    const/high16 v1, -0x4080

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_8

    const/high16 v1, 0x4000

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_8

    iget-object v1, p0, Ls/E;->g:[F

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([FF)V

    iget-object v1, p0, Ls/E;->d:Laf/a;

    invoke-interface {v1}, Laf/a;->d()J

    move-result-wide v1

    const/4 v3, 0x0

    iget-wide v4, p0, Ls/E;->f:J

    sub-long v4, v1, v4

    long-to-float v4, v4

    const v5, 0x3a83126f

    mul-float/2addr v4, v5

    mul-float/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v4, p0, Ls/E;->e:Ls/b;

    invoke-static {v4, v3}, Ls/E;->a(Ls/b;F)Ls/b;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v4, p0, Ls/E;->d:Laf/a;

    invoke-interface {v4}, Laf/a;->b()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ls/b;->setTime(J)V

    invoke-virtual {v3, v1, v2}, Ls/b;->a(J)V

    iget-object v1, p0, Ls/E;->i:Lz/l;

    invoke-virtual {v1}, Lz/l;->n()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Ls/b;->setAccuracy(F)V

    invoke-virtual {v3, v0}, Ls/b;->setSpeed(F)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ls/b;->d(Z)V

    invoke-super {p0, v3}, Ls/f;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_8
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 5

    instance-of v0, p1, Ls/b;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    check-cast p1, Ls/b;

    invoke-virtual {p1}, Ls/b;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ls/b;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lz/n;->a()Lz/l;

    move-result-object v0

    iput-object v0, p0, Ls/E;->i:Lz/l;

    invoke-direct {p0}, Ls/E;->d()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ls/E;->a(J)V

    iput-object p1, p0, Ls/E;->e:Ls/b;

    iget-object v0, p0, Ls/E;->d:Laf/a;

    invoke-interface {v0}, Laf/a;->d()J

    move-result-wide v0

    iput-wide v0, p0, Ls/E;->f:J

    iget-object v1, p0, Ls/E;->g:[F

    iget v2, p0, Ls/E;->h:I

    invoke-virtual {p1}, Ls/b;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {p1}, Ls/b;->getSpeed()F

    move-result v0

    :goto_38
    aput v0, v1, v2

    iget v0, p0, Ls/E;->h:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Ls/E;->h:I

    goto :goto_4

    :cond_43
    const/high16 v0, -0x4080

    goto :goto_38
.end method
