.class public Lcom/google/android/maps/driveabout/vector/cV;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/b;


# static fields
.field private static final b:F

.field private static final c:Lcom/google/android/maps/driveabout/vector/u;

.field private static d:F


# instance fields
.field protected final a:Landroid/content/Context;

.field private final e:Z

.field private final f:Lcom/google/android/maps/driveabout/vector/w;

.field private volatile g:Lcom/google/android/maps/driveabout/vector/u;

.field private volatile h:Lcom/google/android/maps/driveabout/vector/u;

.field private volatile i:F

.field private volatile j:Lcom/google/android/maps/driveabout/vector/v;

.field private volatile k:Z

.field private l:Z

.field private m:Lcom/google/android/maps/driveabout/vector/cz;

.field private n:Lcom/google/android/maps/driveabout/vector/cm;

.field private o:Lcom/google/android/maps/driveabout/vector/dl;

.field private p:Lcom/google/android/maps/driveabout/vector/bY;

.field private q:Z

.field private r:I

.field private s:F

.field private t:Lr/l;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide/high16 v0, 0x3ff0

    const-wide/high16 v2, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/vector/cV;->b:F

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cV;->c:Lcom/google/android/maps/driveabout/vector/u;

    const/high16 v0, 0x41a8

    sput v0, Lcom/google/android/maps/driveabout/vector/cV;->d:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/w;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/w;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->f:Lcom/google/android/maps/driveabout/vector/w;

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->r:I

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->s:F

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cV;->a:Landroid/content/Context;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/t;->b:Lcom/google/android/maps/driveabout/vector/u;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->g:Lcom/google/android/maps/driveabout/vector/u;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/t;->b:Lcom/google/android/maps/driveabout/vector/u;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->j:Lcom/google/android/maps/driveabout/vector/v;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->a:Landroid/content/Context;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->a:Landroid/content/Context;

    invoke-static {v0}, Ln/b;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    :goto_28
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->e:Z

    invoke-static {}, Lr/l;->a()Lr/l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->t:Lr/l;

    return-void

    :cond_31
    const/4 v0, 0x0

    goto :goto_28
.end method

