.class Lcom/google/android/maps/driveabout/vector/db;
.super Lcom/google/android/maps/driveabout/vector/l;


# instance fields
.field private b:F

.field private volatile c:Z

.field private final d:Lcom/google/android/maps/driveabout/vector/w;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/w;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Lcom/google/android/maps/driveabout/vector/u;)V

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/db;->d:Lcom/google/android/maps/driveabout/vector/w;

    return-void
.end method

.method private a(Lt/L;)[F
    .registers 6

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/db;->b(Lt/L;)F

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p1}, Lt/L;->f()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    aput v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lt/L;->g()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    aput v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Lt/L;->h()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v0

    aput v0, v1, v2

    return-object v1
.end method

.method private b(F)D
    .registers 4

    const/high16 v0, 0x3f80

    const/high16 v1, -0x4080

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private b(Lt/L;)F
    .registers 5

    invoke-virtual {p1}, Lt/L;->f()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lt/L;->g()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lt/L;->h()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float v1, v2, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/db;->c:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/t;)Lcom/google/android/maps/driveabout/vector/v;
    .registers 18

    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/maps/driveabout/vector/db;->b:F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/maps/driveabout/vector/db;->b:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1c

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/db;->c:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/db;->a:Lcom/google/android/maps/driveabout/vector/u;

    monitor-exit p0

    move-object/from16 p0, v1

    :goto_1b
    return-object p0

    :cond_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_15e

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/t;->m()Lt/L;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/db;->a:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/u;->d()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/t;->d()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/t;->e()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f40

    mul-float/2addr v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Lcom/google/android/maps/driveabout/vector/t;->d(FF)Lt/L;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/db;->d:Lcom/google/android/maps/driveabout/vector/w;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/w;->b()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/maps/driveabout/vector/db;->a:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v6

    invoke-static {v6}, Lcom/google/android/maps/driveabout/vector/w;->b(F)F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    add-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_161

    const/4 v4, 0x0

    :cond_5d
    :goto_5d
    const/high16 v1, 0x42b4

    sub-float/2addr v1, v4

    float-to-double v1, v1

    const-wide v6, 0x3f91df46a2529d39L

    mul-double/2addr v6, v1

    invoke-static {v5}, Lt/L;->a(Lt/L;)Lt/L;

    move-result-object v1

    invoke-virtual {v1}, Lt/L;->f()I

    move-result v2

    invoke-virtual {v3}, Lt/L;->f()I

    move-result v8

    sub-int/2addr v2, v8

    invoke-virtual {v1}, Lt/L;->g()I

    move-result v8

    invoke-virtual {v3}, Lt/L;->g()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v1}, Lt/L;->h()I

    move-result v9

    invoke-virtual {v3}, Lt/L;->h()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v1, v2, v8, v9}, Lt/L;->a(III)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/db;->a(Lt/L;)[F

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/db;->a:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/u;->b()Lt/L;

    move-result-object v2

    invoke-virtual {v2}, Lt/L;->f()I

    move-result v8

    invoke-virtual {v3}, Lt/L;->f()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v2}, Lt/L;->g()I

    move-result v9

    invoke-virtual {v3}, Lt/L;->g()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v2}, Lt/L;->h()I

    move-result v10

    invoke-virtual {v3}, Lt/L;->h()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v2, v8, v9, v10}, Lt/L;->a(III)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/maps/driveabout/vector/db;->a(Lt/L;)[F

    move-result-object v2

    const/4 v8, 0x0

    aget v8, v1, v8

    const/4 v9, 0x0

    aget v9, v2, v9

    mul-float/2addr v8, v9

    const/4 v9, 0x1

    aget v9, v1, v9

    const/4 v10, 0x1

    aget v10, v2, v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    const/4 v9, 0x2

    aget v1, v1, v9

    const/4 v9, 0x2

    aget v2, v2, v9

    mul-float/2addr v1, v2

    add-float/2addr v1, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/db;->b(F)D

    move-result-wide v8

    invoke-virtual {v5, v3}, Lt/L;->c(Lt/L;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    div-double v1, v10, v1

    neg-double v1, v1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/maps/driveabout/vector/db;->a:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v12}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v12

    float-to-double v12, v12

    const-wide v14, 0x3f91df46a2529d39L

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v14, v1

    neg-double v14, v14

    double-to-int v14, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v1, v12

    neg-double v1, v1

    double-to-int v1, v1

    new-instance v2, Lt/L;

    invoke-virtual {v5}, Lt/L;->f()I

    move-result v12

    add-int/2addr v12, v14

    invoke-virtual {v5}, Lt/L;->g()I

    move-result v5

    add-int/2addr v1, v5

    invoke-direct {v2, v12, v1}, Lt/L;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/db;->a:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/u;->b()Lt/L;

    move-result-object v1

    invoke-virtual {v1, v3}, Lt/L;->c(Lt/L;)F

    move-result v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/db;->a:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/u;->a()F

    move-result v3

    invoke-static {v3}, Lcom/google/android/maps/driveabout/vector/u;->b(F)F

    move-result v3

    div-float v1, v3, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    div-double v8, v10, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    div-double v5, v10, v5

    add-double/2addr v5, v8

    double-to-float v3, v5

    mul-float/2addr v1, v3

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/u;->a(F)F

    move-result v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/maps/driveabout/vector/db;->d:Lcom/google/android/maps/driveabout/vector/w;

    new-instance v1, Lcom/google/android/maps/driveabout/vector/u;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/maps/driveabout/vector/db;->a:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/u;->e()F

    move-result v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/maps/driveabout/vector/u;-><init>(Lt/L;FFFF)V

    invoke-virtual {v7, v1}, Lcom/google/android/maps/driveabout/vector/w;->a(Lcom/google/android/maps/driveabout/vector/u;)Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/maps/driveabout/vector/db;->a:Lcom/google/android/maps/driveabout/vector/u;

    goto/16 :goto_1b

    :catchall_15e
    move-exception v1

    :try_start_15f
    monitor-exit p0
    :try_end_160
    .catchall {:try_start_15f .. :try_end_160} :catchall_15e

    throw v1

    :cond_161
    cmpl-float v2, v1, v4

    if-gtz v2, :cond_5d

    move v4, v1

    goto/16 :goto_5d
.end method

.method declared-synchronized a(F)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/db;->b:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/db;->b:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/db;->c:Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
