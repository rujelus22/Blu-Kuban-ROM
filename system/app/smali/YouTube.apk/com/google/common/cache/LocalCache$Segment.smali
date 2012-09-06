.class Lcom/google/common/cache/LocalCache$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "SourceFile"


# instance fields
.field final accessQueue:Ljava/util/Queue;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field volatile count:I

.field final keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

.field final map:Lcom/google/common/cache/LocalCache;

.field final maxSegmentWeight:J

.field modCount:I

.field final readCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final recencyQueue:Ljava/util/Queue;

.field final statsCounter:Lcom/google/common/cache/c;

.field volatile table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field threshold:I

.field totalWeight:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field final valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

.field final writeQueue:Ljava/util/Queue;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;IJLcom/google/common/cache/c;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2138
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 2118
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2139
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    .line 2140
    iput-wide p3, p0, Lcom/google/common/cache/LocalCache$Segment;->maxSegmentWeight:J

    .line 2141
    iput-object p5, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/c;

    .line 2142
    invoke-virtual {p0, p2}, Lcom/google/common/cache/LocalCache$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache$Segment;->initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 2144
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->h()Z

    move-result v0

    if-eqz v0, :cond_5a

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :goto_23
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 2147
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->i()Z

    move-result v0

    if-eqz v0, :cond_30

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :cond_30
    iput-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 2150
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->d()Z

    move-result v0

    if-eqz v0, :cond_5c

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_3d
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->recencyQueue:Ljava/util/Queue;

    .line 2154
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->e()Z

    move-result v0

    if-eqz v0, :cond_61

    new-instance v0, Lcom/google/common/cache/aq;

    invoke-direct {v0}, Lcom/google/common/cache/aq;-><init>()V

    :goto_4a
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    .line 2158
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->d()Z

    move-result v0

    if-eqz v0, :cond_66

    new-instance v0, Lcom/google/common/cache/n;

    invoke-direct {v0}, Lcom/google/common/cache/n;-><init>()V

    :goto_57
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    .line 2161
    return-void

    :cond_5a
    move-object v0, v1

    .line 2144
    goto :goto_23

    .line 2150
    :cond_5c
    invoke-static {}, Lcom/google/common/cache/LocalCache;->l()Ljava/util/Queue;

    move-result-object v0

    goto :goto_3d

    .line 2154
    :cond_61
    invoke-static {}, Lcom/google/common/cache/LocalCache;->l()Ljava/util/Queue;

    move-result-object v0

    goto :goto_4a

    .line 2158
    :cond_66
    invoke-static {}, Lcom/google/common/cache/LocalCache;->l()Ljava/util/Queue;

    move-result-object v0

    goto :goto_57
.end method


# virtual methods
.method cleanUp()V
    .registers 3

    .prologue
    .line 3470
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/an;

    invoke-virtual {v0}, Lcom/google/common/base/an;->a()J

    move-result-wide v0

    .line 3471
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->runLockedCleanup(J)V

    .line 3472
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->runUnlockedCleanup()V

    .line 3473
    return-void
.end method

.method clear()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 3236
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v0, :cond_61

    .line 3237
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3239
    :try_start_8
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move v2, v1

    .line 3240
    :goto_b
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_31

    .line 3241
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/x;

    :goto_17
    if-eqz v0, :cond_2d

    .line 3243
    invoke-interface {v0}, Lcom/google/common/cache/x;->getValueReference()Lcom/google/common/cache/ag;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/cache/ag;->d()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 3244
    sget-object v4, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v4}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Lcom/google/common/cache/x;Lcom/google/common/cache/RemovalCause;)V

    .line 3241
    :cond_28
    invoke-interface {v0}, Lcom/google/common/cache/x;->getNext()Lcom/google/common/cache/x;

    move-result-object v0

    goto :goto_17

    .line 3240
    :cond_2d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b

    :cond_31
    move v0, v1

    .line 3248
    :goto_32
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3f

    .line 3249
    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3248
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 3251
    :cond_3f
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->clearReferenceQueues()V

    .line 3252
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 3253
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 3254
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3256
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3257
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_5b
    .catchall {:try_start_8 .. :try_end_5b} :catchall_62

    .line 3259
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3260
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3263
    :cond_61
    return-void

    .line 3259
    :catchall_62
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3260
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method clearKeyReferenceQueue()V
    .registers 2

    .prologue
    .line 2552
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2553
    return-void
.end method

.method clearReferenceQueues()V
    .registers 2

    .prologue
    .line 2543
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->h()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2544
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->clearKeyReferenceQueue()V

    .line 2546
    :cond_b
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->i()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2547
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->clearValueReferenceQueue()V

    .line 2549
    :cond_16
    return-void
.end method

.method clearValueReferenceQueue()V
    .registers 2

    .prologue
    .line 2556
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2557
    return-void
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2805
    :try_start_1
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v1, :cond_26

    .line 2806
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/an;

    invoke-virtual {v1}, Lcom/google/common/base/an;->a()J

    move-result-wide v1

    .line 2807
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->getLiveEntry(Ljava/lang/Object;IJ)Lcom/google/common/cache/x;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_2a

    move-result-object v1

    .line 2808
    if-nez v1, :cond_17

    .line 2809
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2816
    :goto_16
    return v0

    .line 2811
    :cond_17
    :try_start_17
    invoke-interface {v1}, Lcom/google/common/cache/x;->getValueReference()Lcom/google/common/cache/ag;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/cache/ag;->get()Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_2a

    move-result-object v1

    if-eqz v1, :cond_22

    const/4 v0, 0x1

    .line 2816
    :cond_22
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_16

    .line 2814
    :cond_26
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_16

    :catchall_2a
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    throw v0
.end method

.method containsValue(Ljava/lang/Object;)Z
    .registers 11
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2827
    :try_start_1
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v0, :cond_3c

    .line 2828
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/an;

    invoke-virtual {v0}, Lcom/google/common/base/an;->a()J

    move-result-wide v3

    .line 2829
    iget-object v5, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2830
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v6

    move v2, v1

    .line 2831
    :goto_14
    if-ge v2, v6, :cond_3c

    .line 2832
    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/x;

    :goto_1c
    if-eqz v0, :cond_38

    .line 2833
    invoke-virtual {p0, v0, v3, v4}, Lcom/google/common/cache/LocalCache$Segment;->getLiveValue(Lcom/google/common/cache/x;J)Ljava/lang/Object;

    move-result-object v7

    .line 2834
    if-eqz v7, :cond_33

    .line 2835
    iget-object v8, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v8, v8, Lcom/google/common/cache/LocalCache;->h:Lcom/google/common/base/Equivalence;

    invoke-virtual {v8, p1, v7}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_41

    move-result v7

    if-eqz v7, :cond_33

    .line 2838
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    const/4 v0, 0x1

    .line 2844
    :goto_32
    return v0

    .line 2832
    :cond_33
    :try_start_33
    invoke-interface {v0}, Lcom/google/common/cache/x;->getNext()Lcom/google/common/cache/x;
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_41

    move-result-object v0

    goto :goto_1c

    .line 2831
    :cond_38
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_14

    .line 2844
    :cond_3c
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    move v0, v1

    goto :goto_32

    :catchall_41
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    throw v0
.end method

.method copyEntry(Lcom/google/common/cache/x;Lcom/google/common/cache/x;)Lcom/google/common/cache/x;
    .registers 6
    .parameter
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2183
    invoke-interface {p1}, Lcom/google/common/cache/x;->getValueReference()Lcom/google/common/cache/ag;

    move-result-object v0

    .line 2184
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->s:Lcom/google/common/cache/LocalCache$EntryFactory;

    invoke-virtual {v1, p0, p1, p2}, Lcom/google/common/cache/LocalCache$EntryFactory;->copyEntry(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/x;Lcom/google/common/cache/x;)Lcom/google/common/cache/x;

    move-result-object v1

    .line 2185
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v0, v2, v1}, Lcom/google/common/cache/ag;->a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/cache/x;)Lcom/google/common/cache/ag;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/common/cache/x;->setValueReference(Lcom/google/common/cache/ag;)V

    .line 2186
    return-object v1
.end method

.method drainKeyReferenceQueue()V
    .registers 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2514
    const/4 v0, 0x0

    move v1, v0

    .line 2515
    :goto_2
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 2517
    check-cast v0, Lcom/google/common/cache/x;

    .line 2518
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v2, v0}, Lcom/google/common/cache/LocalCache;->a(Lcom/google/common/cache/x;)V

    .line 2519
    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_19

    move v1, v0

    .line 2520
    goto :goto_2

    .line 2523
    :cond_19
    return-void
