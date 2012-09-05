.class public Lcom/google/android/apps/books/util/pool/Pools;
.super Ljava/lang/Object;
.source "Pools.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static simplePool(Lcom/google/android/apps/books/util/pool/PoolableManager;)Lcom/google/android/apps/books/util/pool/Pool;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/apps/books/util/pool/Poolable",
            "<TT;>;>(",
            "Lcom/google/android/apps/books/util/pool/PoolableManager",
            "<TT;>;)",
            "Lcom/google/android/apps/books/util/pool/Pool",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, manager:Lcom/google/android/apps/books/util/pool/PoolableManager;,"Lcom/google/android/apps/books/util/pool/PoolableManager<TT;>;"
    new-instance v0, Lcom/google/android/apps/books/util/pool/FinitePool;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/util/pool/FinitePool;-><init>(Lcom/google/android/apps/books/util/pool/PoolableManager;)V

    return-object v0
.end method

.method public static synchronizedPool(Lcom/google/android/apps/books/util/pool/Pool;)Lcom/google/android/apps/books/util/pool/Pool;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/apps/books/util/pool/Poolable",
            "<TT;>;>(",
            "Lcom/google/android/apps/books/util/pool/Pool",
            "<TT;>;)",
            "Lcom/google/android/apps/books/util/pool/Pool",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, pool:Lcom/google/android/apps/books/util/pool/Pool;,"Lcom/google/android/apps/books/util/pool/Pool<TT;>;"
    new-instance v0, Lcom/google/android/apps/books/util/pool/SynchronizedPool;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/util/pool/SynchronizedPool;-><init>(Lcom/google/android/apps/books/util/pool/Pool;)V

    return-object v0
.end method
