.class public final Lcom/google/common/collect/MapMaker;
.super Lcom/google/common/collect/GenericMapMaker;
.source "SourceFile"


# instance fields
.field b:Z

.field c:I

.field d:I

.field e:I

.field f:Lcom/google/common/collect/MapMakerInternalMap$Strength;

.field g:Lcom/google/common/collect/MapMakerInternalMap$Strength;

.field h:J

.field i:J

.field j:Lcom/google/common/collect/MapMaker$RemovalCause;

.field k:Lcom/google/common/base/Equivalence;

.field l:Lcom/google/common/base/Equivalence;

.field m:Lcom/google/common/base/an;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 144
    invoke-direct {p0}, Lcom/google/common/collect/GenericMapMaker;-><init>()V

    .line 123
    iput v0, p0, Lcom/google/common/collect/MapMaker;->c:I

    .line 124
    iput v0, p0, Lcom/google/common/collect/MapMaker;->d:I

    .line 125
    iput v0, p0, Lcom/google/common/collect/MapMaker;->e:I

    .line 130
    iput-wide v1, p0, Lcom/google/common/collect/MapMaker;->h:J

    .line 131
    iput-wide v1, p0, Lcom/google/common/collect/MapMaker;->i:J

    .line 144
    return-void
.end method

.method private c(JLjava/util/concurrent/TimeUnit;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const-wide/16 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 476
    iget-wide v3, p0, Lcom/google/common/collect/MapMaker;->h:J

    cmp-long v0, v3, v7

    if-nez v0, :cond_48

    move v0, v1

    :goto_b
    const-string v3, "expireAfterWrite was already set to %s ns"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/common/collect/MapMaker;->h:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ag;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 478
    iget-wide v3, p0, Lcom/google/common/collect/MapMaker;->i:J

    cmp-long v0, v3, v7

    if-nez v0, :cond_4a

    move v0, v1

    :goto_21
    const-string v3, "expireAfterAccess was already set to %s ns"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/common/collect/MapMaker;->i:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ag;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 480
    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-ltz v0, :cond_4c

    move v0, v1

    :goto_37
    const-string v3, "duration cannot be negative: %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object p3, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ag;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 481
    return-void

    :cond_48
    move v0, v2

    .line 476
    goto :goto_b

    :cond_4a
    move v0, v2

    .line 478
    goto :goto_21

    :cond_4c
    move v0, v2

    .line 480
    goto :goto_37
.end method


# virtual methods
.method final a(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;
    .registers 6
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 465
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker;->c(JLjava/util/concurrent/TimeUnit;)V

    .line 466
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/MapMaker;->h:J

    .line 467
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->j:Lcom/google/common/collect/MapMaker$RemovalCause;

    if-nez v0, :cond_17

    .line 469
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->EXPIRED:Lcom/google/common/collect/MapMaker$RemovalCause;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->j:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 471
    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/MapMaker;->b:Z

    .line 472
    return-object p0
.end method

.method final a(Lcom/google/common/collect/MapMakerInternalMap$Strength;)Lcom/google/common/collect/MapMaker;
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 337
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->f:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-nez v0, :cond_21

    move v0, v1

    :goto_7
    const-string v3, "Key strength was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/collect/MapMaker;->f:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ag;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 338
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->f:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    .line 339
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eq p1, v0, :cond_20

    .line 341
    iput-boolean v1, p0, Lcom/google/common/collect/MapMaker;->b:Z

    .line 343
    :cond_20
    return-object p0

    :cond_21
    move v0, v2

    .line 337
    goto :goto_7
.end method

.method public final a(Lcom/google/common/base/v;)Ljava/util/concurrent/ConcurrentMap;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 668
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->j:Lcom/google/common/collect/MapMaker$RemovalCause;

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_f

    new-instance v0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingMapAdapter;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingMapAdapter;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/v;)V

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_5

    :cond_f
    new-instance v0, Lcom/google/common/collect/MapMaker$NullComputingConcurrentMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MapMaker$NullComputingConcurrentMap;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/v;)V

    goto :goto_c
.end method

