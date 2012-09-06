.class Lcom/google/googlenav/intersectionexplorer/m;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field a:Ln/Q;

.field b:Lcom/google/googlenav/intersectionexplorer/c;

.field c:Ljava/util/TreeSet;

.field d:Ln/aa;

.field final synthetic e:Lcom/google/googlenav/intersectionexplorer/k;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/intersectionexplorer/k;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 372
    iput-object p1, p0, Lcom/google/googlenav/intersectionexplorer/m;->e:Lcom/google/googlenav/intersectionexplorer/k;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 375
    iput-object v1, p0, Lcom/google/googlenav/intersectionexplorer/m;->b:Lcom/google/googlenav/intersectionexplorer/c;

    .line 376
    invoke-static {}, Lcom/google/common/collect/dm;->c()Ljava/util/TreeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/m;->c:Ljava/util/TreeSet;

    .line 377
    iput-object v1, p0, Lcom/google/googlenav/intersectionexplorer/m;->d:Ln/aa;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/intersectionexplorer/k;Lcom/google/googlenav/intersectionexplorer/l;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 372
    invoke-direct {p0, p1}, Lcom/google/googlenav/intersectionexplorer/m;-><init>(Lcom/google/googlenav/intersectionexplorer/k;)V

    return-void
.end method

.method private a(Ln/Q;D)Lr/ai;
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 442
    invoke-virtual {p1}, Ln/Q;->e()D

    move-result-wide v0

    mul-double/2addr v0, p2

    const-wide/high16 v2, 0x3fe0

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 443
    invoke-static {p1, v0}, Ln/aa;->a(Ln/Q;I)Ln/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/m;->d:Ln/aa;

    .line 444
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/m;->d:Ln/aa;

    invoke-direct {p0, v0}, Lcom/google/googlenav/intersectionexplorer/m;->a(Ln/aa;)Lr/an;

    move-result-object v1

    .line 445
    if-nez v1, :cond_19

    .line 446
    const/4 v0, 0x0

    .line 448
    :goto_18
    return-object v0

    :cond_19
    new-instance v0, Lr/ai;

    const-wide/high16 v2, 0x4024

    invoke-virtual {p1}, Ln/Q;->e()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lr/ai;-><init>(Lr/an;II)V

    goto :goto_18
.end method

.method private a(Ln/aa;)Lr/an;
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 456
    .line 460
    :try_start_1
    invoke-static {}, Lcom/google/googlenav/intersectionexplorer/k;->g()Lr/ao;

    move-result-object v1

    if-nez v1, :cond_15

    .line 461
    new-instance v1, Lr/ao;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/dg;->a:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-static {v2}, Lr/aJ;->c(Lcom/google/android/maps/driveabout/vector/dg;)Lr/aH;

    move-result-object v2

    invoke-direct {v1, v2}, Lr/ao;-><init>(Lr/aH;)V

    invoke-static {v1}, Lcom/google/googlenav/intersectionexplorer/k;->a(Lr/ao;)Lr/ao;

    .line 463
    :cond_15
    const/4 v1, 0x1

    .line 464
    invoke-static {}, Lcom/google/googlenav/intersectionexplorer/k;->g()Lr/ao;

    move-result-object v2

    const-wide/16 v3, 0x7530

    invoke-virtual {v2, p1, v1, v3, v4}, Lr/ao;->a(Ln/aa;ZJ)Lr/an;
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1f} :catch_4b

    move-result-object v1

    .line 469
    if-nez v1, :cond_23

    .line 485
    :goto_22
    return-object v0

    .line 473
    :cond_23
    sget-boolean v0, Lcom/google/googlenav/intersectionexplorer/d;->a:Z

    if-eqz v0, :cond_29

    move-object v0, v1

    .line 474
    goto :goto_22

    .line 478
    :cond_29
    new-instance v2, Lr/an;

    invoke-direct {v2}, Lr/an;-><init>()V

    .line 479
    const/4 v0, 0x0

    :goto_2f
    invoke-virtual {v1}, Lr/an;->a()I

    move-result v3

    if-ge v0, v3, :cond_49

    .line 480
    invoke-virtual {v1, v0}, Lr/an;->a(I)Ln/ac;

    move-result-object v3

    .line 481
    invoke-virtual {v3}, Ln/ac;->c()I

    move-result v4

    if-lez v4, :cond_46

    .line 482
    invoke-virtual {v1, v0}, Lr/an;->b(I)Ln/U;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lr/an;->a(Ln/ac;Ln/U;)V

    .line 479
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_49
    move-object v0, v2

    .line 485
    goto :goto_22

    .line 465
    :catch_4b
    move-exception v1

    goto :goto_22
.end method

