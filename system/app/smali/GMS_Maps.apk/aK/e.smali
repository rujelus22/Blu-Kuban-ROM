.class public LaK/e;
.super LaJ/u;


# instance fields
.field private c:Lcom/google/android/maps/driveabout/vector/cV;

.field private d:LaK/a;

.field private final e:Lcom/google/android/maps/driveabout/vector/t;

.field private final f:[F

.field private final g:Lt/L;

.field private final h:Lt/L;

.field private final i:Lcom/google/googlenav/android/ac;

.field private j:F

.field private k:LaK/i;

.field private final l:Lcom/google/android/maps/driveabout/vector/bY;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/cV;LaK/a;LaJ/H;Lcom/google/googlenav/android/ac;)V
    .registers 10

    const/high16 v4, 0x3f80

    invoke-direct {p0}, LaJ/u;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, LaK/e;->f:[F

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, LaK/e;->g:Lt/L;

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, LaK/e;->h:Lt/L;

    iput v4, p0, LaK/e;->j:F

    new-instance v0, LaK/f;

    invoke-direct {v0, p0}, LaK/f;-><init>(LaK/e;)V

    iput-object v0, p0, LaK/e;->l:Lcom/google/android/maps/driveabout/vector/bY;

    iput-object p1, p0, LaK/e;->c:Lcom/google/android/maps/driveabout/vector/cV;

    iput-object p2, p0, LaK/e;->d:LaK/a;

    iput-object p4, p0, LaK/e;->i:Lcom/google/googlenav/android/ac;

    invoke-static {p3, v4}, LaK/e;->a(LaJ/H;F)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {p2}, LaK/a;->r()I

    move-result v2

    invoke-virtual {p2}, LaK/a;->q()I

    move-result v3

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/t;-><init>(Lcom/google/android/maps/driveabout/vector/u;IIF)V

    iput-object v1, p0, LaK/e;->e:Lcom/google/android/maps/driveabout/vector/t;

    iget-object v1, p0, LaK/e;->l:Lcom/google/android/maps/driveabout/vector/bY;

    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/bY;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/v;I)V

    invoke-virtual {p2}, LaK/a;->r()I

    move-result v0

    invoke-virtual {p2}, LaK/a;->q()I

    move-result v1

    invoke-virtual {p0, v0, v1}, LaK/e;->c(II)V

    return-void
.end method

.method public static a(LaJ/Y;F)F
    .registers 4

    float-to-double v0, p1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/cn;->a(D)F

    move-result v0

    invoke-virtual {p0}, LaJ/Y;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    sub-float v0, v1, v0

    return v0
.end method

.method private declared-synchronized a(IILcom/google/android/maps/driveabout/vector/u;)LaJ/B;
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaK/e;->e:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v0, p3}, Lcom/google/android/maps/driveabout/vector/t;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, LaK/e;->e:Lcom/google/android/maps/driveabout/vector/t;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/t;->d(FF)Lt/L;

    move-result-object v0

    invoke-static {v0}, Lz/f;->b(Lt/L;)LaJ/B;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_14

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/google/android/maps/driveabout/vector/u;)LaJ/B;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaK/e;->e:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/t;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, LaK/e;->e:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/t;->b()Lt/L;

    move-result-object v0

    invoke-static {v0}, Lz/f;->b(Lt/L;)LaJ/B;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(LaK/e;)LaK/a;
    .registers 2

    iget-object v0, p0, LaK/e;->d:LaK/a;

    return-object v0
.end method

.method static synthetic a(LaK/e;LaK/i;)LaK/i;
    .registers 2

    iput-object p1, p0, LaK/e;->k:LaK/i;

    return-object p1
.end method

.method static a(LaJ/H;F)Lcom/google/android/maps/driveabout/vector/u;
    .registers 8

    const/4 v3, 0x0

    invoke-virtual {p0}, LaJ/H;->a()LaJ/B;

    move-result-object v1

    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    invoke-static {v1}, Lz/f;->a(LaJ/B;)Lt/L;

    move-result-object v1

    invoke-virtual {p0}, LaJ/H;->b()LaJ/Y;

    move-result-object v2

    invoke-static {v2, p1}, LaK/e;->a(LaJ/Y;F)F

    move-result v2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    return-object v0
.end method

