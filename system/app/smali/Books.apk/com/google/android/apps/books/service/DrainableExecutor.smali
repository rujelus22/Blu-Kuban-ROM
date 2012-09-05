.class public Lcom/google/android/apps/books/service/DrainableExecutor;
.super Ljava/lang/Object;
.source "DrainableExecutor.java"


# instance fields
.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mFutures:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .registers 3
    .parameter "executor"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "missing executor"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/google/android/apps/books/service/DrainableExecutor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/service/DrainableExecutor;->mFutures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 37
    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .registers 5
    .parameter "l"
    .parameter "timeUnit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/apps/books/service/DrainableExecutor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public drain()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/ExecutionException;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v3, p0, Lcom/google/android/apps/books/service/DrainableExecutor;->mFutures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 77
    .local v3, futures:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/util/concurrent/Future<*>;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 78
    .local v1, exceptions:Ljava/util/List;,"Ljava/util/List<Ljava/util/concurrent/ExecutionException;>;"
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .local v2, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    :goto_c
    if-eqz v2, :cond_1d

    .line 80
    :try_start_e
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_11
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_e .. :try_end_11} :catch_18

    .line 78
    :goto_11
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    check-cast v2, Ljava/util/concurrent/Future;

    .restart local v2       #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    goto :goto_c

    .line 81
    :catch_18
    move-exception v0

    .line 82
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 85
    .end local v0           #e:Ljava/util/concurrent/ExecutionException;
    :cond_1d
    return-object v1
.end method

.method public getExceptions()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/ExecutionException;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v3, p0, Lcom/google/android/apps/books/service/DrainableExecutor;->mFutures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 94
    .local v3, futures:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Ljava/util/concurrent/Future<*>;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 95
    .local v1, exceptions:Ljava/util/List;,"Ljava/util/List<Ljava/util/concurrent/ExecutionException;>;"
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    .local v2, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    :goto_c
    if-eqz v2, :cond_35

    .line 96
    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 98
    :try_start_14
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_17} :catch_1e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_14 .. :try_end_17} :catch_30

    .line 95
    :cond_17
    :goto_17
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    check-cast v2, Ljava/util/concurrent/Future;

    .restart local v2       #future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    goto :goto_c

    .line 99
    :catch_1e
    move-exception v0

    .line 100
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v4, "DrainableExecutor"

    const/4 v5, 0x6

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 101
    const-string v4, "DrainableExecutor"

    const-string v5, "Unexpected interuption"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 103
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_30
    move-exception v0

    .line 104
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 108
    .end local v0           #e:Ljava/util/concurrent/ExecutionException;
    :cond_35
    return-object v1
.end method

.method public shutdown()V
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/books/service/DrainableExecutor;->mFutures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 44
    iget-object v0, p0, Lcom/google/android/apps/books/service/DrainableExecutor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 45
    return-void
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, callable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TT;>;"
    iget-object v1, p0, Lcom/google/android/apps/books/service/DrainableExecutor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 67
    .local v0, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<TT;>;"
    iget-object v1, p0, Lcom/google/android/apps/books/service/DrainableExecutor;->mFutures:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 68
    return-object v0
.end method
