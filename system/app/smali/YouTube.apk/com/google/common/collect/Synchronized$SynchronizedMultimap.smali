.class Lcom/google/common/collect/Synchronized$SynchronizedMultimap;
.super Lcom/google/common/collect/Synchronized$SynchronizedObject;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/hu;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient asMap:Ljava/util/Map;

.field transient entries:Ljava/util/Collection;

.field transient keySet:Ljava/util/Set;

.field transient keys:Lcom/google/common/collect/iq;

.field transient valuesCollection:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/google/common/collect/hu;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 523
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedObject;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 524
    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .registers 5

    .prologue
    .line 649
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 650
    :try_start_3
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->asMap:Ljava/util/Map;

    if-nez v0, :cond_18

    .line 651
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;

    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/hu;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/collect/hu;->asMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->asMap:Ljava/util/Map;

    .line 653
    :cond_18
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->asMap:Ljava/util/Map;

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1c

    return-object v0

    .line 654
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 612
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 613
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/hu;->clear()V

    .line 614
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_c

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 556
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 557
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/hu;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return v0

    .line 558
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 542
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 543
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/hu;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return v0

    .line 544
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 549
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 550
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/hu;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return v0

    .line 551
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method delegate()Lcom/google/common/collect/hu;
    .registers 2

    .prologue
    .line 519
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedObject;->delegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/hu;

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Collection;
    .registers 4

    .prologue
    .line 639
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 640
    :try_start_3
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->entries:Ljava/util/Collection;

    if-nez v0, :cond_17

    .line 641
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/hu;->entries()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->a(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->entries:Ljava/util/Collection;

    .line 643
    :cond_17
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->entries:Ljava/util/Collection;

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1b

    return-object v0

    .line 644
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 668
    if-ne p1, p0, :cond_4

    .line 669
    const/4 v0, 0x1

    .line 672
    :goto_3
    return v0

    .line 671
    :cond_4
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 672
    :try_start_7
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_11

    goto :goto_3

    .line 673
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 5
    .parameter

    .prologue
    .line 563
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 564
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/hu;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->a(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_13

    return-object v0

    .line 565
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 677
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 678
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return v0

    .line 679
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    .line 535
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 536
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/hu;->isEmpty()Z

    move-result v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return v0

    .line 537
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 4

    .prologue
    .line 619
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 620
    :try_start_3
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_17

    .line 621
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/hu;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->b(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->keySet:Ljava/util/Set;

    .line 623
    :cond_17
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->keySet:Ljava/util/Set;

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1b

    return-object v0

    .line 624
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public keys()Lcom/google/common/collect/iq;
    .registers 5

    .prologue
    .line 659
    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 660
    :try_start_3
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->keys:Lcom/google/common/collect/iq;

    if-nez v0, :cond_1c

    .line 661
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/hu;->keys()Lcom/google/common/collect/iq;

    move-result-object v1

    iget-object v3, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    instance-of v0, v1, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;

    if-nez v0, :cond_19

    instance-of v0, v1, Lcom/google/common/collect/ImmutableMultiset;

    if-eqz v0, :cond_20

    :cond_19
    move-object v0, v1

    :goto_1a
    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->keys:Lcom/google/common/collect/iq;

    .line 663
    :cond_1c
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->keys:Lcom/google/common/collect/iq;

    monitor-exit v2

    return-object v0

    .line 661
    :cond_20
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;

    invoke-direct {v0, v1, v3}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;-><init>(Lcom/google/common/collect/iq;Ljava/lang/Object;)V
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_26

    goto :goto_1a

    .line 664
    :catchall_26
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 570
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 571
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/hu;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return v0

    .line 572
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public putAll(Lcom/google/common/collect/hu;)Z
    .registers 4
    .parameter

    .prologue
    .line 584
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 585
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/hu;->putAll(Lcom/google/common/collect/hu;)Z

    move-result v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return v0

    .line 586
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 577
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 578
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/hu;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return v0

    .line 579
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 598
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 599
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/hu;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return v0

    .line 600
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 4
    .parameter

    .prologue
    .line 605
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 606
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/hu;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return-object v0

    .line 607
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 591
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 592
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/hu;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return-object v0

    .line 593
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public size()I
    .registers 3

    .prologue
    .line 528
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 529
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/hu;->size()I

    move-result v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return v0

    .line 530
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public values()Ljava/util/Collection;
    .registers 4

    .prologue
    .line 629
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 630
    :try_start_3
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->valuesCollection:Ljava/util/Collection;

    if-nez v0, :cond_17

    .line 631
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/hu;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->b(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->valuesCollection:Ljava/util/Collection;

    .line 633
    :cond_17
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->valuesCollection:Ljava/util/Collection;

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1b

    return-object v0

    .line 634
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method
