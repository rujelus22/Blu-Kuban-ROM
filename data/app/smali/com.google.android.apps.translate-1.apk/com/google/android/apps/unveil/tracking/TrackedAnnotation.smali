.class public Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;
.super Lcom/google/android/apps/unveil/results/BasicAnnotation;
.source "TrackedAnnotation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/tracking/TrackedAnnotation$TimestampedPosition;
    }
.end annotation


# static fields
.field private static final MAX_POSITION_HISTORY:I = 0x64

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final positions:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/apps/unveil/tracking/TrackedAnnotation$TimestampedPosition;",
            ">;"
        }
    .end annotation
.end field

.field private previewFrameTimestamp:J

.field private trackedObject:Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/unveil/results/ResultItem;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/results/BasicAnnotation;-><init>(Lcom/google/android/apps/unveil/results/ResultItem;)V

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->positions:Ljava/util/LinkedList;

    .line 48
    return-void
.end method


# virtual methods
.method protected getDebugText()Ljava/util/Vector;
    .registers 5
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
    .line 94
    invoke-super {p0}, Lcom/google/android/apps/unveil/results/BasicAnnotation;->getDebugText()Ljava/util/Vector;

    move-result-object v0

    .line 95
    .local v0, lines:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last reqId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->previewFrameTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 96
    return-object v0
.end method

