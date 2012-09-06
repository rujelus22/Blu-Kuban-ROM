.class Lx/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lx/z;

.field private final b:Lx/z;

.field private final c:Lx/z;

.field private final d:Lx/z;


# direct methods
.method public constructor <init>(Lx/r;)V
    .registers 3
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Lx/r;->b()Lx/z;

    move-result-object v0

    iput-object v0, p0, Lx/d;->a:Lx/z;

    .line 33
    invoke-virtual {p1}, Lx/r;->b()Lx/z;

    move-result-object v0

    iput-object v0, p0, Lx/d;->b:Lx/z;

    .line 34
    invoke-virtual {p1}, Lx/r;->b()Lx/z;

    move-result-object v0

    iput-object v0, p0, Lx/d;->c:Lx/z;

    .line 35
    invoke-virtual {p1}, Lx/r;->b()Lx/z;

    move-result-object v0

    iput-object v0, p0, Lx/d;->d:Lx/z;

    .line 36
    return-void
.end method

.method public constructor <init>(Lx/z;)V
    .registers 3
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Lx/z;->c()Lx/z;

    move-result-object v0

    iput-object v0, p0, Lx/d;->a:Lx/z;

    .line 40
    invoke-virtual {p1}, Lx/z;->c()Lx/z;

    move-result-object v0

    iput-object v0, p0, Lx/d;->b:Lx/z;

    .line 41
    invoke-virtual {p1}, Lx/z;->c()Lx/z;

    move-result-object v0

    iput-object v0, p0, Lx/d;->c:Lx/z;

    .line 42
    invoke-virtual {p1}, Lx/z;->c()Lx/z;

    move-result-object v0

    iput-object v0, p0, Lx/d;->d:Lx/z;

    .line 43
    return-void
.end method

