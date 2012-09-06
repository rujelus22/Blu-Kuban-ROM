.class public Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;
.super Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
.source "ImageBlurProcessor.java"

# interfaces
.implements Lcom/google/android/apps/unveil/sensors/CameraManager$FocusCallback;


# static fields
.field private static final BRIGHTNESS_FACTOR:F = 1.2f

.field private static final DISTANCE_WEIGHTING_POWER:F = 1.5f

.field private static final FATIGUE_BASE_MS:J = 0xfa0L

.field private static final FATIGUE_RESET_DIFF_PERCENT:I = 0x1e

.field protected static final FOCUS_DELAY_MS:J = 0x96L

.field private static final FOCUS_FATIGUE_FACTOR:F = 1.5f

.field private static final MAX_FOCUSES_WITH_SAME_IMAGE:I = 0x3

.field protected static final MAX_TIME_BETWEEN_FOCUS_REQUESTS_MS:J = 0x1f40L

.field protected static final MIN_DIFF_PERCENT_FOCUS:I = 0x8

.field protected static final MIN_TIME_BETWEEN_EXPOSURE_FOCUS_REQUESTS_MS:J = 0x64L

.field private static final SCALE_INPUT_FACTOR:F = 1.5f


# instance fields
.field private final cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

.field private final consecutiveBlurTimer:Lcom/google/android/apps/unveil/env/Stopwatch;

.field private final debugText:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private focusFatigue:J

