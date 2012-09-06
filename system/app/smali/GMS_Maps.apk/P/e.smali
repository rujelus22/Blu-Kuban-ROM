.class public Lp/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lq/b;

.field private final b:Lt/l;


# direct methods
.method public constructor <init>(Lq/b;Lt/l;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lp/e;->a:Lq/b;

    .line 88
    iput-object p2, p0, Lp/e;->b:Lt/l;

    .line 89
    return-void
.end method

.method private static a(Ln/U;I)D
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 368
    invoke-virtual {p0, p1}, Ln/U;->a(I)Ln/Q;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Ln/U;->a(I)Ln/Q;

    move-result-object v1

    invoke-static {v0, v1}, Ln/Q;->a(Ln/Q;Ln/Q;)D

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Lq/e;I)D
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 373
    invoke-virtual {p0, p1}, Lq/e;->b(I)Ln/Q;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lq/e;->b(I)Ln/Q;

    move-result-object v1

    invoke-static {v0, v1}, Ln/Q;->a(Ln/Q;Ln/Q;)D

    move-result-wide v0

    return-wide v0
.end method

.method static a(Lo/x;DDDDD)Ljava/util/List;
    .registers 35
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 230
    const-wide/16 v2, 0x0

    sub-double v4, p1, p3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    .line 232
    add-double v14, p1, p5

    .line 233
    move-wide/from16 v0, p7

    neg-double v5, v0

    .line 237
    invoke-virtual/range {p0 .. p0}, Lo/x;->n()Ln/U;

    move-result-object v16

    .line 238
    invoke-virtual/range {v16 .. v16}, Ln/U;->b()I

    move-result v17

    .line 239
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lo/x;->a(D)I

    move-result v4

    .line 240
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lo/x;->a(D)I

    move-result v2

    add-int/lit8 v3, v17, -0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 242
    add-int/lit8 v2, v18, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lo/x;->b(I)D

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lo/x;->b(D)I

    move-result v19

    .line 245
    new-instance v20, Ln/Q;

    invoke-direct/range {v20 .. v20}, Ln/Q;-><init>()V

    .line 246
    new-instance v21, Ln/Q;

    invoke-direct/range {v21 .. v21}, Ln/Q;-><init>()V

    .line 247
    :goto_44
    move/from16 v0, v18

    if-gt v4, v0, :cond_b0

    .line 248
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lo/x;->b(I)D

    move-result-wide v9

    .line 249
    cmpl-double v2, v9, v12

    if-ltz v2, :cond_a9

    cmpg-double v2, v9, v14

    if-gtz v2, :cond_a9

    const/4 v2, 0x1

    move v7, v2

    .line 251
    :goto_58
    sub-double v2, v9, v5

    cmpg-double v2, v2, p7

    if-gez v2, :cond_ac

    const/4 v2, 0x1

    .line 253
    :goto_5f
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ln/U;->b(I)F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v22, v0

    cmpg-double v3, v22, p9

    if-gez v3, :cond_ae

    const/4 v3, 0x1

    .line 255
    :goto_6d
    if-eqz v7, :cond_c9

    if-nez v2, :cond_c9

    if-nez v3, :cond_c9

    .line 257
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Ln/U;->a(ILn/Q;)V

    .line 258
    add-int/lit8 v2, v4, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Ln/U;->a(ILn/Q;)V

    .line 265
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lo/x;->b(D)I

    move-result v2

    sub-int v8, v2, v19

    .line 266
    new-instance v2, Lp/f;

    const/high16 v3, 0x3f00

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Ln/Q;->a(Ln/Q;F)Ln/Q;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Lp/e;->a(Ln/U;I)D

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v8}, Lp/f;-><init>(Ln/Q;IDZI)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v2, v9

    .line 247
    :goto_a5
    add-int/lit8 v4, v4, 0x1

    move-wide v5, v2

    goto :goto_44

    .line 249
    :cond_a9
    const/4 v2, 0x0

    move v7, v2

    goto :goto_58

    .line 251
    :cond_ac
    const/4 v2, 0x0

    goto :goto_5f

    .line 253
    :cond_ae
    const/4 v3, 0x0

    goto :goto_6d

    .line 271
    :cond_b0
    add-int/lit8 v2, v17, -0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_c8

    .line 272
    new-instance v2, Lp/f;

    invoke-virtual/range {v16 .. v16}, Ln/U;->c()Ln/Q;

    move-result-object v3

    add-int/lit8 v4, v17, -0x1

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lp/f;-><init>(Ln/Q;IDZI)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_c8
    return-object v11

    :cond_c9
    move-wide v2, v5

    goto :goto_a5
