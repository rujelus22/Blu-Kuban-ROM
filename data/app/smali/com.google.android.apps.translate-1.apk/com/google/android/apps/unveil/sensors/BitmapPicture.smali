.class public Lcom/google/android/apps/unveil/sensors/BitmapPicture;
.super Lcom/google/android/apps/unveil/env/Picture;
.source "BitmapPicture.java"


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private cachedBitmap:Landroid/graphics/Bitmap;

.field private volatile cachedBitmapReady:Z

.field private cachedDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private cachedJpegData:[B

.field private cachedYuvData:[B

.field private final size:Lcom/google/android/apps/unveil/env/Size;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .registers 4
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    .line 82
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/unveil/sensors/BitmapPicture;-><init>(Landroid/graphics/Bitmap;II)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .registers 9
    .parameter "bitmap"
    .parameter "orientation"
    .parameter "source"

    .prologue
    .line 86
    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/unveil/env/Picture;-><init>(II)V

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_1c

    .line 89
    sget-object v0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Bitmap was %s instead of the required RGB_565!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :cond_1c
    new-instance v0, Lcom/google/android/apps/unveil/env/Size;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->size:Lcom/google/android/apps/unveil/env/Size;

    .line 94
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedBitmap:Landroid/graphics/Bitmap;

    .line 95
    return-void
.end method

.method public constructor <init>([BIII)V
    .registers 7
    .parameter "yuvData"
    .parameter "width"
    .parameter "height"
    .parameter "orientation"

    .prologue
    .line 45
    invoke-direct {p0, p4}, Lcom/google/android/apps/unveil/env/Picture;-><init>(I)V

    .line 47
    new-instance v1, Lcom/google/android/apps/unveil/env/Size;

    invoke-direct {v1, p2, p3}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V

    iput-object v1, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->size:Lcom/google/android/apps/unveil/env/Size;

    .line 51
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedYuvData:[B

    .line 55
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/apps/unveil/sensors/BitmapPicture$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/google/android/apps/unveil/sensors/BitmapPicture$1;-><init>(Lcom/google/android/apps/unveil/sensors/BitmapPicture;II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 77
    .local v0, thread:Ljava/lang/Thread;
    const-string v1, "BitmapPicture processing thread to convert YUV420 to RGB565."

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/unveil/sensors/BitmapPicture;)[B
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedYuvData:[B

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/unveil/sensors/BitmapPicture;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/apps/unveil/sensors/BitmapPicture;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200()Lcom/google/android/apps/unveil/env/UnveilLogger;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/apps/unveil/sensors/BitmapPicture;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedBitmapReady:Z

    return p1
.end method


# virtual methods
.method public getByteSize()I
    .registers 3

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->checkNotRecycled()V

    .line 177
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->size:Lcom/google/android/apps/unveil/env/Size;

    iget v0, v0, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->size:Lcom/google/android/apps/unveil/env/Size;

    iget v1, v1, Lcom/google/android/apps/unveil/env/Size;->height:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public declared-synchronized getCroppedPicture()Lcom/google/android/apps/unveil/env/Picture;
    .registers 9

    .prologue
    .line 146
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->getCropArea()Landroid/graphics/Rect;

    move-result-object v0

    .line 147
    .local v0, cropArea:Landroid/graphics/Rect;
    if-eqz v0, :cond_44

    .line 148
    sget-object v3, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v4, "Getting cropped picture!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->getSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v2

    .line 151
    .local v2, size:Lcom/google/android/apps/unveil/env/Size;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, v2, Lcom/google/android/apps/unveil/env/Size;->width:I

    if-ne v3, v4, :cond_25

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, v2, Lcom/google/android/apps/unveil/env/Size;->height:I

    if-eq v3, v4, :cond_44

    .line 152
    :cond_25
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->peekBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v3, v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 154
    .local v1, croppedBitmap:Landroid/graphics/Bitmap;
    new-instance v3, Lcom/google/android/apps/unveil/sensors/BitmapPicture;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->getOrientation()I

    move-result v4

    invoke-direct {v3, v1, v4}, Lcom/google/android/apps/unveil/sensors/BitmapPicture;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_46

    .line 158
    .end local v1           #croppedBitmap:Landroid/graphics/Bitmap;
    .end local v2           #size:Lcom/google/android/apps/unveil/env/Size;
    :goto_42
    monitor-exit p0

    return-object v3

    :cond_44
    move-object v3, p0

    goto :goto_42

    .line 146
    .end local v0           #cropArea:Landroid/graphics/Rect;
    :catchall_46
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .registers 3

    .prologue
    .line 137
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->checkNotRecycled()V

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_13

    .line 139
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->peekBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 141
    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-object v0

    .line 137
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJpegData()[B
    .registers 5

    .prologue
    .line 121
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->checkNotRecycled()V

    .line 122
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedJpegData:[B

    if-nez v1, :cond_22

    .line 123
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->size:Lcom/google/android/apps/unveil/env/Size;

    invoke-static {v1}, Lcom/google/android/apps/unveil/env/ImageUtils;->getJpegQualityRecommendation(Lcom/google/android/apps/unveil/env/Size;)I

    move-result v0

    .line 125
    .local v0, quality:I
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedYuvData:[B

    if-eqz v1, :cond_26

    .line 126
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedYuvData:[B

    iget-object v2, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->size:Lcom/google/android/apps/unveil/env/Size;

    iget v2, v2, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->size:Lcom/google/android/apps/unveil/env/Size;

    iget v3, v3, Lcom/google/android/apps/unveil/env/Size;->height:I

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/apps/unveil/env/ImageUtils;->encodeJpegFromYUV420SP([BIII)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedJpegData:[B

    .line 132
    .end local v0           #quality:I
    :cond_22
    :goto_22
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedJpegData:[B
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_31

    monitor-exit p0

    return-object v1

    .line 129
    .restart local v0       #quality:I
    :cond_26
    :try_start_26
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->peekBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/apps/unveil/env/ImageUtils;->compressBitmap(Landroid/graphics/Bitmap;I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedJpegData:[B
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_31

    goto :goto_22

    .line 121
    .end local v0           #quality:I
    :catchall_31
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getSize()Lcom/google/android/apps/unveil/env/Size;
    .registers 2

    .prologue
    .line 99
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->checkNotRecycled()V

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->size:Lcom/google/android/apps/unveil/env/Size;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 99
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getYuvData()[B
    .registers 7

    .prologue
    .line 105
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->checkNotRecycled()V

    .line 106
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedYuvData:[B

    if-nez v3, :cond_3d

    .line 109
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->size:Lcom/google/android/apps/unveil/env/Size;

    iget v3, v3, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->size:Lcom/google/android/apps/unveil/env/Size;

    iget v4, v4, Lcom/google/android/apps/unveil/env/Size;->height:I

    invoke-static {v3, v4}, Lcom/google/android/apps/unveil/env/ImageUtils;->getYUVByteSize(II)I

    move-result v3

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedYuvData:[B

    .line 110
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->peekBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->size:Lcom/google/android/apps/unveil/env/Size;

    iget v3, v3, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->size:Lcom/google/android/apps/unveil/env/Size;

    iget v4, v4, Lcom/google/android/apps/unveil/env/Size;->height:I

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [B

    .line 112
    .local v1, rgbArray:[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 113
    .local v2, rgbBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 114
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedYuvData:[B

    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->size:Lcom/google/android/apps/unveil/env/Size;

    iget v4, v4, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget-object v5, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->size:Lcom/google/android/apps/unveil/env/Size;

    iget v5, v5, Lcom/google/android/apps/unveil/env/Size;->height:I

    invoke-static {v1, v3, v4, v5}, Lcom/google/android/apps/unveil/env/ImageUtils;->convertRGB565ToYUV420SP([B[BII)V

    .line 116
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #rgbArray:[B
    .end local v2           #rgbBuffer:Ljava/nio/ByteBuffer;
    :cond_3d
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedYuvData:[B
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_41

    monitor-exit p0

    return-object v3

    .line 105
    :catchall_41
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized peekBitmap()Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    .line 163
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->checkNotRecycled()V

    .line 164
    :goto_4
    iget-boolean v1, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedBitmapReady:Z

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedBitmap:Landroid/graphics/Bitmap;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1c

    if-nez v1, :cond_1f

    .line 166
    :try_start_c
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_1c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_4

    .line 167
    :catch_10
    move-exception v0

    .line 168
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_11
    sget-object v1, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Exception!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_1c

    goto :goto_4

    .line 163
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1

    .line 171
    :cond_1f
    :try_start_1f
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedBitmap:Landroid/graphics/Bitmap;
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_1c

    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized recycle()V
    .registers 4

    .prologue
    .line 182
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 183
    sget-object v0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Requested recycling, but bitmap picture is already recycled."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_39

    .line 197
    :goto_11
    monitor-exit p0

    return-void

    .line 186
    :cond_13
    :try_start_13
    invoke-super {p0}, Lcom/google/android/apps/unveil/env/Picture;->recycle()V

    .line 187
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1f

    .line 188
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 190
    :cond_1f
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2c

    .line 191
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 193
    :cond_2c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedYuvData:[B

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedBitmap:Landroid/graphics/Bitmap;

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/BitmapPicture;->cachedJpegData:[B
    :try_end_38
    .catchall {:try_start_13 .. :try_end_38} :catchall_39

    goto :goto_11

    .line 182
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method
