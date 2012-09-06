.class public Lcom/google/android/apps/plus/iu/MetricsUtils;
.super Ljava/lang/Object;
.source "MetricsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;
    }
.end annotation


# static fields
.field private static final LOG_DURATION_LIMIT:J

.field static sFreeMetrics:Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;

.field private static final sMetricsStack:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/plus/iu/MetricsUtils;->sFreeMetrics:Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;

    .line 34
    const-string v0, "picasasync.metrics.time"

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/iu/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/apps/plus/iu/MetricsUtils;->LOG_DURATION_LIMIT:J

    .line 37
    new-instance v0, Lcom/google/android/apps/plus/iu/MetricsUtils$1;

    invoke-direct {v0}, Lcom/google/android/apps/plus/iu/MetricsUtils$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/iu/MetricsUtils;->sMetricsStack:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static begin(Ljava/lang/String;)I
    .registers 3
    .parameter "name"

    .prologue
    .line 141
    sget-object v1, Lcom/google/android/apps/plus/iu/MetricsUtils;->sMetricsStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 142
    .local v0, stack:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;>;"
    invoke-static {p0}, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;->obtain(Ljava/lang/String;)Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1
.end method

.method public static end(I)V
    .registers 2
    .parameter "metricsId"

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-static {v0, p0, v0}, Lcom/google/android/apps/plus/iu/MetricsUtils;->endWithReport(Landroid/content/Context;ILjava/lang/String;)V

    .line 152
    return-void
.end method

.method public static endWithReport(Landroid/content/Context;ILjava/lang/String;)V
    .registers 16
    .parameter "context"
    .parameter "metricsId"
    .parameter "operationName"

    .prologue
    .line 163
    sget-object v0, Lcom/google/android/apps/plus/iu/MetricsUtils;->sMetricsStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 164
    .local v12, stack:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_10

    if-gtz p1, :cond_31

    .line 165
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size: %s, id: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_31
    :goto_31
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_81

    .line 170
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;

    .line 171
    .local v11, metrics:Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;
    const-string v0, "MetricsUtils"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 172
    const-string v0, "MetricsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WARNING: unclosed metrics: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_68
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7d

    .line 176
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;

    invoke-virtual {v0, v11}, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;->merge(Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;)V

    .line 178
    :cond_7d
    invoke-virtual {v11}, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;->recycle()V

    goto :goto_31

    .line 181
    .end local v11           #metrics:Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;
    :cond_81
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;

    .line 182
    .restart local v11       #metrics:Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v11, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;->endTimestamp:J

    .line 184
    sget-wide v0, Lcom/google/android/apps/plus/iu/MetricsUtils;->LOG_DURATION_LIMIT:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_b8

    iget-wide v0, v11, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;->endTimestamp:J

    iget-wide v2, v11, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;->startTimestamp:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/google/android/apps/plus/iu/MetricsUtils;->LOG_DURATION_LIMIT:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_b8

    .line 186
    const-string v0, "MetricsUtils"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 187
    const-string v0, "MetricsUtils"

    invoke-virtual {v11, p2}, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_b8
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_cd

    .line 192
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;

    invoke-virtual {v0, v11}, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;->merge(Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;)V

    .line 195
    :cond_cd
    if-eqz p0, :cond_e8

    if-eqz p2, :cond_e8

    iget v0, v11, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;->networkOpCount:I

    if-lez v0, :cond_e8

    .line 196
    iget-wide v0, v11, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;->endTimestamp:J

    iget-wide v2, v11, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;->startTimestamp:J

    sub-long v2, v0, v2

    iget-wide v4, v11, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;->networkOpDuration:J

    iget v6, v11, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;->networkOpCount:I

    iget-wide v7, v11, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;->outBytes:J

    iget-wide v9, v11, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;->inBytes:J

    move-object v0, p0

    move-object v1, p2

    invoke-static/range {v0 .. v10}, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->broadcastOperationReport(Landroid/content/Context;Ljava/lang/String;JJIJJ)V

    .line 203
    :cond_e8
    invoke-virtual {v11}, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;->recycle()V

    .line 204
    return-void
.end method

.method public static incrementInBytes(J)V
    .registers 7
    .parameter "delta"

    .prologue
    .line 234
    sget-object v3, Lcom/google/android/apps/plus/iu/MetricsUtils;->sMetricsStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 235
    .local v2, stack:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 236
    .local v1, size:I
    if-lez v1, :cond_1b

    .line 237
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;

    .line 238
    .local v0, metrics:Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;
    iget-wide v3, v0, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;->inBytes:J

    add-long/2addr v3, p0

    iput-wide v3, v0, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;->inBytes:J

    .line 240
    .end local v0           #metrics:Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;
    :cond_1b
    return-void
.end method

.method public static incrementNetworkOpCount(J)V
    .registers 7
    .parameter "delta"

    .prologue
    .line 252
    sget-object v3, Lcom/google/android/apps/plus/iu/MetricsUtils;->sMetricsStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 253
    .local v2, stack:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 254
    .local v1, size:I
    if-lez v1, :cond_1d

    .line 255
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;

    .line 256
    .local v0, metrics:Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;
    iget v3, v0, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;->networkOpCount:I

    int-to-long v3, v3

    add-long/2addr v3, p0

    long-to-int v3, v3

    iput v3, v0, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;->networkOpCount:I

    .line 258
    .end local v0           #metrics:Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;
    :cond_1d
    return-void
.end method

.method public static incrementNetworkOpDuration(J)V
    .registers 7
    .parameter "delta"

    .prologue
    .line 243
    sget-object v3, Lcom/google/android/apps/plus/iu/MetricsUtils;->sMetricsStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 244
    .local v2, stack:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 245
    .local v1, size:I
    if-lez v1, :cond_1b

    .line 246
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;

    .line 247
    .local v0, metrics:Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;
    iget-wide v3, v0, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;->networkOpDuration:J

    add-long/2addr v3, p0

    iput-wide v3, v0, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;->networkOpDuration:J

    .line 249
    .end local v0           #metrics:Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;
    :cond_1b
    return-void
.end method

.method public static incrementOutBytes(J)V
    .registers 7
    .parameter "delta"

    .prologue
    .line 225
    sget-object v3, Lcom/google/android/apps/plus/iu/MetricsUtils;->sMetricsStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 226
    .local v2, stack:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 227
    .local v1, size:I
    if-lez v1, :cond_1b

    .line 228
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;

    .line 229
    .local v0, metrics:Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;
    iget-wide v3, v0, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;->outBytes:J

    add-long/2addr v3, p0

    iput-wide v3, v0, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;->outBytes:J

    .line 231
    .end local v0           #metrics:Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;
    :cond_1b
    return-void
.end method

.method public static incrementQueryResultCount(I)V
    .registers 5
    .parameter "delta"

    .prologue
    .line 216
    sget-object v3, Lcom/google/android/apps/plus/iu/MetricsUtils;->sMetricsStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 217
    .local v2, stack:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 218
    .local v1, size:I
    if-lez v1, :cond_1b

    .line 219
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;

    .line 220
    .local v0, metrics:Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;
    iget v3, v0, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;->queryResultCount:I

    add-int/2addr v3, p0

    iput v3, v0, Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;->queryResultCount:I

    .line 222
    .end local v0           #metrics:Lcom/google/android/apps/plus/iu/MetricsUtils$Metrics;
    :cond_1b
    return-void
.end method
