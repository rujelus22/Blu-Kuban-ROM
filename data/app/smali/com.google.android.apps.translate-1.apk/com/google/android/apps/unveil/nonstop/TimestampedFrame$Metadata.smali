.class public Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;
.super Ljava/lang/Object;
.source "TimestampedFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Metadata"
.end annotation


# instance fields
.field private jpegCreatedMillis:J

.field private pickedForQueryMillis:J

.field private querySentMillis:J

.field private queryStartMillis:J

.field private responseReceivedMillis:J

.field public final results:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/unveil/results/ResultItem;",
            ">;"
        }
    .end annotation
.end field

.field private final timestamp:J


# direct methods
.method public constructor <init>(J)V
    .registers 6
    .parameter "timestamp"

    .prologue
    const-wide/16 v1, -0x1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->results:Ljava/util/Map;

    .line 75
    iput-wide p1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->timestamp:J

    .line 76
    iput-wide v1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->pickedForQueryMillis:J

    .line 77
    iput-wide v1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->jpegCreatedMillis:J

    .line 78
    iput-wide v1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->queryStartMillis:J

    .line 79
    iput-wide v1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->querySentMillis:J

    .line 80
    iput-wide v1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->responseReceivedMillis:J

    .line 81
    return-void
.end method

.method private getPickedForQueryTime()J
    .registers 5

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->pickedForQueryMillis:J

    iget-wide v2, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->timestamp:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getServerResponseTime()J
    .registers 5

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->responseReceivedMillis:J

    iget-wide v2, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->timestamp:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getUploadFinishTime()J
    .registers 5

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->querySentMillis:J

    iget-wide v2, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->timestamp:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getUploadStartTime()J
    .registers 5

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->queryStartMillis:J

    iget-wide v2, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->timestamp:J

    sub-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public addResult(Lcom/google/android/apps/unveil/results/ResultItem;)Z
    .registers 7
    .parameter "result"

    .prologue
    .line 105
    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->results:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    .line 106
    .local v0, isFirstResult:Z
    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->results:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/results/ResultItem;->getAnnotationResult()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getResultId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-wide v1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->responseReceivedMillis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_21

    .line 108
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->responseReceivedMillis:J

    .line 110
    :cond_21
    return v0
.end method

.method public getDebugText()Ljava/util/Vector;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 163
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 164
    .local v0, lines:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    iget-wide v1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->querySentMillis:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_2d

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "up: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->getUploadFinishTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_2d
    iget-wide v1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->responseReceivedMillis:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_6f

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "s+r: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->getServerResponseTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#res: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->results:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_6f
    return-object v0
.end method

.method public getEncodeFinishedTime()J
    .registers 5

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->jpegCreatedMillis:J

    iget-wide v2, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->timestamp:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getQuerySentMillis()J
    .registers 3

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->querySentMillis:J

    return-wide v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 191
    iget-wide v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->timestamp:J

    return-wide v0
.end method

.method public getTimingString()Ljava/lang/String;
    .registers 11

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 176
    const-string v1, "%4d\t%4d\t%4d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->getPickedForQueryTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->getEncodeFinishedTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->getUploadStartTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, timingString:Ljava/lang/String;
    iget-wide v1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->querySentMillis:J

    cmp-long v1, v1, v8

    if-eqz v1, :cond_55

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t%4d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->getUploadFinishTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_55
    iget-wide v1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->responseReceivedMillis:J

    cmp-long v1, v1, v8

    if-eqz v1, :cond_7e

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t%4d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->getServerResponseTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    :cond_7e
    return-object v0
.end method

.method public onCreatedCachedJpeg()V
    .registers 3

    .prologue
    .line 138
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->jpegCreatedMillis:J

    .line 139
    return-void
.end method

.method public onPickedForQuery()V
    .registers 5

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->pickedForQueryMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    .line 115
    invoke-static {}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "onPickedForQuery called multiple times."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    :goto_14
    return-void

    .line 117
    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->pickedForQueryMillis:J

    goto :goto_14
.end method

.method public onQuerySent()V
    .registers 5

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->querySentMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    .line 123
    invoke-static {}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "querySent called multiple times."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :goto_14
    return-void

    .line 125
    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->querySentMillis:J

    goto :goto_14
.end method

.method public onQueryStartSending()V
    .registers 5

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->queryStartMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    .line 131
    invoke-static {}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "queryStart called multiple times."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    :goto_14
    return-void

    .line 133
    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;->queryStartMillis:J

    goto :goto_14
.end method