.field private focusedSignature:[I

.field private focusesWithSameImage:I

.field private volatile justFocused:Z

.field private lastBlurDuration:J

.field private lastBuckets:[I

.field private lastDiffDuration:J

.field private lastDiffPercent:I

.field private final lastFocusTimer:Lcom/google/android/apps/unveil/env/Stopwatch;

.field private lastFrameBlurred:Z

.field private final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

.field private maxTimeBasedOffHistogram:J

.field private requestedFirstFocus:Z

.field private runSinceLastTime:Z


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/sensors/CameraManager;)V
    .registers 5
    .parameter "cameraManager"

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;-><init>()V

    .line 23
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 93
    new-instance v0, Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/Stopwatch;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastFocusTimer:Lcom/google/android/apps/unveil/env/Stopwatch;

    .line 95
    new-instance v0, Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/Stopwatch;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->consecutiveBlurTimer:Lcom/google/android/apps/unveil/env/Stopwatch;

    .line 99
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->debugText:Ljava/util/Vector;

    .line 102
    iput-boolean v2, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->requestedFirstFocus:Z

    .line 106
    iput-boolean v2, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->justFocused:Z

    .line 107
    iput v2, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->focusesWithSameImage:I

    .line 109
    iput v2, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastDiffPercent:I

    .line 110
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastDiffDuration:J

    .line 116
    iput-boolean v2, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->runSinceLastTime:Z

    .line 134
    iput-object p1, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    .line 135
    return-void
.end method

.method private getInterFocusDelayFromExposure()J
    .registers 12

    .prologue
    .line 336
    iget-object v7, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastBuckets:[I

    if-nez v7, :cond_11

    .line 337
    iget-object v7, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v8, "Hopefully this is a test!"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    const-wide/16 v7, 0x1f40

    .line 369
    :goto_10
    return-wide v7

    .line 341
    :cond_11
    iget-object v7, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastBuckets:[I

    array-length v5, v7

    .line 344
    .local v5, numBuckets:I
    iget-object v7, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastBuckets:[I

    invoke-static {v7}, Lcom/google/android/apps/unveil/env/NumberUtils;->getMeanIndex([I)F

    move-result v7

    const/high16 v8, 0x3f80

    add-float v4, v7, v8

    .line 346
    .local v4, meanBucket:F
    int-to-float v7, v5

    const/high16 v8, 0x4000

    div-float v1, v7, v8

    .line 347
    .local v1, centerBucket:F
    sub-float v7, v4, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 350
    .local v0, bucketDist:F
    cmpl-float v7, v4, v1

    if-lez v7, :cond_31

    .line 351
    const v7, 0x3f99999a

    mul-float/2addr v0, v7

    .line 355
    :cond_31
    int-to-float v7, v5

    sub-float v3, v7, v1

    .line 359
    .local v3, maxDist:F
    const/high16 v7, 0x3fc0

    mul-float/2addr v7, v0

    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 363
    const v2, 0x45f6e000

    .line 367
    .local v2, delaySpread:F
    div-float v7, v0, v3

    float-to-double v7, v7

    const-wide/high16 v9, 0x3ff8

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v6, v7

    .line 369
    .local v6, spreadFactor:F
    const/high16 v7, 0x45fa

    const v8, 0x45f6e000

    mul-float/2addr v8, v6

    sub-float/2addr v7, v8

    float-to-long v7, v7

    goto :goto_10
.end method

.method private logHighFreq(Ljava/lang/String;)V
    .registers 2
    .parameter "string"

    .prologue
    .line 295
    return-void
.end method

.method private shouldFocusOnFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)Z
    .registers 10
    .parameter "frame"

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 222
    iget-object v4, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v4}, Lcom/google/android/apps/unveil/sensors/CameraManager;->isFocusSupported()Z

    move-result v4

    if-nez v4, :cond_12

    .line 223
    const-string v3, "Focus not supported!"

    invoke-direct {p0, v3}, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->logHighFreq(Ljava/lang/String;)V

    .line 288
    :goto_11
    return v2

    .line 227
    :cond_12
    iget-boolean v4, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->requestedFirstFocus:Z

    if-nez v4, :cond_1d

    .line 228
    const-string v2, "Requesting first focus!"

    invoke-direct {p0, v2}, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->logHighFreq(Ljava/lang/String;)V

    move v2, v3

    .line 229
    goto :goto_11

    .line 234
    :cond_1d
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->updateDiffPercent(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V

    .line 235
    iget v4, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastDiffPercent:I

    const/16 v5, 0x1e

    if-le v4, v5, :cond_2a

    .line 236
    const-wide/16 v4, -0x96

    iput-wide v4, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->focusFatigue:J

    .line 240
    :cond_2a
    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->getInterFocusDelayFromExposure()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->maxTimeBasedOffHistogram:J

    .line 242
    iget-object v4, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastFocusTimer:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v4}, Lcom/google/android/apps/unveil/env/Stopwatch;->getElapsedMilliseconds()J

    move-result-wide v0

    .line 243
    .local v0, timeSinceLastFocus:J
    iget-wide v4, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->focusFatigue:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_42

    .line 244
    const-string v3, "Not enough time has gone by, not focusing."

    invoke-direct {p0, v3}, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->logHighFreq(Ljava/lang/String;)V

    goto :goto_11

    .line 248
    :cond_42
    iget v4, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastDiffPercent:I

    if-lt v4, v6, :cond_48

    .line 252
    iput v2, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->focusesWithSameImage:I

    .line 257
    :cond_48
    iget v4, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->focusesWithSameImage:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_53

    .line 258
    const-string v3, "Focused too many times on this frame!"

    invoke-direct {p0, v3}, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->logHighFreq(Ljava/lang/String;)V

    goto :goto_11

    .line 264
    :cond_53
    iget v4, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastDiffPercent:I

    if-gt v4, v6, :cond_5b

    iget-boolean v4, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastFrameBlurred:Z

    if-eqz v4, :cond_7b

    .line 265
    :cond_5b
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->updateBlurred(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V

    .line 267
    iget-boolean v4, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastFrameBlurred:Z

    if-nez v4, :cond_68

    .line 270
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getSignature()[I

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->focusedSignature:[I

    .line 275
    :cond_68
    iget-object v4, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->consecutiveBlurTimer:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v4}, Lcom/google/android/apps/unveil/env/Stopwatch;->getElapsedMilliseconds()J

    move-result-wide v4

    const-wide/16 v6, 0x96

    cmp-long v4, v4, v6

    if-lez v4, :cond_7b

    .line 276
    const-string v2, "Focusing based on image difference."

    invoke-direct {p0, v2}, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->logHighFreq(Ljava/lang/String;)V

    move v2, v3

    .line 277
    goto :goto_11

    .line 282
    :cond_7b
    iget-wide v4, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->maxTimeBasedOffHistogram:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_88

    .line 283
    const-string v2, "Focusing based on exposure."

    invoke-direct {p0, v2}, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->logHighFreq(Ljava/lang/String;)V

    move v2, v3

    .line 284
    goto :goto_11

    .line 287
    :cond_88
    const-string v3, "No need to focus."

    invoke-direct {p0, v3}, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->logHighFreq(Ljava/lang/String;)V

    goto :goto_11
.end method

.method private updateBlurred(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V
    .registers 6
    .parameter "frame"

    .prologue
    .line 314
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    .line 316
    .local v0, startTime:J
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->isBlurred()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastFrameBlurred:Z

    .line 317
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastBlurDuration:J

    .line 320
    iget-boolean v2, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastFrameBlurred:Z

    if-eqz v2, :cond_1b

    .line 321
    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->consecutiveBlurTimer:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/Stopwatch;->start()V

    .line 326
    :goto_1a
    return-void

    .line 323
    :cond_1b
    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->consecutiveBlurTimer:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/Stopwatch;->stop()V

    .line 324
    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->consecutiveBlurTimer:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/Stopwatch;->reset()V

    goto :goto_1a
.end method

.method private updateDiffPercent(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V
    .registers 6
    .parameter "frame"

    .prologue
    .line 298
    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->focusedSignature:[I

    if-nez v2, :cond_9

    .line 299
    const/16 v2, 0x64

    iput v2, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastDiffPercent:I

    .line 310
    :goto_8
    return-void

    .line 303
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    .line 307
    .local v0, startTime:J
    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->focusedSignature:[I

    invoke-virtual {p1, v2}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->diffSignature([I)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastDiffPercent:I

    .line 309
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastDiffDuration:J

    goto :goto_8
.end method


# virtual methods
.method public declared-synchronized getDebugText()Ljava/util/Vector;
    .registers 10
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
    .line 374
    monitor-enter p0

    :try_start_1
    iget-boolean v5, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->runSinceLastTime:Z

    if-eqz v5, :cond_14c

    .line 375
    iget-object v5, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->debugText:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->clear()V

    .line 376
    iget-object v6, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->debugText:Ljava/util/Vector;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastFrameBlurred:Z

    if-eqz v5, :cond_8c

    const-string v5, "blurred"

    :goto_17
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v7, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastBlurDuration:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "ms"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v5, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->debugText:Ljava/util/Vector;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lastDiffPercent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastDiffPercent:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastDiffDuration:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms, num same: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->focusesWithSameImage:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 381
    const-string v1, ""

    .line 382
    .local v1, bucketText:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastBuckets:[I

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_6c
    if-ge v2, v4, :cond_8f

    aget v3, v0, v2

    .line 383
    .local v3, item:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-int/lit8 v6, v3, 0x64

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 382
    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    .line 376
    .end local v0           #arr$:[I
    .end local v1           #bucketText:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #item:I
    .end local v4           #len$:I
    :cond_8c
    const-string v5, "focused"

    goto :goto_17

    .line 385
    .restart local v0       #arr$:[I
    .restart local v1       #bucketText:Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #len$:I
    :cond_8f
    iget-object v5, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->debugText:Ljava/util/Vector;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buckets: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v5, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->debugText:Ljava/util/Vector;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buckets median: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastBuckets:[I

    invoke-static {v7}, Lcom/google/android/apps/unveil/env/NumberUtils;->getMedianIndex([I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  mean: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastBuckets:[I

    invoke-static {v7}, Lcom/google/android/apps/unveil/env/NumberUtils;->getMeanIndex([I)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  stdDev: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastBuckets:[I

    invoke-static {v7}, Lcom/google/android/apps/unveil/env/NumberUtils;->getNormalizedStdDev([I)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v5, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->debugText:Ljava/util/Vector;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Since last focus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastFocusTimer:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v7}, Lcom/google/android/apps/unveil/env/Stopwatch;->getElapsedMilliseconds()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 391
    iget-object v5, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->debugText:Ljava/util/Vector;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exposure delay: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->maxTimeBasedOffHistogram:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v5, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->debugText:Ljava/util/Vector;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Focus fatigue: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->focusFatigue:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 395
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->runSinceLastTime:Z

    .line 397
    .end local v0           #arr$:[I
    .end local v1           #bucketText:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    :cond_14c
    iget-object v5, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->debugText:Ljava/util/Vector;
    :try_end_14e
    .catchall {:try_start_1 .. :try_end_14e} :catchall_150

    monitor-exit p0

    return-object v5

    .line 374
    :catchall_150
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method protected getProcessorType()Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;
    .registers 2

    .prologue
    .line 402
    sget-object v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;->IMAGE_BLUR_PROCESSOR:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    return-object v0
.end method

.method public isLastFrameBlurred()Z
    .registers 2

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastFrameBlurred:Z

    return v0
.end method

.method public onFocus(Z)V
    .registers 3
    .parameter "success"

    .prologue
    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->justFocused:Z

    .line 163
    return-void
.end method

.method protected declared-synchronized onProcessFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V
    .registers 5
    .parameter "frame"

    .prologue
    .line 175
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->runSinceLastTime:Z

    .line 178
    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/sensors/CameraManager;->isFocusing()Z

    move-result v0

    .line 179
    .local v0, isFocusing:Z
    invoke-virtual {p1, v0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->setTakenWhileFocusing(Z)V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_69

    .line 180
    if-eqz v0, :cond_11

    .line 218
    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    .line 184
    :cond_11
    :try_start_11
    iget-boolean v1, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->justFocused:Z

    if-eqz v1, :cond_39

    .line 185
    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastFocusTimer:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/env/Stopwatch;->reset()V

    .line 186
    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastFocusTimer:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/env/Stopwatch;->start()V

    .line 189
    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->consecutiveBlurTimer:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/env/Stopwatch;->stop()V

    .line 190
    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->consecutiveBlurTimer:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/env/Stopwatch;->reset()V

    .line 192
    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->focusedSignature:[I

    if-nez v1, :cond_36

    .line 193
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->focusesWithSameImage:I

    .line 194
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getSignature()[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->focusedSignature:[I

    .line 197
    :cond_36
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->justFocused:Z

    .line 201
    :cond_39
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getBucketDistribution()[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastBuckets:[I

    .line 203
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->shouldFocusOnFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 204
    iget v1, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastDiffPercent:I

    const/16 v2, 0x8

    if-gt v1, v2, :cond_6c

    .line 205
    iget v1, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->focusesWithSameImage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->focusesWithSameImage:I

    .line 210
    :goto_51
    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    monitor-enter v2
    :try_end_54
    .catchall {:try_start_11 .. :try_end_54} :catchall_69

    .line 212
    :try_start_54
    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/sensors/CameraManager;->isFocusing()Z

    move-result v1

    if-nez v1, :cond_64

    .line 213
    const-string v1, "Requesting focus."

    invoke-direct {p0, v1}, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->logHighFreq(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->requestFocus()V

    .line 216
    :cond_64
    monitor-exit v2

    goto :goto_f

    :catchall_66
    move-exception v1

    monitor-exit v2
    :try_end_68
    .catchall {:try_start_54 .. :try_end_68} :catchall_66

    :try_start_68
    throw v1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_69

    .line 175
    .end local v0           #isFocusing:Z
    :catchall_69
    move-exception v1

    monitor-exit p0

    throw v1

    .line 207
    .restart local v0       #isFocusing:Z
    :cond_6c
    const/4 v1, 0x0

    :try_start_6d
    iput-object v1, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->focusedSignature:[I
    :try_end_6f
    .catchall {:try_start_6d .. :try_end_6f} :catchall_69

    goto :goto_51
.end method

.method protected onStart()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 139
    iput-boolean v2, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->requestedFirstFocus:Z

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastFrameBlurred:Z

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->focusedSignature:[I

    .line 142
    iput v2, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastDiffPercent:I

    .line 143
    const-wide/16 v0, -0xfa0

    iput-wide v0, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->focusFatigue:J

    .line 144
    iput v2, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->focusesWithSameImage:I

    .line 145
    return-void
.end method

.method protected requestFocus()V
    .registers 8

    .prologue
    const/high16 v6, 0x45fa

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->requestedFirstFocus:Z

    .line 150
    const-wide/16 v0, -0xfa0

    iget-wide v2, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->focusFatigue:J

    iget-object v4, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->lastFocusTimer:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v4}, Lcom/google/android/apps/unveil/env/Stopwatch;->getElapsedMilliseconds()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->focusFatigue:J

    .line 152
    iget-wide v0, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->focusFatigue:J

    long-to-float v0, v0

    add-float/2addr v0, v6

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    sub-float/2addr v0, v6

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->focusFatigue:J

    .line 155
    const-wide/16 v0, 0x1f40

    iget-wide v2, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->focusFatigue:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->focusFatigue:J

    .line 157
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/ImageBlurProcessor;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/unveil/sensors/CameraManager;->focus(Lcom/google/android/apps/unveil/sensors/CameraManager$FocusCallback;)V

    .line 158
    return-void
.end method