.method private declared-synchronized a(LaJ/B;LaJ/Y;Z)V
    .registers 13

    const/4 v7, 0x0

    const/4 v6, 0x1

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, LaK/e;->c:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v0

    if-eqz p2, :cond_b8

    iget v1, p0, LaK/e;->j:F

    invoke-static {p2, v1}, LaK/e;->a(LaJ/Y;F)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-eq v1, v3, :cond_b8

    :goto_1f
    iget-object v0, p0, LaK/e;->e:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/t;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    iget v0, p0, LaK/e;->a:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, LaK/e;->b:I

    div-int/lit8 v1, v1, 0x2

    iget-object v3, p0, LaK/e;->g:Lt/L;

    invoke-static {p1, v3}, Lz/f;->a(LaJ/B;Lt/L;)V

    iget-object v3, p0, LaK/e;->e:Lcom/google/android/maps/driveabout/vector/t;

    iget-object v5, p0, LaK/e;->g:Lt/L;

    invoke-virtual {v3, v5}, Lcom/google/android/maps/driveabout/vector/t;->b(Lt/L;)[I

    move-result-object v3

    const/4 v5, 0x0

    aget v5, v3, v5

    sub-int v0, v5, v0

    const/4 v5, 0x1

    aget v3, v3, v5

    sub-int v1, v3, v1

    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, LaK/e;->b(I)I

    move-result v8

    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    iget-object v1, p0, LaK/e;->g:Lt/L;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v3

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    iget-object v1, p0, LaK/e;->c:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cV;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/u;->equals(Ljava/lang/Object;)Z
    :try_end_69
    .catchall {:try_start_3 .. :try_end_69} :catchall_ab

    move-result v1

    if-eqz v1, :cond_6e

    :cond_6c
    :goto_6c
    monitor-exit p0

    return-void

    :cond_6e
    :try_start_6e
    iget-object v1, p0, LaK/e;->g:Lt/L;

    iget-object v3, p0, LaK/e;->e:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/t;->b()Lt/L;

    move-result-object v3

    invoke-virtual {v1, v3}, Lt/L;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ae

    move v3, v6

    :goto_7d
    iget-object v1, p0, LaK/e;->e:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/t;->k()F

    move-result v1

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_b0

    move v1, v6

    :goto_88
    const/4 v2, 0x1

    invoke-virtual {p0, v3, v1, v2}, LaK/e;->a(ZZZ)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    if-eqz p3, :cond_b2

    iget-object v3, p0, LaK/e;->k:LaK/i;

    if-eqz v3, :cond_9c

    iget-object v3, p0, LaK/e;->k:LaK/i;

    invoke-virtual {v3, v0}, LaK/i;->a(Lcom/google/android/maps/driveabout/vector/u;)Z

    move-result v3

    if-nez v3, :cond_6c

    :cond_9c
    new-instance v3, LaK/i;

    invoke-direct {v3, v0}, LaK/i;-><init>(Lcom/google/android/maps/driveabout/vector/u;)V

    iput-object v3, p0, LaK/e;->k:LaK/i;

    iget-object v0, p0, LaK/e;->c:Lcom/google/android/maps/driveabout/vector/cV;

    iget-object v3, p0, LaK/e;->k:LaK/i;

    invoke-virtual {v0, v3, v8, v1, v2}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/v;IZZ)V
    :try_end_aa
    .catchall {:try_start_6e .. :try_end_aa} :catchall_ab

    goto :goto_6c

    :catchall_ab
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_ae
    move v3, v7

    goto :goto_7d

    :cond_b0
    move v1, v7

    goto :goto_88

    :cond_b2
    :try_start_b2
    iget-object v3, p0, LaK/e;->c:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v3, v0, v8, v1, v2}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/v;IZZ)V
    :try_end_b7
    .catchall {:try_start_b2 .. :try_end_b7} :catchall_ab

    goto :goto_6c

    :cond_b8
    move v2, v0

    goto/16 :goto_1f
.end method

