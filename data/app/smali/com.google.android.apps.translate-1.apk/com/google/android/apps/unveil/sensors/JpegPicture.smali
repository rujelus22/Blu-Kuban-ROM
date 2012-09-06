.class public Lcom/google/android/apps/unveil/sensors/JpegPicture;
.super Lcom/google/android/apps/unveil/env/Picture;
.source "JpegPicture.java"


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private bitmapDrawableCache:Landroid/graphics/drawable/BitmapDrawable;

.field private jpegDataCache:[B

.field private sizeCache:Lcom/google/android/apps/unveil/env/Size;

.field private yuvDataCache:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 4
    .parameter "data"
    .parameter "orientation"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p2}, Lcom/google/android/apps/unveil/env/Picture;-><init>(I)V

    .line 28
    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->bitmapDrawableCache:Landroid/graphics/drawable/BitmapDrawable;

    .line 29
    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->sizeCache:Lcom/google/android/apps/unveil/env/Size;

    .line 33
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->jpegDataCache:[B

    .line 34
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 5
    .parameter "data"
    .parameter "orientation"
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/unveil/env/Picture;-><init>(II)V

    .line 28
    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->bitmapDrawableCache:Landroid/graphics/drawable/BitmapDrawable;

    .line 29
    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->sizeCache:Lcom/google/android/apps/unveil/env/Size;

    .line 38
    iput-object p1, p0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->jpegDataCache:[B

    .line 39
    return-void
.end method


# virtual methods
.method public declared-synchronized getByteSize()I
    .registers 2

    .prologue
    .line 153
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/JpegPicture;->checkNotRecycled()V

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->jpegDataCache:[B

    array-length v0, v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 153
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCroppedPicture()Lcom/google/android/apps/unveil/env/Picture;
    .registers 6

    .prologue
    .line 61
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/JpegPicture;->checkNotRecycled()V

    .line 63
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/JpegPicture;->getCropArea()Landroid/graphics/Rect;

    move-result-object v0

    .line 64
    .local v0, cropArea:Landroid/graphics/Rect;
    if-eqz v0, :cond_38

    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/JpegPicture;->getSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v2

    .line 66
    .local v2, size:Lcom/google/android/apps/unveil/env/Size;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, v2, Lcom/google/android/apps/unveil/env/Size;->width:I

    if-ne v3, v4, :cond_1e

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, v2, Lcom/google/android/apps/unveil/env/Size;->height:I

    if-eq v3, v4, :cond_38

    .line 67
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/JpegPicture;->peekBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/android/apps/unveil/env/ImageUtils;->cropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_35

    move-result-object v1

    .line 68
    .local v1, croppedBitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_2b

    const/4 v3, 0x0

    .line 71
    .end local v1           #croppedBitmap:Landroid/graphics/Bitmap;
    .end local v2           #size:Lcom/google/android/apps/unveil/env/Size;
    :goto_29
    monitor-exit p0

    return-object v3

    .line 68
    .restart local v1       #croppedBitmap:Landroid/graphics/Bitmap;
    .restart local v2       #size:Lcom/google/android/apps/unveil/env/Size;
    :cond_2b
    :try_start_2b
    new-instance v3, Lcom/google/android/apps/unveil/sensors/BitmapPicture;

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/JpegPicture;->getOrientation()I

    move-result v4

    invoke-direct {v3, v1, v4}, Lcom/google/android/apps/unveil/sensors/BitmapPicture;-><init>(Landroid/graphics/Bitmap;I)V
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_35

    goto :goto_29

    .line 61
    .end local v0           #cropArea:Landroid/graphics/Rect;
    .end local v1           #croppedBitmap:Landroid/graphics/Bitmap;
    .end local v2           #size:Lcom/google/android/apps/unveil/env/Size;
    :catchall_35
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0       #cropArea:Landroid/graphics/Rect;
    :cond_38
    move-object v3, p0

    .line 71
    goto :goto_29
.end method

.method public declared-synchronized getDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .registers 3

    .prologue
    .line 100
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/JpegPicture;->checkNotRecycled()V

    .line 101
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->bitmapDrawableCache:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_15

    .line 102
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/JpegPicture;->peekBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_15

    .line 104
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->bitmapDrawableCache:Landroid/graphics/drawable/BitmapDrawable;

    .line 107
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_15
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->bitmapDrawableCache:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-object v1

    .line 100
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getJpegData()[B
    .registers 2

    .prologue
    .line 43
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/JpegPicture;->checkNotRecycled()V

    .line 44
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->jpegDataCache:[B
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    .line 43
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSize()Lcom/google/android/apps/unveil/env/Size;
    .registers 5

    .prologue
    .line 49
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/JpegPicture;->checkNotRecycled()V

    .line 50
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->sizeCache:Lcom/google/android/apps/unveil/env/Size;

    if-nez v1, :cond_24

    .line 51
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 52
    .local v0, decodeOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 53
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->jpegDataCache:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->jpegDataCache:[B

    array-length v3, v3

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 54
    new-instance v1, Lcom/google/android/apps/unveil/env/Size;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V

    iput-object v1, p0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->sizeCache:Lcom/google/android/apps/unveil/env/Size;

    .line 56
    .end local v0           #decodeOptions:Landroid/graphics/BitmapFactory$Options;
    :cond_24
    iget-object v1, p0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->sizeCache:Lcom/google/android/apps/unveil/env/Size;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    monitor-exit p0

    return-object v1

    .line 49
    :catchall_28
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getYuvData()[B
    .registers 8

    .prologue
    .line 76
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/JpegPicture;->checkNotRecycled()V

    .line 77
    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->yuvDataCache:[B

    if-nez v4, :cond_37

    .line 80
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/JpegPicture;->getSize()Lcom/google/android/apps/unveil/env/Size;

    move-result-object v3

    .line 83
    .local v3, size:Lcom/google/android/apps/unveil/env/Size;
    iget v4, v3, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget v5, v3, Lcom/google/android/apps/unveil/env/Size;->height:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    new-array v2, v4, [B

    .line 85
    .local v2, inputRgb:[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 87
    .local v1, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/JpegPicture;->peekBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 88
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_22

    .line 89
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 92
    :cond_22
    iget v4, v3, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget v5, v3, Lcom/google/android/apps/unveil/env/Size;->height:I

    invoke-static {v4, v5}, Lcom/google/android/apps/unveil/env/ImageUtils;->getYUVByteSize(II)I

    move-result v4

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->yuvDataCache:[B

    .line 93
    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->yuvDataCache:[B

    iget v5, v3, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget v6, v3, Lcom/google/android/apps/unveil/env/Size;->height:I

    invoke-static {v2, v4, v5, v6}, Lcom/google/android/apps/unveil/env/ImageUtils;->convertRGB565ToYUV420SP([B[BII)V

    .line 95
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #buffer:Ljava/nio/ByteBuffer;
    .end local v2           #inputRgb:[B
    .end local v3           #size:Lcom/google/android/apps/unveil/env/Size;
    :cond_37
    iget-object v4, p0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->yuvDataCache:[B
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3b

    monitor-exit p0

    return-object v4

    .line 76
    :catchall_3b
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized peekBitmap()Landroid/graphics/Bitmap;
    .registers 7

    .prologue
    .line 112
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/JpegPicture;->checkNotRecycled()V

    .line 113
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->bitmapDrawableCache:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_10

    .line 114
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->bitmapDrawableCache:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_5b

    move-result-object v0

    .line 148
    :cond_e
    :goto_e
    monitor-exit p0

    return-object v0

    .line 117
    :cond_10
    :try_start_10
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 122
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 123
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 125
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->jpegDataCache:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->jpegDataCache:[B

    array-length v5, v5

    invoke-static {v3, v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 127
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_34

    .line 128
    sget-object v3, Lcom/google/android/apps/unveil/sensors/JpegPicture;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v4, "Critical failure when decoding JPEG"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    const/4 v0, 0x0

    goto :goto_e

    .line 133
    :cond_34
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v3, v4, :cond_47

    .line 135
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 136
    .local v1, clonedBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 137
    move-object v0, v1

    .line 141
    .end local v1           #clonedBitmap:Landroid/graphics/Bitmap;
    :cond_47
    iget-object v3, p0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->sizeCache:Lcom/google/android/apps/unveil/env/Size;

    if-nez v3, :cond_e

    .line 142
    new-instance v3, Lcom/google/android/apps/unveil/env/Size;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V

    iput-object v3, p0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->sizeCache:Lcom/google/android/apps/unveil/env/Size;
    :try_end_5a
    .catchall {:try_start_10 .. :try_end_5a} :catchall_5b

    goto :goto_e

    .line 112
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :catchall_5b
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized recycle()V
    .registers 4

    .prologue
    .line 159
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/sensors/JpegPicture;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 160
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    const-string v1, "Requested recycling, but jpeg picture is already recycled."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_33

    .line 172
    :goto_14
    monitor-exit p0

    return-void

    .line 164
    :cond_16
    :try_start_16
    invoke-super {p0}, Lcom/google/android/apps/unveil/env/Picture;->recycle()V

    .line 165
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->bitmapDrawableCache:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_26

    .line 166
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->bitmapDrawableCache:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 168
    :cond_26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->jpegDataCache:[B

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->yuvDataCache:[B

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->bitmapDrawableCache:Landroid/graphics/drawable/BitmapDrawable;

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/unveil/sensors/JpegPicture;->sizeCache:Lcom/google/android/apps/unveil/env/Size;
    :try_end_32
    .catchall {:try_start_16 .. :try_end_32} :catchall_33

    goto :goto_14

    .line 159
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method
