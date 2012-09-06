.class final Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;
.super Lcom/google/common/collect/MapMakerInternalMap$Segment;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;-><init>(Lcom/google/common/collect/MapMakerInternalMap;II)V

    .line 76
    return-void
.end method


# virtual methods
.method final compute(Ljava/lang/Object;ILcom/google/common/collect/gg;Lcom/google/common/collect/ck;)Ljava/lang/Object;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 176
    const/4 v1, 0x0

    .line 177
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 183
    :try_start_6
    monitor-enter p3
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_3e

    .line 184
    :try_start_7
    invoke-virtual {p4, p1}, Lcom/google/common/collect/ck;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_2b

    move-result-object v5

    .line 185
    :try_start_b
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_42

    move-result-wide v1

    .line 186
    :try_start_f
    monitor-exit p3
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_45

    .line 187
    if-eqz v5, :cond_1e

    .line 189
    const/4 v0, 0x1

    :try_start_13
    invoke-virtual {p0, p1, p2, v5, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_1e

    .line 192
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->REPLACED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, p2, v5, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_30

    .line 197
    :cond_1e
    cmp-long v0, v1, v3

    if-nez v0, :cond_25

    .line 198
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 200
    :cond_25
    if-nez v5, :cond_2a

    .line 201
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->clearValue(Ljava/lang/Object;ILcom/google/common/collect/gs;)Z

    :cond_2a
    return-object v5

    .line 186
    :catchall_2b
    move-exception v0

    move-object v5, v1

    move-wide v1, v3

    :goto_2e
    :try_start_2e
    monitor-exit p3

    throw v0
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_30

    .line 197
    :catchall_30
    move-exception v0

    :goto_31
    cmp-long v1, v1, v3

    if-nez v1, :cond_38

    .line 198
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 200
    :cond_38
    if-nez v5, :cond_3d

    .line 201
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->clearValue(Ljava/lang/Object;ILcom/google/common/collect/gs;)Z

    :cond_3d
    throw v0

    .line 197
    :catchall_3e
    move-exception v0

    move-object v5, v1

    move-wide v1, v3

    goto :goto_31

    .line 186
    :catchall_42
    move-exception v0

    move-wide v1, v3

    goto :goto_2e

    :catchall_45
    move-exception v0

    goto :goto_2e
.end method

.method final getOrCompute(Ljava/lang/Object;ILcom/google/common/base/v;)Ljava/lang/Object;
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 83
    :cond_2
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->getEntry(Ljava/lang/Object;I)Lcom/google/common/collect/gg;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_15

    .line 85
    invoke-virtual {p0, v1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->getLiveValue(Lcom/google/common/collect/gg;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_15

    .line 87
    invoke-virtual {p0, v1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->recordRead(Lcom/google/common/collect/gg;)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_be

    .line 169
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postReadCleanup()V

    :goto_14
    return-object v0

    .line 94
    :cond_15
    if-eqz v1, :cond_21

    :try_start_17
    invoke-interface {v1}, Lcom/google/common/collect/gg;->getValueReference()Lcom/google/common/collect/gs;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/gs;->b()Z

    move-result v0

    if-nez v0, :cond_de

    .line 96
    :cond_21
    const/4 v4, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->lock()V
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_be

    .line 99
    :try_start_25
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->preWriteCleanup()V

    .line 101
    iget v0, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->count:I

    add-int/lit8 v6, v0, -0x1

    .line 102
    iget-object v7, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 103
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v8, p2, v0

    .line 104
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/gg;

    move-object v5, v0

    .line 106
    :goto_3d
    if-eqz v5, :cond_102

    .line 107
    invoke-interface {v5}, Lcom/google/common/collect/gg;->getKey()Ljava/lang/Object;

    move-result-object v9

    .line 108
    invoke-interface {v5}, Lcom/google/common/collect/gg;->getHash()I

    move-result v1

    if-ne v1, p2, :cond_d2

    if-eqz v9, :cond_d2

    iget-object v1, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v1, v1, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v1, p1, v9}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 110
    invoke-interface {v5}, Lcom/google/common/collect/gg;->getValueReference()Lcom/google/common/collect/gs;

    move-result-object v1

    .line 111
    invoke-interface {v1}, Lcom/google/common/collect/gs;->b()Z

    move-result v1

    if-eqz v1, :cond_83

    move v6, v3

    .line 135
    :goto_60
    if-eqz v6, :cond_fe

    .line 136
    new-instance v1, Lcom/google/common/collect/ck;

    invoke-direct {v1, p3}, Lcom/google/common/collect/ck;-><init>(Lcom/google/common/base/v;)V

    .line 138
    if-nez v5, :cond_d8

    .line 139
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->newEntry(Ljava/lang/Object;ILcom/google/common/collect/gg;)Lcom/google/common/collect/gg;

    move-result-object v0

    .line 140
    invoke-interface {v0, v1}, Lcom/google/common/collect/gg;->setValueReference(Lcom/google/common/collect/gs;)V

    .line 141
    invoke-virtual {v7, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_73
    .catchall {:try_start_25 .. :try_end_73} :catchall_b6

    .line 147
    :goto_73
    :try_start_73
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->unlock()V

    .line 148
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postWriteCleanup()V

    .line 151
    if-eqz v6, :cond_dd

    .line 153
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->compute(Ljava/lang/Object;ILcom/google/common/collect/gg;Lcom/google/common/collect/ck;)Ljava/lang/Object;
    :try_end_7e
    .catchall {:try_start_73 .. :try_end_7e} :catchall_be

    move-result-object v0

    .line 169
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postReadCleanup()V

    goto :goto_14

    .line 114
    :cond_83
    :try_start_83
    invoke-interface {v5}, Lcom/google/common/collect/gg;->getValueReference()Lcom/google/common/collect/gs;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/gs;->get()Ljava/lang/Object;

    move-result-object v1

    .line 115
    if-nez v1, :cond_a0

    .line 116
    sget-object v10, Lcom/google/common/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v9, p2, v1, v10}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 127
    :goto_92
    iget-object v1, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v1, v5}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 128
    iget-object v1, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v1, v5}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 129
    iput v6, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->count:I

    move v6, v2

    .line 131
    goto :goto_60

    .line 117
    :cond_a0
    iget-object v10, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v10}, Lcom/google/common/collect/MapMakerInternalMap;->expires()Z

    move-result v10

    if-eqz v10, :cond_c3

    iget-object v10, p0, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v10, v5}, Lcom/google/common/collect/MapMakerInternalMap;->isExpired(Lcom/google/common/collect/gg;)Z

    move-result v10

    if-eqz v10, :cond_c3

    .line 120
    sget-object v10, Lcom/google/common/collect/MapMaker$RemovalCause;->EXPIRED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v9, p2, v1, v10}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V
    :try_end_b5
    .catchall {:try_start_83 .. :try_end_b5} :catchall_b6

    goto :goto_92

    .line 147
    :catchall_b6
    move-exception v0

    :try_start_b7
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->unlock()V

    .line 148
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postWriteCleanup()V

    throw v0
    :try_end_be
    .catchall {:try_start_b7 .. :try_end_be} :catchall_be

    .line 169
    :catchall_be
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postReadCleanup()V

    throw v0

    .line 122
    :cond_c3
    :try_start_c3
    invoke-virtual {p0, v5}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->recordLockedRead(Lcom/google/common/collect/gg;)V
    :try_end_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_b6

    .line 147
    :try_start_c6
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->unlock()V

    .line 148
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postWriteCleanup()V
    :try_end_cc
    .catchall {:try_start_c6 .. :try_end_cc} :catchall_be

    .line 169
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postReadCleanup()V

    move-object v0, v1

    goto/16 :goto_14

    .line 106
    :cond_d2
    :try_start_d2
    invoke-interface {v5}, Lcom/google/common/collect/gg;->getNext()Lcom/google/common/collect/gg;

    move-result-object v5

    goto/16 :goto_3d

    .line 143
    :cond_d8
    invoke-interface {v5, v1}, Lcom/google/common/collect/gg;->setValueReference(Lcom/google/common/collect/gs;)V
    :try_end_db
    .catchall {:try_start_d2 .. :try_end_db} :catchall_b6

    move-object v0, v5

    goto :goto_73

    :cond_dd
    move-object v1, v0

    .line 158
    :cond_de
    :try_start_de
    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fc

    move v0, v2

    :goto_e5
    const-string v4, "Recursive computation"

    invoke-static {v0, v4}, Lcom/google/common/base/ag;->b(ZLjava/lang/Object;)V

    .line 160
    invoke-interface {v1}, Lcom/google/common/collect/gg;->getValueReference()Lcom/google/common/collect/gs;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/gs;->c()Ljava/lang/Object;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_2

    .line 162
    invoke-virtual {p0, v1}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->recordRead(Lcom/google/common/collect/gg;)V
    :try_end_f7
    .catchall {:try_start_de .. :try_end_f7} :catchall_be

    .line 169
    invoke-virtual {p0}, Lcom/google/common/collect/ComputingConcurrentHashMap$ComputingSegment;->postReadCleanup()V

    goto/16 :goto_14

    :cond_fc
    move v0, v3

    .line 158
    goto :goto_e5

    :cond_fe
    move-object v1, v4

    move-object v0, v5

    goto/16 :goto_73

    :cond_102
    move v6, v2

    goto/16 :goto_60
.end method
