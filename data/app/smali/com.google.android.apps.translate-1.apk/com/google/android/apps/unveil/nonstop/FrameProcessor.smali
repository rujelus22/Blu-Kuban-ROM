.class public abstract Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
.super Ljava/lang/Object;
.source "FrameProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;
    }
.end annotation


# static fields
.field public static final DUTY_CYCLE_ALL:I = 0x1

.field public static final DUTY_CYCLE_NONE:I = 0x7fffffff


# instance fields
.field private debugActive:Z

.field private dutyCycleCounter:I

.field private dutyCyclePeriod:I

.field private frameToCanvas:Landroid/graphics/Matrix;

.field private initialized:Z

.field private isFrameDiscarded:Z

.field private isProcessingEnabled:Z

.field private lastFrameTime:J

.field private final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

.field private previewFrameSize:Lcom/google/android/apps/unveil/env/Size;

.field private final queuedRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private rotation:I

.field private final timeStats:Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;

.field private viewSize:Lcom/google/android/apps/unveil/env/Size;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 42
    new-instance v0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;

    invoke-direct {v0, p0}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;-><init>(Lcom/google/android/apps/unveil/nonstop/FrameProcessor;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->timeStats:Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->queuedRunnables:Ljava/util/ArrayList;

    .line 69
    iput v1, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->dutyCyclePeriod:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->dutyCycleCounter:I

    .line 75
    iput-boolean v1, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->isProcessingEnabled:Z

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/unveil/nonstop/FrameProcessor;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->isProcessingEnabled:Z

    return v0
.end method


# virtual methods
.method protected discardFrame()V
    .registers 2

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->isFrameDiscarded:Z

    .line 161
    return-void
.end method

.method protected final drawDebug(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 340
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->onDrawDebug(Landroid/graphics/Canvas;)V

    .line 341
    return-void
.end method

.method public getDebugText()Ljava/util/Vector;
    .registers 2
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
    .line 372
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    return-object v0
.end method

.method protected getDutyCycle()I
    .registers 2

    .prologue
    .line 156
    iget v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->dutyCyclePeriod:I

    return v0
.end method

.method protected getFrameToCanvasMatrix()Landroid/graphics/Matrix;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->frameToCanvas:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected getHeaderText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLastFrameTime()J
    .registers 3

    .prologue
    .line 290
    iget-wide v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->lastFrameTime:J

    return-wide v0
.end method

.method protected getName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 346
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, tempName:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_f

    .end local v0           #tempName:Ljava/lang/String;
    :goto_e
    return-object v0

    .restart local v0       #tempName:Ljava/lang/String;
    :cond_f
    const-string v0, "<anonymous>"

    goto :goto_e
.end method

.method protected getPreviewFrameSize()Lcom/google/android/apps/unveil/env/Size;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->previewFrameSize:Lcom/google/android/apps/unveil/env/Size;

    return-object v0
.end method

.method protected getProcessorType()Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;
    .registers 2

    .prologue
    .line 317
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getRotation()I
    .registers 2

    .prologue
    .line 172
    iget v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->rotation:I

    return v0
.end method

.method public getStatus()Lcom/google/goggles/TracingProtos$ProcessorStatus;
    .registers 6

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->getProcessorType()Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    move-result-object v1

    .line 299
    .local v1, type:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;
    if-nez v1, :cond_8

    .line 300
    const/4 v2, 0x0

    .line 313
    :goto_7
    return-object v2

    .line 303
    :cond_8
    invoke-static {}, Lcom/google/goggles/TracingProtos$ProcessorStatus;->newBuilder()Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->setType(Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;)Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->timeStats:Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;

    #getter for: Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->numFrames:I
    invoke-static {v3}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->access$300(Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->setNumFrames(I)Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->timeStats:Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;

    #getter for: Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->totalProcessTime:J
    invoke-static {v3}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->access$200(Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->setCumulativeProcessTimeMs(I)Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    move-result-object v0

    .line 309
    .local v0, statusBuilder:Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;
    iget v2, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->dutyCyclePeriod:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_2f

    .line 310
    iget v2, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->dutyCyclePeriod:I

    invoke-virtual {v0, v2}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->setDutyPeriod(I)Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;

    .line 313
    :cond_2f
    invoke-virtual {v0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Builder;->build()Lcom/google/goggles/TracingProtos$ProcessorStatus;

    move-result-object v2

    goto :goto_7
.end method

.method public getTimePerFrame()F
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->timeStats:Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->timePerFrame()F

    move-result v0

    return v0
.end method

.method public getTimeStats()Ljava/lang/String;
    .registers 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->timeStats:Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewSize()Lcom/google/android/apps/unveil/env/Size;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->viewSize:Lcom/google/android/apps/unveil/env/Size;

    return-object v0
.end method

.method public final declared-synchronized init(Lcom/google/android/apps/unveil/env/Size;Lcom/google/android/apps/unveil/env/Size;I)V
    .registers 6
    .parameter "previewSize"
    .parameter "viewSize"
    .parameter "rotation"

    .prologue
    .line 137
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->initialized:Z

    .line 139
    iput-object p1, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->previewFrameSize:Lcom/google/android/apps/unveil/env/Size;

    .line 140
    iput-object p2, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->viewSize:Lcom/google/android/apps/unveil/env/Size;

    .line 141
    iput p3, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->rotation:I

    .line 143
    invoke-static {p1, p2, p3}, Lcom/google/android/apps/unveil/env/ImageUtils;->getTransformationMatrix(Lcom/google/android/apps/unveil/env/Size;Lcom/google/android/apps/unveil/env/Size;I)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->frameToCanvas:Landroid/graphics/Matrix;

    .line 146
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->lastFrameTime:J

    .line 148
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->onInit(Lcom/google/android/apps/unveil/env/Size;)V
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_19

    .line 149
    monitor-exit p0

    return-void

    .line 137
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDebugActive()Z
    .registers 2

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->debugActive:Z

    return v0
.end method

.method protected final isInitialized()Z
    .registers 2

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->initialized:Z

    return v0
.end method

.method protected onDrawDebug(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 343
    return-void
.end method

.method protected onInit(Lcom/google/android/apps/unveil/env/Size;)V
    .registers 2
    .parameter "previewSize"

    .prologue
    .line 272
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 327
    return-void
.end method

.method protected abstract onProcessFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V
.end method

.method protected onShutdown()V
    .registers 1

    .prologue
    .line 332
    return-void
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 280
    return-void
.end method

.method protected final declared-synchronized pause()V
    .registers 2

    .prologue
    .line 256
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->queuedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 257
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->onPause()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 258
    monitor-exit p0

    return-void

    .line 256
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final pollRunnables(Ljava/util/Collection;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, runnables:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Runnable;>;"
    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->queuedRunnables:Ljava/util/ArrayList;

    monitor-enter v1

    .line 208
    :try_start_3
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->queuedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 209
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->queuedRunnables:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 210
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->queuedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 212
    :cond_15
    monitor-exit v1

    .line 213
    return-void

    .line 212
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method protected final declared-synchronized processFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V
    .registers 8
    .parameter "frame"

    .prologue
    .line 234
    monitor-enter p0

    :try_start_1
    iget v4, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->dutyCycleCounter:I

    if-nez v4, :cond_28

    .line 235
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->isFrameDiscarded:Z

    .line 237
    iget-boolean v4, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->isProcessingEnabled:Z

    if-eqz v4, :cond_22

    .line 238
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    .line 239
    .local v2, timeStart:J
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->onProcessFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V

    .line 240
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v2

    .line 241
    .local v0, processDuration:J
    iget-boolean v4, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->isFrameDiscarded:Z

    if-nez v4, :cond_22

    .line 242
    iget-object v4, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->timeStats:Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;

    #calls: Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->addFrame(J)V
    invoke-static {v4, v0, v1}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;->access$100(Lcom/google/android/apps/unveil/nonstop/FrameProcessor$TimeStats;J)V

    .line 246
    .end local v0           #processDuration:J
    .end local v2           #timeStart:J
    :cond_22
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getTimestamp()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->lastFrameTime:J

    .line 249
    :cond_28
    iget v4, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->dutyCycleCounter:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->dutyCyclePeriod:I

    rem-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->dutyCycleCounter:I
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    .line 250
    monitor-exit p0

    return-void

    .line 234
    :catchall_33
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method protected final runOnUiThreadBeforeNextFrame(Ljava/lang/Runnable;)V
    .registers 4
    .parameter "runnable"

    .prologue
    .line 224
    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->queuedRunnables:Ljava/util/ArrayList;

    monitor-enter v1

    .line 225
    :try_start_3
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->queuedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    monitor-exit v1

    .line 227
    return-void

    .line 226
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method protected setDebugActive(Z)V
    .registers 2
    .parameter "isActive"

    .prologue
    .line 376
    iput-boolean p1, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->debugActive:Z

    .line 377
    return-void
.end method

.method public setDutyCycle(I)V
    .registers 2
    .parameter "period"

    .prologue
    .line 152
    iput p1, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->dutyCyclePeriod:I

    .line 153
    return-void
.end method

.method public declared-synchronized setProcessingEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 185
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->isProcessingEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 186
    monitor-exit p0

    return-void

    .line 185
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized shutdown()V
    .registers 2

    .prologue
    .line 265
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->initialized:Z

    .line 266
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->onShutdown()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 267
    monitor-exit p0

    return-void

    .line 265
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized start()V
    .registers 4

    .prologue
    .line 199
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->queuedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 200
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Left over queued runnables from last time!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->queuedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 203
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->onStart()V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 204
    monitor-exit p0

    return-void

    .line 199
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
