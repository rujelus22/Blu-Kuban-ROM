.class Lat/l;
.super Lac/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lat/k;

.field private b:Z

.field private final c:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lat/k;)V
    .registers 3
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lat/l;->a:Lat/k;

    invoke-direct {p0}, Lac/a;-><init>()V

    .line 377
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lat/l;->c:Ljava/util/Vector;

    .line 378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lat/l;->b:Z

    .line 379
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 383
    const/16 v0, 0x24

    return v0
.end method

.method public declared-synchronized a(Lat/n;)V
    .registers 4
    .parameter

    .prologue
    .line 390
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lat/l;->b:Z

    if-eqz v0, :cond_10

    .line 391
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Adding tiles to closed request!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 390
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 394
    :cond_10
    :try_start_10
    iget-object v0, p0, Lat/l;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_d

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    .line 404
    :goto_19
    monitor-exit p0

    return-void

    .line 400
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lat/l;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_d

    goto :goto_19
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 10
    .parameter

    .prologue
    const/16 v7, 0xd

    const/4 v6, 0x1

    .line 485
    invoke-virtual {p1, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 488
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_a
    if-ltz v1, :cond_32

    .line 489
    invoke-virtual {p1, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 493
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 499
    invoke-virtual {v2, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 501
    new-array v4, v0, [Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 502
    add-int/lit8 v0, v0, -0x1

    :goto_1e
    if-ltz v0, :cond_29

    .line 503
    invoke-virtual {v2, v7, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    aput-object v5, v4, v0

    .line 502
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    .line 507
    :cond_29
    iget-object v0, p0, Lat/l;->a:Lat/k;

    invoke-virtual {v0, v3, v4}, Lat/k;->a(Ljava/lang/String;[Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 488
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_a

    .line 509
    :cond_32
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ZI)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x3

    const/4 v7, 0x2

    .line 513
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 514
    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lat/Y;->b(I)Lat/Y;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lat/P;->a(BIILat/Y;)Lat/P;

    move-result-object v1

    .line 521
    invoke-virtual {p1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 522
    new-array v2, v0, [Lcom/google/googlenav/layer/j;

    .line 523
    add-int/lit8 v0, v0, -0x1

    :goto_29
    if-ltz v0, :cond_39

    .line 524
    new-instance v3, Lcom/google/googlenav/layer/j;

    invoke-virtual {p1, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/googlenav/layer/j;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    aput-object v3, v2, v0

    .line 523
    add-int/lit8 v0, v0, -0x1

    goto :goto_29

    .line 528
    :cond_39
    iget-object v0, p0, Lat/l;->a:Lat/k;

    invoke-static {v0}, Lat/k;->b(Lat/k;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/n;

    .line 529
    if-nez v0, :cond_8c

    .line 531
    new-instance v0, Lat/n;

    invoke-direct {v0, v1}, Lat/n;-><init>(Lat/P;)V

    .line 539
    :cond_4c
    :goto_4c
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v3

    int-to-long v5, p3

    add-long/2addr v3, v5

    .line 540
    invoke-virtual {v0}, Lat/n;->e()Z

    move-result v5

    if-eqz v5, :cond_62

    if-eqz p2, :cond_9a

    .line 541
    :cond_62
    invoke-virtual {v0, v2, v3, v4}, Lat/n;->a([Lcom/google/googlenav/layer/j;J)V

    .line 547
    :goto_65
    invoke-virtual {p1, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 548
    invoke-virtual {p1, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v2

    invoke-virtual {v0, v2, v3, v4}, Lat/n;->a([BJ)V

    .line 551
    :cond_72
    monitor-enter p0

    .line 552
    :try_start_73
    iget-object v2, p0, Lat/l;->a:Lat/k;

    invoke-static {v2}, Lat/k;->c(Lat/k;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    iget-object v0, p0, Lat/l;->a:Lat/k;

    invoke-static {v0}, Lat/k;->b(Lat/k;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    monitor-exit p0
    :try_end_86
    .catchall {:try_start_73 .. :try_end_86} :catchall_9e

    .line 556
    iget-object v0, p0, Lat/l;->a:Lat/k;

    invoke-virtual {v0}, Lat/k;->c()V

    .line 557
    return-void

    .line 533
    :cond_8c
    invoke-virtual {v0}, Lat/n;->e()Z

    move-result v3

    if-eqz v3, :cond_4c

    if-eqz p2, :cond_4c

    .line 534
    new-instance v0, Lat/n;

    invoke-direct {v0, v1}, Lat/n;-><init>(Lat/P;)V

    goto :goto_4c

    .line 543
    :cond_9a
    invoke-virtual {v0, v2, v3, v4}, Lat/n;->b([Lcom/google/googlenav/layer/j;J)V

    goto :goto_65

    .line 554
    :catchall_9e
    move-exception v0

    :try_start_9f
    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9e

    throw v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 12
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v3, 0x1

    .line 408
    monitor-enter p0

    .line 409
    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lat/l;->b:Z

    .line 410
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_58

    .line 412
    new-instance v4, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/dA;->f:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 413
    const/16 v0, 0x100

    invoke-virtual {v4, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 417
    const/4 v0, 0x0

    iget-object v1, p0, Lat/l;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v5

    move v1, v0

    move v2, v3

    :goto_1d
    if-ge v1, v5, :cond_5b

    .line 418
    iget-object v0, p0, Lat/l;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/n;

    invoke-virtual {v0}, Lat/n;->c()Lat/P;

    move-result-object v0

    .line 419
    invoke-virtual {v0}, Lat/P;->e()Lat/Y;

    move-result-object v2

    invoke-virtual {v2}, Lat/Y;->a()I

    move-result v2

    .line 421
    new-instance v6, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v7, Lcom/google/wireless/googlenav/proto/j2me/hm;->i:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v6, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 423
    const/16 v7, 0x8

    invoke-virtual {v6, v3, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 425
    invoke-virtual {v0}, Lat/P;->c()I

    move-result v7

    invoke-virtual {v6, v9, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 426
    invoke-virtual {v0}, Lat/P;->d()I

    move-result v0

    invoke-virtual {v6, v8, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 427
    const/4 v0, 0x4

    invoke-virtual {v6, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 430
    invoke-virtual {v4, v8, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 417
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1d

    .line 410
    :catchall_58
    move-exception v0

    :try_start_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v0

    .line 434
    :cond_5b
    iget-object v0, p0, Lat/l;->a:Lat/k;

    invoke-static {v0}, Lat/k;->a(Lat/k;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_68
    if-ltz v1, :cond_ab

    .line 435
    iget-object v0, p0, Lat/l;->a:Lat/k;

    invoke-static {v0}, Lat/k;->a(Lat/k;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/m;

    invoke-interface {v0}, Lat/m;->b()Lcom/google/googlenav/layer/m;

    move-result-object v3

    .line 436
    new-instance v5, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 437
    const/16 v0, 0x15

    invoke-virtual {v3}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 439
    invoke-virtual {v3}, Lcom/google/googlenav/layer/m;->e()[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v6

    .line 440
    if-eqz v6, :cond_9e

    .line 441
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    :goto_92
    if-ltz v0, :cond_9e

    .line 442
    const/16 v7, 0x16

    aget-object v8, v6, v0

    invoke-virtual {v5, v7, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 441
    add-int/lit8 v0, v0, -0x1

    goto :goto_92

    .line 447
    :cond_9e
    invoke-virtual {v3, v2}, Lcom/google/googlenav/layer/m;->b(I)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 448
    invoke-virtual {v4, v9, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 434
    :cond_a7
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_68

    .line 452
    :cond_ab
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v4, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 453
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 457
    invoke-static {p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Ljava/io/DataInput;)Ljava/io/InputStream;

    move-result-object v1

    .line 460
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {v0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 461
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/dA;->h:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v2, v1, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/InputStream;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)I

    .line 464
    invoke-virtual {p0, v0}, Lat/l;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 467
    const/4 v0, 0x0

    .line 469
    :cond_15
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {v2, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 470
    sget-object v3, Lcom/google/wireless/googlenav/proto/j2me/dA;->h:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v3, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/InputStream;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)I

    move-result v3

    .line 472
    if-eq v3, v4, :cond_27

    .line 473
    invoke-virtual {p0, v2, v5, v0}, Lat/l;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ZI)V

    .line 474
    add-int/lit8 v0, v0, 0x1

    .line 476
    :cond_27
    if-ne v3, v4, :cond_15

    .line 477
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 480
    return v5
.end method