.end method

.method drainRecencyQueue()V
    .registers 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2619
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/x;

    if-eqz v0, :cond_18

    .line 2624
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2625
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2628
    :cond_18
    return-void
.end method

.method drainReferenceQueues()V
    .registers 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2503
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->h()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2504
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainKeyReferenceQueue()V

    .line 2506
    :cond_b
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->i()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2507
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainValueReferenceQueue()V

    .line 2509
    :cond_16
    return-void
.end method

.method drainValueReferenceQueue()V
    .registers 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2528
    const/4 v0, 0x0

    move v1, v0

    .line 2529
    :goto_2
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 2531
    check-cast v0, Lcom/google/common/cache/ag;

    .line 2532
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v2, v0}, Lcom/google/common/cache/LocalCache;->a(Lcom/google/common/cache/ag;)V

    .line 2533
    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_19

    move v1, v0

    .line 2534
    goto :goto_2

    .line 2537
    :cond_19
    return-void
.end method

.method enqueueNotification(Lcom/google/common/cache/x;Lcom/google/common/cache/RemovalCause;)V
    .registers 6
    .parameter
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2667
    invoke-interface {p1}, Lcom/google/common/cache/x;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/cache/x;->getHash()I

    move-result v1

    invoke-interface {p1}, Lcom/google/common/cache/x;->getValueReference()Lcom/google/common/cache/ag;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/ag;Lcom/google/common/cache/RemovalCause;)V

    .line 2668
    return-void
.end method

.method enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/ag;Lcom/google/common/cache/RemovalCause;)V
    .registers 7
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2673
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:I

    invoke-interface {p3}, Lcom/google/common/cache/ag;->a()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:I

    .line 2674
    invoke-virtual {p4}, Lcom/google/common/cache/RemovalCause;->wasEvicted()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2675
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/c;

    invoke-interface {v0}, Lcom/google/common/cache/c;->a()V

    .line 2677
    :cond_14
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->p:Ljava/util/Queue;

    sget-object v1, Lcom/google/common/cache/LocalCache;->w:Ljava/util/Queue;

    if-eq v0, v1, :cond_2c

    .line 2678
    invoke-interface {p3}, Lcom/google/common/cache/ag;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2679
    new-instance v1, Lcom/google/common/cache/av;

    invoke-direct {v1, p1, v0, p4}, Lcom/google/common/cache/av;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/RemovalCause;)V

    .line 2680
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->p:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2682
    :cond_2c
    return-void
.end method

