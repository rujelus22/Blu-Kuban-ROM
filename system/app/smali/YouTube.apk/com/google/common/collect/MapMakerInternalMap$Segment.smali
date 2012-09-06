.class Lcom/google/common/collect/MapMakerInternalMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "SourceFile"


# instance fields
.field volatile count:I

.field final evictionQueue:Ljava/util/Queue;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field final expirationQueue:Ljava/util/Queue;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field final keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

.field final map:Lcom/google/common/collect/MapMakerInternalMap;

.field final maxSegmentSize:I

.field modCount:I

.field final readCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final recencyQueue:Ljava/util/Queue;

.field volatile table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field threshold:I

.field final valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;II)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2140
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 2124
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2141
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    .line 2142
    iput p3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->maxSegmentSize:I

    .line 2143
    invoke-virtual {p0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 2145
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->usesKeyReferences()Z

    move-result v0

    if-eqz v0, :cond_5e

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :goto_21
    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 2148
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->usesValueReferences()Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :cond_2e
    iput-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 2151
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->evictsBySize()Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->expiresAfterAccess()Z

    move-result v0

    if-eqz v0, :cond_60

    :cond_3c
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_41
    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recencyQueue:Ljava/util/Queue;

    .line 2155
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->evictsBySize()Z

    move-result v0

    if-eqz v0, :cond_65

    new-instance v0, Lcom/google/common/collect/fx;

    invoke-direct {v0}, Lcom/google/common/collect/fx;-><init>()V

    :goto_4e
    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    .line 2159
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->expires()Z

    move-result v0

    if-eqz v0, :cond_6a

    new-instance v0, Lcom/google/common/collect/ga;

    invoke-direct {v0}, Lcom/google/common/collect/ga;-><init>()V

    :goto_5b
    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    .line 2162
    return-void

    :cond_5e
    move-object v0, v1

    .line 2145
    goto :goto_21

    .line 2151
    :cond_60
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    goto :goto_41

    .line 2155
    :cond_65
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    goto :goto_4e

    .line 2159
    :cond_6a
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    goto :goto_5b
.end method


# virtual methods
.method clear()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 2854
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_69

    .line 2855
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2857
    :try_start_8
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2858
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->removalNotificationQueue:Ljava/util/Queue;

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap;->DISCARDING_QUEUE:Ljava/util/Queue;

    if-eq v0, v2, :cond_39

    move v2, v1

    .line 2859
    :goto_13
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_39

    .line 2860
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/gg;

    :goto_1f
    if-eqz v0, :cond_35

    .line 2862
    invoke-interface {v0}, Lcom/google/common/collect/gg;->getValueReference()Lcom/google/common/collect/gs;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/collect/gs;->b()Z

    move-result v4

    if-nez v4, :cond_30

    .line 2863
    sget-object v4, Lcom/google/common/collect/MapMaker$RemovalCause;->EXPLICIT:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v0, v4}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Lcom/google/common/collect/gg;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2860
    :cond_30
    invoke-interface {v0}, Lcom/google/common/collect/gg;->getNext()Lcom/google/common/collect/gg;

    move-result-object v0

    goto :goto_1f

    .line 2859
    :cond_35
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_13

    :cond_39
    move v0, v1

    .line 2868
    :goto_3a
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_47

    .line 2869
    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2868
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 2871
    :cond_47
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->clearReferenceQueues()V

    .line 2872
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 2873
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 2874
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2876
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2877
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_63
    .catchall {:try_start_8 .. :try_end_63} :catchall_6a

    .line 2879
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2880
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    .line 2883
    :cond_69
    return-void

    .line 2879
    :catchall_6a
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2880
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    throw v0
.end method

.method clearKeyReferenceQueue()V
    .registers 2

    .prologue
    .line 2270
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2271
    return-void
.end method

.method clearReferenceQueues()V
    .registers 2

    .prologue
    .line 2261
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->usesKeyReferences()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2262
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->clearKeyReferenceQueue()V

    .line 2264
    :cond_b
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->usesValueReferences()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2265
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->clearValueReferenceQueue()V

    .line 2267
    :cond_16
    return-void
.end method

.method clearValue(Ljava/lang/Object;ILcom/google/common/collect/gs;)Z
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2995
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2997
    :try_start_4
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2998
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 2999
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/gg;

    move-object v2, v0

    .line 3001
    :goto_15
    if-eqz v2, :cond_4f

    .line 3002
    invoke-interface {v2}, Lcom/google/common/collect/gg;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 3003
    invoke-interface {v2}, Lcom/google/common/collect/gg;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_4a

    if-eqz v5, :cond_4a

    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v6, v6, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 3005
    invoke-interface {v2}, Lcom/google/common/collect/gg;->getValueReference()Lcom/google/common/collect/gs;

    move-result-object v5

    .line 3006
    if-ne v5, p3, :cond_42

    .line 3007
    invoke-virtual {p0, v0, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/gg;Lcom/google/common/collect/gg;)Lcom/google/common/collect/gg;

    move-result-object v0

    .line 3008
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_3a
    .catchall {:try_start_4 .. :try_end_3a} :catchall_57

    .line 3009
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 3018
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    const/4 v0, 0x1

    :goto_41
    return v0

    .line 3011
    :cond_42
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 3018
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move v0, v1

    goto :goto_41

    .line 3001
    :cond_4a
    :try_start_4a
    invoke-interface {v2}, Lcom/google/common/collect/gg;->getNext()Lcom/google/common/collect/gg;
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_57

    move-result-object v2

    goto :goto_15

    .line 3015
    :cond_4f
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 3018
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move v0, v1

    goto :goto_41

    .line 3017
    :catchall_57
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 3018
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    throw v0
.end method

