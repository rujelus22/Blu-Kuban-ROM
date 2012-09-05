.class Lcom/google/android/picasasync/MetricsUtils$Metrics;
.super Ljava/lang/Object;
.source "MetricsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/MetricsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Metrics"
.end annotation


# instance fields
.field public endTimestamp:J

.field public inBytes:J

.field public name:Ljava/lang/String;

.field public nextFree:Lcom/google/android/picasasync/MetricsUtils$Metrics;

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

.method public static declared-synchronized obtain(Ljava/lang/String;)Lcom/google/android/picasasync/MetricsUtils$Metrics;
    .registers 6
    .parameter "name"

    .prologue
    .line 68
    const-class v2, Lcom/google/android/picasasync/MetricsUtils$Metrics;

    monitor-enter v2

    :try_start_3
    sget-object v0, Lcom/google/android/picasasync/MetricsUtils;->sFreeMetrics:Lcom/google/android/picasasync/MetricsUtils$Metrics;

    .line 69
    .local v0, result:Lcom/google/android/picasasync/MetricsUtils$Metrics;
    if-nez v0, :cond_16

    .line 70
    new-instance v0, Lcom/google/android/picasasync/MetricsUtils$Metrics;

    .end local v0           #result:Lcom/google/android/picasasync/MetricsUtils$Metrics;
    invoke-direct {v0}, Lcom/google/android/picasasync/MetricsUtils$Metrics;-><init>()V

    .line 74
    .restart local v0       #result:Lcom/google/android/picasasync/MetricsUtils$Metrics;
    :goto_c
    iput-object p0, v0, Lcom/google/android/picasasync/MetricsUtils$Metrics;->name:Ljava/lang/String;

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/picasasync/MetricsUtils$Metrics;->startTimestamp:J
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1b

    .line 76
    monitor-exit v2

    return-object v0

    .line 72
    :cond_16
    :try_start_16
    iget-object v1, v0, Lcom/google/android/picasasync/MetricsUtils$Metrics;->nextFree:Lcom/google/android/picasasync/MetricsUtils$Metrics;

    sput-object v1, Lcom/google/android/picasasync/MetricsUtils;->sFreeMetrics:Lcom/google/android/picasasync/MetricsUtils$Metrics;
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_1b

    goto :goto_c

    .line 68
    .end local v0           #result:Lcom/google/android/picasasync/MetricsUtils$Metrics;
    :catchall_1b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized recycle(Lcom/google/android/picasasync/MetricsUtils$Metrics;)V
    .registers 3
    .parameter "metrics"

    .prologue
    .line 80
    const-class v1, Lcom/google/android/picasasync/MetricsUtils$Metrics;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/picasasync/MetricsUtils;->sFreeMetrics:Lcom/google/android/picasasync/MetricsUtils$Metrics;

    iput-object v0, p0, Lcom/google/android/picasasync/MetricsUtils$Metrics;->nextFree:Lcom/google/android/picasasync/MetricsUtils$Metrics;

    .line 81
    sput-object p0, Lcom/google/android/picasasync/MetricsUtils;->sFreeMetrics:Lcom/google/android/picasasync/MetricsUtils$Metrics;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    .line 82
    monitor-exit v1

    return-void

    .line 80
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public recycle()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/picasasync/MetricsUtils$Metrics;->name:Ljava/lang/String;

    .line 86
    iput v1, p0, Lcom/google/android/picasasync/MetricsUtils$Metrics;->queryResultCount:I

    .line 87
    iput v1, p0, Lcom/google/android/picasasync/MetricsUtils$Metrics;->updateCount:I

    .line 88
    iput-wide v2, p0, Lcom/google/android/picasasync/MetricsUtils$Metrics;->inBytes:J

    .line 89
    iput-wide v2, p0, Lcom/google/android/picasasync/MetricsUtils$Metrics;->outBytes:J

    .line 90
    invoke-static {p0}, Lcom/google/android/picasasync/MetricsUtils$Metrics;->recycle(Lcom/google/android/picasasync/MetricsUtils$Metrics;)V

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .prologue
    const-wide/16 v7, 0x0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/picasasync/MetricsUtils$Metrics;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget v3, p0, Lcom/google/android/picasasync/MetricsUtils$Metrics;->queryResultCount:I

    if-eqz v3, :cond_21

    .line 99
    const-string v3, " query-result:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/picasasync/MetricsUtils$Metrics;->queryResultCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    :cond_21
    iget v3, p0, Lcom/google/android/picasasync/MetricsUtils$Metrics;->updateCount:I

    if-eqz v3, :cond_30

    .line 103
    const-string v3, " update:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/picasasync/MetricsUtils$Metrics;->updateCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    :cond_30
    iget-wide v3, p0, Lcom/google/android/picasasync/MetricsUtils$Metrics;->inBytes:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_41

    .line 107
    const-string v3, " in:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/picasasync/MetricsUtils$Metrics;->inBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 110
    :cond_41
    iget-wide v3, p0, Lcom/google/android/picasasync/MetricsUtils$Metrics;->outBytes:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_52

    .line 111
    const-string v3, " out:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/picasasync/MetricsUtils$Metrics;->outBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 114
    :cond_52
    iget-wide v3, p0, Lcom/google/android/picasasync/MetricsUtils$Metrics;->endTimestamp:J

    iget-wide v5, p0, Lcom/google/android/picasasync/MetricsUtils$Metrics;->startTimestamp:J

    sub-long v1, v3, v5

    .line 115
    .local v1, duration:J
    cmp-long v3, v1, v7

    if-lez v3, :cond_65

    .line 116
    const-string v3, " time:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 119
    :cond_65
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