.end method

.method static a(ZLn/Q;Ljava/util/Iterator;DIIDI)Ljava/util/List;
    .registers 27
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 347
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 348
    mul-double v14, p7, p7

    .line 349
    new-instance v16, Lp/g;

    invoke-direct/range {v16 .. v16}, Lp/g;-><init>()V

    .line 350
    :cond_c
    :goto_c
    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_62

    .line 351
    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lq/e;

    .line 352
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v6, v1}, Lp/e;->a(Ln/Q;Lq/e;Lp/g;)V

    .line 353
    const/16 v3, 0x168

    move/from16 v0, p5

    if-eq v0, v3, :cond_33

    move-object/from16 v0, v16

    iget v3, v0, Lp/g;->b:I

    move-wide/from16 v0, p3

    move/from16 v2, p5

    invoke-static {v0, v1, v6, v3, v2}, Lp/e;->a(DLq/e;II)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 358
    :cond_33
    move-object/from16 v0, v16

    iget v3, v0, Lp/g;->c:F

    float-to-double v3, v3

    cmpg-double v3, v3, v14

    if-gez v3, :cond_c

    .line 359
    new-instance v3, Lp/d;

    move-object/from16 v0, v16

    iget-object v4, v0, Lp/g;->a:Ln/Q;

    invoke-static {v4}, Ln/Q;->a(Ln/Q;)Ln/Q;

    move-result-object v5

    move-object/from16 v0, v16

    iget v7, v0, Lp/g;->b:I

    move-object/from16 v0, v16

    iget v4, v0, Lp/g;->c:F

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    move/from16 v4, p0

    move/from16 v8, p9

    move-object/from16 v9, p1

    move/from16 v12, p6

    invoke-direct/range {v3 .. v12}, Lp/d;-><init>(ZLn/Q;Lq/e;IILn/Q;DI)V

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 364
    :cond_62
    return-object v13
.end method

