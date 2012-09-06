.class public abstract Lcom/google/common/cache/CacheLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lcom/google/common/base/am;)Lcom/google/common/cache/CacheLoader;
    .registers 2
    .parameter

    .prologue
    .line 130
    new-instance v0, Lcom/google/common/cache/CacheLoader$SupplierToCacheLoader;

    invoke-direct {v0, p0}, Lcom/google/common/cache/CacheLoader$SupplierToCacheLoader;-><init>(Lcom/google/common/base/am;)V

    return-object v0
.end method

.method public static from(Lcom/google/common/base/v;)Lcom/google/common/cache/CacheLoader;
    .registers 2
    .parameter

    .prologue
    .line 106
    new-instance v0, Lcom/google/common/cache/CacheLoader$FunctionToCacheLoader;

    invoke-direct {v0, p0}, Lcom/google/common/cache/CacheLoader$FunctionToCacheLoader;-><init>(Lcom/google/common/base/v;)V

    return-object v0
.end method


# virtual methods
.method public abstract load(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public loadAll(Ljava/lang/Iterable;)Ljava/util/Map;
    .registers 3
    .parameter

    .prologue
    .line 99
    new-instance v0, Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException;

    invoke-direct {v0}, Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException;-><init>()V

    throw v0
.end method

.method public reload(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/f;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/google/common/cache/CacheLoader;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/d;->a(Ljava/lang/Object;)Lcom/google/common/util/concurrent/f;

    move-result-object v0

    return-object v0
.end method
