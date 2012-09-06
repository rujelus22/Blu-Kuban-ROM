.class Lcom/google/common/cache/LocalCache$LocalManualCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/d;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final localCache:Lcom/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lcom/google/common/cache/CacheBuilder;)V
    .registers 3
    .parameter

    .prologue
    .line 4745
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/cache/LocalCache$LocalManualCache;-><init>(Lcom/google/common/cache/CacheBuilder;Lcom/google/common/cache/CacheLoader;)V

    .line 4746
    return-void
.end method

.method protected constructor <init>(Lcom/google/common/cache/CacheBuilder;Lcom/google/common/cache/CacheLoader;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 4749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4750
    new-instance v0, Lcom/google/common/cache/LocalCache;

    invoke-direct {v0, p1, p2}, Lcom/google/common/cache/LocalCache;-><init>(Lcom/google/common/cache/CacheBuilder;Lcom/google/common/cache/CacheLoader;)V

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    .line 4751
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 4841
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache$LocalManualCache;->getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public asMap()Ljava/util/concurrent/ConcurrentMap;
    .registers 2

    .prologue
    .line 4805
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    return-object v0
.end method

.method public cleanUp()V
    .registers 2

    .prologue
    .line 4820
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->n()V

    .line 4821
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 4829
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/LocalCache;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 4763
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4764
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    new-instance v1, Lcom/google/common/cache/w;

    invoke-direct {v1, p0, p2}, Lcom/google/common/cache/w;-><init>(Lcom/google/common/cache/LocalCache$LocalManualCache;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/common/cache/LocalCache;->a(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAllPresent(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;
    .registers 3
    .parameter

    .prologue
    .line 4774
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/LocalCache;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 4758
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/LocalCache;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 4834
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache$LocalManualCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 4835
    :catch_5
    move-exception v0

    .line 4836
    new-instance v1, Lcom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public invalidate(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 4784
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4785
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/LocalCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4786
    return-void
.end method

.method public invalidateAll()V
    .registers 2

    .prologue
    .line 4795
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->clear()V

    .line 4796
    return-void
.end method

.method public invalidateAll(Ljava/lang/Iterable;)V
    .registers 3
    .parameter

    .prologue
    .line 4790
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lcom/google/common/cache/LocalCache;->c(Ljava/lang/Iterable;)V

    .line 4791
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 4779
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/cache/LocalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4780
    return-void
.end method

.method public size()J
    .registers 3

    .prologue
    .line 4800
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public stats()Lcom/google/common/cache/h;
    .registers 6

    .prologue
    .line 4810
    new-instance v1, Lcom/google/common/cache/b;

    invoke-direct {v1}, Lcom/google/common/cache/b;-><init>()V

    .line 4811
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->t:Lcom/google/common/cache/c;

    invoke-virtual {v1, v0}, Lcom/google/common/cache/b;->a(Lcom/google/common/cache/c;)V

    .line 4812
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    iget-object v2, v0, Lcom/google/common/cache/LocalCache;->e:[Lcom/google/common/cache/LocalCache$Segment;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v3, :cond_1e

    aget-object v4, v2, v0

    .line 4813
    iget-object v4, v4, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/c;

    invoke-virtual {v1, v4}, Lcom/google/common/cache/b;->a(Lcom/google/common/cache/c;)V

    .line 4812
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 4815
    :cond_1e
    invoke-virtual {v1}, Lcom/google/common/cache/b;->b()Lcom/google/common/cache/h;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 4849
    new-instance v0, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lcom/google/common/cache/LocalCache;

    invoke-direct {v0, v1}, Lcom/google/common/cache/LocalCache$ManualSerializationProxy;-><init>(Lcom/google/common/cache/LocalCache;)V

    return-object v0
.end method
