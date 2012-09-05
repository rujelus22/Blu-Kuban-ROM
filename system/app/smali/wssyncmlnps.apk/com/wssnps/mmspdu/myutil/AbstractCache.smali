.class public abstract Lcom/wssnps/mmspdu/myutil/AbstractCache;
.super Ljava/lang/Object;
.source "AbstractCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wssnps/mmspdu/myutil/AbstractCache$1;,
        Lcom/wssnps/mmspdu/myutil/AbstractCache$CacheEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;",
            "Lcom/wssnps/mmspdu/myutil/AbstractCache$CacheEntry",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 27
    .local p0, this:Lcom/wssnps/mmspdu/myutil/AbstractCache;,"Lcom/wssnps/mmspdu/myutil/AbstractCache<TK;TV;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wssnps/mmspdu/myutil/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    .line 29
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, this:Lcom/wssnps/mmspdu/myutil/AbstractCache;,"Lcom/wssnps/mmspdu/myutil/AbstractCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    if-eqz p1, :cond_15

    .line 59
    iget-object v1, p0, Lcom/wssnps/mmspdu/myutil/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/mmspdu/myutil/AbstractCache$CacheEntry;

    .line 60
    .local v0, cacheEntry:Lcom/wssnps/mmspdu/myutil/AbstractCache$CacheEntry;,"Lcom/wssnps/mmspdu/myutil/AbstractCache$CacheEntry<TV;>;"
    if-eqz v0, :cond_15

    .line 61
    iget v1, v0, Lcom/wssnps/mmspdu/myutil/AbstractCache$CacheEntry;->hit:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/wssnps/mmspdu/myutil/AbstractCache$CacheEntry;->hit:I

    .line 63
    iget-object v1, v0, Lcom/wssnps/mmspdu/myutil/AbstractCache$CacheEntry;->value:Ljava/lang/Object;

    .line 66
    .end local v0           #cacheEntry:Lcom/wssnps/mmspdu/myutil/AbstractCache$CacheEntry;,"Lcom/wssnps/mmspdu/myutil/AbstractCache$CacheEntry<TV;>;"
    :goto_14
    return-object v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public purge(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, this:Lcom/wssnps/mmspdu/myutil/AbstractCache;,"Lcom/wssnps/mmspdu/myutil/AbstractCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v1, p0, Lcom/wssnps/mmspdu/myutil/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/mmspdu/myutil/AbstractCache$CacheEntry;

    .line 77
    .local v0, v:Lcom/wssnps/mmspdu/myutil/AbstractCache$CacheEntry;,"Lcom/wssnps/mmspdu/myutil/AbstractCache$CacheEntry<TV;>;"
    if-eqz v0, :cond_d

    iget-object v1, v0, Lcom/wssnps/mmspdu/myutil/AbstractCache$CacheEntry;->value:Ljava/lang/Object;

    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public purgeAll()V
    .registers 2

    .prologue
    .line 83
    .local p0, this:Lcom/wssnps/mmspdu/myutil/AbstractCache;,"Lcom/wssnps/mmspdu/myutil/AbstractCache<TK;TV;>;"
    iget-object v0, p0, Lcom/wssnps/mmspdu/myutil/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 84
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/wssnps/mmspdu/myutil/AbstractCache;,"Lcom/wssnps/mmspdu/myutil/AbstractCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    const/4 v1, 0x0

    .line 35
    iget-object v2, p0, Lcom/wssnps/mmspdu/myutil/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/16 v3, 0x1f4

    if-lt v2, v3, :cond_c

    .line 51
    :cond_b
    :goto_b
    return v1

    .line 42
    :cond_c
    if-eqz p1, :cond_b

    .line 43
    new-instance v0, Lcom/wssnps/mmspdu/myutil/AbstractCache$CacheEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/wssnps/mmspdu/myutil/AbstractCache$CacheEntry;-><init>(Lcom/wssnps/mmspdu/myutil/AbstractCache$1;)V

    .line 44
    .local v0, cacheEntry:Lcom/wssnps/mmspdu/myutil/AbstractCache$CacheEntry;,"Lcom/wssnps/mmspdu/myutil/AbstractCache$CacheEntry<TV;>;"
    iput-object p2, v0, Lcom/wssnps/mmspdu/myutil/AbstractCache$CacheEntry;->value:Ljava/lang/Object;

    .line 45
    iget-object v1, p0, Lcom/wssnps/mmspdu/myutil/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const/4 v1, 0x1

    goto :goto_b
.end method
