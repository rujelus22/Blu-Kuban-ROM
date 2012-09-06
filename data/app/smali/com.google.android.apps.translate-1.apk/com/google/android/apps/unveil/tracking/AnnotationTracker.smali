.class public Lcom/google/android/apps/unveil/tracking/AnnotationTracker;
.super Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
.source "AnnotationTracker.java"

# interfaces
.implements Lcom/google/android/apps/unveil/ui/GlOverlay$RenderCallback;
.implements Lcom/google/android/apps/unveil/protocol/nonstop/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/tracking/AnnotationTracker$AnnotationEventListener;
    }
.end annotation


# static fields
.field private static final CORRELATION_THRESHOLD_FOR_UPDATE:F = 0.75f

.field private static final PIXEL_EPSILON:F = 0.001f


# instance fields
.field private final allAnnotationsFromSession:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/unveil/results/BasicAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private final allTrackedAnnotationsFromSession:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private final currentRenderedAnnotations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private eventListener:Lcom/google/android/apps/unveil/tracking/AnnotationTracker$AnnotationEventListener;

.field private final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

.field private objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

.field private final renderer:Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/tracking/AnnotationRenderer",
            "<*>;"
        }
    .end annotation
.end field

.field private final shouldAllowServerPositionUpdates:Z

.field private final shouldRemoveMissingResults:Z

.field private final shouldTrackRepeatedResults:Z

.field private final trackedAnnotations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private final visionGyroProcessor:Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;ZZZLcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;)V
    .registers 7
    .parameter
    .parameter "shouldRemoveMissingResults"
    .parameter "shouldTrackRepeatedResults"
    .parameter "shouldAllowServerPositionUpdates"
    .parameter "visionGyroProcessor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/tracking/AnnotationRenderer",
            "<*>;ZZZ",
            "Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, renderer:Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;,"Lcom/google/android/apps/unveil/tracking/AnnotationRenderer<*>;"
    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;-><init>()V

    .line 41
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 103
    iput-object p1, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->renderer:Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;

    .line 104
    iput-boolean p2, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->shouldRemoveMissingResults:Z

    .line 105
    iput-boolean p3, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->shouldTrackRepeatedResults:Z

    .line 106
    iput-boolean p4, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->shouldAllowServerPositionUpdates:Z

    .line 107
    iput-object p5, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->visionGyroProcessor:Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->trackedAnnotations:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->currentRenderedAnnotations:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->allTrackedAnnotationsFromSession:Ljava/util/HashMap;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->allAnnotationsFromSession:Ljava/util/HashMap;

    .line 114
    return-void
.end method

