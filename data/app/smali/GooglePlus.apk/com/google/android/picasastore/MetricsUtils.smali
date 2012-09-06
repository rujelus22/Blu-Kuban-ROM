.class public Lcom/google/android/picasastore/MetricsUtils;
.super Ljava/lang/Object;
.source "MetricsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasastore/MetricsUtils$Metrics;
    }
.end annotation


# static fields
.field private static final LOG_DURATION_LIMIT:J

.field static sFreeMetrics:Lcom/google/android/picasastore/MetricsUtils$Metrics;

.field private static final sMetricsStack:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/picasastore/MetricsUtils$Metrics;",
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

    sput-object v0, Lcom/google/android/picasastore/MetricsUtils;->sFreeMetrics:Lcom/google/android/picasastore/MetricsUtils$Metrics;

    .line 45
    const-string v0, "picasasync.metrics.time"

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/google/android/picasastore/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/picasastore/MetricsUtils;->LOG_DURATION_LIMIT:J

    .line 48
    new-instance v0, Lcom/google/android/picasastore/MetricsUtils$1;

    invoke-direct {v0}, Lcom/google/android/picasastore/MetricsUtils$1;-><init>()V

    sput-object v0, Lcom/google/android/picasastore/MetricsUtils;->sMetricsStack:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static begin(Ljava/lang/String;)I
    .registers 3
    .parameter "name"

    .prologue
    .line 152
    sget-object v1, Lcom/google/android/picasastore/MetricsUtils;->sMetricsStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 153
    .local v0, stack:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/picasastore/MetricsUtils$Metrics;>;"
    invoke-static {p0}, Lcom/google/android/picasastore/MetricsUtils$Metrics;->obtain(Ljava/lang/String;)Lcom/google/android/picasastore/MetricsUtils$Metrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1
.end method

.method public static end(I)V
    .registers 2
    .parameter "metricsId"

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/picasastore/MetricsUtils;->endWithReport(ILjava/lang/String;)V

    .line 163
    return-void
.end method

.method public static endWithReport(ILjava/lang/String;)V
    .registers 14
    .parameter "metricsId"
    .parameter "operationName"

    .prologue
    .line 174
    sget-object v0, Lcom/google/android/picasastore/MetricsUtils;->sMetricsStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 175
    .local v11, stack:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/picasastore/MetricsUtils$Metrics;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p0, v0, :cond_10

    if-gtz p0, :cond_31

    .line 176
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size: %s, id: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_31
    :goto_31
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_78

    .line 181
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/picasastore/MetricsUtils$Metrics;

    .line 182
    .local v10, metrics:Lcom/google/android/picasastore/MetricsUtils$Metrics;
    const-string v0, "MetricsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WARNING: unclosed metrics: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_74

    .line 185
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasastore/MetricsUtils$Metrics;

    invoke-virtual {v0, v10}, Lcom/google/android/picasastore/MetricsUtils$Metrics;->merge(Lcom/google/android/picasastore/MetricsUtils$Metrics;)V

    .line 187
    :cond_74
    invoke-virtual {v10}, Lcom/google/android/picasastore/MetricsUtils$Metrics;->recycle()V

    goto :goto_31

    .line 190
    .end local v10           #metrics:Lcom/google/android/picasastore/MetricsUtils$Metrics;
    :cond_78
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/picasastore/MetricsUtils$Metrics;

    .line 191
    .restart local v10       #metrics:Lcom/google/android/picasastore/MetricsUtils$Metrics;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v10, Lcom/google/android/picasastore/MetricsUtils$Metrics;->endTimestamp:J

    .line 193
    const-string v0, "MetricsUtils"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_af

    sget-wide v0, Lcom/google/android/picasastore/MetricsUtils;->LOG_DURATION_LIMIT:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_af

    iget-wide v0, v10, Lcom/google/android/picasastore/MetricsUtils$Metrics;->endTimestamp:J

    iget-wide v2, v10, Lcom/google/android/picasastore/MetricsUtils$Metrics;->startTimestamp:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/google/android/picasastore/MetricsUtils;->LOG_DURATION_LIMIT:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_af

    .line 195
    const-string v0, "MetricsUtils"

    invoke-virtual {v10, p1}, Lcom/google/android/picasastore/MetricsUtils$Metrics;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_af
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c4

    .line 199
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasastore/MetricsUtils$Metrics;

    invoke-virtual {v0, v10}, Lcom/google/android/picasastore/MetricsUtils$Metrics;->merge(Lcom/google/android/picasastore/MetricsUtils$Metrics;)V

    .line 202
    :cond_c4
    if-eqz p1, :cond_dc

    iget v0, v10, Lcom/google/android/picasastore/MetricsUtils$Metrics;->networkOpCount:I

    if-lez v0, :cond_dc

    .line 203
    iget-wide v0, v10, Lcom/google/android/picasastore/MetricsUtils$Metrics;->endTimestamp:J

    iget-wide v2, v10, Lcom/google/android/picasastore/MetricsUtils$Metrics;->startTimestamp:J

    sub-long v1, v0, v2

    iget-wide v3, v10, Lcom/google/android/picasastore/MetricsUtils$Metrics;->networkOpDuration:J

    iget v5, v10, Lcom/google/android/picasastore/MetricsUtils$Metrics;->networkOpCount:I

    iget-wide v6, v10, Lcom/google/android/picasastore/MetricsUtils$Metrics;->outBytes:J

    iget-wide v8, v10, Lcom/google/android/picasastore/MetricsUtils$Metrics;->inBytes:J

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lcom/google/android/picasastore/PicasaStoreFacade;->broadcastOperationReport(Ljava/lang/String;JJIJJ)V

    .line 210
    :cond_dc
    invoke-virtual {v10}, Lcom/google/android/picasastore/MetricsUtils$Metrics;->recycle()V

    .line 211
    return-void
