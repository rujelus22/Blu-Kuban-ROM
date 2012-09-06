.class Lat/G;
.super Lat/d;
.source "SourceFile"


# instance fields
.field final synthetic b:Lat/D;

.field private c:Ljava/util/Vector;

.field private d:Ljava/util/Vector;

.field private e:Z

.field private f:Z


# direct methods
.method constructor <init>(Lat/D;B)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1411
    iput-object p1, p0, Lat/G;->b:Lat/D;

    .line 1412
    invoke-static {p1}, Lat/D;->b(Lat/D;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lat/d;-><init>(IB)V

    .line 1388
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lat/G;->c:Ljava/util/Vector;

    .line 1396
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lat/G;->d:Ljava/util/Vector;

    .line 1409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lat/G;->f:Z

    .line 1413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lat/G;->e:Z

    .line 1414
    return-void
.end method


# virtual methods
.method protected a(I)V
    .registers 4
    .parameter

    .prologue
    .line 1506
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1507
    iget-object v1, p0, Lat/G;->c:Ljava/util/Vector;

    invoke-static {v1, p1, v0}, Lcom/google/googlenav/common/util/a;->a(Ljava/util/List;ILjava/util/List;)V

    .line 1508
    iput-object v0, p0, Lat/G;->c:Ljava/util/Vector;

    .line 1513
    iget-object v0, p0, Lat/G;->b:Lat/D;

    invoke-virtual {v0}, Lat/D;->b()V

    .line 1514
    return-void
.end method

.method protected a(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1500
    iget-object v0, p0, Lat/G;->b:Lat/D;

    invoke-virtual {v0, p1, p2}, Lat/D;->a(II)V

    .line 1501
    return-void
.end method

.method declared-synchronized a(Lat/I;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1431
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lat/G;->e:Z

    if-eqz v0, :cond_10

    .line 1432
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Adding tiles to closed request!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 1431
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1435
    :cond_10
    :try_start_10
    iget-object v0, p0, Lat/G;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_d

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    .line 1458
    :cond_19
    :goto_19
    monitor-exit p0

    return-void

    .line 1444
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lat/G;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v1, v0

    :goto_22
    if-lez v1, :cond_42

    .line 1445
    iget-object v0, p0, Lat/G;->d:Ljava/util/Vector;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1446
    if-lt p2, v0, :cond_55

    .line 1447
    iget-object v0, p0, Lat/G;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 1448
    iget-object v0, p0, Lat/G;->d:Ljava/util/Vector;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 1452
    :cond_42
    if-nez v1, :cond_19

    .line 1453
    iget-object v0, p0, Lat/G;->c:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 1454
    iget-object v0, p0, Lat/G;->d:Ljava/util/Vector;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V
    :try_end_54
    .catchall {:try_start_1b .. :try_end_54} :catchall_d

    goto :goto_19

    .line 1444
    :cond_55
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_22
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 5
    .parameter

    .prologue
    .line 1471
    iget-object v0, p0, Lat/G;->b:Lat/D;

    invoke-static {v0}, Lat/D;->c(Lat/D;)I

    .line 1474
    monitor-enter p0

    .line 1475
    const/4 v0, 0x1

    :try_start_7
    iput-boolean v0, p0, Lat/G;->e:Z

    .line 1476
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_31

    .line 1480
    const/4 v0, 0x0

    iput-object v0, p0, Lat/G;->d:Ljava/util/Vector;

    .line 1483
    iget-object v0, p0, Lat/G;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v2, v0, [Lat/P;

    .line 1484
    const/4 v0, 0x0

    move v1, v0

    :goto_17
    iget-object v0, p0, Lat/G;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_34

    .line 1485
    iget-object v0, p0, Lat/G;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/I;

    invoke-virtual {v0}, Lat/I;->c()Lat/P;

    move-result-object v0

    aput-object v0, v2, v1

    .line 1484
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_17

    .line 1476
    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0

    .line 1488
    :cond_34
    invoke-virtual {p0, v2, p1}, Lat/G;->a([Lat/P;Ljava/io/DataOutput;)V

    .line 1489
    return-void
.end method

.method protected a(ILat/P;[B)Z
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1519
    iget-object v0, p0, Lat/G;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/I;

    .line 1520
    if-nez v0, :cond_c

    .line 1540
    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    .line 1522
    :cond_c
    invoke-virtual {v0}, Lat/I;->c()Lat/P;

    move-result-object v1

    invoke-virtual {v1, p2}, Lat/P;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1523
    invoke-virtual {v0, p3}, Lat/I;->a([B)V

    .line 1531
    invoke-virtual {v0}, Lat/I;->g()J

    move-result-wide v1

    int-to-long v3, p1

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lat/I;->a(J)V

    .line 1532
    iget-object v0, p0, Lat/G;->b:Lat/D;

    invoke-static {v0}, Lat/D;->e(Lat/D;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LZ/d;

    .line 1533
    invoke-interface {v0}, LZ/d;->q()V

    goto :goto_2c

    .line 1538
    :cond_3c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 3
    .parameter

    .prologue
    .line 1493
    iget-object v0, p0, Lat/G;->b:Lat/D;

    invoke-static {v0}, Lat/D;->d(Lat/D;)I

    .line 1494
    invoke-super {p0, p1}, Lat/d;->a(Ljava/io/DataInput;)Z

    .line 1495
    iget-object v0, p0, Lat/G;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public z_()Z
    .registers 2

    .prologue
    .line 1462
    iget-boolean v0, p0, Lat/G;->f:Z

    return v0
.end method
