.class public Lcom/google/common/task/TimerTask;
.super Lcom/google/common/task/Task;


# instance fields
.field private count:I

.field private deadline:J

.field private delay:J

.field private isFixedRate:Z

.field private period:J

.field private scheduled:J


# direct methods
.method public constructor <init>(Lcom/google/common/task/TaskRunner;)V
    .registers 3

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {p0, p1, v0}, Lcom/google/common/task/TimerTask;-><init>(Lcom/google/common/task/TaskRunner;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/task/TaskRunner;Ljava/lang/Runnable;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/task/TimerTask;-><init>(Lcom/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 8

    const-wide/16 v2, -0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/task/Task;-><init>(Lcom/google/common/task/TaskRunner;Ljava/lang/Runnable;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/task/TimerTask;->delay:J

    iput-wide v2, p0, Lcom/google/common/task/TimerTask;->deadline:J

    iput-wide v2, p0, Lcom/google/common/task/TimerTask;->period:J

    iput-wide v2, p0, Lcom/google/common/task/TimerTask;->scheduled:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/task/TimerTask;->count:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/task/TimerTask;->isFixedRate:Z

    return-void
.end method


# virtual methods
.method declared-synchronized cancelInternal()I
    .registers 5

    const-wide/16 v2, -0x1

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/google/common/task/TimerTask;->runner:Lcom/google/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Lcom/google/common/task/TaskRunner;->cancelTaskInternal(Lcom/google/common/task/AbstractTask;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/common/task/TimerTask;->scheduled:J

    iget v0, p0, Lcom/google/common/task/TimerTask;->count:I
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_22

    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    iget-wide v0, p0, Lcom/google/common/task/TimerTask;->scheduled:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_20

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/common/task/TimerTask;->scheduled:J

    iget v0, p0, Lcom/google/common/task/TimerTask;->count:I
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_22

    goto :goto_11

    :cond_20
    const/4 v0, 0x0

    goto :goto_11

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getScheduledTime()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/common/task/TimerTask;->scheduled:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method runInternal()V
    .registers 5

    const-wide/16 v2, -0x1

    monitor-enter p0

    :try_start_3
    iget-wide v0, p0, Lcom/google/common/task/TimerTask;->period:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/common/task/TimerTask;->scheduled:J

    :goto_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_2a

    invoke-super {p0}, Lcom/google/common/task/Task;->runInternal()V

    iget-object v0, p0, Lcom/google/common/task/TimerTask;->runner:Lcom/google/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Lcom/google/common/task/TaskRunner;->scheduleTask(Lcom/google/common/task/AbstractTask;)V

    return-void

    :cond_17
    :try_start_17
    iget v0, p0, Lcom/google/common/task/TimerTask;->count:I

    if-lez v0, :cond_21

    iget v0, p0, Lcom/google/common/task/TimerTask;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/task/TimerTask;->count:I

    :cond_21
    iget v0, p0, Lcom/google/common/task/TimerTask;->count:I

    if-nez v0, :cond_2d

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/common/task/TimerTask;->scheduled:J

    goto :goto_d

    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_17 .. :try_end_2c} :catchall_2a

    throw v0

    :cond_2d
    :try_start_2d
    iget-boolean v0, p0, Lcom/google/common/task/TimerTask;->isFixedRate:Z

    if-eqz v0, :cond_39

    iget-wide v0, p0, Lcom/google/common/task/TimerTask;->scheduled:J

    iget-wide v2, p0, Lcom/google/common/task/TimerTask;->period:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/task/TimerTask;->scheduled:J

    goto :goto_d

    :cond_39
    invoke-static {}, Lcom/google/common/Config;->getInstance()Lcom/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/Config;->getClock()Lcom/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/common/task/TimerTask;->period:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/task/TimerTask;->scheduled:J
    :try_end_4a
    .catchall {:try_start_2d .. :try_end_4a} :catchall_2a

    goto :goto_d
.end method

.method public schedule()V
    .registers 5

    const-wide/16 v2, -0x1

    monitor-enter p0

    :try_start_3
    iget v0, p0, Lcom/google/common/task/TimerTask;->count:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/google/common/task/TimerTask;->count:I

    if-lez v0, :cond_29

    :cond_c
    iget-wide v0, p0, Lcom/google/common/task/TimerTask;->scheduled:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_29

    iget-wide v0, p0, Lcom/google/common/task/TimerTask;->deadline:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_30

    invoke-static {}, Lcom/google/common/Config;->getInstance()Lcom/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/Config;->getClock()Lcom/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/common/task/TimerTask;->delay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/task/TimerTask;->scheduled:J

    :cond_29
    :goto_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_38

    iget-object v0, p0, Lcom/google/common/task/TimerTask;->runner:Lcom/google/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Lcom/google/common/task/TaskRunner;->scheduleTask(Lcom/google/common/task/AbstractTask;)V

    return-void

    :cond_30
    :try_start_30
    iget-wide v0, p0, Lcom/google/common/task/TimerTask;->deadline:J

    iget-wide v2, p0, Lcom/google/common/task/TimerTask;->delay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/task/TimerTask;->scheduled:J

    goto :goto_29

    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method declared-synchronized scheduleInternal()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/common/task/TimerTask;->scheduled:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/common/task/TimerTask;->runner:Lcom/google/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Lcom/google/common/task/TaskRunner;->scheduleTimerTaskInternal(Lcom/google/common/task/TimerTask;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDeadline(J)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/google/common/task/TimerTask;->deadline:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDelay(J)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/google/common/task/TimerTask;->delay:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