.end method

.method public static incrementInBytes(J)V
    .registers 7
    .parameter "delta"

    .prologue
    .line 241
    sget-object v3, Lcom/google/android/picasastore/MetricsUtils;->sMetricsStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 242
    .local v2, stack:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/picasastore/MetricsUtils$Metrics;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 243
    .local v1, size:I
    if-lez v1, :cond_1b

    .line 244
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasastore/MetricsUtils$Metrics;

    .line 245
    .local v0, metrics:Lcom/google/android/picasastore/MetricsUtils$Metrics;
    iget-wide v3, v0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->inBytes:J

    add-long/2addr v3, p0

    iput-wide v3, v0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->inBytes:J

    .line 247
    .end local v0           #metrics:Lcom/google/android/picasastore/MetricsUtils$Metrics;
    :cond_1b
    return-void
.end method

.method public static incrementNetworkOpCount(J)V
    .registers 7
    .parameter "delta"

    .prologue
    .line 259
    sget-object v3, Lcom/google/android/picasastore/MetricsUtils;->sMetricsStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 260
    .local v2, stack:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/picasastore/MetricsUtils$Metrics;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 261
    .local v1, size:I
    if-lez v1, :cond_1d

    .line 262
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasastore/MetricsUtils$Metrics;

    .line 263
    .local v0, metrics:Lcom/google/android/picasastore/MetricsUtils$Metrics;
    iget v3, v0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->networkOpCount:I

    int-to-long v3, v3

    add-long/2addr v3, p0

    long-to-int v3, v3

    iput v3, v0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->networkOpCount:I

    .line 265
    .end local v0           #metrics:Lcom/google/android/picasastore/MetricsUtils$Metrics;
    :cond_1d
    return-void
.end method

.method public static incrementNetworkOpDuration(J)V
    .registers 7
    .parameter "delta"

    .prologue
    .line 250
    sget-object v3, Lcom/google/android/picasastore/MetricsUtils;->sMetricsStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 251
    .local v2, stack:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/picasastore/MetricsUtils$Metrics;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 252
    .local v1, size:I
    if-lez v1, :cond_1b

    .line 253
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasastore/MetricsUtils$Metrics;

    .line 254
    .local v0, metrics:Lcom/google/android/picasastore/MetricsUtils$Metrics;
    iget-wide v3, v0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->networkOpDuration:J

    add-long/2addr v3, p0

    iput-wide v3, v0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->networkOpDuration:J

    .line 256
    .end local v0           #metrics:Lcom/google/android/picasastore/MetricsUtils$Metrics;
    :cond_1b
    return-void
.end method

.method public static incrementNetworkOpDurationAndCount(J)V
    .registers 7
    .parameter "delta"

    .prologue
    .line 272
    sget-object v3, Lcom/google/android/picasastore/MetricsUtils;->sMetricsStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 273
    .local v2, stack:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/picasastore/MetricsUtils$Metrics;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 274
    .local v1, size:I
    if-lez v1, :cond_21

    .line 275
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasastore/MetricsUtils$Metrics;

    .line 276
    .local v0, metrics:Lcom/google/android/picasastore/MetricsUtils$Metrics;
    iget-wide v3, v0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->networkOpDuration:J

    add-long/2addr v3, p0

    iput-wide v3, v0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->networkOpDuration:J

    .line 277
    iget v3, v0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->networkOpCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->networkOpCount:I

    .line 279
    .end local v0           #metrics:Lcom/google/android/picasastore/MetricsUtils$Metrics;
    :cond_21
    return-void
.end method

.method public static incrementOutBytes(J)V
    .registers 7
    .parameter "delta"

    .prologue
    .line 232
    sget-object v3, Lcom/google/android/picasastore/MetricsUtils;->sMetricsStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 233
    .local v2, stack:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/picasastore/MetricsUtils$Metrics;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 234
    .local v1, size:I
    if-lez v1, :cond_1b

    .line 235
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasastore/MetricsUtils$Metrics;

    .line 236
    .local v0, metrics:Lcom/google/android/picasastore/MetricsUtils$Metrics;
    iget-wide v3, v0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->outBytes:J

    add-long/2addr v3, p0

    iput-wide v3, v0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->outBytes:J

    .line 238
    .end local v0           #metrics:Lcom/google/android/picasastore/MetricsUtils$Metrics;
    :cond_1b
    return-void
.end method

.method public static incrementQueryResultCount(I)V
    .registers 5
    .parameter "delta"

    .prologue
    .line 223
    sget-object v3, Lcom/google/android/picasastore/MetricsUtils;->sMetricsStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 224
    .local v2, stack:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/picasastore/MetricsUtils$Metrics;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 225
    .local v1, size:I
    if-lez v1, :cond_1b

    .line 226
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/picasastore/MetricsUtils$Metrics;

    .line 227
    .local v0, metrics:Lcom/google/android/picasastore/MetricsUtils$Metrics;
    iget v3, v0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->queryResultCount:I

    add-int/2addr v3, p0

    iput v3, v0, Lcom/google/android/picasastore/MetricsUtils$Metrics;->queryResultCount:I

    .line 229
    .end local v0           #metrics:Lcom/google/android/picasastore/MetricsUtils$Metrics;
    :cond_1b
    return-void
.end method
