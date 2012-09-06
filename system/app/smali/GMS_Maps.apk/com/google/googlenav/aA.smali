.class public Lcom/google/googlenav/aa;
.super Lac/a;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/googlenav/Y;

.field private b:Z

.field private c:Z

.field private d:[I

.field private final e:Lcom/google/googlenav/ui/bm;

.field private final f:Lad/y;

.field private final g:I

.field private final h:I

.field private i:Ljava/util/List;

.field private final j:Z

.field private volatile k:Z

.field private l:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lad/y;)V
    .registers 4
    .parameter

    .prologue
    .line 335
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 302
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/aa;->l:Ljava/lang/Object;

    .line 337
    new-instance v0, Lcom/google/googlenav/Y;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Lcom/google/googlenav/Y;-><init>(Lad/y;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/googlenav/aa;->a:Lcom/google/googlenav/Y;

    .line 338
    iput-object p1, p0, Lcom/google/googlenav/aa;->f:Lad/y;

    .line 339
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/google/googlenav/aa;->g:I

    .line 340
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/aa;->h:I

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/aa;->e:Lcom/google/googlenav/ui/bm;

    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/aa;->j:Z

    .line 343
    return-void
.end method

.method public constructor <init>(Lad/y;Ljava/lang/String;Lcom/google/googlenav/ui/bm;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 312
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 302
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/aa;->l:Ljava/lang/Object;

    .line 313
    new-instance v0, Lcom/google/googlenav/Y;

    invoke-direct {v0, p1, p2}, Lcom/google/googlenav/Y;-><init>(Lad/y;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/googlenav/aa;->a:Lcom/google/googlenav/Y;

    .line 314
    iput-object p1, p0, Lcom/google/googlenav/aa;->f:Lad/y;

    .line 315
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/google/googlenav/aa;->g:I

    .line 317
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/aa;->h:I

    .line 321
    iput-object p3, p0, Lcom/google/googlenav/aa;->e:Lcom/google/googlenav/ui/bm;

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/aa;->j:Z

    .line 323
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/Y;Lad/y;IILcom/google/googlenav/ui/bm;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 359
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 302
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/aa;->l:Ljava/lang/Object;

    .line 360
    iput-object p1, p0, Lcom/google/googlenav/aa;->a:Lcom/google/googlenav/Y;

    .line 361
    iput-object p5, p0, Lcom/google/googlenav/aa;->e:Lcom/google/googlenav/ui/bm;

    .line 362
    iput-object p2, p0, Lcom/google/googlenav/aa;->f:Lad/y;

    .line 363
    iput p3, p0, Lcom/google/googlenav/aa;->g:I

    .line 364
    iput p4, p0, Lcom/google/googlenav/aa;->h:I

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/aa;->c:Z

    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/aa;->j:Z

    .line 367
    return-void
.end method

.method private a([ILjava/util/List;)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 554
    if-nez p1, :cond_5

    .line 566
    :goto_4
    return v1

    .line 557
    :cond_5
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v3

    .line 558
    array-length v4, p1

    move v0, v2

    :goto_b
    if-ge v0, v4, :cond_19

    aget v5, p1, v0

    .line 559
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 558
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 561
    :cond_19
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v4

    .line 562
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_21
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ab;

    .line 563
    invoke-virtual {v0}, Lcom/google/googlenav/ab;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 565
    :cond_39
    invoke-interface {v4, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 566
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_45

    move v0, v1

    :goto_43
    move v1, v0

    goto :goto_4

    :cond_45
    move v0, v2

    goto :goto_43
.end method

.method private static b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/Set;
    .registers 10
    .parameter

    .prologue
    const/16 v8, 0x9

    const/16 v7, 0x8

    const/4 v6, 0x6

    .line 571
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v1

    .line 572
    invoke-virtual {p0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 573
    const/4 v0, 0x0

    :goto_e
    if-ge v0, v2, :cond_39

    .line 574
    invoke-virtual {p0, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 575
    invoke-virtual {v3, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 576
    invoke-virtual {v3, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 578
    :cond_25
    invoke-virtual {v3, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 579
    invoke-virtual {v3, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 573
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 582
    :cond_39
    return-object v1
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 386
    const/16 v0, 0x7e

    return v0
.end method

.method a(Ljava/util/List;)Ljava/util/HashMap;
    .registers 6
    .parameter

    .prologue
    .line 546
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v1

    .line 547
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ab;

    .line 548
    invoke-virtual {v0}, Lcom/google/googlenav/ab;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 550
    :cond_20
    return-object v1
.end method

.method a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/List;
    .registers 10
    .parameter

    .prologue
    const/16 v7, 0x8

    .line 530
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 531
    invoke-virtual {p1, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 533
    const/4 v0, 0x0

    :goto_b
    if-ge v0, v2, :cond_26

    .line 534
    invoke-virtual {p1, v7, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 536
    new-instance v4, Lcom/google/googlenav/ab;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/google/googlenav/ab;-><init>(ILjava/lang/String;)V

    .line 539
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 541
    :cond_26
    return-object v1
.end method

.method public a(Lad/y;)V
    .registers 3
    .parameter

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/googlenav/aa;->a:Lcom/google/googlenav/Y;

    invoke-static {v0, p1}, Lcom/google/googlenav/Y;->a(Lcom/google/googlenav/Y;Lad/y;)Lad/y;

    .line 377
    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 9
    .parameter

    .prologue
    const/16 v6, 0x3e8

    const/4 v5, 0x5

    const/4 v4, 0x3

    .line 391
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/hz;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 393
    iget-object v0, p0, Lcom/google/googlenav/aa;->a:Lcom/google/googlenav/Y;

    iget-object v2, p0, Lcom/google/googlenav/aa;->f:Lad/y;

    invoke-virtual {v2}, Lad/y;->f()Lat/B;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlenav/Y;->a(Lcom/google/googlenav/Y;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lat/B;I)V

    .line 396
    iget-object v0, p0, Lcom/google/googlenav/aa;->a:Lcom/google/googlenav/Y;

    invoke-static {v0}, Lcom/google/googlenav/Y;->a(Lcom/google/googlenav/Y;)Lad/y;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 397
    iget-object v0, p0, Lcom/google/googlenav/aa;->a:Lcom/google/googlenav/Y;

    iget-object v2, p0, Lcom/google/googlenav/aa;->a:Lcom/google/googlenav/Y;

    invoke-static {v2}, Lcom/google/googlenav/Y;->a(Lcom/google/googlenav/Y;)Lad/y;

    move-result-object v2

    invoke-virtual {v2}, Lad/y;->f()Lat/B;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlenav/Y;->a(Lcom/google/googlenav/Y;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lat/B;I)V

    .line 401
    invoke-virtual {v1, v5, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 403
    invoke-virtual {v1, v4, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 412
    :goto_35
    const/16 v0, 0x9

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 421
    iget-object v0, p0, Lcom/google/googlenav/aa;->d:[I

    invoke-static {v0}, Lcom/google/googlenav/common/util/a;->a([I)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 422
    iget-object v2, p0, Lcom/google/googlenav/aa;->d:[I

    array-length v3, v2

    const/4 v0, 0x0

    :goto_48
    if-ge v0, v3, :cond_5f

    aget v4, v2, v0

    .line 423
    const/16 v5, 0x8

    invoke-virtual {v1, v5, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    .line 406
    :cond_54
    iget v0, p0, Lcom/google/googlenav/aa;->h:I

    invoke-virtual {v1, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 408
    iget v0, p0, Lcom/google/googlenav/aa;->g:I

    invoke-virtual {v1, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_35

    .line 429
    :cond_5f
    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/googlenav/aa;->e:Lcom/google/googlenav/ui/bm;

    invoke-static {v2}, Lcom/google/googlenav/ui/p;->a(Lcom/google/googlenav/ui/p;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 431
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 432
    return-void
.end method

.method public a([I)V
    .registers 2
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/google/googlenav/aa;->d:[I

    .line 382
    return-void
.end method

.method public a(J)Z
    .registers 5
    .parameter

    .prologue
    .line 519
    iget-object v1, p0, Lcom/google/googlenav/aa;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 520
    :try_start_3
    iget-boolean v0, p0, Lcom/google/googlenav/aa;->k:Z

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/google/googlenav/aa;->A_()Z

    move-result v0

    if-nez v0, :cond_12

    .line 523
    iget-object v0, p0, Lcom/google/googlenav/aa;->l:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 525
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_16

    .line 526
    iget-boolean v0, p0, Lcom/google/googlenav/aa;->k:Z

    return v0

    .line 525
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x9

    const/4 v3, 0x3

    const/4 v7, 0x1

    .line 436
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/hz;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 439
    iget-object v0, p0, Lcom/google/googlenav/aa;->a:Lcom/google/googlenav/Y;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/google/googlenav/Y;->a(Lcom/google/googlenav/Y;Z)Z

    .line 441
    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 442
    iget-object v0, p0, Lcom/google/googlenav/aa;->a:Lcom/google/googlenav/Y;

    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/googlenav/Y;->a(Lcom/google/googlenav/Y;I)I

    .line 446
    :cond_24
    invoke-virtual {v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 447
    iget-object v0, p0, Lcom/google/googlenav/aa;->a:Lcom/google/googlenav/Y;

    new-instance v2, Lcom/google/googlenav/layer/m;

    invoke-virtual {v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/googlenav/layer/m;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/Y;->a(Lcom/google/googlenav/layer/m;)V

    .line 454
    :goto_38
    invoke-virtual {p0, v1}, Lcom/google/googlenav/aa;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aa;->i:Ljava/util/List;

    .line 455
    iget-object v0, p0, Lcom/google/googlenav/aa;->i:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/aa;->a(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v0

    .line 461
    iget-object v2, p0, Lcom/google/googlenav/aa;->d:[I

    iget-object v3, p0, Lcom/google/googlenav/aa;->i:Ljava/util/List;

    invoke-direct {p0, v2, v3}, Lcom/google/googlenav/aa;->a([ILjava/util/List;)Z

    move-result v2

    if-nez v2, :cond_51

    .line 462
    invoke-static {}, LaM/bU;->bK()V

    .line 465
    :cond_51
    iget-object v2, p0, Lcom/google/googlenav/aa;->a:Lcom/google/googlenav/Y;

    invoke-static {v2}, Lcom/google/googlenav/Y;->b(Lcom/google/googlenav/Y;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 466
    iget-object v2, p0, Lcom/google/googlenav/aa;->a:Lcom/google/googlenav/Y;

    invoke-static {v2}, Lcom/google/googlenav/Y;->b(Lcom/google/googlenav/Y;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/aa;->i:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 468
    iget-object v2, p0, Lcom/google/googlenav/aa;->e:Lcom/google/googlenav/ui/bm;

    if-eqz v2, :cond_77

    .line 469
    iget-object v2, p0, Lcom/google/googlenav/aa;->e:Lcom/google/googlenav/ui/bm;

    const/4 v3, 0x7

    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-static {v1}, Lcom/google/googlenav/aa;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/googlenav/ui/bm;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/Set;)V

    .line 473
    :cond_77
    invoke-virtual {v1, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 474
    if-eqz v2, :cond_ab

    .line 486
    new-instance v3, Lcom/google/googlenav/Z;

    invoke-direct {v3, v1, v5, v5, v0}, Lcom/google/googlenav/Z;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;[Lcom/google/googlenav/ca;[Lcom/google/googlenav/ca;Ljava/util/Map;)V

    .line 490
    const/4 v0, 0x0

    :goto_83
    if-ge v0, v2, :cond_ab

    .line 491
    invoke-virtual {v1, v7, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 493
    new-instance v5, Lcom/google/googlenav/ca;

    sget-object v6, Lcom/google/wireless/googlenav/proto/j2me/hz;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v5, v4, v6, v3}, Lcom/google/googlenav/ca;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBufType;Lcom/google/googlenav/ce;)V

    .line 496
    invoke-virtual {v5, v7}, Lcom/google/googlenav/ca;->a(Z)V

    .line 498
    invoke-virtual {v5, v7}, Lcom/google/googlenav/ca;->b(Z)V

    .line 499
    iget-object v4, p0, Lcom/google/googlenav/aa;->a:Lcom/google/googlenav/Y;

    new-instance v6, Lcom/google/googlenav/cq;

    invoke-direct {v6, v5}, Lcom/google/googlenav/cq;-><init>(Lcom/google/googlenav/ca;)V

    invoke-virtual {v4, v6}, Lcom/google/googlenav/Y;->a(Lcom/google/googlenav/cq;)V

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_83

    .line 450
    :cond_a3
    iget-object v0, p0, Lcom/google/googlenav/aa;->a:Lcom/google/googlenav/Y;

    sget-object v2, Lcom/google/googlenav/layer/m;->a:Lcom/google/googlenav/layer/m;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/Y;->a(Lcom/google/googlenav/layer/m;)V

    goto :goto_38

    .line 503
    :cond_ab
    iget-object v1, p0, Lcom/google/googlenav/aa;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 504
    const/4 v0, 0x1

    :try_start_af
    iput-boolean v0, p0, Lcom/google/googlenav/aa;->k:Z

    .line 505
    iget-object v0, p0, Lcom/google/googlenav/aa;->l:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 506
    monitor-exit v1

    .line 507
    return v7

    .line 506
    :catchall_b8
    move-exception v0

    monitor-exit v1
    :try_end_ba
    .catchall {:try_start_af .. :try_end_ba} :catchall_b8

    throw v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/google/googlenav/aa;->c:Z

    return v0
.end method

.method public declared-synchronized i_()Z
    .registers 2

    .prologue
    .line 592
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/googlenav/aa;->b:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public k()Z
    .registers 2

    .prologue
    .line 600
    iget-boolean v0, p0, Lcom/google/googlenav/aa;->j:Z

    return v0
.end method

.method public l()Lcom/google/googlenav/Y;
    .registers 2

    .prologue
    .line 604
    iget-object v0, p0, Lcom/google/googlenav/aa;->a:Lcom/google/googlenav/Y;

    return-object v0
.end method

.method public declared-synchronized l_()V
    .registers 2

    .prologue
    .line 587
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/googlenav/aa;->b:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 588
    monitor-exit p0

    return-void

    .line 587
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
