.class Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;
.super Ljava/lang/Object;
.source "ObjectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/tracking/ObjectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrackedObject"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private isDead:Z

.field private lastExternalPositionTime:J

.field private lastTrackedPosition:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

.field private visibleInLastFrame:Z


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/tracking/ObjectTracker;Landroid/graphics/RectF;J[B)V
    .registers 8
    .parameter
    .parameter "position"
    .parameter "timestamp"
    .parameter "data"

    .prologue
    .line 431
    iput-object p1, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->this$0:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->isDead:Z

    .line 434
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->id:Ljava/lang/String;

    .line 436
    iput-wide p3, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->lastExternalPositionTime:J

    .line 438
    monitor-enter p1

    .line 439
    :try_start_15
    invoke-virtual {p0, p2, p5}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->registerAppearance(Landroid/graphics/RectF;[B)V

    .line 440
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->setExternalPosition(Landroid/graphics/RectF;J)V

    .line 441
    #getter for: Lcom/google/android/apps/unveil/tracking/ObjectTracker;->trackedObjects:Ljava/util/Map;
    invoke-static {p1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->access$500(Lcom/google/android/apps/unveil/tracking/ObjectTracker;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->id:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    monitor-exit p1

    .line 443
    return-void

    .line 442
    :catchall_26
    move-exception v0

    monitor-exit p1
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_26

    throw v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->updateTrackedPosition()V

    return-void
.end method

.method private checkValidObject()V
    .registers 3

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->isDead:Z

    if-eqz v0, :cond_c

    .line 518
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TrackedObject already removed from tracking!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->this$0:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    invoke-static {}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->access$1500()Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    move-result-object v1

    if-eq v0, v1, :cond_1c

    .line 520
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TrackedObject created with another ObjectTracker!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_1c
    return-void
.end method

.method private declared-synchronized updateTrackedPosition()V
    .registers 7

    .prologue
    .line 490
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->checkValidObject()V

    .line 492
    const/4 v1, 0x4

    new-array v0, v1, [F

    .line 493
    .local v0, delta:[F
    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->this$0:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    iget-object v2, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->id:Ljava/lang/String;

    #calls: Lcom/google/android/apps/unveil/tracking/ObjectTracker;->getTrackedPositionNative(Ljava/lang/String;[F)V
    invoke-static {v1, v2, v0}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->access$1200(Lcom/google/android/apps/unveil/tracking/ObjectTracker;Ljava/lang/String;[F)V

    .line 494
    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v5, v0, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->lastTrackedPosition:Landroid/graphics/RectF;

    .line 496
    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->this$0:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    iget-object v2, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->id:Ljava/lang/String;

    #calls: Lcom/google/android/apps/unveil/tracking/ObjectTracker;->isObjectVisible(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->access$1300(Lcom/google/android/apps/unveil/tracking/ObjectTracker;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->visibleInLastFrame:Z
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 497
    monitor-exit p0

    return-void

    .line 490
    .end local v0           #delta:[F
    :catchall_2d
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public getCurrentCorrelation()F
    .registers 3

    .prologue
    .line 456
    invoke-direct {p0}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->checkValidObject()V

    .line 457
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->this$0:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->id:Ljava/lang/String;

    #calls: Lcom/google/android/apps/unveil/tracking/ObjectTracker;->getCurrentCorrelation(Ljava/lang/String;)F
    invoke-static {v0, v1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->access$700(Lcom/google/android/apps/unveil/tracking/ObjectTracker;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method declared-synchronized getLastExternalPositionTime()J
    .registers 3

    .prologue
    .line 509
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->lastExternalPositionTime:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getTrackedPositionInPreviewFrame()Landroid/graphics/RectF;
    .registers 3

    .prologue
    .line 500
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->checkValidObject()V

    .line 502
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->lastTrackedPosition:Landroid/graphics/RectF;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_14

    if-nez v0, :cond_b

    .line 503
    const/4 v0, 0x0

    .line 505
    :goto_9
    monitor-exit p0

    return-object v0

    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->this$0:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->lastTrackedPosition:Landroid/graphics/RectF;

    #calls: Lcom/google/android/apps/unveil/tracking/ObjectTracker;->upscaleRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    invoke-static {v0, v1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->access$1400(Lcom/google/android/apps/unveil/tracking/ObjectTracker;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_14

    move-result-object v0

    goto :goto_9

    .line 500
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method registerAppearance(Landroid/graphics/RectF;[B)V
    .registers 12
    .parameter "position"
    .parameter "frameData"

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->checkValidObject()V

    .line 481
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->this$0:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    #calls: Lcom/google/android/apps/unveil/tracking/ObjectTracker;->downscaleRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    invoke-static {v0, p1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->access$900(Lcom/google/android/apps/unveil/tracking/ObjectTracker;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v7

    .line 482
    .local v7, downsampledPosition:Landroid/graphics/RectF;
    iget-object v8, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->this$0:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    monitor-enter v8

    .line 483
    :try_start_c
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->this$0:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->id:Ljava/lang/String;

    iget v2, v7, Landroid/graphics/RectF;->left:F

    iget v3, v7, Landroid/graphics/RectF;->top:F

    iget v4, v7, Landroid/graphics/RectF;->right:F

    iget v5, v7, Landroid/graphics/RectF;->bottom:F

    move-object v6, p2

    #calls: Lcom/google/android/apps/unveil/tracking/ObjectTracker;->registerAppearanceInFrameNative(Ljava/lang/String;FFFF[B)V
    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->access$1100(Lcom/google/android/apps/unveil/tracking/ObjectTracker;Ljava/lang/String;FFFF[B)V

    .line 486
    monitor-exit v8

    .line 487
    return-void

    .line 486
    :catchall_1e
    move-exception v0

    monitor-exit v8
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_1e

    throw v0
.end method

.method declared-synchronized setExternalPosition(Landroid/graphics/RectF;J)V
    .registers 14
    .parameter "position"
    .parameter "timestamp"

    .prologue
    .line 461
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->checkValidObject()V

    .line 462
    iget-object v9, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->this$0:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    monitor-enter v9
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_3d

    .line 463
    :try_start_7
    iget-wide v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->lastExternalPositionTime:J

    cmp-long v0, v0, p2

    if-lez v0, :cond_1c

    .line 464
    invoke-static {}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->access$800()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "Tried to use older position time!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    monitor-exit v9
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_3a

    .line 477
    :goto_1a
    monitor-exit p0

    return-void

    .line 467
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->this$0:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    #calls: Lcom/google/android/apps/unveil/tracking/ObjectTracker;->downscaleRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    invoke-static {v0, p1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->access$900(Lcom/google/android/apps/unveil/tracking/ObjectTracker;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v8

    .line 468
    .local v8, externalPosition:Landroid/graphics/RectF;
    iput-wide p2, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->lastExternalPositionTime:J

    .line 470
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->this$0:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->id:Ljava/lang/String;

    iget v2, v8, Landroid/graphics/RectF;->left:F

    iget v3, v8, Landroid/graphics/RectF;->top:F

    iget v4, v8, Landroid/graphics/RectF;->right:F

    iget v5, v8, Landroid/graphics/RectF;->bottom:F

    iget-wide v6, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->lastExternalPositionTime:J

    #calls: Lcom/google/android/apps/unveil/tracking/ObjectTracker;->setPreviousPositionNative(Ljava/lang/String;FFFFJ)V
    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->access$1000(Lcom/google/android/apps/unveil/tracking/ObjectTracker;Ljava/lang/String;FFFFJ)V

    .line 475
    invoke-direct {p0}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->updateTrackedPosition()V

    .line 476
    monitor-exit v9

    goto :goto_1a

    .end local v8           #externalPosition:Landroid/graphics/RectF;
    :catchall_3a
    move-exception v0

    monitor-exit v9
    :try_end_3c
    .catchall {:try_start_1c .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    .line 461
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method stopTracking()V
    .registers 4

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->checkValidObject()V

    .line 448
    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->this$0:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    monitor-enter v1

    .line 449
    const/4 v0, 0x1

    :try_start_7
    iput-boolean v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->isDead:Z

    .line 450
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->this$0:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    iget-object v2, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->id:Ljava/lang/String;

    #calls: Lcom/google/android/apps/unveil/tracking/ObjectTracker;->forgetNative(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->access$600(Lcom/google/android/apps/unveil/tracking/ObjectTracker;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->this$0:Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    #getter for: Lcom/google/android/apps/unveil/tracking/ObjectTracker;->trackedObjects:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->access$500(Lcom/google/android/apps/unveil/tracking/ObjectTracker;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->id:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    monitor-exit v1

    .line 453
    return-void

    .line 452
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method declared-synchronized visibleInLastPreviewFrame()Z
    .registers 2

    .prologue
    .line 513
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->visibleInLastFrame:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
