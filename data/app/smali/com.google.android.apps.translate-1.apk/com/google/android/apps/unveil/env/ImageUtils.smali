.class public Lcom/google/android/apps/unveil/env/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/env/ImageUtils$ImageStatistics;,
        Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/google/android/apps/unveil/env/UnveilLogger; = null

.field protected static final MAX_JPEG_QUALITY:I = 0x5f

.field protected static final MIN_JPEG_QUALITY:I = 0x3c


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/env/ImageUtils;->LOGGER:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 664
    const-string v0, "imageutils"

    invoke-static {v0}, Lcom/google/android/apps/unveil/env/ResourceUtils;->loadNativeLibrary(Ljava/lang/String;)V

    .line 665
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/unveil/env/Picture;II)[B
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/unveil/env/ImageUtils;->rotateAndCompressImage(Lcom/google/android/apps/unveil/env/Picture;II)[B

    move-result-object v0

    return-object v0
.end method

.method public static adjustCropForUnexpectedPictureSize(Landroid/graphics/Rect;Lcom/google/android/apps/unveil/env/Size;Lcom/google/android/apps/unveil/env/Size;)Landroid/graphics/Rect;
    .registers 13
    .parameter "cropArea"
    .parameter "expectedSize"
    .parameter "actualSize"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 288
    if-nez p0, :cond_9

    .line 289
    const/4 v0, 0x0

    .line 311
    :goto_8
    return-object v0

    .line 292
    :cond_9
    sget-object v1, Lcom/google/android/apps/unveil/env/ImageUtils;->LOGGER:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Original crop area: left=%d, top=%d, width=%d, height=%d"

    new-array v3, v9, [Ljava/lang/Object;

    iget v4, p0, Landroid/graphics/Rect;->left:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p0, Landroid/graphics/Rect;->top:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    sget-object v1, Lcom/google/android/apps/unveil/env/ImageUtils;->LOGGER:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Expected picture size: %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    sget-object v1, Lcom/google/android/apps/unveil/env/ImageUtils;->LOGGER:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Actual picture size: %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p2, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/unveil/env/ImageUtils;->convertCropRectAspectRatio(Landroid/graphics/Rect;Lcom/google/android/apps/unveil/env/Size;Lcom/google/android/apps/unveil/env/Size;)Landroid/graphics/Rect;

    move-result-object v0

    .line 301
    .local v0, adjustedCropArea:Landroid/graphics/Rect;
    invoke-static {p2, v0}, Lcom/google/android/apps/unveil/env/ImageUtils;->makeRectSafe(Lcom/google/android/apps/unveil/env/Size;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 302
    if-nez v0, :cond_61

    .line 303
    sget-object v1, Lcom/google/android/apps/unveil/env/ImageUtils;->LOGGER:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Could not make adjustedCropArea safe."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    const/4 v0, 0x0

    goto :goto_8

    .line 307
    :cond_61
    sget-object v1, Lcom/google/android/apps/unveil/env/ImageUtils;->LOGGER:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Final crop area: left=%d, top=%d, width=%d, height=%d"

    new-array v3, v9, [Ljava/lang/Object;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8
.end method

.method public static compressBitmap(Landroid/graphics/Bitmap;I)[B
    .registers 5
    .parameter "bitmap"
    .parameter "outputQuality"

    .prologue
    .line 135
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 136
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v2, p1, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 138
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 139
    .local v0, byteArray:[B
    invoke-static {v1}, Lcom/google/android/apps/unveil/env/ResourceUtils;->closeStream(Ljava/io/Closeable;)V

    .line 140
    return-object v0
.end method

.method protected static compressImage(Lcom/google/android/apps/unveil/env/Picture;Lcom/google/android/apps/unveil/env/Picture;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)[B
    .registers 13
    .parameter "picture"
    .parameter "croppedPicture"
    .parameter "originalPicture"
    .parameter "bitmapToCompress"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 260
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/apps/unveil/env/ImageUtils;->getJpegQualityRecommendation(II)I

    move-result v1

    invoke-static {p3, v1}, Lcom/google/android/apps/unveil/env/ImageUtils;->compressBitmap(Landroid/graphics/Bitmap;I)[B

    move-result-object v0

    .line 263
    .local v0, byteArray:[B
    sget-object v1, Lcom/google/android/apps/unveil/env/ImageUtils;->LOGGER:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Size of photo before recompress: %s %d bytes"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/android/apps/unveil/env/Size;->dimensionsAsString(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/Picture;->getByteSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    sget-object v1, Lcom/google/android/apps/unveil/env/ImageUtils;->LOGGER:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Size of photo after recompress: %s %d bytes"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/android/apps/unveil/env/Size;->dimensionsAsString(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    if-eq p3, p2, :cond_57

    .line 272
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 276
    :cond_57
    if-eq p1, p0, :cond_5c

    .line 277
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/env/Picture;->recycle()V

    .line 279
    :cond_5c
    return-object v0
.end method

.method public static native computeEdgeBitmap(II[B[B)V
.end method

.method public static computeImageStatistics(II[B)Lcom/google/android/apps/unveil/env/ImageUtils$ImageStatistics;
    .registers 6
    .parameter "width"
    .parameter "height"
    .parameter "rawData"

    .prologue
    .line 602
    new-instance v0, Lcom/google/android/apps/unveil/env/ImageUtils$ImageStatistics;

    new-instance v1, Lcom/google/android/apps/unveil/env/ImageUtils;

    invoke-direct {v1}, Lcom/google/android/apps/unveil/env/ImageUtils;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lcom/google/android/apps/unveil/env/ImageUtils;->computeImageStatisticsNative(II[B)[F

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/unveil/env/ImageUtils$ImageStatistics;-><init>(Lcom/google/android/apps/unveil/env/ImageUtils;[F)V

    return-object v0
.end method

.method private static native computeImageStatisticsNative(II[B)[F
.end method

.method public static native computeSignatureNative([BII[I)[I
.end method

.method public static native convertARGB8888ToYUV420SP([I[BII)V
.end method

.method protected static convertCropRectAspectRatio(Landroid/graphics/Rect;Lcom/google/android/apps/unveil/env/Size;Lcom/google/android/apps/unveil/env/Size;)Landroid/graphics/Rect;
    .registers 20
    .parameter "cropRect"
    .parameter "expectedContainerSize"
    .parameter "actualContainerSize"

    .prologue
    .line 348
    move-object/from16 v0, p2

    iget v12, v0, Lcom/google/android/apps/unveil/env/Size;->width:I

    int-to-double v12, v12

    move-object/from16 v0, p1

    iget v14, v0, Lcom/google/android/apps/unveil/env/Size;->width:I

    int-to-double v14, v14

    div-double v6, v12, v14

    .line 350
    .local v6, scaleToFitWidth:D
    move-object/from16 v0, p2

    iget v12, v0, Lcom/google/android/apps/unveil/env/Size;->height:I

    int-to-double v12, v12

    move-object/from16 v0, p1

    iget v14, v0, Lcom/google/android/apps/unveil/env/Size;->height:I

    int-to-double v14, v14

    div-double v4, v12, v14

    .line 353
    .local v4, scaleToFitHeight:D
    const-wide/high16 v12, 0x3ff0

    sub-double/2addr v12, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x3ff0

    sub-double/2addr v14, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    cmpg-double v12, v12, v14

    if-gez v12, :cond_71

    move-wide v2, v6

    .line 357
    .local v2, scale:D
    :goto_2b
    move-object/from16 v0, p1

    iget v12, v0, Lcom/google/android/apps/unveil/env/Size;->width:I

    int-to-double v12, v12

    mul-double/2addr v12, v2

    move-object/from16 v0, p2

    iget v14, v0, Lcom/google/android/apps/unveil/env/Size;->width:I

    int-to-double v14, v14

    sub-double/2addr v12, v14

    const-wide/high16 v14, 0x4000

    div-double v8, v12, v14

    .line 358
    .local v8, xMargin:D
    move-object/from16 v0, p1

    iget v12, v0, Lcom/google/android/apps/unveil/env/Size;->height:I

    int-to-double v12, v12

    mul-double/2addr v12, v2

    move-object/from16 v0, p2

    iget v14, v0, Lcom/google/android/apps/unveil/env/Size;->height:I

    int-to-double v14, v14

    sub-double/2addr v12, v14

    const-wide/high16 v14, 0x4000

    div-double v10, v12, v14

    .line 361
    .local v10, yMargin:D
    new-instance v1, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v12, v0, Landroid/graphics/Rect;->left:I

    int-to-double v12, v12

    mul-double/2addr v12, v2

    sub-double/2addr v12, v8

    double-to-int v12, v12

    move-object/from16 v0, p0

    iget v13, v0, Landroid/graphics/Rect;->top:I

    int-to-double v13, v13

    mul-double/2addr v13, v2

    sub-double/2addr v13, v10

    double-to-int v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/graphics/Rect;->right:I

    int-to-double v14, v14

    mul-double/2addr v14, v2

    sub-double/2addr v14, v8

    double-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    int-to-double v15, v15

    mul-double/2addr v15, v2

    sub-double/2addr v15, v10

    double-to-int v15, v15

    invoke-direct {v1, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 367
    .local v1, result:Landroid/graphics/Rect;
    return-object v1

    .end local v1           #result:Landroid/graphics/Rect;
    .end local v2           #scale:D
    .end local v8           #xMargin:D
    .end local v10           #yMargin:D
    :cond_71
    move-wide v2, v4

    .line 353
    goto :goto_2b
.end method

.method public static native convertRGB565ToYUV420SP([B[BII)V
.end method

.method public static native convertYUV420SPToARGB8888([B[IIIZ)V
.end method

.method public static native convertYUV420SPToRGB565([B[BII)V
.end method

.method public static cropBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "originalBitmap"
    .parameter "cropArea"

    .prologue
    .line 120
    if-nez p1, :cond_3

    .line 130
    .end local p0
    :goto_2
    return-object p0

    .line 124
    .restart local p0
    :cond_3
    if-nez p0, :cond_11

    .line 125
    sget-object v0, Lcom/google/android/apps/unveil/env/ImageUtils;->LOGGER:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Unable to decode camera image for processing."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    const/4 p0, 0x0

    goto :goto_2

    .line 130
    :cond_11
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {p0, v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_2
.end method

.method public static native decodeJpegToYUV420SP([B[B[I)[B
.end method

.method public static native diffSignatureNative([I[I)I
.end method

.method public static native downsampleImageNative(II[BI[B)V
.end method

.method public static native encodeJpegFromYUV420SP([BIII)[B
.end method

.method public static generateUndistortTransformer(Lcom/google/android/apps/unveil/env/Size;Lcom/google/android/apps/unveil/env/Size;)Landroid/graphics/Matrix;
    .registers 7
    .parameter "input"
    .parameter "output"

    .prologue
    .line 680
    iget v3, p0, Lcom/google/android/apps/unveil/env/Size;->width:I

    int-to-float v3, v3

    iget v4, p1, Lcom/google/android/apps/unveil/env/Size;->width:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 681
    .local v1, xScalingFactor:F
    iget v3, p0, Lcom/google/android/apps/unveil/env/Size;->height:I

    int-to-float v3, v3

    iget v4, p1, Lcom/google/android/apps/unveil/env/Size;->height:I

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 683
    .local v2, yScalingFactor:F
    cmpg-float v3, v1, v2

    if-gez v3, :cond_2a

    .line 684
    div-float/2addr v2, v1

    .line 685
    const/high16 v1, 0x3f80

    .line 691
    :goto_17
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 692
    .local v0, transformer:Landroid/graphics/Matrix;
    iget v3, p1, Lcom/google/android/apps/unveil/env/Size;->width:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p1, Lcom/google/android/apps/unveil/env/Size;->height:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 693
    return-object v0

    .line 687
    .end local v0           #transformer:Landroid/graphics/Matrix;
    :cond_2a
    div-float/2addr v1, v2

    .line 688
    const/high16 v2, 0x3f80

    goto :goto_17
.end method

.method public static native getBucketDistributionNative([BII)[I
.end method

.method public static getJpegQualityRecommendation(II)I
    .registers 27
    .parameter "width"
    .parameter "height"

    .prologue
    .line 91
    const-wide v2, 0x3f1a36e2eb1c432dL

    .line 92
    .local v2, kEpsilon:D
    const-wide v10, 0x40e5f90000000000L

    .line 93
    .local v10, kTargetImageBytes:D
    move/from16 v0, p0

    int-to-double v0, v0

    move-wide/from16 v19, v0

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v21, v0

    mul-double v19, v19, v21

    const-wide v21, 0x412e848000000000L

    div-double v12, v19, v21

    .line 94
    .local v12, megapixels:D
    const-wide v19, 0x40acc20000000000L

    const-wide v21, 0x40eb0ac000000000L

    mul-double v21, v21, v12

    add-double v14, v19, v21

    .line 95
    .local v14, offset:D
    const-wide v19, 0x40e5f8ffff2e48e9L

    cmpl-double v19, v14, v19

    if-ltz v19, :cond_37

    .line 96
    const/16 v16, 0x3c

    .line 111
    :cond_36
    :goto_36
    return v16

    .line 98
    :cond_37
    const-wide v8, 0x402745ef1fddebd9L

    .line 99
    .local v8, kSlope:D
    const-wide v4, -0x3fd79a415f45e0b5L

    .line 100
    .local v4, kInterceptIntercept:D
    const-wide v6, -0x4014b168222848f4L

    .line 101
    .local v6, kInterceptSlope:D
    const-wide v19, 0x409f400000000000L

    mul-double v19, v19, v12

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v17

    .line 102
    .local v17, scale:D
    const-wide v19, 0x40e5f90000000000L

    sub-double v19, v19, v14

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->log(D)D

    move-result-wide v19

    const-wide v21, 0x402745ef1fddebd9L

    mul-double v19, v19, v21

    const-wide v21, -0x3fd79a415f45e0b5L

    const-wide v23, -0x4014b168222848f4L

    mul-double v23, v23, v17

    add-double v21, v21, v23

    add-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v16, v0

    .line 106
    .local v16, quality:I
    const/16 v19, 0x3c

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_83

    .line 107
    const/16 v16, 0x3c

    goto :goto_36

    .line 108
    :cond_83
    const/16 v19, 0x5f

    move/from16 v0, v16

    move/from16 v1, v19

    if-le v0, v1, :cond_36

    .line 109
    const/16 v16, 0x5f

    goto :goto_36
.end method

.method public static getJpegQualityRecommendation(Lcom/google/android/apps/unveil/env/Size;)I
    .registers 3
    .parameter "size"

    .prologue
    .line 116
    iget v0, p0, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget v1, p0, Lcom/google/android/apps/unveil/env/Size;->height:I

    invoke-static {v0, v1}, Lcom/google/android/apps/unveil/env/ImageUtils;->getJpegQualityRecommendation(II)I

    move-result v0

    return v0
.end method

.method public static getPicture(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/google/android/apps/unveil/env/Picture;
    .registers 9
    .parameter "contentResolver"
    .parameter "imageUri"
    .parameter "orientation"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 428
    sget-object v2, Lcom/google/android/apps/unveil/env/ImageUtils;->LOGGER:Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    const v2, 0x18f600

    :try_start_10
    invoke-static {p0, p1, v2, p2}, Lcom/google/android/apps/unveil/env/PictureFactory;->createBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;II)Lcom/google/android/apps/unveil/env/Picture;
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_13} :catch_15
    .catch Lcom/google/android/apps/unveil/env/PictureFactory$ImageDecodingException; {:try_start_10 .. :try_end_13} :catch_20

    move-result-object v1

    .line 440
    :goto_14
    return-object v1

    .line 434
    :catch_15
    move-exception v0

    .line 436
    .local v0, e:Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/google/android/apps/unveil/env/ImageUtils;->LOGGER:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Failed to read imageUri"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14

    .line 438
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_20
    move-exception v0

    .line 439
    .local v0, e:Lcom/google/android/apps/unveil/env/PictureFactory$ImageDecodingException;
    sget-object v2, Lcom/google/android/apps/unveil/env/ImageUtils;->LOGGER:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v3, "Image decoding failed."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14
.end method

.method public static getPicture(Landroid/content/ContentResolver;Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;)Lcom/google/android/apps/unveil/env/Picture;
    .registers 4
    .parameter "contentResolver"
    .parameter "image"

    .prologue
    .line 419
    iget-object v0, p1, Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;->imageUri:Landroid/net/Uri;

    iget v1, p1, Lcom/google/android/apps/unveil/env/media/ImageLoader$Image;->orientation:I

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/unveil/env/ImageUtils;->getPicture(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/google/android/apps/unveil/env/Picture;

    move-result-object v0

    return-object v0
.end method

.method public static getTransformationMatrix(Lcom/google/android/apps/unveil/env/Size;Lcom/google/android/apps/unveil/env/Size;I)Landroid/graphics/Matrix;
    .registers 15
    .parameter "src"
    .parameter "dst"
    .parameter "applyRotation"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v11, 0x4000

    .line 177
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    rem-int/lit8 v7, v7, 0x5a

    if-eqz v7, :cond_1b

    .line 178
    sget-object v7, Lcom/google/android/apps/unveil/env/ImageUtils;->LOGGER:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v8, "Angle that is not multiple of 90! %d"

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-virtual {v7, v8, v9}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    :cond_1b
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 183
    .local v2, matrix:Landroid/graphics/Matrix;
    if-eqz p2, :cond_33

    .line 185
    iget v7, p0, Lcom/google/android/apps/unveil/env/Size;->width:I

    neg-int v7, v7

    int-to-float v7, v7

    div-float/2addr v7, v11

    iget v8, p0, Lcom/google/android/apps/unveil/env/Size;->height:I

    neg-int v8, v8

    int-to-float v8, v8

    div-float/2addr v8, v11

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 188
    int-to-float v7, p2

    invoke-virtual {v2, v7}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 193
    :cond_33
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x5a

    rem-int/lit16 v7, v7, 0xb4

    if-nez v7, :cond_6a

    .line 194
    .local v5, transpose:Z
    :goto_3d
    if-eqz v5, :cond_6c

    iget v1, p0, Lcom/google/android/apps/unveil/env/Size;->height:I

    .line 195
    .local v1, inWidth:I
    :goto_41
    if-eqz v5, :cond_6f

    iget v0, p0, Lcom/google/android/apps/unveil/env/Size;->width:I

    .line 196
    .local v0, inHeight:I
    :goto_45
    iget v6, p1, Lcom/google/android/apps/unveil/env/Size;->width:I

    if-ne v1, v6, :cond_4d

    iget v6, p1, Lcom/google/android/apps/unveil/env/Size;->height:I

    if-eq v0, v6, :cond_5c

    .line 197
    :cond_4d
    iget v6, p1, Lcom/google/android/apps/unveil/env/Size;->width:I

    int-to-float v6, v6

    int-to-float v7, v1

    div-float v3, v6, v7

    .line 198
    .local v3, scaleFactorX:F
    iget v6, p1, Lcom/google/android/apps/unveil/env/Size;->height:I

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v4, v6, v7

    .line 199
    .local v4, scaleFactorY:F
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 202
    .end local v3           #scaleFactorX:F
    .end local v4           #scaleFactorY:F
    :cond_5c
    if-eqz p2, :cond_69

    .line 204
    iget v6, p1, Lcom/google/android/apps/unveil/env/Size;->width:I

    int-to-float v6, v6

    div-float/2addr v6, v11

    iget v7, p1, Lcom/google/android/apps/unveil/env/Size;->height:I

    int-to-float v7, v7

    div-float/2addr v7, v11

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 207
    :cond_69
    return-object v2

    .end local v0           #inHeight:I
    .end local v1           #inWidth:I
    .end local v5           #transpose:Z
    :cond_6a
    move v5, v6

    .line 193
    goto :goto_3d

    .line 194
    .restart local v5       #transpose:Z
    :cond_6c
    iget v1, p0, Lcom/google/android/apps/unveil/env/Size;->width:I

    goto :goto_41

    .line 195
    .restart local v1       #inWidth:I
    :cond_6f
    iget v0, p0, Lcom/google/android/apps/unveil/env/Size;->height:I

    goto :goto_45
.end method

.method public static getYUVByteSize(II)I
    .registers 6
    .parameter "width"
    .parameter "height"

    .prologue
    .line 450
    mul-int v1, p0, p1

    .line 454
    .local v1, ySize:I
    add-int/lit8 v2, p0, 0x1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, p1, 0x1

    div-int/lit8 v3, v3, 0x2

    mul-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x2

    .line 456
    .local v0, uvSize:I
    add-int v2, v1, v0

    return v2
.end method

.method public static native isBlurredNative([BII)Z
.end method

.method public static makeRectSafe(Lcom/google/android/apps/unveil/env/Size;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 9
    .parameter "actualSize"
    .parameter "rect"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 371
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 375
    .local v2, safeRect:Landroid/graphics/Rect;
    iget v4, v2, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_14

    .line 376
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 377
    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 379
    :cond_14
    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_21

    .line 380
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 381
    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 383
    :cond_21
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/google/android/apps/unveil/env/Size;->width:I

    if-le v4, v5, :cond_3b

    .line 384
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/google/android/apps/unveil/env/Size;->width:I

    sub-int/2addr v4, v5

    int-to-double v0, v4

    .line 385
    .local v0, error:D
    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-double v4, v4

    sub-double/2addr v4, v0

    double-to-int v4, v4

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 386
    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-double v4, v4

    add-double/2addr v4, v0

    double-to-int v4, v4

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 388
    .end local v0           #error:D
    :cond_3b
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/google/android/apps/unveil/env/Size;->height:I

    if-le v4, v5, :cond_55

    .line 389
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/google/android/apps/unveil/env/Size;->height:I

    sub-int/2addr v4, v5

    int-to-double v0, v4

    .line 390
    .restart local v0       #error:D
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    int-to-double v4, v4

    sub-double/2addr v4, v0

    double-to-int v4, v4

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 391
    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-double v4, v4

    add-double/2addr v4, v0

    double-to-int v4, v4

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 395
    .end local v0           #error:D
    :cond_55
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    if-lt v4, v5, :cond_66

    .line 396
    sget-object v4, Lcom/google/android/apps/unveil/env/ImageUtils;->LOGGER:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v5, "Crop area has nonpositive width"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v3

    .line 411
    .end local v2           #safeRect:Landroid/graphics/Rect;
    :goto_65
    return-object v2

    .line 399
    .restart local v2       #safeRect:Landroid/graphics/Rect;
    :cond_66
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    if-lt v4, v5, :cond_77

    .line 400
    sget-object v4, Lcom/google/android/apps/unveil/env/ImageUtils;->LOGGER:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v5, "Crop area has nonpositive height"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v3

    .line 401
    goto :goto_65

    .line 406
    :cond_77
    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 407
    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 408
    iget v3, p0, Lcom/google/android/apps/unveil/env/Size;->width:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 409
    iget v3, p0, Lcom/google/android/apps/unveil/env/Size;->height:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_65
.end method

.method public static native mirrorX(II[B)V
.end method

.method private static rotateAndCompressImage(Lcom/google/android/apps/unveil/env/Picture;II)[B
    .registers 7
    .parameter "picture"
    .parameter "rotationAngle"
    .parameter "outputMaxPixels"

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/Picture;->getCroppedPicture()Lcom/google/android/apps/unveil/env/Picture;

    move-result-object v1

    .line 157
    .local v1, croppedPicture:Lcom/google/android/apps/unveil/env/Picture;
    invoke-virtual {v1}, Lcom/google/android/apps/unveil/env/Picture;->peekBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 158
    .local v2, originalPicture:Landroid/graphics/Bitmap;
    if-nez v2, :cond_c

    .line 159
    const/4 v3, 0x0

    .line 162
    :goto_b
    return-object v3

    .line 161
    :cond_c
    invoke-static {p1, p2, v2}, Lcom/google/android/apps/unveil/env/ImageUtils;->rotateImage(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 162
    .local v0, bitmapToCompress:Landroid/graphics/Bitmap;
    invoke-static {p0, v1, v2, v0}, Lcom/google/android/apps/unveil/env/ImageUtils;->compressImage(Lcom/google/android/apps/unveil/env/Picture;Lcom/google/android/apps/unveil/env/Picture;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)[B

    move-result-object v3

    goto :goto_b
.end method

.method public static rotateImage(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 16
    .parameter "rotationAngle"
    .parameter "outputMaxPixels"
    .parameter "originalPicture"

    .prologue
    .line 212
    const/high16 v7, 0x3f80

    .line 213
    .local v7, scaleFactor:F
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 214
    .local v5, outputMajorAxis:I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 216
    .local v6, outputMinorAxis:I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int/2addr v8, v9

    if-le v8, p1, :cond_2b

    .line 217
    int-to-float v8, v5

    int-to-float v9, v6

    div-float v0, v8, v9

    .line 218
    .local v0, aspectRatio:F
    int-to-float v8, p1

    mul-float/2addr v8, v0

    invoke-static {v8}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v8

    float-to-int v5, v8

    .line 220
    int-to-float v8, v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v7, v8, v9

    .line 221
    int-to-float v8, v6

    mul-float/2addr v8, v7

    float-to-int v6, v8

    .line 223
    .end local v0           #aspectRatio:F
    :cond_2b
    sget-object v8, Lcom/google/android/apps/unveil/env/ImageUtils;->LOGGER:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v9, "scaleFactor %f"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    sget-object v8, Lcom/google/android/apps/unveil/env/ImageUtils;->LOGGER:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v9, "outputMajorAxis: %d outputMinorAxis: %d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    move-object v1, p2

    .line 230
    .local v1, bitmapToCompress:Landroid/graphics/Bitmap;
    if-nez p0, :cond_63

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-ne v5, v8, :cond_63

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-eq v6, v8, :cond_b6

    .line 232
    :cond_63
    const/16 v8, 0x5a

    if-eq p0, v8, :cond_6b

    const/16 v8, 0x10e

    if-ne p0, v8, :cond_b7

    .line 233
    :cond_6b
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 242
    :goto_71
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 243
    .local v4, matrix:Landroid/graphics/Matrix;
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    neg-int v9, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 245
    int-to-float v8, p0

    invoke-virtual {v4, v8}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 246
    invoke-virtual {v4, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 247
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 249
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 250
    .local v3, filteredPaint:Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 251
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 252
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2, p2, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 254
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #filteredPaint:Landroid/graphics/Paint;
    .end local v4           #matrix:Landroid/graphics/Matrix;
    :cond_b6
    return-object v1

    .line 236
    :cond_b7
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_71
.end method

.method public static native rotateYuvFrame(III[B[B)V
.end method
