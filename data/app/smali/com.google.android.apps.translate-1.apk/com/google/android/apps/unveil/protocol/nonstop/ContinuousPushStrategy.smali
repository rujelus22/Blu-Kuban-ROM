.class public Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousPushStrategy;
.super Ljava/lang/Object;
.source "ContinuousPushStrategy.java"

# interfaces
.implements Lcom/google/android/apps/unveil/protocol/RequestPipeline$PushStrategy;


# static fields
.field private static final FORCE_ALL_FRAMES_ACCEPTABLE:Z = true

.field private static final MAX_UPLOAD_DELAY:J = 0x7d0L

.field private static final MAX_UPLOAD_MOVEMENT:F = 5.0f

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final clock:Lcom/google/android/apps/unveil/env/Clock;

.field private lastPushTimeMs:J

.field private final params:Lcom/google/android/apps/unveil/network/ContinuousNetworkParams;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousPushStrategy;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/unveil/env/Clock;Lcom/google/android/apps/unveil/network/ContinuousNetworkParams;)V
    .registers 3
    .parameter "clock"
    .parameter "params"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousPushStrategy;->clock:Lcom/google/android/apps/unveil/env/Clock;

    .line 43
    iput-object p2, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousPushStrategy;->params:Lcom/google/android/apps/unveil/network/ContinuousNetworkParams;

    .line 44
    return-void
.end method


# virtual methods
.method protected isFrameAcceptable(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)Z
    .registers 4
    .parameter "frame"

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getOpticalFlowDelta()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40a0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_13

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->isBlurred()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method protected isLastPushRecent(J)Z
    .registers 10
    .parameter "lastPushTimeMs"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    sget-object v2, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousPushStrategy;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "is last push recent? %d ago"

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousPushStrategy;->clock:Lcom/google/android/apps/unveil/env/Clock;

    invoke-virtual {v5}, Lcom/google/android/apps/unveil/env/Clock;->now()J

    move-result-wide v5

    sub-long/2addr v5, p1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousPushStrategy;->clock:Lcom/google/android/apps/unveil/env/Clock;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/Clock;->now()J

    move-result-wide v2

    sub-long/2addr v2, p1

    iget-object v4, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousPushStrategy;->params:Lcom/google/android/apps/unveil/network/ContinuousNetworkParams;

    iget-wide v4, v4, Lcom/google/android/apps/unveil/network/ContinuousNetworkParams;->interPushDelayMs:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_28

    :goto_27
    return v0

    :cond_28
    move v0, v1

    goto :goto_27
.end method

.method protected mustPush(J)Z
    .registers 11
    .parameter "lastPushTimeMs"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v0, v4, p1

    .line 66
    .local v0, timeSinceLastRequest:J
    sget-object v4, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousPushStrategy;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v5, "Must push? timeSinceLastRequest=%d"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    const-wide/16 v4, 0x7d0

    cmp-long v4, v0, v4

    if-lez v4, :cond_1e

    :goto_1d
    return v2

    :cond_1e
    move v2, v3

    goto :goto_1d
.end method

.method public onPush(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V
    .registers 5
    .parameter "frame"

    .prologue
    .line 76
    sget-object v0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousPushStrategy;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Updating lastPushTimeMs"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousPushStrategy;->clock:Lcom/google/android/apps/unveil/env/Clock;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/Clock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousPushStrategy;->lastPushTimeMs:J

    .line 78
    return-void
.end method

.method public onReset()V
    .registers 4

    .prologue
    .line 82
    sget-object v0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousPushStrategy;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Resetting lastPushTimeMs"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousPushStrategy;->lastPushTimeMs:J

    .line 84
    return-void
.end method

.method public shouldPush(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)Z
    .registers 4
    .parameter "frame"

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousPushStrategy;->lastPushTimeMs:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/unveil/protocol/nonstop/ContinuousPushStrategy;->isLastPushRecent(J)Z

    move-result v0

    if-nez v0, :cond_a

    .line 52
    const/4 v0, 0x1

    .line 55
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
