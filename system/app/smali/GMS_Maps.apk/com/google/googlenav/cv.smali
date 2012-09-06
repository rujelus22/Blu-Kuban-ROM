.class public Lcom/google/googlenav/cv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private final c:Z

.field private d:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/cv;->c:Z

    .line 69
    iput-object v1, p0, Lcom/google/googlenav/cv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 70
    iput-object v1, p0, Lcom/google/googlenav/cv;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p2, p0, Lcom/google/googlenav/cv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 91
    iput-object p1, p0, Lcom/google/googlenav/cv;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/cv;->c:Z

    .line 93
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/cv;
    .registers 5
    .parameter

    .prologue
    .line 192
    if-nez p0, :cond_8

    .line 193
    new-instance v0, Lcom/google/googlenav/cv;

    invoke-direct {v0}, Lcom/google/googlenav/cv;-><init>()V

    .line 207
    :goto_7
    return-object v0

    .line 196
    :cond_8
    const/4 v0, 0x7

    invoke-static {p0, v0}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 199
    invoke-static {p0}, Lcom/google/googlenav/ai;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/List;

    move-result-object v1

    .line 202
    const/4 v0, 0x0

    .line 203
    if-eqz v1, :cond_21

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_21

    .line 204
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 207
    :cond_21
    new-instance v1, Lcom/google/googlenav/cv;

    invoke-direct {v1, v2, v0}, Lcom/google/googlenav/cv;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    move-object v0, v1

    goto :goto_7
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x3

    .line 351
    if-eqz p1, :cond_9

    .line 352
    if-nez p2, :cond_f

    .line 353
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 359
    :cond_9
    :goto_9
    const/16 v0, 0x13

    invoke-virtual {p3, v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 360
    return-void

    .line 355
    :cond_f
    div-int/lit16 v0, p2, 0x3e8

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 356
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_9
.end method

.method private a(Lcom/google/googlenav/cy;)V
    .registers 5
    .parameter

    .prologue
    .line 314
    if-nez p1, :cond_3

    .line 318
    :goto_2
    return-void

    .line 317
    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/cv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x12

    invoke-virtual {p1}, Lcom/google/googlenav/cy;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_2
.end method

.method private a(Ljava/util/List;)Z
    .registers 4
    .parameter

    .prologue
    .line 448
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/cz;

    .line 449
    iget-boolean v0, v0, Lcom/google/googlenav/cz;->e:Z

    if-eqz v0, :cond_4

    .line 450
    const/4 v0, 0x1

    .line 453
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private a(Ljava/util/List;Lcom/google/googlenav/cz;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/cz;

    .line 133
    iget-object v0, v0, Lcom/google/googlenav/cz;->a:Ljava/lang/String;

    iget-object v2, p2, Lcom/google/googlenav/cz;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 134
    const/4 v0, 0x1

    .line 137
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 411
    if-eqz p1, :cond_7

    .line 413
    :try_start_3
    invoke-static {p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_8

    move-result-object v0

    .line 421
    :cond_7
    :goto_7
    return-object v0

    .line 415
    :catch_8
    move-exception v1

    goto :goto_7
.end method

.method private b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x3

    .line 369
    if-eqz p1, :cond_e

    .line 370
    if-nez p2, :cond_f

    .line 371
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 375
    :goto_9
    const/16 v0, 0x14

    invoke-virtual {p3, v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 377
    :cond_e
    return-void

    .line 373
    :cond_f
    invoke-virtual {p1, v1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_9
.end method

.method private c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/List;
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x2

    .line 427
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 429
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 432
    if-eqz v2, :cond_23

    .line 433
    invoke-virtual {v2, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 435
    const/4 v0, 0x0

    :goto_13
    if-ge v0, v3, :cond_23

    .line 436
    invoke-virtual {v2, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 439
    invoke-static {v4}, Lcom/google/googlenav/cz;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/cz;

    move-result-object v4

    .line 440
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 444
    :cond_23
    return-object v1
.end method

.method private d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 471
    const/16 v0, 0x13

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 472
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 481
    const/16 v0, 0x13

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 482
    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    .line 483
    return-object v0
.end method

.method private f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 487
    const/16 v0, 0x13

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 488
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    .line 489
    return-object v0
.end method

.method private g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/Map;
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x2

    .line 502
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v2

    .line 503
    const/16 v0, 0x14

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 504
    invoke-static {v0, v8}, Lcom/google/googlenav/common/io/protocol/b;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    move v0, v1

    .line 505
    :goto_12
    array-length v4, v3

    if-ge v0, v4, :cond_3a

    .line 506
    aget-object v4, v3, v0

    invoke-static {v4, v9}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v4

    .line 507
    aget-object v5, v3, v0

    invoke-static {v5, v8}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v5

    .line 508
    aget-object v6, v3, v0

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v6

    .line 509
    if-eqz v4, :cond_37

    .line 510
    new-array v7, v8, [Ljava/lang/String;

    .line 511
    aput-object v5, v7, v1

    .line 512
    aput-object v6, v7, v9

    .line 513
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 516
    :cond_3a
    invoke-static {v2}, Lcom/google/common/collect/bx;->a(Ljava/util/Map;)Lcom/google/common/collect/bx;

    move-result-object v0

    return-object v0
.end method

.method private h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/Integer;
    .registers 4
    .parameter

    .prologue
    .line 523
    const/16 v0, 0x14

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 524
    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private i(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 531
    const/16 v0, 0x14

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 532
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private n()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x2

    .line 325
    invoke-direct {p0}, Lcom/google/googlenav/cv;->o()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 326
    if-nez v1, :cond_a

    .line 342
    :goto_9
    return-void

    .line 331
    :cond_a
    invoke-virtual {v1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 332
    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_27

    .line 333
    invoke-virtual {v1, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 335
    const/4 v4, 0x3

    invoke-virtual {v3, v4, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 336
    const/4 v4, 0x5

    invoke-virtual {v3, v4, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 337
    invoke-virtual {v3, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v4

    invoke-virtual {v3, v6, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 340
    :cond_27
    iget-object v0, p0, Lcom/google/googlenav/cv;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_9
.end method

.method private o()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4

    .prologue
    const/16 v2, 0x12

    .line 380
    iget-object v0, p0, Lcom/google/googlenav/cv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0, v2}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 383
    iget-object v1, p0, Lcom/google/googlenav/cv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v1}, Lcom/google/googlenav/cv;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/cv;->a(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 384
    iget-object v0, p0, Lcom/google/googlenav/cv;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0, v2}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 387
    :cond_1a
    invoke-direct {p0, v0}, Lcom/google/googlenav/cv;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method private p()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 3

    .prologue
    const/16 v1, 0x13

    .line 391
    iget-object v0, p0, Lcom/google/googlenav/cv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 393
    if-nez v0, :cond_10

    .line 394
    iget-object v0, p0, Lcom/google/googlenav/cv;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 397
    :cond_10
    invoke-direct {p0, v0}, Lcom/google/googlenav/cv;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method private q()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 3

    .prologue
    const/16 v1, 0x14

    .line 401
    iget-object v0, p0, Lcom/google/googlenav/cv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 403
    if-nez v0, :cond_10

    .line 404
    iget-object v0, p0, Lcom/google/googlenav/cv;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 407
    :cond_10
    invoke-direct {p0, v0}, Lcom/google/googlenav/cv;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method private r()Ljava/lang/String;
    .registers 3

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/googlenav/cv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/googlenav/cv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/aF;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 227
    if-nez p1, :cond_5

    .line 265
    :cond_4
    :goto_4
    return-void

    .line 232
    :cond_5
    iget-object v0, p1, Lcom/google/googlenav/aF;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_4

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/cv;->d:Z

    .line 238
    iget-object v0, p0, Lcom/google/googlenav/cv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-nez v0, :cond_19

    .line 239
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lbm/O;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/google/googlenav/cv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 243
    :cond_19
    iget-object v0, p0, Lcom/google/googlenav/cv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iget-object v1, p1, Lcom/google/googlenav/aF;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 246
    iget-object v0, p0, Lcom/google/googlenav/cv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/google/googlenav/aF;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v2, v3}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 249
    iget-object v0, p1, Lcom/google/googlenav/aF;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v0

    .line 250
    iget-object v1, p1, Lcom/google/googlenav/aF;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v2, 0xb

    invoke-static {v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v1

    .line 253
    iget-object v2, p1, Lcom/google/googlenav/aF;->b:Lcom/google/googlenav/cy;

    invoke-direct {p0, v2}, Lcom/google/googlenav/cv;->a(Lcom/google/googlenav/cy;)V

    .line 254
    invoke-direct {p0}, Lcom/google/googlenav/cv;->p()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/cv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v2, v0, v3}, Lcom/google/googlenav/cv;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 255
    invoke-direct {p0}, Lcom/google/googlenav/cv;->q()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/cv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlenav/cv;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 260
    iput-object v4, p0, Lcom/google/googlenav/cv;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 264
    iget-object v0, p0, Lcom/google/googlenav/cv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_4
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/googlenav/cv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public c()Ljava/util/List;
    .registers 5

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/googlenav/cv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v0}, Lcom/google/googlenav/cv;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/List;

    move-result-object v1

    .line 116
    iget-object v0, p0, Lcom/google/googlenav/cv;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v0}, Lcom/google/googlenav/cv;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/List;

    move-result-object v0

    .line 120
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/cz;

    .line 121
    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/cv;->a(Ljava/util/List;Lcom/google/googlenav/cz;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 122
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 125
    :cond_26
    return-object v1
.end method

.method public d()Ljava/lang/String;
    .registers 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/googlenav/cv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_e

    :goto_d
    return-object v0

    :cond_e
    invoke-direct {p0}, Lcom/google/googlenav/cv;->r()Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/googlenav/cv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v0}, Lcom/google/googlenav/cv;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/googlenav/cv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v0}, Lcom/google/googlenav/cv;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/google/googlenav/cv;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v0}, Lcom/google/googlenav/cv;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/googlenav/cv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v0}, Lcom/google/googlenav/cv;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/googlenav/cv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v0}, Lcom/google/googlenav/cv;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/google/googlenav/cv;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v0}, Lcom/google/googlenav/cv;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/googlenav/cv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v0}, Lcom/google/googlenav/cv;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/googlenav/cv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v0}, Lcom/google/googlenav/cv;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/google/googlenav/cv;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v0}, Lcom/google/googlenav/cv;->f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public h()Ljava/util/Map;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/googlenav/cv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v0}, Lcom/google/googlenav/cv;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/googlenav/cv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v0}, Lcom/google/googlenav/cv;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/Map;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/google/googlenav/cv;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v0}, Lcom/google/googlenav/cv;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/Map;

    move-result-object v0

    goto :goto_12
