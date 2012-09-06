.class public abstract Lcom/google/android/apps/googlevoice/util/RepeatingTask;
.super Ljava/lang/Object;
.source "RepeatingTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private bufferMillis:J

.field private clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

.field private intervalMillis:J

.field private isRunning:Z

.field private messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

.field private nextRunUptimeMillis:J


# direct methods
.method public constructor <init>(Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/activity/MessageSender;J)V
    .registers 12
    .parameter "clockUtils"
    .parameter "messageSender"
    .parameter "intervalMillis"

    .prologue
    .line 61
    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/googlevoice/util/RepeatingTask;-><init>(Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/activity/MessageSender;JJ)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/common/time/ClockUtils;Lcom/google/android/apps/googlevoice/activity/MessageSender;JJ)V
    .registers 8
    .parameter "clockUtils"
    .parameter "messageSender"
    .parameter "intervalMillis"
    .parameter "bufferMillis"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/util/RepeatingTask;->isRunning:Z

    .line 54
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/util/RepeatingTask;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    .line 55
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/util/RepeatingTask;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    .line 56
    iput-wide p3, p0, Lcom/google/android/apps/googlevoice/util/RepeatingTask;->intervalMillis:J

    .line 57
    iput-wide p5, p0, Lcom/google/android/apps/googlevoice/util/RepeatingTask;->bufferMillis:J

    .line 58
    return-void
.end method

.method private declared-synchronized reschedule()V
    .registers 7

    .prologue
    .line 84
    monitor-enter p0

    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/apps/googlevoice/util/RepeatingTask;->isRunning:Z

    if-eqz v2, :cond_27

    .line 85
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/util/RepeatingTask;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    invoke-interface {v2}, Lcom/google/android/apps/common/time/ClockUtils;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/apps/googlevoice/util/RepeatingTask;->bufferMillis:J

    add-long v0, v2, v4

    .line 86
    .local v0, now:J
    :goto_f
    iget-wide v2, p0, Lcom/google/android/apps/googlevoice/util/RepeatingTask;->nextRunUptimeMillis:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_20

    .line 87
    iget-wide v2, p0, Lcom/google/android/apps/googlevoice/util/RepeatingTask;->nextRunUptimeMillis:J

    iget-wide v4, p0, Lcom/google/android/apps/googlevoice/util/RepeatingTask;->intervalMillis:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/apps/googlevoice/util/RepeatingTask;->nextRunUptimeMillis:J
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    goto :goto_f

    .line 84
    .end local v0           #now:J
    :catchall_1d
    move-exception v2

    monitor-exit p0

    throw v2

    .line 89
    .restart local v0       #now:J
    :cond_20
    :try_start_20
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/util/RepeatingTask;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    iget-wide v3, p0, Lcom/google/android/apps/googlevoice/util/RepeatingTask;->nextRunUptimeMillis:J

    invoke-interface {v2, p0, v3, v4}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->postAtTime(Ljava/lang/Runnable;J)Z
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_1d

    .line 91
    .end local v0           #now:J
    :cond_27
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized isRunning()Z
    .registers 2

    .prologue
    .line 80
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/util/RepeatingTask;->isRunning:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract performTask()V
.end method

.method public run()V
    .registers 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/util/RepeatingTask;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 96
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/util/RepeatingTask;->performTask()V

    .line 97
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/util/RepeatingTask;->reschedule()V

    .line 99
    :cond_c
    return-void
.end method

.method public declared-synchronized start()V
    .registers 3

    .prologue
    .line 65
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/util/RepeatingTask;->isRunning:Z

    if-nez v0, :cond_15

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/util/RepeatingTask;->isRunning:Z

    .line 67
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/util/RepeatingTask;->clockUtils:Lcom/google/android/apps/common/time/ClockUtils;

    invoke-interface {v0}, Lcom/google/android/apps/common/time/ClockUtils;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/googlevoice/util/RepeatingTask;->nextRunUptimeMillis:J

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/util/RepeatingTask;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v0, p0}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->post(Ljava/lang/Runnable;)Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 70
    :cond_15
    monitor-exit p0

    return-void

    .line 65
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 2

    .prologue
    .line 73
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/apps/googlevoice/util/RepeatingTask;->isRunning:Z

    if-eqz v0, :cond_d

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/googlevoice/util/RepeatingTask;->isRunning:Z

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/util/RepeatingTask;->messageSender:Lcom/google/android/apps/googlevoice/activity/MessageSender;

    invoke-interface {v0, p0}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 77
    :cond_d
    monitor-exit p0

    return-void

    .line 73
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
