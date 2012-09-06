.class public Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;
.super Ljava/lang/Object;
.source "TimestampedFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$BufferSink;,
        Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;
    }
.end annotation


# static fields
.field public static final NOT_SET:I = -0x1

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final bufferSink:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$BufferSink;

.field private cachedBucketDist:[I

.field private cachedDownsampledImage:Lcom/google/android/apps/unveil/env/DownsampledImage;

.field private cachedIsBlurred:Ljava/lang/Boolean;

.field private cachedSignature:[I

.field private final frameNum:I

.field private final height:I

.field private imageStatistics:Lcom/google/android/apps/unveil/env/ImageUtils$ImageStatistics;

.field private final metadata:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;

.field private opticalFlowDelta:I

.field private rawFrameData:[B

.field private referenceCount:I

.field private final rotationAngle:I

.field private final size:Lcom/google/android/apps/unveil/env/Size;

.field private takenWhileFocusing:Ljava/lang/Boolean;

.field private final timestamp:J

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "TimestampedFrame"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>([BLcom/google/android/apps/unveil/env/Size;IJILcom/google/android/apps/unveil/nonstop/TimestampedFrame$BufferSink;)V
    .registers 9
    .parameter "newRawFrameData"
    .parameter "size"
    .parameter "frameNum"
    .parameter "timestamp"
    .parameter "rotationAngle"
    .parameter "bufferSink"

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->rawFrameData:[B

    .line 207
    iput p3, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->frameNum:I

    .line 208
    iput-wide p4, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->timestamp:J

    .line 210
    iput-object p2, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->size:Lcom/google/android/apps/unveil/env/Size;

    .line 211
    iget v0, p2, Lcom/google/android/apps/unveil/env/Size;->width:I

    iput v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->width:I

    .line 212
    iget v0, p2, Lcom/google/android/apps/unveil/env/Size;->height:I

    iput v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->height:I

    .line 213
    iput p6, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->rotationAngle:I

    .line 215
    iput-object p7, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->bufferSink:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$BufferSink;

    .line 217
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->referenceCount:I

    .line 218
    new-instance v0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;

    invoke-direct {v0, p4, p5}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->metadata:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;

    .line 219
    return-void
.end method

.method static synthetic access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-object v0
.end method

.method private declared-synchronized clearRawData()[B
    .registers 3

    .prologue
    .line 316
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getRawData()[B

    move-result-object v0

    .line 318
    .local v0, tmpData:[B
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->rawFrameData:[B

    .line 321
    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->cachedDownsampledImage:Lcom/google/android/apps/unveil/env/DownsampledImage;

    if-eqz v1, :cond_14

    .line 322
    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->cachedDownsampledImage:Lcom/google/android/apps/unveil/env/DownsampledImage;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/env/DownsampledImage;->removeReference()V

    .line 323
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->cachedDownsampledImage:Lcom/google/android/apps/unveil/env/DownsampledImage;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 325
    :cond_14
    monitor-exit p0

    return-object v0

    .line 316
    .end local v0           #tmpData:[B
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private createDownsampledImage()V
    .registers 6

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getRawData()[B

    move-result-object v0

    .line 274
    .local v0, rawData:[B
    iget v1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->width:I

    iget v2, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->height:I

    iget-wide v3, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->timestamp:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/unveil/env/DownsampledImage;->downsample([BIIJ)Lcom/google/android/apps/unveil/env/DownsampledImage;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->cachedDownsampledImage:Lcom/google/android/apps/unveil/env/DownsampledImage;

    .line 275
    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->cachedDownsampledImage:Lcom/google/android/apps/unveil/env/DownsampledImage;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/env/DownsampledImage;->addReference()V

    .line 276
    return-void
.end method

.method public static diffSignature([I[I)I
    .registers 3
    .parameter "signature1"
    .parameter "signature2"

    .prologue
    .line 423
    invoke-static {p0, p1}, Lcom/google/android/apps/unveil/env/ImageUtils;->diffSignatureNative([I[I)I

    move-result v0

    return v0
.end method

.method private declared-synchronized generateBucketDistributionAndSignature()V
    .registers 5

    .prologue
    .line 403
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->cachedBucketDist:[I

    if-nez v0, :cond_1b

    .line 404
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getDownsampledImage()Lcom/google/android/apps/unveil/env/DownsampledImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/DownsampledImage;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getDownsampledWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getDownsampledHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/unveil/env/ImageUtils;->getBucketDistributionNative([BII)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->cachedBucketDist:[I

    .line 407
    :cond_1b
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->cachedSignature:[I

    if-nez v0, :cond_36

    .line 408
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getDownsampledImage()Lcom/google/android/apps/unveil/env/DownsampledImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/DownsampledImage;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getDownsampledWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getDownsampledHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/unveil/env/ImageUtils;->computeSignatureNative([BII[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->cachedSignature:[I
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_38

    .line 411
    :cond_36
    monitor-exit p0

    return-void

    .line 403
    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addReference()V
    .registers 2

    .prologue
    .line 365
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->referenceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->referenceCount:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 366
    monitor-exit p0

    return-void

    .line 365
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized allThreadsDone()Z
    .registers 2

    .prologue
    .line 393
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->referenceCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized diffSignature([I)I
    .registers 3
    .parameter "signature1"

    .prologue
    .line 419
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getSignature()[I

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->diffSignature([I[I)I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getBucketDistribution()[I
    .registers 2

    .prologue
    .line 427
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->generateBucketDistributionAndSignature()V

    .line 428
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->cachedBucketDist:[I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 427
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDownsampleFactor()I
    .registers 3

    .prologue
    .line 289
    iget v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->width:I

    iget v1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->height:I

    invoke-static {v0, v1}, Lcom/google/android/apps/unveil/env/DownsampledImage;->getDownsampleFactor(II)I

    move-result v0

    return v0
.end method

.method public getDownsampledHeight()I
    .registers 4

    .prologue
    .line 284
    iget v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->height:I

    iget v1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->width:I

    iget v2, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->height:I

    invoke-static {v1, v2}, Lcom/google/android/apps/unveil/env/DownsampledImage;->getDownsampleFactor(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/apps/unveil/env/DownsampledImage;->getDownsampledHeight(II)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getDownsampledImage()Lcom/google/android/apps/unveil/env/DownsampledImage;
    .registers 4

    .prologue
    .line 259
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->hasRawData()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->cachedDownsampledImage:Lcom/google/android/apps/unveil/env/DownsampledImage;

    if-nez v0, :cond_2f

    .line 260
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Frame data for frame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->frameNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is no longer available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2c

    .line 259
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 265
    :cond_2f
    :try_start_2f
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->cachedDownsampledImage:Lcom/google/android/apps/unveil/env/DownsampledImage;

    if-nez v0, :cond_36

    .line 266
    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->createDownsampledImage()V

    .line 269
    :cond_36
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->cachedDownsampledImage:Lcom/google/android/apps/unveil/env/DownsampledImage;
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_2c

    monitor-exit p0

    return-object v0
.end method

.method public getDownsampledWidth()I
    .registers 4

    .prologue
    .line 279
    iget v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->width:I

    iget v1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->width:I

    iget v2, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->height:I

    invoke-static {v1, v2}, Lcom/google/android/apps/unveil/env/DownsampledImage;->getDownsampleFactor(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/apps/unveil/env/DownsampledImage;->getDownsampledWidth(II)I

    move-result v0

    return v0
.end method

.method public getFrameNum()I
    .registers 2

    .prologue
    .line 230
    iget v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->frameNum:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 246
    iget v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->height:I

    return v0
.end method

.method public declared-synchronized getImageStatistics()Lcom/google/android/apps/unveil/env/ImageUtils$ImageStatistics;
    .registers 4

    .prologue
    .line 329
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->imageStatistics:Lcom/google/android/apps/unveil/env/ImageUtils$ImageStatistics;

    if-nez v0, :cond_13

    .line 330
    iget v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->width:I

    iget v1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->height:I

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getRawData()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/unveil/env/ImageUtils;->computeImageStatistics(II[B)Lcom/google/android/apps/unveil/env/ImageUtils$ImageStatistics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->imageStatistics:Lcom/google/android/apps/unveil/env/ImageUtils$ImageStatistics;

    .line 332
    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->imageStatistics:Lcom/google/android/apps/unveil/env/ImageUtils$ImageStatistics;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-object v0

    .line 329
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMetadata()Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->metadata:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$Metadata;

    return-object v0
.end method

.method public declared-synchronized getOpticalFlowDelta()I
    .registers 2

    .prologue
    .line 222
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->opticalFlowDelta:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRawData()[B
    .registers 4

    .prologue
    .line 304
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->hasRawData()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 305
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Frame data for frame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->frameNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is no longer available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_28

    .line 304
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0

    .line 307
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->rawFrameData:[B
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_28

    monitor-exit p0

    return-object v0
.end method

.method public getRotationAngle()I
    .registers 2

    .prologue
    .line 250
    iget v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->rotationAngle:I

    return v0
.end method

.method public declared-synchronized getSignature()[I
    .registers 2

    .prologue
    .line 414
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->generateBucketDistributionAndSignature()V

    .line 415
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->cachedSignature:[I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 414
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSize()Lcom/google/android/apps/unveil/env/Size;
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->size:Lcom/google/android/apps/unveil/env/Size;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 234
    iget-wide v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->timestamp:J

    return-wide v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 242
    iget v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->width:I

    return v0
.end method

.method protected declared-synchronized hasRawData()Z
    .registers 2

    .prologue
    .line 296
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->rawFrameData:[B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isBlurred()Z
    .registers 4

    .prologue
    .line 344
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->cachedIsBlurred:Ljava/lang/Boolean;

    if-nez v0, :cond_17

    .line 345
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getRawData()[B

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->width:I

    iget v2, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->height:I

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/unveil/env/ImageUtils;->isBlurredNative([BII)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->cachedIsBlurred:Ljava/lang/Boolean;

    .line 347
    :cond_17
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->cachedIsBlurred:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1f

    move-result v0

    monitor-exit p0

    return v0

    .line 344
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public recommendedQuality()I
    .registers 3

    .prologue
    .line 336
    iget v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->width:I

    iget v1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->height:I

    invoke-static {v0, v1}, Lcom/google/android/apps/unveil/env/ImageUtils;->getJpegQualityRecommendation(II)I

    move-result v0

    return v0
.end method

.method public declared-synchronized removeReference()V
    .registers 4

    .prologue
    .line 373
    monitor-enter p0

    :try_start_1
    iget v1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->referenceCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->referenceCount:I

    .line 375
    iget v1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->referenceCount:I

    if-nez v1, :cond_1a

    .line 377
    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->clearRawData()[B

    move-result-object v0

    .line 381
    .local v0, buffer:[B
    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->bufferSink:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$BufferSink;

    if-eqz v1, :cond_18

    .line 382
    iget-object v1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->bufferSink:Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$BufferSink;

    invoke-interface {v1, v0}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame$BufferSink;->returnBuffer([B)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_26

    .line 387
    .end local v0           #buffer:[B
    :cond_18
    monitor-exit p0

    return-void

    .line 384
    :cond_1a
    :try_start_1a
    iget v1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->referenceCount:I

    if-gez v1, :cond_18

    .line 385
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Negative reference count."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_26

    .line 373
    :catchall_26
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setOpticalFlowDelta(I)V
    .registers 3
    .parameter "opticalFlowDelta"

    .prologue
    .line 226
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->opticalFlowDelta:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 227
    monitor-exit p0

    return-void

    .line 226
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTakenWhileFocusing(Z)V
    .registers 3
    .parameter "takenWhileFocusing"

    .prologue
    .line 351
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->takenWhileFocusing:Ljava/lang/Boolean;

    .line 352
    return-void
.end method

.method public takenWhileFocusing()Z
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->takenWhileFocusing:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 356
    const/4 v0, 0x0

    .line 358
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->takenWhileFocusing:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_5
.end method
