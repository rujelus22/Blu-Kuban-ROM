.class public Lcom/google/android/apps/unveil/nonstop/PreviewLooper;
.super Ljava/lang/Object;
.source "PreviewLooper.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$BufferSink;


# static fields
.field private static final FRAME_SLOP_TIME_MS:J = 0x5L

.field private static final LARGE_TEXT_SIZE:I = 0x14

.field private static final SMALL_TEXT_SIZE:I = 0x10

.field private static final TEXT_BUFFER_SIZE:I = 0x4


# instance fields
.field private activeProcessor:I

.field private allPreviewProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/nonstop/FrameProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

.field private delayedRequestPending:Z

.field private final emptyLines:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private firstRun:Z

.field private final frameRequestTimer:Lcom/google/android/apps/unveil/env/Stopwatch;

.field private final handler:Landroid/os/Handler;

.field private final interFrameDelayMs:J

.field private final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

.field private numPreviewFrames:I

.field private final paint:Landroid/graphics/Paint;

.field private volatile pauseRequested:Z

.field private final previewFrameSize:Lcom/google/android/apps/unveil/env/Size;

.field private final processingChains:[Lcom/google/android/apps/unveil/nonstop/ProcessingChain;

.field private rotation:I

.field private volatile running:Z

.field private final uiThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/sensors/CameraManager;IFI)V
    .registers 13
    .parameter "cameraManager"
    .parameter "rotation"
    .parameter "targetFps"
    .parameter "numThreads"

    .prologue
    const/4 v7, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v5, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 68
    iput-boolean v7, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->delayedRequestPending:Z

    .line 77
    const/4 v5, -0x1

    iput v5, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->activeProcessor:I

    .line 82
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->paint:Landroid/graphics/Paint;

    .line 83
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->emptyLines:Ljava/util/Vector;

    .line 92
    iput-object p1, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->uiThread:Ljava/lang/Thread;

    .line 95
    iput p2, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->rotation:I

    .line 97
    new-instance v5, Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-direct {v5}, Lcom/google/android/apps/unveil/env/Stopwatch;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->frameRequestTimer:Lcom/google/android/apps/unveil/env/Stopwatch;

    .line 99
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->firstRun:Z

    .line 100
    iput-boolean v7, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->running:Z

    .line 102
    iput-boolean v7, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->delayedRequestPending:Z

    .line 103
    const/high16 v5, 0x447a

    div-float/2addr v5, p3

    float-to-long v5, v5

    iput-wide v5, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->interFrameDelayMs:J

    .line 105
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getPreviewSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->previewFrameSize:Lcom/google/android/apps/unveil/env/Size;

    .line 107
    new-array v5, p4, [Lcom/google/android/apps/unveil/nonstop/ProcessingChain;

    iput-object v5, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->processingChains:[Lcom/google/android/apps/unveil/nonstop/ProcessingChain;

    .line 109
    iput p2, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->rotation:I

    .line 111
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->handler:Landroid/os/Handler;

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, lastChain:Lcom/google/android/apps/unveil/nonstop/ProcessingChain;
    add-int/lit8 v2, p4, -0x1

    .local v2, level:I
    move-object v1, v0

    .end local v0           #lastChain:Lcom/google/android/apps/unveil/nonstop/ProcessingChain;
    .local v1, lastChain:Lcom/google/android/apps/unveil/nonstop/ProcessingChain;
    :goto_53
    if-lez v2, :cond_7c

    .line 118
    rsub-int/lit8 v5, v2, 0x5

    const/4 v6, 0x5

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 119
    .local v4, priority:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ProcessingThread "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, name:Ljava/lang/String;
    new-instance v0, Lcom/google/android/apps/unveil/nonstop/ProcessingThread;

    invoke-direct {v0, v3, v4, v1}, Lcom/google/android/apps/unveil/nonstop/ProcessingThread;-><init>(Ljava/lang/String;ILcom/google/android/apps/unveil/nonstop/ProcessingChain;)V

    .line 121
    .end local v1           #lastChain:Lcom/google/android/apps/unveil/nonstop/ProcessingChain;
    .restart local v0       #lastChain:Lcom/google/android/apps/unveil/nonstop/ProcessingChain;
    iget-object v5, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->processingChains:[Lcom/google/android/apps/unveil/nonstop/ProcessingChain;

    aput-object v0, v5, v2

    .line 114
    add-int/lit8 v2, v2, -0x1

    move-object v1, v0

    .end local v0           #lastChain:Lcom/google/android/apps/unveil/nonstop/ProcessingChain;
    .restart local v1       #lastChain:Lcom/google/android/apps/unveil/nonstop/ProcessingChain;
    goto :goto_53

    .line 123
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #priority:I
    :cond_7c
    iget-object v5, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->processingChains:[Lcom/google/android/apps/unveil/nonstop/ProcessingChain;

    new-instance v6, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;

    invoke-direct {v6, v1}, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;-><init>(Lcom/google/android/apps/unveil/nonstop/ProcessingChain;)V

    aput-object v6, v5, v7

    .line 124
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/apps/unveil/nonstop/PreviewLooper;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->delayedRequestPending:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/unveil/nonstop/PreviewLooper;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->requestFrameDelayed()V

    return-void
.end method

.method private initAllProcessors(Lcom/google/android/apps/unveil/env/Size;)V
    .registers 6
    .parameter "viewSize"

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->waitUntilNonUiThreadsNotProcessing()V

    .line 317
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->getAllProcessors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;

    .line 318
    .local v1, processor:Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->previewFrameSize:Lcom/google/android/apps/unveil/env/Size;

    iget v3, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->rotation:I

    invoke-virtual {v1, v2, p1, v3}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->init(Lcom/google/android/apps/unveil/env/Size;Lcom/google/android/apps/unveil/env/Size;I)V

    goto :goto_b

    .line 320
    .end local v1           #processor:Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
    :cond_1f
    return-void
.end method

.method private pauseAllProcessors()V
    .registers 4

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->waitUntilNonUiThreadsNotProcessing()V

    .line 331
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->getAllProcessors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;

    .line 332
    .local v1, processor:Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
    invoke-virtual {v1}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->pause()V

    goto :goto_b

    .line 334
    .end local v1           #processor:Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
    :cond_1b
    return-void
.end method

.method private pauseIfRequested()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 227
    iget-boolean v1, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->pauseRequested:Z

    if-nez v1, :cond_6

    .line 236
    :goto_5
    return v0

    .line 231
    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/sensors/CameraManager;->requestOneFrame(Landroid/hardware/Camera$PreviewCallback;)V

    .line 232
    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->waitUntilNonUiThreadsNotProcessing()V

    .line 233
    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->runQueuedRunnables()V

    .line 234
    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->pauseAllProcessors()V

    .line 235
    iput-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->running:Z

    .line 236
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private declared-synchronized requestFrameDelayed()V
    .registers 7

    .prologue
    .line 153
    monitor-enter p0

    :try_start_1
    iget-boolean v4, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->delayedRequestPending:Z

    if-nez v4, :cond_9

    iget-boolean v4, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->running:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_29

    if-nez v4, :cond_b

    .line 176
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 156
    :cond_b
    const/4 v4, 0x1

    :try_start_c
    iput-boolean v4, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->delayedRequestPending:Z

    .line 158
    iget-object v4, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->frameRequestTimer:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v4}, Lcom/google/android/apps/unveil/env/Stopwatch;->getElapsedMilliseconds()J

    move-result-wide v0

    .line 159
    .local v0, timeSinceLastFrameRequest:J
    iget-wide v4, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->interFrameDelayMs:J

    sub-long v2, v4, v0

    .line 161
    .local v2, timeTillNextFrameRequest:J
    const-wide/16 v4, 0x5

    cmp-long v4, v2, v4

    if-lez v4, :cond_2c

    .line 164
    iget-object v4, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/apps/unveil/nonstop/PreviewLooper$1;

    invoke-direct {v5, p0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper$1;-><init>(Lcom/google/android/apps/unveil/nonstop/PreviewLooper;)V

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_29

    goto :goto_9

    .line 153
    .end local v0           #timeSinceLastFrameRequest:J
    .end local v2           #timeTillNextFrameRequest:J
    :catchall_29
    move-exception v4

    monitor-exit p0

    throw v4

    .line 173
    .restart local v0       #timeSinceLastFrameRequest:J
    .restart local v2       #timeTillNextFrameRequest:J
    :cond_2c
    :try_start_2c
    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->requestNextFrame()V

    .line 174
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->delayedRequestPending:Z
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_29

    goto :goto_9
.end method

.method private requestNextFrame()V
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->requestOneFrame(Landroid/hardware/Camera$PreviewCallback;)V

    .line 183
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->frameRequestTimer:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/Stopwatch;->reset()V

    .line 184
    return-void
.end method

.method private runQueuedRunnables()V
    .registers 8

    .prologue
    .line 245
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v4, runnables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->processingChains:[Lcom/google/android/apps/unveil/nonstop/ProcessingChain;

    .local v0, arr$:[Lcom/google/android/apps/unveil/nonstop/ProcessingChain;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_9
    if-ge v1, v2, :cond_13

    aget-object v5, v0, v1

    .line 247
    .local v5, thread:Lcom/google/android/apps/unveil/nonstop/ProcessingChain;
    invoke-virtual {v5, v4}, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->pollRunnables(Ljava/util/Collection;)V

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 250
    .end local v5           #thread:Lcom/google/android/apps/unveil/nonstop/ProcessingChain;
    :cond_13
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 251
    .local v3, runnable:Ljava/lang/Runnable;
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_17

    .line 253
    .end local v3           #runnable:Ljava/lang/Runnable;
    :cond_27
    return-void
.end method

.method private startAllProcessors()V
    .registers 4

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->waitUntilNonUiThreadsNotProcessing()V

    .line 324
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->getAllProcessors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;

    .line 325
    .local v1, processor:Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
    invoke-virtual {v1}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->start()V

    goto :goto_b

    .line 327
    .end local v1           #processor:Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
    :cond_1b
    return-void
.end method

.method public static supportNonstopFrameProcessing(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 476
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    .line 477
    .local v0, limits:I
    const/16 v1, 0xc

    if-lt v0, v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private waitUntilNonUiThreadsNotProcessing()V
    .registers 3

    .prologue
    .line 359
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->processingChains:[Lcom/google/android/apps/unveil/nonstop/ProcessingChain;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 360
    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->processingChains:[Lcom/google/android/apps/unveil/nonstop/ProcessingChain;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->blockUntilReadyForFrame()V

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 362
    :cond_10
    return-void
.end method


# virtual methods
.method public addPreviewProcessor(Lcom/google/android/apps/unveil/nonstop/FrameProcessor;I)V
    .registers 5
    .parameter "handler"
    .parameter "level"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->processingChains:[Lcom/google/android/apps/unveil/nonstop/ProcessingChain;

    aget-object v1, v0, p2

    monitor-enter v1

    .line 128
    :try_start_5
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->processingChains:[Lcom/google/android/apps/unveil/nonstop/ProcessingChain;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->addProcessor(Lcom/google/android/apps/unveil/nonstop/FrameProcessor;)V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->allPreviewProcessors:Ljava/util/List;

    .line 130
    monitor-exit v1

    .line 131
    return-void

    .line 130
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public changeMode(Z)Z
    .registers 13
    .parameter "up"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 365
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->getAllProcessors()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 366
    .local v4, numProcessors:I
    iget v10, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->activeProcessor:I

    if-eqz p1, :cond_41

    move v7, v8

    :goto_f
    add-int/2addr v7, v10

    iput v7, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->activeProcessor:I

    .line 368
    add-int/lit8 v3, v4, 0x2

    .line 369
    .local v3, numChoices:I
    iget v7, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->activeProcessor:I

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v7, v3

    rem-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->activeProcessor:I

    .line 371
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->getAllProcessors()Ljava/util/List;

    move-result-object v6

    .line 372
    .local v6, processors:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/nonstop/FrameProcessor;>;"
    iget v7, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->activeProcessor:I

    if-ne v7, v4, :cond_43

    move v0, v8

    .line 373
    .local v0, allActive:Z
    :goto_27
    const/4 v1, 0x0

    .local v1, i:I
    :goto_28
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_47

    .line 374
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;

    .line 375
    .local v5, processor:Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
    if-nez v0, :cond_3a

    iget v7, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->activeProcessor:I

    if-ne v1, v7, :cond_45

    :cond_3a
    move v2, v8

    .line 376
    .local v2, isActive:Z
    :goto_3b
    invoke-virtual {v5, v2}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->setDebugActive(Z)V

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 366
    .end local v0           #allActive:Z
    .end local v1           #i:I
    .end local v2           #isActive:Z
    .end local v3           #numChoices:I
    .end local v5           #processor:Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
    .end local v6           #processors:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/nonstop/FrameProcessor;>;"
    :cond_41
    const/4 v7, -0x1

    goto :goto_f

    .restart local v3       #numChoices:I
    .restart local v6       #processors:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/nonstop/FrameProcessor;>;"
    :cond_43
    move v0, v9

    .line 372
    goto :goto_27

    .restart local v0       #allActive:Z
    .restart local v1       #i:I
    .restart local v5       #processor:Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
    :cond_45
    move v2, v9

    .line 375
    goto :goto_3b

    .line 379
    .end local v5           #processor:Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
    :cond_47
    iget v7, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->activeProcessor:I

    if-ltz v7, :cond_4c

    :goto_4b
    return v8

    :cond_4c
    move v8, v9

    goto :goto_4b
.end method

.method public drawDebug(Landroid/graphics/Canvas;)V
    .registers 25
    .parameter "canvas"

    .prologue
    .line 383
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->activeProcessor:I

    move/from16 v19, v0

    if-gez v19, :cond_9

    .line 465
    :cond_8
    return-void

    .line 387
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->getAllProcessors()Ljava/util/List;

    move-result-object v13

    .line 388
    .local v13, processors:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/nonstop/FrameProcessor;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v11

    .line 391
    .local v11, numProcessors:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_12
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_46

    .line 392
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->activeProcessor:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v0, v11, :cond_2e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->activeProcessor:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v6, v0, :cond_41

    :cond_2e
    const/4 v7, 0x1

    .line 393
    .local v7, isActive:Z
    :goto_2f
    if-eqz v7, :cond_3e

    .line 394
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;

    .line 395
    .local v12, processor:Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
    monitor-enter v12

    .line 396
    :try_start_38
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->drawDebug(Landroid/graphics/Canvas;)V

    .line 397
    monitor-exit v12

    .line 391
    .end local v12           #processor:Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
    :cond_3e
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 392
    .end local v7           #isActive:Z
    :cond_41
    const/4 v7, 0x0

    goto :goto_2f

    .line 397
    .restart local v7       #isActive:Z
    .restart local v12       #processor:Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
    :catchall_43
    move-exception v19

    monitor-exit v12
    :try_end_45
    .catchall {:try_start_38 .. :try_end_45} :catchall_43

    throw v19

    .line 401
    .end local v7           #isActive:Z
    .end local v12           #processor:Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
    :cond_46
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->activeProcessor:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v0, v11, :cond_18c

    const/4 v5, 0x1

    .line 404
    .local v5, allActive:Z
    :goto_51
    const/16 v17, 0x0

    .line 405
    .local v17, xPos:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    .line 406
    .local v16, startingYPos:I
    const/4 v6, 0x0

    :goto_5e
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_8

    .line 408
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;

    .line 410
    .restart local v12       #processor:Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
    if-nez v5, :cond_78

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->activeProcessor:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v6, v0, :cond_18f

    :cond_78
    const/4 v7, 0x1

    .line 413
    .restart local v7       #isActive:Z
    :goto_79
    if-eqz v7, :cond_195

    .line 414
    monitor-enter v12

    .line 415
    :try_start_7c
    invoke-virtual {v12}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->getDebugText()Ljava/util/Vector;

    move-result-object v9

    .line 416
    .local v9, lines:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    monitor-exit v12
    :try_end_81
    .catchall {:try_start_7c .. :try_end_81} :catchall_192

    .line 421
    :goto_81
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v15

    .line 425
    .local v15, shadedWidth:I
    if-eqz v5, :cond_19b

    const/16 v19, 0x2

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 430
    .local v10, numLines:I
    :goto_91
    if-eqz v7, :cond_1a6

    const/16 v19, 0x1

    :goto_95
    add-int v19, v19, v10

    mul-int/lit8 v19, v19, 0x14

    add-int/lit8 v14, v19, 0x1c

    .line 433
    .local v14, shadedHeight:I
    sub-int v16, v16, v14

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->paint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/high16 v20, -0x100

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setColor(I)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->paint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/16 v20, 0x64

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 438
    move/from16 v18, v16

    .line 439
    .local v18, yPos:I
    new-instance v19, Landroid/graphics/Rect;

    const/16 v20, 0x0

    add-int/lit8 v21, v15, 0x0

    add-int v22, v18, v14

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->paint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->paint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/16 v20, 0xff

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->paint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->paint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    if-eqz v7, :cond_1aa

    const v19, -0xff0001

    :goto_fa
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->paint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/high16 v20, 0x41a0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 447
    add-int/lit8 v18, v18, 0x18

    .line 448
    invoke-virtual {v12}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->getHeaderText()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->paint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 450
    if-eqz v7, :cond_1b1

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->paint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setColor(I)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->paint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/high16 v20, 0x4180

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 455
    add-int/lit8 v18, v18, 0x14

    .line 456
    invoke-virtual {v12}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->getTimeStats()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->paint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 457
    const/4 v8, 0x0

    .local v8, lineNum:I
    :goto_165
    if-ge v8, v10, :cond_1af

    .line 458
    add-int/lit8 v18, v18, 0x14

    .line 459
    invoke-virtual {v9, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const/16 v20, 0x0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->paint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 457
    add-int/lit8 v8, v8, 0x1

    goto :goto_165

    .line 401
    .end local v5           #allActive:Z
    .end local v7           #isActive:Z
    .end local v8           #lineNum:I
    .end local v9           #lines:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v10           #numLines:I
    .end local v12           #processor:Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
    .end local v14           #shadedHeight:I
    .end local v15           #shadedWidth:I
    .end local v16           #startingYPos:I
    .end local v17           #xPos:I
    .end local v18           #yPos:I
    :cond_18c
    const/4 v5, 0x0

    goto/16 :goto_51

    .line 410
    .restart local v5       #allActive:Z
    .restart local v12       #processor:Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
    .restart local v16       #startingYPos:I
    .restart local v17       #xPos:I
    :cond_18f
    const/4 v7, 0x0

    goto/16 :goto_79

    .line 416
    .restart local v7       #isActive:Z
    :catchall_192
    move-exception v19

    :try_start_193
    monitor-exit v12
    :try_end_194
    .catchall {:try_start_193 .. :try_end_194} :catchall_192

    throw v19

    .line 418
    :cond_195
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->emptyLines:Ljava/util/Vector;

    .restart local v9       #lines:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    goto/16 :goto_81

    .line 425
    .restart local v15       #shadedWidth:I
    :cond_19b
    if-eqz v7, :cond_1a3

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v10

    goto/16 :goto_91

    :cond_1a3
    const/4 v10, 0x0

    goto/16 :goto_91

    .line 430
    .restart local v10       #numLines:I
    :cond_1a6
    const/16 v19, 0x0

    goto/16 :goto_95

    .line 445
    .restart local v14       #shadedHeight:I
    .restart local v18       #yPos:I
    :cond_1aa
    const v19, -0xffff01

    goto/16 :goto_fa

    .line 462
    .restart local v8       #lineNum:I
    :cond_1af
    add-int/lit8 v18, v18, 0x4

    .line 406
    .end local v8           #lineNum:I
    :cond_1b1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5e
.end method

.method public getAllProcessors()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/nonstop/FrameProcessor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v4, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->allPreviewProcessors:Ljava/util/List;

    if-nez v4, :cond_1f

    .line 138
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->allPreviewProcessors:Ljava/util/List;

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->processingChains:[Lcom/google/android/apps/unveil/nonstop/ProcessingChain;

    .local v0, arr$:[Lcom/google/android/apps/unveil/nonstop/ProcessingChain;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_f
    if-ge v1, v2, :cond_1f

    aget-object v3, v0, v1

    .line 141
    .local v3, thread:Lcom/google/android/apps/unveil/nonstop/ProcessingChain;
    iget-object v4, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->allPreviewProcessors:Ljava/util/List;

    invoke-virtual {v3}, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->getProcessors()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 144
    .end local v0           #arr$:[Lcom/google/android/apps/unveil/nonstop/ProcessingChain;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #thread:Lcom/google/android/apps/unveil/nonstop/ProcessingChain;
    :cond_1f
    iget-object v4, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->allPreviewProcessors:Ljava/util/List;

    return-object v4
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->running:Z

    return v0
.end method

.method public declared-synchronized onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 11
    .parameter "rawData"
    .parameter "camera"

    .prologue
    .line 188
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->running:Z

    if-nez v1, :cond_17

    .line 189
    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Dropping frame due to pause event."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/sensors/CameraManager;->requestOneFrame(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_46

    .line 224
    :cond_15
    :goto_15
    monitor-exit p0

    return-void

    .line 195
    :cond_17
    :try_start_17
    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->pauseIfRequested()Z

    move-result v1

    if-nez v1, :cond_15

    .line 201
    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->runQueuedRunnables()V

    .line 203
    iget v1, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->numPreviewFrames:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->numPreviewFrames:I

    .line 206
    new-instance v0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;

    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->previewFrameSize:Lcom/google/android/apps/unveil/env/Size;

    iget v3, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->numPreviewFrames:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget v6, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->rotation:I

    move-object v1, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;-><init>([BLcom/google/android/apps/unveil/env/Size;IJILcom/google/android/apps/unveil/nonstop/TimestampedFrame$BufferSink;)V

    .line 215
    .local v0, previewFrame:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;
    invoke-virtual {v0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->addReference()V

    .line 220
    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->processingChains:[Lcom/google/android/apps/unveil/nonstop/ProcessingChain;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->sendFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V

    .line 223
    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->requestFrameDelayed()V
    :try_end_45
    .catchall {:try_start_17 .. :try_end_45} :catchall_46

    goto :goto_15

    .line 188
    .end local v0           #previewFrame:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;
    :catchall_46
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized pauseLoop()V
    .registers 8

    .prologue
    .line 291
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v5, "pauseLoop"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    iget-boolean v4, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->running:Z

    if-nez v4, :cond_1b

    .line 293
    iget-object v4, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v5, "Pausing a PreviewLooper that was already paused."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_38

    .line 308
    :cond_19
    :goto_19
    monitor-exit p0

    return-void

    .line 297
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->processingChains:[Lcom/google/android/apps/unveil/nonstop/ProcessingChain;

    .local v0, arr$:[Lcom/google/android/apps/unveil/nonstop/ProcessingChain;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1f
    if-ge v1, v2, :cond_29

    aget-object v3, v0, v1

    .line 298
    .local v3, processingChain:Lcom/google/android/apps/unveil/nonstop/ProcessingChain;
    invoke-virtual {v3}, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->stopSoon()V

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 301
    .end local v3           #processingChain:Lcom/google/android/apps/unveil/nonstop/ProcessingChain;
    :cond_29
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->pauseRequested:Z

    .line 305
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->uiThread:Ljava/lang/Thread;

    if-ne v4, v5, :cond_19

    .line 306
    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->pauseIfRequested()Z
    :try_end_37
    .catchall {:try_start_1b .. :try_end_37} :catchall_38

    goto :goto_19

    .line 291
    .end local v0           #arr$:[Lcom/google/android/apps/unveil/nonstop/ProcessingChain;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_38
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public returnBuffer([B)V
    .registers 3
    .parameter "rawData"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/sensors/CameraManager;->addPreviewBuffer([B)V

    .line 242
    return-void
.end method

.method public declared-synchronized shutdown()V
    .registers 9

    .prologue
    .line 341
    monitor-enter p0

    :try_start_1
    iget-object v5, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v6, "shutdown"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->pauseLoop()V

    .line 345
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->processingChains:[Lcom/google/android/apps/unveil/nonstop/ProcessingChain;

    .local v0, arr$:[Lcom/google/android/apps/unveil/nonstop/ProcessingChain;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_12
    if-ge v1, v2, :cond_1c

    aget-object v3, v0, v1

    .line 346
    .local v3, processingChain:Lcom/google/android/apps/unveil/nonstop/ProcessingChain;
    invoke-virtual {v3}, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->shutdown()V

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 349
    .end local v3           #processingChain:Lcom/google/android/apps/unveil/nonstop/ProcessingChain;
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->getAllProcessors()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;

    .line 350
    .local v4, processor:Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
    invoke-virtual {v4}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;->shutdown()V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_34

    goto :goto_24

    .line 341
    .end local v0           #arr$:[Lcom/google/android/apps/unveil/nonstop/ProcessingChain;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #len$:I
    .end local v4           #processor:Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
    :catchall_34
    move-exception v5

    monitor-exit p0

    throw v5

    .line 352
    .restart local v0       #arr$:[Lcom/google/android/apps/unveil/nonstop/ProcessingChain;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #len$:I
    :cond_37
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized startLoop(Lcom/google/android/apps/unveil/env/Size;)V
    .registers 10
    .parameter "viewSize"

    .prologue
    .line 259
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v5, "startLoop with size %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    iget-boolean v4, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->running:Z

    if-eqz v4, :cond_27

    .line 261
    iget-object v4, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v5, "Starting a PreviewLooper that was already started, just resetting preview callback."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    iget-object v4, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/apps/unveil/sensors/CameraManager;->requestOneFrame(Landroid/hardware/Camera$PreviewCallback;)V

    .line 264
    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->requestNextFrame()V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_57

    .line 285
    :goto_25
    monitor-exit p0

    return-void

    .line 267
    :cond_27
    const/4 v4, 0x1

    :try_start_28
    iput-boolean v4, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->running:Z

    .line 268
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->pauseRequested:Z

    .line 270
    iget-object v4, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->frameRequestTimer:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v4}, Lcom/google/android/apps/unveil/env/Stopwatch;->start()V

    .line 271
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->delayedRequestPending:Z

    .line 273
    const/4 v4, 0x0

    iput v4, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->numPreviewFrames:I

    .line 275
    iget-boolean v4, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->firstRun:Z

    if-eqz v4, :cond_3f

    .line 276
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->initAllProcessors(Lcom/google/android/apps/unveil/env/Size;)V

    .line 278
    :cond_3f
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->firstRun:Z

    .line 280
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->processingChains:[Lcom/google/android/apps/unveil/nonstop/ProcessingChain;

    .local v0, arr$:[Lcom/google/android/apps/unveil/nonstop/ProcessingChain;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_46
    if-ge v1, v2, :cond_50

    aget-object v3, v0, v1

    .line 281
    .local v3, processingChain:Lcom/google/android/apps/unveil/nonstop/ProcessingChain;
    invoke-virtual {v3}, Lcom/google/android/apps/unveil/nonstop/ProcessingChain;->start()V

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 283
    .end local v3           #processingChain:Lcom/google/android/apps/unveil/nonstop/ProcessingChain;
    :cond_50
    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->startAllProcessors()V

    .line 284
    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/PreviewLooper;->requestNextFrame()V
    :try_end_56
    .catchall {:try_start_28 .. :try_end_56} :catchall_57

    goto :goto_25

    .line 259
    .end local v0           #arr$:[Lcom/google/android/apps/unveil/nonstop/ProcessingChain;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_57
    move-exception v4

    monitor-exit p0

    throw v4
.end method