.method clearValueReferenceQueue()V
    .registers 2

    .prologue
    .line 2274
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2275
    return-void
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2489
    :try_start_1
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v1, :cond_1e

    .line 2490
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getLiveEntry(Ljava/lang/Object;I)Lcom/google/common/collect/gg;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_22

    move-result-object v1

    .line 2491
    if-nez v1, :cond_f

    .line 2492
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    .line 2499
    :goto_e
    return v0

    .line 2494
    :cond_f
    :try_start_f
    invoke-interface {v1}, Lcom/google/common/collect/gg;->getValueReference()Lcom/google/common/collect/gs;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/gs;->get()Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_22

    move-result-object v1

    if-eqz v1, :cond_1a

    const/4 v0, 0x1

    .line 2499
    :cond_1a
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    goto :goto_e

    .line 2497
    :cond_1e
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    goto :goto_e

    :catchall_22
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    throw v0
.end method

.method containsValue(Ljava/lang/Object;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2510
    :try_start_1
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_34

    .line 2511
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2512
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    move v2, v1

    .line 2513
    :goto_c
    if-ge v2, v4, :cond_34

    .line 2514
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/gg;

    :goto_14
    if-eqz v0, :cond_30

    .line 2515
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getLiveValue(Lcom/google/common/collect/gg;)Ljava/lang/Object;

    move-result-object v5

    .line 2516
    if-eqz v5, :cond_2b

    .line 2517
    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v6, v6, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_39

    move-result v5

    if-eqz v5, :cond_2b

    .line 2520
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    const/4 v0, 0x1

    .line 2526
    :goto_2a
    return v0

    .line 2514
    :cond_2b
    :try_start_2b
    invoke-interface {v0}, Lcom/google/common/collect/gg;->getNext()Lcom/google/common/collect/gg;
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_39

    move-result-object v0

    goto :goto_14

    .line 2513
    :cond_30
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    .line 2526
    :cond_34
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    move v0, v1

    goto :goto_2a

    :catchall_39
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    throw v0
.end method

.method copyEntry(Lcom/google/common/collect/gg;Lcom/google/common/collect/gg;)Lcom/google/common/collect/gg;
    .registers 6
    .parameter
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2184
    invoke-interface {p1}, Lcom/google/common/collect/gg;->getValueReference()Lcom/google/common/collect/gs;

    move-result-object v0

    .line 2185
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v1, v1, Lcom/google/common/collect/MapMakerInternalMap;->entryFactory:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    invoke-virtual {v1, p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->copyEntry(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/gg;Lcom/google/common/collect/gg;)Lcom/google/common/collect/gg;

    move-result-object v1

    .line 2186
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v0, v2, v1}, Lcom/google/common/collect/gs;->a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/gg;)Lcom/google/common/collect/gs;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/common/collect/gg;->setValueReference(Lcom/google/common/collect/gs;)V

    .line 2187
    return-object v1
.end method

.method drainKeyReferenceQueue()V
    .registers 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2232
    const/4 v0, 0x0

    move v1, v0

    .line 2233
    :goto_2
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 2235
    check-cast v0, Lcom/google/common/collect/gg;

    .line 2236
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/MapMakerInternalMap;->reclaimKey(Lcom/google/common/collect/gg;)V

    .line 2237
    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_19

    move v1, v0

    .line 2238
    goto :goto_2

    .line 2241
    :cond_19
    return-void
.end method

.method drainRecencyQueue()V
    .registers 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2338
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/gg;

    if-eqz v0, :cond_2d

    .line 2343
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2344
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2346
    :cond_17
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap;->expiresAfterAccess()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2347
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2350
    :cond_2d
    return-void
.end method

.method drainReferenceQueues()V
    .registers 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->usesKeyReferences()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2222
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->drainKeyReferenceQueue()V

    .line 2224
    :cond_b
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->usesValueReferences()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2225
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->drainValueReferenceQueue()V

    .line 2227
    :cond_16
    return-void
.end method

.method drainValueReferenceQueue()V
    .registers 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2246
    const/4 v0, 0x0

    move v1, v0

    .line 2247
    :goto_2
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 2249
    check-cast v0, Lcom/google/common/collect/gs;

    .line 2250
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/MapMakerInternalMap;->reclaimValue(Lcom/google/common/collect/gs;)V

    .line 2251
    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_19

    move v1, v0

    .line 2252
    goto :goto_2

    .line 2255
    :cond_19
    return-void
.end method

