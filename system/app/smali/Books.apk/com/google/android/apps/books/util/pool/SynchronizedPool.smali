.class Lcom/google/android/apps/books/util/pool/SynchronizedPool;
.super Ljava/lang/Object;
.source "SynchronizedPool.java"

# interfaces
.implements Lcom/google/android/apps/books/util/pool/Pool;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/apps/books/util/pool/Poolable",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/books/util/pool/Pool",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mPool:Lcom/google/android/apps/books/util/pool/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/util/pool/Pool",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/util/pool/Pool;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/util/pool/Pool",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, this:Lcom/google/android/apps/books/util/pool/SynchronizedPool;,"Lcom/google/android/apps/books/util/pool/SynchronizedPool<TT;>;"
    .local p1, pool:Lcom/google/android/apps/books/util/pool/Pool;,"Lcom/google/android/apps/books/util/pool/Pool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/android/apps/books/util/pool/SynchronizedPool;->mPool:Lcom/google/android/apps/books/util/pool/Pool;

    .line 35
    iput-object p0, p0, Lcom/google/android/apps/books/util/pool/SynchronizedPool;->mLock:Ljava/lang/Object;

    .line 36
    return-void
.end method


# virtual methods
.method public acquire()Lcom/google/android/apps/books/util/pool/Poolable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, this:Lcom/google/android/apps/books/util/pool/SynchronizedPool;,"Lcom/google/android/apps/books/util/pool/SynchronizedPool<TT;>;"
    iget-object v1, p0, Lcom/google/android/apps/books/util/pool/SynchronizedPool;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 45
    :try_start_3
    iget-object v0, p0, Lcom/google/android/apps/books/util/pool/SynchronizedPool;->mPool:Lcom/google/android/apps/books/util/pool/Pool;

    invoke-interface {v0}, Lcom/google/android/apps/books/util/pool/Pool;->acquire()Lcom/google/android/apps/books/util/pool/Poolable;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public release(Lcom/google/android/apps/books/util/pool/Poolable;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, this:Lcom/google/android/apps/books/util/pool/SynchronizedPool;,"Lcom/google/android/apps/books/util/pool/SynchronizedPool<TT;>;"
    .local p1, element:Lcom/google/android/apps/books/util/pool/Poolable;,"TT;"
    iget-object v1, p0, Lcom/google/android/apps/books/util/pool/SynchronizedPool;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_3
    iget-object v0, p0, Lcom/google/android/apps/books/util/pool/SynchronizedPool;->mPool:Lcom/google/android/apps/books/util/pool/Pool;

    invoke-interface {v0, p1}, Lcom/google/android/apps/books/util/pool/Pool;->release(Lcom/google/android/apps/books/util/pool/Poolable;)V

    .line 52
    monitor-exit v1

    .line 53
    return-void

    .line 52
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
