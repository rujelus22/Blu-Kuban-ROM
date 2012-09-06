.class public Lcom/google/android/apps/unveil/env/BandwidthEstimator;
.super Ljava/lang/Object;
.source "BandwidthEstimator.java"


# static fields
.field private static final BYTES_PER_KB:F = 1024.0f

.field private static final UNSENT:I = -0x1

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final bytesPerSecond:Lcom/google/android/apps/unveil/env/Statistic;

.field private requestOutTime:J

.field private requestSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/env/BandwidthEstimator;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/google/android/apps/unveil/env/Statistic;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/Statistic;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/BandwidthEstimator;->bytesPerSecond:Lcom/google/android/apps/unveil/env/Statistic;

    .line 34
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/BandwidthEstimator;->reset()V

    .line 35
    return-void
.end method


# virtual methods
.method public declared-synchronized getDebugText()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v3, 0x4480

    .line 65
    monitor-enter p0

    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Average throughput: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/env/BandwidthEstimator;->bytesPerSecond:Lcom/google/android/apps/unveil/env/Statistic;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/Statistic;->getMovingAverage()F

    move-result v2

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "kBps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Throughput stdDev: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/env/BandwidthEstimator;->bytesPerSecond:Lcom/google/android/apps/unveil/env/Statistic;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/Statistic;->getStandardDeviation()F

    move-result v2

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "kBps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_50

    .line 71
    monitor-exit p0

    return-object v0

    .line 65
    .end local v0           #lines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_50
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getThroughputBps()F
    .registers 2

    .prologue
    .line 75
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/BandwidthEstimator;->bytesPerSecond:Lcom/google/android/apps/unveil/env/Statistic;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/Statistic;->getMovingAverage()F
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestIn(J)V
    .registers 9
    .parameter "timestamp"

    .prologue
    const-wide/16 v4, -0x1

    .line 47
    monitor-enter p0

    :try_start_3
    iget-wide v2, p0, Lcom/google/android/apps/unveil/env/BandwidthEstimator;->requestOutTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_13

    .line 48
    sget-object v2, Lcom/google/android/apps/unveil/env/BandwidthEstimator;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "onResponse() without onSending()!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    :cond_13
    iget-wide v2, p0, Lcom/google/android/apps/unveil/env/BandwidthEstimator;->requestOutTime:J

    sub-long v2, p1, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a

    div-float v1, v2, v3

    .line 52
    .local v1, requestDurationSeconds:F
    iget v2, p0, Lcom/google/android/apps/unveil/env/BandwidthEstimator;->requestSize:I

    int-to-float v2, v2

    div-float v0, v2, v1

    .line 54
    .local v0, bandwidthForRequestBytesPerSecond:F
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/BandwidthEstimator;->bytesPerSecond:Lcom/google/android/apps/unveil/env/Statistic;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/unveil/env/Statistic;->addNumber(F)V

    .line 55
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/apps/unveil/env/BandwidthEstimator;->requestOutTime:J
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2c

    .line 56
    monitor-exit p0

    return-void

    .line 47
    .end local v0           #bandwidthForRequestBytesPerSecond:F
    .end local v1           #requestDurationSeconds:F
    :catchall_2c
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized requestOut(JI)V
    .registers 8
    .parameter "timestamp"
    .parameter "byteSize"

    .prologue
    .line 38
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/apps/unveil/env/BandwidthEstimator;->requestOutTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    .line 39
    sget-object v0, Lcom/google/android/apps/unveil/env/BandwidthEstimator;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "onSending() without onResponse()!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    :cond_13
    iput p3, p0, Lcom/google/android/apps/unveil/env/BandwidthEstimator;->requestSize:I

    .line 43
    iput-wide p1, p0, Lcom/google/android/apps/unveil/env/BandwidthEstimator;->requestOutTime:J
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 44
    monitor-exit p0

    return-void

    .line 38
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .registers 3

    .prologue
    .line 59
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/BandwidthEstimator;->bytesPerSecond:Lcom/google/android/apps/unveil/env/Statistic;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/Statistic;->reset()V

    .line 60
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/apps/unveil/env/BandwidthEstimator;->requestOutTime:J

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/unveil/env/BandwidthEstimator;->requestSize:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 62
    monitor-exit p0

    return-void

    .line 59
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