.method private static a(F)F
    .registers 8

    const-wide v5, 0x4076800000000000L

    move v0, p0

    :goto_6
    float-to-double v1, v0

    cmpl-double v1, v1, v5

    if-ltz v1, :cond_f

    float-to-double v0, v0

    sub-double/2addr v0, v5

    double-to-float v0, v0

    goto :goto_6

    :cond_f
    :goto_f
    float-to-double v1, v0

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1a

    float-to-double v0, v0

    add-double/2addr v0, v5

    double-to-float v0, v0

    goto :goto_f

    :cond_1a
    return v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/w;Lt/L;F)Lcom/google/android/maps/driveabout/vector/u;
    .registers 10

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/t;->b()Lt/L;

    move-result-object v0

    invoke-virtual {v0}, Lt/L;->f()I

    move-result v1

    invoke-virtual {p2}, Lt/L;->f()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Lt/L;->g()I

    move-result v0

    invoke-virtual {p2}, Lt/L;->g()I

    move-result v2

    sub-int/2addr v0, v2

    float-to-double v2, p3

    const-wide v4, 0x400921fb54442d18L

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L

    div-double/2addr v2, v4

    double-to-float v2, v2

    neg-float v3, v2

    invoke-static {v3}, Landroid/util/FloatMath;->sin(F)F

    move-result v3

    neg-float v2, v2

    invoke-static {v2}, Landroid/util/FloatMath;->cos(F)F

    move-result v2

    int-to-float v4, v1

    mul-float/2addr v4, v2

    int-to-float v5, v0

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    int-to-float v1, v1

    mul-float/2addr v1, v3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    new-instance v1, Lt/L;

    invoke-virtual {p2}, Lt/L;->f()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {p2}, Lt/L;->g()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    float-to-int v0, v0

    invoke-direct {v1, v2, v0}, Lt/L;-><init>(II)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/t;->i()F

    move-result v0

    add-float/2addr v0, p3

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/cV;->a(F)F

    move-result v4

    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/t;->k()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/t;->j()F

    move-result v3

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/w;->a(Lcom/google/android/maps/driveabout/vector/u;)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/t;FF)Lcom/google/android/maps/driveabout/vector/u;
    .registers 10

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->r()F

    move-result v0

    mul-float/2addr v0, p2

    neg-float v1, p3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->r()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->j()F

    move-result v2

    const v3, 0x3c8efa35

    mul-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->cos(F)F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->n()Lt/L;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->o()Lt/L;

    move-result-object v3

    new-instance v4, Lt/L;

    invoke-virtual {v2}, Lt/L;->f()I

    move-result v5

    invoke-virtual {v2}, Lt/L;->g()I

    move-result v2

    invoke-direct {v4, v5, v2}, Lt/L;-><init>(II)V

    new-instance v5, Lt/L;

    invoke-virtual {v3}, Lt/L;->f()I

    move-result v2

    invoke-virtual {v3}, Lt/L;->g()I

    move-result v3

    invoke-direct {v5, v2, v3}, Lt/L;-><init>(II)V

    invoke-static {v4, v0, v4}, Lt/L;->b(Lt/L;FLt/L;)V

    invoke-static {v5, v1, v5}, Lt/L;->b(Lt/L;FLt/L;)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->b()Lt/L;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v2

    invoke-virtual {v0}, Lt/L;->h()I

    move-result v3

    invoke-virtual {v0, v4}, Lt/L;->e(Lt/L;)Lt/L;

    move-result-object v1

    invoke-static {v1, v5, v1}, Lt/L;->a(Lt/L;Lt/L;Lt/L;)V

    invoke-virtual {v1, v3}, Lt/L;->c(I)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    return-object v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/w;FFF)Lcom/google/android/maps/driveabout/vector/u;
    .registers 14

    const/high16 v1, 0x4000

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->d()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    sub-float v6, p4, v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->e()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    sub-float v7, p5, v0

    invoke-static {p0, p1, v6, v7}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/t;FF)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/maps/driveabout/vector/w;->a(Lcom/google/android/maps/driveabout/vector/u;)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v4

    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/u;->b()Lt/L;

    move-result-object v1

    sget v2, Lcom/google/android/maps/driveabout/vector/cV;->d:F

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v3

    add-float/2addr v3, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v3

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/t;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    neg-float v1, v6

    neg-float v2, v7

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/t;FF)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/v;Lcom/google/android/maps/driveabout/vector/u;)V
    .registers 6

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_2
    instance-of v0, p1, Lcom/google/android/maps/driveabout/vector/K;

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->k:Z

    :cond_9
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cV;->j:Lcom/google/android/maps/driveabout/vector/v;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->l:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->f:Lcom/google/android/maps/driveabout/vector/w;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->j:Lcom/google/android/maps/driveabout/vector/v;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/vector/v;->c()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/w;->a(Lcom/google/android/maps/driveabout/vector/u;)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->g:Lcom/google/android/maps/driveabout/vector/u;

    if-eqz p2, :cond_24

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->f:Lcom/google/android/maps/driveabout/vector/w;

    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/vector/w;->a(Lcom/google/android/maps/driveabout/vector/u;)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object p2

    :cond_24
    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/cV;->h:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_35

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->n:Lcom/google/android/maps/driveabout/vector/cm;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->n:Lcom/google/android/maps/driveabout/vector/cm;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cm;->a(ZZ)V

    :cond_34
    return-void

    :catchall_35
    move-exception v0

    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v0
.end method

.method public static b(F)V
    .registers 1

    sput p0, Lcom/google/android/maps/driveabout/vector/cV;->d:F

    return-void
.end method

.method public static d()F
    .registers 1

    sget v0, Lcom/google/android/maps/driveabout/vector/cV;->d:F

    return v0
.end method

.method static synthetic e(F)F
    .registers 2

    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/cV;->a(F)F

    move-result v0

    return v0
.end method

.method static synthetic i()F
    .registers 1

    sget v0, Lcom/google/android/maps/driveabout/vector/cV;->d:F

    return v0
.end method


