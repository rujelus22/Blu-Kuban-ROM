.class public abstract Lcom/google/common/util/concurrent/AbstractExecutionThreadService;
.super Ljava/lang/Object;
.source "AbstractExecutionThreadService.java"

# interfaces
.implements Lcom/google/common/base/Service;


# instance fields
.field private final delegate:Lcom/google/common/base/Service;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;-><init>(Lcom/google/common/util/concurrent/AbstractExecutionThreadService;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->delegate:Lcom/google/common/base/Service;

    return-void
.end method


# virtual methods
.method protected executor()Ljava/util/concurrent/Executor;
    .registers 2

    .prologue
    .line 112
    new-instance v0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$2;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$2;-><init>(Lcom/google/common/util/concurrent/AbstractExecutionThreadService;)V

    return-object v0
.end method

.method public final isRunning()Z
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->delegate:Lcom/google/common/base/Service;

    invoke-interface {v0}, Lcom/google/common/base/Service;->isRunning()Z

    move-result v0

    return v0
.end method

.method protected abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected shutDown()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 96
    return-void
.end method

.method public final start()Ljava/util/concurrent/Future;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/common/base/Service$State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->delegate:Lcom/google/common/base/Service;

    invoke-interface {v0}, Lcom/google/common/base/Service;->start()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final startAndWait()Lcom/google/common/base/Service$State;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->delegate:Lcom/google/common/base/Service;

    invoke-interface {v0}, Lcom/google/common/base/Service;->startAndWait()Lcom/google/common/base/Service$State;

    move-result-object v0

    return-object v0
.end method

.method protected startUp()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 74
    return-void
.end method

.method public final state()Lcom/google/common/base/Service$State;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->delegate:Lcom/google/common/base/Service;

    invoke-interface {v0}, Lcom/google/common/base/Service;->state()Lcom/google/common/base/Service$State;

    move-result-object v0

    return-object v0
.end method

.method public final stop()Ljava/util/concurrent/Future;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/common/base/Service$State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->delegate:Lcom/google/common/base/Service;

    invoke-interface {v0}, Lcom/google/common/base/Service;->stop()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final stopAndWait()Lcom/google/common/base/Service$State;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->delegate:Lcom/google/common/base/Service;

    invoke-interface {v0}, Lcom/google/common/base/Service;->stopAndWait()Lcom/google/common/base/Service$State;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected triggerShutdown()V
    .registers 1

    .prologue
    .line 101
    return-void
.end method