.method enqueueNotification(Lcom/google/common/collect/gg;Lcom/google/common/collect/MapMaker$RemovalCause;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2394
    invoke-interface {p1}, Lcom/google/common/collect/gg;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/gg;->getHash()I

    move-result v1

    invoke-interface {p1}, Lcom/google/common/collect/gg;->getValueReference()Lcom/google/common/collect/gs;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/collect/gs;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2395
    return-void
.end method

.method enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V
    .registers 7
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 2398
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->removalNotificationQueue:Ljava/util/Queue;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap;->DISCARDING_QUEUE:Ljava/util/Queue;

    if-eq v0, v1, :cond_14

    .line 2399
    new-instance v0, Lcom/google/common/collect/MapMaker$RemovalNotification;

    invoke-direct {v0, p1, p3, p4}, Lcom/google/common/collect/MapMaker$RemovalNotification;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2400
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v1, v1, Lcom/google/common/collect/MapMakerInternalMap;->removalNotificationQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2402
    :cond_14
    return-void
.end method

.method evictEntries()Z
    .registers 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2412
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->evictsBySize()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->maxSegmentSize:I

    if-lt v0, v1, :cond_2d

    .line 2413
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->drainRecencyQueue()V

    .line 2415
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/gg;

    .line 2416
    invoke-interface {v0}, Lcom/google/common/collect/gg;->getHash()I

    move-result v1

    sget-object v2, Lcom/google/common/collect/MapMaker$RemovalCause;->SIZE:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeEntry(Lcom/google/common/collect/gg;ILcom/google/common/collect/MapMaker$RemovalCause;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2417
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2419
    :cond_2b
    const/4 v0, 0x1

    .line 2421
    :goto_2c
    return v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method expand()V
    .registers 12
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2605
    iget-object v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2606
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    .line 2607
    const/high16 v0, 0x4000

    if-lt v8, v0, :cond_b

    .line 2670
    :goto_a
    return-void

    .line 2621
    :cond_b
    iget v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2622
    shl-int/lit8 v0, v8, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v9

    .line 2623
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    .line 2624
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .line 2625
    const/4 v0, 0x0

    move v6, v0

    :goto_25
    if-ge v6, v8, :cond_83

    .line 2628
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/gg;

    .line 2630
    if-eqz v0, :cond_8a

    .line 2631
    invoke-interface {v0}, Lcom/google/common/collect/gg;->getNext()Lcom/google/common/collect/gg;

    move-result-object v2

    .line 2632
    invoke-interface {v0}, Lcom/google/common/collect/gg;->getHash()I

    move-result v1

    and-int v4, v1, v10

    .line 2635
    if-nez v2, :cond_44

    .line 2636
    invoke-virtual {v9, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v2, v5

    .line 2625
    :cond_3f
    :goto_3f
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v5, v2

    goto :goto_25

    :cond_44
    move-object v1, v0

    .line 2643
    :goto_45
    if-eqz v2, :cond_55

    .line 2644
    invoke-interface {v2}, Lcom/google/common/collect/gg;->getHash()I

    move-result v3

    and-int/2addr v3, v10

    .line 2645
    if-eq v3, v4, :cond_88

    move-object v1, v2

    .line 2643
    :goto_4f
    invoke-interface {v2}, Lcom/google/common/collect/gg;->getNext()Lcom/google/common/collect/gg;

    move-result-object v2

    move v4, v3

    goto :goto_45

    .line 2651
    :cond_55
    invoke-virtual {v9, v4, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v3, v0

    move v2, v5

    .line 2654
    :goto_5a
    if-eq v3, v1, :cond_3f

    .line 2655
    invoke-virtual {p0, v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/google/common/collect/gg;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 2656
    invoke-virtual {p0, v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeCollectedEntry(Lcom/google/common/collect/gg;)V

    .line 2657
    add-int/lit8 v0, v2, -0x1

    .line 2654
    :goto_67
    invoke-interface {v3}, Lcom/google/common/collect/gg;->getNext()Lcom/google/common/collect/gg;

    move-result-object v2

    move-object v3, v2

    move v2, v0

    goto :goto_5a

    .line 2659
    :cond_6e
    invoke-interface {v3}, Lcom/google/common/collect/gg;->getHash()I

    move-result v0

    and-int v4, v0, v10

    .line 2660
    invoke-virtual {v9, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/gg;

    .line 2661
    invoke-virtual {p0, v3, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->copyEntry(Lcom/google/common/collect/gg;Lcom/google/common/collect/gg;)Lcom/google/common/collect/gg;

    move-result-object v0

    .line 2662
    invoke-virtual {v9, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v0, v2

    goto :goto_67

    .line 2668
    :cond_83
    iput-object v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2669
    iput v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    goto :goto_a

    :cond_88
    move v3, v4

    goto :goto_4f

    :cond_8a
    move v2, v5

    goto :goto_3f
.end method

.method expireEntries()V
    .registers 6
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2375
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->drainRecencyQueue()V

    .line 2377
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2389
    :cond_b
    return-void

    .line 2382
    :cond_c
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->ticker:Lcom/google/common/base/an;

    invoke-virtual {v0}, Lcom/google/common/base/an;->a()J

    move-result-wide v1

    .line 2384
    :cond_14
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/gg;

    if-eqz v0, :cond_b

    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v3, v0, v1, v2}, Lcom/google/common/collect/MapMakerInternalMap;->isExpired(Lcom/google/common/collect/gg;J)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2385
    invoke-interface {v0}, Lcom/google/common/collect/gg;->getHash()I

    move-result v3

    sget-object v4, Lcom/google/common/collect/MapMaker$RemovalCause;->EXPIRED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeEntry(Lcom/google/common/collect/gg;ILcom/google/common/collect/MapMaker$RemovalCause;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2386
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2470
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getLiveEntry(Ljava/lang/Object;I)Lcom/google/common/collect/gg;
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_20

    move-result-object v1

    .line 2471
    if-nez v1, :cond_b

    .line 2472
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    const/4 v0, 0x0

    .line 2483
    :goto_a
    return-object v0

    .line 2475
    :cond_b
    :try_start_b
    invoke-interface {v1}, Lcom/google/common/collect/gg;->getValueReference()Lcom/google/common/collect/gs;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/gs;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2476
    if-eqz v0, :cond_1c

    .line 2477
    invoke-virtual {p0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recordRead(Lcom/google/common/collect/gg;)V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_20

    .line 2483
    :goto_18
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    goto :goto_a

    .line 2479
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_18

    .line 2483
    :catchall_20
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    throw v0
.end method

.method getEntry(Ljava/lang/Object;I)Lcom/google/common/collect/gg;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2436
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_29

    .line 2437
    invoke-virtual {p0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getFirst(I)Lcom/google/common/collect/gg;

    move-result-object v0

    :goto_8
    if-eqz v0, :cond_29

    .line 2438
    invoke-interface {v0}, Lcom/google/common/collect/gg;->getHash()I

    move-result v1

    if-ne v1, p2, :cond_19

    .line 2439
    invoke-interface {v0}, Lcom/google/common/collect/gg;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2443
    if-nez v1, :cond_1e

    .line 2444
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V

    .line 2437
    :cond_19
    invoke-interface {v0}, Lcom/google/common/collect/gg;->getNext()Lcom/google/common/collect/gg;

    move-result-object v0

    goto :goto_8

    .line 2448
    :cond_1e
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2454
    :goto_28
    return-object v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method getFirst(I)Lcom/google/common/collect/gg;
    .registers 4
    .parameter

    .prologue
    .line 2429
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2430
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/gg;

    return-object v0
.end method

.method getLiveEntry(Ljava/lang/Object;I)Lcom/google/common/collect/gg;
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2458
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getEntry(Ljava/lang/Object;I)Lcom/google/common/collect/gg;

    move-result-object v1

    .line 2459
    if-nez v1, :cond_8

    .line 2465
    :goto_7
    return-object v0

    .line 2461
    :cond_8
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap;->expires()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/MapMakerInternalMap;->isExpired(Lcom/google/common/collect/gg;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2462
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryExpireEntries()V

    goto :goto_7

    :cond_1c
    move-object v0, v1

    .line 2465
    goto :goto_7
.end method

.method getLiveValue(Lcom/google/common/collect/gg;)Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3071
    invoke-interface {p1}, Lcom/google/common/collect/gg;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_b

    .line 3072
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V

    .line 3085
    :goto_a
    return-object v0

    .line 3075
    :cond_b
    invoke-interface {p1}, Lcom/google/common/collect/gg;->getValueReference()Lcom/google/common/collect/gs;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/gs;->get()Ljava/lang/Object;

    move-result-object v1

    .line 3076
    if-nez v1, :cond_19

    .line 3077
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V

    goto :goto_a

    .line 3081
    :cond_19
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap;->expires()Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/MapMakerInternalMap;->isExpired(Lcom/google/common/collect/gg;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 3082
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryExpireEntries()V

    goto :goto_a

    :cond_2d
    move-object v0, v1

    .line 3085
    goto :goto_a
.end method

.method initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .registers 4
    .parameter

    .prologue
    .line 2169
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    .line 2170
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->maxSegmentSize:I

    if-ne v0, v1, :cond_16

    .line 2172
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    .line 2174
    :cond_16
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2175
    return-void
.end method

.method isCollected(Lcom/google/common/collect/gg;)Z
    .registers 3
    .parameter

    .prologue
    .line 3049
    invoke-interface {p1}, Lcom/google/common/collect/gg;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    .line 3050
    const/4 v0, 0x1

    .line 3052
    :goto_7
    return v0

    :cond_8
    invoke-interface {p1}, Lcom/google/common/collect/gg;->getValueReference()Lcom/google/common/collect/gs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/google/common/collect/gs;)Z

    move-result v0

    goto :goto_7
.end method

.method isCollected(Lcom/google/common/collect/gs;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3060
    invoke-interface {p1}, Lcom/google/common/collect/gs;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3063
    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-interface {p1}, Lcom/google/common/collect/gs;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method newEntry(Ljava/lang/Object;ILcom/google/common/collect/gg;)Lcom/google/common/collect/gg;
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
    .line 2179
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->entryFactory:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->newEntry(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/gg;)Lcom/google/common/collect/gg;

    move-result-object v0

    return-object v0
.end method

.method newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .registers 3
    .parameter

    .prologue
    .line 2165
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method postReadCleanup()V
    .registers 2

    .prologue
    .line 3094
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_d

    .line 3095
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->runCleanup()V

    .line 3097
    :cond_d
    return-void
.end method

.method postWriteCleanup()V
    .registers 1

    .prologue
    .line 3114
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 3115
    return-void
.end method

.method preWriteCleanup()V
    .registers 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 3107
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->runLockedCleanup()V

    .line 3108
    return-void
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2533
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2535
    :try_start_4
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 2537
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v2, v0, 0x1

    .line 2538
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    if-le v2, v0, :cond_16

    .line 2539
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expand()V

    .line 2540
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v2, v0, 0x1

    .line 2543
    :cond_16
    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2544
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2545
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/gg;

    move-object v3, v0

    .line 2548
    :goto_27
    if-eqz v3, :cond_9a

    .line 2549
    invoke-interface {v3}, Lcom/google/common/collect/gg;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2550
    invoke-interface {v3}, Lcom/google/common/collect/gg;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_95

    if-eqz v6, :cond_95

    iget-object v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v7, v7, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v7, p1, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_95

    .line 2554
    invoke-interface {v3}, Lcom/google/common/collect/gg;->getValueReference()Lcom/google/common/collect/gs;

    move-result-object v4

    .line 2555
    invoke-interface {v4}, Lcom/google/common/collect/gs;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2557
    if-nez v0, :cond_74

    .line 2558
    iget v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2559
    invoke-virtual {p0, v3, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lcom/google/common/collect/gg;Ljava/lang/Object;)V

    .line 2560
    invoke-interface {v4}, Lcom/google/common/collect/gs;->b()Z

    move-result v3

    if-nez v3, :cond_69

    .line 2561
    sget-object v2, Lcom/google/common/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2562
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2566
    :cond_5f
    :goto_5f
    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_61
    .catchall {:try_start_4 .. :try_end_61} :catchall_be

    .line 2567
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2596
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move-object v0, v1

    :goto_68
    return-object v0

    .line 2563
    :cond_69
    :try_start_69
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictEntries()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 2564
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v2, v0, 0x1

    goto :goto_5f

    .line 2568
    :cond_74
    if-eqz p4, :cond_80

    .line 2572
    invoke-virtual {p0, v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recordLockedRead(Lcom/google/common/collect/gg;)V
    :try_end_79
    .catchall {:try_start_69 .. :try_end_79} :catchall_be

    .line 2595
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2596
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    goto :goto_68

    .line 2576
    :cond_80
    :try_start_80
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2577
    sget-object v1, Lcom/google/common/collect/MapMaker$RemovalCause;->REPLACED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2578
    invoke-virtual {p0, v3, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lcom/google/common/collect/gg;Ljava/lang/Object;)V
    :try_end_8e
    .catchall {:try_start_80 .. :try_end_8e} :catchall_be

    .line 2595
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2596
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    goto :goto_68

    .line 2548
    :cond_95
    :try_start_95
    invoke-interface {v3}, Lcom/google/common/collect/gg;->getNext()Lcom/google/common/collect/gg;

    move-result-object v3

    goto :goto_27

    .line 2585
    :cond_9a
    iget v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2586
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/collect/gg;)Lcom/google/common/collect/gg;

    move-result-object v0

    .line 2587
    invoke-virtual {p0, v0, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lcom/google/common/collect/gg;Ljava/lang/Object;)V

    .line 2588
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2589
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictEntries()Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 2590
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v0, v0, 0x1

    .line 2592
    :goto_b4
    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_b6
    .catchall {:try_start_95 .. :try_end_b6} :catchall_be

    .line 2593
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2596
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move-object v0, v1

    goto :goto_68

    .line 2595
    :catchall_be
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2596
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    throw v0

    :cond_c6
    move v0, v2

    goto :goto_b4
.end method

.method reclaimKey(Lcom/google/common/collect/gg;I)Z
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 2926
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2928
    :try_start_3
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2929
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2930
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v3, p2, v0

    .line 2931
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/gg;

    move-object v1, v0

    .line 2933
    :goto_16
    if-eqz v1, :cond_4b

    .line 2934
    if-ne v1, p1, :cond_46

    .line 2935
    iget v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2936
    invoke-interface {v1}, Lcom/google/common/collect/gg;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Lcom/google/common/collect/gg;->getValueReference()Lcom/google/common/collect/gs;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/common/collect/gs;->get()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/google/common/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v4, p2, v5, v6}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2938
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/gg;Lcom/google/common/collect/gg;)Lcom/google/common/collect/gg;

    move-result-object v0

    .line 2939
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 2940
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2941
    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_53

    .line 2942
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2949
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    const/4 v0, 0x1

    :goto_45
    return v0

    .line 2933
    :cond_46
    :try_start_46
    invoke-interface {v1}, Lcom/google/common/collect/gg;->getNext()Lcom/google/common/collect/gg;
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_53

    move-result-object v1

    goto :goto_16

    .line 2946
    :cond_4b
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2949
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    const/4 v0, 0x0

    goto :goto_45

    .line 2948
    :catchall_53
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2949
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    throw v0
.end method

.method reclaimValue(Ljava/lang/Object;ILcom/google/common/collect/gs;)Z
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2957
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2959
    :try_start_4
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2960
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2961
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 2962
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/gg;

    move-object v2, v0

    .line 2964
    :goto_17
    if-eqz v2, :cond_72

    .line 2965
    invoke-interface {v2}, Lcom/google/common/collect/gg;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 2966
    invoke-interface {v2}, Lcom/google/common/collect/gg;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_6d

    if-eqz v5, :cond_6d

    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v6, v6, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 2968
    invoke-interface {v2}, Lcom/google/common/collect/gg;->getValueReference()Lcom/google/common/collect/gs;

    move-result-object v5

    .line 2969
    if-ne v5, p3, :cond_5f

    .line 2970
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2971
    invoke-interface {p3}, Lcom/google/common/collect/gs;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Lcom/google/common/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, p2, v1, v5}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2972
    invoke-virtual {p0, v0, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/gg;Lcom/google/common/collect/gg;)Lcom/google/common/collect/gg;

    move-result-object v0

    .line 2973
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 2974
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2975
    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_51
    .catchall {:try_start_4 .. :try_end_51} :catchall_80

    .line 2976
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2985
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 2986
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    :cond_5d
    const/4 v0, 0x1

    :goto_5e
    return v0

    .line 2978
    :cond_5f
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2985
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_6b

    .line 2986
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    :cond_6b
    move v0, v1

    goto :goto_5e

    .line 2964
    :cond_6d
    :try_start_6d
    invoke-interface {v2}, Lcom/google/common/collect/gg;->getNext()Lcom/google/common/collect/gg;
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_80

    move-result-object v2

    goto :goto_17

    .line 2982
    :cond_72
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2985
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_7e

    .line 2986
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    :cond_7e
    move v0, v1

    goto :goto_5e

    .line 2984
    :catchall_80
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2985
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_8d

    .line 2986
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    :cond_8d
    throw v0
.end method

.method recordExpirationTime(Lcom/google/common/collect/gg;J)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2356
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->ticker:Lcom/google/common/base/an;

    invoke-virtual {v0}, Lcom/google/common/base/an;->a()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Lcom/google/common/collect/gg;->setExpirationTime(J)V

    .line 2357
    return-void
.end method

.method recordLockedRead(Lcom/google/common/collect/gg;)V
    .registers 4
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2302
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2303
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->expiresAfterAccess()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2304
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-wide v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recordExpirationTime(Lcom/google/common/collect/gg;J)V

    .line 2305
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2307
    :cond_19
    return-void
.end method

.method recordRead(Lcom/google/common/collect/gg;)V
    .registers 4
    .parameter

    .prologue
    .line 2287
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->expiresAfterAccess()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2288
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-wide v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recordExpirationTime(Lcom/google/common/collect/gg;J)V

    .line 2290
    :cond_f
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2291
    return-void
.end method

.method recordWrite(Lcom/google/common/collect/gg;)V
    .registers 4
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2316
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->drainRecencyQueue()V

    .line 2317
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2318
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->expires()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2321
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->expiresAfterAccess()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-wide v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    .line 2324
    :goto_1c
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recordExpirationTime(Lcom/google/common/collect/gg;J)V

    .line 2325
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2327
    :cond_24
    return-void

    .line 2321
    :cond_25
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-wide v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterWriteNanos:J

    goto :goto_1c
.end method

.method remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2768
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2770
    :try_start_4
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 2772
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2773
    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2774
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2775
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/gg;

    move-object v3, v0

    .line 2777
    :goto_1a
    if-eqz v3, :cond_73

    .line 2778
    invoke-interface {v3}, Lcom/google/common/collect/gg;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2779
    invoke-interface {v3}, Lcom/google/common/collect/gg;->getHash()I

    move-result v2

    if-ne v2, p2, :cond_6d

    if-eqz v6, :cond_6d

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 2781
    invoke-interface {v3}, Lcom/google/common/collect/gg;->getValueReference()Lcom/google/common/collect/gs;

    move-result-object v7

    .line 2782
    invoke-interface {v7}, Lcom/google/common/collect/gs;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2785
    if-eqz v2, :cond_5c

    .line 2786
    sget-object v1, Lcom/google/common/collect/MapMaker$RemovalCause;->EXPLICIT:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 2793
    :goto_3e
    iget v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2794
    invoke-virtual {p0, v6, p2, v2, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2795
    invoke-virtual {p0, v0, v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/gg;Lcom/google/common/collect/gg;)Lcom/google/common/collect/gg;

    move-result-object v0

    .line 2796
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 2797
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2798
    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_54
    .catchall {:try_start_4 .. :try_end_54} :catchall_7b

    .line 2805
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2806
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move-object v0, v2

    :goto_5b
    return-object v0

    .line 2787
    :cond_5c
    :try_start_5c
    invoke-virtual {p0, v7}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/google/common/collect/gs;)Z

    move-result v7

    if-eqz v7, :cond_65

    .line 2788
    sget-object v1, Lcom/google/common/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/google/common/collect/MapMaker$RemovalCause;
    :try_end_64
    .catchall {:try_start_5c .. :try_end_64} :catchall_7b

    goto :goto_3e

    .line 2790
    :cond_65
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2806
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move-object v0, v1

    goto :goto_5b

    .line 2777
    :cond_6d
    :try_start_6d
    invoke-interface {v3}, Lcom/google/common/collect/gg;->getNext()Lcom/google/common/collect/gg;
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_7b

    move-result-object v2

    move-object v3, v2

    goto :goto_1a

    .line 2803
    :cond_73
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2806
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move-object v0, v1

    goto :goto_5b

    .line 2805
    :catchall_7b
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2806
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    throw v0
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;)Z
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2811
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2813
    :try_start_4
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 2815
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2816
    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2817
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2818
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/gg;

    move-object v3, v0

    .line 2820
    :goto_1a
    if-eqz v3, :cond_81

    .line 2821
    invoke-interface {v3}, Lcom/google/common/collect/gg;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2822
    invoke-interface {v3}, Lcom/google/common/collect/gg;->getHash()I

    move-result v2

    if-ne v2, p2, :cond_7b

    if-eqz v6, :cond_7b

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 2824
    invoke-interface {v3}, Lcom/google/common/collect/gg;->getValueReference()Lcom/google/common/collect/gs;

    move-result-object v2

    .line 2825
    invoke-interface {v2}, Lcom/google/common/collect/gs;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2828
    iget-object v8, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v8, v8, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v8, p3, v7}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_69

    .line 2829
    sget-object v2, Lcom/google/common/collect/MapMaker$RemovalCause;->EXPLICIT:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 2836
    :goto_46
    iget v8, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2837
    invoke-virtual {p0, v6, p2, v7, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2838
    invoke-virtual {p0, v0, v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/gg;Lcom/google/common/collect/gg;)Lcom/google/common/collect/gg;

    move-result-object v0

    .line 2839
    iget v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v3, v3, -0x1

    .line 2840
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2841
    iput v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2842
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->EXPLICIT:Lcom/google/common/collect/MapMaker$RemovalCause;
    :try_end_5e
    .catchall {:try_start_4 .. :try_end_5e} :catchall_88

    if-ne v2, v0, :cond_79

    const/4 v0, 0x1

    .line 2848
    :goto_61
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2849
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move v1, v0

    :goto_68
    return v1

    .line 2830
    :cond_69
    :try_start_69
    invoke-virtual {p0, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/google/common/collect/gs;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 2831
    sget-object v2, Lcom/google/common/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/google/common/collect/MapMaker$RemovalCause;
    :try_end_71
    .catchall {:try_start_69 .. :try_end_71} :catchall_88

    goto :goto_46

    .line 2833
    :cond_72
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2849
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    goto :goto_68

    :cond_79
    move v0, v1

    .line 2842
    goto :goto_61

    .line 2820
    :cond_7b
    :try_start_7b
    invoke-interface {v3}, Lcom/google/common/collect/gg;->getNext()Lcom/google/common/collect/gg;
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_88

    move-result-object v2

    move-object v3, v2

    goto :goto_1a

    .line 2846
    :cond_81
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2849
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    goto :goto_68

    .line 2848
    :catchall_88
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2849
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    throw v0
.end method

.method removeCollectedEntry(Lcom/google/common/collect/gg;)V
    .registers 3
    .parameter

    .prologue
    .line 2917
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Lcom/google/common/collect/gg;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2918
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2919
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2920
    return-void
.end method

.method removeEntry(Lcom/google/common/collect/gg;ILcom/google/common/collect/MapMaker$RemovalCause;)Z
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 3024
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 3025
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3026
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v3, p2, v0

    .line 3027
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/gg;

    move-object v1, v0

    .line 3029
    :goto_13
    if-eqz v1, :cond_40

    .line 3030
    if-ne v1, p1, :cond_3b

    .line 3031
    iget v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 3032
    invoke-interface {v1}, Lcom/google/common/collect/gg;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Lcom/google/common/collect/gg;->getValueReference()Lcom/google/common/collect/gs;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/common/collect/gs;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, p2, v5, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 3033
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/gg;Lcom/google/common/collect/gg;)Lcom/google/common/collect/gg;

    move-result-object v0

    .line 3034
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 3035
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3036
    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 3037
    const/4 v0, 0x1

    .line 3041
    :goto_3a
    return v0

    .line 3029
    :cond_3b
    invoke-interface {v1}, Lcom/google/common/collect/gg;->getNext()Lcom/google/common/collect/gg;

    move-result-object v1

    goto :goto_13

    .line 3041
    :cond_40
    const/4 v0, 0x0

    goto :goto_3a
.end method

.method removeFromChain(Lcom/google/common/collect/gg;Lcom/google/common/collect/gg;)Lcom/google/common/collect/gg;
    .registers 6
    .parameter
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2899
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2900
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2902
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2903
    invoke-interface {p2}, Lcom/google/common/collect/gg;->getNext()Lcom/google/common/collect/gg;

    move-result-object v0

    .line 2904
    :goto_10
    if-eq p1, p2, :cond_27

    .line 2905
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/google/common/collect/gg;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2906
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeCollectedEntry(Lcom/google/common/collect/gg;)V

    .line 2907
    add-int/lit8 v1, v1, -0x1

    .line 2904
    :goto_1d
    invoke-interface {p1}, Lcom/google/common/collect/gg;->getNext()Lcom/google/common/collect/gg;

    move-result-object p1

    goto :goto_10

    .line 2909
    :cond_22
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->copyEntry(Lcom/google/common/collect/gg;Lcom/google/common/collect/gg;)Lcom/google/common/collect/gg;

    move-result-object v0

    goto :goto_1d

    .line 2912
    :cond_27
    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2913
    return-object v0
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2724
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2726
    :try_start_4
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 2728
    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2729
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2730
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/gg;

    move-object v3, v0

    .line 2732
    :goto_18
    if-eqz v3, :cond_7e

    .line 2733
    invoke-interface {v3}, Lcom/google/common/collect/gg;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2734
    invoke-interface {v3}, Lcom/google/common/collect/gg;->getHash()I

    move-result v2

    if-ne v2, p2, :cond_78

    if-eqz v6, :cond_78

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 2738
    invoke-interface {v3}, Lcom/google/common/collect/gg;->getValueReference()Lcom/google/common/collect/gs;

    move-result-object v7

    .line 2739
    invoke-interface {v7}, Lcom/google/common/collect/gs;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2740
    if-nez v2, :cond_62

    .line 2741
    invoke-virtual {p0, v7}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/google/common/collect/gs;)Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 2742
    iget v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2743
    iget v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2744
    sget-object v7, Lcom/google/common/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v6, p2, v2, v7}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2745
    invoke-virtual {p0, v0, v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/gg;Lcom/google/common/collect/gg;)Lcom/google/common/collect/gg;

    move-result-object v0

    .line 2746
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v2, v2, -0x1

    .line 2747
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2748
    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_5a
    .catchall {:try_start_4 .. :try_end_5a} :catchall_86

    .line 2750
    :cond_5a
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2763
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move-object v0, v1

    :goto_61
    return-object v0

    .line 2753
    :cond_62
    :try_start_62
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2754
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->REPLACED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, p2, v2, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2755
    invoke-virtual {p0, v3, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lcom/google/common/collect/gg;Ljava/lang/Object;)V
    :try_end_70
    .catchall {:try_start_62 .. :try_end_70} :catchall_86

    .line 2762
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2763
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move-object v0, v2

    goto :goto_61

    .line 2732
    :cond_78
    :try_start_78
    invoke-interface {v3}, Lcom/google/common/collect/gg;->getNext()Lcom/google/common/collect/gg;
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_86

    move-result-object v2

    move-object v3, v2

    goto :goto_18

    .line 2760
    :cond_7e
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2763
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move-object v0, v1

    goto :goto_61

    .line 2762
    :catchall_86
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2763
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    throw v0
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2673
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2675
    :try_start_4
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 2677
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2678
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 2679
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/gg;

    move-object v2, v0

    .line 2681
    :goto_18
    if-eqz v2, :cond_92

    .line 2682
    invoke-interface {v2}, Lcom/google/common/collect/gg;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 2683
    invoke-interface {v2}, Lcom/google/common/collect/gg;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_8d

    if-eqz v5, :cond_8d

    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v6, v6, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8d

    .line 2687
    invoke-interface {v2}, Lcom/google/common/collect/gg;->getValueReference()Lcom/google/common/collect/gs;

    move-result-object v6

    .line 2688
    invoke-interface {v6}, Lcom/google/common/collect/gs;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2689
    if-nez v7, :cond_62

    .line 2690
    invoke-virtual {p0, v6}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/google/common/collect/gs;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 2691
    iget v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2692
    iget v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2693
    sget-object v6, Lcom/google/common/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v5, p2, v7, v6}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2694
    invoke-virtual {p0, v0, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/gg;Lcom/google/common/collect/gg;)Lcom/google/common/collect/gg;

    move-result-object v0

    .line 2695
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v2, v2, -0x1

    .line 2696
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2697
    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_5a
    .catchall {:try_start_4 .. :try_end_5a} :catchall_9a

    .line 2699
    :cond_5a
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2719
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move v0, v1

    :goto_61
    return v0

    .line 2702
    :cond_62
    :try_start_62
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, p3, v7}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 2703
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2704
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->REPLACED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, p2, v7, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2705
    invoke-virtual {p0, v2, p4}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lcom/google/common/collect/gg;Ljava/lang/Object;)V
    :try_end_7a
    .catchall {:try_start_62 .. :try_end_7a} :catchall_9a

    .line 2706
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2719
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    const/4 v0, 0x1

    goto :goto_61

    .line 2710
    :cond_82
    :try_start_82
    invoke-virtual {p0, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recordLockedRead(Lcom/google/common/collect/gg;)V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_9a

    .line 2711
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2719
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move v0, v1

    goto :goto_61

    .line 2681
    :cond_8d
    :try_start_8d
    invoke-interface {v2}, Lcom/google/common/collect/gg;->getNext()Lcom/google/common/collect/gg;
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_9a

    move-result-object v2

    goto :goto_18

    .line 2716
    :cond_92
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2719
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move v0, v1

    goto :goto_61

    .line 2718
    :catchall_9a
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2719
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    throw v0
.end method

.method runCleanup()V
    .registers 1

    .prologue
    .line 3118
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->runLockedCleanup()V

    .line 3119
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 3120
    return-void
.end method

.method runLockedCleanup()V
    .registers 3

    .prologue
    .line 3123
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3125
    :try_start_6
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->drainReferenceQueues()V

    .line 3126
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expireEntries()V

    .line 3127
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_16

    .line 3129
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 3132
    :cond_15
    return-void

    .line 3129
    :catchall_16
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v0
.end method

.method runUnlockedCleanup()V
    .registers 2

    .prologue
    .line 3136
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3137
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->processPendingNotifications()V

    .line 3139
    :cond_b
    return-void
.end method

.method setValue(Lcom/google/common/collect/gg;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->referenceValue(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/gg;Ljava/lang/Object;)Lcom/google/common/collect/gs;

    move-result-object v0

    .line 2196
    invoke-interface {p1, v0}, Lcom/google/common/collect/gg;->setValueReference(Lcom/google/common/collect/gs;)V

    .line 2197
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recordWrite(Lcom/google/common/collect/gg;)V

    .line 2198
    return-void
.end method

.method tryDrainReferenceQueues()V
    .registers 2

    .prologue
    .line 2206
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2208
    :try_start_6
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->drainReferenceQueues()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_d

    .line 2210
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2213
    :cond_c
    return-void

    .line 2210
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v0
.end method

.method tryExpireEntries()V
    .registers 2

    .prologue
    .line 2363
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2365
    :try_start_6
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expireEntries()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_d

    .line 2367
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2371
    :cond_c
    return-void

    .line 2367
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v0
.end method
