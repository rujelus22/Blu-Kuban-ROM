.class public Landroid/support/place/utils/RateLimiter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLastRunTimestampMs:Ljava/lang/Long;

.field private mPeriodMs:I

.field private mTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Landroid/support/place/utils/RateLimiter;->mHandler:Landroid/os/Handler;

    .line 23
    iput-object p2, p0, Landroid/support/place/utils/RateLimiter;->mTask:Ljava/lang/Runnable;

    .line 24
    iput p3, p0, Landroid/support/place/utils/RateLimiter;->mPeriodMs:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/place/utils/RateLimiter;->mLastRunTimestampMs:Ljava/lang/Long;

    .line 26
    return-void
.end method


# virtual methods
.method public declared-synchronized execute()V
    .registers 7

    .prologue
    .line 30
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 32
    iget-object v2, p0, Landroid/support/place/utils/RateLimiter;->mLastRunTimestampMs:Ljava/lang/Long;

    if-eqz v2, :cond_17

    iget-object v2, p0, Landroid/support/place/utils/RateLimiter;->mLastRunTimestampMs:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v4, p0, Landroid/support/place/utils/RateLimiter;->mPeriodMs:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_26

    .line 35
    :cond_17
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/utils/RateLimiter;->mLastRunTimestampMs:Ljava/lang/Long;

    .line 36
    iget-object v0, p0, Landroid/support/place/utils/RateLimiter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/place/utils/RateLimiter;->mTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_4e

    .line 45
    :cond_24
    :goto_24
    monitor-exit p0

    return-void

    .line 37
    :cond_26
    :try_start_26
    iget-object v2, p0, Landroid/support/place/utils/RateLimiter;->mLastRunTimestampMs:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_24

    .line 42
    iget-object v0, p0, Landroid/support/place/utils/RateLimiter;->mLastRunTimestampMs:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p0, Landroid/support/place/utils/RateLimiter;->mPeriodMs:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/utils/RateLimiter;->mLastRunTimestampMs:Ljava/lang/Long;

    .line 43
    iget-object v0, p0, Landroid/support/place/utils/RateLimiter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/place/utils/RateLimiter;->mTask:Ljava/lang/Runnable;

    iget-object v2, p0, Landroid/support/place/utils/RateLimiter;->mLastRunTimestampMs:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z
    :try_end_4d
    .catchall {:try_start_26 .. :try_end_4d} :catchall_4e

    goto :goto_24

    .line 30
    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
