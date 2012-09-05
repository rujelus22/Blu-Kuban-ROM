.class Lcom/google/android/music/AsyncMediaPlayer$StopWatch;
.super Ljava/lang/Object;
.source "AsyncMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AsyncMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StopWatch"
.end annotation


# instance fields
.field private mCumulativeTime:J

.field private mIsRunning:Z

.field private mStart:J


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 872
    iput-wide v0, p0, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;->mCumulativeTime:J

    .line 873
    iput-wide v0, p0, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;->mStart:J

    .line 874
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;->mIsRunning:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized getTime()J
    .registers 7

    .prologue
    .line 892
    monitor-enter p0

    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;->mIsRunning:Z

    if-nez v2, :cond_9

    .line 893
    iget-wide v2, p0, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;->mCumulativeTime:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_15

    .line 896
    :goto_7
    monitor-exit p0

    return-wide v2

    .line 895
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 896
    .local v0, now:J
    iget-wide v2, p0, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;->mCumulativeTime:J

    iget-wide v4, p0, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;->mStart:J
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_15

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    goto :goto_7

    .line 892
    .end local v0           #now:J
    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized pause()V
    .registers 7

    .prologue
    .line 884
    monitor-enter p0

    :try_start_1
    iget-boolean v2, p0, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;->mIsRunning:Z

    if-eqz v2, :cond_15

    .line 885
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 886
    .local v0, now:J
    iget-wide v2, p0, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;->mCumulativeTime:J

    iget-wide v4, p0, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;->mStart:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;->mCumulativeTime:J

    .line 887
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;->mIsRunning:Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 889
    .end local v0           #now:J
    :cond_15
    monitor-exit p0

    return-void

    .line 884
    :catchall_17
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized reset()V
    .registers 3

    .prologue
    .line 901
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_3
    iput-wide v0, p0, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;->mCumulativeTime:J

    .line 902
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;->mStart:J
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 903
    monitor-exit p0

    return-void

    .line 901
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .registers 3

    .prologue
    .line 877
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;->mIsRunning:Z

    if-nez v0, :cond_e

    .line 878
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;->mStart:J

    .line 879
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/AsyncMediaPlayer$StopWatch;->mIsRunning:Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 881
    :cond_e
    monitor-exit p0

    return-void

    .line 877
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
