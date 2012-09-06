.class Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;
.super Lcom/google/common/collect/Synchronized$SynchronizedMultimap;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/fn;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lcom/google/common/collect/fn;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 698
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;-><init>(Lcom/google/common/collect/hu;Ljava/lang/Object;)V

    .line 699
    return-void
.end method


# virtual methods
.method delegate()Lcom/google/common/collect/fn;
    .registers 2

    .prologue
    .line 701
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fn;

    return-object v0
.end method

.method bridge synthetic delegate()Lcom/google/common/collect/hu;
    .registers 2

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;->delegate()Lcom/google/common/collect/fn;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;->delegate()Lcom/google/common/collect/fn;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .registers 5
    .parameter

    .prologue
    .line 704
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 705
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;->delegate()Lcom/google/common/collect/fn;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/fn;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_13

    return-object v0

    .line 706
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 694
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/List;
    .registers 4
    .parameter

    .prologue
    .line 709
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 710
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;->delegate()Lcom/google/common/collect/fn;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/fn;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return-object v0

    .line 711
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 694
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 715
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 716
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedListMultimap;->delegate()Lcom/google/common/collect/fn;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/fn;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return-object v0

    .line 717
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method
