.class public Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;
.super Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
.source "TrackingTestView.java"

# interfaces
.implements Lcom/google/android/apps/unveil/ui/GlOverlay$RenderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/tracking/TrackingTestView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrackingTestViewProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

.field private visionGyro:Lcom/google/android/apps/unveil/tracking/VisionGyro;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)V
    .registers 2
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->this$0:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized drawOverlay(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 5
    .parameter "gl"

    .prologue
    .line 270
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->this$0:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    #getter for: Lcom/google/android/apps/unveil/tracking/TrackingTestView;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;
    invoke-static {v0}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->access$000(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 271
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->this$0:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    #getter for: Lcom/google/android/apps/unveil/tracking/TrackingTestView;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;
    invoke-static {v0}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->access$000(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->getViewSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->getRotation()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->drawOverlay(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/apps/unveil/env/Size;I)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 273
    :cond_1a
    monitor-exit p0

    return-void

    .line 270
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDrawDebug(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->this$0:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    #getter for: Lcom/google/android/apps/unveil/tracking/TrackingTestView;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;
    invoke-static {v0}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->access$000(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 264
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->this$0:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    #getter for: Lcom/google/android/apps/unveil/tracking/TrackingTestView;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;
    invoke-static {v0}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->access$000(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->this$0:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    #getter for: Lcom/google/android/apps/unveil/tracking/TrackingTestView;->frameToCanvas:Landroid/graphics/Matrix;
    invoke-static {v1}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->access$100(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->drawDebug(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 266
    :cond_17
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->this$0:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    #calls: Lcom/google/android/apps/unveil/tracking/TrackingTestView;->reset()V
    invoke-static {v0}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->access$700(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)V

    .line 259
    return-void
.end method

.method protected onProcessFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V
    .registers 14
    .parameter "frame"

    .prologue
    const/4 v10, 0x0

    .line 213
    iget-object v11, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->this$0:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    monitor-enter v11

    .line 214
    :try_start_4
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->this$0:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    #getter for: Lcom/google/android/apps/unveil/tracking/TrackingTestView;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;
    invoke-static {v0}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->access$000(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    move-result-object v0

    if-nez v0, :cond_35

    .line 215
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v9

    .line 216
    .local v9, previewSize:Lcom/google/android/apps/unveil/env/Size;
    new-instance v0, Lcom/google/android/apps/unveil/tracking/VisionGyro;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/tracking/VisionGyro;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->visionGyro:Lcom/google/android/apps/unveil/tracking/VisionGyro;

    .line 217
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->this$0:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getDownsampledWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getDownsampledHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getDownsampleFactor()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->getInstance(III)Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    move-result-object v1

    #setter for: Lcom/google/android/apps/unveil/tracking/TrackingTestView;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;
    invoke-static {v0, v1}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->access$002(Lcom/google/android/apps/unveil/tracking/TrackingTestView;Lcom/google/android/apps/unveil/tracking/ObjectTracker;)Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    .line 220
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->this$0:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->getFrameToCanvasMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    #setter for: Lcom/google/android/apps/unveil/tracking/TrackingTestView;->frameToCanvas:Landroid/graphics/Matrix;
    invoke-static {v0, v1}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->access$102(Lcom/google/android/apps/unveil/tracking/TrackingTestView;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 223
    .end local v9           #previewSize:Lcom/google/android/apps/unveil/env/Size;
    :cond_35
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getDownsampledImage()Lcom/google/android/apps/unveil/env/DownsampledImage;

    move-result-object v7

    .line 224
    .local v7, image:Lcom/google/android/apps/unveil/env/DownsampledImage;
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->visionGyro:Lcom/google/android/apps/unveil/tracking/VisionGyro;

    invoke-virtual {v7}, Lcom/google/android/apps/unveil/env/DownsampledImage;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getDownsampledWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getDownsampledHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/unveil/tracking/VisionGyro;->nextFrame([BII)[F

    move-result-object v4

    .line 226
    .local v4, vgMatrix:[F
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->this$0:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    #getter for: Lcom/google/android/apps/unveil/tracking/TrackingTestView;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;
    invoke-static {v0}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->access$000(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    move-result-object v0

    invoke-virtual {v7}, Lcom/google/android/apps/unveil/env/DownsampledImage;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->isDebugActive()Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->nextFrame([BJ[FZ)V

    .line 228
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->this$0:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    #getter for: Lcom/google/android/apps/unveil/tracking/TrackingTestView;->usingGlOverlay:Z
    invoke-static {v0}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->access$200(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 229
    const/4 v6, 0x0

    .local v6, i:I
    :goto_69
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->this$0:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    #getter for: Lcom/google/android/apps/unveil/tracking/TrackingTestView;->objects:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->access$300(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_c2

    .line 230
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->this$0:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    #getter for: Lcom/google/android/apps/unveil/tracking/TrackingTestView;->objects:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->access$300(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;->getTrackedPositionInPreviewFrame()Landroid/graphics/RectF;

    move-result-object v8

    .line 232
    .local v8, position:Landroid/graphics/RectF;
    if-eqz v8, :cond_ab

    .line 233
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->this$0:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    #getter for: Lcom/google/android/apps/unveil/tracking/TrackingTestView;->glBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;
    invoke-static {v0}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->access$400(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    move-result-object v0

    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->get(I)Lcom/google/android/apps/unveil/env/gl/BoundingBox;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->set(Landroid/graphics/RectF;)V

    .line 234
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->this$0:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    #getter for: Lcom/google/android/apps/unveil/tracking/TrackingTestView;->frameToCanvas:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->access$100(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->this$0:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    #getter for: Lcom/google/android/apps/unveil/tracking/TrackingTestView;->glBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;
    invoke-static {v1}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->access$400(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    move-result-object v1

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->get(I)Lcom/google/android/apps/unveil/env/gl/BoundingBox;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 236
    :cond_ab
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->this$0:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    #getter for: Lcom/google/android/apps/unveil/tracking/TrackingTestView;->glBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;
    invoke-static {v0}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->access$400(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    move-result-object v0

    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->get(I)Lcom/google/android/apps/unveil/env/gl/BoundingBox;

    move-result-object v1

    if-eqz v8, :cond_c0

    const/4 v0, 0x1

    :goto_ba
    invoke-virtual {v1, v0}, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->setActive(Z)V

    .line 229
    add-int/lit8 v6, v6, 0x1

    goto :goto_69

    :cond_c0
    move v0, v10

    .line 236
    goto :goto_ba

    .line 239
    .end local v8           #position:Landroid/graphics/RectF;
    :cond_c2
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->this$0:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    #getter for: Lcom/google/android/apps/unveil/tracking/TrackingTestView;->objects:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->access$300(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, 0x1

    :goto_ce
    const/4 v0, 0x6

    if-ge v6, v0, :cond_f3

    .line 240
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->this$0:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    #getter for: Lcom/google/android/apps/unveil/tracking/TrackingTestView;->glBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;
    invoke-static {v0}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->access$400(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->get(I)Lcom/google/android/apps/unveil/env/gl/BoundingBox;

    move-result-object v0

    if-eqz v0, :cond_eb

    .line 241
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->this$0:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    #getter for: Lcom/google/android/apps/unveil/tracking/TrackingTestView;->glBoxes:Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;
    invoke-static {v0}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->access$400(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/apps/unveil/env/gl/BoundingBoxLayer;->get(I)Lcom/google/android/apps/unveil/env/gl/BoundingBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->setActive(Z)V

    .line 239
    :cond_eb
    add-int/lit8 v6, v6, 0x1

    goto :goto_ce

    .line 245
    .end local v6           #i:I
    :cond_ee
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->this$0:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    #calls: Lcom/google/android/apps/unveil/tracking/TrackingTestView;->render()V
    invoke-static {v0}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->access$500(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)V

    .line 247
    :cond_f3
    monitor-exit v11
    :try_end_f4
    .catchall {:try_start_4 .. :try_end_f4} :catchall_124

    .line 249
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->this$0:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    #getter for: Lcom/google/android/apps/unveil/tracking/TrackingTestView;->boxToTrack:Landroid/graphics/RectF;
    invoke-static {v0}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->access$600(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_123

    .line 250
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->this$0:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    #getter for: Lcom/google/android/apps/unveil/tracking/TrackingTestView;->objects:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->access$300(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->this$0:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    #getter for: Lcom/google/android/apps/unveil/tracking/TrackingTestView;->objectTracker:Lcom/google/android/apps/unveil/tracking/ObjectTracker;
    invoke-static {v1}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->access$000(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)Lcom/google/android/apps/unveil/tracking/ObjectTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->this$0:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    #getter for: Lcom/google/android/apps/unveil/tracking/TrackingTestView;->boxToTrack:Landroid/graphics/RectF;
    invoke-static {v2}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->access$600(Lcom/google/android/apps/unveil/tracking/TrackingTestView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getDownsampledImage()Lcom/google/android/apps/unveil/env/DownsampledImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/env/DownsampledImage;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/tracking/ObjectTracker;->trackObject(Landroid/graphics/RectF;[B)Lcom/google/android/apps/unveil/tracking/ObjectTracker$TrackedObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v0, p0, Lcom/google/android/apps/unveil/tracking/TrackingTestView$TrackingTestViewProcessor;->this$0:Lcom/google/android/apps/unveil/tracking/TrackingTestView;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/unveil/tracking/TrackingTestView;->boxToTrack:Landroid/graphics/RectF;
    invoke-static {v0, v1}, Lcom/google/android/apps/unveil/tracking/TrackingTestView;->access$602(Lcom/google/android/apps/unveil/tracking/TrackingTestView;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 254
    :cond_123
    return-void

    .line 247
    .end local v4           #vgMatrix:[F
    .end local v7           #image:Lcom/google/android/apps/unveil/env/DownsampledImage;
    :catchall_124
    move-exception v0

    :try_start_125
    monitor-exit v11
    :try_end_126
    .catchall {:try_start_125 .. :try_end_126} :catchall_124

    throw v0
.end method
