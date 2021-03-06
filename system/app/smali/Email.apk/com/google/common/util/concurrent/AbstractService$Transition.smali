.class Lcom/google/common/util/concurrent/AbstractService$Transition;
.super Ljava/lang/Object;
.source "AbstractService.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<",
        "Lcom/google/common/base/Service$State;",
        ">;"
    }
.end annotation


# instance fields
.field private final done:Ljava/util/concurrent/CountDownLatch;

.field private failureCause:Ljava/lang/Throwable;

.field private result:Lcom/google/common/base/Service$State;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->done:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/AbstractService$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService$Transition;-><init>()V

    return-void
.end method

.method private getImmediately()Lcom/google/common/base/Service$State;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->result:Lcom/google/common/base/Service$State;

    sget-object v1, Lcom/google/common/base/Service$State;->FAILED:Lcom/google/common/base/Service$State;

    if-ne v0, v1, :cond_e

    .line 298
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->failureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 300
    :cond_e
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->result:Lcom/google/common/base/Service$State;

    return-object v0
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 3
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public get()Lcom/google/common/base/Service$State;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 285
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService$Transition;->getImmediately()Lcom/google/common/base/Service$State;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/base/Service$State;
    .registers 5
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 291
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService$Transition;->getImmediately()Lcom/google/common/base/Service$State;

    move-result-object v0

    return-object v0

    .line 293
    :cond_d
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService$Transition;->get()Lcom/google/common/base/Service$State;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/AbstractService$Transition;->get(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/base/Service$State;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .registers 2

    .prologue
    .line 276
    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .registers 5

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method transitionFailed(Ljava/lang/Throwable;)V
    .registers 3
    .parameter "cause"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->result:Lcom/google/common/base/Service$State;

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 266
    sget-object v0, Lcom/google/common/base/Service$State;->FAILED:Lcom/google/common/base/Service$State;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->result:Lcom/google/common/base/Service$State;

    .line 267
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->failureCause:Ljava/lang/Throwable;

    .line 268
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 269
    return-void

    .line 265
    :cond_14
    const/4 v0, 0x0

    goto :goto_5
.end method

.method transitionSucceeded(Lcom/google/common/base/Service$State;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->result:Lcom/google/common/base/Service$State;

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 259
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->result:Lcom/google/common/base/Service$State;

    .line 260
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService$Transition;->done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 261
    return-void

    .line 258
    :cond_10
    const/4 v0, 0x0

    goto :goto_5
.end method