.end method

.method public i()Ljava/lang/Integer;
    .registers 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/googlenav/cv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v0}, Lcom/google/googlenav/cv;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/googlenav/cv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v0}, Lcom/google/googlenav/cv;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/Integer;

    move-result-object v0

    :goto_17
    return-object v0

    :cond_18
    iget-object v0, p0, Lcom/google/googlenav/cv;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v0}, Lcom/google/googlenav/cv;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_17
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/googlenav/cv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v0}, Lcom/google/googlenav/cv;->i(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/googlenav/cv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v0}, Lcom/google/googlenav/cv;->i(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/google/googlenav/cv;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v0}, Lcom/google/googlenav/cv;->i(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public k()Z
    .registers 2

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/google/googlenav/cv;->c:Z

    return v0
.end method

.method public l()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 274
    iget-object v0, p0, Lcom/google/googlenav/cv;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/cv;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v0}, Lcom/google/googlenav/cv;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/cv;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 275
    :cond_11
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lbm/O;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/google/googlenav/cv;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 276
    invoke-direct {p0}, Lcom/google/googlenav/cv;->q()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/cv;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v0, v2, v1}, Lcom/google/googlenav/cv;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 277
    invoke-direct {p0}, Lcom/google/googlenav/cv;->p()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/cv;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {p0, v0, v2, v1}, Lcom/google/googlenav/cv;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 278
    invoke-direct {p0}, Lcom/google/googlenav/cv;->n()V

    .line 280
    :cond_2f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/cv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 281
    return-void
.end method

.method public m()Ljava/lang/String;
    .registers 3

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/google/googlenav/cv;->p()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 294
    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserActivity, isInitialised: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/googlenav/cv;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " updatedFromCache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/googlenav/cv;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/cv;->b()Z

    move-result v0

    if-nez v0, :cond_49

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [template:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/cv;->c()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " user-review: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/cv;->c()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " text: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/cv;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_40
.end method