.method public declared-synchronized getLastKnownPositionInFrame()Landroid/graphics/RectF;
    .registers 3

    .prologue
    .line 108
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->trackedObject:Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->positions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_21

    move-result v0

    if-eqz v0, :cond_10

    .line 109
    :cond_d
    const/4 v0, 0x0

    .line 112
    :goto_e
    monitor-exit p0

    return-object v0

    :cond_10
    :try_start_10
    new-instance v1, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->positions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation$TimestampedPosition;

    iget-object v0, v0, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation$TimestampedPosition;->position:Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_21

    move-object v0, v1

    goto :goto_e

    .line 108
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getPositionInFrameAtTime(J)Landroid/graphics/RectF;
    .registers 9
    .parameter "time"

    .prologue
    .line 155
    iget-object v3, p0, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->positions:Ljava/util/LinkedList;

    monitor-enter v3

    .line 156
    :try_start_3
    iget-object v2, p0, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->positions:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation$TimestampedPosition;

    .line 157
    .local v1, positionAtTime:Lcom/google/android/apps/unveil/tracking/TrackedAnnotation$TimestampedPosition;
    iget-wide v4, v1, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation$TimestampedPosition;->timestamp:J

    cmp-long v2, v4, p1

    if-gtz v2, :cond_9

    .line 158
    new-instance v2, Landroid/graphics/RectF;

    iget-object v4, v1, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation$TimestampedPosition;->position:Landroid/graphics/RectF;

    invoke-direct {v2, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    monitor-exit v3

    .line 162
    .end local v1           #positionAtTime:Lcom/google/android/apps/unveil/tracking/TrackedAnnotation$TimestampedPosition;
    :goto_23
    return-object v2

    .line 161
    :cond_24
    monitor-exit v3

    .line 162
    const/4 v2, 0x0

    goto :goto_23

    .line 161
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_27
    move-exception v2

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v2
.end method

.method public getPreviewFrameTimestamp()J
    .registers 3

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->previewFrameTimestamp:J

    return-wide v0
.end method

.method public declared-synchronized getTrackedObject()Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;
    .registers 2

    .prologue
    .line 100
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->trackedObject:Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markPositionAtTime(J)V
    .registers 7
    .parameter "timestamp"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->trackedObject:Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;

    if-nez v0, :cond_5

    .line 152
    :goto_4
    return-void

    .line 144
    :cond_5
    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->positions:Ljava/util/LinkedList;

    monitor-enter v1

    .line 145
    :try_start_8
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->positions:Ljava/util/LinkedList;

    new-instance v2, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation$TimestampedPosition;

    iget-object v3, p0, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->trackedObject:Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->getTrackedPositionInPreviewFrame()Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation$TimestampedPosition;-><init>(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;JLandroid/graphics/RectF;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 148
    :goto_18
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->positions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_2b

    .line 149
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->positions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_18

    .line 151
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_28

    throw v0

    :cond_2b
    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_28

    goto :goto_4
.end method

.method public declared-synchronized setTrackedObject(Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;)V
    .registers 3
    .parameter "trackedObject"

    .prologue
    .line 104
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->trackedObject:Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 105
    monitor-exit p0

    return-void

    .line 104
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toTrackedResult(J)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;
    .registers 7
    .parameter "queryTime"

    .prologue
    .line 120
    invoke-static {}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;->newBuilder()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    move-result-object v1

    .line 121
    .local v1, builder:Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->getResultId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->setResultId(Ljava/lang/String;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    .line 123
    iget-object v3, p0, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->trackedObject:Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;

    if-eqz v3, :cond_38

    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->getPositionInFrameAtTime(J)Landroid/graphics/RectF;

    move-result-object v2

    .line 126
    .local v2, rect:Landroid/graphics/RectF;
    if-eqz v2, :cond_38

    .line 127
    invoke-static {}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox;->newBuilder()Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    move-result-object v0

    .line 128
    .local v0, boundingBox:Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;
    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->setX(I)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    .line 129
    iget v3, v2, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->setY(I)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    .line 130
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->setWidth(I)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    .line 131
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;->setHeight(I)Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;

    .line 133
    invoke-virtual {v1, v0}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->setBoundingBox(Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;

    .line 137
    .end local v0           #boundingBox:Lcom/google/goggles/BoundingBoxProtos$BoundingBox$Builder;
    .end local v2           #rect:Landroid/graphics/RectF;
    :cond_38
    invoke-virtual {v1}, Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult$Builder;->build()Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    move-result-object v3

    return-object v3
.end method

.method public updateResultItem(Lcom/google/android/apps/unveil/results/ResultItem;)V
    .registers 15
    .parameter "result"

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/results/ResultItem;->getAnnotationResult()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v0

    .line 55
    .local v0, annotationResult:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 57
    .local v1, nowTime:J
    const-wide/16 v3, 0x0

    .line 58
    .local v3, previewFrameTimestamp:J
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasBoundingBoxRequestId()Z

    move-result v5

    if-eqz v5, :cond_90

    .line 59
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasBoundingBox()Z

    move-result v5

    if-nez v5, :cond_20

    .line 60
    sget-object v5, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v6, "AnnotationResult has previewFrameTimestamp but no boundingBox!"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :cond_20
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getBoundingBoxRequestId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/unveil/protocol/nonstop/RequestIds;->decodeBaseRequestId(Ljava/lang/String;)J

    move-result-wide v3

    .line 65
    sget-object v5, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v6, "AnnotationResult [%s] has timestamp [%s] which is %2.2fs old."

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getResultId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getBoundingBoxRequestId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sub-long v9, v1, v3

    long-to-float v9, v9

    const/high16 v10, 0x447a

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    :cond_4d
    :goto_4d
    iget-wide v5, p0, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->previewFrameTimestamp:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_a1

    .line 76
    sget-object v5, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v6, "previewFrameTimestamp regression for AnnotationResult [%s], aborting update! %d to %d (%2.2fs older than most recent, %2.2fs older than now)"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->getResultId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-wide v9, p0, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->previewFrameTimestamp:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-wide v9, p0, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->previewFrameTimestamp:J

    sub-long/2addr v9, v3

    long-to-float v9, v9

    const/high16 v10, 0x447a

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sub-long v9, v1, v3

    long-to-float v9, v9

    const/high16 v10, 0x447a

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    :goto_8f
    return-void

    .line 70
    :cond_90
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasBoundingBox()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 71
    sget-object v5, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v6, "AnnotationResult has boundingBox but no previewFrameTimestamp!"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4d

    .line 82
    :cond_a1
    sget-object v5, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v6, "Updating with new ResultItem @ %f: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    long-to-double v9, v9

    const-wide v11, 0x408f400000000000L

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/results/ResultItem;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-super {p0, p1}, Lcom/google/android/apps/unveil/results/BasicAnnotation;->updateResultItem(Lcom/google/android/apps/unveil/results/ResultItem;)V

    .line 85
    iput-wide v3, p0, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->previewFrameTimestamp:J

    goto :goto_8f
.end method
