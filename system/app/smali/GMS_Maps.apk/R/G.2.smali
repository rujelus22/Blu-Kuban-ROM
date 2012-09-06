.class Lr/G;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:[I

.field final b:[I

.field final c:[I

.field final d:[I

.field final e:[I

.field f:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field g:I

.field h:I


# direct methods
.method constructor <init>(I)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2389
    new-array v0, p1, [I

    iput-object v0, p0, Lr/G;->a:[I

    .line 2390
    new-array v0, p1, [I

    iput-object v0, p0, Lr/G;->b:[I

    .line 2392
    new-array v0, p1, [I

    iput-object v0, p0, Lr/G;->c:[I

    .line 2393
    new-array v0, p1, [I

    iput-object v0, p0, Lr/G;->d:[I

    .line 2394
    new-array v0, p1, [I

    iput-object v0, p0, Lr/G;->e:[I

    .line 2396
    iput v1, p0, Lr/G;->g:I

    .line 2397
    iput v1, p0, Lr/G;->h:I

    .line 2398
    return-void
.end method


# virtual methods
.method a(Ljava/util/Set;)I
    .registers 6
    .parameter

    .prologue
    .line 2570
    const v2, 0x7fffffff

    .line 2571
    const/4 v1, -0x1

    .line 2572
    const/4 v0, 0x0

    :goto_5
    iget v3, p0, Lr/G;->g:I

    if-ge v0, v3, :cond_2f

    .line 2573
    invoke-virtual {p0, v0}, Lr/G;->d(I)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 2574
    iget-object v3, p0, Lr/G;->e:[I

    aget v3, v3, v0

    if-nez v3, :cond_2c

    iget-object v3, p0, Lr/G;->a:[I

    aget v3, v3, v0

    if-ge v3, v2, :cond_2c

    if-eqz p1, :cond_27

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 2579
    :cond_27
    iget-object v1, p0, Lr/G;->a:[I

    aget v2, v1, v0

    move v1, v0

    .line 2572
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2583
    :cond_2f
    return v1
.end method

.method a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2513
    invoke-virtual {p0}, Lr/G;->f()V

    .line 2514
    iget-object v0, p0, Lr/G;->a:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2515
    iget-object v0, p0, Lr/G;->b:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2517
    iget-object v0, p0, Lr/G;->c:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2518
    iget-object v0, p0, Lr/G;->d:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2520
    iget-object v0, p0, Lr/G;->e:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2522
    iput v1, p0, Lr/G;->g:I

    .line 2523
    iput v1, p0, Lr/G;->h:I

    .line 2524
    return-void
.end method

.method a(I)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2501
    invoke-virtual {p0}, Lr/G;->f()V

    .line 2502
    iget-object v0, p0, Lr/G;->a:[I

    aput v1, v0, p1

    .line 2503
    iget-object v0, p0, Lr/G;->b:[I

    aput v1, v0, p1

    .line 2504
    iget-object v0, p0, Lr/G;->c:[I

    aput v1, v0, p1

    .line 2505
    iget-object v0, p0, Lr/G;->d:[I

    aput v1, v0, p1

    .line 2506
    iget-object v0, p0, Lr/G;->e:[I

    aget v0, v0, p1

    if-lez v0, :cond_20

    .line 2507
    iget v0, p0, Lr/G;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lr/G;->h:I

    .line 2509
    :cond_20
    iget-object v0, p0, Lr/G;->e:[I

    aput v1, v0, p1

    .line 2510
    return-void
.end method

.method a(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2532
    iget-object v0, p0, Lr/G;->a:[I

    aput p2, v0, p1

    .line 2533
    return-void
.end method

.method a(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V
    .registers 2
    .parameter

    .prologue
    .line 2401
    iput-object p1, p0, Lr/G;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 2402
    return-void
.end method

.method a(Lr/E;)V
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2472
    invoke-virtual {p0}, Lr/G;->f()V

    .line 2473
    invoke-static {p1}, Lr/E;->a(Lr/E;)I

    move-result v1

    .line 2475
    iget-object v2, p0, Lr/G;->e:[I

    aget v2, v2, v1

    if-lez v2, :cond_14

    .line 2476
    iget v2, p0, Lr/G;->h:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lr/G;->h:I

    .line 2478
    :cond_14
    iget-object v2, p0, Lr/G;->a:[I

    aput v0, v2, v1

    .line 2479
    iget-object v2, p0, Lr/G;->b:[I

    invoke-virtual {p1}, Lr/E;->c()I

    move-result v3

    aput v3, v2, v1

    .line 2480
    iget-object v2, p0, Lr/G;->c:[I

    invoke-static {p1}, Lr/E;->b(Lr/E;)I

    move-result v3

    aput v3, v2, v1

    .line 2481
    iget-object v2, p0, Lr/G;->d:[I

    aput v0, v2, v1

    .line 2482
    iget-object v2, p0, Lr/G;->e:[I

    aput v0, v2, v1

    .line 2483
    :goto_30
    invoke-static {p1}, Lr/E;->b(Lr/E;)I

    move-result v2

    if-ge v0, v2, :cond_59

    .line 2484
    invoke-virtual {p1, v0}, Lr/E;->b(I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_56

    .line 2485
    iget-object v2, p0, Lr/G;->d:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    .line 2486
    invoke-virtual {p1, v0}, Lr/E;->e(I)I

    move-result v2

    .line 2487
    if-lez v2, :cond_56

    .line 2488
    iget-object v2, p0, Lr/G;->e:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    .line 2483
    :cond_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 2492
    :cond_59
    iget-object v0, p0, Lr/G;->d:[I

    aget v0, v0, v1

    if-lez v0, :cond_67

    iget v0, p0, Lr/G;->g:I

    if-lt v1, v0, :cond_67

    .line 2493
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lr/G;->g:I

    .line 2495
    :cond_67
    iget-object v0, p0, Lr/G;->e:[I

    aget v0, v0, v1

    if-lez v0, :cond_73

    .line 2496
    iget v0, p0, Lr/G;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr/G;->h:I

    .line 2498
    :cond_73
    return-void
.end method

.method a(Lr/X;)V
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2405
    const/16 v1, 0x2000

    new-array v2, v1, [B

    move v1, v0

    .line 2407
    :goto_6
    iget-object v3, p0, Lr/G;->a:[I

    array-length v3, v3

    if-ge v0, v3, :cond_13

    .line 2408
    invoke-virtual {p0, v2, v1, v0}, Lr/G;->a([BII)V

    .line 2409
    add-int/lit8 v1, v1, 0x14

    .line 2407
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2411
    :cond_13
    invoke-interface {p1, v2}, Lr/X;->b([B)V

    .line 2412
    return-void
.end method

.method a([BII)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2415
    iget-object v0, p0, Lr/G;->a:[I

    aget v0, v0, p3

    invoke-static {p1, p2, v0}, Lr/w;->a([BII)V

    add-int/lit8 v0, p2, 0x4

    .line 2416
    iget-object v1, p0, Lr/G;->b:[I

    aget v1, v1, p3

    invoke-static {p1, v0, v1}, Lr/w;->a([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 2419
    iget-object v1, p0, Lr/G;->c:[I

    aget v1, v1, p3

    invoke-static {p1, v0, v1}, Lr/w;->b([BII)V

    add-int/lit8 v0, v0, 0x2

    .line 2420
    iget-object v1, p0, Lr/G;->d:[I

    aget v1, v1, p3

    invoke-static {p1, v0, v1}, Lr/w;->b([BII)V

    add-int/lit8 v0, v0, 0x2

    .line 2423
    iget-object v1, p0, Lr/G;->e:[I

    aget v1, v1, p3

    invoke-static {p1, v0, v1}, Lr/w;->a([BII)V

    add-int/lit8 v0, v0, 0x4

    .line 2426
    add-int/lit8 v1, v0, -0x10

    const/16 v2, 0x10

    invoke-static {p1, v1, v2}, Lr/w;->c([BII)I

    move-result v1

    invoke-static {p1, v0, v1}, Lr/w;->a([BII)V

    .line 2428
    return-void
.end method

.method b()I
    .registers 3

    .prologue
    .line 2563
    invoke-virtual {p0}, Lr/G;->f()V

    .line 2564
    iget v0, p0, Lr/G;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lr/G;->g:I

    .line 2565
    invoke-virtual {p0, v0}, Lr/G;->a(I)V

    .line 2566
    return v0
.end method

.method b(I)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2540
    invoke-virtual {p0}, Lr/G;->f()V

    .line 2541
    iget-object v0, p0, Lr/G;->a:[I

    aput v1, v0, p1

    .line 2542
    iget-object v0, p0, Lr/G;->c:[I

    aput v1, v0, p1

    .line 2543
    iget-object v0, p0, Lr/G;->d:[I

    aput v1, v0, p1

    .line 2544
    iget-object v0, p0, Lr/G;->e:[I

    aget v0, v0, p1

    if-lez v0, :cond_1c

    .line 2545
    iget v0, p0, Lr/G;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lr/G;->h:I

    .line 2547
    :cond_1c
    iget-object v0, p0, Lr/G;->e:[I

    aput v1, v0, p1

    .line 2548
    iget-object v0, p0, Lr/G;->b:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    .line 2549
    return-void
.end method

.method b(Lr/X;)V
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2431
    invoke-virtual {p0}, Lr/G;->f()V

    .line 2432
    const/16 v1, 0x2000

    new-array v2, v1, [B

    .line 2433
    invoke-interface {p1, v2}, Lr/X;->a([B)V

    .line 2435
    iput v0, p0, Lr/G;->g:I

    .line 2436
    iput v0, p0, Lr/G;->h:I

    move v1, v0

    .line 2438
    :goto_10
    iget-object v3, p0, Lr/G;->a:[I

    array-length v3, v3

    if-ge v0, v3, :cond_74

    .line 2439
    iget-object v3, p0, Lr/G;->a:[I

    invoke-static {v2, v1}, Lr/w;->a([BI)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v1, v1, 0x4

    .line 2440
    iget-object v3, p0, Lr/G;->b:[I

    invoke-static {v2, v1}, Lr/w;->a([BI)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v1, v1, 0x4

    .line 2442
    iget-object v3, p0, Lr/G;->c:[I

    invoke-static {v2, v1}, Lr/w;->b([BI)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v1, v1, 0x2

    .line 2443
    iget-object v3, p0, Lr/G;->d:[I

    invoke-static {v2, v1}, Lr/w;->b([BI)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v1, v1, 0x2

    .line 2445
    iget-object v3, p0, Lr/G;->e:[I

    invoke-static {v2, v1}, Lr/w;->a([BI)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v1, v1, 0x4

    .line 2448
    invoke-static {v2, v1}, Lr/w;->a([BI)I

    move-result v3

    .line 2449
    add-int/lit8 v4, v1, -0x10

    const/16 v5, 0x10

    invoke-static {v2, v4, v5}, Lr/w;->c([BII)I

    move-result v4

    .line 2451
    if-eq v3, v4, :cond_5d

    .line 2452
    invoke-virtual {p0, v0}, Lr/G;->b(I)V

    .line 2462
    :cond_58
    :goto_58
    add-int/lit8 v1, v1, 0x4

    .line 2438
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2455
    :cond_5d
    iget-object v3, p0, Lr/G;->d:[I

    aget v3, v3, v0

    if-lez v3, :cond_67

    .line 2456
    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lr/G;->g:I

    .line 2458
    :cond_67
    iget-object v3, p0, Lr/G;->e:[I

    aget v3, v3, v0

    if-lez v3, :cond_58

    .line 2459
    iget v3, p0, Lr/G;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lr/G;->h:I

    goto :goto_58

    .line 2464
    :cond_74
    return-void
.end method

.method c()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 2587
    move v1, v0

    .line 2588
    :goto_2
    iget v2, p0, Lr/G;->g:I

    if-ge v0, v2, :cond_e

    .line 2589
    iget-object v2, p0, Lr/G;->d:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 2588
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2591
    :cond_e
    return v1
.end method

.method c(I)Z
    .registers 4
    .parameter

    .prologue
    .line 2552
    iget-object v0, p0, Lr/G;->b:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method d()J
    .registers 8

    .prologue
    const-wide/16 v3, 0x0

    .line 2595
    .line 2596
    const/4 v0, 0x0

    move-wide v1, v3

    :goto_4
    iget v5, p0, Lr/G;->g:I

    if-ge v0, v5, :cond_19

    .line 2597
    iget-object v5, p0, Lr/G;->b:[I

    aget v5, v5, v0

    if-lez v5, :cond_17

    iget-object v5, p0, Lr/G;->b:[I

    aget v5, v5, v0

    int-to-long v5, v5

    :goto_13
    add-long/2addr v1, v5

    .line 2596
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_17
    move-wide v5, v3

    .line 2597
    goto :goto_13

    .line 2599
    :cond_19
    return-wide v1
.end method

.method d(I)Z
    .registers 3
    .parameter

    .prologue
    .line 2558
    iget-object v0, p0, Lr/G;->d:[I

    aget v0, v0, p1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method e()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2603
    move v0, v1

    move v2, v1

    .line 2604
    :goto_3
    iget v3, p0, Lr/G;->g:I

    if-ge v0, v3, :cond_14

    .line 2605
    invoke-virtual {p0, v0}, Lr/G;->d(I)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    :goto_e
    add-int/2addr v2, v3

    .line 2604
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_12
    move v3, v1

    .line 2605
    goto :goto_e

    .line 2607
    :cond_14
    return v2
.end method

.method f()V
    .registers 3

    .prologue
    .line 2611
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lr/G;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lr/G;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2613
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "State write lock needed to modify ShardsStats"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2615
    :cond_1a
    return-void
.end method
