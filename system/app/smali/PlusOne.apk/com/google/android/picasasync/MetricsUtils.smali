.class public Lcom/google/android/picasasync/MetricsUtils;
.super Ljava/lang/Object;
.source "MetricsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/MetricsUtils$Metrics;
    }
.end annotation


# static fields
.field private static final LOG_DURATION_LIMIT:J

.field static sFreeMetrics:Lcom/google/android/picasasync/MetricsUtils$Metrics;

.field private static final sMetricsStack:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/picasasync/MetricsUtils$Metrics;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/picasasync/MetricsUtils;->sFreeMetrics:Lcom/google/android/picasasync/MetricsUtils$Metrics;

    .line 45
    const-string v0, "picasasync.metrics.time"

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/google/android/picasasync/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/picasasync/MetricsUtils;->LOG_DURATION_LIMIT:J

    .line 48
    new-instance v0, Lcom/google/android/picasasync/MetricsUtils$1;

    invoke-direct {v0}, Lcom/google/android/picasasync/MetricsUtils$1;-><init>()V

    sput-object v0, Lcom/google/android/picasasync/MetricsUtils;->sMetricsStack:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static begin(Ljava/lang/String;)I
    .registers 3
    .parameter "name"

    .prologue
    .line 124
    sget-object v1, Lcom/google/android/picasasync/MetricsUtils;->sMetricsStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 125
    .local v0, stack:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/picasasync/MetricsUtils$Metrics;>;"
    invoke-static {p0}, Lcom/google/android/picasasync/MetricsUtils$Metrics;->obtain(Ljava/lang/String;)Lcom/google/android/picasasync/MetricsUtils$Metrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1
.end method

.method public static end(I)V
    .registers 8
    .parameter "restoreId"

    .prologue
    .line 130
    sget-object v2, Lcom/google/android/picasasync/MetricsUtils;->sMetricsStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 131
    .local v1, stack:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/picasasync/MetricsUtils$Metrics;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt p0, v2, :cond_10

    if-gtz p0, :cond_31

    .line 132
    :cond_10
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "size: %s, id: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :cond_31
    :goto_31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p0, v2, :cond_63

    .line 137
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/MetricsUtils$Metrics;

    .line 138
    .local v0, metrics:Lcom/google/android/picasasync/MetricsUtils$Metrics;
    const-string v2, "MetricsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING: unclosed metrics: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/picasasync/MetricsUtils$Metrics;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {v0}, Lcom/google/android/picasasync/MetricsUtils$Metrics;->recycle()V

    goto :goto_31

    .line 142
    .end local v0           #metrics:Lcom/google/android/picasasync/MetricsUtils$Metrics;
    :cond_63
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/MetricsUtils$Metrics;

    .line 143
    .restart local v0       #metrics:Lcom/google/android/picasasync/MetricsUtils$Metrics;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/picasasync/MetricsUtils$Metrics;->endTimestamp:J

    .line 145
    sget-wide v2, Lcom/google/android/picasasync/MetricsUtils;->LOG_DURATION_LIMIT:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_91

    iget-wide v2, v0, Lcom/google/android/picasasync/MetricsUtils$Metrics;->endTimestamp:J

    iget-wide v4, v0, Lcom/google/android/picasasync/MetricsUtils$Metrics;->startTimestamp:J

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/google/android/picasasync/MetricsUtils;->LOG_DURATION_LIMIT:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_91

    .line 147
    const-string v2, "MetricsUtils"

    invoke-virtual {v0}, Lcom/google/android/picasasync/MetricsUtils$Metrics;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_91
    invoke-virtual {v0}, Lcom/google/android/picasasync/MetricsUtils$Metrics;->recycle()V

    .line 150
    return-void
.end method

.method public static incrementInBytes(J)V
    .registers 7
    .parameter "delta"

    .prologue
    .line 180
    sget-object v3, Lcom/google/android/picasasync/MetricsUtils;->sMetricsStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 181
    .local v2, stack:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/picasasync/MetricsUtils$Metrics;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 182
    .local v1, size:I
    if-lez v1, :cond_1b

    .line 183
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/MetricsUtils$Metrics;

    .line 184
    .local v0, metrics:Lcom/google/android/picasasync/MetricsUtils$Metrics;
    iget-wide v3, v0, Lcom/google/android/picasasync/MetricsUtils$Metrics;->inBytes:J

    add-long/2addr v3, p0

    iput-wide v3, v0, Lcom/google/android/picasasync/MetricsUtils$Metrics;->inBytes:J

    .line 186
    .end local v0           #metrics:Lcom/google/android/picasasync/MetricsUtils$Metrics;
    :cond_1b
    return-void
.end method

.method public static incrementOutBytes(J)V
    .registers 7
    .parameter "delta"

    .prologue
    .line 171
    sget-object v3, Lcom/google/android/picasasync/MetricsUtils;->sMetricsStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 172
    .local v2, stack:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/picasasync/MetricsUtils$Metrics;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 173
    .local v1, size:I
    if-lez v1, :cond_1b

    .line 174
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/MetricsUtils$Metrics;

    .line 175
    .local v0, metrics:Lcom/google/android/picasasync/MetricsUtils$Metrics;
    iget-wide v3, v0, Lcom/google/android/picasasync/MetricsUtils$Metrics;->outBytes:J

    add-long/2addr v3, p0

    iput-wide v3, v0, Lcom/google/android/picasasync/MetricsUtils$Metrics;->outBytes:J

    .line 177
    .end local v0           #metrics:Lcom/google/android/picasasync/MetricsUtils$Metrics;
    :cond_1b
    return-void
.end method

.method public static incrementQueryResultCount(I)V
    .registers 5
    .parameter "delta"

    .prologue
    .line 162
    sget-object v3, Lcom/google/android/picasasync/MetricsUtils;->sMetricsStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 163
    .local v2, stack:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/picasasync/MetricsUtils$Metrics;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 164
    .local v1, size:I
    if-lez v1, :cond_1b

    .line 165
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasasync/MetricsUtils$Metrics;

    .line 166
    .local v0, metrics:Lcom/google/android/picasasync/MetricsUtils$Metrics;
    iget v3, v0, Lcom/google/android/picasasync/MetricsUtils$Metrics;->queryResultCount:I

    add-int/2addr v3, p0

    iput v3, v0, Lcom/google/android/picasasync/MetricsUtils$Metrics;->queryResultCount:I

    .line 168
    .end local v0           #metrics:Lcom/google/android/picasasync/MetricsUtils$Metrics;
    :cond_1b
    return-void
.end method
