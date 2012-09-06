.class public Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;
.super Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
.source "StatusFrameProcessor.java"


# static fields
.field private static final CIRCULAR_QUEUE_SIZE:I = 0x28

.field private static final MAX_SUPPORTED_FPS:I = 0x28

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

.field private final circularQueue:[I

.field private currIndex:I

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

.field private final debugView:Lcom/google/android/apps/unveil/nonstop/DebugView;

.field final fpsBuckets:[I

.field private fpsString:Ljava/lang/String;

.field private final glDebugView:Lcom/google/android/apps/unveil/ui/GlOverlay;

.field private lastFrameTimestamp:J

.field private listener:Lcom/google/android/apps/unveil/sensors/UnveilSensor$Listener;

.field private numFrames:I

.field private final sensorProvider:Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;

.field private sensorValues:[F

.field private totalTime:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/unveil/sensors/CameraManager;Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;Lcom/google/android/apps/unveil/nonstop/DebugView;Lcom/google/android/apps/unveil/ui/GlOverlay;)V
    .registers 8
    .parameter "cameraManager"
    .parameter "sensorProvider"
    .parameter "debugView"
    .parameter "glDebugView"

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;-><init>()V

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->debugText:Ljava/util/Vector;

    .line 43
    const/16 v0, 0x28

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->circularQueue:[I

    .line 46
    const/16 v0, 0x29

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->fpsBuckets:[I

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->lastFrameTimestamp:J

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->fpsString:Ljava/lang/String;

    .line 50
    iput v2, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->numFrames:I

    .line 51
    iput v2, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->totalTime:I

    .line 52
    iput v2, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->currIndex:I

    .line 57
    iput-object p1, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    .line 58
    iput-object p2, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->sensorProvider:Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;

    .line 59
    iput-object p3, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->debugView:Lcom/google/android/apps/unveil/nonstop/DebugView;

    .line 60
    iput-object p4, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->glDebugView:Lcom/google/android/apps/unveil/ui/GlOverlay;

    .line 61
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;[F)[F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->sensorValues:[F

    return-object p1
.end method

.method private getFpsString()Ljava/lang/String;
    .registers 11

    .prologue
    const/16 v9, 0x28

    .line 164
    iget-object v6, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->fpsString:Ljava/lang/String;

    if-eqz v6, :cond_9

    .line 165
    iget-object v6, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->fpsString:Ljava/lang/String;

    .line 199
    :goto_8
    return-object v6

    .line 168
    :cond_9
    iget v6, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->numFrames:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 169
    .local v3, numValidFrames:I
    if-nez v3, :cond_14

    .line 170
    const-string v6, ""

    goto :goto_8

    .line 174
    :cond_14
    const/4 v6, 0x5

    new-array v5, v6, [Ljava/lang/Integer;

    .line 175
    .local v5, quartiles:[Ljava/lang/Integer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_18
    array-length v6, v5

    if-ge v2, v6, :cond_25

    .line 176
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 179
    :cond_25
    const/4 v0, 0x0

    .line 180
    .local v0, countSoFar:I
    const/4 v4, 0x0

    .line 181
    .local v4, quartileIndex:I
    const/4 v2, 0x0

    :goto_28
    if-gt v2, v9, :cond_47

    .line 182
    iget-object v6, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->fpsBuckets:[I

    aget v6, v6, v2

    if-nez v6, :cond_33

    .line 181
    :cond_30
    :goto_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 186
    :cond_33
    iget-object v6, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->fpsBuckets:[I

    aget v6, v6, v2

    add-int/2addr v0, v6

    .line 187
    mul-int v6, v4, v3

    div-int/lit8 v6, v6, 0x4

    if-lt v0, v6, :cond_30

    .line 188
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 189
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 193
    :cond_47
    const/high16 v6, 0x447a

    iget v7, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->totalTime:I

    int-to-float v7, v7

    int-to-float v8, v3

    div-float/2addr v7, v8

    div-float v1, v6, v7

    .line 195
    .local v1, fps:F
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x2

    invoke-static {v1, v7}, Lcom/google/android/apps/unveil/env/NumberUtils;->format(FI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-static {v7, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->currIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->fpsString:Ljava/lang/String;

    .line 199
    iget-object v6, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->fpsString:Ljava/lang/String;

    goto/16 :goto_8
.end method

.method private handleDelta(I)V
    .registers 9
    .parameter "delta"

    .prologue
    const/16 v6, 0x3e8

    const/16 v5, 0x28

    .line 116
    if-gtz p1, :cond_7

    .line 143
    :goto_6
    return-void

    .line 121
    :cond_7
    iget v3, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->numFrames:I

    if-le v3, v5, :cond_22

    .line 122
    iget-object v3, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->circularQueue:[I

    iget v4, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->currIndex:I

    aget v2, v3, v4

    .line 123
    .local v2, oldDelta:I
    div-int v1, v6, v2

    .line 124
    .local v1, fpsForOldFrame:I
    if-gt v1, v5, :cond_3d

    .line 125
    iget-object v3, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->fpsBuckets:[I

    aget v4, v3, v1

    add-int/lit8 v4, v4, -0x1

    aput v4, v3, v1

    .line 129
    :goto_1d
    iget v3, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->totalTime:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->totalTime:I

    .line 133
    .end local v1           #fpsForOldFrame:I
    .end local v2           #oldDelta:I
    :cond_22
    iget-object v3, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->circularQueue:[I

    iget v4, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->currIndex:I

    aput p1, v3, v4

    .line 134
    div-int v0, v6, p1

    .line 135
    .local v0, fpsForFrame:I
    if-gt v0, v5, :cond_46

    .line 136
    iget-object v3, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->fpsBuckets:[I

    aget v4, v3, v0

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v0

    .line 140
    :goto_34
    iget v3, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->totalTime:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->totalTime:I

    .line 142
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->fpsString:Ljava/lang/String;

    goto :goto_6

    .line 127
    .end local v0           #fpsForFrame:I
    .restart local v1       #fpsForOldFrame:I
    .restart local v2       #oldDelta:I
    :cond_3d
    iget-object v3, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->fpsBuckets:[I

    aget v4, v3, v5

    add-int/lit8 v4, v4, -0x1

    aput v4, v3, v5

    goto :goto_1d

    .line 138
    .end local v1           #fpsForOldFrame:I
    .end local v2           #oldDelta:I
    .restart local v0       #fpsForFrame:I
    :cond_46
    iget-object v3, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->fpsBuckets:[I

    aget v4, v3, v5

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v5

    goto :goto_34
.end method


# virtual methods
.method public declared-synchronized getDebugText()Ljava/util/Vector;
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
    .line 147
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->debugText:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 149
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->debugText:Ljava/util/Vector;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->getFpsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->debugText:Ljava/util/Vector;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->getViewSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Preview: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->getPreviewFrameSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->debugText:Ljava/util/Vector;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->cameraManager:Lcom/google/android/apps/unveil/sensors/CameraManager;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/sensors/CameraManager;->getStateName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->sensorValues:[F

    if-eqz v0, :cond_96

    .line 156
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->debugText:Ljava/util/Vector;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "azimuth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->sensorValues:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->sensorValues:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", roll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->sensorValues:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_96
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->debugText:Ljava/util/Vector;
    :try_end_98
    .catchall {:try_start_1 .. :try_end_98} :catchall_9a

    monitor-exit p0

    return-object v0

    .line 147
    :catchall_9a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->sensorProvider:Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;

    if-eqz v0, :cond_f

    .line 79
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->sensorProvider:Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->getOrientationSensor()Lcom/google/android/apps/unveil/sensors/UnveilSensor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->listener:Lcom/google/android/apps/unveil/sensors/UnveilSensor$Listener;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/sensors/UnveilSensor;->unregisterListener(Lcom/google/android/apps/unveil/sensors/UnveilSensor$Listener;)Z

    .line 81
    :cond_f
    return-void
.end method

.method protected declared-synchronized onProcessFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V
    .registers 7
    .parameter "frame"

    .prologue
    .line 85
    monitor-enter p0

    :try_start_1
    iget v2, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->numFrames:I

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v2, v2, 0x28

    iput v2, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->currIndex:I

    .line 86
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getTimestamp()J

    move-result-wide v0

    .line 88
    .local v0, currTimestamp:J
    iget v2, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->numFrames:I

    if-lez v2, :cond_31

    .line 89
    iget-wide v2, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->lastFrameTimestamp:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->handleDelta(I)V

    .line 91
    iget v2, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->currIndex:I

    if-nez v2, :cond_31

    .line 93
    sget-object v2, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->shouldShowVerbose()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 94
    sget-object v2, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->getFpsString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    :cond_31
    iput-wide v0, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->lastFrameTimestamp:J

    .line 100
    iget v2, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->numFrames:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->numFrames:I

    .line 102
    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->debugView:Lcom/google/android/apps/unveil/nonstop/DebugView;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/nonstop/DebugView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4f

    .line 103
    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->debugView:Lcom/google/android/apps/unveil/nonstop/DebugView;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/nonstop/DebugView;->invalidate()V

    .line 109
    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->glDebugView:Lcom/google/android/apps/unveil/ui/GlOverlay;

    if-eqz v2, :cond_4f

    .line 110
    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->glDebugView:Lcom/google/android/apps/unveil/ui/GlOverlay;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/ui/GlOverlay;->requestRender()V
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_51

    .line 113
    :cond_4f
    monitor-exit p0

    return-void

    .line 85
    .end local v0           #currTimestamp:J
    :catchall_51
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->sensorProvider:Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;

    if-eqz v0, :cond_16

    .line 66
    new-instance v0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor$1;-><init>(Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->listener:Lcom/google/android/apps/unveil/sensors/UnveilSensor$Listener;

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->sensorProvider:Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/sensors/UnveilSensorProvider;->getOrientationSensor()Lcom/google/android/apps/unveil/sensors/UnveilSensor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/StatusFrameProcessor;->listener:Lcom/google/android/apps/unveil/sensors/UnveilSensor$Listener;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/sensors/UnveilSensor;->registerListener(Lcom/google/android/apps/unveil/sensors/UnveilSensor$Listener;)Z

    .line 74
    :cond_16
    return-void
.end method
