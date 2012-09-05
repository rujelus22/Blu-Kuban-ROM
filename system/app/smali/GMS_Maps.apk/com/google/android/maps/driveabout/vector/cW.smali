.class public Lcom/google/android/maps/driveabout/vector/cW;
.super Lcom/google/android/maps/driveabout/vector/l;


# instance fields
.field private final b:Lcom/google/android/maps/driveabout/vector/u;

.field private c:Lcom/google/android/maps/driveabout/vector/v;

.field private final d:I

.field private final e:J

.field private f:I

.field private final g:Laf/a;

.field private h:F


# direct methods
.method protected constructor <init>(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/v;IZF)V
    .registers 9

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Lcom/google/android/maps/driveabout/vector/u;)V

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cW;->f:I

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cW;->g:Laf/a;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cW;->b:Lcom/google/android/maps/driveabout/vector/u;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/cW;->c:Lcom/google/android/maps/driveabout/vector/v;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cW;->g:Laf/a;

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cW;->e:J

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cW;->b:Lcom/google/android/maps/driveabout/vector/u;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cW;->c:Lcom/google/android/maps/driveabout/vector/v;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/vector/v;->c()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/u;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cW;->d:I

    :goto_2c
    if-eqz p4, :cond_39

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cW;->h:F

    :goto_31
    return-void

    :cond_32
    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cW;->d:I

    goto :goto_2c

    :cond_39
    iput p5, p0, Lcom/google/android/maps/driveabout/vector/cW;->h:F

    goto :goto_31
.end method

.method private a(F)F
    .registers 7

    const/high16 v4, 0x3f80

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    add-float/2addr v0, v4

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    sub-float v0, v4, v0

    return v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cW;->f:I

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/t;)Lcom/google/android/maps/driveabout/vector/v;
    .registers 8

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cW;->g:Laf/a;

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/cW;->d:I

    if-nez v4, :cond_32

    move v1, v2

    :goto_e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cW;->c:Lcom/google/android/maps/driveabout/vector/v;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/vector/K;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cW;->c:Lcom/google/android/maps/driveabout/vector/v;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/K;

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_1f

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/K;->b()V

    :cond_1f
    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/vector/K;->a(Lcom/google/android/maps/driveabout/vector/t;)Lcom/google/android/maps/driveabout/vector/v;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/maps/driveabout/vector/cW;->c:Lcom/google/android/maps/driveabout/vector/v;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/K;->a()I

    move-result v0

    :goto_29
    cmpl-float v2, v1, v2

    if-ltz v2, :cond_3c

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cW;->f:I

    iget-object p0, p0, Lcom/google/android/maps/driveabout/vector/cW;->c:Lcom/google/android/maps/driveabout/vector/v;

    :goto_31
    return-object p0

    :cond_32
    iget-wide v4, p0, Lcom/google/android/maps/driveabout/vector/cW;->e:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cW;->d:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    move v1, v0

    goto :goto_e

    :cond_3c
    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/vector/cW;->a(F)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cW;->b:Lcom/google/android/maps/driveabout/vector/u;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cW;->c:Lcom/google/android/maps/driveabout/vector/v;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/v;->c()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cW;->b:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v3, v4}, Lcom/google/android/maps/driveabout/vector/u;->a(Lcom/google/android/maps/driveabout/vector/u;)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v3

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/cW;->h:F

    invoke-static {v2, v3, v1, v4}, Lcom/google/android/maps/driveabout/vector/u;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/u;FF)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cW;->a:Lcom/google/android/maps/driveabout/vector/u;

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cW;->f:I

    goto :goto_31

    :cond_5b
    move v0, v3

    goto :goto_29
.end method