.method private constructor <init>(Lx/z;Lx/z;Lx/z;Lx/z;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lx/d;->a:Lx/z;

    .line 48
    iput-object p2, p0, Lx/d;->b:Lx/z;

    .line 49
    iput-object p3, p0, Lx/d;->c:Lx/z;

    .line 50
    iput-object p4, p0, Lx/d;->d:Lx/z;

    .line 51
    return-void
.end method

.method private a(ID)D
    .registers 14
    .parameter
    .parameter

    .prologue
    .line 505
    iget-object v0, p0, Lx/d;->a:Lx/z;

    invoke-virtual {v0, p1}, Lx/z;->g(I)D

    move-result-wide v4

    .line 506
    iget-object v0, p0, Lx/d;->a:Lx/z;

    invoke-virtual {v0, p1}, Lx/z;->h(I)D

    move-result-wide v0

    .line 507
    cmpl-double v2, v4, p2

    if-nez v2, :cond_11

    .line 522
    :cond_10
    :goto_10
    return-wide v0

    .line 510
    :cond_11
    iget-object v2, p0, Lx/d;->b:Lx/z;

    invoke-virtual {v2, p1}, Lx/z;->g(I)D

    move-result-wide v6

    .line 511
    iget-object v2, p0, Lx/d;->b:Lx/z;

    invoke-virtual {v2, p1}, Lx/z;->h(I)D

    move-result-wide v2

    .line 512
    cmpl-double v8, v6, p2

    if-nez v8, :cond_23

    move-wide v0, v2

    .line 513
    goto :goto_10

    .line 516
    :cond_23
    sub-double/2addr v6, v4

    .line 517
    const-wide/16 v8, 0x0

    cmpl-double v8, v6, v8

    if-nez v8, :cond_30

    .line 519
    cmpl-double v4, v0, v2

    if-gtz v4, :cond_10

    move-wide v0, v2

    goto :goto_10

    .line 521
    :cond_30
    sub-double/2addr v2, v0

    .line 522
    sub-double v4, p2, v4

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    add-double/2addr v0, v2

    goto :goto_10
.end method

.method private a(IIIII)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 387
    iget-object v0, p0, Lx/d;->a:Lx/z;

    invoke-virtual {v0, p1, p2}, Lx/z;->e(II)V

    .line 388
    iget-object v0, p0, Lx/d;->b:Lx/z;

    invoke-virtual {v0, p1, p3}, Lx/z;->e(II)V

    .line 389
    iget-object v0, p0, Lx/d;->c:Lx/z;

    invoke-virtual {v0, p1, p4}, Lx/z;->e(II)V

    .line 390
    iget-object v0, p0, Lx/d;->d:Lx/z;

    invoke-virtual {v0, p1, p5}, Lx/z;->e(II)V

    .line 391
    return-void
.end method

.method private c(III)I
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 371
    if-gt p1, p2, :cond_3

    :goto_2
    return p1

    :cond_3
    sub-int/2addr p1, p3

    goto :goto_2
.end method

.method private c(I)V
    .registers 3
    .parameter

    .prologue
    .line 394
    iget-object v0, p0, Lx/d;->a:Lx/z;

    invoke-virtual {v0, p1}, Lx/z;->a(I)V

    .line 395
    iget-object v0, p0, Lx/d;->b:Lx/z;

    invoke-virtual {v0, p1}, Lx/z;->a(I)V

    .line 396
    iget-object v0, p0, Lx/d;->c:Lx/z;

    invoke-virtual {v0, p1}, Lx/z;->a(I)V

    .line 397
    iget-object v0, p0, Lx/d;->d:Lx/z;

    invoke-virtual {v0, p1}, Lx/z;->a(I)V

    .line 398
    return-void
.end method

.method private d(I)I
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 423
    iget-object v0, p0, Lx/d;->a:Lx/z;

    invoke-virtual {v0, p1}, Lx/z;->b(I)D

    move-result-wide v2

    .line 424
    iget-object v0, p0, Lx/d;->a:Lx/z;

    invoke-virtual {v0, p1}, Lx/z;->c(I)D

    move-result-wide v4

    move v0, v1

    .line 426
    :goto_e
    invoke-direct {p0, v0, v2, v3}, Lx/d;->a(ID)D

    move-result-wide v6

    cmpg-double v6, v6, v4

    if-gez v6, :cond_1f

    iget-object v6, p0, Lx/d;->a:Lx/z;

    iget v6, v6, Lx/z;->d:I

    if-ge v0, v6, :cond_1f

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 429
    :cond_1f
    if-lez v0, :cond_23

    add-int/lit8 v1, v0, -0x1

    :cond_23
    return v1
.end method

.method private d(III)I
    .registers 29
    .parameter
    .parameter
    .parameter

    .prologue
    .line 439
    move-object/from16 v0, p0

    iget-object v4, v0, Lx/d;->a:Lx/z;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lx/z;->b(I)D

    move-result-wide v21

    .line 440
    move-object/from16 v0, p0

    iget-object v4, v0, Lx/d;->a:Lx/z;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lx/z;->c(I)D

    move-result-wide v23

    .line 441
    const/4 v4, 0x0

    move/from16 v20, v4

    :goto_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lx/d;->a:Lx/z;

    iget v4, v4, Lx/z;->d:I

    move/from16 v0, v20

    if-ge v0, v4, :cond_8d

    .line 442
    move-object/from16 v0, p0

    move/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-direct {v0, v1, v2, v3}, Lx/d;->a(ID)D

    move-result-wide v4

    .line 443
    cmpl-double v6, v4, v23

    if-lez v6, :cond_30

    .line 464
    :cond_2f
    :goto_2f
    return v20

    .line 446
    :cond_30
    cmpl-double v4, v4, v23

    if-nez v4, :cond_88

    .line 447
    move-object/from16 v0, p0

    iget-object v4, v0, Lx/d;->b:Lx/z;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lx/z;->g(I)D

    move-result-wide v12

    .line 448
    move-object/from16 v0, p0

    iget-object v4, v0, Lx/d;->b:Lx/z;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lx/z;->h(I)D

    move-result-wide v14

    .line 449
    move-object/from16 v0, p0

    iget-object v4, v0, Lx/d;->a:Lx/z;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lx/z;->b(I)D

    move-result-wide v4

    .line 450
    move-object/from16 v0, p0

    iget-object v6, v0, Lx/d;->a:Lx/z;

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lx/z;->c(I)D

    move-result-wide v6

    .line 451
    move-object/from16 v0, p0

    iget-object v8, v0, Lx/d;->a:Lx/z;

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Lx/z;->b(I)D

    move-result-wide v8

    .line 452
    move-object/from16 v0, p0

    iget-object v10, v0, Lx/d;->a:Lx/z;

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Lx/z;->c(I)D

    move-result-wide v10

    .line 454
    invoke-static/range {v4 .. v15}, Lx/y;->a(DDDDDD)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_2f

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    .line 458
    invoke-static/range {v12 .. v19}, Lx/y;->a(DDDD)I

    move-result v4

    if-nez v4, :cond_88

    rem-int/lit8 v4, v20, 0x2

    if-eqz v4, :cond_2f

    .line 441
    :cond_88
    add-int/lit8 v4, v20, 0x1

    move/from16 v20, v4

    goto :goto_17

    .line 464
    :cond_8d
    move-object/from16 v0, p0

    iget-object v4, v0, Lx/d;->a:Lx/z;

    iget v0, v4, Lx/z;->d:I

    move/from16 v20, v0

    goto :goto_2f
.end method

.method private e(III)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 497
    invoke-direct {p0, p1, p2}, Lx/d;->g(II)I

    move-result v0

    invoke-direct {p0, v0, p3}, Lx/d;->h(II)I

    move-result v0

    return v0
.end method

.method private e(II)Z
    .registers 30
    .parameter
    .parameter

    .prologue
    .line 200
    if-ltz p1, :cond_122

    move-object/from16 v0, p0

    iget-object v1, v0, Lx/d;->a:Lx/z;

    iget v1, v1, Lx/z;->d:I

    move/from16 v0, p1

    if-ge v0, v1, :cond_122

    if-ltz p2, :cond_122

    move-object/from16 v0, p0

    iget-object v1, v0, Lx/d;->a:Lx/z;

    iget v1, v1, Lx/z;->d:I

    move/from16 v0, p2

    if-ge v0, v1, :cond_122

    .line 202
    move-object/from16 v0, p0

    iget-object v1, v0, Lx/d;->a:Lx/z;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lx/z;->g(I)D

    move-result-wide v1

    .line 203
    move-object/from16 v0, p0

    iget-object v3, v0, Lx/d;->a:Lx/z;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lx/z;->h(I)D

    move-result-wide v3

    .line 204
    move-object/from16 v0, p0

    iget-object v5, v0, Lx/d;->b:Lx/z;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lx/z;->g(I)D

    move-result-wide v5

    .line 205
    move-object/from16 v0, p0

    iget-object v7, v0, Lx/d;->b:Lx/z;

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Lx/z;->h(I)D

    move-result-wide v7

    .line 207
    move-object/from16 v0, p0

    iget-object v9, v0, Lx/d;->a:Lx/z;

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Lx/z;->g(I)D

    move-result-wide v9

    .line 208
    move-object/from16 v0, p0

    iget-object v11, v0, Lx/d;->a:Lx/z;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Lx/z;->h(I)D

    move-result-wide v11

    .line 209
    move-object/from16 v0, p0

    iget-object v13, v0, Lx/d;->b:Lx/z;

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Lx/z;->g(I)D

    move-result-wide v21

    .line 210
    move-object/from16 v0, p0

    iget-object v13, v0, Lx/d;->b:Lx/z;

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Lx/z;->h(I)D

    move-result-wide v23

    .line 212
    cmpl-double v13, v1, v21

    if-nez v13, :cond_70

    cmpl-double v13, v3, v23

    if-eqz v13, :cond_78

    :cond_70
    cmpl-double v13, v9, v5

    if-nez v13, :cond_7a

    cmpl-double v13, v11, v7

    if-nez v13, :cond_7a

    .line 213
    :cond_78
    const/4 v1, 0x0

    .line 240
    :goto_79
    return v1

    .line 215
    :cond_7a
    cmpl-double v13, v1, v9

    if-nez v13, :cond_82

    cmpl-double v13, v3, v11

    if-eqz v13, :cond_8a

    :cond_82
    cmpl-double v13, v5, v21

    if-nez v13, :cond_e4

    cmpl-double v13, v7, v23

    if-nez v13, :cond_e4

    .line 216
    :cond_8a
    cmpl-double v1, v1, v9

    if-nez v1, :cond_e2

    cmpl-double v1, v3, v11

    if-nez v1, :cond_e2

    cmpl-double v1, v5, v21

    if-nez v1, :cond_e2

    cmpl-double v1, v7, v23

    if-nez v1, :cond_e2

    .line 217
    move-object/from16 v0, p0

    iget-object v1, v0, Lx/d;->a:Lx/z;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lx/z;->j(I)I

    move-result v1

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lx/d;->a:Lx/z;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lx/z;->j(I)I

    move-result v2

    .line 219
    move-object/from16 v0, p0

    iget-object v3, v0, Lx/d;->b:Lx/z;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lx/z;->j(I)I

    move-result v3

    .line 220
    move-object/from16 v0, p0

    iget-object v4, v0, Lx/d;->b:Lx/z;

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lx/z;->j(I)I

    move-result v4

    .line 222
    move-object/from16 v0, p0

    iget-object v5, v0, Lx/d;->a:Lx/z;

    invoke-virtual {v5, v1}, Lx/z;->d(I)I

    move-result v1

    if-ne v1, v3, :cond_dc

    const/4 v1, 0x1

    :goto_cd
    move-object/from16 v0, p0

    iget-object v3, v0, Lx/d;->a:Lx/z;

    invoke-virtual {v3, v2}, Lx/z;->d(I)I

    move-result v2

    if-ne v2, v4, :cond_de

    const/4 v2, 0x1

    :goto_d8
    if-ne v1, v2, :cond_e0

    const/4 v1, 0x1

    goto :goto_79

    :cond_dc
    const/4 v1, 0x0

    goto :goto_cd

    :cond_de
    const/4 v2, 0x0

    goto :goto_d8

    :cond_e0
    const/4 v1, 0x0

    goto :goto_79

    .line 225
    :cond_e2
    const/4 v1, 0x0

    goto :goto_79

    .line 228
    :cond_e4
    invoke-static/range {v1 .. v12}, Lx/y;->a(DDDDDD)D

    move-result-wide v25

    move-wide v13, v1

    move-wide v15, v3

    move-wide/from16 v17, v5

    move-wide/from16 v19, v7

    .line 229
    invoke-static/range {v13 .. v24}, Lx/y;->a(DDDDDD)D

    move-result-wide v13

    .line 230
    mul-double v13, v13, v25

    const-wide/16 v15, 0x0

    cmpl-double v13, v13, v15

    if-lez v13, :cond_fd

    .line 231
    const/4 v1, 0x0

    goto/16 :goto_79

    :cond_fd
    move-wide/from16 v13, v21

    move-wide/from16 v15, v23

    move-wide/from16 v17, v1

    move-wide/from16 v19, v3

    .line 233
    invoke-static/range {v9 .. v20}, Lx/y;->a(DDDDDD)D

    move-result-wide v1

    move-wide/from16 v13, v21

    move-wide/from16 v15, v23

    move-wide/from16 v17, v5

    move-wide/from16 v19, v7

    .line 234
    invoke-static/range {v9 .. v20}, Lx/y;->a(DDDDDD)D

    move-result-wide v3

    .line 235
    mul-double/2addr v1, v3

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_11f

    .line 236
    const/4 v1, 0x0

    goto/16 :goto_79

    .line 238
    :cond_11f
    const/4 v1, 0x1

    goto/16 :goto_79

    .line 240
    :cond_122
    const/4 v1, 0x0

    goto/16 :goto_79
.end method

.method private f(II)I
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 401
    iget-object v0, p0, Lx/d;->c:Lx/z;

    invoke-virtual {v0, p1, p2}, Lx/z;->f(II)V

    .line 402
    iget-object v0, p0, Lx/d;->d:Lx/z;

    invoke-virtual {v0, p1}, Lx/z;->j(I)I

    move-result v0

    .line 403
    if-eq v0, v2, :cond_13

    .line 404
    iget-object v1, p0, Lx/d;->d:Lx/z;

    invoke-virtual {v1, p1, v2}, Lx/z;->f(II)V

    .line 406
    :cond_13
    return v0
.end method

.method private g(II)I
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 412
    iget-object v0, p0, Lx/d;->b:Lx/z;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lx/z;->h(II)I

    move-result v0

    .line 413
    :goto_8
    if-eq v0, v2, :cond_19

    invoke-direct {p0, v0, p1}, Lx/d;->i(II)Z

    move-result v1

    if-nez v1, :cond_19

    .line 414
    iget-object v1, p0, Lx/d;->b:Lx/z;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, p2, v0}, Lx/z;->h(II)I

    move-result v0

    goto :goto_8

    .line 416
    :cond_19
    if-ne v0, v2, :cond_23

    .line 417
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Could not find egde in EdgeList."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_23
    return v0
