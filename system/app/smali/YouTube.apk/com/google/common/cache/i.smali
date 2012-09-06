.class public abstract Lcom/google/common/cache/i;
.super Lcom/google/common/collect/db;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/d;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/common/collect/db;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/google/common/cache/i;->delegate()Lcom/google/common/cache/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/d;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public asMap()Ljava/util/concurrent/ConcurrentMap;
    .registers 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/common/cache/i;->delegate()Lcom/google/common/cache/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/d;->asMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method public cleanUp()V
    .registers 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/common/cache/i;->delegate()Lcom/google/common/cache/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/d;->cleanUp()V

    .line 116
    return-void
.end method

.method protected abstract delegate()Lcom/google/common/cache/d;
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/common/cache/i;->delegate()Lcom/google/common/cache/d;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/common/cache/i;->delegate()Lcom/google/common/cache/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/common/cache/i;->delegate()Lcom/google/common/cache/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/cache/d;->get(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAllPresent(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;
    .registers 3
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/google/common/cache/i;->delegate()Lcom/google/common/cache/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/d;->getAllPresent(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/common/cache/i;->delegate()Lcom/google/common/cache/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/d;->getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/google/common/cache/i;->delegate()Lcom/google/common/cache/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/d;->getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invalidate(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/common/cache/i;->delegate()Lcom/google/common/cache/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/d;->invalidate(Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public invalidateAll()V
    .registers 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/google/common/cache/i;->delegate()Lcom/google/common/cache/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/d;->invalidateAll()V

    .line 96
    return-void
.end method

.method public invalidateAll(Ljava/lang/Iterable;)V
    .registers 3
    .parameter

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/common/cache/i;->delegate()Lcom/google/common/cache/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/cache/d;->invalidateAll(Ljava/lang/Iterable;)V

    .line 91
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/common/cache/i;->delegate()Lcom/google/common/cache/d;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/cache/d;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public size()J
    .registers 3

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/google/common/cache/i;->delegate()Lcom/google/common/cache/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/d;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public stats()Lcom/google/common/cache/h;
    .registers 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/google/common/cache/i;->delegate()Lcom/google/common/cache/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/d;->stats()Lcom/google/common/cache/h;

    move-result-object v0

    return-object v0
.end method