.method private addToTrackedList(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;Landroid/graphics/RectF;Lcom/google/android/apps/unveil/env/DownsampledImage;)V
    .registers 9
    .parameter "trackedAnnotation"
    .parameter "position"
    .parameter "downsampledImage"

    .prologue
    .line 196
    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    invoke-virtual {p3}, Lcom/google/android/apps/unveil/env/DownsampledImage;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p3}, Lcom/google/android/apps/unveil/env/DownsampledImage;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, p2, v2, v3, v4}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->trackObject(Landroid/graphics/RectF;J[B)Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;

    move-result-object v0

    .line 199
    .local v0, trackedObject:Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;
    invoke-virtual {p3}, Lcom/google/android/apps/unveil/env/DownsampledImage;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->registerAppearance(Landroid/graphics/RectF;[B)V

    .line 200
    invoke-virtual {p1, v0}, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->setTrackedObject(Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;)V

    .line 201
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->getLastFrameTime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->markPositionAtTime(J)V

    .line 203
    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->trackedAnnotations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->renderer:Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;

    if-eqz v1, :cond_2d

    .line 206
    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->renderer:Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->addAnnotation(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;)V

    .line 209
    :cond_2d
    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->eventListener:Lcom/google/android/apps/unveil/tracking/AnnotationTracker$AnnotationEventListener;

    if-eqz v1, :cond_36

    .line 210
    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->eventListener:Lcom/google/android/apps/unveil/tracking/AnnotationTracker$AnnotationEventListener;

    invoke-interface {v1, p1}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker$AnnotationEventListener;->onTrackingStarted(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;)V

    .line 212
    :cond_36
    return-void
.end method

.method private createAnnotation(Ljava/lang/String;Lcom/google/android/apps/unveil/results/ResultItem;Lcom/google/android/apps/unveil/env/DownsampledImage;Landroid/graphics/RectF;)V
    .registers 9
    .parameter "resultId"
    .parameter "resultItem"
    .parameter "downsampledImage"
    .parameter "position"

    .prologue
    .line 299
    if-eqz p3, :cond_24

    if-eqz p4, :cond_24

    const/4 v1, 0x1

    .line 300
    .local v1, shouldTrack:Z
    :goto_5
    if-eqz v1, :cond_26

    .line 301
    new-instance v2, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;

    invoke-direct {v2, p2}, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;-><init>(Lcom/google/android/apps/unveil/results/ResultItem;)V

    .line 302
    .local v2, trackedAnnotation:Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;
    invoke-direct {p0, v2, p4, p3}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->addToTrackedList(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;Landroid/graphics/RectF;Lcom/google/android/apps/unveil/env/DownsampledImage;)V

    .line 303
    move-object v0, v2

    .line 304
    .local v0, annot:Lcom/google/android/apps/unveil/results/BasicAnnotation;
    iget-object v3, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->allTrackedAnnotationsFromSession:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .end local v2           #trackedAnnotation:Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;
    :goto_15
    iget-object v3, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->allAnnotationsFromSession:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v3, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->eventListener:Lcom/google/android/apps/unveil/tracking/AnnotationTracker$AnnotationEventListener;

    if-eqz v3, :cond_23

    .line 314
    iget-object v3, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->eventListener:Lcom/google/android/apps/unveil/tracking/AnnotationTracker$AnnotationEventListener;

    invoke-interface {v3, v0, v1}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker$AnnotationEventListener;->onNewResultAppeared(Lcom/google/android/apps/unveil/results/BasicAnnotation;Z)V

    .line 316
    :cond_23
    return-void

    .line 299
    .end local v0           #annot:Lcom/google/android/apps/unveil/results/BasicAnnotation;
    .end local v1           #shouldTrack:Z
    :cond_24
    const/4 v1, 0x0

    goto :goto_5

    .line 306
    .restart local v1       #shouldTrack:Z
    :cond_26
    new-instance v0, Lcom/google/android/apps/unveil/results/BasicAnnotation;

    invoke-direct {v0, p2}, Lcom/google/android/apps/unveil/results/BasicAnnotation;-><init>(Lcom/google/android/apps/unveil/results/ResultItem;)V

    .restart local v0       #annot:Lcom/google/android/apps/unveil/results/BasicAnnotation;
    goto :goto_15
.end method

.method private maybeInitObjectTracker(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V
    .registers 5
    .parameter "frame"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    if-nez v0, :cond_19

    .line 404
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->clearTrackedAnnotations()V

    .line 405
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getDownsampledWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getDownsampledHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getDownsampleFactor()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->getInstance(III)Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    .line 409
    :cond_19
    return-void
.end method

.method private maybeReleaseObjectTracker()V
    .registers 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    if-eqz v0, :cond_c

    .line 413
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->release()V

    .line 414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    .line 416
    :cond_c
    return-void
.end method

.method private maybeUpdateWithServerPosition(Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;Landroid/graphics/RectF;Lcom/google/android/apps/unveil/env/DownsampledImage;)Z
    .registers 12
    .parameter "object"
    .parameter "position"
    .parameter "downsampledImage"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 380
    invoke-virtual {p3}, Lcom/google/android/apps/unveil/env/DownsampledImage;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->getLastExternalPositionTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_f

    .line 399
    :cond_e
    :goto_e
    return v2

    .line 391
    :cond_f
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->getTrackedPositionInPreviewFrame()Landroid/graphics/RectF;

    move-result-object v1

    .line 392
    .local v1, trackedPos:Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_48

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_48

    move v0, v3

    .line 394
    .local v0, strictlyLarger:Z
    :goto_2c
    if-nez v0, :cond_38

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->getCurrentCorrelation()F

    move-result v4

    const/high16 v5, 0x3f40

    cmpg-float v4, v4, v5

    if-gez v4, :cond_e

    .line 395
    :cond_38
    invoke-virtual {p3}, Lcom/google/android/apps/unveil/env/DownsampledImage;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->registerAppearance(Landroid/graphics/RectF;[B)V

    .line 396
    invoke-virtual {p3}, Lcom/google/android/apps/unveil/env/DownsampledImage;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {p1, p2, v4, v5}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->setExternalPosition(Landroid/graphics/RectF;J)V

    move v2, v3

    .line 397
    goto :goto_e

    .end local v0           #strictlyLarger:Z
    :cond_48
    move v0, v2

    .line 392
    goto :goto_2c
.end method

.method private onResult(Ljava/lang/String;Lcom/google/android/apps/unveil/results/ResultItem;Lcom/google/android/apps/unveil/env/DownsampledImage;)V
    .registers 12
    .parameter "resultId"
    .parameter "resultItem"
    .parameter "downsampledImage"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const v6, 0x3a83126f

    .line 271
    if-nez p3, :cond_12

    .line 272
    iget-object v2, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "No frame for result %s!"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    :cond_12
    invoke-virtual {p2}, Lcom/google/android/apps/unveil/results/ResultItem;->getAnnotationResult()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->hasBoundingBoxRequestId()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 276
    iget-object v2, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "No bounding box resultItem: %s"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/android/apps/unveil/results/ResultItem;->getAnnotationResult()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    :cond_2f
    invoke-virtual {p2}, Lcom/google/android/apps/unveil/results/ResultItem;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v1

    .line 280
    .local v1, serverBox:Landroid/graphics/Rect;
    if-eqz v1, :cond_5c

    new-instance v0, Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v6

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 283
    .local v0, position:Landroid/graphics/RectF;
    :goto_48
    iget-object v2, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->allAnnotationsFromSession:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 284
    iget-object v2, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->allTrackedAnnotationsFromSession:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 285
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->updateTrackedAnnotation(Ljava/lang/String;Lcom/google/android/apps/unveil/results/ResultItem;Lcom/google/android/apps/unveil/env/DownsampledImage;Landroid/graphics/RectF;)V

    .line 292
    :goto_5b
    return-void

    .line 280
    .end local v0           #position:Landroid/graphics/RectF;
    :cond_5c
    const/4 v0, 0x0

    goto :goto_48

    .line 287
    .restart local v0       #position:Landroid/graphics/RectF;
    :cond_5e
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->updateBasicAnnotation(Ljava/lang/String;Lcom/google/android/apps/unveil/results/ResultItem;)V

    goto :goto_5b

    .line 290
    :cond_62
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->createAnnotation(Ljava/lang/String;Lcom/google/android/apps/unveil/results/ResultItem;Lcom/google/android/apps/unveil/env/DownsampledImage;Landroid/graphics/RectF;)V

    goto :goto_5b
.end method

.method private declared-synchronized onResults(Ljava/util/List;)V
    .registers 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/apps/unveil/results/ResultItem;",
            "Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, results:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Lcom/google/android/apps/unveil/results/ResultItem;Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;>;>;"
    const/4 v9, 0x0

    .line 219
    monitor-enter p0

    :try_start_2
    iget-object v8, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    if-nez v8, :cond_12

    .line 220
    iget-object v8, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v9, "Results returned with no ObjectTracker initialized!"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_56

    .line 262
    :cond_10
    monitor-exit p0

    return-void

    .line 226
    :cond_12
    :try_start_12
    iget-boolean v8, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->shouldRemoveMissingResults:Z

    if-eqz v8, :cond_59

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v7, serverAnnotations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/unveil/results/BasicAnnotation;>;"
    :goto_1b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 230
    .local v4, result:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/apps/unveil/results/ResultItem;Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;>;"
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/apps/unveil/results/ResultItem;

    .line 231
    .local v6, resultItem:Lcom/google/android/apps/unveil/results/ResultItem;
    invoke-virtual {v6}, Lcom/google/android/apps/unveil/results/ResultItem;->getAnnotationResult()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;->getResultId()Ljava/lang/String;

    move-result-object v5

    .line 233
    .local v5, resultId:Ljava/lang/String;
    iget-object v8, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v8, :cond_5b

    iget-object v8, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;

    invoke-virtual {v8}, Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;->getDownsampledImage()Lcom/google/android/apps/unveil/env/DownsampledImage;

    move-result-object v3

    .line 235
    .local v3, image:Lcom/google/android/apps/unveil/env/DownsampledImage;
    :goto_43
    invoke-direct {p0, v5, v6, v3}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->onResult(Ljava/lang/String;Lcom/google/android/apps/unveil/results/ResultItem;Lcom/google/android/apps/unveil/env/DownsampledImage;)V

    .line 237
    if-eqz v7, :cond_1f

    .line 238
    iget-object v8, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->allAnnotationsFromSession:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/results/BasicAnnotation;

    .line 239
    .local v0, annotation:Lcom/google/android/apps/unveil/results/BasicAnnotation;
    if-eqz v0, :cond_1f

    .line 240
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_55
    .catchall {:try_start_12 .. :try_end_55} :catchall_56

    goto :goto_1f

    .line 219
    .end local v0           #annotation:Lcom/google/android/apps/unveil/results/BasicAnnotation;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #image:Lcom/google/android/apps/unveil/env/DownsampledImage;
    .end local v4           #result:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/apps/unveil/results/ResultItem;Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;>;"
    .end local v5           #resultId:Ljava/lang/String;
    .end local v6           #resultItem:Lcom/google/android/apps/unveil/results/ResultItem;
    .end local v7           #serverAnnotations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/unveil/results/BasicAnnotation;>;"
    :catchall_56
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_59
    move-object v7, v9

    .line 226
    goto :goto_1b

    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #result:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/apps/unveil/results/ResultItem;Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;>;"
    .restart local v5       #resultId:Ljava/lang/String;
    .restart local v6       #resultItem:Lcom/google/android/apps/unveil/results/ResultItem;
    .restart local v7       #serverAnnotations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/unveil/results/BasicAnnotation;>;"
    :cond_5b
    move-object v3, v9

    .line 233
    goto :goto_43

    .line 247
    .end local v4           #result:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/google/android/apps/unveil/results/ResultItem;Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;>;"
    .end local v5           #resultId:Ljava/lang/String;
    .end local v6           #resultItem:Lcom/google/android/apps/unveil/results/ResultItem;
    :cond_5d
    if-eqz v7, :cond_10

    .line 250
    :try_start_5f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v1, deadAnnotations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;>;"
    iget-object v8, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->trackedAnnotations:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6a
    :goto_6a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_80

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;

    .line 252
    .local v0, annotation:Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6a

    .line 253
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    .line 258
    .end local v0           #annotation:Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;
    :cond_80
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_84
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;

    .line 259
    .restart local v0       #annotation:Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->beginRemoval(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;)V
    :try_end_93
    .catchall {:try_start_5f .. :try_end_93} :catchall_56

    goto :goto_84
.end method

.method private removeFromTrackedList(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;)V
    .registers 3
    .parameter "deadAnnotation"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    if-eqz v0, :cond_b

    .line 179
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->getTrackedObject()Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->stopTracking()V

    .line 181
    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->setTrackedObject(Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;)V

    .line 183
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->renderer:Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;

    if-eqz v0, :cond_18

    .line 184
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->renderer:Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->removeAnnotation(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;)V

    .line 187
    :cond_18
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->trackedAnnotations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->eventListener:Lcom/google/android/apps/unveil/tracking/AnnotationTracker$AnnotationEventListener;

    if-eqz v0, :cond_26

    .line 190
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->eventListener:Lcom/google/android/apps/unveil/tracking/AnnotationTracker$AnnotationEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker$AnnotationEventListener;->onTrackingStopped(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;)V

    .line 192
    :cond_26
    return-void
.end method

.method private updateBasicAnnotation(Ljava/lang/String;Lcom/google/android/apps/unveil/results/ResultItem;)V
    .registers 6
    .parameter "resultId"
    .parameter "resultItem"

    .prologue
    .line 319
    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->allAnnotationsFromSession:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/results/BasicAnnotation;

    .line 320
    .local v0, existingAnnotation:Lcom/google/android/apps/unveil/results/BasicAnnotation;
    invoke-virtual {v0, p2}, Lcom/google/android/apps/unveil/results/BasicAnnotation;->updateResultItem(Lcom/google/android/apps/unveil/results/ResultItem;)V

    .line 321
    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->eventListener:Lcom/google/android/apps/unveil/tracking/AnnotationTracker$AnnotationEventListener;

    if-eqz v1, :cond_15

    .line 322
    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->eventListener:Lcom/google/android/apps/unveil/tracking/AnnotationTracker$AnnotationEventListener;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker$AnnotationEventListener;->onResultUpdated(Lcom/google/android/apps/unveil/results/BasicAnnotation;Z)V

    .line 324
    :cond_15
    return-void
.end method

.method private updateTrackedAnnotation(Ljava/lang/String;Lcom/google/android/apps/unveil/results/ResultItem;Lcom/google/android/apps/unveil/env/DownsampledImage;Landroid/graphics/RectF;)V
    .registers 16
    .parameter "resultId"
    .parameter "resultItem"
    .parameter "downsampledImage"
    .parameter "position"

    .prologue
    const/4 v8, 0x1

    .line 328
    iget-object v9, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->allTrackedAnnotationsFromSession:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;

    .line 332
    .local v0, existingAnnotation:Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;
    invoke-virtual {v0}, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->getPreviewFrameTimestamp()J

    move-result-wide v4

    .line 334
    .local v4, previousPreviewFrameTimestamp:J
    invoke-virtual {v0, p2}, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->updateResultItem(Lcom/google/android/apps/unveil/results/ResultItem;)V

    .line 336
    invoke-virtual {v0}, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->getPreviewFrameTimestamp()J

    move-result-wide v9

    cmp-long v9, v9, v4

    if-lez v9, :cond_39

    move v6, v8

    .line 340
    .local v6, timestampUpdated:Z
    :goto_19
    if-eqz p3, :cond_2c

    if-eqz p4, :cond_2c

    if-eqz v6, :cond_2c

    .line 341
    invoke-virtual {v0}, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->getTrackedObject()Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;

    move-result-object v1

    .line 342
    .local v1, object:Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;
    iget-boolean v9, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->shouldTrackRepeatedResults:Z

    if-eqz v9, :cond_3b

    if-nez v1, :cond_3b

    .line 345
    invoke-direct {p0, v0, p4, p3}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->addToTrackedList(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;Landroid/graphics/RectF;Lcom/google/android/apps/unveil/env/DownsampledImage;)V

    .line 362
    .end local v1           #object:Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;
    :cond_2c
    :goto_2c
    invoke-virtual {v0, p2}, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->updateResultItem(Lcom/google/android/apps/unveil/results/ResultItem;)V

    .line 363
    iget-object v9, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->eventListener:Lcom/google/android/apps/unveil/tracking/AnnotationTracker$AnnotationEventListener;

    if-eqz v9, :cond_38

    .line 364
    iget-object v9, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->eventListener:Lcom/google/android/apps/unveil/tracking/AnnotationTracker$AnnotationEventListener;

    invoke-interface {v9, v0, v8}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker$AnnotationEventListener;->onResultUpdated(Lcom/google/android/apps/unveil/results/BasicAnnotation;Z)V

    .line 366
    :cond_38
    return-void

    .line 336
    .end local v6           #timestampUpdated:Z
    :cond_39
    const/4 v6, 0x0

    goto :goto_19

    .line 346
    .restart local v1       #object:Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;
    .restart local v6       #timestampUpdated:Z
    :cond_3b
    iget-boolean v9, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->shouldAllowServerPositionUpdates:Z

    if-eqz v9, :cond_2c

    if-eqz v1, :cond_2c

    .line 347
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->getLastFrameTime()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->markPositionAtTime(J)V

    .line 348
    invoke-virtual {v0}, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->getLastKnownPositionInFrame()Landroid/graphics/RectF;

    move-result-object v3

    .line 349
    .local v3, positionBefore:Landroid/graphics/RectF;
    invoke-direct {p0, v1, p4, p3}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->maybeUpdateWithServerPosition(Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;Landroid/graphics/RectF;Lcom/google/android/apps/unveil/env/DownsampledImage;)Z

    move-result v7

    .line 351
    .local v7, updated:Z
    iget-object v9, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->renderer:Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;

    if-eqz v9, :cond_2c

    .line 352
    if-eqz v7, :cond_66

    .line 353
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->getLastFrameTime()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->markPositionAtTime(J)V

    .line 354
    invoke-virtual {v0}, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->getLastKnownPositionInFrame()Landroid/graphics/RectF;

    move-result-object v2

    .line 355
    .local v2, positionAfter:Landroid/graphics/RectF;
    iget-object v9, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->renderer:Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;

    invoke-virtual {v9, v0, v3, v2}, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->onObjectJumped(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 357
    .end local v2           #positionAfter:Landroid/graphics/RectF;
    :cond_66
    iget-object v9, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->renderer:Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;

    invoke-virtual {v9, v0}, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->cancelRemoval(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;)V

    goto :goto_2c
.end method


# virtual methods
.method public declared-synchronized addTrackingDataToQuery(Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;J)V
    .registers 14
    .parameter "query"
    .parameter "queryTime"

    .prologue
    .line 517
    monitor-enter p0

    :try_start_1
    iget-object v5, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    if-nez v5, :cond_10

    .line 518
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Object tracker was set to null, why is a request being made?"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 517
    :catchall_d
    move-exception v5

    monitor-exit p0

    throw v5

    .line 522
    :cond_10
    :try_start_10
    iget-object v5, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->trackedAnnotations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;

    .line 523
    .local v4, trackedAnnotation:Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;
    invoke-virtual {v4, p2, p3}, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->toTrackedResult(J)Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->addTrackedResult(Lcom/google/goggles/ExtendedGogglesProtos$TrackedResult;)V

    goto :goto_16

    .line 526
    .end local v4           #trackedAnnotation:Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;
    :cond_2a
    iget-object v5, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    invoke-virtual {v5, p2, p3}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->pollAccumulatedFlowData(J)Ljava/util/List;

    move-result-object v2

    .line 528
    .local v2, frameChanges:Ljava/util/List;,"Ljava/util/List<[B>;"
    invoke-static {}, Lcom/google/goggles/FlowProtos$FlowData;->newBuilder()Lcom/google/goggles/FlowProtos$FlowData$Builder;

    move-result-object v0

    .line 529
    .local v0, flowBuilder:Lcom/google/goggles/FlowProtos$FlowData$Builder;
    iget-object v5, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v6, "Adding %d frames of flowdata"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 530
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 531
    .local v1, frameChange:[B
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->addPrePackedCorrespondences(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/FlowProtos$FlowData$Builder;

    goto :goto_4d

    .line 534
    .end local v1           #frameChange:[B
    :cond_61
    invoke-virtual {v0}, Lcom/google/goggles/FlowProtos$FlowData$Builder;->build()Lcom/google/goggles/FlowProtos$FlowData;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;->addFlowData(Lcom/google/goggles/FlowProtos$FlowData;)V
    :try_end_68
    .catchall {:try_start_10 .. :try_end_68} :catchall_d

    .line 535
    monitor-exit p0

    return-void
.end method

.method protected animateAndRender()V
    .registers 5

    .prologue
    .line 157
    iget-object v2, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->renderer:Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;

    if-nez v2, :cond_5

    .line 175
    :goto_4
    return-void

    .line 161
    :cond_5
    iget-object v2, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->renderer:Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->animate()V

    .line 164
    iget-object v2, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->currentRenderedAnnotations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 165
    iget-object v2, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->currentRenderedAnnotations:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->trackedAnnotations:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 166
    iget-object v2, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->currentRenderedAnnotations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;

    .line 169
    .local v0, annot:Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;
    iget-object v2, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->renderer:Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->isNoLongerRendering(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 170
    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->removeFromTrackedList(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;)V

    goto :goto_1c

    .line 174
    .end local v0           #annot:Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;
    :cond_34
    iget-object v2, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->renderer:Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->requestRenderIfDirty()V

    goto :goto_4
.end method

.method protected beginRemoval(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;)V
    .registers 3
    .parameter "annotation"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->renderer:Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;

    if-nez v0, :cond_8

    .line 556
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->removeFromTrackedList(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;)V

    .line 561
    :goto_7
    return-void

    .line 559
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->renderer:Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->beginRemoval(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;)V

    goto :goto_7
.end method

.method public declared-synchronized clearSessionAndTracked()V
    .registers 2

    .prologue
    .line 425
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->clearTrackedAnnotations()V

    .line 426
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->allTrackedAnnotationsFromSession:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 427
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->allAnnotationsFromSession:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 428
    monitor-exit p0

    return-void

    .line 425
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearTrackedAnnotations()V
    .registers 5

    .prologue
    .line 436
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->trackedAnnotations:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 438
    .local v1, copyOfTracked:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;

    .line 439
    .local v0, annotation:Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;
    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->removeFromTrackedList(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1c

    goto :goto_c

    .line 436
    .end local v0           #annotation:Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;
    .end local v1           #copyOfTracked:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_1c
    move-exception v3

    monitor-exit p0

    throw v3

    .line 442
    .restart local v1       #copyOfTracked:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1f
    :try_start_1f
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->animateAndRender()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_1c

    .line 443
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized drawOverlay(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 5
    .parameter "gl"

    .prologue
    .line 510
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->isDebugActive()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    if-eqz v0, :cond_18

    .line 511
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->getViewSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->getRotation()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->drawOverlay(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/apps/unveil/env/Size;I)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 513
    :cond_18
    monitor-exit p0

    return-void

    .line 510
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public finalize()V
    .registers 1

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->maybeReleaseObjectTracker()V

    .line 471
    return-void
.end method

.method protected getProcessorType()Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;
    .registers 2

    .prologue
    .line 565
    sget-object v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;->ANNOTATION_TRACKER:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    return-object v0
.end method

.method public declared-synchronized getTrackedAnnotationCount()I
    .registers 2

    .prologue
    .line 460
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->trackedAnnotations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
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

.method public declared-synchronized getTrackedAnnotations()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 451
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->trackedAnnotations:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDrawDebug(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 503
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    if-eqz v0, :cond_e

    .line 504
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->getFrameToCanvasMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->drawDebug(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 506
    :cond_e
    monitor-exit p0

    return-void

    .line 503
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onHighQualityRequest(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;)V
    .registers 2
    .parameter "metadata"

    .prologue
    .line 599
    return-void
.end method

.method public onNetworkError(I)V
    .registers 2
    .parameter "statusCode"

    .prologue
    .line 603
    return-void
.end method

.method public onNewFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V
    .registers 2
    .parameter "previewFrame"

    .prologue
    .line 591
    return-void
.end method

.method public onNewRequest(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;)V
    .registers 2
    .parameter "metadata"

    .prologue
    .line 595
    return-void
.end method

.method public onNewResults(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/android/apps/unveil/results/ResultItem;",
            "Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 586
    .local p1, results:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Lcom/google/android/apps/unveil/results/ResultItem;Lcom/google/android/apps/unveil/protocol/nonstop/ActiveFrameQueue$ActiveFrame;>;>;"
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->onResults(Ljava/util/List;)V

    .line 587
    return-void
.end method

.method public declared-synchronized onPause()V
    .registers 2

    .prologue
    .line 465
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->maybeReleaseObjectTracker()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 466
    monitor-exit p0

    return-void

    .line 465
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onProcessFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V
    .registers 15
    .parameter "frame"

    .prologue
    .line 118
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->maybeInitObjectTracker(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V

    .line 120
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->visionGyroProcessor:Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->visionGyroProcessor:Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->getLastFrameTime()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getTimestamp()J

    move-result-wide v11

    invoke-virtual {v0, v1, v2, v11, v12}, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;->getTransformationMatrixAndClearPrevious(JJ)[F

    move-result-object v4

    .line 125
    .local v4, vgMatrixValues:[F
    :goto_16
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getDownsampledImage()Lcom/google/android/apps/unveil/env/DownsampledImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/env/DownsampledImage;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->isDebugActive()Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->nextFrame([BJ[FZ)V

    .line 129
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v8, deadAnnotations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->trackedAnnotations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_36
    :goto_36
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;

    .line 131
    .local v6, annotation:Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->markPositionAtTime(J)V

    .line 133
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->renderer:Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;

    if-eqz v0, :cond_62

    .line 134
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->getLastFrameTime()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->getPositionInFrameAtTime(J)Landroid/graphics/RectF;

    move-result-object v10

    .line 135
    .local v10, previousPosition:Landroid/graphics/RectF;
    invoke-virtual {v6}, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->getLastKnownPositionInFrame()Landroid/graphics/RectF;

    move-result-object v7

    .line 137
    .local v7, currentPosition:Landroid/graphics/RectF;
    if-eqz v10, :cond_62

    if-eqz v7, :cond_62

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->renderer:Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;

    invoke-virtual {v0, v6, v10, v7}, Lcom/google/android/apps/unveil/tracking/AnnotationRenderer;->onObjectMoved(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 142
    .end local v7           #currentPosition:Landroid/graphics/RectF;
    .end local v10           #previousPosition:Landroid/graphics/RectF;
    :cond_62
    invoke-virtual {v6}, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;->getTrackedObject()Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->visibleInLastPreviewFrame()Z

    move-result v0

    if-nez v0, :cond_36

    .line 143
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6f
    .catchall {:try_start_1 .. :try_end_6f} :catchall_70

    goto :goto_36

    .line 118
    .end local v4           #vgMatrixValues:[F
    .end local v6           #annotation:Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;
    .end local v8           #deadAnnotations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    :catchall_70
    move-exception v0

    monitor-exit p0

    throw v0

    .line 120
    :cond_73
    const/4 v4, 0x0

    goto :goto_16

    .line 148
    .restart local v4       #vgMatrixValues:[F
    .restart local v8       #deadAnnotations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;>;"
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_75
    :try_start_75
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_79
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;

    .line 149
    .restart local v6       #annotation:Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;
    invoke-virtual {p0, v6}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->beginRemoval(Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;)V

    goto :goto_79

    .line 153
    .end local v6           #annotation:Lcom/google/android/apps/unveil/tracking/TrackedAnnotation;
    :cond_89
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->animateAndRender()V
    :try_end_8c
    .catchall {:try_start_75 .. :try_end_8c} :catchall_70

    .line 154
    monitor-exit p0

    return-void
.end method

.method public onPullReceived()V
    .registers 1

    .prologue
    .line 582
    return-void
.end method

.method public onPushReceived(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;)V
    .registers 2
    .parameter "metadata"

    .prologue
    .line 574
    return-void
.end method

.method public onPushSent(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;[B)V
    .registers 3
    .parameter "metadata"
    .parameter "cachedJpeg"

    .prologue
    .line 570
    return-void
.end method

.method public onSessionReset()V
    .registers 1

    .prologue
    .line 578
    return-void
.end method

.method public declared-synchronized setListener(Lcom/google/android/apps/unveil/tracking/AnnotationTracker$AnnotationEventListener;)V
    .registers 3
    .parameter "eventListener"

    .prologue
    .line 474
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/unveil/tracking/AnnotationTracker;->eventListener:Lcom/google/android/apps/unveil/tracking/AnnotationTracker$AnnotationEventListener;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 475
    monitor-exit p0

    return-void

    .line 474
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