.method private declared-synchronized a(Lt/L;Lcom/google/android/maps/driveabout/vector/u;Landroid/graphics/Point;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaK/e;->e:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/vector/t;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, LaK/e;->e:Lcom/google/android/maps/driveabout/vector/t;

    iget-object v1, p0, LaK/e;->f:[F

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/t;->a(Lt/L;[F)V

    iget-object v0, p0, LaK/e;->f:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, LaK/e;->f:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Point;->set(II)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/u;)LaJ/Y;
    .registers 4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v0

    sget-object v1, LaK/j;->a:LaK/j;

    invoke-virtual {p0, v0, v1}, LaK/e;->a(FLaK/j;)LaJ/Y;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(LaK/e;)V
    .registers 1

    invoke-virtual {p0}, LaK/e;->l()V

    return-void
.end method

.method static synthetic c(LaK/e;)Lcom/google/googlenav/android/ac;
    .registers 2

    iget-object v0, p0, LaK/e;->i:Lcom/google/googlenav/android/ac;

    return-object v0
.end method

.method private p()I
    .registers 6

    iget-object v0, p0, LaK/e;->e:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/t;->v()Lt/at;

    move-result-object v0

    invoke-virtual {v0}, Lt/at;->g()Lt/L;

    move-result-object v1

    invoke-virtual {v1}, Lt/L;->a()I

    move-result v1

    invoke-virtual {v0}, Lt/at;->f()Lt/L;

    move-result-object v2

    invoke-virtual {v2}, Lt/L;->a()I

    move-result v2

    invoke-virtual {v0}, Lt/at;->d()Lt/L;

    move-result-object v3

    invoke-virtual {v3}, Lt/L;->a()I

    move-result v3

    invoke-virtual {v0}, Lt/at;->e()Lt/L;

    move-result-object v0

    invoke-virtual {v0}, Lt/L;->a()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v4, v0

    return v0
.end method

.method private q()I
    .registers 4

    iget-object v0, p0, LaK/e;->e:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/t;->v()Lt/at;

    move-result-object v0

    invoke-virtual {v0}, Lt/at;->a()Lt/au;

    move-result-object v0

    invoke-virtual {v0}, Lt/au;->d()I

    move-result v0

    iget-object v1, p0, LaK/e;->g:Lt/L;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lt/L;->d(II)V

    iget-object v0, p0, LaK/e;->g:Lt/L;

    invoke-virtual {v0}, Lt/L;->c()I

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized a(ILaJ/B;)F
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaK/e;->e:Lcom/google/android/maps/driveabout/vector/t;

    iget-object v1, p0, LaK/e;->c:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cV;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/t;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, LaK/e;->g:Lt/L;

    invoke-static {p2, v0}, Lz/f;->a(LaJ/B;Lt/L;)V

    const/4 v0, 0x1

    iget-object v1, p0, LaK/e;->e:Lcom/google/android/maps/driveabout/vector/t;

    iget-object v2, p0, LaK/e;->g:Lt/L;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/t;->a(Lt/L;Z)F

    move-result v0

    int-to-float v1, p1

    iget-object v2, p0, LaK/e;->e:Lcom/google/android/maps/driveabout/vector/t;

    iget-object v3, p0, LaK/e;->g:Lt/L;

    invoke-virtual {v3}, Lt/L;->e()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v2, v3, v0}, Lcom/google/android/maps/driveabout/vector/t;->b(FF)F
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_2b

    move-result v0

    mul-float/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaK/e;->e:Lcom/google/android/maps/driveabout/vector/t;

    iget-object v1, p0, LaK/e;->c:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cV;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/t;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    invoke-direct {p0}, LaK/e;->p()I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    move-result v0

    monitor-exit p0

    return v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(LaJ/B;)I
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaK/e;->g:Lt/L;

    invoke-static {p1, v0}, Lz/f;->a(LaJ/B;Lt/L;)V

    iget-object v0, p0, LaK/e;->c:Lcom/google/android/maps/driveabout/vector/cV;

    iget-object v1, p0, LaK/e;->g:Lt/L;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lt/L;)F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_19

    move-result v0

    monitor-exit p0

    return v0

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(LaJ/H;)I
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaK/e;->e:Lcom/google/android/maps/driveabout/vector/t;

    iget v1, p0, LaK/e;->j:F

    invoke-static {p1, v1}, LaK/e;->a(LaJ/H;F)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/t;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    invoke-direct {p0}, LaK/e;->p()I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    move-result v0

    monitor-exit p0

    return v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(LaJ/B;LaJ/Y;II)LaJ/B;
    .registers 11

    iget-object v0, p0, LaK/e;->c:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v4

    iget-object v0, p0, LaK/e;->g:Lt/L;

    invoke-static {p1, v0}, Lz/f;->a(LaJ/B;Lt/L;)V

    const/4 v5, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    iget-object v1, p0, LaK/e;->g:Lt/L;

    iget v2, p0, LaK/e;->j:F

    invoke-static {p2, v2}, LaK/e;->a(LaJ/Y;F)F

    move-result v2

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v3

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    invoke-direct {p0, p3, p4, v0}, LaK/e;->a(IILcom/google/android/maps/driveabout/vector/u;)LaJ/B;

    move-result-object v0

    return-object v0
