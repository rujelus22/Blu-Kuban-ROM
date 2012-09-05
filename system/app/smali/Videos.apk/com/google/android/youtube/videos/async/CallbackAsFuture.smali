.class public Lcom/google/android/youtube/videos/async/CallbackAsFuture;
.super Ljava/lang/Object;
.source "CallbackAsFuture.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TE;>;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<TR;TE;>;"
    }
.end annotation


# instance fields
.field private final resultQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 29
    .local p0, this:Lcom/google/android/youtube/videos/async/CallbackAsFuture;,"Lcom/google/android/youtube/videos/async/CallbackAsFuture<TR;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/async/CallbackAsFuture;->resultQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 31
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 3
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 34
    .local p0, this:Lcom/google/android/youtube/videos/async/CallbackAsFuture;,"Lcom/google/android/youtube/videos/async/CallbackAsFuture<TR;TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lcom/google/android/youtube/videos/async/CallbackAsFuture;,"Lcom/google/android/youtube/videos/async/CallbackAsFuture<TR;TE;>;"
    :goto_0
    const-wide/32 v0, 0x7fffffff

    :try_start_3
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/youtube/videos/async/CallbackAsFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_8} :catch_a

    move-result-object v0

    return-object v0

    .line 41
    :catch_a
    move-exception v0

    goto :goto_0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 7
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 49
    .local p0, this:Lcom/google/android/youtube/videos/async/CallbackAsFuture;,"Lcom/google/android/youtube/videos/async/CallbackAsFuture<TR;TE;>;"
    iget-object v2, p0, Lcom/google/android/youtube/videos/async/CallbackAsFuture;->resultQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2, p1, p2, p3}, Ljava/util/concurrent/ArrayBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    .line 50
    .local v1, result:Ljava/lang/Object;
    if-nez v1, :cond_e

    .line 51
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v2}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v2

    .line 53
    :cond_e
    instance-of v2, v1, Ljava/lang/Exception;

    if-eqz v2, :cond_1a

    .line 54
    new-instance v2, Ljava/util/concurrent/ExecutionException;

    check-cast v1, Ljava/lang/Exception;

    .end local v1           #result:Ljava/lang/Object;
    invoke-direct {v2, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 57
    .restart local v1       #result:Ljava/lang/Object;
    :cond_1a
    move-object v0, v1

    .line 58
    .local v0, response:Ljava/lang/Object;,"TE;"
    return-object v0
.end method

.method public isCancelled()Z
    .registers 2

    .prologue
    .line 62
    .local p0, this:Lcom/google/android/youtube/videos/async/CallbackAsFuture;,"Lcom/google/android/youtube/videos/async/CallbackAsFuture<TR;TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .registers 2

    .prologue
    .line 66
    .local p0, this:Lcom/google/android/youtube/videos/async/CallbackAsFuture;,"Lcom/google/android/youtube/videos/async/CallbackAsFuture<TR;TE;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/CallbackAsFuture;->resultQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter "exception"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, this:Lcom/google/android/youtube/videos/async/CallbackAsFuture;,"Lcom/google/android/youtube/videos/async/CallbackAsFuture<TR;TE;>;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/CallbackAsFuture;->resultQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TE;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, this:Lcom/google/android/youtube/videos/async/CallbackAsFuture;,"Lcom/google/android/youtube/videos/async/CallbackAsFuture<TR;TE;>;"
    .local p1, request:Ljava/lang/Object;,"TR;"
    .local p2, response:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/CallbackAsFuture;->resultQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method
