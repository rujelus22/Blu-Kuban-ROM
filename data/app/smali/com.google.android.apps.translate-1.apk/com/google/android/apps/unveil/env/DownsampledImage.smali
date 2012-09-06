.class public Lcom/google/android/apps/unveil/env/DownsampledImage;
.super Ljava/lang/Object;
.source "DownsampledImage.java"


# static fields
.field private static final MAX_QUEUE_SIZE:I = 0x2

.field public static final TARGET_PIXELS:I = 0x6450

.field private static final downsampledQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final bytes:[B

.field private referenceCount:I

.field private final timestamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/env/DownsampledImage;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/env/DownsampledImage;->downsampledQueue:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>([BJ)V
    .registers 4
    .parameter "downsampledBuffer"
    .parameter "timestamp"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/DownsampledImage;->bytes:[B

    .line 37
    iput-wide p2, p0, Lcom/google/android/apps/unveil/env/DownsampledImage;->timestamp:J

    .line 38
    return-void
.end method

.method public static downsample([BIIJ)Lcom/google/android/apps/unveil/env/DownsampledImage;
    .registers 8
    .parameter "rawData"
    .parameter "width"
    .parameter "height"
    .parameter "timestamp"

    .prologue
    .line 121
    invoke-static {p1, p2}, Lcom/google/android/apps/unveil/env/DownsampledImage;->issueBuffer(II)[B

    move-result-object v1

    .line 123
    .local v1, downsampledBuffer:[B
    invoke-static {p1, p2}, Lcom/google/android/apps/unveil/env/DownsampledImage;->getDownsampleFactor(II)I

    move-result v0

    .line 124
    .local v0, downsampleFactor:I
    invoke-static {p1, p2, p0, v0, v1}, Lcom/google/android/apps/unveil/env/ImageUtils;->downsampleImageNative(II[BI[B)V

    .line 126
    new-instance v2, Lcom/google/android/apps/unveil/env/DownsampledImage;

    invoke-direct {v2, v1, p3, p4}, Lcom/google/android/apps/unveil/env/DownsampledImage;-><init>([BJ)V

    return-object v2
.end method

.method public static getDownsampleFactor(II)I
    .registers 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 107
    const/4 v0, 0x1

    .line 109
    .local v0, downsampleFactor:I
    :goto_1
    invoke-static {p1, v0}, Lcom/google/android/apps/unveil/env/DownsampledImage;->getDownsampledHeight(II)I

    move-result v1

    invoke-static {p0, v0}, Lcom/google/android/apps/unveil/env/DownsampledImage;->getDownsampledWidth(II)I

    move-result v2

    mul-int/2addr v1, v2

    const/16 v2, 0x6450

    if-le v1, v2, :cond_11

    .line 110
    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 112
    :cond_11
    return v0
.end method

.method public static getDownsampledHeight(II)I
    .registers 3
    .parameter "height"
    .parameter "downsampleFactor"

    .prologue
    .line 103
    add-int v0, p0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    return v0
.end method

.method public static getDownsampledWidth(II)I
    .registers 3
    .parameter "width"
    .parameter "downsampleFactor"

    .prologue
    .line 99
    add-int v0, p0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    return v0
.end method

.method private static issueBuffer(II)[B
    .registers 9
    .parameter "width"
    .parameter "height"

    .prologue
    .line 69
    const/4 v3, 0x0

    .line 70
    .local v3, downsampledBuffer:[B
    invoke-static {p0, p1}, Lcom/google/android/apps/unveil/env/DownsampledImage;->getDownsampleFactor(II)I

    move-result v2

    .line 71
    .local v2, downsampleFactor:I
    invoke-static {p0, v2}, Lcom/google/android/apps/unveil/env/DownsampledImage;->getDownsampledWidth(II)I

    move-result v4

    invoke-static {p1, v2}, Lcom/google/android/apps/unveil/env/DownsampledImage;->getDownsampledHeight(II)I

    move-result v5

    mul-int v1, v4, v5

    .line 75
    .local v1, desiredLength:I
    sget-object v5, Lcom/google/android/apps/unveil/env/DownsampledImage;->downsampledQueue:Ljava/util/ArrayList;

    monitor-enter v5

    .line 76
    :cond_12
    :goto_12
    :try_start_12
    sget-object v4, Lcom/google/android/apps/unveil/env/DownsampledImage;->downsampledQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2c

    if-nez v3, :cond_2c

    .line 77
    sget-object v4, Lcom/google/android/apps/unveil/env/DownsampledImage;->downsampledQueue:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [B

    move-object v3, v0

    .line 78
    array-length v4, v3

    if-eq v4, v1, :cond_12

    .line 79
    const/4 v3, 0x0

    goto :goto_12

    .line 82
    :cond_2c
    monitor-exit v5
    :try_end_2d
    .catchall {:try_start_12 .. :try_end_2d} :catchall_32

    .line 84
    if-nez v3, :cond_31

    .line 85
    new-array v3, v1, [B

    .line 87
    :cond_31
    return-object v3

    .line 82
    :catchall_32
    move-exception v4

    :try_start_33
    monitor-exit v5
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v4
.end method

.method private static reclaimBuffer([B)V
    .registers 4
    .parameter "bytes"

    .prologue
    .line 91
    sget-object v1, Lcom/google/android/apps/unveil/env/DownsampledImage;->downsampledQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 92
    :try_start_3
    sget-object v0, Lcom/google/android/apps/unveil/env/DownsampledImage;->downsampledQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_11

    .line 93
    sget-object v0, Lcom/google/android/apps/unveil/env/DownsampledImage;->downsampledQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_11
    monitor-exit v1

    .line 96
    return-void

    .line 95
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method


# virtual methods
.method public declared-synchronized addReference()V
    .registers 2

    .prologue
    .line 49
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/apps/unveil/env/DownsampledImage;->referenceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/unveil/env/DownsampledImage;->referenceCount:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 50
    monitor-exit p0

    return-void

    .line 49
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 63
    iget v0, p0, Lcom/google/android/apps/unveil/env/DownsampledImage;->referenceCount:I

    if-eqz v0, :cond_e

    .line 64
    sget-object v0, Lcom/google/android/apps/unveil/env/DownsampledImage;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "DownsampledImage garbage collected with a non-zero reference count."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    :cond_e
    return-void
.end method

.method public getBytes()[B
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/DownsampledImage;->bytes:[B

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/google/android/apps/unveil/env/DownsampledImage;->timestamp:J

    return-wide v0
.end method

.method public declared-synchronized removeReference()V
    .registers 3

    .prologue
    .line 53
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/apps/unveil/env/DownsampledImage;->referenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/apps/unveil/env/DownsampledImage;->referenceCount:I

    .line 54
    iget v0, p0, Lcom/google/android/apps/unveil/env/DownsampledImage;->referenceCount:I

    if-nez v0, :cond_14

    .line 55
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/DownsampledImage;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/unveil/env/DownsampledImage;->reclaimBuffer([B)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_20

    .line 59
    :cond_12
    monitor-exit p0

    return-void

    .line 56
    :cond_14
    :try_start_14
    iget v0, p0, Lcom/google/android/apps/unveil/env/DownsampledImage;->referenceCount:I

    if-gez v0, :cond_12

    .line 57
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Negative reference count."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_20

    .line 53
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method