# virtual methods
.method public declared-synchronized a(FFFFFZ)F
    .registers 15

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->j:Lcom/google/android/maps/driveabout/vector/v;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/vector/cZ;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->j:Lcom/google/android/maps/driveabout/vector/v;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cZ;

    const/4 v2, 0x0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/maps/driveabout/vector/cZ;->a(FFFFFFZ)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_19
    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->i:F
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_3f

    monitor-exit p0

    return v0

    :cond_1d
    :try_start_1d
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cZ;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->j:Lcom/google/android/maps/driveabout/vector/v;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/vector/v;->c()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cV;->f:Lcom/google/android/maps/driveabout/vector/w;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cZ;-><init>(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/w;)V

    const/4 v2, 0x0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/maps/driveabout/vector/cZ;->a(FFFFFFZ)[F

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cV;->c:Lcom/google/android/maps/driveabout/vector/u;

    invoke-direct {p0, v0, v2}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/v;Lcom/google/android/maps/driveabout/vector/u;)V
    :try_end_3d
    .catchall {:try_start_1d .. :try_end_3d} :catchall_3f

    move v0, v1

    goto :goto_19

    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(FFFI)F
    .registers 12

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->g:Lcom/google/android/maps/driveabout/vector/u;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cY;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cV;->f:Lcom/google/android/maps/driveabout/vector/w;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/cY;-><init>(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/w;FFFI)V

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cV;->c:Lcom/google/android/maps/driveabout/vector/u;

    invoke-direct {p0, v0, v2}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/v;Lcom/google/android/maps/driveabout/vector/u;)V

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v0

    add-float/2addr v0, p1

    sget v1, Lcom/google/android/maps/driveabout/vector/cV;->d:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public a(FI)F
    .registers 10

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cV;->g:Lcom/google/android/maps/driveabout/vector/u;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/cV;->f:Lcom/google/android/maps/driveabout/vector/w;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/u;->b()Lt/L;

    move-result-object v1

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v2

    add-float/2addr v2, p1

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v3

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v4

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/u;->f()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    invoke-virtual {v6, v0}, Lcom/google/android/maps/driveabout/vector/w;->a(Lcom/google/android/maps/driveabout/vector/u;)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/v;I)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v0

    return v0
.end method

