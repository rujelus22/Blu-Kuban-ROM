.class Lcom/google/common/collect/Synchronized$SynchronizedList;
.super Lcom/google/common/collect/Synchronized$SynchronizedCollection;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;Lcom/google/common/collect/lv;)V

    .line 307
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 315
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 316
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 317
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_c

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 322
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 323
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return v0

    .line 324
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method delegate()Ljava/util/List;
    .registers 2

    .prologue
    .line 310
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 380
    if-ne p1, p0, :cond_4

    .line 381
    const/4 v0, 0x1

    .line 384
    :goto_3
    return v0

    .line 383
    :cond_4
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 384
    :try_start_7
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_11

    goto :goto_3

    .line 385
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 329
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 330
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return-object v0

    .line 331
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 389
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 390
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return v0

    .line 391
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 4
    .parameter

    .prologue
    .line 336
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 337
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return v0

    .line 338
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 4
    .parameter

    .prologue
    .line 343
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 344
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return v0

    .line 345
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .parameter

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 360
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 361
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return-object v0

    .line 362
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 367
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 368
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return-object v0

    .line 369
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 374
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 375
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedList;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_13

    return-object v0

    .line 376
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method