.end method

.method protected a(FLaK/j;)LaJ/Y;
    .registers 6

    iget v0, p0, LaK/e;->j:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/cn;->a(D)F

    move-result v0

    const/high16 v1, 0x3f80

    add-float/2addr v1, p1

    add-float/2addr v0, v1

    sget-object v1, LaK/h;->a:[I

    invoke-virtual {p2}, LaK/j;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_34

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_1a
    const/16 v1, 0x16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v0

    return-object v0

    :pswitch_25
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_1a

    :pswitch_2c
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_1a

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_25
        :pswitch_2c
    .end packed-switch
.end method

.method public declared-synchronized a(F)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaK/e;->e:Lcom/google/android/maps/driveabout/vector/t;

    iget v1, p0, LaK/e;->a:I

    iget v2, p0, LaK/e;->b:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/maps/driveabout/vector/t;->a(IIF)V

    iput p1, p0, LaK/e;->j:F
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, LaK/e;->d:LaK/a;

    invoke-virtual {v0, p1}, LaK/a;->b(I)V

    return-void
.end method

.method public declared-synchronized a(II)V
    .registers 6

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_4
    invoke-virtual {p0, v0, v1, v2}, LaK/e;->a(ZZZ)V

    iget-object v0, p0, LaK/e;->c:Lcom/google/android/maps/driveabout/vector/cV;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cV;->b(FF)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(LaJ/B;LaJ/Y;)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, p1, p2, v0}, LaK/e;->a(LaJ/B;LaJ/Y;Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(LaJ/B;LaJ/Y;LaJ/B;Landroid/graphics/Point;)V
    .registers 11

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaK/e;->c:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v4

    iget-object v0, p0, LaK/e;->g:Lt/L;

    invoke-static {p1, v0}, Lz/f;->a(LaJ/B;Lt/L;)V

    iget-object v0, p0, LaK/e;->h:Lt/L;

    invoke-static {p3, v0}, Lz/f;->a(LaJ/B;Lt/L;)V

    const/4 v5, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    iget-object v1, p0, LaK/e;->g:Lt/L;

    iget v2, p0, LaK/e;->j:F

    invoke-static {p2, v2}, LaK/e;->a(LaJ/Y;F)F

    move-result v2

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v3

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    iget-object v1, p0, LaK/e;->h:Lt/L;

    invoke-direct {p0, v1, v0, p4}, LaK/e;->a(Lt/L;Lcom/google/android/maps/driveabout/vector/u;Landroid/graphics/Point;)V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    monitor-exit p0

    return-void

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(LaJ/B;Landroid/graphics/Point;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaK/e;->g:Lt/L;

    invoke-static {p1, v0}, Lz/f;->a(LaJ/B;Lt/L;)V

    iget-object v0, p0, LaK/e;->g:Lt/L;

    iget-object v1, p0, LaK/e;->c:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cV;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, LaK/e;->a(Lt/L;Lcom/google/android/maps/driveabout/vector/u;Landroid/graphics/Point;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(LaJ/Y;II)V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget v0, p0, LaK/e;->j:F

    invoke-static {p1, v0}, LaK/e;->a(LaJ/Y;F)F

    move-result v0

    iget-object v1, p0, LaK/e;->c:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cV;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, LaK/e;->a(ZZZ)V

    iget-object v1, p0, LaK/e;->c:Lcom/google/android/maps/driveabout/vector/cV;

    int-to-float v2, p2

    int-to-float v3, p3

    const/16 v4, 0x14a

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/cV;->a(FFFI)F
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    monitor-exit p0

    return-void

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lt/y;)V
    .registers 3

    iget-object v0, p0, LaK/e;->c:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lt/y;)V

    return-void
.end method

.method public a([LaJ/B;IIILaJ/Y;)V
    .registers 7

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    aget-object v0, p1, p3

    invoke-virtual {p0, v0, p5}, LaK/e;->d(LaJ/B;LaJ/Y;)V

    goto :goto_2
.end method

.method public declared-synchronized b()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaK/e;->e:Lcom/google/android/maps/driveabout/vector/t;

    iget-object v1, p0, LaK/e;->c:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cV;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/t;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    invoke-direct {p0}, LaK/e;->q()I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    move-result v0

    monitor-exit p0

    return v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(LaJ/H;)I
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaK/e;->e:Lcom/google/android/maps/driveabout/vector/t;

    iget v1, p0, LaK/e;->j:F

    invoke-static {p1, v1}, LaK/e;->a(LaJ/H;F)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/t;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    invoke-direct {p0}, LaK/e;->q()I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    move-result v0

    monitor-exit p0

    return v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(F)V
    .registers 3

    iget-object v0, p0, LaK/e;->c:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cV;->c(F)V

    return-void
.end method

.method protected declared-synchronized b(LaJ/B;LaJ/Y;)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, p2, v0}, LaK/e;->a(LaJ/B;LaJ/Y;Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()LaJ/B;
    .registers 2

    iget-object v0, p0, LaK/e;->c:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    invoke-direct {p0, v0}, LaK/e;->a(Lcom/google/android/maps/driveabout/vector/u;)LaJ/B;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized c(II)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2}, LaJ/u;->c(II)V

    iget-object v0, p0, LaK/e;->e:Lcom/google/android/maps/driveabout/vector/t;

    iget v1, p0, LaK/e;->j:F

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/maps/driveabout/vector/t;->a(IIF)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized c(LaJ/B;LaJ/Y;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaK/e;->c:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v4

    iget-object v0, p0, LaK/e;->g:Lt/L;

    invoke-static {p1, v0}, Lz/f;->a(LaJ/B;Lt/L;)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/u;

    iget-object v1, p0, LaK/e;->g:Lt/L;

    iget v2, p0, LaK/e;->j:F

    invoke-static {p2, v2}, LaK/e;->a(LaJ/Y;F)F

    move-result v2

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v3

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    iget-object v1, p0, LaK/e;->c:Lcom/google/android/maps/driveabout/vector/cV;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/v;I)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    monitor-exit p0

    return-void

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()LaJ/Y;
    .registers 2

    iget-object v0, p0, LaK/e;->c:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    invoke-direct {p0, v0}, LaK/e;->b(Lcom/google/android/maps/driveabout/vector/u;)LaJ/Y;

    move-result-object v0

    return-object v0
.end method

.method public e()F
    .registers 2

    iget-object v0, p0, LaK/e;->c:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v0

    return v0
.end method

.method public f()LaJ/H;
    .registers 6

    iget-object v0, p0, LaK/e;->c:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    iget-object v1, p0, LaK/e;->d:LaK/a;

    invoke-virtual {v1}, LaK/a;->b()LaJ/H;

    move-result-object v1

    new-instance v2, LaJ/H;

    invoke-direct {p0, v0}, LaK/e;->a(Lcom/google/android/maps/driveabout/vector/u;)LaJ/B;

    move-result-object v3

    invoke-direct {p0, v0}, LaK/e;->b(Lcom/google/android/maps/driveabout/vector/u;)LaJ/Y;

    move-result-object v0

    invoke-virtual {v1}, LaJ/H;->c()I

    move-result v4

    invoke-virtual {v1}, LaJ/H;->g()Z

    move-result v1

    invoke-direct {v2, v3, v0, v4, v1}, LaJ/H;-><init>(LaJ/B;LaJ/Y;IZ)V

    return-object v2
.end method

.method public g()V
    .registers 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1}, LaK/e;->a(ZZZ)V

    return-void