.method public a(Lt/L;)F
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->f:Lcom/google/android/maps/driveabout/vector/w;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/w;->a()Lcom/google/android/maps/driveabout/vector/x;

    move-result-object v0

    if-nez v0, :cond_b

    sget v0, Lcom/google/android/maps/driveabout/vector/cV;->d:F

    :goto_a
    return v0

    :cond_b
    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/vector/x;->a(Lt/L;)F

    move-result v0

    goto :goto_a
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/t;)I
    .registers 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->j:Lcom/google/android/maps/driveabout/vector/v;

    instance-of v1, v1, Lcom/google/android/maps/driveabout/vector/K;

    if-eqz v1, :cond_65

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->j:Lcom/google/android/maps/driveabout/vector/v;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/K;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/K;->a()I

    move-result v1

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/vector/K;->a(Lcom/google/android/maps/driveabout/vector/t;)Lcom/google/android/maps/driveabout/vector/v;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/cV;->j:Lcom/google/android/maps/driveabout/vector/v;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cV;->f:Lcom/google/android/maps/driveabout/vector/w;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cV;->j:Lcom/google/android/maps/driveabout/vector/v;

    invoke-interface {v3}, Lcom/google/android/maps/driveabout/vector/v;->c()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/w;->a(Lcom/google/android/maps/driveabout/vector/u;)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/cV;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/K;->a()I

    move-result v0

    or-int/2addr v0, v1

    :goto_2c
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/vector/t;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->l:Z

    if-eqz v1, :cond_56

    if-nez v0, :cond_56

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->p:Lcom/google/android/maps/driveabout/vector/bY;

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->m:Lcom/google/android/maps/driveabout/vector/cz;

    if-nez v1, :cond_46

    new-instance v1, Lcom/google/android/maps/driveabout/vector/dc;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/vector/dc;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->m:Lcom/google/android/maps/driveabout/vector/cz;

    :cond_46
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->m:Lcom/google/android/maps/driveabout/vector/cz;

    invoke-interface {v1, p1}, Lcom/google/android/maps/driveabout/vector/cz;->a(Lcom/google/android/maps/driveabout/vector/t;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cV;->p:Lcom/google/android/maps/driveabout/vector/bY;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cV;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-interface {v2, v3, v1}, Lcom/google/android/maps/driveabout/vector/bY;->a(Lcom/google/android/maps/driveabout/vector/u;Ljava/util/List;)V

    :cond_53
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->l:Z

    :cond_56
    monitor-exit p0
    :try_end_57
    .catchall {:try_start_2 .. :try_end_57} :catchall_82

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_64

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->o:Lcom/google/android/maps/driveabout/vector/dl;

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->o:Lcom/google/android/maps/driveabout/vector/dl;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/dl;->a(Lcom/google/android/maps/driveabout/vector/t;)V

    :cond_64
    return v0

    :cond_65
    :try_start_65
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->f:Lcom/google/android/maps/driveabout/vector/w;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cV;->j:Lcom/google/android/maps/driveabout/vector/v;

    invoke-interface {v2}, Lcom/google/android/maps/driveabout/vector/v;->c()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/w;->a(Lcom/google/android/maps/driveabout/vector/u;)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->j:Lcom/google/android/maps/driveabout/vector/v;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->j:Lcom/google/android/maps/driveabout/vector/v;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/vector/v;->c()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->g:Lcom/google/android/maps/driveabout/vector/u;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->k:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2c

    :catchall_82
    move-exception v0

    monitor-exit p0
    :try_end_84
    .catchall {:try_start_65 .. :try_end_84} :catchall_82

    throw v0
.end method

.method public declared-synchronized a(FF)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->j:Lcom/google/android/maps/driveabout/vector/v;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/vector/da;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->j:Lcom/google/android/maps/driveabout/vector/v;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/da;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/da;->a(FF)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_24

    :goto_e
    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    new-instance v0, Lcom/google/android/maps/driveabout/vector/da;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->j:Lcom/google/android/maps/driveabout/vector/v;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/vector/v;->c()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/da;-><init>(Lcom/google/android/maps/driveabout/vector/u;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/da;->a(FF)V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cV;->c:Lcom/google/android/maps/driveabout/vector/u;

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/v;Lcom/google/android/maps/driveabout/vector/u;)V
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_24

    goto :goto_e

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/bY;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cV;->p:Lcom/google/android/maps/driveabout/vector/bY;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cm;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cV;->n:Lcom/google/android/maps/driveabout/vector/cm;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->q:Z

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/dl;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cV;->o:Lcom/google/android/maps/driveabout/vector/dl;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/v;I)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/v;IZZ)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/v;IZZ)V
    .registers 22

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/maps/driveabout/vector/cV;->q:Z

    if-nez v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/cV;->j:Lcom/google/android/maps/driveabout/vector/v;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/maps/driveabout/vector/cV;->q:Z

    if-eqz v2, :cond_1b

    const/16 p2, 0x0

    :cond_1b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/maps/driveabout/vector/cV;->q:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/cV;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/v;->c()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/u;->a(Lcom/google/android/maps/driveabout/vector/u;)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/maps/driveabout/vector/cV;->i:F

    invoke-static {}, Lz/n;->a()Lz/l;

    move-result-object v2

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    if-eqz p2, :cond_56

    invoke-virtual {v2}, Lz/l;->y()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-virtual {v2}, Lz/l;->z()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v4, v2

    if-lez v2, :cond_6b

    :cond_56
    sget-object v2, Lcom/google/android/maps/driveabout/vector/cV;->c:Lcom/google/android/maps/driveabout/vector/u;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/v;Lcom/google/android/maps/driveabout/vector/u;)V

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/google/android/maps/driveabout/vector/K;

    if-eqz v2, :cond_12

    check-cast p1, Lcom/google/android/maps/driveabout/vector/K;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/K;->b()V

    goto :goto_12

    :cond_6b
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v2

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v5

    add-float/2addr v2, v5

    const/high16 v5, 0x3f00

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/16 v5, 0x1e

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v5, 0x4000

    shr-int v2, v5, v2

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/u;->b()Lt/L;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/u;->b()Lt/L;

    move-result-object v6

    invoke-virtual {v5, v6}, Lt/L;->c(Lt/L;)F

    move-result v7

    int-to-float v5, v2

    div-float v5, v7, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/maps/driveabout/vector/cV;->r:I

    int-to-float v6, v6

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_da

    const/4 v6, 0x1

    if-eqz p3, :cond_14a

    const/4 v2, 0x0

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_14a

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v2

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v4

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v4, 0x4100

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v4, 0x4100

    div-float/2addr v2, v4

    const/high16 v4, 0x3f40

    mul-float/2addr v2, v4

    const/high16 v4, 0x3fc0

    add-float/2addr v2, v4

    const/high16 v4, 0x442f

    mul-float/2addr v2, v4

    float-to-int v0, v2

    move/from16 p2, v0

    move/from16 v5, p2

    :goto_c9
    const/4 v7, 0x0

    new-instance v2, Lcom/google/android/maps/driveabout/vector/cW;

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/maps/driveabout/vector/cW;-><init>(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/v;IZF)V

    sget-object v3, Lcom/google/android/maps/driveabout/vector/cV;->c:Lcom/google/android/maps/driveabout/vector/u;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/v;Lcom/google/android/maps/driveabout/vector/u;)V

    goto/16 :goto_12

    :cond_da
    if-eqz p4, :cond_134

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/maps/driveabout/vector/cV;->r:I

    int-to-float v4, v4

    sub-float v4, v5, v4

    const/high16 v5, 0x4e80

    int-to-float v2, v2

    div-float v2, v5, v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/maps/driveabout/vector/cV;->r:I

    int-to-float v5, v5

    sub-float/2addr v2, v5

    div-float v2, v4, v2

    const v4, 0x40833333

    mul-float/2addr v2, v4

    const v4, 0x3fb33333

    add-float/2addr v2, v4

    const/high16 v4, 0x442f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    const/16 v4, 0x9c4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/maps/driveabout/vector/cV;->s:F

    mul-float/2addr v2, v4

    float-to-int v5, v2

    const-wide/high16 v9, 0x4000

    const-wide v11, 0x40031eb851eb851fL

    float-to-double v13, v7

    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    sget v2, Lcom/google/android/maps/driveabout/vector/cV;->b:F

    float-to-double v15, v2

    mul-double/2addr v13, v15

    mul-double/2addr v11, v13

    const-wide v13, 0x404d5ae147ae147bL

    sub-double/2addr v11, v13

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v7, v9

    new-instance v2, Lcom/google/android/maps/driveabout/vector/cW;

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/maps/driveabout/vector/cW;-><init>(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/v;IZF)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/v;Lcom/google/android/maps/driveabout/vector/u;)V

    goto/16 :goto_12

    :cond_134
    sget-object v2, Lcom/google/android/maps/driveabout/vector/cV;->c:Lcom/google/android/maps/driveabout/vector/u;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/v;Lcom/google/android/maps/driveabout/vector/u;)V

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/google/android/maps/driveabout/vector/K;

    if-eqz v2, :cond_12

    check-cast p1, Lcom/google/android/maps/driveabout/vector/K;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/K;->b()V

    goto/16 :goto_12

    :cond_14a
    move/from16 v5, p2

    goto/16 :goto_c9
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/x;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->f:Lcom/google/android/maps/driveabout/vector/w;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/w;->a(Lcom/google/android/maps/driveabout/vector/x;)V

    return-void
