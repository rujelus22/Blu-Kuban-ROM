.class public Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;
.super Lcom/google/android/apps/uploader/googlemobile/common/task/Task;


# static fields
.field public static final REPEAT_FOREVER:I = -0x1

.field public static final UNSET_VALUE:J = -0x1L


# instance fields
.field private count:I

.field private deadline:J

.field private delay:J

.field private isFixedRate:Z

.field private period:J

.field private scheduled:J


# direct methods
.method public constructor <init>(Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;)V
    .registers 3

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;Ljava/lang/Runnable;)V
    .registers 7

    const-wide/16 v2, -0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/common/task/Task;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->delay:J

    iput-wide v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->deadline:J

    iput-wide v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->period:J

    iput-wide v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->scheduled:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->count:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->isFixedRate:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized cancelInternal()I
    .registers 5

    const-wide/16 v2, -0x1

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->runner:Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->cancelTaskInternal(Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->scheduled:J

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->count:I
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_22

    :goto_11
    monitor-exit p0

    return v0

    :cond_13
    :try_start_13
    iget-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->scheduled:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_20

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->scheduled:J

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->count:I
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

.method public declared-synchronized getRepeatCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->count:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getScheduledTime()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->scheduled:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected runInternal()V
    .registers 7

    const-wide/16 v4, -0x1

    monitor-enter p0

    :try_start_3
    iget-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->period:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1f

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->scheduled:J

    :goto_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_32

    invoke-super {p0}, Lcom/google/android/apps/uploader/googlemobile/common/task/Task;->runInternal()V

    monitor-enter p0

    :try_start_12
    iget-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->scheduled:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->runner:Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->scheduleTask(Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;)V

    :cond_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_53

    return-void

    :cond_1f
    :try_start_1f
    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->count:I

    if-lez v0, :cond_29

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->count:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->count:I

    :cond_29
    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->count:I

    if-nez v0, :cond_35

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->scheduled:J

    goto :goto_d

    :catchall_32
    move-exception v0

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_32

    throw v0

    :cond_35
    :try_start_35
    iget-boolean v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->isFixedRate:Z

    if-eqz v0, :cond_41

    iget-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->scheduled:J

    iget-wide v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->period:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->scheduled:J

    goto :goto_d

    :cond_41
    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getInstance()Lcom/google/android/apps/uploader/googlemobile/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getClock()Lcom/google/android/apps/uploader/googlemobile/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/uploader/googlemobile/common/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->period:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->scheduled:J
    :try_end_52
    .catchall {:try_start_35 .. :try_end_52} :catchall_32

    goto :goto_d

    :catchall_53
    move-exception v0

    :try_start_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v0
.end method

.method public declared-synchronized schedule()V
    .registers 5

    const-wide/16 v2, -0x1

    monitor-enter p0

    :try_start_3
    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->count:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->count:I

    if-lez v0, :cond_2e

    :cond_c
    iget-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->scheduled:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2e

    iget-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->deadline:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_30

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getInstance()Lcom/google/android/apps/uploader/googlemobile/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getClock()Lcom/google/android/apps/uploader/googlemobile/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/uploader/googlemobile/common/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->delay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->scheduled:J

    :goto_29
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->runner:Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->scheduleTask(Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;)V
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_38

    :cond_2e
    monitor-exit p0

    return-void

    :cond_30
    :try_start_30
    iget-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->deadline:J

    iget-wide v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->delay:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->scheduled:J
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_38

    goto :goto_29

    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected scheduleInternal()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->runner:Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/task/TaskRunner;->scheduleTimerTaskInternal(Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;)V

    return-void
.end method

.method public declared-synchronized setDeadline(J)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->deadline:J
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
    iput-wide p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->delay:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPeriod(J)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->period:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRepeatCount(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->count:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRepeatFixedRate(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/task/TimerTask;->isFixedRate:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
