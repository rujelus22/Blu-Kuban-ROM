.class public Lcom/google/android/apps/unveil/env/cache/MemoryCache;
.super Lcom/google/android/apps/unveil/env/cache/AbstractCache;
.source "MemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/apps/unveil/env/cache/AbstractCache",
        "<TKey;TValue;>;"
    }
.end annotation


# instance fields
.field private final memoryMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TKey;TValue;>;"
        }
    .end annotation
.end field

.field private final reclaimRatio:F

.field private final sizeLimit:I


# direct methods
.method public constructor <init>(IF)V
    .registers 6
    .parameter "sizeLimit"
    .parameter "reclaimRatio"

    .prologue
    .line 19
    .local p0, this:Lcom/google/android/apps/unveil/env/cache/MemoryCache;,"Lcom/google/android/apps/unveil/env/cache/MemoryCache<TKey;TValue;>;"
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/cache/AbstractCache;-><init>()V

    .line 20
    iput p1, p0, Lcom/google/android/apps/unveil/env/cache/MemoryCache;->sizeLimit:I

    .line 21
    iput p2, p0, Lcom/google/android/apps/unveil/env/cache/MemoryCache;->reclaimRatio:F

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f80

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/cache/MemoryCache;->memoryMap:Ljava/util/LinkedHashMap;

    .line 23
    return-void
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;)TValue;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lcom/google/android/apps/unveil/env/cache/MemoryCache;,"Lcom/google/android/apps/unveil/env/cache/MemoryCache<TKey;TValue;>;"
    .local p1, key:Ljava/lang/Object;,"TKey;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/cache/MemoryCache;->memoryMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;TValue;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, this:Lcom/google/android/apps/unveil/env/cache/MemoryCache;,"Lcom/google/android/apps/unveil/env/cache/MemoryCache<TKey;TValue;>;"
    .local p1, key:Ljava/lang/Object;,"TKey;"
    .local p2, value:Ljava/lang/Object;,"TValue;"
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/google/android/apps/unveil/env/cache/MemoryCache;->memoryMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    .line 28
    .local v1, n:I
    iget v3, p0, Lcom/google/android/apps/unveil/env/cache/MemoryCache;->sizeLimit:I

    if-le v1, v3, :cond_33

    .line 29
    iget v3, p0, Lcom/google/android/apps/unveil/env/cache/MemoryCache;->sizeLimit:I

    sub-int v3, v1, v3

    iget v4, p0, Lcom/google/android/apps/unveil/env/cache/MemoryCache;->sizeLimit:I

    int-to-float v4, v4

    iget v5, p0, Lcom/google/android/apps/unveil/env/cache/MemoryCache;->reclaimRatio:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v2, v3, v4

    .line 30
    .local v2, toDelete:I
    iget-object v3, p0, Lcom/google/android/apps/unveil/env/cache/MemoryCache;->memoryMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 31
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<TKey;>;"
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    if-lez v2, :cond_33

    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 34
    add-int/lit8 v2, v2, -0x1

    goto :goto_22

    .line 37
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<TKey;>;"
    .end local v2           #toDelete:I
    :cond_33
    iget-object v3, p0, Lcom/google/android/apps/unveil/env/cache/MemoryCache;->memoryMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3a

    .line 38
    monitor-exit p0

    return-void

    .line 27
    .end local v1           #n:I
    :catchall_3a
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized size()I
    .registers 2

    .prologue
    .line 47
    .local p0, this:Lcom/google/android/apps/unveil/env/cache/MemoryCache;,"Lcom/google/android/apps/unveil/env/cache/MemoryCache<TKey;TValue;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/cache/MemoryCache;->memoryMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