.end method

.method private h(II)I
    .registers 25
    .parameter
    .parameter

    .prologue
    .line 476
    move-object/from16 v0, p0

    iget-object v1, v0, Lx/d;->c:Lx/z;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lx/z;->j(I)I

    move-result v21

    .line 477
    move-object/from16 v0, p0

    iget-object v1, v0, Lx/d;->a:Lx/z;

    move/from16 v0, v21

    invoke-virtual {v1, v0}, Lx/z;->b(I)D

    move-result-wide v9

    .line 478
    move-object/from16 v0, p0

    iget-object v1, v0, Lx/d;->a:Lx/z;

    move/from16 v0, v21

    invoke-virtual {v1, v0}, Lx/z;->c(I)D

    move-result-wide v11

    .line 479
    move-object/from16 v0, p0

    iget-object v1, v0, Lx/d;->a:Lx/z;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lx/z;->g(I)D

    move-result-wide v1

    .line 480
    move-object/from16 v0, p0

    iget-object v3, v0, Lx/d;->a:Lx/z;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lx/z;->h(I)D

    move-result-wide v3

    .line 481
    move-object/from16 v0, p0

    iget-object v5, v0, Lx/d;->b:Lx/z;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lx/z;->g(I)D

    move-result-wide v5

    .line 482
    move-object/from16 v0, p0

    iget-object v7, v0, Lx/d;->b:Lx/z;

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Lx/z;->h(I)D

    move-result-wide v7

    .line 483
    invoke-static/range {v1 .. v12}, Lx/y;->a(DDDDDD)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_7b

    .line 485
    move-object/from16 v0, p0

    iget-object v5, v0, Lx/d;->a:Lx/z;

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lx/z;->b(I)D

    move-result-wide v17

    .line 486
    move-object/from16 v0, p0

    iget-object v5, v0, Lx/d;->a:Lx/z;

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Lx/z;->c(I)D

    move-result-wide v19

    move-wide v13, v1

    move-wide v15, v3

    .line 487
    invoke-static/range {v9 .. v20}, Lx/y;->a(DDDDDD)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_7b

    .line 489
    move-object/from16 v0, p0

    iget-object v1, v0, Lx/d;->a:Lx/z;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lx/z;->j(I)I

    move-result v1

    .line 493
    :goto_7a
    return v1

    :cond_7b
    move/from16 v1, v21

    goto :goto_7a
