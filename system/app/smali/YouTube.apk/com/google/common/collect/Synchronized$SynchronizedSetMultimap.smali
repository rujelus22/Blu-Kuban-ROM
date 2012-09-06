.class Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;
.super Lcom/google/common/collect/Synchronized$SynchronizedMultimap;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/jv;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient entrySet:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/common/collect/jv;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 737
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;-><init>(Lcom/google/common/collect/hu;Ljava/lang/Object;)V

    .line 738
    return-void
.end method


# virtual methods
.method bridge synthetic delegate()Lcom/google/common/collect/hu;
    .registers 2

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lcom/google/common/collect/jv;

    move-result-object v0

    return-object v0
.end method

.method delegate()Lcom/google/common/collect/jv;
    .registers 2

    .prologue
    .line 740
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/jv;

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lcom/google/common/collect/jv;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .registers 4

    .prologue
    .line 759
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 760
    :try_start_3
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_17

    .line 761
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lcom/google/common/collect/jv;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/jv;->entries()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->a(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->entrySet:Ljava/util/Set;

    .line 763
    :cond_17
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->entrySet:Ljava/util/Set;

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1b

    return-object v0

    .line 764
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 731
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .registers 5
    .parameter

    .prologue
    .line 743
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 744
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lcom/google/common/collect/jv;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/jv;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/common/collect/Synchronized;->a(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_13

    return-object v0

    .line 745
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 731
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .registers 4
    .parameter

    .prologue
    .line 748
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 749
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lcom/google/common/collect/jv;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/jv;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return-object v0

    .line 750
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
    .line 731
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 754
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 755
    :try_start_3
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lcom/google/common/collect/jv;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/jv;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_d

    return-object v0

    .line 756
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method