.method static a(Ln/Q;Lo/x;II)Lo/B;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 293
    int-to-double v0, p3

    invoke-virtual {p1, p0, v0, v1, v4}, Lo/x;->a(Ln/Q;DZ)[Lo/B;

    move-result-object v6

    .line 296
    const/4 v3, 0x0

    .line 297
    const-wide v0, 0x7fefffffffffffffL

    .line 298
    array-length v7, v6

    move v5, v4

    :goto_e
    if-ge v5, v7, :cond_23

    aget-object v2, v6, v5

    .line 299
    invoke-virtual {v2}, Lo/B;->d()D

    move-result-wide v8

    cmpg-double v8, v8, v0

    if-gez v8, :cond_83

    .line 301
    invoke-virtual {v2}, Lo/B;->d()D

    move-result-wide v0

    .line 298
    :goto_1e
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v3, v2

    goto :goto_e

    .line 304
    :cond_23
    if-eqz v3, :cond_7f

    .line 306
    invoke-virtual {v3}, Lo/B;->d()D

    move-result-wide v0

    const-wide/high16 v7, 0x4000

    mul-double/2addr v0, v7

    double-to-int v0, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Search radius: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " min: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp/e;->a(Ljava/lang/String;)V

    .line 316
    array-length v7, v6

    move v0, v4

    move-object v2, v3

    move v3, v4

    :goto_63
    if-ge v3, v7, :cond_80

    aget-object v1, v6, v3

    .line 317
    invoke-virtual {v1}, Lo/B;->e()I

    move-result v4

    .line 318
    if-lt v4, v0, :cond_81

    invoke-virtual {v1}, Lo/B;->d()D

    move-result-wide v8

    int-to-double v10, v5

    cmpg-double v4, v8, v10

    if-gez v4, :cond_81

    .line 320
    invoke-virtual {v1}, Lo/B;->e()I

    move-result v0

    .line 316
    :goto_7a
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    goto :goto_63

    :cond_7f
    move-object v2, v3

    .line 324
    :cond_80
    return-object v2

    :cond_81
    move-object v1, v2

    goto :goto_7a

    :cond_83
    move-object v2, v3

    goto :goto_1e
.end method

.method private static a(Ljava/lang/String;)V
    .registers 1
    .parameter

    .prologue
    .line 558
    return-void
.end method

.method static a(Ljava/util/List;)V
    .registers 7
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 449
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 478
    :cond_7
    :goto_7
    return-void

    .line 452
    :cond_8
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 453
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/d;

    .line 454
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 455
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp/d;

    .line 456
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 461
    const-string v0, "More than 2 endpoints. Dropping all."

    invoke-static {v0}, Lp/e;->a(Ljava/lang/String;)V

    .line 463
    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_7

    .line 467
    :cond_2d
    iget-object v3, v0, Lp/d;->c:Lq/e;

    invoke-virtual {v3}, Lq/e;->e()Ln/Q;

    move-result-object v3

    iget-object v4, v1, Lp/d;->c:Lq/e;

    invoke-virtual {v4, v5}, Lq/e;->b(I)Ln/Q;

    move-result-object v4

    invoke-virtual {v3, v4}, Ln/Q;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    iget-object v0, v0, Lp/d;->c:Lq/e;

    invoke-virtual {v0, v5}, Lq/e;->b(I)Ln/Q;

    move-result-object v0

    iget-object v1, v1, Lp/d;->c:Lq/e;

    invoke-virtual {v1}, Lq/e;->e()Ln/Q;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln/Q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 469
    :cond_51
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_7

    .line 472
    :cond_55
    const-string v0, "Endpoints don\'t line up. Dropping all."

    invoke-static {v0}, Lp/e;->a(Ljava/lang/String;)V

    .line 474
    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_7
.end method

.method static a(Ljava/util/List;D)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 430
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 431
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 432
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/d;

    .line 433
    iget-boolean v2, v0, Lp/d;->a:Z

    if-eqz v2, :cond_22

    iget-object v2, v0, Lp/d;->b:Ln/Q;

    iget-object v3, v0, Lp/d;->c:Lq/e;

    invoke-virtual {v3}, Lq/e;->e()Ln/Q;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln/Q;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    :cond_22
    iget-boolean v2, v0, Lp/d;->a:Z

    if-nez v2, :cond_39

    iget-object v2, v0, Lp/d;->b:Ln/Q;

    iget-object v3, v0, Lp/d;->c:Lq/e;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lq/e;->b(I)Ln/Q;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln/Q;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 435
    :cond_35
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_4

    .line 436
    :cond_39
    iget-wide v2, v0, Lp/d;->g:D

    cmpl-double v0, v2, p1

    if-lez v0, :cond_4

    .line 437
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_4

    .line 440
    :cond_43
    return-void
.end method

.method static a(Ln/Q;Lq/e;Lp/g;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 401
    new-instance v1, Ln/Q;

    invoke-direct {v1}, Ln/Q;-><init>()V

    .line 402
    new-instance v2, Ln/Q;

    invoke-direct {v2}, Ln/Q;-><init>()V

    .line 403
    new-instance v3, Ln/Q;

    invoke-direct {v3}, Ln/Q;-><init>()V

    .line 404
    const v0, 0x7f7fffff

    iput v0, p2, Lp/g;->c:F

    .line 405
    invoke-virtual {p1}, Lq/e;->f()I

    move-result v4

    .line 406
    const/4 v0, 0x0

    :goto_19
    add-int/lit8 v5, v4, -0x1

    if-ge v0, v5, :cond_3b

    .line 407
    invoke-virtual {p1, v0, v1}, Lq/e;->a(ILn/Q;)V

    .line 408
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5, v2}, Lq/e;->a(ILn/Q;)V

    .line 409
    invoke-static {v1, v2, p0, v3}, Ln/Q;->b(Ln/Q;Ln/Q;Ln/Q;Ln/Q;)F

    move-result v5

    .line 411
    iget v6, p2, Lp/g;->c:F

    cmpg-float v6, v5, v6

    if-gez v6, :cond_38

    .line 412
    iput v5, p2, Lp/g;->c:F

    .line 413
    iput v0, p2, Lp/g;->b:I

    .line 414
    iget-object v5, p2, Lp/g;->a:Ln/Q;

    invoke-virtual {v5, v3}, Ln/Q;->b(Ln/Q;)V

    .line 406
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 417
    :cond_3b
    return-void
.end method

.method static a(DLq/e;II)Z
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 384
    invoke-static {p2, p3}, Lp/e;->a(Lq/e;I)D

    move-result-wide v0

    .line 385
    sub-double v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 386
    const-wide v2, 0x4066800000000000L

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1a

    .line 387
    const-wide v2, 0x4076800000000000L

    sub-double v0, v2, v0

    .line 389
    :cond_1a
    int-to-double v2, p4

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_21

    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method


# virtual methods
.method public a(Lm/b;)Ljava/util/Collection;
    .registers 15
    .parameter

    .prologue
    .line 100
    invoke-virtual {p1}, Lm/b;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lm/b;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ln/Q;->a(DD)Ln/Q;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Ln/Q;->e()D

    move-result-wide v2

    iget-object v0, p0, Lp/e;->b:Lt/l;

    invoke-virtual {v0}, Lt/l;->f()I

    move-result v0

    int-to-double v4, v0

    mul-double v7, v2, v4

    .line 103
    iget-object v0, p0, Lp/e;->a:Lq/b;

    invoke-virtual {v0, v1, v7, v8}, Lq/b;->a(Ln/Q;D)Ljava/util/Iterator;

    move-result-object v2

    .line 104
    const/16 v5, 0x168

    .line 105
    const/4 v0, 0x0

    .line 106
    invoke-virtual {p1}, Lm/b;->hasBearing()Z

    move-result v3

    if-eqz v3, :cond_bb

    invoke-virtual {p1}, Lm/b;->e()Z

    move-result v3

    if-eqz v3, :cond_bb

    .line 107
    invoke-virtual {p1}, Lm/b;->getBearing()F

    move-result v0

    .line 108
    iget-object v3, p0, Lp/e;->b:Lt/l;

    invoke-virtual {v3}, Lt/l;->d()I

    move-result v5

    move v3, v0

    .line 110
    :goto_39
    const/4 v0, 0x1

    float-to-double v3, v3

    const/4 v6, 0x0

    const/4 v9, -0x1

    invoke-static/range {v0 .. v9}, Lp/e;->a(ZLn/Q;Ljava/util/Iterator;DIIDI)Ljava/util/List;

    move-result-object v10

    .line 112
    const-wide v2, 0x7fefffffffffffffL

    .line 113
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4a
    :goto_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp/d;

    .line 114
    iget-wide v5, v0, Lp/d;->g:D

    cmpg-double v5, v5, v2

    if-gez v5, :cond_4a

    .line 115
    iget-wide v2, v0, Lp/d;->g:D

    goto :goto_4a

    .line 118
    :cond_5f
    const-wide/high16 v4, 0x4000

    mul-double/2addr v2, v4

    invoke-virtual {v1}, Ln/Q;->e()D

    move-result-wide v0

    iget-object v4, p0, Lp/e;->b:Lt/l;

    invoke-virtual {v4}, Lt/l;->g()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v10, v0, v1}, Lp/e;->a(Ljava/util/List;D)V

    .line 125
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 126
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 127
    :cond_7e
    :goto_7e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b7

    .line 128
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lp/d;

    .line 129
    iget-object v0, v9, Lp/d;->c:Lq/e;

    invoke-virtual {v0}, Lq/e;->a()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 130
    iget-object v0, p0, Lp/e;->a:Lq/b;

    iget-object v1, v9, Lp/d;->c:Lq/e;

    invoke-virtual {v0, v1}, Lq/b;->a(Lq/e;)Lq/e;

    move-result-object v3

    .line 131
    if-eqz v3, :cond_b3

    .line 132
    new-instance v0, Lp/d;

    iget-boolean v1, v9, Lp/d;->a:Z

    iget-object v2, v9, Lp/d;->b:Ln/Q;

    iget v4, v9, Lp/d;->d:I

    iget v5, v9, Lp/d;->e:I

    iget-object v6, v9, Lp/d;->f:Ln/Q;

    iget-wide v7, v9, Lp/d;->g:D

    iget v9, v9, Lp/d;->h:I

    invoke-direct/range {v0 .. v9}, Lp/d;-><init>(ZLn/Q;Lq/e;IILn/Q;DI)V

    invoke-interface {v12, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_b3
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_7e

    .line 140
    :cond_b7
    invoke-interface {v10, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 141
    return-object v10

    :cond_bb
    move v3, v0

    goto/16 :goto_39
.end method

.method public a(Lm/b;Lo/x;)Ljava/util/Collection;
    .registers 20
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-virtual/range {p1 .. p1}, Lm/b;->getLatitude()D

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lm/b;->getLongitude()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ln/Q;->a(DD)Ln/Q;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Ln/Q;->e()D

    move-result-wide v12

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lp/e;->b:Lt/l;

    invoke-virtual {v2}, Lt/l;->b()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v12

    .line 156
    move-object/from16 v0, p0

    iget-object v4, v0, Lp/e;->b:Lt/l;

    invoke-virtual {v4}, Lt/l;->c()I

    move-result v4

    int-to-double v4, v4

    mul-double v14, v12, v4

    .line 158
    move-object/from16 v0, p0

    iget-object v4, v0, Lp/e;->b:Lt/l;

    invoke-virtual {v4}, Lt/l;->h()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v12

    .line 160
    move-object/from16 v0, p0

    iget-object v6, v0, Lp/e;->b:Lt/l;

    invoke-virtual {v6}, Lt/l;->i()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v12

    .line 162
    move-object/from16 v0, p0

    iget-object v8, v0, Lp/e;->b:Lt/l;

    invoke-virtual {v8}, Lt/l;->j()I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v8, v12

    .line 164
    move-object/from16 v0, p0

    iget-object v10, v0, Lp/e;->b:Lt/l;

    invoke-virtual {v10}, Lt/l;->k()I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v10, v12

    .line 166
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 167
    double-to-int v2, v2

    double-to-int v3, v14

    move-object/from16 v0, p2

    invoke-static {v1, v0, v2, v3}, Lp/e;->a(Ln/Q;Lo/x;II)Lo/B;

    move-result-object v1

    .line 169
    if-eqz v1, :cond_d2

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Projection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lo/B;->b()Ln/Q;

    move-result-object v3

    invoke-virtual {v3}, Ln/Q;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lp/e;->a(Ljava/lang/String;)V

    .line 173
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lo/x;->a(Lo/B;)D

    move-result-wide v2

    move-object/from16 v1, p2

    .line 174
    invoke-static/range {v1 .. v11}, Lp/e;->a(Lo/x;DDDDD)Ljava/util/List;

    move-result-object v1

    .line 177
    const-wide/high16 v2, 0x4024

    mul-double v8, v12, v2

    .line 179
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_8e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lp/f;

    .line 180
    move-object/from16 v0, p0

    iget-object v1, v0, Lp/e;->a:Lq/b;

    iget-object v2, v11, Lp/f;->a:Ln/Q;

    invoke-virtual {v1, v2, v8, v9}, Lq/b;->a(Ln/Q;D)Ljava/util/Iterator;

    move-result-object v3

    .line 182
    iget-boolean v1, v11, Lp/f;->d:Z

    if-eqz v1, :cond_c5

    const/16 v6, 0x168

    .line 184
    :goto_ab
    const/4 v1, 0x0

    iget-object v2, v11, Lp/f;->a:Ln/Q;

    iget-wide v4, v11, Lp/f;->c:D

    iget v7, v11, Lp/f;->e:I

    iget v10, v11, Lp/f;->b:I

    invoke-static/range {v1 .. v10}, Lp/e;->a(ZLn/Q;Ljava/util/Iterator;DIIDI)Ljava/util/List;

    move-result-object v1

    .line 188
    iget-boolean v2, v11, Lp/f;->d:Z

    if-eqz v2, :cond_ce

    .line 189
    invoke-static {v1, v8, v9}, Lp/e;->a(Ljava/util/List;D)V

    .line 193
    :goto_bf
    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_8e

    .line 182
    :cond_c5
    move-object/from16 v0, p0

    iget-object v1, v0, Lp/e;->b:Lt/l;

    invoke-virtual {v1}, Lt/l;->e()I

    move-result v6

    goto :goto_ab

    .line 191
    :cond_ce
    invoke-static {v1}, Lp/e;->a(Ljava/util/List;)V

    goto :goto_bf

    .line 200
    :cond_d2
    return-object v16
.end method
