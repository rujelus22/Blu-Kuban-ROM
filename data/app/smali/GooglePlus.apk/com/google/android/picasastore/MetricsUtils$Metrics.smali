.class Lcom/google/android/picasastore/MetricsUtils$Metrics;
.super Ljava/lang/Object;
.source "MetricsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasastore/MetricsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Metrics"
.end annotation


# instance fields
.field public endTimestamp:J

.field public inBytes:J

.field public name:Ljava/lang/String;

.field public networkOpCount:I

.field public networkOpDuration:J

.field public nextFree:Lcom/google/android/picasastore/MetricsUtils$Metrics;

.field public outBytes:J

.field public queryResultCount:I

.field public startTimestamp:J

.field public updateCount:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized obtain(Ljava/lang/String;)Lcom/google/android/picasastore/MetricsUtils$Metrics;
    .registers 6
    .parameter "name"

    .prologue
    .line 70
    const-class v2, Lcom/google/android/picasastore/MetricsUtils$Metrics;

    monitor-enter v2

    :try_start_3
    sget-object v0, Lcom/google/android/picasastore/MetricsUtils;->sFreeMetrics:Lcom/google/android/picasastore/MetricsUtils$Metrics;

    .line 71
    .local v0, result:Lcom/google/android/picasastore/MetricsUtils$Metrics;
    if-nez v0, :cond_16

    .line 72
    new-instance v0, Lcom/google/android/picasastore/MetricsUtils$Metrics;

    .end local v0           #result:Lcom/google/android/picasastore/MetricsUtils$Metrics;
    invoke-direct {v0}, Lcom/google/android/picasastore/MetricsUtils$Metrics;-><init>()V

    .line 76
    .restart local v0       #result:Lcom/google/android/picasastore/MetricsUtils$Metrics;
    :goto_c
    iput-object p0, v0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->name:Ljava/lang/String;

    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->startTimestamp:J
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1b

    .line 78
    monitor-exit v2

    return-object v0

    .line 74
    :cond_16
    :try_start_16
    iget-object v1, v0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->nextFree:Lcom/google/android/picasastore/MetricsUtils$Metrics;

    sput-object v1, Lcom/google/android/picasastore/MetricsUtils;->sFreeMetrics:Lcom/google/android/picasastore/MetricsUtils$Metrics;
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_1b

    goto :goto_c

    .line 70
    .end local v0           #result:Lcom/google/android/picasastore/MetricsUtils$Metrics;
    :catchall_1b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized recycle(Lcom/google/android/picasastore/MetricsUtils$Metrics;)V
    .registers 3
    .parameter "metrics"

    .prologue
    .line 82
    const-class v1, Lcom/google/android/picasastore/MetricsUtils$Metrics;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/picasastore/MetricsUtils;->sFreeMetrics:Lcom/google/android/picasastore/MetricsUtils$Metrics;

    iput-object v0, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->nextFree:Lcom/google/android/picasastore/MetricsUtils$Metrics;

    .line 83
    sput-object p0, Lcom/google/android/picasastore/MetricsUtils;->sFreeMetrics:Lcom/google/android/picasastore/MetricsUtils$Metrics;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    .line 84
    monitor-exit v1

    return-void

    .line 82
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public merge(Lcom/google/android/picasastore/MetricsUtils$Metrics;)V
    .registers 6
    .parameter "that"

    .prologue
    .line 98
    iget v0, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->queryResultCount:I

    iget v1, p1, Lcom/google/android/picasastore/MetricsUtils$Metrics;->queryResultCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->queryResultCount:I

    .line 99
    iget v0, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->updateCount:I

    iget v1, p1, Lcom/google/android/picasastore/MetricsUtils$Metrics;->updateCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->updateCount:I

    .line 100
    iget-wide v0, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->inBytes:J

    iget-wide v2, p1, Lcom/google/android/picasastore/MetricsUtils$Metrics;->inBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->inBytes:J

    .line 101
    iget-wide v0, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->outBytes:J

    iget-wide v2, p1, Lcom/google/android/picasastore/MetricsUtils$Metrics;->outBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->outBytes:J

    .line 102
    iget-wide v0, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->networkOpDuration:J

    iget-wide v2, p1, Lcom/google/android/picasastore/MetricsUtils$Metrics;->networkOpDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->networkOpDuration:J

    .line 103
    iget v0, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->networkOpCount:I

    iget v1, p1, Lcom/google/android/picasastore/MetricsUtils$Metrics;->networkOpCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->networkOpCount:I

    .line 104
    return-void
.end method

.method public recycle()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->name:Ljava/lang/String;

    .line 88
    iput v1, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->queryResultCount:I

    .line 89
    iput v1, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->updateCount:I

    .line 90
    iput-wide v2, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->inBytes:J

    .line 91
    iput-wide v2, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->outBytes:J

    .line 92
    iput-wide v2, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->networkOpDuration:J

    .line 93
    iput v1, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->networkOpCount:I

    .line 94
    invoke-static {p0}, Lcom/google/android/picasastore/MetricsUtils$Metrics;->recycle(Lcom/google/android/picasastore/MetricsUtils$Metrics;)V

    .line 95
    return-void
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "operationName"

    .prologue
    const-wide/16 v7, 0x0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget v3, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->queryResultCount:I

    if-eqz v3, :cond_21

    .line 111
    const-string v3, " query-result:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->queryResultCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    :cond_21
    iget v3, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->updateCount:I

    if-eqz v3, :cond_30

    .line 115
    const-string v3, " update:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->updateCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    :cond_30
    iget-wide v3, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->inBytes:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_41

    .line 119
    const-string v3, " in:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->inBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 122
    :cond_41
    iget-wide v3, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->outBytes:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_52

    .line 123
    const-string v3, " out:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->outBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 126
    :cond_52
    iget-wide v3, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->networkOpDuration:J

    cmp-long v3, v3, v7

    if-lez v3, :cond_63

    .line 127
    const-string v3, " net-time:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->networkOpDuration:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 130
    :cond_63
    iget v3, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->networkOpCount:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_73

    .line 131
    const-string v3, " net-op:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->networkOpCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    :cond_73
    iget-wide v3, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->endTimestamp:J

    iget-wide v5, p0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->startTimestamp:J

    sub-long v1, v3, v5

    .line 135
    .local v1, duration:J
    cmp-long v3, v1, v7

    if-lez v3, :cond_86

    .line 136
    const-string v3, " time:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 139
    :cond_86
    if-eqz p1, :cond_9e

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " report:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_9e
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
