.class final Lcom/google/common/util/concurrent/Futures$1;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Lcom/google/common/util/concurrent/UninterruptibleFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures;->makeUninterruptible(Ljava/util/concurrent/Future;)Lcom/google/common/util/concurrent/UninterruptibleFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/UninterruptibleFuture",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$future:Ljava/util/concurrent/Future;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;)V
    .registers 2
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$1;->val$future:Ljava/util/concurrent/Future;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 3
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$1;->val$future:Ljava/util/concurrent/Future;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 95
    .local v1, interrupted:Z
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/google/common/util/concurrent/Futures$1;->val$future:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_14
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_6} :catch_11

    move-result-object v2

    .line 101
    if-eqz v1, :cond_10

    .line 102
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_10
    return-object v2

    .line 96
    :catch_11
    move-exception v0

    .line 97
    .local v0, ignored:Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 98
    goto :goto_1

    .line 101
    .end local v0           #ignored:Ljava/lang/InterruptedException;
    :catchall_14
    move-exception v2

    if-eqz v1, :cond_1e

    .line 102
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_1e
    throw v2
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 14
    .parameter "timeoutDuration"
    .parameter "timeoutUnit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v3, 0x0

    .line 72
    .local v3, interrupted:Z
    :try_start_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 73
    .local v6, timeoutNanos:J
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_33

    move-result-wide v8

    add-long v0, v8, v6

    .line 74
    .local v0, end:J
    move-wide v4, v6

    .local v4, remaining:J
    :goto_c
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_2d

    .line 77
    :try_start_12
    iget-object v8, p0, Lcom/google/common/util/concurrent/Futures$1;->val$future:Ljava/util/concurrent/Future;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v4, v5, v9}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_33
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_19} :catch_24

    move-result-object v8

    .line 84
    if-eqz v3, :cond_23

    .line 85
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    :cond_23
    return-object v8

    .line 78
    :catch_24
    move-exception v2

    .line 79
    .local v2, ignored:Ljava/lang/InterruptedException;
    const/4 v3, 0x1

    .line 75
    :try_start_26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long v4, v0, v8

    goto :goto_c

    .line 82
    .end local v2           #ignored:Ljava/lang/InterruptedException;
    :cond_2d
    new-instance v8, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v8}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v8
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_33

    .line 84
    .end local v0           #end:J
    .end local v4           #remaining:J
    .end local v6           #timeoutNanos:J
    :catchall_33
    move-exception v8

    if-eqz v3, :cond_3d

    .line 85
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    :cond_3d
    throw v8
.end method

.method public isCancelled()Z
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$1;->val$future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$1;->val$future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    return v0
.end method