.end method

.method public h()V
    .registers 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, LaK/e;->a(ZZZ)V

    return-void
.end method

.method public i()Z
    .registers 4

    iget-object v0, p0, LaK/e;->c:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v0

    sget-object v1, LaK/j;->b:LaK/j;

    invoke-virtual {p0, v0, v1}, LaK/e;->a(FLaK/j;)LaJ/Y;

    move-result-object v1

    invoke-virtual {v1}, LaJ/Y;->c()LaJ/Y;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-virtual {v1}, LaJ/Y;->a()I

    move-result v1

    invoke-virtual {p0}, LaK/e;->c()LaJ/B;

    move-result-object v2

    invoke-virtual {p0, v2}, LaK/e;->a(LaJ/B;)I

    move-result v2

    if-ge v1, v2, :cond_2c

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cV;->d()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2e

    :cond_2c
    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public j()Z
    .registers 3

    iget-object v0, p0, LaK/e;->c:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->f()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v0

    sget-object v1, LaK/j;->c:LaK/j;

    invoke-virtual {p0, v0, v1}, LaK/e;->a(FLaK/j;)LaJ/Y;

    move-result-object v1

    invoke-virtual {v1}, LaJ/Y;->d()LaJ/Y;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v1, p0, LaK/e;->c:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cV;->e()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public k()Z
    .registers 2

    iget-object v0, p0, LaK/e;->c:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->h()Z

    move-result v0

    return v0
.end method