.method private a(Lr/ai;)V
    .registers 15
    .parameter

    .prologue
    const/4 v12, 0x1

    const/4 v3, 0x0

    .line 493
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/m;->c:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    move v2, v3

    move v0, v3

    .line 495
    :goto_9
    invoke-virtual {p1}, Lr/ai;->a()I

    move-result v1

    if-ge v2, v1, :cond_bf

    .line 496
    invoke-virtual {p1, v2}, Lr/ai;->a(I)Lr/ak;

    move-result-object v1

    .line 497
    invoke-virtual {v1}, Lr/ak;->b()Ln/ac;

    move-result-object v6

    .line 500
    invoke-virtual {v1}, Lr/ak;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 501
    new-instance v5, Lcom/google/googlenav/intersectionexplorer/n;

    invoke-direct {v5, p0}, Lcom/google/googlenav/intersectionexplorer/n;-><init>(Lcom/google/googlenav/intersectionexplorer/m;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 516
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v7

    .line 518
    iget-object v5, p0, Lcom/google/googlenav/intersectionexplorer/m;->e:Lcom/google/googlenav/intersectionexplorer/k;

    iget-object v8, p0, Lcom/google/googlenav/intersectionexplorer/m;->c:Ljava/util/TreeSet;

    invoke-virtual {v1}, Lr/ak;->c()Ln/Q;

    move-result-object v9

    invoke-virtual {v5, v8, v9, v12}, Lcom/google/googlenav/intersectionexplorer/k;->a(Ljava/util/Set;Ln/Q;Z)Lcom/google/googlenav/intersectionexplorer/c;

    move-result-object v5

    .line 520
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v0

    :goto_3b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/aj;

    .line 523
    add-int/lit8 v4, v4, 0x1

    .line 524
    invoke-virtual {v0}, Lr/aj;->a()Lr/ak;

    move-result-object v8

    .line 527
    invoke-virtual {v1}, Lr/ak;->c()Ln/Q;

    move-result-object v9

    invoke-virtual {v1}, Lr/ak;->d()Ln/Q;

    move-result-object v10

    invoke-virtual {v0}, Lr/aj;->b()F

    move-result v11

    invoke-virtual {v9, v10, v11}, Ln/Q;->a(Ln/Q;F)Ln/Q;

    move-result-object v9

    .line 529
    invoke-virtual {v8}, Lr/ak;->c()Ln/Q;

    move-result-object v10

    invoke-virtual {v8}, Lr/ak;->d()Ln/Q;

    move-result-object v8

    invoke-virtual {v0}, Lr/aj;->c()F

    move-result v0

    invoke-virtual {v10, v8, v0}, Ln/Q;->a(Ln/Q;F)Ln/Q;

    move-result-object v0

    .line 532
    iget-object v8, p0, Lcom/google/googlenav/intersectionexplorer/m;->e:Lcom/google/googlenav/intersectionexplorer/k;

    iget-object v10, p0, Lcom/google/googlenav/intersectionexplorer/m;->c:Ljava/util/TreeSet;

    invoke-virtual {v8, v10, v9, v12}, Lcom/google/googlenav/intersectionexplorer/k;->a(Ljava/util/Set;Ln/Q;Z)Lcom/google/googlenav/intersectionexplorer/c;

    move-result-object v8

    .line 534
    iget-object v9, p0, Lcom/google/googlenav/intersectionexplorer/m;->e:Lcom/google/googlenav/intersectionexplorer/k;

    iget-object v10, p0, Lcom/google/googlenav/intersectionexplorer/m;->c:Ljava/util/TreeSet;

    invoke-virtual {v9, v10, v0, v12}, Lcom/google/googlenav/intersectionexplorer/k;->a(Ljava/util/Set;Ln/Q;Z)Lcom/google/googlenav/intersectionexplorer/c;

    move-result-object v0

    .line 538
    if-eq v8, v0, :cond_85

    .line 539
    invoke-virtual {v8, v0}, Lcom/google/googlenav/intersectionexplorer/c;->b(Lcom/google/googlenav/intersectionexplorer/c;)Z

    .line 540
    invoke-virtual {p0, v0, v8}, Lcom/google/googlenav/intersectionexplorer/m;->a(Lcom/google/googlenav/intersectionexplorer/c;Lcom/google/googlenav/intersectionexplorer/c;)V

    .line 542
    :cond_85
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 546
    :cond_89
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/m;->e:Lcom/google/googlenav/intersectionexplorer/k;

    iget-object v5, p0, Lcom/google/googlenav/intersectionexplorer/m;->c:Ljava/util/TreeSet;

    invoke-virtual {v1}, Lr/ak;->d()Ln/Q;

    move-result-object v1

    invoke-virtual {v0, v5, v1, v12}, Lcom/google/googlenav/intersectionexplorer/k;->a(Ljava/util/Set;Ln/Q;Z)Lcom/google/googlenav/intersectionexplorer/c;

    move-result-object v0

    .line 548
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    move v5, v3

    :goto_9d
    add-int/lit8 v0, v8, -0x1

    if-ge v5, v0, :cond_b9

    .line 552
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/intersectionexplorer/c;

    .line 553
    add-int/lit8 v1, v5, 0x1

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/intersectionexplorer/c;

    .line 554
    invoke-virtual {v0, v1, v6}, Lcom/google/googlenav/intersectionexplorer/c;->a(Lcom/google/googlenav/intersectionexplorer/c;Ln/ac;)V

    .line 555
    invoke-virtual {v1, v0, v6}, Lcom/google/googlenav/intersectionexplorer/c;->a(Lcom/google/googlenav/intersectionexplorer/c;Ln/ac;)V

    .line 551
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_9d

    .line 495
    :cond_b9
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v4

    goto/16 :goto_9

    .line 560
    :cond_bf
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/m;->c:Ljava/util/TreeSet;

    invoke-static {v0}, Lcom/google/googlenav/intersectionexplorer/k;->a(Ljava/util/TreeSet;)Ljava/util/TreeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/m;->c:Ljava/util/TreeSet;

    .line 564
    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/intersectionexplorer/c;Lcom/google/googlenav/intersectionexplorer/c;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/m;->c:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 572
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/m;->c:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 574
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/m;->c:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 575
    return-void
.end method

.method public run()V
    .registers 5

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/m;->a:Ln/Q;

    const-wide v1, 0x4082c00000000000L

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlenav/intersectionexplorer/m;->a(Ln/Q;D)Lr/ai;

    move-result-object v0

    .line 385
    if-nez v0, :cond_40

    .line 387
    invoke-static {}, Lcom/google/googlenav/intersectionexplorer/k;->f()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 388
    const/4 v0, 0x0

    :try_start_13
    invoke-static {v0}, Lcom/google/googlenav/intersectionexplorer/k;->a(Z)Z

    .line 389
    invoke-static {}, Lcom/google/googlenav/intersectionexplorer/k;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 390
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_3a

    .line 391
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/m;->e:Lcom/google/googlenav/intersectionexplorer/k;

    invoke-static {v0}, Lcom/google/googlenav/intersectionexplorer/k;->a(Lcom/google/googlenav/intersectionexplorer/k;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 392
    :try_start_25
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/m;->e:Lcom/google/googlenav/intersectionexplorer/k;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/googlenav/intersectionexplorer/k;->a(Lcom/google/googlenav/intersectionexplorer/k;Z)Z

    .line 393
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_3d

    .line 394
    invoke-static {}, Lcom/google/googlenav/intersectionexplorer/d;->c()Lcom/google/googlenav/intersectionexplorer/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/intersectionexplorer/d;->h()V

    .line 395
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/m;->e:Lcom/google/googlenav/intersectionexplorer/k;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/intersectionexplorer/k;->b(Lcom/google/googlenav/intersectionexplorer/k;Z)Z

    .line 436
    :goto_39
    return-void

    .line 390
    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0

    .line 393
    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0

    .line 400
    :cond_40
    invoke-direct {p0, v0}, Lcom/google/googlenav/intersectionexplorer/m;->a(Lr/ai;)V

    .line 403
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/m;->e:Lcom/google/googlenav/intersectionexplorer/k;

    invoke-static {v0}, Lcom/google/googlenav/intersectionexplorer/k;->a(Lcom/google/googlenav/intersectionexplorer/k;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 407
    :try_start_4a
    iget-object v2, p0, Lcom/google/googlenav/intersectionexplorer/m;->e:Lcom/google/googlenav/intersectionexplorer/k;

    iget-object v3, p0, Lcom/google/googlenav/intersectionexplorer/m;->c:Ljava/util/TreeSet;

    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/m;->e:Lcom/google/googlenav/intersectionexplorer/k;

    invoke-static {v0}, Lcom/google/googlenav/intersectionexplorer/k;->c(Lcom/google/googlenav/intersectionexplorer/k;)Lcom/google/googlenav/intersectionexplorer/c;

    move-result-object v0

    if-nez v0, :cond_ae

    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/m;->a:Ln/Q;

    :goto_58
    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/intersectionexplorer/k;->a(Ljava/util/Set;Ln/Q;)Lcom/google/googlenav/intersectionexplorer/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/m;->b:Lcom/google/googlenav/intersectionexplorer/c;

    .line 411
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/m;->b:Lcom/google/googlenav/intersectionexplorer/c;

    .line 412
    iget-object v2, p0, Lcom/google/googlenav/intersectionexplorer/m;->e:Lcom/google/googlenav/intersectionexplorer/k;

    invoke-static {v2}, Lcom/google/googlenav/intersectionexplorer/k;->c(Lcom/google/googlenav/intersectionexplorer/k;)Lcom/google/googlenav/intersectionexplorer/c;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/intersectionexplorer/m;->b:Lcom/google/googlenav/intersectionexplorer/c;

    .line 413
    iget-object v2, p0, Lcom/google/googlenav/intersectionexplorer/m;->e:Lcom/google/googlenav/intersectionexplorer/k;

    invoke-static {v2, v0}, Lcom/google/googlenav/intersectionexplorer/k;->a(Lcom/google/googlenav/intersectionexplorer/k;Lcom/google/googlenav/intersectionexplorer/c;)Lcom/google/googlenav/intersectionexplorer/c;

    .line 415
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/m;->c:Ljava/util/TreeSet;

    .line 416
    iget-object v2, p0, Lcom/google/googlenav/intersectionexplorer/m;->e:Lcom/google/googlenav/intersectionexplorer/k;

    invoke-static {v2}, Lcom/google/googlenav/intersectionexplorer/k;->b(Lcom/google/googlenav/intersectionexplorer/k;)Ljava/util/TreeSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/intersectionexplorer/m;->c:Ljava/util/TreeSet;

    .line 417
    iget-object v2, p0, Lcom/google/googlenav/intersectionexplorer/m;->e:Lcom/google/googlenav/intersectionexplorer/k;

    invoke-static {v2, v0}, Lcom/google/googlenav/intersectionexplorer/k;->a(Lcom/google/googlenav/intersectionexplorer/k;Ljava/util/TreeSet;)Ljava/util/TreeSet;

    .line 419
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/m;->d:Ln/aa;

    .line 420
    iget-object v2, p0, Lcom/google/googlenav/intersectionexplorer/m;->e:Lcom/google/googlenav/intersectionexplorer/k;

    invoke-static {v2}, Lcom/google/googlenav/intersectionexplorer/k;->d(Lcom/google/googlenav/intersectionexplorer/k;)Ln/aa;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/intersectionexplorer/m;->d:Ln/aa;

    .line 421
    iget-object v2, p0, Lcom/google/googlenav/intersectionexplorer/m;->e:Lcom/google/googlenav/intersectionexplorer/k;

    invoke-static {v2, v0}, Lcom/google/googlenav/intersectionexplorer/k;->a(Lcom/google/googlenav/intersectionexplorer/k;Ln/aa;)Ln/aa;

    .line 425
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/m;->e:Lcom/google/googlenav/intersectionexplorer/k;

    invoke-static {v0}, Lcom/google/googlenav/intersectionexplorer/k;->e(Lcom/google/googlenav/intersectionexplorer/k;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_95
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/intersectionexplorer/o;

    .line 426
    iget-object v3, p0, Lcom/google/googlenav/intersectionexplorer/m;->e:Lcom/google/googlenav/intersectionexplorer/k;

    invoke-static {v3}, Lcom/google/googlenav/intersectionexplorer/k;->b(Lcom/google/googlenav/intersectionexplorer/k;)Ljava/util/TreeSet;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/googlenav/intersectionexplorer/o;->a(Ljava/util/Set;)V

    goto :goto_95

    .line 430
    :catchall_ab
    move-exception v0

    monitor-exit v1
    :try_end_ad
    .catchall {:try_start_4a .. :try_end_ad} :catchall_ab

    throw v0

    .line 407
    :cond_ae
    :try_start_ae
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/m;->e:Lcom/google/googlenav/intersectionexplorer/k;

    invoke-static {v0}, Lcom/google/googlenav/intersectionexplorer/k;->c(Lcom/google/googlenav/intersectionexplorer/k;)Lcom/google/googlenav/intersectionexplorer/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/intersectionexplorer/c;->b()Ln/Q;

    move-result-object v0

    goto :goto_58

    .line 429
    :cond_b9
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/m;->e:Lcom/google/googlenav/intersectionexplorer/k;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/googlenav/intersectionexplorer/k;->a(Lcom/google/googlenav/intersectionexplorer/k;Z)Z

    .line 430
    monitor-exit v1
    :try_end_c0
    .catchall {:try_start_ae .. :try_end_c0} :catchall_ab

    .line 433
    invoke-static {}, Lcom/google/googlenav/intersectionexplorer/k;->f()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 434
    :try_start_c5
    invoke-static {}, Lcom/google/googlenav/intersectionexplorer/k;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 435
    monitor-exit v1

    goto/16 :goto_39

    :catchall_cf
    move-exception v0

    monitor-exit v1
    :try_end_d1
    .catchall {:try_start_c5 .. :try_end_d1} :catchall_cf

    throw v0
.end method