.end method

.method private i(II)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 501
    iget-object v0, p0, Lx/d;->a:Lx/z;

    invoke-virtual {v0, p2, p1}, Lx/z;->i(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(I)I
    .registers 3
    .parameter

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lx/d;->d(I)I

    move-result v0

    .line 249
    invoke-direct {p0, v0, p1}, Lx/d;->h(II)I

    move-result v0

    return v0
.end method

.method public a(IILx/c;)I
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x1

    .line 72
    iget-object v0, p0, Lx/d;->a:Lx/z;

    invoke-virtual {v0, p1, p2}, Lx/z;->g(II)I

    move-result v0

    if-gez v0, :cond_31

    .line 73
    invoke-direct {p0, p1, p2, p1}, Lx/d;->d(III)I

    move-result v1

    .line 80
    sget-object v0, Lx/e;->a:[I

    invoke-virtual {p3}, Lx/c;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_46

    .line 88
    new-instance v0, Lx/j;

    const-string v1, "Impossible EdgeList start case."

    invoke-direct {v0, v1}, Lx/j;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :pswitch_20
    iget-object v0, p0, Lx/d;->a:Lx/z;

    invoke-virtual {v0, p1}, Lx/z;->d(I)I

    move-result v0

    invoke-direct {p0, v0, p1, p1}, Lx/d;->e(III)I

    move-result v4

    move-object v0, p0

    move v2, p1

    move v3, p2

    .line 95
    invoke-direct/range {v0 .. v5}, Lx/d;->a(IIIII)V

    .line 103
    :goto_30
    return v5

    .line 99
    :cond_31
    invoke-direct {p0, p2, p1, p2}, Lx/d;->d(III)I

    move-result v2

    move-object v1, p0

    move v3, p2

    move v4, p1

    move v6, v5

    .line 100
    invoke-direct/range {v1 .. v6}, Lx/d;->a(IIIII)V

    .line 101
    invoke-direct {p0, p2}, Lx/d;->d(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lx/d;->f(II)I

    move-result v5

    goto :goto_30

    .line 80
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_20
    .end packed-switch
.end method

.method public a(Lx/u;II)Lx/d;
    .registers 19
    .parameter
    .parameter
    .parameter

    .prologue
    .line 302
    invoke-virtual/range {p1 .. p1}, Lx/u;->c()Lx/z;

    move-result-object v3

    .line 303
    invoke-virtual/range {p1 .. p1}, Lx/u;->c()Lx/z;

    move-result-object v4

    .line 304
    invoke-virtual/range {p1 .. p1}, Lx/u;->c()Lx/z;

    move-result-object v5

    .line 305
    invoke-virtual/range {p1 .. p1}, Lx/u;->c()Lx/z;

    move-result-object v6

    .line 312
    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_b0

    .line 314
    sub-int v2, p2, p3

    add-int/lit8 v7, v2, -0x1

    .line 315
    const/4 v2, 0x0

    :goto_1b
    iget-object v8, p0, Lx/d;->a:Lx/z;

    iget v8, v8, Lx/z;->d:I

    if-ge v2, v8, :cond_14c

    .line 316
    iget-object v8, p0, Lx/d;->a:Lx/z;

    invoke-virtual {v8, v2}, Lx/z;->j(I)I

    move-result v8

    .line 317
    move/from16 v0, p3

    if-le v8, v0, :cond_2f

    move/from16 v0, p2

    if-lt v8, v0, :cond_95

    .line 318
    :cond_2f
    iget-object v9, p0, Lx/d;->b:Lx/z;

    invoke-virtual {v9, v2}, Lx/z;->j(I)I

    move-result v9

    .line 319
    move/from16 v0, p3

    if-le v9, v0, :cond_3d

    move/from16 v0, p2

    if-lt v9, v0, :cond_95

    .line 320
    :cond_3d
    iget-object v10, p0, Lx/d;->c:Lx/z;

    invoke-virtual {v10, v2}, Lx/z;->j(I)I

    move-result v10

    .line 321
    iget-object v11, p0, Lx/d;->d:Lx/z;

    invoke-virtual {v11, v2}, Lx/z;->j(I)I

    move-result v11

    .line 322
    const/4 v12, 0x1

    new-array v12, v12, [I

    const/4 v13, 0x0

    move/from16 v0, p3

    invoke-direct {p0, v8, v0, v7}, Lx/d;->c(III)I

    move-result v14

    aput v14, v12, v13

    invoke-virtual {v3, v12}, Lx/z;->b([I)V

    .line 323
    const/4 v12, 0x1

    new-array v12, v12, [I

    const/4 v13, 0x0

    move/from16 v0, p3

    invoke-direct {p0, v9, v0, v7}, Lx/d;->c(III)I

    move-result v9

    aput v9, v12, v13

    invoke-virtual {v4, v12}, Lx/z;->b([I)V

    .line 324
    move/from16 v0, p3

    if-le v10, v0, :cond_6f

    move/from16 v0, p2

    if-lt v10, v0, :cond_98

    .line 325
    :cond_6f
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    move/from16 v0, p3

    invoke-direct {p0, v10, v0, v7}, Lx/d;->c(III)I

    move-result v10

    aput v10, v8, v9

    invoke-virtual {v5, v8}, Lx/z;->b([I)V

    .line 329
    :goto_7e
    move/from16 v0, p3

    if-le v11, v0, :cond_86

    move/from16 v0, p2

    if-lt v11, v0, :cond_a8

    .line 330
    :cond_86
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    move/from16 v0, p3

    invoke-direct {p0, v11, v0, v7}, Lx/d;->c(III)I

    move-result v10

    aput v10, v8, v9

    invoke-virtual {v6, v8}, Lx/z;->b([I)V

    .line 315
    :cond_95
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 327
    :cond_98
    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    move/from16 v0, p3

    invoke-direct {p0, v8, v0, v7}, Lx/d;->c(III)I

    move-result v8

    aput v8, v9, v10

    invoke-virtual {v5, v9}, Lx/z;->b([I)V

    goto :goto_7e

    .line 332
    :cond_a8
    new-instance v2, Lx/j;

    const-string v3, "When cutting edge list, we lost a merge vertex."

    invoke-direct {v2, v3}, Lx/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 339
    :cond_b0
    const/4 v2, 0x0

    :goto_b1
    iget-object v7, p0, Lx/d;->a:Lx/z;

    iget v7, v7, Lx/z;->d:I

    if-ge v2, v7, :cond_14c

    .line 340
    iget-object v7, p0, Lx/d;->a:Lx/z;

    invoke-virtual {v7, v2}, Lx/z;->j(I)I

    move-result v7

    .line 341
    move/from16 v0, p2

    if-lt v7, v0, :cond_10d

    move/from16 v0, p3

    if-gt v7, v0, :cond_10d

    .line 342
    iget-object v8, p0, Lx/d;->b:Lx/z;

    invoke-virtual {v8, v2}, Lx/z;->j(I)I

    move-result v8

    .line 343
    move/from16 v0, p2

    if-lt v8, v0, :cond_10d

    move/from16 v0, p3

    if-gt v8, v0, :cond_10d

    .line 344
    iget-object v9, p0, Lx/d;->c:Lx/z;

    invoke-virtual {v9, v2}, Lx/z;->j(I)I

    move-result v9

    .line 345
    iget-object v10, p0, Lx/d;->d:Lx/z;

    invoke-virtual {v10, v2}, Lx/z;->j(I)I

    move-result v10

    .line 346
    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    sub-int v13, v7, p2

    aput v13, v11, v12

    invoke-virtual {v3, v11}, Lx/z;->b([I)V

    .line 347
    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    sub-int v8, v8, p2

    aput v8, v11, v12

    invoke-virtual {v4, v11}, Lx/z;->b([I)V

    .line 348
    const/4 v8, -0x1

    if-ne v9, v8, :cond_110

    .line 349
    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v9, v7, v8

    invoke-virtual {v5, v7}, Lx/z;->b([I)V

    .line 355
    :goto_101
    const/4 v7, -0x1

    if-ne v10, v7, :cond_130

    .line 356
    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v10, v7, v8

    invoke-virtual {v6, v7}, Lx/z;->b([I)V

    .line 339
    :cond_10d
    :goto_10d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b1

    .line 350
    :cond_110
    move/from16 v0, p2

    if-lt v9, v0, :cond_124

    move/from16 v0, p3

    if-gt v9, v0, :cond_124

    .line 351
    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    sub-int v9, v9, p2

    aput v9, v7, v8

    invoke-virtual {v5, v7}, Lx/z;->b([I)V

    goto :goto_101

    .line 353
    :cond_124
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    sub-int v7, v7, p2

    aput v7, v8, v9

    invoke-virtual {v5, v8}, Lx/z;->b([I)V

    goto :goto_101

    .line 357
    :cond_130
    move/from16 v0, p2

    if-lt v10, v0, :cond_144

    move/from16 v0, p3

    if-gt v10, v0, :cond_144

    .line 358
    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    sub-int v9, v10, p2

    aput v9, v7, v8

    invoke-virtual {v6, v7}, Lx/z;->b([I)V

    goto :goto_10d

    .line 360
    :cond_144
    new-instance v2, Lx/j;

    const-string v3, "When cutting edge list, we lost a merge vertex."

    invoke-direct {v2, v3}, Lx/j;-><init>(Ljava/lang/String;)V

    throw v2

    .line 367
    :cond_14c
    new-instance v2, Lx/d;

    invoke-direct {v2, v3, v4, v5, v6}, Lx/d;-><init>(Lx/z;Lx/z;Lx/z;Lx/z;)V

    return-object v2
.end method

.method public a(III)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x1

    .line 57
    const/4 v1, 0x0

    .line 58
    iget-object v0, p0, Lx/d;->a:Lx/z;

    iget v0, v0, Lx/z;->d:I

    if-eqz v0, :cond_c

    .line 59
    invoke-direct {p0, p2, p3, p2}, Lx/d;->d(III)I

    move-result v1

    :cond_c
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p2

    .line 61
    invoke-direct/range {v0 .. v5}, Lx/d;->a(IIIII)V

    .line 62
    add-int/lit8 v2, v1, 0x1

    move-object v1, p0

    move v3, p2

    move v4, p1

    move v6, v5

    invoke-direct/range {v1 .. v6}, Lx/d;->a(IIIII)V

    .line 63
    return-void
.end method

.method public a(II)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 169
    iget-object v0, p0, Lx/d;->a:Lx/z;

    invoke-virtual {v0, p2, p1}, Lx/z;->g(II)I

    move-result v0

    if-gez v0, :cond_28

    move v3, p1

    move v2, p2

    .line 174
    :goto_b
    invoke-direct {p0, v2, v3, v2}, Lx/d;->d(III)I

    move-result v1

    move-object v0, p0

    move v5, v4

    .line 175
    invoke-direct/range {v0 .. v5}, Lx/d;->a(IIIII)V

    .line 176
    add-int/lit8 v0, v1, -0x1

    invoke-direct {p0, v0, v1}, Lx/d;->e(II)Z

    move-result v0

    if-nez v0, :cond_24

    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v1, v0}, Lx/d;->e(II)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25

    :cond_28
    move v3, p2

    move v2, p1

    goto :goto_b
.end method

.method public b(I)I
    .registers 6
    .parameter

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lx/d;->d(I)I

    move-result v1

    .line 258
    iget-object v0, p0, Lx/d;->d:Lx/z;

    invoke-virtual {v0, v1}, Lx/z;->i(I)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0, v1, p1}, Lx/d;->h(II)I

    move-result v0

    .line 261
    :goto_10
    iget-object v2, p0, Lx/d;->d:Lx/z;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Lx/z;->f(II)V

    .line 263
    return v0

    .line 258
    :cond_17
    iget-object v0, p0, Lx/d;->d:Lx/z;

    invoke-virtual {v0, v1}, Lx/z;->j(I)I

    move-result v0

    goto :goto_10
.end method

.method public b(IILx/c;)I
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 113
    .line 114
    iget-object v1, p0, Lx/d;->a:Lx/z;

    invoke-virtual {v1, p1, p2}, Lx/z;->g(II)I

    move-result v1

    if-gez v1, :cond_47

    .line 115
    invoke-direct {p0, p1, p2}, Lx/d;->g(II)I

    move-result v1

    .line 117
    iget-object v2, p0, Lx/d;->d:Lx/z;

    invoke-virtual {v2, v1}, Lx/z;->i(I)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 119
    iget-object v0, p0, Lx/d;->d:Lx/z;

    invoke-virtual {v0, v1}, Lx/z;->j(I)I

    move-result v0

    .line 122
    :cond_1b
    sget-object v2, Lx/e;->a:[I

    invoke-virtual {p3}, Lx/c;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_6a

    .line 147
    :goto_26
    invoke-direct {p0, v1}, Lx/d;->c(I)V

    .line 148
    return v0

    .line 124
    :pswitch_2a
    invoke-direct {p0, p2}, Lx/d;->d(I)I

    move-result v2

    .line 125
    iget-object v3, p0, Lx/d;->d:Lx/z;

    invoke-virtual {v3, v2}, Lx/z;->i(I)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 127
    iget-object v0, p0, Lx/d;->d:Lx/z;

    invoke-virtual {v0, v2}, Lx/z;->j(I)I

    move-result v0

    .line 129
    :cond_3c
    iget-object v3, p0, Lx/d;->c:Lx/z;

    invoke-virtual {v3, v2, p2}, Lx/z;->f(II)V

    .line 130
    iget-object v3, p0, Lx/d;->d:Lx/z;

    invoke-virtual {v3, v2, p2}, Lx/z;->f(II)V

    goto :goto_26

    .line 138
    :cond_47
    invoke-direct {p0, p2, p1}, Lx/d;->g(II)I

    move-result v2

    .line 139
    invoke-direct {p0, p1}, Lx/d;->d(I)I

    move-result v3

    .line 140
    iget-object v1, p0, Lx/d;->d:Lx/z;

    invoke-virtual {v1, v3}, Lx/z;->i(I)Z

    move-result v1

    if-nez v1, :cond_63

    .line 142
    iget-object v1, p0, Lx/d;->d:Lx/z;

    invoke-virtual {v1, v3}, Lx/z;->j(I)I

    move-result v1

    .line 143
    iget-object v4, p0, Lx/d;->d:Lx/z;

    invoke-virtual {v4, v3, v0}, Lx/z;->f(II)V

    move v0, v1

    .line 145
    :cond_63
    iget-object v1, p0, Lx/d;->c:Lx/z;

    invoke-virtual {v1, v3, p1}, Lx/z;->f(II)V

    move v1, v2

    goto :goto_26

    .line 122
    :pswitch_data_6a
    .packed-switch 0x2
        :pswitch_2a
    .end packed-switch
.end method

.method public b(III)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x1

    .line 153
    invoke-direct {p0, p2, p3, p2}, Lx/d;->d(III)I

    move-result v1

    .line 154
    iget-object v0, p0, Lx/d;->a:Lx/z;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Lx/z;->j(I)I

    move-result v0

    iget-object v2, p0, Lx/d;->b:Lx/z;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lx/z;->j(I)I

    move-result v2

    invoke-direct {p0, v0, v2, p2}, Lx/d;->e(III)I

    move-result v4

    .line 156
    invoke-direct {p0, p2}, Lx/d;->d(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lx/d;->f(II)I

    move-object v0, p0

    move v2, p2

    move v3, p3

    .line 157
    invoke-direct/range {v0 .. v5}, Lx/d;->a(IIIII)V

    move-object v0, p0

    move v2, p2

    move v3, p1

    move v4, v5

    .line 158
    invoke-direct/range {v0 .. v5}, Lx/d;->a(IIIII)V

    .line 159
    return-void
.end method

.method public b(II)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lx/d;->a:Lx/z;

    invoke-virtual {v0, p1, p2}, Lx/z;->g(II)I

    move-result v0

    if-gez v0, :cond_21

    .line 187
    invoke-direct {p0, p1, p2}, Lx/d;->g(II)I

    move-result v0

    .line 191
    :goto_c
    invoke-direct {p0, v0}, Lx/d;->c(I)V

    .line 192
    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1, v0}, Lx/d;->e(II)Z

    move-result v1

    if-nez v1, :cond_1f

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v0, v1}, Lx/d;->e(II)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_1f
    const/4 v0, 0x1

    :goto_20
    return v0

    .line 189
    :cond_21
    invoke-direct {p0, p2, p1}, Lx/d;->g(II)I

    move-result v0

    goto :goto_c

    .line 192
    :cond_26
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public c(II)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 268
    iget-object v1, p0, Lx/d;->b:Lx/z;

    invoke-virtual {v1, p2, v0}, Lx/z;->h(II)I

    move-result v1

    .line 269
    :goto_8
    if-eq v1, v3, :cond_19

    invoke-direct {p0, v1, p1}, Lx/d;->i(II)Z

    move-result v2

    if-nez v2, :cond_19

    .line 270
    iget-object v2, p0, Lx/d;->b:Lx/z;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, p2, v1}, Lx/z;->h(II)I

    move-result v1

    goto :goto_8

    .line 272
    :cond_19
    if-eq v1, v3, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0
.end method

.method public d(II)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 380
    invoke-direct {p0, p1, p2, p2}, Lx/d;->d(III)I

    move-result v1

    .line 381
    const/4 v5, -0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lx/d;->a(IIIII)V

    .line 382
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
    const/4 v1, 0x3

    .line 529
    const-string v2, "{start:  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    iget-object v2, p0, Lx/d;->a:Lx/z;

    invoke-virtual {v2, v1}, Lx/z;->p(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    const-string v2, "\n end:    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    iget-object v2, p0, Lx/d;->b:Lx/z;

    invoke-virtual {v2, v1}, Lx/z;->p(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    const-string v2, "\n helper: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    iget-object v2, p0, Lx/d;->c:Lx/z;

    invoke-virtual {v2, v1}, Lx/z;->p(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    const-string v2, "\n merge:  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    iget-object v2, p0, Lx/d;->d:Lx/z;

    invoke-virtual {v2, v1}, Lx/z;->p(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
