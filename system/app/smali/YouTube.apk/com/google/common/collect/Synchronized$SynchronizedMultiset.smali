.class Lcom/google/common/collect/Synchronized$SynchronizedMultiset;
.super Lcom/google/common/collect/Synchronized$SynchronizedCollection;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/iq;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient elementSet:Ljava/util/Set;

.field transient entrySet:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/common/collect/iq;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 420
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;Lcom/google/common/collect/lv;)V

    .line 421
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 436
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 437
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/iq;->add(Ljava/lang/Object;I)I

    move-result v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return v0

    .line 438
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public count(Ljava/lang/Object;)I
    .registers 4
    .parameter

    .prologue
    .line 429
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 430
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/iq;->count(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return v0

    .line 431
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method delegate()Lcom/google/common/collect/iq;
    .registers 2

    .prologue
    .line 424
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/iq;

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/iq;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/iq;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Ljava/util/Set;
    .registers 4

    .prologue
    .line 464
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 465
    :try_start_3
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->elementSet:Ljava/util/Set;

    if-nez v0, :cond_17

    .line 466
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/iq;->elementSet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->b(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->elementSet:Ljava/util/Set;

    .line 468
    :cond_17
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->elementSet:Ljava/util/Set;

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1b

    return-object v0

    .line 469
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 4

    .prologue
    .line 474
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 475
    :try_start_3
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_17

    .line 476
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/iq;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->b(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->entrySet:Ljava/util/Set;

    .line 478
    :cond_17
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->entrySet:Ljava/util/Set;

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1b

    return-object v0

    .line 479
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 483
    if-ne p1, p0, :cond_4

    .line 484
    const/4 v0, 0x1

    .line 487
    :goto_3
    return v0

    .line 486
    :cond_4
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 487
    :try_start_7
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_11

    goto :goto_3

    .line 488
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 492
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 493
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return v0

    .line 494
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 443
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 444
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/iq;->remove(Ljava/lang/Object;I)I

    move-result v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return v0

    .line 445
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 450
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 451
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/iq;->setCount(Ljava/lang/Object;I)I

    move-result v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return v0

    .line 452
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 457
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 458
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/collect/iq;->setCount(Ljava/lang/Object;II)Z

    move-result v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return v0

    .line 459
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method