.end method

.method public a(Lt/L;I)V
    .registers 9

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->g:Lcom/google/android/maps/driveabout/vector/u;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v4

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/v;I)V

    return-void
.end method

.method public a(Lt/V;IIFI)V
    .registers 12

    const/high16 v4, 0x4380

    const/4 v3, 0x0

    if-eqz p2, :cond_7

    if-nez p3, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-virtual {p1}, Lt/V;->f()Lt/L;

    move-result-object v1

    invoke-virtual {p1}, Lt/V;->g()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    mul-float/2addr v0, p4

    int-to-float v2, p2

    div-float/2addr v0, v2

    invoke-virtual {p1}, Lt/V;->h()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    mul-float/2addr v2, p4

    int-to-float v4, p3

    div-float/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v2, 0x41f0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    double-to-float v0, v4

    sget v4, Lcom/google/android/maps/driveabout/vector/cV;->b:F

    mul-float/2addr v0, v4

    sub-float/2addr v2, v0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    invoke-virtual {p0, v0, p5}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/v;I)V

    goto :goto_7
.end method

.method public a(Lt/y;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->t:Lr/l;

    invoke-virtual {v0, p1}, Lr/l;->a(Lt/y;)V

    return-void
.end method

.method public declared-synchronized b(FFFFFZ)F
    .registers 15

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->j:Lcom/google/android/maps/driveabout/vector/v;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/vector/cZ;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->j:Lcom/google/android/maps/driveabout/vector/v;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cZ;

    const/4 v1, 0x0

    move v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/maps/driveabout/vector/cZ;->a(FFFFFFZ)[F

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_38

    :goto_19
    monitor-exit p0

    return v0

    :cond_1b
    :try_start_1b
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cZ;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->g:Lcom/google/android/maps/driveabout/vector/u;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cV;->f:Lcom/google/android/maps/driveabout/vector/w;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cZ;-><init>(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/w;)V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cV;->c:Lcom/google/android/maps/driveabout/vector/u;

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/v;Lcom/google/android/maps/driveabout/vector/u;)V

    const/4 v1, 0x0

    move v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/maps/driveabout/vector/cZ;->a(FFFFFFZ)[F

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1
    :try_end_37
    .catchall {:try_start_1b .. :try_end_37} :catchall_38

    goto :goto_19

    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(FF)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->j:Lcom/google/android/maps/driveabout/vector/v;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/vector/cX;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->j:Lcom/google/android/maps/driveabout/vector/v;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cX;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/cX;->a(FF)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_24

    :goto_e
    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cX;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->j:Lcom/google/android/maps/driveabout/vector/v;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/vector/v;->c()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cX;-><init>(Lcom/google/android/maps/driveabout/vector/u;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/cX;->a(FF)V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cV;->c:Lcom/google/android/maps/driveabout/vector/u;

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/v;Lcom/google/android/maps/driveabout/vector/u;)V
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_24

    goto :goto_e

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(FI)V
    .registers 10

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->e:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->j:Lcom/google/android/maps/driveabout/vector/v;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/vector/db;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->j:Lcom/google/android/maps/driveabout/vector/v;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/db;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/db;->a(F)V

    :goto_11
    return-void

    :cond_12
    new-instance v0, Lcom/google/android/maps/driveabout/vector/db;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cV;->g:Lcom/google/android/maps/driveabout/vector/u;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cV;->f:Lcom/google/android/maps/driveabout/vector/w;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/db;-><init>(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/w;)V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cV;->c:Lcom/google/android/maps/driveabout/vector/u;

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/v;Lcom/google/android/maps/driveabout/vector/u;)V

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/db;->a(F)V

    goto :goto_11

    :cond_24
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cV;->g:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v0

    add-float v3, v0, p1

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/cV;->f:Lcom/google/android/maps/driveabout/vector/w;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/u;->b()Lt/L;

    move-result-object v1

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v2

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v4

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/u;->f()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    invoke-virtual {v6, v0}, Lcom/google/android/maps/driveabout/vector/w;->a(Lcom/google/android/maps/driveabout/vector/u;)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/v;I)V

    goto :goto_11
.end method

.method public c()Lcom/google/android/maps/driveabout/vector/u;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->h:Lcom/google/android/maps/driveabout/vector/u;

    return-object v0
.end method

.method public c(F)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->f:Lcom/google/android/maps/driveabout/vector/w;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/w;->a(F)V

    return-void
.end method

.method public d(F)V
    .registers 2

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/cV;->s:F

    return-void
.end method

.method public e()F
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->f:Lcom/google/android/maps/driveabout/vector/w;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/w;->a()Lcom/google/android/maps/driveabout/vector/x;

    move-result-object v0

    if-nez v0, :cond_b

    const/high16 v0, 0x4000

    :goto_a
    return v0

    :cond_b
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/x;->a()F

    move-result v0

    goto :goto_a
.end method

.method public f()Lcom/google/android/maps/driveabout/vector/u;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->g:Lcom/google/android/maps/driveabout/vector/u;

    return-object v0
.end method

.method public g()F
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->i:F

    return v0
.end method

.method public h()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cV;->k:Z

    return v0
.end method
