.class public Lcom/google/android/maps/driveabout/app/bT;
.super Ljava/lang/Object;


# static fields
.field private static volatile k:I


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/vector/bR;

.field private b:F

.field private c:J

.field private d:Ls/b;

.field private e:Lt/P;

.field private f:I

.field private g:F

.field private h:J

.field private i:D

.field private final j:Laf/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x7d0

    sput v0, Lcom/google/android/maps/driveabout/app/bT;->k:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/bR;Laf/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bT;->a:Lcom/google/android/maps/driveabout/vector/bR;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/bT;->j:Laf/a;

    return-void
.end method

.method private a(Lt/P;Lt/L;)I
    .registers 12

    invoke-virtual {p1}, Lt/P;->b()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    new-instance v5, Lt/L;

    invoke-direct {v5}, Lt/L;-><init>()V

    new-instance v6, Lt/L;

    invoke-direct {v6}, Lt/L;-><init>()V

    new-instance v7, Lt/L;

    invoke-direct {v7}, Lt/L;-><init>()V

    const v3, 0x7f7fffff

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v4, :cond_31

    invoke-virtual {p1, v1, v5}, Lt/P;->a(ILt/L;)V

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2, v6}, Lt/P;->a(ILt/L;)V

    invoke-static {v5, v6, p2, v7}, Lt/L;->b(Lt/L;Lt/L;Lt/L;Lt/L;)F

    move-result v2

    cmpg-float v8, v2, v3

    if-gez v8, :cond_32

    move v0, v1

    :goto_2d
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_1a

    :cond_31
    return v0

    :cond_32
    move v2, v3

    goto :goto_2d
.end method

.method public static a(I)V
    .registers 1

    sput p0, Lcom/google/android/maps/driveabout/app/bT;->k:I

    return-void
.end method

.method private static b(Ls/b;)Z
    .registers 3

    invoke-virtual {p0}, Ls/b;->f()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method a(Lt/P;IFIF)F
    .registers 13

    if-ne p2, p4, :cond_14

    invoke-virtual {p1, p2}, Lt/P;->a(I)Lt/L;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Lt/P;->a(I)Lt/L;

    move-result-object v1

    invoke-virtual {v0, v1}, Lt/L;->c(Lt/L;)F

    move-result v0

    sub-float v1, p5, p3

    mul-float/2addr v0, v1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    if-le p2, p4, :cond_53

    const/4 v0, 0x1

    :goto_18
    const/4 v1, 0x0

    invoke-virtual {p1, p4}, Lt/P;->a(I)Lt/L;

    move-result-object v3

    add-int/lit8 v2, p4, 0x1

    invoke-virtual {p1, v2}, Lt/P;->a(I)Lt/L;

    move-result-object v2

    invoke-virtual {v3, v2}, Lt/L;->c(Lt/L;)F

    move-result v3

    const/high16 v4, 0x3f80

    sub-float/2addr v4, p5

    mul-float/2addr v3, v4

    add-float/2addr v3, v1

    add-int/lit8 v1, p4, 0x1

    move v4, v3

    :goto_2f
    if-ge v1, p2, :cond_41

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Lt/P;->a(I)Lt/L;

    move-result-object v3

    invoke-virtual {v2, v3}, Lt/L;->c(Lt/L;)F

    move-result v2

    add-float/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    move v4, v2

    move-object v2, v3

    goto :goto_2f

    :cond_41
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Lt/P;->a(I)Lt/L;

    move-result-object v1

    invoke-virtual {v2, v1}, Lt/L;->c(Lt/L;)F

    move-result v1

    mul-float/2addr v1, p3

    add-float/2addr v1, v4

    if-eqz v0, :cond_51

    neg-float v0, v1

    goto :goto_13

    :cond_51
    move v0, v1

    goto :goto_13

    :cond_53
    move v5, p5

    move p5, p3

    move p3, v5

    move v6, p4

    move p4, p2

    move p2, v6

    goto :goto_18
.end method

