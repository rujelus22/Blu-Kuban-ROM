.class final Lcom/google/android/apps/unveil/env/ExecutorServiceFactory$1;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "ExecutorServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/env/ExecutorServiceFactory;->newLoggingExecutor(IILjava/util/concurrent/BlockingQueue;)Ljava/util/concurrent/ExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter

    .prologue
    .line 28
    .local p6, x4:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .registers 8
    .parameter "r"
    .parameter "t"

    .prologue
    .line 31
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 32
    if-nez p2, :cond_e

    instance-of v1, p1, Ljava/util/concurrent/Future;

    if-eqz v1, :cond_e

    .line 34
    :try_start_9
    check-cast p1, Ljava/util/concurrent/Future;

    .end local p1
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_e} :catch_20
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_e} :catch_26

    .line 42
    :cond_e
    :goto_e
    if-eqz p2, :cond_1f

    .line 43
    invoke-static {}, Lcom/google/android/apps/unveil/env/ExecutorServiceFactory;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v1

    const-string v2, "Uncaught executor service background exception: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, p2, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    :cond_1f
    return-void

    .line 35
    :catch_20
    move-exception v0

    .line 36
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 39
    goto :goto_e

    .line 37
    .end local v0           #e:Ljava/util/concurrent/ExecutionException;
    :catch_26
    move-exception v0

    .line 38
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_e
.end method
