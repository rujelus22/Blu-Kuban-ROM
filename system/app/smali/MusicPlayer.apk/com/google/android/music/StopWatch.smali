.class public Lcom/google/android/music/StopWatch;
.super Ljava/lang/Object;
.source "StopWatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/StopWatch$Listener;
    }
.end annotation


# instance fields
.field private mCumulativeTime:J

.field private mIsRunning:Z

.field private mListener:Lcom/google/android/music/StopWatch$Listener;

.field private mStart:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide v0, p0, Lcom/google/android/music/StopWatch;->mCumulativeTime:J

    .line 11
    iput-wide v0, p0, Lcom/google/android/music/StopWatch;->mStart:J

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/StopWatch;->mIsRunning:Z

    .line 15
    return-void
.end method


# virtual methods
.method public declared-synchronized getTime()J
    .registers 7

    .prologue
    .line 55
    monitor-enter p0

    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/music/StopWatch;->mIsRunning:Z

    if-nez v2, :cond_9

    .line 56
    iget-wide v2, p0, Lcom/google/android/music/StopWatch;->mCumulativeTime:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_15

    .line 59
    :goto_7
    monitor-exit p0

    return-wide v2

    .line 58
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 59
    .local v0, now:J
    iget-wide v2, p0, Lcom/google/android/music/StopWatch;->mCumulativeTime:J

    iget-wide v4, p0, Lcom/google/android/music/StopWatch;->mStart:J
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_15

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    goto :goto_7

    .line 55
    .end local v0           #now:J
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public pause()V
    .registers 8

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, listener:Lcom/google/android/music/StopWatch$Listener;
    monitor-enter p0

    .line 42
    :try_start_2
    iget-boolean v3, p0, Lcom/google/android/music/StopWatch;->mIsRunning:Z

    if-eqz v3, :cond_18

    .line 43
    iget-object v0, p0, Lcom/google/android/music/StopWatch;->mListener:Lcom/google/android/music/StopWatch$Listener;

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 45
    .local v1, now:J
    iget-wide v3, p0, Lcom/google/android/music/StopWatch;->mCumulativeTime:J

    iget-wide v5, p0, Lcom/google/android/music/StopWatch;->mStart:J

    sub-long v5, v1, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/music/StopWatch;->mCumulativeTime:J

    .line 46
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/music/StopWatch;->mIsRunning:Z

    .line 48
    .end local v1           #now:J
    :cond_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_1f

    .line 49
    if-eqz v0, :cond_1e

    .line 50
    invoke-interface {v0, p0}, Lcom/google/android/music/StopWatch$Listener;->onPause(Lcom/google/android/music/StopWatch;)V

    .line 52
    :cond_1e
    return-void

    .line 48
    :catchall_1f
    move-exception v3

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v3
.end method

.method public reset()V
    .registers 4

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, listener:Lcom/google/android/music/StopWatch$Listener;
    monitor-enter p0

    .line 66
    :try_start_2
    iget-object v0, p0, Lcom/google/android/music/StopWatch;->mListener:Lcom/google/android/music/StopWatch$Listener;

    .line 67
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/music/StopWatch;->mCumulativeTime:J

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/music/StopWatch;->mStart:J

    .line 69
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_15

    .line 70
    if-eqz v0, :cond_14

    .line 71
    invoke-interface {v0, p0}, Lcom/google/android/music/StopWatch$Listener;->onReset(Lcom/google/android/music/StopWatch;)V

    .line 73
    :cond_14
    return-void

    .line 69
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public start()V
    .registers 4

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, listener:Lcom/google/android/music/StopWatch$Listener;
    monitor-enter p0

    .line 28
    :try_start_2
    iget-boolean v1, p0, Lcom/google/android/music/StopWatch;->mIsRunning:Z

    if-nez v1, :cond_11

    .line 29
    iget-object v0, p0, Lcom/google/android/music/StopWatch;->mListener:Lcom/google/android/music/StopWatch$Listener;

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/music/StopWatch;->mStart:J

    .line 31
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/StopWatch;->mIsRunning:Z

    .line 33
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_18

    .line 34
    if-eqz v0, :cond_17

    .line 35
    invoke-interface {v0, p0}, Lcom/google/android/music/StopWatch$Listener;->onStart(Lcom/google/android/music/StopWatch;)V

    .line 37
    :cond_17
    return-void

    .line 33
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method
