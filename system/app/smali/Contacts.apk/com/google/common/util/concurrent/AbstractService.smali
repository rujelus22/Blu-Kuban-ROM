.class public abstract Lcom/google/common/util/concurrent/AbstractService;
.super Ljava/lang/Object;
.source "AbstractService.java"

# interfaces
.implements Lcom/google/common/base/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractService$1;,
        Lcom/google/common/util/concurrent/AbstractService$Transition;
    }
.end annotation


# instance fields
.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final shutdown:Lcom/google/common/util/concurrent/AbstractService$Transition;

.field private shutdownWhenStartupFinishes:Z

.field private final startup:Lcom/google/common/util/concurrent/AbstractService$Transition;

.field private state:Lcom/google/common/base/Service$State;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 46
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$Transition;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;-><init>(Lcom/google/common/util/concurrent/AbstractService$1;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->startup:Lcom/google/common/util/concurrent/AbstractService$Transition;

    .line 47
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$Transition;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;-><init>(Lcom/google/common/util/concurrent/AbstractService$1;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->shutdown:Lcom/google/common/util/concurrent/AbstractService$Transition;

    .line 53
    sget-object v0, Lcom/google/common/base/Service$State;->NEW:Lcom/google/common/base/Service$State;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/base/Service$State;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/AbstractService;->shutdownWhenStartupFinishes:Z

    .line 251
    return-void
.end method


# virtual methods
.method protected abstract doStop()V
.end method

.method public final isRunning()Z
    .registers 3

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/base/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/base/Service$State;->RUNNING:Lcom/google/common/base/Service$State;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected final notifyFailed(Ljava/lang/Throwable;)V
    .registers 5
    .parameter "cause"

    .prologue
    .line 210
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 214
    :try_start_8
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/base/Service$State;

    sget-object v1, Lcom/google/common/base/Service$State;->STARTING:Lcom/google/common/base/Service$State;

    if-ne v0, v1, :cond_29

    .line 215
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->startup:Lcom/google/common/util/concurrent/AbstractService$Transition;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->transitionFailed(Ljava/lang/Throwable;)V

    .line 216
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->shutdown:Lcom/google/common/util/concurrent/AbstractService$Transition;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Service failed to start."

    invoke-direct {v1, v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->transitionFailed(Ljava/lang/Throwable;)V

    .line 222
    :cond_1f
    :goto_1f
    sget-object v0, Lcom/google/common/base/Service$State;->FAILED:Lcom/google/common/base/Service$State;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/base/Service$State;
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_35

    .line 224
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 226
    return-void

    .line 218
    :cond_29
    :try_start_29
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/base/Service$State;

    sget-object v1, Lcom/google/common/base/Service$State;->STOPPING:Lcom/google/common/base/Service$State;

    if-ne v0, v1, :cond_1f

    .line 219
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->shutdown:Lcom/google/common/util/concurrent/AbstractService$Transition;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/AbstractService$Transition;->transitionFailed(Ljava/lang/Throwable;)V
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_35

    goto :goto_1f

    .line 224
    :catchall_35
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected final notifyStarted()V
    .registers 4

    .prologue
    .line 158
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 160
    :try_start_5
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/base/Service$State;

    sget-object v2, Lcom/google/common/base/Service$State;->STARTING:Lcom/google/common/base/Service$State;

    if-eq v1, v2, :cond_30

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot notifyStarted() when the service is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/base/Service$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, failure:Ljava/lang/IllegalStateException;
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V

    .line 164
    throw v0
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_29

    .line 174
    .end local v0           #failure:Ljava/lang/IllegalStateException;
    :catchall_29
    move-exception v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 167
    :cond_30
    :try_start_30
    sget-object v1, Lcom/google/common/base/Service$State;->RUNNING:Lcom/google/common/base/Service$State;

    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/base/Service$State;

    .line 168
    iget-boolean v1, p0, Lcom/google/common/util/concurrent/AbstractService;->shutdownWhenStartupFinishes:Z

    if-eqz v1, :cond_41

    .line 169
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->stop()Ljava/util/concurrent/Future;
    :try_end_3b
    .catchall {:try_start_30 .. :try_end_3b} :catchall_29

    .line 174
    :goto_3b
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 176
    return-void

    .line 171
    :cond_41
    :try_start_41
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->startup:Lcom/google/common/util/concurrent/AbstractService$Transition;

    sget-object v2, Lcom/google/common/base/Service$State;->RUNNING:Lcom/google/common/base/Service$State;

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/AbstractService$Transition;->transitionSucceeded(Lcom/google/common/base/Service$State;)V
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_29

    goto :goto_3b
.end method

.method protected final notifyStopped()V
    .registers 4

    .prologue
    .line 187
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 189
    :try_start_5
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/base/Service$State;

    sget-object v2, Lcom/google/common/base/Service$State;->STOPPING:Lcom/google/common/base/Service$State;

    if-eq v1, v2, :cond_36

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/base/Service$State;

    sget-object v2, Lcom/google/common/base/Service$State;->RUNNING:Lcom/google/common/base/Service$State;

    if-eq v1, v2, :cond_36

    .line 190
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot notifyStopped() when the service is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/base/Service$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 192
    .local v0, failure:Ljava/lang/IllegalStateException;
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V

    .line 193
    throw v0
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_2f

    .line 199
    .end local v0           #failure:Ljava/lang/IllegalStateException;
    :catchall_2f
    move-exception v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 196
    :cond_36
    :try_start_36
    sget-object v1, Lcom/google/common/base/Service$State;->TERMINATED:Lcom/google/common/base/Service$State;

    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/base/Service$State;

    .line 197
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->shutdown:Lcom/google/common/util/concurrent/AbstractService$Transition;

    sget-object v2, Lcom/google/common/base/Service$State;->TERMINATED:Lcom/google/common/base/Service$State;

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/AbstractService$Transition;->transitionSucceeded(Lcom/google/common/base/Service$State;)V
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_2f

    .line 199
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 201
    return-void
.end method

.method public final state()Lcom/google/common/base/Service$State;
    .registers 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 235
    :try_start_5
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/AbstractService;->shutdownWhenStartupFinishes:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/base/Service$State;

    sget-object v1, Lcom/google/common/base/Service$State;->STARTING:Lcom/google/common/base/Service$State;

    if-ne v0, v1, :cond_17

    .line 236
    sget-object v0, Lcom/google/common/base/Service$State;->STOPPING:Lcom/google/common/base/Service$State;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_1f

    .line 241
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_16
    return-object v0

    .line 238
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/base/Service$State;
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_1f

    .line 241
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_16

    :catchall_1f
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final stop()Ljava/util/concurrent/Future;
    .registers 4
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
    .line 104
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 106
    :try_start_5
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/base/Service$State;

    sget-object v2, Lcom/google/common/base/Service$State;->NEW:Lcom/google/common/base/Service$State;

    if-ne v1, v2, :cond_25

    .line 107
    sget-object v1, Lcom/google/common/base/Service$State;->TERMINATED:Lcom/google/common/base/Service$State;

    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/base/Service$State;

    .line 108
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->startup:Lcom/google/common/util/concurrent/AbstractService$Transition;

    sget-object v2, Lcom/google/common/base/Service$State;->TERMINATED:Lcom/google/common/base/Service$State;

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/AbstractService$Transition;->transitionSucceeded(Lcom/google/common/base/Service$State;)V

    .line 109
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->shutdown:Lcom/google/common/util/concurrent/AbstractService$Transition;

    sget-object v2, Lcom/google/common/base/Service$State;->TERMINATED:Lcom/google/common/base/Service$State;

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/AbstractService$Transition;->transitionSucceeded(Lcom/google/common/base/Service$State;)V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_4e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1d} :catch_36

    .line 121
    :cond_1d
    :goto_1d
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 124
    :goto_22
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->shutdown:Lcom/google/common/util/concurrent/AbstractService$Transition;

    return-object v1

    .line 110
    :cond_25
    :try_start_25
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/base/Service$State;

    sget-object v2, Lcom/google/common/base/Service$State;->STARTING:Lcom/google/common/base/Service$State;

    if-ne v1, v2, :cond_40

    .line 111
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/common/util/concurrent/AbstractService;->shutdownWhenStartupFinishes:Z

    .line 112
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->startup:Lcom/google/common/util/concurrent/AbstractService$Transition;

    sget-object v2, Lcom/google/common/base/Service$State;->STOPPING:Lcom/google/common/base/Service$State;

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/AbstractService$Transition;->transitionSucceeded(Lcom/google/common/base/Service$State;)V
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_4e
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_35} :catch_36

    goto :goto_1d

    .line 117
    :catch_36
    move-exception v0

    .line 119
    .local v0, shutdownFailure:Ljava/lang/Throwable;
    :try_start_37
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_4e

    .line 121
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_22

    .line 113
    .end local v0           #shutdownFailure:Ljava/lang/Throwable;
    :cond_40
    :try_start_40
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/base/Service$State;

    sget-object v2, Lcom/google/common/base/Service$State;->RUNNING:Lcom/google/common/base/Service$State;

    if-ne v1, v2, :cond_1d

    .line 114
    sget-object v1, Lcom/google/common/base/Service$State;->STOPPING:Lcom/google/common/base/Service$State;

    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->state:Lcom/google/common/base/Service$State;

    .line 115
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->doStop()V
    :try_end_4d
    .catchall {:try_start_40 .. :try_end_4d} :catchall_4e
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_4d} :catch_36

    goto :goto_1d

    .line 121
    :catchall_4e
    move-exception v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractService;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
