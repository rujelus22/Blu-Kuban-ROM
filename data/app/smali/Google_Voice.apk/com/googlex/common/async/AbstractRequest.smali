.class public abstract Lcom/googlex/common/async/AbstractRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/googlex/common/async/AsyncRequest;


# instance fields
.field private exception:Ljava/lang/Exception;

.field private state:I

.field private task:Lcom/googlex/common/task/AbstractTask;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/googlex/common/async/AbstractRequest;->reset()V

    return-void
.end method

.method private declared-synchronized setException(Ljava/lang/Exception;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/googlex/common/async/AbstractRequest;->exception:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setState(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/googlex/common/async/AbstractRequest;->state:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected declared-synchronized checkCompleted()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/googlex/common/async/AbstractRequest;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "state != STATE_COMPLETED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_11
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized close()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/googlex/common/async/AbstractRequest;->notifyClosed()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getException()Ljava/lang/Exception;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/googlex/common/async/AbstractRequest;->exception:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getState()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/googlex/common/async/AbstractRequest;->state:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasException()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/googlex/common/async/AbstractRequest;->exception:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCompletedOrException()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/googlex/common/async/AbstractRequest;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/googlex/common/async/AbstractRequest;->state:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    :cond_b
    const/4 v0, 0x1

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInitialized()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/googlex/common/async/AbstractRequest;->state:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRunning()Z
    .registers 3

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_2
    iget v1, p0, Lcom/googlex/common/async/AbstractRequest;->state:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_a

    if-ne v1, v0, :cond_8

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized notifyClosed()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_2
    invoke-direct {p0, v0}, Lcom/googlex/common/async/AbstractRequest;->setState(I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized notifyCompleted()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_2
    invoke-direct {p0, v0}, Lcom/googlex/common/async/AbstractRequest;->setState(I)V

    invoke-virtual {p0}, Lcom/googlex/common/async/AbstractRequest;->scheduleTask()V
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized notifyException(Ljava/lang/Exception;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x3

    :try_start_2
    invoke-direct {p0, v0}, Lcom/googlex/common/async/AbstractRequest;->setState(I)V

    invoke-direct {p0, p1}, Lcom/googlex/common/async/AbstractRequest;->setException(Ljava/lang/Exception;)V

    invoke-virtual {p0}, Lcom/googlex/common/async/AbstractRequest;->scheduleTask()V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized notifyProgress()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/googlex/common/async/AbstractRequest;->scheduleTask()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized notifyRunning()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/googlex/common/async/AbstractRequest;->setState(I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/googlex/common/async/AbstractRequest;->state:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized scheduleTask()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/googlex/common/async/AbstractRequest;->task:Lcom/googlex/common/task/AbstractTask;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/googlex/common/async/AbstractRequest;->task:Lcom/googlex/common/task/AbstractTask;

    invoke-virtual {v0}, Lcom/googlex/common/task/AbstractTask;->schedule()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setTask(Lcom/googlex/common/task/AbstractTask;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/googlex/common/async/AbstractRequest;->task:Lcom/googlex/common/task/AbstractTask;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
