.class public Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;
.super Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
.source "VisionGyroProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$Listener;,
        Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$TimestampedMatrix;
    }
.end annotation


# static fields
.field private static final MAX_MATRICES:I = 0x32


# instance fields
.field private final gyro:Lcom/google/android/apps/unveil/tracking/VisionGyro;

.field private lastMatrix:[F

.field private final listener:Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$Listener;

.field private final matrices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$TimestampedMatrix;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$Listener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;-><init>()V

    .line 23
    new-instance v0, Lcom/google/android/apps/unveil/tracking/VisionGyro;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/tracking/VisionGyro;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;->gyro:Lcom/google/android/apps/unveil/tracking/VisionGyro;

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;->matrices:Ljava/util/List;

    .line 46
    iput-object p1, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;->listener:Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$Listener;

    .line 47
    return-void
.end method


# virtual methods
.method public declared-synchronized getMagnitudeSquared()F
    .registers 5

    .prologue
    .line 72
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;->lastMatrix:[F
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_20

    if-nez v0, :cond_8

    .line 73
    const/4 v0, 0x0

    .line 76
    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;->lastMatrix:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;->lastMatrix:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;->lastMatrix:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;->lastMatrix:[F

    const/4 v3, 0x5

    aget v2, v2, v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_20

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_6

    .line 72
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTransformationMatrixAndClearPrevious(JJ)[F
    .registers 13
    .parameter "startFrame"
    .parameter "endFrame"

    .prologue
    .line 86
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 88
    .local v0, accumulatedMatrix:Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 89
    .local v1, tempMatrix:Landroid/graphics/Matrix;
    iget-object v5, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;->matrices:Ljava/util/List;

    monitor-enter v5

    .line 90
    :goto_d
    :try_start_d
    iget-object v4, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;->matrices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4a

    .line 91
    iget-object v4, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;->matrices:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$TimestampedMatrix;

    .line 93
    .local v2, timestampedMatrix:Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$TimestampedMatrix;
    #getter for: Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$TimestampedMatrix;->startTime:J
    invoke-static {v2}, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$TimestampedMatrix;->access$000(Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$TimestampedMatrix;)J

    move-result-wide v6

    cmp-long v4, v6, p1

    if-ltz v4, :cond_42

    #getter for: Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$TimestampedMatrix;->stopTime:J
    invoke-static {v2}, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$TimestampedMatrix;->access$100(Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$TimestampedMatrix;)J

    move-result-wide v6

    cmp-long v4, v6, p3

    if-gtz v4, :cond_42

    .line 95
    #getter for: Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$TimestampedMatrix;->matrix:[F
    invoke-static {v2}, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$TimestampedMatrix;->access$200(Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$TimestampedMatrix;)[F

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->setValues([F)V

    .line 96
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 101
    :cond_38
    iget-object v4, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;->matrices:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_d

    .line 103
    .end local v2           #timestampedMatrix:Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$TimestampedMatrix;
    :catchall_3f
    move-exception v4

    monitor-exit v5
    :try_end_41
    .catchall {:try_start_d .. :try_end_41} :catchall_3f

    throw v4

    .line 97
    .restart local v2       #timestampedMatrix:Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$TimestampedMatrix;
    :cond_42
    :try_start_42
    #getter for: Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$TimestampedMatrix;->startTime:J
    invoke-static {v2}, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$TimestampedMatrix;->access$000(Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$TimestampedMatrix;)J

    move-result-wide v6

    cmp-long v4, v6, p3

    if-ltz v4, :cond_38

    .line 103
    .end local v2           #timestampedMatrix:Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$TimestampedMatrix;
    :cond_4a
    monitor-exit v5
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_3f

    .line 105
    const/16 v4, 0x9

    new-array v3, v4, [F

    .line 106
    .local v3, values:[F
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 107
    return-object v3
.end method

.method public declared-synchronized onDrawDebug(Landroid/graphics/Canvas;)V
    .registers 9
    .parameter "canvas"

    .prologue
    .line 112
    monitor-enter p0

    const/high16 v0, 0x4396

    .line 114
    .local v0, currY:F
    :try_start_3
    new-instance v2, Lcom/google/android/apps/unveil/env/BorderedText;

    const/high16 v3, 0x41a0

    invoke-direct {v2, v3}, Lcom/google/android/apps/unveil/env/BorderedText;-><init>(F)V

    .line 115
    .local v2, text:Lcom/google/android/apps/unveil/env/BorderedText;
    iget-object v3, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;->lastMatrix:[F

    if-eqz v3, :cond_6c

    .line 116
    const/4 v1, 0x2

    .local v1, i:I
    :goto_f
    if-ltz v1, :cond_6c

    .line 117
    const/high16 v3, 0x41a0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;->lastMatrix:[F

    mul-int/lit8 v6, v1, 0x3

    add-int/lit8 v6, v6, 0x0

    aget v5, v5, v6

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/google/android/apps/unveil/env/NumberUtils;->format(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;->lastMatrix:[F

    mul-int/lit8 v6, v1, 0x3

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/google/android/apps/unveil/env/NumberUtils;->format(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;->lastMatrix:[F

    mul-int/lit8 v6, v1, 0x3

    add-int/lit8 v6, v6, 0x2

    aget v5, v5, v6

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/google/android/apps/unveil/env/NumberUtils;->format(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v0, v4}, Lcom/google/android/apps/unveil/env/BorderedText;->drawText(Landroid/graphics/Canvas;FFLjava/lang/String;)V

    .line 121
    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/BorderedText;->getTextSize()F
    :try_end_67
    .catchall {:try_start_3 .. :try_end_67} :catchall_6e

    move-result v3

    sub-float/2addr v0, v3

    .line 116
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 124
    .end local v1           #i:I
    :cond_6c
    monitor-exit p0

    return-void

    .line 112
    .end local v2           #text:Lcom/google/android/apps/unveil/env/BorderedText;
    :catchall_6e
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected declared-synchronized onProcessFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V
    .registers 11
    .parameter "frame"

    .prologue
    .line 51
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;->gyro:Lcom/google/android/apps/unveil/tracking/VisionGyro;

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getDownsampledImage()Lcom/google/android/apps/unveil/env/DownsampledImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/env/DownsampledImage;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getDownsampledWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getDownsampledHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/unveil/tracking/VisionGyro;->nextFrame([BII)[F

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;->lastMatrix:[F

    .line 54
    iget-object v7, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;->matrices:Ljava/util/List;

    monitor-enter v7
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_45

    .line 55
    :try_start_1c
    iget-object v8, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;->matrices:Ljava/util/List;

    new-instance v0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$TimestampedMatrix;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;->getLastFrameTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getTimestamp()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;->lastMatrix:[F

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$TimestampedMatrix;-><init>(Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;JJ[F)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :goto_31
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;->matrices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_48

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;->matrices:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_31

    .line 60
    :catchall_42
    move-exception v0

    monitor-exit v7
    :try_end_44
    .catchall {:try_start_1c .. :try_end_44} :catchall_42

    :try_start_44
    throw v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_45

    .line 51
    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0

    .line 60
    :cond_48
    :try_start_48
    monitor-exit v7
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_42

    .line 62
    :try_start_49
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;->listener:Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$Listener;

    if-eqz v0, :cond_54

    .line 63
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;->listener:Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$Listener;

    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;->lastMatrix:[F

    invoke-interface {v0, v1}, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor$Listener;->onGyroChanged([F)V
    :try_end_54
    .catchall {:try_start_49 .. :try_end_54} :catchall_45

    .line 65
    :cond_54
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized onShutdown()V
    .registers 2

    .prologue
    .line 81
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/VisionGyroProcessor;->gyro:Lcom/google/android/apps/unveil/tracking/VisionGyro;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/tracking/VisionGyro;->destroy()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 82
    monitor-exit p0

    return-void

    .line 81
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
