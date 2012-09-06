.class LaN/k;
.super Lcom/google/android/maps/driveabout/vector/e;
.source "SourceFile"


# instance fields
.field private final d:Ljava/util/List;

.field private e:Lcom/google/android/maps/driveabout/vector/VectorMapView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1394
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/e;-><init>(Lcom/google/android/maps/driveabout/vector/S;)V

    .line 1388
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaN/k;->d:Ljava/util/List;

    .line 1395
    return-void
.end method

.method private e()V
    .registers 2

    .prologue
    .line 1409
    iget-object v0, p0, LaN/k;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_9

    .line 1410
    iget-object v0, p0, LaN/k;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d_()V

    .line 1412
    :cond_9
    return-void
.end method

.method private declared-synchronized h()[Lcom/google/android/maps/driveabout/vector/aB;
    .registers 3

    .prologue
    .line 1436
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaN/k;->d:Ljava/util/List;

    iget-object v1, p0, LaN/k;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/maps/driveabout/vector/aB;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/vector/aB;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/VectorMapView;)V
    .registers 3
    .parameter

    .prologue
    .line 1398
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, LaN/k;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    .line 1399
    if-nez p1, :cond_a

    .line 1400
    iget-object v0, p0, LaN/k;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1402
    :cond_a
    monitor-exit p0

    return-void

    .line 1398
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/aB;)V
    .registers 3
    .parameter

    .prologue
    .line 1420
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaN/k;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1421
    invoke-direct {p0}, LaN/k;->e()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 1422
    monitor-exit p0

    return-void

    .line 1420
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/cH;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1517
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaN/k;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aB;

    .line 1518
    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/aB;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/cH;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 1517
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1520
    :cond_1a
    monitor-exit p0

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1450
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->b()I

    move-result v0

    if-nez v0, :cond_16

    .line 1451
    invoke-direct {p0}, LaN/k;->h()[Lcom/google/android/maps/driveabout/vector/aB;

    move-result-object v1

    .line 1452
    array-length v2, v1

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v2, :cond_16

    aget-object v3, v1, v0

    .line 1453
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/aB;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V

    .line 1452
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1456
    :cond_16
    return-void
.end method

.method public a(Ljava/util/List;FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;I)V
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1546
    invoke-direct {p0}, LaN/k;->h()[Lcom/google/android/maps/driveabout/vector/aB;

    move-result-object v8

    .line 1547
    array-length v9, v8

    const/4 v0, 0x0

    move v7, v0

    :goto_7
    if-ge v7, v9, :cond_19

    aget-object v0, v8, v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    .line 1548
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/aB;->a(Ljava/util/List;FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;I)V

    .line 1547
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_7

    .line 1550
    :cond_19
    return-void
.end method

.method public declared-synchronized a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 1531
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaN/k;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aB;

    .line 1532
    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/aB;->a(Z)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 1531
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1534
    :cond_1a
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1441
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, LaN/k;->h()[Lcom/google/android/maps/driveabout/vector/aB;

    move-result-object v1

    .line 1442
    array-length v2, v1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_11

    aget-object v3, v1, v0

    .line 1443
    invoke-virtual {v3, p1, p2}, Lcom/google/android/maps/driveabout/vector/aB;->a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_14

    .line 1442
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1445
    :cond_11
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1441
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a_(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 4
    .parameter

    .prologue
    .line 1524
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaN/k;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aB;

    .line 1525
    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/aB;->a_(Lcom/google/android/maps/driveabout/vector/aU;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 1524
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1527
    :cond_1a
    monitor-exit p0

    return-void
.end method

.method public a_(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)Z
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1460
    invoke-direct {p0}, LaN/k;->h()[Lcom/google/android/maps/driveabout/vector/aB;

    move-result-object v1

    .line 1461
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-ltz v0, :cond_16

    .line 1462
    aget-object v2, v1, v0

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/aB;->a_(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1463
    const/4 v0, 0x1

    .line 1466
    :goto_12
    return v0

    .line 1461
    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 1466
    :cond_16
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public b()V
    .registers 3

    .prologue
    .line 1538
    iget-object v0, p0, LaN/k;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aB;

    .line 1539
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aB;->b()V

    goto :goto_6

    .line 1541
    :cond_16
    return-void
.end method

.method public declared-synchronized b(Lcom/google/android/maps/driveabout/vector/aB;)V
    .registers 3
    .parameter

    .prologue
    .line 1425
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaN/k;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1426
    invoke-direct {p0}, LaN/k;->e()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 1427
    monitor-exit p0

    return-void

    .line 1425
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(FFLcom/google/android/maps/driveabout/vector/k;)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1495
    invoke-direct {p0}, LaN/k;->h()[Lcom/google/android/maps/driveabout/vector/aB;

    move-result-object v1

    .line 1496
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-ltz v0, :cond_16

    .line 1497
    aget-object v2, v1, v0

    invoke-virtual {v2, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/aB;->b(FFLcom/google/android/maps/driveabout/vector/k;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1498
    const/4 v0, 0x1

    .line 1501
    :goto_12
    return v0

    .line 1496
    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 1501
    :cond_16
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public declared-synchronized c(Lcom/google/android/maps/driveabout/vector/aB;)V
    .registers 3
    .parameter

    .prologue
    .line 1430
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaN/k;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1431
    iget-object v0, p0, LaN/k;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1432
    invoke-direct {p0}, LaN/k;->e()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 1433
    monitor-exit p0

    return-void

    .line 1430
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)Z
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1471
    invoke-direct {p0}, LaN/k;->h()[Lcom/google/android/maps/driveabout/vector/aB;

    move-result-object v1

    .line 1472
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-ltz v0, :cond_16

    .line 1473
    aget-object v2, v1, v0

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/aB;->c(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1474
    const/4 v0, 0x1

    .line 1477
    :goto_12
    return v0

    .line 1472
    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 1477
    :cond_16
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public d(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)Z
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1506
    invoke-direct {p0}, LaN/k;->h()[Lcom/google/android/maps/driveabout/vector/aB;

    move-result-object v1

    .line 1507
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-ltz v0, :cond_16

    .line 1508
    aget-object v2, v1, v0

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/aB;->d(FFLn/Q;Lcom/google/android/maps/driveabout/vector/k;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1509
    const/4 v0, 0x1

    .line 1512
    :goto_12
    return v0

    .line 1507
    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 1512
    :cond_16
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public m()I
    .registers 2

    .prologue
    .line 1554
    const/4 v0, 0x0

    return v0
.end method

.method public q_()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1484
    invoke-direct {p0}, LaN/k;->h()[Lcom/google/android/maps/driveabout/vector/aB;

    move-result-object v2

    move v0, v1

    .line 1485
    :goto_6
    array-length v3, v2

    if-ge v0, v3, :cond_12

    .line 1486
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/aB;->q_()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1487
    const/4 v1, 0x1

    .line 1490
    :cond_12
    return v1

    .line 1485
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public u_()I
    .registers 2

    .prologue
    .line 1416
    const v0, 0x7a120

    return v0
.end method