.method final b(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/collect/MapMaker;
    .registers 6
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 514
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker;->c(JLjava/util/concurrent/TimeUnit;)V

    .line 515
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/MapMaker;->i:J

    .line 516
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->j:Lcom/google/common/collect/MapMaker$RemovalCause;

    if-nez v0, :cond_17

    .line 518
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->EXPIRED:Lcom/google/common/collect/MapMaker$RemovalCause;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->j:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 520
    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/MapMaker;->b:Z

    .line 521
    return-object p0
.end method

.method public final b()Ljava/util/concurrent/ConcurrentMap;
    .registers 5

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/google/common/collect/MapMaker;->b:Z

    if-nez v0, :cond_14

    .line 588
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->c()I

    move-result v1

    const/high16 v2, 0x3f40

    invoke-virtual {p0}, Lcom/google/common/collect/MapMaker;->d()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 590
    :goto_13
    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->j:Lcom/google/common/collect/MapMaker$RemovalCause;

    if-nez v0, :cond_1e

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MapMakerInternalMap;-><init>(Lcom/google/common/collect/MapMaker;)V

    goto :goto_13

    :cond_1e
    new-instance v0, Lcom/google/common/collect/MapMaker$NullConcurrentMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MapMaker$NullConcurrentMap;-><init>(Lcom/google/common/collect/MapMaker;)V

    goto :goto_13
.end method

.method final c()I
    .registers 3

    .prologue
    .line 211
    iget v0, p0, Lcom/google/common/collect/MapMaker;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x10

    :goto_7
    return v0

    :cond_8
    iget v0, p0, Lcom/google/common/collect/MapMaker;->c:I

    goto :goto_7
.end method

.method final d()I
    .registers 3

    .prologue
    .line 279
    iget v0, p0, Lcom/google/common/collect/MapMaker;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x4

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lcom/google/common/collect/MapMaker;->d:I

    goto :goto_6
.end method

.method final e()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .registers 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->f:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-static {v0, v1}, Lcom/google/common/base/aa;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method final f()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .registers 3

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->g:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-static {v0, v1}, Lcom/google/common/base/aa;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 8

    .prologue
    const-wide/16 v5, -0x1

    const/4 v3, -0x1

    .line 679
    invoke-static {p0}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;)Lcom/google/common/base/ab;

    move-result-object v0

    .line 680
    iget v1, p0, Lcom/google/common/collect/MapMaker;->c:I

    if-eq v1, v3, :cond_12

    .line 681
    const-string v1, "initialCapacity"

    iget v2, p0, Lcom/google/common/collect/MapMaker;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ab;->a(Ljava/lang/String;I)Lcom/google/common/base/ab;

    .line 683
    :cond_12
    iget v1, p0, Lcom/google/common/collect/MapMaker;->d:I

    if-eq v1, v3, :cond_1d

    .line 684
    const-string v1, "concurrencyLevel"

    iget v2, p0, Lcom/google/common/collect/MapMaker;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ab;->a(Ljava/lang/String;I)Lcom/google/common/base/ab;

    .line 686
    :cond_1d
    iget v1, p0, Lcom/google/common/collect/MapMaker;->e:I

    if-eq v1, v3, :cond_28

    .line 687
    const-string v1, "maximumSize"

    iget v2, p0, Lcom/google/common/collect/MapMaker;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ab;->a(Ljava/lang/String;I)Lcom/google/common/base/ab;

    .line 689
    :cond_28
    iget-wide v1, p0, Lcom/google/common/collect/MapMaker;->h:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_48

    .line 690
    const-string v1, "expireAfterWrite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/google/common/collect/MapMaker;->h:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ab;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ab;

    .line 692
    :cond_48
    iget-wide v1, p0, Lcom/google/common/collect/MapMaker;->i:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_68

    .line 693
    const-string v1, "expireAfterAccess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/google/common/collect/MapMaker;->i:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ab;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ab;

    .line 695
    :cond_68
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->f:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eqz v1, :cond_7b

    .line 696
    const-string v1, "keyStrength"

    iget-object v2, p0, Lcom/google/common/collect/MapMaker;->f:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ab;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ab;

    .line 698
    :cond_7b
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->g:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    if-eqz v1, :cond_8e

    .line 699
    const-string v1, "valueStrength"

    iget-object v2, p0, Lcom/google/common/collect/MapMaker;->g:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ab;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ab;

    .line 701
    :cond_8e
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->k:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_97

    .line 702
    const-string v1, "keyEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/common/base/ab;->a(Ljava/lang/Object;)Lcom/google/common/base/ab;

    .line 704
    :cond_97
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->l:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_a0

    .line 705
    const-string v1, "valueEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/common/base/ab;->a(Ljava/lang/Object;)Lcom/google/common/base/ab;

    .line 707
    :cond_a0
    iget-object v1, p0, Lcom/google/common/collect/MapMaker;->a:Lcom/google/common/collect/fr;

    if-eqz v1, :cond_a9

    .line 708
    const-string v1, "removalListener"

    invoke-virtual {v0, v1}, Lcom/google/common/base/ab;->a(Ljava/lang/Object;)Lcom/google/common/base/ab;

    .line 710
    :cond_a9
    invoke-virtual {v0}, Lcom/google/common/base/ab;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