.method evictEntries()V
    .registers 5
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2690
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->a()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2701
    :cond_8
    return-void

    .line 2694
    :cond_9
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainRecencyQueue()V

    .line 2695
    :cond_c
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/common/cache/LocalCache$Segment;->maxSegmentWeight:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    .line 2696
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->getNextEvictable()Lcom/google/common/cache/x;

    move-result-object v0

    .line 2697
    invoke-interface {v0}, Lcom/google/common/cache/x;->getHash()I

    move-result v1

    sget-object v2, Lcom/google/common/cache/RemovalCause;->SIZE:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntry(Lcom/google/common/cache/x;ILcom/google/common/cache/RemovalCause;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2698
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method expand()V
    .registers 12
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2927
    iget-object v7, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2928
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    .line 2929
    const/high16 v0, 0x4000

    if-lt v8, v0, :cond_b

    .line 2992
    :goto_a
    return-void

    .line 2943
    :cond_b
    iget v5, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2944
    shl-int/lit8 v0, v8, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v9

    .line 2945
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    .line 2946
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .line 2947
    const/4 v0, 0x0

    move v6, v0

    :goto_25
    if-ge v6, v8, :cond_83

    .line 2950
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/x;

    .line 2952
    if-eqz v0, :cond_8a

    .line 2953
    invoke-interface {v0}, Lcom/google/common/cache/x;->getNext()Lcom/google/common/cache/x;

    move-result-object v2

    .line 2954
    invoke-interface {v0}, Lcom/google/common/cache/x;->getHash()I

    move-result v1

    and-int v4, v1, v10

    .line 2957
    if-nez v2, :cond_44

    .line 2958
    invoke-virtual {v9, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v2, v5

    .line 2947
    :cond_3f
    :goto_3f
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v5, v2

    goto :goto_25

    :cond_44
    move-object v1, v0

    .line 2965
    :goto_45
    if-eqz v2, :cond_55

    .line 2966
    invoke-interface {v2}, Lcom/google/common/cache/x;->getHash()I

    move-result v3

    and-int/2addr v3, v10

    .line 2967
    if-eq v3, v4, :cond_88

    move-object v1, v2

    .line 2965
    :goto_4f
    invoke-interface {v2}, Lcom/google/common/cache/x;->getNext()Lcom/google/common/cache/x;

    move-result-object v2

    move v4, v3

    goto :goto_45

    .line 2973
    :cond_55
    invoke-virtual {v9, v4, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v3, v0

    move v2, v5

    .line 2976
    :goto_5a
    if-eq v3, v1, :cond_3f

    .line 2977
    invoke-virtual {p0, v3}, Lcom/google/common/cache/LocalCache$Segment;->isCollected(Lcom/google/common/cache/x;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 2978
    invoke-virtual {p0, v3}, Lcom/google/common/cache/LocalCache$Segment;->removeCollectedEntry(Lcom/google/common/cache/x;)V

    .line 2979
    add-int/lit8 v0, v2, -0x1

    .line 2976
    :goto_67
    invoke-interface {v3}, Lcom/google/common/cache/x;->getNext()Lcom/google/common/cache/x;

    move-result-object v2

    move-object v3, v2

    move v2, v0

    goto :goto_5a

    .line 2981
    :cond_6e
    invoke-interface {v3}, Lcom/google/common/cache/x;->getHash()I

    move-result v0

    and-int v4, v0, v10

    .line 2982
    invoke-virtual {v9, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/x;

    .line 2983
    invoke-virtual {p0, v3, v0}, Lcom/google/common/cache/LocalCache$Segment;->copyEntry(Lcom/google/common/cache/x;Lcom/google/common/cache/x;)Lcom/google/common/cache/x;

    move-result-object v0

    .line 2984
    invoke-virtual {v9, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v0, v2

    goto :goto_67

    .line 2990
    :cond_83
    iput-object v9, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2991
    iput v5, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    goto :goto_a

    :cond_88
    move v3, v4

    goto :goto_4f

    :cond_8a
    move v2, v5

    goto :goto_3f
.end method

.method expireEntries(J)V
    .registers 6
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2648
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainRecencyQueue()V

    .line 2651
    :cond_3
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/x;

    if-eqz v0, :cond_27

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/x;J)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 2652
    invoke-interface {v0}, Lcom/google/common/cache/x;->getHash()I

    move-result v1

    sget-object v2, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntry(Lcom/google/common/cache/x;ILcom/google/common/cache/RemovalCause;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2653
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2656
    :cond_27
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/x;

    if-eqz v0, :cond_4b

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/x;J)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 2657
    invoke-interface {v0}, Lcom/google/common/cache/x;->getHash()I

    move-result v1

    sget-object v2, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntry(Lcom/google/common/cache/x;ILcom/google/common/cache/RemovalCause;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 2658
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2661
    :cond_4b
    return-void
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 11
    .parameter
    .parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2783
    :try_start_1
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v1, :cond_39

    .line 2784
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/an;

    invoke-virtual {v1}, Lcom/google/common/base/an;->a()J

    move-result-wide v5

    .line 2785
    invoke-virtual {p0, p1, p2, v5, v6}, Lcom/google/common/cache/LocalCache$Segment;->getLiveEntry(Ljava/lang/Object;IJ)Lcom/google/common/cache/x;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_3d

    move-result-object v1

    .line 2786
    if-nez v1, :cond_17

    .line 2787
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2799
    :goto_16
    return-object v0

    .line 2790
    :cond_17
    :try_start_17
    invoke-interface {v1}, Lcom/google/common/cache/x;->getValueReference()Lcom/google/common/cache/ag;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/cache/ag;->get()Ljava/lang/Object;

    move-result-object v4

    .line 2791
    if-eqz v4, :cond_36

    .line 2792
    invoke-virtual {p0, v1, v5, v6}, Lcom/google/common/cache/LocalCache$Segment;->recordRead(Lcom/google/common/cache/x;J)V

    .line 2793
    invoke-interface {v1}, Lcom/google/common/cache/x;->getKey()Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v7, v0, Lcom/google/common/cache/LocalCache;->u:Lcom/google/common/cache/CacheLoader;

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/google/common/cache/LocalCache$Segment;->scheduleRefresh(Lcom/google/common/cache/x;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_3d

    move-result-object v0

    .line 2799
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_16

    .line 2795
    :cond_36
    :try_start_36
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryDrainReferenceQueues()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3d

    .line 2797
    :cond_39
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_16

    :catchall_3d
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    throw v0
.end method

.method get(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2209
    :try_start_0
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v0, :cond_3f

    .line 2211
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->getEntry(Ljava/lang/Object;I)Lcom/google/common/cache/x;

    move-result-object v1

    .line 2212
    if-eqz v1, :cond_3f

    .line 2213
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/an;

    invoke-virtual {v0}, Lcom/google/common/base/an;->a()J

    move-result-wide v5

    .line 2214
    invoke-virtual {p0, v1, v5, v6}, Lcom/google/common/cache/LocalCache$Segment;->getLiveValue(Lcom/google/common/cache/x;J)Ljava/lang/Object;

    move-result-object v4

    .line 2215
    if-eqz v4, :cond_2d

    .line 2216
    invoke-virtual {p0, v1, v5, v6}, Lcom/google/common/cache/LocalCache$Segment;->recordRead(Lcom/google/common/cache/x;J)V

    .line 2217
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/c;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/google/common/cache/c;->a(I)V

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v7, p3

    .line 2218
    invoke-virtual/range {v0 .. v7}, Lcom/google/common/cache/LocalCache$Segment;->scheduleRefresh(Lcom/google/common/cache/x;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_0 .. :try_end_28} :catchall_59
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_28} :catch_47

    move-result-object v0

    .line 2238
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    :goto_2c
    return-object v0

    .line 2220
    :cond_2d
    :try_start_2d
    invoke-interface {v1}, Lcom/google/common/cache/x;->getValueReference()Lcom/google/common/cache/ag;

    move-result-object v0

    .line 2221
    invoke-interface {v0}, Lcom/google/common/cache/ag;->c()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 2222
    invoke-virtual {p0, v1, p1, v0}, Lcom/google/common/cache/LocalCache$Segment;->waitForLoadingValue(Lcom/google/common/cache/x;Ljava/lang/Object;Lcom/google/common/cache/ag;)Ljava/lang/Object;
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_59
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2d .. :try_end_3a} :catch_47

    move-result-object v0

    .line 2238
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_2c

    .line 2228
    :cond_3f
    :try_start_3f
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->lockedGetOrLoad(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_59
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3f .. :try_end_42} :catch_47

    move-result-object v0

    .line 2238
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_2c

    .line 2229
    :catch_47
    move-exception v0

    move-object v1, v0

    .line 2230
    :try_start_49
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 2231
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_5e

    .line 2232
    new-instance v1, Lcom/google/common/util/concurrent/ExecutionError;

    check-cast v0, Ljava/lang/Error;

    invoke-direct {v1, v0}, Lcom/google/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw v1
    :try_end_59
    .catchall {:try_start_49 .. :try_end_59} :catchall_59

    .line 2238
    :catchall_59
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    throw v0

    .line 2233
    :cond_5e
    :try_start_5e
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_68

    .line 2234
    new-instance v1, Lcom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {v1, v0}, Lcom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2236
    :cond_68
    throw v1
    :try_end_69
    .catchall {:try_start_5e .. :try_end_69} :catchall_59
.end method

.method getAndRecordStats(Ljava/lang/Object;ILcom/google/common/cache/v;Lcom/google/common/util/concurrent/f;)Ljava/lang/Object;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2379
    const/4 v1, 0x0

    .line 2381
    :try_start_1
    invoke-static {p4}, Lcom/google/common/util/concurrent/l;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    .line 2382
    if-nez v1, :cond_32

    .line 2383
    new-instance v0, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CacheLoader returned null for key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_22

    .line 2389
    :catchall_22
    move-exception v0

    if-nez v1, :cond_31

    .line 2390
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/c;

    invoke-virtual {p3}, Lcom/google/common/cache/v;->f()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/c;->b(J)V

    .line 2391
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->removeLoadingValue(Ljava/lang/Object;ILcom/google/common/cache/v;)Z

    :cond_31
    throw v0

    .line 2385
    :cond_32
    :try_start_32
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/c;

    invoke-virtual {p3}, Lcom/google/common/cache/v;->f()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/common/cache/c;->a(J)V

    .line 2386
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/google/common/cache/LocalCache$Segment;->storeLoadedValue(Ljava/lang/Object;ILcom/google/common/cache/v;Ljava/lang/Object;)Z
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_22

    .line 2389
    if-nez v1, :cond_4c

    .line 2390
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/c;

    invoke-virtual {p3}, Lcom/google/common/cache/v;->f()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/common/cache/c;->b(J)V

    .line 2391
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->removeLoadingValue(Ljava/lang/Object;ILcom/google/common/cache/v;)Z

    :cond_4c
    return-object v1
.end method

.method getEntry(Ljava/lang/Object;I)Lcom/google/common/cache/x;
    .registers 6
    .parameter
    .parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 2727
    invoke-virtual {p0, p2}, Lcom/google/common/cache/LocalCache$Segment;->getFirst(I)Lcom/google/common/cache/x;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_25

    .line 2728
    invoke-interface {v0}, Lcom/google/common/cache/x;->getHash()I

    move-result v1

    if-ne v1, p2, :cond_15

    .line 2729
    invoke-interface {v0}, Lcom/google/common/cache/x;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2733
    if-nez v1, :cond_1a

    .line 2734
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryDrainReferenceQueues()V

    .line 2727
    :cond_15
    invoke-interface {v0}, Lcom/google/common/cache/x;->getNext()Lcom/google/common/cache/x;

    move-result-object v0

    goto :goto_4

    .line 2738
    :cond_1a
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->g:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2743
    :goto_24
    return-object v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method getFirst(I)Lcom/google/common/cache/x;
    .registers 4
    .parameter

    .prologue
    .line 2719
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2720
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/x;

    return-object v0
.end method

.method getLiveEntry(Ljava/lang/Object;IJ)Lcom/google/common/cache/x;
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2748
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->getEntry(Ljava/lang/Object;I)Lcom/google/common/cache/x;

    move-result-object v1

    .line 2749
    if-nez v1, :cond_8

    .line 2755
    :goto_7
    return-object v0

    .line 2751
    :cond_8
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v2, v1, p3, p4}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/x;J)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2752
    invoke-virtual {p0, p3, p4}, Lcom/google/common/cache/LocalCache$Segment;->tryExpireEntries(J)V

    goto :goto_7

    :cond_14
    move-object v0, v1

    .line 2755
    goto :goto_7
.end method

.method getLiveValue(Lcom/google/common/cache/x;J)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2763
    invoke-interface {p1}, Lcom/google/common/cache/x;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_b

    .line 2764
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryDrainReferenceQueues()V

    .line 2777
    :goto_a
    return-object v0

    .line 2767
    :cond_b
    invoke-interface {p1}, Lcom/google/common/cache/x;->getValueReference()Lcom/google/common/cache/ag;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/cache/ag;->get()Ljava/lang/Object;

    move-result-object v1

    .line 2768
    if-nez v1, :cond_19

    .line 2769
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryDrainReferenceQueues()V

    goto :goto_a

    .line 2773
    :cond_19
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v2, p1, p2, p3}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/x;J)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2774
    invoke-virtual {p0, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->tryExpireEntries(J)V

    goto :goto_a

    :cond_25
    move-object v0, v1

    .line 2777
    goto :goto_a
.end method

.method getNextEvictable()Lcom/google/common/cache/x;
    .registers 4

    .prologue
    .line 2705
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/x;

    .line 2706
    invoke-interface {v0}, Lcom/google/common/cache/x;->getValueReference()Lcom/google/common/cache/ag;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/cache/ag;->a()I

    move-result v2

    .line 2707
    if-lez v2, :cond_6

    .line 2708
    return-object v0

    .line 2711
    :cond_1d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .registers 6
    .parameter

    .prologue
    .line 2168
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    .line 2169
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->b()Z

    move-result v0

    if-nez v0, :cond_21

    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/common/cache/LocalCache$Segment;->maxSegmentWeight:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_21

    .line 2171
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    .line 2173
    :cond_21
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2174
    return-void
.end method

.method insertLoadingValueReference(Ljava/lang/Object;I)Lcom/google/common/cache/v;
    .registers 9
    .parameter
    .parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 2439
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2441
    :try_start_3
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/an;

    invoke-virtual {v0}, Lcom/google/common/base/an;->a()J

    move-result-wide v0

    .line 2442
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2444
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2445
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v3, p2, v0

    .line 2446
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/x;

    move-object v1, v0

    .line 2449
    :goto_1f
    if-eqz v1, :cond_63

    .line 2450
    invoke-interface {v1}, Lcom/google/common/cache/x;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 2451
    invoke-interface {v1}, Lcom/google/common/cache/x;->getHash()I

    move-result v5

    if-ne v5, p2, :cond_5e

    if-eqz v4, :cond_5e

    iget-object v5, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v5, v5, Lcom/google/common/cache/LocalCache;->g:Lcom/google/common/base/Equivalence;

    invoke-virtual {v5, p1, v4}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 2455
    invoke-interface {v1}, Lcom/google/common/cache/x;->getValueReference()Lcom/google/common/cache/ag;

    move-result-object v2

    .line 2456
    invoke-interface {v2}, Lcom/google/common/cache/ag;->c()Z
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_80

    move-result v0

    if-eqz v0, :cond_49

    .line 2458
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2478
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    const/4 v0, 0x0

    :goto_48
    return-object v0

    .line 2462
    :cond_49
    :try_start_49
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2463
    new-instance v0, Lcom/google/common/cache/v;

    invoke-direct {v0, v2}, Lcom/google/common/cache/v;-><init>(Lcom/google/common/cache/ag;)V

    .line 2465
    invoke-interface {v1, v0}, Lcom/google/common/cache/x;->setValueReference(Lcom/google/common/cache/ag;)V
    :try_end_57
    .catchall {:try_start_49 .. :try_end_57} :catchall_80

    .line 2477
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2478
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_48

    .line 2449
    :cond_5e
    :try_start_5e
    invoke-interface {v1}, Lcom/google/common/cache/x;->getNext()Lcom/google/common/cache/x;

    move-result-object v1

    goto :goto_1f

    .line 2470
    :cond_63
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2471
    new-instance v1, Lcom/google/common/cache/v;

    invoke-direct {v1}, Lcom/google/common/cache/v;-><init>()V

    .line 2472
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/cache/x;)Lcom/google/common/cache/x;

    move-result-object v0

    .line 2473
    invoke-interface {v0, v1}, Lcom/google/common/cache/x;->setValueReference(Lcom/google/common/cache/ag;)V

    .line 2474
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_78
    .catchall {:try_start_5e .. :try_end_78} :catchall_80

    .line 2477
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2478
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move-object v0, v1

    goto :goto_48

    .line 2477
    :catchall_80
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2478
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method isCollected(Lcom/google/common/cache/x;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 3434
    invoke-interface {p1}, Lcom/google/common/cache/x;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    .line 3438
    :cond_7
    :goto_7
    return v0

    .line 3437
    :cond_8
    invoke-interface {p1}, Lcom/google/common/cache/x;->getValueReference()Lcom/google/common/cache/ag;

    move-result-object v1

    .line 3438
    invoke-interface {v1}, Lcom/google/common/cache/ag;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_18

    invoke-interface {v1}, Lcom/google/common/cache/ag;->d()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_18
    const/4 v0, 0x0

    goto :goto_7
.end method

.method loadAsync(Ljava/lang/Object;ILcom/google/common/cache/v;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/f;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2356
    invoke-virtual {p3, p1, p4}, Lcom/google/common/cache/v;->a(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/f;

    move-result-object v5

    .line 2357
    new-instance v0, Lcom/google/common/cache/y;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/common/cache/y;-><init>(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/v;Lcom/google/common/util/concurrent/f;)V

    sget-object v1, Lcom/google/common/cache/LocalCache;->b:Lcom/google/common/util/concurrent/h;

    invoke-interface {v5, v0, v1}, Lcom/google/common/util/concurrent/f;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 2371
    return-object v5
.end method

.method loadSync(Ljava/lang/Object;ILcom/google/common/cache/v;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2350
    invoke-virtual {p3, p1, p4}, Lcom/google/common/cache/v;->a(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/f;

    move-result-object v0

    .line 2351
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/common/cache/LocalCache$Segment;->getAndRecordStats(Ljava/lang/Object;ILcom/google/common/cache/v;Lcom/google/common/util/concurrent/f;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lockedGetOrLoad(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .registers 22
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2245
    const/4 v7, 0x0

    .line 2246
    const/4 v5, 0x0

    .line 2247
    const/4 v8, 0x1

    .line 2249
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2252
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/an;

    invoke-virtual {v4}, Lcom/google/common/base/an;->a()J

    move-result-wide v10

    .line 2253
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2255
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v12, v4, -0x1

    .line 2256
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2257
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    and-int v14, p2, v4

    .line 2258
    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/cache/x;

    move-object v6, v4

    .line 2260
    :goto_2e
    if-eqz v6, :cond_115

    .line 2261
    invoke-interface {v6}, Lcom/google/common/cache/x;->getKey()Ljava/lang/Object;

    move-result-object v15

    .line 2262
    invoke-interface {v6}, Lcom/google/common/cache/x;->getHash()I

    move-result v9

    move/from16 v0, p2

    if-ne v9, v0, :cond_ee

    if-eqz v15, :cond_ee

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v9, v9, Lcom/google/common/cache/LocalCache;->g:Lcom/google/common/base/Equivalence;

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v15}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ee

    .line 2264
    invoke-interface {v6}, Lcom/google/common/cache/x;->getValueReference()Lcom/google/common/cache/ag;

    move-result-object v9

    .line 2265
    invoke-interface {v9}, Lcom/google/common/cache/ag;->c()Z

    move-result v7

    if-eqz v7, :cond_95

    .line 2266
    const/4 v7, 0x0

    move-object v8, v9

    .line 2291
    :goto_58
    if-eqz v7, :cond_111

    .line 2292
    new-instance v5, Lcom/google/common/cache/v;

    invoke-direct {v5}, Lcom/google/common/cache/v;-><init>()V

    .line 2294
    if-nez v6, :cond_f4

    .line 2295
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/cache/x;)Lcom/google/common/cache/x;

    move-result-object v4

    .line 2296
    invoke-interface {v4, v5}, Lcom/google/common/cache/x;->setValueReference(Lcom/google/common/cache/ag;)V

    .line 2297
    invoke-virtual {v13, v14, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_71
    .catchall {:try_start_6 .. :try_end_71} :catchall_d1

    move-object/from16 v17, v5

    move-object v5, v4

    move-object/from16 v4, v17

    .line 2303
    :goto_76
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2304
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2307
    if-eqz v7, :cond_108

    .line 2312
    :try_start_7e
    monitor-enter v5
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_fe

    .line 2313
    :try_start_7f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/google/common/cache/LocalCache$Segment;->loadSync(Ljava/lang/Object;ILcom/google/common/cache/v;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v4

    monitor-exit v5
    :try_end_8c
    .catchall {:try_start_7f .. :try_end_8c} :catchall_fb

    .line 2316
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/c;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/google/common/cache/c;->b(I)V

    .line 2320
    :goto_94
    return-object v4

    .line 2268
    :cond_95
    :try_start_95
    invoke-interface {v9}, Lcom/google/common/cache/ag;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2269
    if-nez v7, :cond_b9

    .line 2270
    sget-object v7, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v15, v1, v9, v7}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/ag;Lcom/google/common/cache/RemovalCause;)V

    .line 2283
    :goto_a4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v7, v6}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2284
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v7, v6}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2285
    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    move v7, v8

    move-object v8, v9

    .line 2287
    goto :goto_58

    .line 2271
    :cond_b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v10, v11}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/x;J)Z

    move-result v16

    if-eqz v16, :cond_d9

    .line 2274
    sget-object v7, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v15, v1, v9, v7}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/ag;Lcom/google/common/cache/RemovalCause;)V
    :try_end_d0
    .catchall {:try_start_95 .. :try_end_d0} :catchall_d1

    goto :goto_a4

    .line 2303
    :catchall_d1
    move-exception v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2304
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v4

    .line 2276
    :cond_d9
    :try_start_d9
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10, v11}, Lcom/google/common/cache/LocalCache$Segment;->recordLockedRead(Lcom/google/common/cache/x;J)V

    .line 2277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/c;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/google/common/cache/c;->a(I)V
    :try_end_e6
    .catchall {:try_start_d9 .. :try_end_e6} :catchall_d1

    .line 2303
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2304
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move-object v4, v7

    goto :goto_94

    .line 2260
    :cond_ee
    :try_start_ee
    invoke-interface {v6}, Lcom/google/common/cache/x;->getNext()Lcom/google/common/cache/x;

    move-result-object v6

    goto/16 :goto_2e

    .line 2299
    :cond_f4
    invoke-interface {v6, v5}, Lcom/google/common/cache/x;->setValueReference(Lcom/google/common/cache/ag;)V
    :try_end_f7
    .catchall {:try_start_ee .. :try_end_f7} :catchall_d1

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_76

    .line 2314
    :catchall_fb
    move-exception v4

    :try_start_fc
    monitor-exit v5

    throw v4
    :try_end_fe
    .catchall {:try_start_fc .. :try_end_fe} :catchall_fe

    .line 2316
    :catchall_fe
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/c;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/google/common/cache/c;->b(I)V

    throw v4

    .line 2320
    :cond_108
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v1, v8}, Lcom/google/common/cache/LocalCache$Segment;->waitForLoadingValue(Lcom/google/common/cache/x;Ljava/lang/Object;Lcom/google/common/cache/ag;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_94

    :cond_111
    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_76

    :cond_115
    move/from16 v17, v8

    move-object v8, v7

    move/from16 v7, v17

    goto/16 :goto_58
.end method

.method newEntry(Ljava/lang/Object;ILcom/google/common/cache/x;)Lcom/google/common/cache/x;
    .registers 5
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2178
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->s:Lcom/google/common/cache/LocalCache$EntryFactory;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$EntryFactory;->newEntry(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/x;)Lcom/google/common/cache/x;

    move-result-object v0

    return-object v0
.end method

.method newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .registers 3
    .parameter

    .prologue
    .line 2164
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method postReadCleanup()V
    .registers 2

    .prologue
    .line 3446
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_d

    .line 3447
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->cleanUp()V

    .line 3449
    :cond_d
    return-void
.end method

.method postWriteCleanup()V
    .registers 1

    .prologue
    .line 3466
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->runUnlockedCleanup()V

    .line 3467
    return-void
.end method

.method preWriteCleanup(J)V
    .registers 3
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 3459
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->runLockedCleanup(J)V

    .line 3460
    return-void
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2852
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2854
    :try_start_4
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/an;

    invoke-virtual {v0}, Lcom/google/common/base/an;->a()J

    move-result-wide v4

    .line 2855
    invoke-virtual {p0, v4, v5}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2857
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v0, v0, 0x1

    .line 2858
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    if-le v0, v1, :cond_1c

    .line 2859
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->expand()V

    .line 2860
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2863
    :cond_1c
    iget-object v7, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2864
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v8, p2, v0

    .line 2865
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/x;

    move-object v1, v0

    .line 2868
    :goto_2d
    if-eqz v1, :cond_ae

    .line 2869
    invoke-interface {v1}, Lcom/google/common/cache/x;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 2870
    invoke-interface {v1}, Lcom/google/common/cache/x;->getHash()I

    move-result v3

    if-ne v3, p2, :cond_a9

    if-eqz v2, :cond_a9

    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v3, v3, Lcom/google/common/cache/LocalCache;->g:Lcom/google/common/base/Equivalence;

    invoke-virtual {v3, p1, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 2874
    invoke-interface {v1}, Lcom/google/common/cache/x;->getValueReference()Lcom/google/common/cache/ag;

    move-result-object v0

    .line 2875
    invoke-interface {v0}, Lcom/google/common/cache/ag;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2877
    if-nez v7, :cond_80

    .line 2878
    iget v2, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2879
    invoke-interface {v0}, Lcom/google/common/cache/ag;->d()Z

    move-result v2

    if-eqz v2, :cond_75

    .line 2880
    sget-object v2, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/ag;Lcom/google/common/cache/RemovalCause;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    .line 2881
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/x;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2882
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2887
    :goto_68
    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2888
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_6d
    .catchall {:try_start_4 .. :try_end_6d} :catchall_d2

    .line 2889
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2918
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move-object v0, v6

    :goto_74
    return-object v0

    :cond_75
    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    .line 2884
    :try_start_78
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/x;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2885
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    .line 2890
    :cond_80
    if-eqz p4, :cond_8d

    .line 2894
    invoke-virtual {p0, v1, v4, v5}, Lcom/google/common/cache/LocalCache$Segment;->recordLockedRead(Lcom/google/common/cache/x;J)V
    :try_end_85
    .catchall {:try_start_78 .. :try_end_85} :catchall_d2

    .line 2917
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2918
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move-object v0, v7

    goto :goto_74

    .line 2898
    :cond_8d
    :try_start_8d
    iget v2, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2899
    sget-object v2, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/ag;Lcom/google/common/cache/RemovalCause;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    .line 2900
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/x;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2901
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_a1
    .catchall {:try_start_8d .. :try_end_a1} :catchall_d2

    .line 2917
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2918
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move-object v0, v7

    goto :goto_74

    .line 2868
    :cond_a9
    :try_start_a9
    invoke-interface {v1}, Lcom/google/common/cache/x;->getNext()Lcom/google/common/cache/x;

    move-result-object v1

    goto :goto_2d

    .line 2908
    :cond_ae
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2909
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/cache/x;)Lcom/google/common/cache/x;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    .line 2910
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/x;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2911
    invoke-virtual {v7, v8, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2912
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v0, v0, 0x1

    .line 2913
    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2914
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_ca
    .catchall {:try_start_a9 .. :try_end_ca} :catchall_d2

    .line 2915
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2918
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move-object v0, v6

    goto :goto_74

    .line 2917
    :catchall_d2
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2918
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method reclaimKey(Lcom/google/common/cache/x;I)Z
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 3311
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3313
    :try_start_3
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3314
    iget-object v7, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3315
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v8, p2, v0

    .line 3316
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/x;

    move-object v2, v1

    .line 3318
    :goto_16
    if-eqz v2, :cond_46

    .line 3319
    if-ne v2, p1, :cond_41

    .line 3320
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3321
    invoke-interface {v2}, Lcom/google/common/cache/x;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/common/cache/x;->getValueReference()Lcom/google/common/cache/ag;

    move-result-object v5

    sget-object v6, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/x;Lcom/google/common/cache/x;Ljava/lang/Object;ILcom/google/common/cache/ag;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/x;

    move-result-object v0

    .line 3323
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 3324
    invoke-virtual {v7, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3325
    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_4e

    .line 3326
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3333
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    const/4 v0, 0x1

    :goto_40
    return v0

    .line 3318
    :cond_41
    :try_start_41
    invoke-interface {v2}, Lcom/google/common/cache/x;->getNext()Lcom/google/common/cache/x;
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_4e

    move-result-object v2

    goto :goto_16

    .line 3330
    :cond_46
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3333
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    const/4 v0, 0x0

    goto :goto_40

    .line 3332
    :catchall_4e
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3333
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method reclaimValue(Ljava/lang/Object;ILcom/google/common/cache/ag;)Z
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3341
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3343
    :try_start_4
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3344
    iget-object v7, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3345
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v8, p2, v1

    .line 3346
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/x;

    move-object v2, v1

    .line 3348
    :goto_17
    if-eqz v2, :cond_6d

    .line 3349
    invoke-interface {v2}, Lcom/google/common/cache/x;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 3350
    invoke-interface {v2}, Lcom/google/common/cache/x;->getHash()I

    move-result v4

    if-ne v4, p2, :cond_68

    if-eqz v3, :cond_68

    iget-object v4, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->g:Lcom/google/common/base/Equivalence;

    invoke-virtual {v4, p1, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 3352
    invoke-interface {v2}, Lcom/google/common/cache/x;->getValueReference()Lcom/google/common/cache/ag;

    move-result-object v4

    .line 3353
    if-ne v4, p3, :cond_5b

    .line 3354
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3355
    sget-object v6, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/x;Lcom/google/common/cache/x;Ljava/lang/Object;ILcom/google/common/cache/ag;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/x;

    move-result-object v0

    .line 3357
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 3358
    invoke-virtual {v7, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3359
    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_4d
    .catchall {:try_start_4 .. :try_end_4d} :catchall_7a

    .line 3360
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3369
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_59

    .line 3370
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    :cond_59
    const/4 v0, 0x1

    :cond_5a
    :goto_5a
    return v0

    .line 3362
    :cond_5b
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3369
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_5a

    .line 3370
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_5a

    .line 3348
    :cond_68
    :try_start_68
    invoke-interface {v2}, Lcom/google/common/cache/x;->getNext()Lcom/google/common/cache/x;
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_7a

    move-result-object v2

    goto :goto_17

    .line 3366
    :cond_6d
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3369
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_5a

    .line 3370
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_5a

    .line 3368
    :catchall_7a
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3369
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_87

    .line 3370
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    :cond_87
    throw v0
.end method

.method recordLockedRead(Lcom/google/common/cache/x;J)V
    .registers 5
    .parameter
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2584
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2585
    invoke-interface {p1, p2, p3}, Lcom/google/common/cache/x;->setAccessTime(J)V

    .line 2587
    :cond_b
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2588
    return-void
.end method

.method recordRead(Lcom/google/common/cache/x;J)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2569
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2570
    invoke-interface {p1, p2, p3}, Lcom/google/common/cache/x;->setAccessTime(J)V

    .line 2572
    :cond_b
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2573
    return-void
.end method

.method recordWrite(Lcom/google/common/cache/x;IJ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2597
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainRecencyQueue()V

    .line 2598
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:I

    .line 2600
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->g()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2601
    invoke-interface {p1, p3, p4}, Lcom/google/common/cache/x;->setAccessTime(J)V

    .line 2603
    :cond_13
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->f()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2604
    invoke-interface {p1, p3, p4}, Lcom/google/common/cache/x;->setWriteTime(J)V

    .line 2606
    :cond_1e
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2607
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2608
    return-void
.end method

.method refresh(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2415
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->insertLoadingValueReference(Ljava/lang/Object;I)Lcom/google/common/cache/v;

    move-result-object v1

    .line 2417
    if-nez v1, :cond_8

    .line 2429
    :cond_7
    :goto_7
    return-object v0

    .line 2421
    :cond_8
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/google/common/cache/LocalCache$Segment;->loadAsync(Ljava/lang/Object;ILcom/google/common/cache/v;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/f;

    move-result-object v1

    .line 2422
    invoke-interface {v1}, Lcom/google/common/util/concurrent/f;->isDone()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2424
    :try_start_12
    invoke-interface {v1}, Lcom/google/common/util/concurrent/f;->get()Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_15} :catch_17

    move-result-object v0

    goto :goto_7

    :catch_17
    move-exception v1

    goto :goto_7
.end method

.method remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 13
    .parameter
    .parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3094
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3096
    :try_start_4
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/an;

    invoke-virtual {v1}, Lcom/google/common/base/an;->a()J

    move-result-wide v1

    .line 3097
    invoke-virtual {p0, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 3099
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3100
    iget-object v8, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3101
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v9, p2, v1

    .line 3102
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/x;

    move-object v2, v1

    .line 3104
    :goto_22
    if-eqz v2, :cond_78

    .line 3105
    invoke-interface {v2}, Lcom/google/common/cache/x;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 3106
    invoke-interface {v2}, Lcom/google/common/cache/x;->getHash()I

    move-result v4

    if-ne v4, p2, :cond_73

    if-eqz v3, :cond_73

    iget-object v4, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->g:Lcom/google/common/base/Equivalence;

    invoke-virtual {v4, p1, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 3108
    invoke-interface {v2}, Lcom/google/common/cache/x;->getValueReference()Lcom/google/common/cache/ag;

    move-result-object v5

    .line 3109
    invoke-interface {v5}, Lcom/google/common/cache/ag;->get()Ljava/lang/Object;

    move-result-object v7

    .line 3112
    if-eqz v7, :cond_63

    .line 3113
    sget-object v6, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    .line 3121
    :goto_46
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    move-object v0, p0

    move v4, p2

    .line 3122
    invoke-virtual/range {v0 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/x;Lcom/google/common/cache/x;Ljava/lang/Object;ILcom/google/common/cache/ag;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/x;

    move-result-object v0

    .line 3124
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 3125
    invoke-virtual {v8, v9, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3126
    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_5b
    .catchall {:try_start_4 .. :try_end_5b} :catchall_7f

    .line 3133
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3134
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move-object v0, v7

    :goto_62
    return-object v0

    .line 3114
    :cond_63
    :try_start_63
    invoke-interface {v5}, Lcom/google/common/cache/ag;->d()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 3115
    sget-object v6, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;
    :try_end_6b
    .catchall {:try_start_63 .. :try_end_6b} :catchall_7f

    goto :goto_46

    .line 3118
    :cond_6c
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3134
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_62

    .line 3104
    :cond_73
    :try_start_73
    invoke-interface {v2}, Lcom/google/common/cache/x;->getNext()Lcom/google/common/cache/x;
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_7f

    move-result-object v2

    goto :goto_22

    .line 3131
    :cond_78
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3134
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_62

    .line 3133
    :catchall_7f
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3134
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;)Z
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 3191
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3193
    :try_start_4
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/an;

    invoke-virtual {v0}, Lcom/google/common/base/an;->a()J

    move-result-wide v0

    .line 3194
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 3196
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3197
    iget-object v8, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3198
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v9, p2, v0

    .line 3199
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/x;

    move-object v2, v1

    .line 3201
    :goto_22
    if-eqz v2, :cond_89

    .line 3202
    invoke-interface {v2}, Lcom/google/common/cache/x;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 3203
    invoke-interface {v2}, Lcom/google/common/cache/x;->getHash()I

    move-result v0

    if-ne v0, p2, :cond_84

    if-eqz v3, :cond_84

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->g:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, p1, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 3205
    invoke-interface {v2}, Lcom/google/common/cache/x;->getValueReference()Lcom/google/common/cache/ag;

    move-result-object v5

    .line 3206
    invoke-interface {v5}, Lcom/google/common/cache/ag;->get()Ljava/lang/Object;

    move-result-object v0

    .line 3209
    iget-object v4, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->h:Lcom/google/common/base/Equivalence;

    invoke-virtual {v4, p3, v0}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 3210
    sget-object v6, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    .line 3218
    :goto_4e
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    move-object v0, p0

    move v4, p2

    .line 3219
    invoke-virtual/range {v0 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/x;Lcom/google/common/cache/x;Ljava/lang/Object;ILcom/google/common/cache/ag;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/x;

    move-result-object v0

    .line 3221
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 3222
    invoke-virtual {v8, v9, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3223
    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3224
    sget-object v0, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;
    :try_end_65
    .catchall {:try_start_4 .. :try_end_65} :catchall_90

    if-ne v6, v0, :cond_82

    const/4 v0, 0x1

    .line 3230
    :goto_68
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3231
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move v7, v0

    :goto_6f
    return v7

    .line 3211
    :cond_70
    if-nez v0, :cond_7b

    :try_start_72
    invoke-interface {v5}, Lcom/google/common/cache/ag;->d()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 3212
    sget-object v6, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;
    :try_end_7a
    .catchall {:try_start_72 .. :try_end_7a} :catchall_90

    goto :goto_4e

    .line 3215
    :cond_7b
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3231
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_6f

    :cond_82
    move v0, v7

    .line 3224
    goto :goto_68

    .line 3201
    :cond_84
    :try_start_84
    invoke-interface {v2}, Lcom/google/common/cache/x;->getNext()Lcom/google/common/cache/x;
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_90

    move-result-object v2

    goto :goto_22

    .line 3228
    :cond_89
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3231
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_6f

    .line 3230
    :catchall_90
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3231
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method removeCollectedEntry(Lcom/google/common/cache/x;)V
    .registers 3
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 3302
    sget-object v0, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Lcom/google/common/cache/x;Lcom/google/common/cache/RemovalCause;)V

    .line 3303
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3304
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3305
    return-void
.end method

.method removeEntry(Lcom/google/common/cache/x;ILcom/google/common/cache/RemovalCause;)Z
    .registers 13
    .parameter
    .parameter
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 3409
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3410
    iget-object v7, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3411
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v8, p2, v0

    .line 3412
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/x;

    move-object v2, v1

    .line 3414
    :goto_13
    if-eqz v2, :cond_3c

    .line 3415
    if-ne v2, p1, :cond_37

    .line 3416
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3417
    invoke-interface {v2}, Lcom/google/common/cache/x;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/common/cache/x;->getValueReference()Lcom/google/common/cache/ag;

    move-result-object v5

    move-object v0, p0

    move v4, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/x;Lcom/google/common/cache/x;Ljava/lang/Object;ILcom/google/common/cache/ag;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/x;

    move-result-object v0

    .line 3419
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 3420
    invoke-virtual {v7, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3421
    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3422
    const/4 v0, 0x1

    .line 3426
    :goto_36
    return v0

    .line 3414
    :cond_37
    invoke-interface {v2}, Lcom/google/common/cache/x;->getNext()Lcom/google/common/cache/x;

    move-result-object v2

    goto :goto_13

    .line 3426
    :cond_3c
    const/4 v0, 0x0

    goto :goto_36
.end method

.method removeEntryFromChain(Lcom/google/common/cache/x;Lcom/google/common/cache/x;)Lcom/google/common/cache/x;
    .registers 6
    .parameter
    .parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 3286
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3287
    invoke-interface {p2}, Lcom/google/common/cache/x;->getNext()Lcom/google/common/cache/x;

    move-result-object v0

    .line 3288
    :goto_6
    if-eq p1, p2, :cond_1d

    .line 3289
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache$Segment;->isCollected(Lcom/google/common/cache/x;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 3290
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache$Segment;->removeCollectedEntry(Lcom/google/common/cache/x;)V

    .line 3291
    add-int/lit8 v1, v1, -0x1

    .line 3288
    :goto_13
    invoke-interface {p1}, Lcom/google/common/cache/x;->getNext()Lcom/google/common/cache/x;

    move-result-object p1

    goto :goto_6

    .line 3293
    :cond_18
    invoke-virtual {p0, p1, v0}, Lcom/google/common/cache/LocalCache$Segment;->copyEntry(Lcom/google/common/cache/x;Lcom/google/common/cache/x;)Lcom/google/common/cache/x;

    move-result-object v0

    goto :goto_13

    .line 3296
    :cond_1d
    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3297
    return-object v0
.end method

.method removeLoadingValue(Ljava/lang/Object;ILcom/google/common/cache/v;)Z
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3376
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3378
    :try_start_4
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3379
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 3380
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/x;

    move-object v2, v0

    .line 3382
    :goto_15
    if-eqz v2, :cond_63

    .line 3383
    invoke-interface {v2}, Lcom/google/common/cache/x;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 3384
    invoke-interface {v2}, Lcom/google/common/cache/x;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_5e

    if-eqz v5, :cond_5e

    iget-object v6, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v6, v6, Lcom/google/common/cache/LocalCache;->g:Lcom/google/common/base/Equivalence;

    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 3386
    invoke-interface {v2}, Lcom/google/common/cache/x;->getValueReference()Lcom/google/common/cache/ag;

    move-result-object v5

    .line 3387
    if-ne v5, p3, :cond_56

    .line 3388
    invoke-virtual {p3}, Lcom/google/common/cache/v;->d()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 3389
    iget-object v0, p3, Lcom/google/common/cache/v;->a:Lcom/google/common/cache/ag;

    invoke-interface {v2, v0}, Lcom/google/common/cache/x;->setValueReference(Lcom/google/common/cache/ag;)V
    :try_end_3e
    .catchall {:try_start_4 .. :try_end_3e} :catchall_4e

    .line 3394
    :goto_3e
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3403
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    const/4 v0, 0x1

    :goto_45
    return v0

    .line 3391
    :cond_46
    :try_start_46
    invoke-virtual {p0, v0, v2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntryFromChain(Lcom/google/common/cache/x;Lcom/google/common/cache/x;)Lcom/google/common/cache/x;

    move-result-object v0

    .line 3392
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_4e

    goto :goto_3e

    .line 3402
    :catchall_4e
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3403
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0

    .line 3396
    :cond_56
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3403
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move v0, v1

    goto :goto_45

    .line 3382
    :cond_5e
    :try_start_5e
    invoke-interface {v2}, Lcom/google/common/cache/x;->getNext()Lcom/google/common/cache/x;
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_4e

    move-result-object v2

    goto :goto_15

    .line 3400
    :cond_63
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3403
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move v0, v1

    goto :goto_45
.end method

.method removeValueFromChain(Lcom/google/common/cache/x;Lcom/google/common/cache/x;Ljava/lang/Object;ILcom/google/common/cache/ag;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/x;
    .registers 8
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 3270
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/ag;Lcom/google/common/cache/RemovalCause;)V

    .line 3271
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3272
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3274
    invoke-interface {p5}, Lcom/google/common/cache/ag;->c()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3275
    const/4 v0, 0x0

    invoke-interface {p5, v0}, Lcom/google/common/cache/ag;->a(Ljava/lang/Object;)V

    .line 3278
    :goto_17
    return-object p1

    :cond_18
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntryFromChain(Lcom/google/common/cache/x;Lcom/google/common/cache/x;)Lcom/google/common/cache/x;

    move-result-object p1

    goto :goto_17
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 16
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 3048
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3050
    :try_start_4
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/an;

    invoke-virtual {v0}, Lcom/google/common/base/an;->a()J

    move-result-wide v8

    .line 3051
    invoke-virtual {p0, v8, v9}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 3053
    iget-object v10, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3054
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v11, p2, v0

    .line 3055
    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/x;

    move-object v2, v1

    .line 3057
    :goto_20
    if-eqz v2, :cond_8a

    .line 3058
    invoke-interface {v2}, Lcom/google/common/cache/x;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 3059
    invoke-interface {v2}, Lcom/google/common/cache/x;->getHash()I

    move-result v0

    if-ne v0, p2, :cond_85

    if-eqz v3, :cond_85

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->g:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, p1, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 3061
    invoke-interface {v2}, Lcom/google/common/cache/x;->getValueReference()Lcom/google/common/cache/ag;

    move-result-object v5

    .line 3062
    invoke-interface {v5}, Lcom/google/common/cache/ag;->get()Ljava/lang/Object;

    move-result-object v0

    .line 3063
    if-nez v0, :cond_69

    .line 3064
    invoke-interface {v5}, Lcom/google/common/cache/ag;->d()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 3066
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3067
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3068
    sget-object v6, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/x;Lcom/google/common/cache/x;Ljava/lang/Object;ILcom/google/common/cache/ag;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/x;

    move-result-object v0

    .line 3070
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 3071
    invoke-virtual {v10, v11, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3072
    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_61
    .catchall {:try_start_4 .. :try_end_61} :catchall_92

    .line 3074
    :cond_61
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3088
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move-object v0, v7

    :goto_68
    return-object v0

    .line 3077
    :cond_69
    :try_start_69
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3078
    sget-object v1, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, p2, v5, v1}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/ag;Lcom/google/common/cache/RemovalCause;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-wide v5, v8

    .line 3079
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/x;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3080
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_7e
    .catchall {:try_start_69 .. :try_end_7e} :catchall_92

    .line 3087
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3088
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_68

    .line 3057
    :cond_85
    :try_start_85
    invoke-interface {v2}, Lcom/google/common/cache/x;->getNext()Lcom/google/common/cache/x;
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_92

    move-result-object v2

    goto :goto_20

    .line 3085
    :cond_8a
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3088
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move-object v0, v7

    goto :goto_68

    .line 3087
    :catchall_92
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3088
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2995
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2997
    :try_start_3
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/an;

    invoke-virtual {v0}, Lcom/google/common/base/an;->a()J

    move-result-wide v7

    .line 2998
    invoke-virtual {p0, v7, v8}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 3000
    iget-object v9, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3001
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v10, p2, v0

    .line 3002
    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/x;

    move-object v2, v1

    .line 3004
    :goto_1f
    if-eqz v2, :cond_9f

    .line 3005
    invoke-interface {v2}, Lcom/google/common/cache/x;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 3006
    invoke-interface {v2}, Lcom/google/common/cache/x;->getHash()I

    move-result v0

    if-ne v0, p2, :cond_9a

    if-eqz v3, :cond_9a

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->g:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, p1, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 3008
    invoke-interface {v2}, Lcom/google/common/cache/x;->getValueReference()Lcom/google/common/cache/ag;

    move-result-object v5

    .line 3009
    invoke-interface {v5}, Lcom/google/common/cache/ag;->get()Ljava/lang/Object;

    move-result-object v0

    .line 3010
    if-nez v0, :cond_68

    .line 3011
    invoke-interface {v5}, Lcom/google/common/cache/ag;->d()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 3013
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3014
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3015
    sget-object v6, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/x;Lcom/google/common/cache/x;Ljava/lang/Object;ILcom/google/common/cache/ag;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/x;

    move-result-object v0

    .line 3017
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 3018
    invoke-virtual {v9, v10, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3019
    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_a7

    .line 3021
    :cond_60
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3042
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    const/4 v0, 0x0

    :goto_67
    return v0

    .line 3024
    :cond_68
    :try_start_68
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->h:Lcom/google/common/base/Equivalence;

    invoke-virtual {v1, p3, v0}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 3025
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3026
    sget-object v0, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, p2, v5, v0}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/ag;Lcom/google/common/cache/RemovalCause;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    move-wide v5, v7

    .line 3027
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/x;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3028
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_87
    .catchall {:try_start_68 .. :try_end_87} :catchall_a7

    .line 3029
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3042
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    const/4 v0, 0x1

    goto :goto_67

    .line 3033
    :cond_8f
    :try_start_8f
    invoke-virtual {p0, v2, v7, v8}, Lcom/google/common/cache/LocalCache$Segment;->recordLockedRead(Lcom/google/common/cache/x;J)V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_a7

    .line 3034
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3042
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    const/4 v0, 0x0

    goto :goto_67

    .line 3004
    :cond_9a
    :try_start_9a
    invoke-interface {v2}, Lcom/google/common/cache/x;->getNext()Lcom/google/common/cache/x;
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_a7

    move-result-object v2

    goto :goto_1f

    .line 3039
    :cond_9f
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3042
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    const/4 v0, 0x0

    goto :goto_67

    .line 3041
    :catchall_a7
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3042
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method runLockedCleanup(J)V
    .registers 5
    .parameter

    .prologue
    .line 3476
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3478
    :try_start_6
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainReferenceQueues()V

    .line 3479
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->expireEntries(J)V

    .line 3480
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_16

    .line 3482
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3485
    :cond_15
    return-void

    .line 3482
    :catchall_16
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    throw v0
.end method

.method runUnlockedCleanup()V
    .registers 2

    .prologue
    .line 3489
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3490
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->m()V

    .line 3492
    :cond_b
    return-void
.end method

.method scheduleRefresh(Lcom/google/common/cache/x;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2398
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->c()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Lcom/google/common/cache/x;->getWriteTime()J

    move-result-wide v0

    sub-long v0, p5, v0

    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-wide v2, v2, Lcom/google/common/cache/LocalCache;->o:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1d

    .line 2399
    invoke-virtual {p0, p2, p3, p7}, Lcom/google/common/cache/LocalCache$Segment;->refresh(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v0

    .line 2400
    if-eqz v0, :cond_1d

    move-object p4, v0

    .line 2404
    :cond_1d
    return-object p4
.end method

.method setValue(Lcom/google/common/cache/x;Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2194
    invoke-interface {p1}, Lcom/google/common/cache/x;->getValueReference()Lcom/google/common/cache/ag;

    move-result-object v1

    .line 2195
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->l:Lcom/google/common/cache/aw;

    invoke-interface {v0, p2, p3}, Lcom/google/common/cache/aw;->weigh(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 2196
    if-ltz v2, :cond_26

    const/4 v0, 0x1

    :goto_f
    const-string v3, "Weights must be non-negative"

    invoke-static {v0, v3}, Lcom/google/common/base/ag;->b(ZLjava/lang/Object;)V

    .line 2198
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->j:Lcom/google/common/cache/LocalCache$Strength;

    invoke-virtual {v0, p0, p1, p3, v2}, Lcom/google/common/cache/LocalCache$Strength;->referenceValue(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/x;Ljava/lang/Object;I)Lcom/google/common/cache/ag;

    move-result-object v0

    .line 2200
    invoke-interface {p1, v0}, Lcom/google/common/cache/x;->setValueReference(Lcom/google/common/cache/ag;)V

    .line 2201
    invoke-virtual {p0, p1, v2, p4, p5}, Lcom/google/common/cache/LocalCache$Segment;->recordWrite(Lcom/google/common/cache/x;IJ)V

    .line 2202
    invoke-interface {v1, p3}, Lcom/google/common/cache/ag;->a(Ljava/lang/Object;)V

    .line 2203
    return-void

    .line 2196
    :cond_26
    const/4 v0, 0x0

    goto :goto_f
.end method

.method storeLoadedValue(Ljava/lang/Object;ILcom/google/common/cache/v;Ljava/lang/Object;)Z
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 3140
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3142
    :try_start_5
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/an;

    invoke-virtual {v0}, Lcom/google/common/base/an;->a()J

    move-result-wide v4

    .line 3143
    invoke-virtual {p0, v4, v5}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 3145
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v7, v0, 0x1

    .line 3146
    iget-object v8, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3147
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v9, p2, v0

    .line 3148
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/x;

    move-object v1, v0

    .line 3150
    :goto_25
    if-eqz v1, :cond_8d

    .line 3151
    invoke-interface {v1}, Lcom/google/common/cache/x;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 3152
    invoke-interface {v1}, Lcom/google/common/cache/x;->getHash()I

    move-result v10

    if-ne v10, p2, :cond_88

    if-eqz v3, :cond_88

    iget-object v10, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v10, v10, Lcom/google/common/cache/LocalCache;->g:Lcom/google/common/base/Equivalence;

    invoke-virtual {v10, p1, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 3154
    invoke-interface {v1}, Lcom/google/common/cache/x;->getValueReference()Lcom/google/common/cache/ag;

    move-result-object v0

    .line 3155
    invoke-interface {v0}, Lcom/google/common/cache/ag;->get()Ljava/lang/Object;

    move-result-object v3

    .line 3156
    if-eqz v3, :cond_49

    if-ne p3, v0, :cond_75

    .line 3157
    :cond_49
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3158
    invoke-virtual {p3}, Lcom/google/common/cache/v;->d()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 3159
    if-nez v3, :cond_72

    sget-object v0, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    .line 3161
    :goto_59
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/ag;Lcom/google/common/cache/RemovalCause;)V

    .line 3162
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    :cond_5f
    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    .line 3164
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/x;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3165
    iput v7, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3166
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_6a
    .catchall {:try_start_5 .. :try_end_6a} :catchall_ad

    .line 3167
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3186
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move v0, v6

    :goto_71
    return v0

    .line 3159
    :cond_72
    :try_start_72
    sget-object v0, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    goto :goto_59

    .line 3171
    :cond_75
    new-instance v0, Lcom/google/common/cache/ao;

    const/4 v1, 0x0

    invoke-direct {v0, p4, v1}, Lcom/google/common/cache/ao;-><init>(Ljava/lang/Object;I)V

    .line 3172
    sget-object v1, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/ag;Lcom/google/common/cache/RemovalCause;)V
    :try_end_80
    .catchall {:try_start_72 .. :try_end_80} :catchall_ad

    .line 3173
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3186
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move v0, v2

    goto :goto_71

    .line 3150
    :cond_88
    :try_start_88
    invoke-interface {v1}, Lcom/google/common/cache/x;->getNext()Lcom/google/common/cache/x;

    move-result-object v1

    goto :goto_25

    .line 3177
    :cond_8d
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3178
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/cache/x;)Lcom/google/common/cache/x;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    .line 3179
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/x;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3180
    invoke-virtual {v8, v9, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3181
    iput v7, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3182
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_a5
    .catchall {:try_start_88 .. :try_end_a5} :catchall_ad

    .line 3183
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3186
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move v0, v6

    goto :goto_71

    .line 3185
    :catchall_ad
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3186
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method tryDrainReferenceQueues()V
    .registers 2

    .prologue
    .line 2488
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2490
    :try_start_6
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainReferenceQueues()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_d

    .line 2492
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2495
    :cond_c
    return-void

    .line 2492
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    throw v0
.end method

.method tryExpireEntries(J)V
    .registers 4
    .parameter

    .prologue
    .line 2636
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2638
    :try_start_6
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->expireEntries(J)V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_d

    .line 2640
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2644
    :cond_c
    return-void

    .line 2640
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    throw v0
.end method

.method waitForLoadingValue(Lcom/google/common/cache/x;Ljava/lang/Object;Lcom/google/common/cache/ag;)Ljava/lang/Object;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 2326
    invoke-interface {p3}, Lcom/google/common/cache/ag;->c()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2327
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2330
    :cond_d
    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    move v0, v1

    :goto_14
    const-string v2, "Recursive load"

    invoke-static {v0, v2}, Lcom/google/common/base/ag;->b(ZLjava/lang/Object;)V

    .line 2333
    :try_start_19
    invoke-interface {p3}, Lcom/google/common/cache/ag;->e()Ljava/lang/Object;

    move-result-object v0

    .line 2334
    if-nez v0, :cond_43

    .line 2335
    new-instance v0, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CacheLoader returned null for key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3a
    .catchall {:try_start_19 .. :try_end_3a} :catchall_3a

    .line 2342
    :catchall_3a
    move-exception v0

    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/c;

    invoke-interface {v2, v1}, Lcom/google/common/cache/c;->b(I)V

    throw v0

    .line 2330
    :cond_41
    const/4 v0, 0x0

    goto :goto_14

    .line 2338
    :cond_43
    :try_start_43
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/base/an;

    invoke-virtual {v2}, Lcom/google/common/base/an;->a()J

    move-result-wide v2

    .line 2339
    invoke-virtual {p0, p1, v2, v3}, Lcom/google/common/cache/LocalCache$Segment;->recordRead(Lcom/google/common/cache/x;J)V
    :try_end_4e
    .catchall {:try_start_43 .. :try_end_4e} :catchall_3a

    .line 2342
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/c;

    invoke-interface {v2, v1}, Lcom/google/common/cache/c;->b(I)V

    return-object v0
.end method