.method public declared-synchronized a()I
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bT;->j:Laf/a;

    invoke-interface {v0}, Laf/a;->d()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bT;->b()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/app/bT;->c:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_18

    :cond_13
    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/bT;->h:J
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_24

    const/4 v0, 0x0

    :goto_16
    monitor-exit p0

    return v0

    :cond_18
    :try_start_18
    iget-wide v2, p0, Lcom/google/android/maps/driveabout/app/bT;->h:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/bT;->h:J

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/app/bT;->b(I)I
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_24

    move-result v0

    goto :goto_16

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ls/b;)V
    .registers 7

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bT;->d:Ls/b;

    if-eqz v1, :cond_12

    invoke-virtual {p1}, Ls/b;->o()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bT;->d:Ls/b;

    invoke-virtual {v2}, Ls/b;->o()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    :cond_12
    invoke-virtual {p1}, Ls/b;->o()J

    move-result-wide v1

    sget v3, Lcom/google/android/maps/driveabout/app/bT;->k:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/maps/driveabout/app/bT;->c:J

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/bT;->a(Ls/b;I)V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bT;->d:Ls/b;
    :try_end_25
    .catchall {:try_start_2 .. :try_end_25} :catchall_27

    monitor-exit p0

    return-void

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Ls/b;I)V
    .registers 22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/app/bT;->a:Lcom/google/android/maps/driveabout/vector/bR;

    invoke-virtual/range {p1 .. p1}, Ls/b;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/bR;->e(I)V

    invoke-virtual/range {p1 .. p1}, Ls/b;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lt/L;->a(D)D

    move-result-wide v12

    invoke-static {}, Lz/n;->a()Lz/l;

    move-result-object v2

    invoke-virtual {v2}, Lz/l;->f()I

    move-result v2

    int-to-double v4, v2

    invoke-virtual/range {p1 .. p1}, Ls/b;->j()Lu/B;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Ls/b;->k()Z

    move-result v8

    if-eqz v8, :cond_147

    if-eqz v7, :cond_147

    invoke-virtual {v7}, Lu/B;->d()D

    move-result-wide v8

    div-double/2addr v8, v12

    cmpg-double v4, v8, v4

    if-gez v4, :cond_147

    invoke-virtual {v7}, Lu/B;->a()Lu/x;

    move-result-object v2

    invoke-virtual {v2}, Lu/x;->n()Lt/P;

    move-result-object v3

    invoke-virtual {v7}, Lu/B;->e()I

    move-result v6

    invoke-virtual {v7}, Lu/B;->b()Lt/L;

    move-result-object v2

    move-object v11, v2

    :goto_45
    if-eqz v3, :cond_1a8

    invoke-static/range {p1 .. p1}, Lcom/google/android/maps/driveabout/app/bT;->b(Ls/b;)Z

    move-result v2

    if-eqz v2, :cond_1a8

    invoke-virtual {v3, v6}, Lt/P;->a(I)Lt/L;

    move-result-object v14

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v3, v2}, Lt/P;->a(I)Lt/L;

    move-result-object v15

    invoke-static {v14, v15}, Lt/N;->b(Lt/L;Lt/L;)F

    move-result v16

    const-wide/16 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Ls/b;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_1d1

    invoke-virtual/range {p1 .. p1}, Ls/b;->getSpeed()F

    move-result v2

    float-to-double v4, v2

    mul-double/2addr v4, v12

    const-wide v7, 0x408f400000000000L

    div-double/2addr v4, v7

    invoke-virtual/range {p1 .. p1}, Ls/b;->getBearing()F

    move-result v2

    sub-float v2, v16, v2

    float-to-double v7, v2

    const-wide v9, 0x3f91df46a2529d39L

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v4, v7

    move-wide v8, v4

    :goto_82
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/app/bT;->e:Lt/P;

    if-ne v3, v2, :cond_190

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/maps/driveabout/app/bT;->f:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/maps/driveabout/app/bT;->g:F

    invoke-static {v14, v15, v11}, Lt/L;->d(Lt/L;Lt/L;Lt/L;)F

    move-result v7

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/maps/driveabout/app/bT;->a(Lt/P;IFIF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    invoke-virtual/range {p1 .. p1}, Ls/b;->getAccuracy()F

    move-result v7

    float-to-double v0, v7

    move-wide/from16 v17, v0

    mul-double v12, v12, v17

    cmpg-double v4, v4, v12

    if-gez v4, :cond_18c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/maps/driveabout/app/bT;->f:I

    invoke-virtual {v3, v4}, Lt/P;->c(I)F

    move-result v4

    sub-float v4, v4, v16

    float-to-double v4, v4

    const-wide v12, 0x3f91df46a2529d39L

    mul-double/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v8

    if-lez p2, :cond_cb

    move/from16 v0, p2

    int-to-float v7, v0

    div-float/2addr v2, v7

    float-to-double v7, v2

    add-double/2addr v4, v7

    :cond_cb
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/maps/driveabout/app/bT;->i:D

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/google/android/maps/driveabout/app/bT;->i:D

    const-wide v12, 0x3f847ae147ae147bL

    cmpl-double v2, v7, v12

    if-ltz v2, :cond_1ce

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/driveabout/app/bT;->b:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/app/bT;->a:Lcom/google/android/maps/driveabout/vector/bR;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/maps/driveabout/app/bT;->b:F

    invoke-virtual {v2, v7}, Lcom/google/android/maps/driveabout/vector/bR;->a(F)V

    move v2, v10

    :goto_ee
    if-eqz v2, :cond_13a

    invoke-static {v14, v15, v11}, Lt/L;->d(Lt/L;Lt/L;Lt/L;)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/maps/driveabout/app/bT;->g:F

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/maps/driveabout/app/bT;->i:D

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/maps/driveabout/app/bT;->e:Lt/P;

    move-object/from16 v0, p0

    iput v6, v0, Lcom/google/android/maps/driveabout/app/bT;->f:I

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/maps/driveabout/app/bT;->i:D

    const-wide v4, 0x3f847ae147ae147bL

    cmpg-double v2, v2, v4

    if-gez v2, :cond_194

    invoke-virtual/range {p1 .. p1}, Ls/b;->getBearing()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/maps/driveabout/app/bT;->b:F

    :goto_119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/app/bT;->j:Laf/a;

    invoke-interface {v2}, Laf/a;->d()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/maps/driveabout/app/bT;->h:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/app/bT;->b()Z

    move-result v2

    if-eqz v2, :cond_19c

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/maps/driveabout/app/bT;->h:J

    invoke-virtual/range {p1 .. p1}, Ls/b;->o()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/bT;->b(I)I

    :cond_13a
    :goto_13a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/app/bT;->a:Lcom/google/android/maps/driveabout/vector/bR;

    invoke-virtual/range {p1 .. p1}, Ls/b;->getAccuracy()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/bR;->d(I)V

    return-void

    :cond_147
    invoke-virtual/range {p1 .. p1}, Ls/b;->e()Z

    move-result v4

    if-eqz v4, :cond_1d8

    invoke-virtual/range {p1 .. p1}, Ls/b;->h()Lt/X;

    move-result-object v2

    invoke-virtual {v2}, Lt/X;->b()Lt/P;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ls/b;->i()Lt/L;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/google/android/maps/driveabout/app/bT;->a(Lt/P;Lt/L;)I

    move-result v6

    invoke-virtual {v4, v6}, Lt/P;->c(I)F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Ls/b;->getBearing()F

    move-result v5

    sub-float v2, v5, v2

    const/high16 v5, -0x3ccc

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_172

    const/high16 v5, 0x43b4

    add-float/2addr v2, v5

    :cond_172
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v5, 0x42b4

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1d4

    invoke-virtual {v4}, Lt/P;->f()Lt/P;

    move-result-object v2

    invoke-virtual {v2}, Lt/P;->b()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    sub-int v6, v4, v6

    move-object v11, v3

    move-object v3, v2

    goto/16 :goto_45

    :cond_18c
    const/4 v2, 0x1

    move-wide v4, v8

    goto/16 :goto_ee

    :cond_190
    const/4 v2, 0x1

    move-wide v4, v8

    goto/16 :goto_ee

    :cond_194
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/driveabout/app/bT;->b:F

    goto/16 :goto_119

    :cond_19c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/app/bT;->a:Lcom/google/android/maps/driveabout/vector/bR;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/maps/driveabout/app/bT;->b:F

    invoke-virtual {v2, v11, v3}, Lcom/google/android/maps/driveabout/vector/bR;->a(Lt/L;F)V

    goto :goto_13a

    :cond_1a8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/maps/driveabout/app/bT;->e:Lt/P;

    invoke-virtual/range {p1 .. p1}, Ls/b;->getBearing()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/maps/driveabout/app/bT;->b:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/app/bT;->a:Lcom/google/android/maps/driveabout/vector/bR;

    invoke-virtual/range {p1 .. p1}, Ls/b;->getLatitude()D

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Ls/b;->getLongitude()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lt/L;->a(DD)Lt/L;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/maps/driveabout/app/bT;->b:F

    invoke-virtual {v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/bR;->a(Lt/L;F)V

    goto/16 :goto_13a

    :cond_1ce
    move v2, v10

    goto/16 :goto_ee

    :cond_1d1
    move-wide v8, v4

    goto/16 :goto_82

    :cond_1d4
    move-object v11, v3

    move-object v3, v4

    goto/16 :goto_45

    :cond_1d8
    move-object v11, v2

    goto/16 :goto_45
.end method

.method b(I)I
    .registers 14

    const/high16 v11, 0x3f80

    const/4 v3, 0x0

    if-ltz p1, :cond_9

    sget v0, Lcom/google/android/maps/driveabout/app/bT;->k:I

    if-le p1, v0, :cond_a

    :cond_9
    :goto_9
    return v3

    :cond_a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bT;->e:Lt/P;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/bT;->f:I

    invoke-virtual {v0, v1}, Lt/P;->a(I)Lt/L;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bT;->e:Lt/P;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/bT;->f:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lt/P;->a(I)Lt/L;

    move-result-object v0

    iget v2, p0, Lcom/google/android/maps/driveabout/app/bT;->g:F

    float-to-double v4, v2

    iget-wide v6, p0, Lcom/google/android/maps/driveabout/app/bT;->i:D

    int-to-double v8, p1

    mul-double/2addr v6, v8

    invoke-virtual {v1, v0}, Lt/L;->c(Lt/L;)F

    move-result v2

    float-to-double v8, v2

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v2, v4

    iput v2, p0, Lcom/google/android/maps/driveabout/app/bT;->g:F

    move-object v2, v1

    :goto_2e
    iget v1, p0, Lcom/google/android/maps/driveabout/app/bT;->g:F

    cmpl-float v1, v1, v11

    if-lez v1, :cond_9b

    iget v1, p0, Lcom/google/android/maps/driveabout/app/bT;->f:I

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/bT;->e:Lt/P;

    invoke-virtual {v4}, Lt/P;->b()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-ne v1, v4, :cond_4d

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bT;->a:Lcom/google/android/maps/driveabout/vector/bR;

    invoke-static {v2, v0}, Lt/N;->b(Lt/L;Lt/L;)F

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/driveabout/vector/bR;->a(Lt/L;F)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bT;->e:Lt/P;

    goto :goto_9

    :cond_4d
    iget v1, p0, Lcom/google/android/maps/driveabout/app/bT;->g:F

    sub-float/2addr v1, v11

    iput v1, p0, Lcom/google/android/maps/driveabout/app/bT;->g:F

    iget v1, p0, Lcom/google/android/maps/driveabout/app/bT;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/maps/driveabout/app/bT;->f:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bT;->e:Lt/P;

    iget v4, p0, Lcom/google/android/maps/driveabout/app/bT;->f:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Lt/P;->a(I)Lt/L;

    move-result-object v1

    invoke-static {v0, v1}, Lt/N;->b(Lt/L;Lt/L;)F

    move-result v4

    iget v5, p0, Lcom/google/android/maps/driveabout/app/bT;->b:F

    sub-float/2addr v5, v4

    float-to-double v5, v5

    const-wide v7, 0x3f91df46a2529d39L

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    iget v7, p0, Lcom/google/android/maps/driveabout/app/bT;->g:F

    float-to-double v7, v7

    invoke-virtual {v2, v0}, Lt/L;->c(Lt/L;)F

    move-result v2

    invoke-virtual {v0, v1}, Lt/L;->c(Lt/L;)F

    move-result v9

    div-float/2addr v2, v9

    float-to-double v9, v2

    mul-double/2addr v9, v5

    mul-double/2addr v7, v9

    double-to-float v2, v7

    iput v2, p0, Lcom/google/android/maps/driveabout/app/bT;->g:F

    iget-wide v7, p0, Lcom/google/android/maps/driveabout/app/bT;->i:D

    mul-double/2addr v5, v7

    iput-wide v5, p0, Lcom/google/android/maps/driveabout/app/bT;->i:D

    iget-wide v5, p0, Lcom/google/android/maps/driveabout/app/bT;->i:D

    const-wide v7, 0x3f847ae147ae147bL

    cmpl-double v2, v5, v7

    if-ltz v2, :cond_98

    iput v4, p0, Lcom/google/android/maps/driveabout/app/bT;->b:F

    :cond_98
    move-object v2, v0

    move-object v0, v1

    goto :goto_2e

    :cond_9b
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bT;->a:Lcom/google/android/maps/driveabout/vector/bR;

    iget v4, p0, Lcom/google/android/maps/driveabout/app/bT;->g:F

    invoke-virtual {v2, v0, v4}, Lt/L;->a(Lt/L;F)Lt/L;

    move-result-object v0

    iget v2, p0, Lcom/google/android/maps/driveabout/app/bT;->b:F

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/driveabout/vector/bR;->a(Lt/L;F)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bT;->b()Z

    move-result v0

    if-eqz v0, :cond_b2

    const/4 v0, 0x1

    :goto_af
    move v3, v0

    goto/16 :goto_9

    :cond_b2
    move v0, v3

    goto :goto_af
.end method

.method public b()Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bT;->e:Lt/P;

    if-eqz v0, :cond_11

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/app/bT;->i:D

    const-wide v2, 0x3f847ae147ae147bL

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public c()Lcom/google/android/maps/driveabout/vector/bS;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bT;->a:Lcom/google/android/maps/driveabout/vector/bR;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bR;->q()Lcom/google/android/maps/driveabout/vector/bS;

    move-result-object v0

    return-object v0
.end method
