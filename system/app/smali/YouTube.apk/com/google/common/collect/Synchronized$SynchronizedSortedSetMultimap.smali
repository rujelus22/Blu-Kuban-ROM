.class Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;
.super Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/km;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lcom/google/common/collect/km;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 781
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;-><init>(Lcom/google/common/collect/jv;Ljava/lang/Object;)V

    .line 782
    return-void
.end method


# virtual methods
.method bridge synthetic delegate()Lcom/google/common/collect/hu;
    .registers 2

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->delegate()Lcom/google/common/collect/km;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic delegate()Lcom/google/common/collect/jv;
    .registers 2

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->delegate()Lcom/google/common/collect/km;

    move-result-object v0

    return-object v0
.end method

.method delegate()Lcom/google/common/collect/km;
    .registers 2

    .prologue
    .line 784
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lcom/google/common/collect/jv;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/km;

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->delegate()Lcom/google/common/collect/km;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 777
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .parameter

    .prologue
    .line 777
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 5
    .parameter

    .prologue
    .line 787
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 788
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->delegate()Lcom/google/common/collect/km;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/km;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->a(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_13

    return-object v0

    .line 789
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 777
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .parameter

    .prologue
    .line 777
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 4
    .parameter

    .prologue
    .line 792
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 793
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->delegate()Lcom/google/common/collect/km;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/km;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return-object v0

    .line 794
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
    .line 777
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 777
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 798
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 799
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->delegate()Lcom/google/common/collect/km;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/km;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return-object v0

    .line 800
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public valueComparator()Ljava/util/Comparator;
    .registers 3

    .prologue
    .line 804
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 805
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSetMultimap;->delegate()Lcom/google/common/collect/km;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/km;->valueComparator()Ljava/util/Comparator;

    move-result-object v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return-object v0

    .line 806
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method
