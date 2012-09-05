.class public Lcom/sec/print/mobileprint/io/ImageController;
.super Ljava/lang/Object;
.source "ImageController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/print/mobileprint/io/ImageController$ByteBufferOutputStream;
    }
.end annotation


# static fields
.field static final ERROR:I = 0x1

.field static final ERROR_OUT_OF_MEMORY:I = 0x2

.field static final SUCCESS:I


# instance fields
.field m_bitmapData:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/print/mobileprint/io/ImageController;->m_bitmapData:Landroid/graphics/Bitmap;

    .line 121
    return-void
.end method

.method static calcDestTopFromScaledBandImage(IID)I
    .registers 8
    .parameter "nOutputTop"
    .parameter "nSrcTop"
    .parameter "scaleRate"

    .prologue
    .line 737
    int-to-double v0, p0

    int-to-double v2, p1

    mul-double/2addr v2, p2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method static calcSrcBottom(ID)D
    .registers 7
    .parameter "nDestBottom"
    .parameter "scaleRate"

    .prologue
    const-wide/16 v0, 0x0

    .line 700
    cmpl-double v2, p1, v0

    if-nez v2, :cond_7

    .line 710
    :cond_6
    :goto_6
    return-wide v0

    .line 705
    :cond_7
    if-eqz p0, :cond_6

    .line 710
    int-to-double v0, p0

    div-double/2addr v0, p1

    const-wide/high16 v2, 0x3ff0

    add-double/2addr v0, v2

    goto :goto_6
.end method

.method static calcSrcTop(ID)D
    .registers 11
    .parameter "nDestTop"
    .parameter "scaleRate"

    .prologue
    const-wide/16 v2, 0x0

    .line 715
    cmpl-double v4, p1, v2

    if-nez v4, :cond_8

    move-wide v0, v2

    .line 731
    :cond_7
    :goto_7
    return-wide v0

    .line 720
    :cond_8
    if-nez p0, :cond_c

    move-wide v0, v2

    .line 722
    goto :goto_7

    .line 725
    :cond_c
    int-to-double v4, p0

    div-double/2addr v4, p1

    const-wide/high16 v6, 0x3ff0

    sub-double v0, v4, v6

    .line 726
    .local v0, result:D
    cmpg-double v4, v0, v2

    if-gez v4, :cond_7

    move-wide v0, v2

    .line 728
    goto :goto_7
.end method

.method public static downSampling(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 14
    .parameter "orgFilePath"
    .parameter "destFilePath"
    .parameter "nDownSamplingValue"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 837
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 838
    .local v3, option:Landroid/graphics/BitmapFactory$Options;
    iput p2, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 839
    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 841
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v9, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 842
    invoke-static {p0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 844
    .local v1, destBitmap:Landroid/graphics/Bitmap;
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 845
    .local v0, compressFormat:Landroid/graphics/Bitmap$CompressFormat;
    iget-object v9, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v10, "image/jpeg"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_2e

    .line 846
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 857
    :goto_21
    const/4 v4, 0x0

    .line 859
    .local v4, outStream:Ljava/io/OutputStream;
    :try_start_22
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_2a} :catch_74

    move-result-object v6

    .line 860
    .local v6, tempFolderPath:Ljava/io/File;
    if-nez v6, :cond_58

    .line 880
    .end local v6           #tempFolderPath:Ljava/io/File;
    :cond_2d
    :goto_2d
    return v7

    .line 847
    .end local v4           #outStream:Ljava/io/OutputStream;
    :cond_2e
    iget-object v9, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v10, "image/png"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_3b

    .line 848
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_21

    .line 849
    :cond_3b
    iget-object v9, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v10, "image/bmp"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_48

    .line 850
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_21

    .line 851
    :cond_48
    iget-object v9, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v10, "image/gif"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_55

    .line 852
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_21

    .line 854
    :cond_55
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_21

    .line 863
    .restart local v4       #outStream:Ljava/io/OutputStream;
    .restart local v6       #tempFolderPath:Ljava/io/File;
    :cond_58
    :try_start_58
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_64

    .line 865
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-eqz v9, :cond_2d

    .line 870
    :cond_64
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/io/FileNotFoundException; {:try_start_58 .. :try_end_69} :catch_74

    .end local v4           #outStream:Ljava/io/OutputStream;
    .local v5, outStream:Ljava/io/OutputStream;
    move-object v4, v5

    .line 877
    .end local v5           #outStream:Ljava/io/OutputStream;
    .end local v6           #tempFolderPath:Ljava/io/File;
    .restart local v4       #outStream:Ljava/io/OutputStream;
    :goto_6a
    const/16 v7, 0x64

    invoke-virtual {v1, v0, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 878
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    move v7, v8

    .line 880
    goto :goto_2d

    .line 872
    :catch_74
    move-exception v2

    .line 874
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_6a
.end method

.method public static getImageInfo(Ljava/lang/String;[I[I[I)Z
    .registers 11
    .parameter "fileBitmapPath"
    .parameter "width"
    .parameter "height"
    .parameter "bitCount"

    .prologue
    const/16 v6, 0x20

    const/16 v5, 0x10

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 223
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 224
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 225
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 227
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v3, p1, v1

    .line 228
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v3, p2, v1

    .line 231
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_25

    .line 233
    const-string v2, "ImageController"

    const-string v3, "ERROR - options.outWidth == -1\n"

    invoke-static {v2, v3}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :goto_24
    return v1

    .line 247
    :cond_25
    iget-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v3, v4, :cond_2f

    .line 249
    aput v6, p3, v1

    :goto_2d
    move v1, v2

    .line 268
    goto :goto_24

    .line 251
    :cond_2f
    iget-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v3, v4, :cond_3a

    .line 253
    const/16 v3, 0x8

    aput v3, p3, v1

    goto :goto_2d

    .line 255
    :cond_3a
    iget-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne v3, v4, :cond_43

    .line 257
    aput v5, p3, v1

    goto :goto_2d

    .line 259
    :cond_43
    iget-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v3, v4, :cond_4c

    .line 261
    aput v5, p3, v1

    goto :goto_2d

    .line 265
    :cond_4c
    aput v6, p3, v1

    goto :goto_2d
.end method

.method static getScaleRate(JJJJ)D
    .registers 16
    .parameter "lPaperWidth"
    .parameter "lPaperHeight"
    .parameter "lImageWidth"
    .parameter "lImageHeight"

    .prologue
    .line 692
    long-to-double v4, p0

    long-to-double v6, p4

    div-double v2, v4, v6

    .line 693
    .local v2, lWidthRate:D
    long-to-double v4, p2

    long-to-double v6, p6

    div-double v0, v4, v6

    .line 695
    .local v0, lHeightRate:D
    cmpl-double v4, v2, v0

    if-lez v4, :cond_d

    .end local v0           #lHeightRate:D
    :goto_c
    return-wide v0

    .restart local v0       #lHeightRate:D
    :cond_d
    move-wide v0, v2

    goto :goto_c
.end method

.method public static getScaledBandedPixelData(Ljava/lang/String;[IIIID)I
    .registers 25
    .parameter "fileBitmapPath"
    .parameter "pixelsOutput"
    .parameter "nStartPosYOnDestImage"
    .parameter "nDestHeight"
    .parameter "nBandHeightStep"
    .parameter "scaleRate"

    .prologue
    .line 282
    :try_start_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 283
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 285
    .local v15, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v15, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 286
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 288
    .local v16, srcBitmap:Landroid/graphics/Bitmap;
    move/from16 v0, p2

    move-wide/from16 v1, p5

    invoke-static {v0, v1, v2}, Lcom/sec/print/mobileprint/io/ImageController;->calcSrcTop(ID)D

    move-result-wide v4

    double-to-int v14, v4

    .line 289
    .local v14, nSrcTop:I
    add-int v4, p2, p3

    move-wide/from16 v0, p5

    invoke-static {v4, v0, v1}, Lcom/sec/print/mobileprint/io/ImageController;->calcSrcBottom(ID)D

    move-result-wide v4

    double-to-int v4, v4

    sub-int v13, v4, v14

    .line 290
    .local v13, nSrcHeight:I
    add-int v4, v14, v13

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_34

    .line 292
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v13, v4, v14

    .line 295
    :cond_34
    const/4 v4, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move-object/from16 v0, v16

    invoke-static {v0, v4, v14, v5, v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 298
    .local v17, tempBitmap:Landroid/graphics/Bitmap;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 299
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 301
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-double v4, v4

    mul-double v4, v4, p5

    double-to-int v4, v4

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-double v5, v5

    mul-double v5, v5, p5

    double-to-int v5, v5

    const/4 v6, 0x1

    move-object/from16 v0, v17

    invoke-static {v0, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 304
    .local v3, scaledBitmap:Landroid/graphics/Bitmap;
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 305
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 307
    move/from16 v0, p2

    move-wide/from16 v1, p5

    invoke-static {v0, v14, v1, v2}, Lcom/sec/print/mobileprint/io/ImageController;->calcDestTopFromScaledBandImage(IID)I

    move-result v8

    .line 308
    .local v8, nResultTopPos:I
    move/from16 v10, p4

    .line 309
    .local v10, nResultHeight:I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v8

    if-le v10, v4, :cond_79

    .line 311
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_76
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_76} :catch_ce

    move-result v4

    sub-int v10, v4, v8

    .line 316
    :cond_79
    const/4 v5, 0x0

    :try_start_7a
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 318
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 319
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_8e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7a .. :try_end_8e} :catch_90
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_8e} :catch_af

    .line 338
    const/4 v4, 0x0

    .end local v3           #scaledBitmap:Landroid/graphics/Bitmap;
    .end local v8           #nResultTopPos:I
    .end local v10           #nResultHeight:I
    .end local v13           #nSrcHeight:I
    .end local v14           #nSrcTop:I
    .end local v15           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v16           #srcBitmap:Landroid/graphics/Bitmap;
    .end local v17           #tempBitmap:Landroid/graphics/Bitmap;
    :goto_8f
    return v4

    .line 321
    .restart local v3       #scaledBitmap:Landroid/graphics/Bitmap;
    .restart local v8       #nResultTopPos:I
    .restart local v10       #nResultHeight:I
    .restart local v13       #nSrcHeight:I
    .restart local v14       #nSrcTop:I
    .restart local v15       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v16       #srcBitmap:Landroid/graphics/Bitmap;
    .restart local v17       #tempBitmap:Landroid/graphics/Bitmap;
    :catch_90
    move-exception v12

    .line 323
    .local v12, ex:Ljava/lang/OutOfMemoryError;
    :try_start_91
    const-string v4, "ImageController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const/4 v4, 0x2

    goto :goto_8f

    .line 326
    .end local v12           #ex:Ljava/lang/OutOfMemoryError;
    :catch_af
    move-exception v11

    .line 328
    .local v11, e:Ljava/lang/Exception;
    const-string v4, "ImageController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error2 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cc
    .catch Ljava/lang/OutOfMemoryError; {:try_start_91 .. :try_end_cc} :catch_ce

    .line 329
    const/4 v4, 0x1

    goto :goto_8f

    .line 332
    .end local v3           #scaledBitmap:Landroid/graphics/Bitmap;
    .end local v8           #nResultTopPos:I
    .end local v10           #nResultHeight:I
    .end local v11           #e:Ljava/lang/Exception;
    .end local v13           #nSrcHeight:I
    .end local v14           #nSrcTop:I
    .end local v15           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v16           #srcBitmap:Landroid/graphics/Bitmap;
    .end local v17           #tempBitmap:Landroid/graphics/Bitmap;
    :catch_ce
    move-exception v12

    .line 334
    .restart local v12       #ex:Ljava/lang/OutOfMemoryError;
    const-string v4, "ImageController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error3 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const/4 v4, 0x2

    goto :goto_8f
.end method

.method public static getScaledBandedPixelDataOnSplittedImage(Ljava/lang/String;[I[I[IIIID)I
    .registers 26
    .parameter "fileBitmapPath"
    .parameter "pixelsOutput"
    .parameter "widthOutput"
    .parameter "heightOutput"
    .parameter "nStartPosYOnDestImage"
    .parameter "nDestHeight"
    .parameter "nBandHeightStep"
    .parameter "scaleRate"

    .prologue
    .line 354
    :try_start_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 355
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 357
    .local v15, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v15, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 358
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 359
    .local v16, srcBitmap:Landroid/graphics/Bitmap;
    if-nez v16, :cond_35

    .line 361
    const-string v4, "ImageController"

    const-string v5, "srcBitmap == null"

    invoke-static {v4, v5}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v4, "ImageController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FilePath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_35
    const-string v4, "ImageController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Load File : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    move/from16 v0, p4

    move-wide/from16 v1, p7

    invoke-static {v0, v1, v2}, Lcom/sec/print/mobileprint/io/ImageController;->calcSrcTop(ID)D

    move-result-wide v4

    double-to-int v14, v4

    .line 367
    .local v14, nSrcTop:I
    add-int v4, p4, p5

    move-wide/from16 v0, p7

    invoke-static {v4, v0, v1}, Lcom/sec/print/mobileprint/io/ImageController;->calcSrcBottom(ID)D

    move-result-wide v4

    double-to-int v4, v4

    sub-int v13, v4, v14

    .line 368
    .local v13, nSrcHeight:I
    add-int v4, v14, v13

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_71

    .line 370
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v13, v4, v14

    .line 373
    :cond_71
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-double v4, v4

    mul-double v4, v4, p7

    double-to-int v4, v4

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-double v5, v5

    mul-double v5, v5, p7

    double-to-int v5, v5

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-static {v0, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 376
    .local v3, scaledBitmap:Landroid/graphics/Bitmap;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 377
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 379
    move/from16 v0, p4

    move-wide/from16 v1, p7

    invoke-static {v0, v14, v1, v2}, Lcom/sec/print/mobileprint/io/ImageController;->calcDestTopFromScaledBandImage(IID)I

    move-result v8

    .line 380
    .local v8, nResultTopPos:I
    move/from16 v10, p6

    .line 381
    .local v10, nResultHeight:I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v8

    if-le v10, v4, :cond_a5

    .line 383
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_a2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_a2} :catch_104

    move-result v4

    sub-int v10, v4, v8

    .line 388
    :cond_a5
    const/4 v5, 0x0

    :try_start_a6
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 390
    const/4 v4, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    aput v5, p2, v4

    .line 391
    const/4 v4, 0x0

    aput v10, p3, v4

    .line 392
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 393
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_c4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a6 .. :try_end_c4} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_c4} :catch_e5

    .line 412
    const/4 v4, 0x0

    .end local v3           #scaledBitmap:Landroid/graphics/Bitmap;
    .end local v8           #nResultTopPos:I
    .end local v10           #nResultHeight:I
    .end local v13           #nSrcHeight:I
    .end local v14           #nSrcTop:I
    .end local v15           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v16           #srcBitmap:Landroid/graphics/Bitmap;
    :goto_c5
    return v4

    .line 395
    .restart local v3       #scaledBitmap:Landroid/graphics/Bitmap;
    .restart local v8       #nResultTopPos:I
    .restart local v10       #nResultHeight:I
    .restart local v13       #nSrcHeight:I
    .restart local v14       #nSrcTop:I
    .restart local v15       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v16       #srcBitmap:Landroid/graphics/Bitmap;
    :catch_c6
    move-exception v12

    .line 397
    .local v12, ex:Ljava/lang/OutOfMemoryError;
    :try_start_c7
    const-string v4, "ERROR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error4 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const/4 v4, 0x2

    goto :goto_c5

    .line 400
    .end local v12           #ex:Ljava/lang/OutOfMemoryError;
    :catch_e5
    move-exception v11

    .line 402
    .local v11, e:Ljava/lang/Exception;
    const-string v4, "ERROR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error5 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_102
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c7 .. :try_end_102} :catch_104

    .line 403
    const/4 v4, 0x1

    goto :goto_c5

    .line 406
    .end local v3           #scaledBitmap:Landroid/graphics/Bitmap;
    .end local v8           #nResultTopPos:I
    .end local v10           #nResultHeight:I
    .end local v11           #e:Ljava/lang/Exception;
    .end local v13           #nSrcHeight:I
    .end local v14           #nSrcTop:I
    .end local v15           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v16           #srcBitmap:Landroid/graphics/Bitmap;
    :catch_104
    move-exception v12

    .line 408
    .restart local v12       #ex:Ljava/lang/OutOfMemoryError;
    const-string v4, "ERROR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error6 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const/4 v4, 0x2

    goto :goto_c5
.end method

.method public static resizeImage(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 18
    .parameter "filePath"
    .parameter "destFilePath"
    .parameter "type"

    .prologue
    .line 742
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 743
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v14

    .line 744
    .local v14, tempFolderPath:Ljava/io/File;
    if-nez v14, :cond_19

    .line 745
    const-string v2, "ImageController"

    const-string v3, " Error - tempFolderPath == null"

    invoke-static {v2, v3}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const/4 v2, 0x0

    .line 832
    :goto_18
    return v2

    .line 748
    :cond_19
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 750
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 752
    const-string v2, "ImageController"

    const-string v3, " Error - tempFolderPath.mkdirs()"

    invoke-static {v2, v3}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const/4 v2, 0x0

    goto :goto_18

    .line 757
    :cond_2e
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_8c

    .line 759
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 760
    .local v10, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x4

    iput v2, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 762
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v10, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 763
    invoke-static {p0, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 764
    .local v1, srcBitmap:Landroid/graphics/Bitmap;
    const-string v2, "ImageController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Width:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const/4 v12, 0x0

    .line 767
    .local v12, outStream:Ljava/io/OutputStream;
    :try_start_6a
    new-instance v12, Ljava/io/FileOutputStream;

    .end local v12           #outStream:Ljava/io/OutputStream;
    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/io/FileNotFoundException; {:try_start_6a .. :try_end_71} :catch_80

    .line 774
    .restart local v12       #outStream:Ljava/io/OutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 776
    :try_start_78
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 777
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7e} :catch_86

    .line 832
    .end local v1           #srcBitmap:Landroid/graphics/Bitmap;
    .end local v10           #option:Landroid/graphics/BitmapFactory$Options;
    .end local v12           #outStream:Ljava/io/OutputStream;
    :cond_7e
    :goto_7e
    const/4 v2, 0x1

    goto :goto_18

    .line 768
    .restart local v1       #srcBitmap:Landroid/graphics/Bitmap;
    .restart local v10       #option:Landroid/graphics/BitmapFactory$Options;
    :catch_80
    move-exception v8

    .line 770
    .local v8, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 771
    const/4 v2, 0x0

    goto :goto_18

    .line 778
    .end local v8           #e:Ljava/io/FileNotFoundException;
    .restart local v12       #outStream:Ljava/io/OutputStream;
    :catch_86
    move-exception v8

    .line 780
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 781
    const/4 v2, 0x0

    goto :goto_18

    .line 784
    .end local v1           #srcBitmap:Landroid/graphics/Bitmap;
    .end local v8           #e:Ljava/io/IOException;
    .end local v10           #option:Landroid/graphics/BitmapFactory$Options;
    .end local v12           #outStream:Ljava/io/OutputStream;
    :cond_8c
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_7e

    .line 788
    :try_start_91
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 790
    .local v11, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 791
    invoke-static {p0, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 793
    .restart local v1       #srcBitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xaa9

    const/16 v5, 0x89c

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 797
    .local v13, rotatedBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 798
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 800
    const-string v2, "ImageController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Width:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_da
    .catch Ljava/lang/OutOfMemoryError; {:try_start_91 .. :try_end_da} :catch_10a

    .line 801
    const/4 v12, 0x0

    .line 804
    .restart local v12       #outStream:Ljava/io/OutputStream;
    :try_start_db
    new-instance v12, Ljava/io/FileOutputStream;

    .end local v12           #outStream:Ljava/io/OutputStream;
    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_e2
    .catch Ljava/io/FileNotFoundException; {:try_start_db .. :try_end_e2} :catch_fc
    .catch Ljava/lang/OutOfMemoryError; {:try_start_db .. :try_end_e2} :catch_10a

    .line 812
    .restart local v12       #outStream:Ljava/io/OutputStream;
    :try_start_e2
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v13, v2, v3, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 813
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 814
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_ef
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e2 .. :try_end_ef} :catch_10a

    .line 816
    if-eqz v12, :cond_7e

    .line 818
    :try_start_f1
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f4} :catch_f5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f1 .. :try_end_f4} :catch_10a

    goto :goto_7e

    .line 819
    :catch_f5
    move-exception v8

    .line 821
    .restart local v8       #e:Ljava/io/IOException;
    :try_start_f6
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 822
    const/4 v2, 0x0

    goto/16 :goto_18

    .line 805
    .end local v8           #e:Ljava/io/IOException;
    .end local v12           #outStream:Ljava/io/OutputStream;
    :catch_fc
    move-exception v8

    .line 807
    .local v8, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 808
    const-string v2, "ImageController"

    const-string v3, " Error - FileNotFoundException e"

    invoke-static {v2, v3}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_107
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f6 .. :try_end_107} :catch_10a

    .line 809
    const/4 v2, 0x0

    goto/16 :goto_18

    .line 826
    .end local v1           #srcBitmap:Landroid/graphics/Bitmap;
    .end local v8           #e:Ljava/io/FileNotFoundException;
    .end local v11           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v13           #rotatedBitmap:Landroid/graphics/Bitmap;
    :catch_10a
    move-exception v9

    .line 828
    .local v9, ex:Ljava/lang/OutOfMemoryError;
    const/4 v2, 0x0

    goto/16 :goto_18
.end method

.method public static splitImageToJPG(Ljava/lang/String;Ljava/lang/String;IIDI)I
    .registers 32
    .parameter "fileFullPath"
    .parameter "newFilePath"
    .parameter "fristBandHeight"
    .parameter "bandHeight"
    .parameter "scaleRate"
    .parameter "rotateValue"

    .prologue
    .line 568
    :try_start_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 569
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 571
    .local v15, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v9, v15, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 572
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 574
    .local v3, srcBitmap:Landroid/graphics/Bitmap;
    const/16 v21, 0x0

    .line 575
    .local v21, startPos:I
    move/from16 v12, p2

    .line 578
    .local v12, height:I
    const/16 v9, 0x5a

    move/from16 v0, p6

    if-eq v0, v9, :cond_22

    const/16 v9, 0x10e

    move/from16 v0, p6

    if-ne v0, v9, :cond_6d

    .line 580
    :cond_22
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 581
    .local v16, orgImageHeight:I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .line 589
    .local v17, orgImageWidth:I
    :goto_2a
    const/16 v20, 0x0

    .line 590
    .local v20, srcTop:I
    const/16 v19, 0x0

    .line 592
    .local v19, srcHeight:I
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 593
    .local v8, matrixRotate:Landroid/graphics/Matrix;
    move/from16 v0, p6

    int-to-float v9, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v8, v9, v0, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 594
    const/16 v18, 0x0

    .line 596
    .local v18, outStream:Ljava/io/OutputStream;
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v22

    .line 597
    .local v22, tempFolderPath:Ljava/io/File;
    if-nez v22, :cond_76

    .line 598
    const-string v9, "ImageController"

    const-string v23, "Error tempFolderPath == null"

    move-object/from16 v0, v23

    invoke-static {v9, v0}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const/4 v9, 0x1

    .line 687
    .end local v3           #srcBitmap:Landroid/graphics/Bitmap;
    .end local v8           #matrixRotate:Landroid/graphics/Matrix;
    .end local v12           #height:I
    .end local v15           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v16           #orgImageHeight:I
    .end local v17           #orgImageWidth:I
    .end local v18           #outStream:Ljava/io/OutputStream;
    .end local v19           #srcHeight:I
    .end local v20           #srcTop:I
    .end local v21           #startPos:I
    .end local v22           #tempFolderPath:Ljava/io/File;
    :goto_6c
    return v9

    .line 585
    .restart local v3       #srcBitmap:Landroid/graphics/Bitmap;
    .restart local v12       #height:I
    .restart local v15       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v21       #startPos:I
    :cond_6d
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 586
    .restart local v16       #orgImageHeight:I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .restart local v17       #orgImageWidth:I
    goto :goto_2a

    .line 601
    .restart local v8       #matrixRotate:Landroid/graphics/Matrix;
    .restart local v18       #outStream:Ljava/io/OutputStream;
    .restart local v19       #srcHeight:I
    .restart local v20       #srcTop:I
    .restart local v22       #tempFolderPath:Ljava/io/File;
    :cond_76
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_8d

    .line 603
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-nez v9, :cond_8d

    .line 605
    const-string v9, "ERROR"

    const-string v23, "error7 : ERROR - mkdirs"

    move-object/from16 v0, v23

    invoke-static {v9, v0}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const/4 v9, 0x1

    goto :goto_6c

    .line 610
    :cond_8d
    const/4 v4, 0x0

    .line 611
    .local v4, splittedX:I
    const/4 v5, 0x0

    .line 612
    .local v5, splittedY:I
    const/4 v6, 0x0

    .line 613
    .local v6, splittedWidth:I
    const/4 v7, 0x0

    .line 616
    .local v7, splittedHeight:I
    :goto_91
    move/from16 v0, v21

    move-wide/from16 v1, p4

    invoke-static {v0, v1, v2}, Lcom/sec/print/mobileprint/io/ImageController;->calcSrcTop(ID)D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v20, v0

    .line 617
    move/from16 v0, v16

    move/from16 v1, v20

    if-gt v0, v1, :cond_de

    .line 619
    const-string v9, "ImageController"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "break orgImageHeight("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "srcTop ("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v9, v0}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 680
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 687
    const/4 v9, 0x0

    goto :goto_6c

    .line 623
    :cond_de
    add-int v9, v21, v12

    move-wide/from16 v0, p4

    invoke-static {v9, v0, v1}, Lcom/sec/print/mobileprint/io/ImageController;->calcSrcBottom(ID)D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-int v9, v0

    sub-int v19, v9, v20

    .line 624
    add-int v9, v20, v19

    move/from16 v0, v16

    if-le v9, v0, :cond_f3

    .line 626
    sub-int v19, v16, v20

    .line 629
    :cond_f3
    sparse-switch p6, :sswitch_data_1c6

    .line 650
    :goto_f6
    :sswitch_f6
    const-string v9, "ImageController"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "splittedX:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", splittedY:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", splittedWidth:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", splittedHeight:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v9, v0}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 652
    .local v13, newSplitBitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 654
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_152
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_152} :catch_1a4

    move-result-object v14

    .line 657
    .local v14, newSplitFilePath:Ljava/lang/String;
    :try_start_153
    new-instance v18, Ljava/io/FileOutputStream;

    .end local v18           #outStream:Ljava/io/OutputStream;
    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_15a
    .catch Ljava/io/FileNotFoundException; {:try_start_153 .. :try_end_15a} :catch_186
    .catch Ljava/lang/OutOfMemoryError; {:try_start_153 .. :try_end_15a} :catch_1a4

    .line 664
    .restart local v18       #outStream:Ljava/io/OutputStream;
    :try_start_15a
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v23, 0x64

    move/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v13, v9, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_165
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15a .. :try_end_165} :catch_1a4

    .line 666
    :try_start_165
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_168
    .catch Ljava/io/IOException; {:try_start_165 .. :try_end_168} :catch_196
    .catch Ljava/lang/OutOfMemoryError; {:try_start_165 .. :try_end_168} :catch_1a4

    .line 672
    :goto_168
    :try_start_168
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 673
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 675
    add-int v21, v21, v12

    .line 676
    move/from16 v12, p3

    .line 677
    goto/16 :goto_91

    .line 632
    .end local v13           #newSplitBitmap:Landroid/graphics/Bitmap;
    .end local v14           #newSplitFilePath:Ljava/lang/String;
    :sswitch_174
    const/4 v4, 0x0

    .line 633
    move/from16 v5, v20

    .line 634
    move/from16 v6, v17

    .line 635
    move/from16 v7, v19

    .line 636
    goto/16 :goto_f6

    .line 638
    :sswitch_17d
    move/from16 v4, v20

    .line 639
    const/4 v5, 0x0

    .line 640
    move/from16 v6, v19

    .line 641
    move/from16 v7, v17

    .line 642
    goto/16 :goto_f6

    .line 658
    .end local v18           #outStream:Ljava/io/OutputStream;
    .restart local v13       #newSplitBitmap:Landroid/graphics/Bitmap;
    .restart local v14       #newSplitFilePath:Ljava/lang/String;
    :catch_186
    move-exception v10

    .line 660
    .local v10, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 661
    const-string v9, "ImageController"

    const-string v23, "Error A"

    move-object/from16 v0, v23

    invoke-static {v9, v0}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const/4 v9, 0x1

    goto/16 :goto_6c

    .line 667
    .end local v10           #e:Ljava/io/FileNotFoundException;
    .restart local v18       #outStream:Ljava/io/OutputStream;
    :catch_196
    move-exception v10

    .line 669
    .local v10, e:Ljava/io/IOException;
    const-string v9, "ImageController"

    const-string v23, "Error newSplitBitmap.compress"

    move-object/from16 v0, v23

    invoke-static {v9, v0}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1a3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_168 .. :try_end_1a3} :catch_1a4

    goto :goto_168

    .line 681
    .end local v3           #srcBitmap:Landroid/graphics/Bitmap;
    .end local v4           #splittedX:I
    .end local v5           #splittedY:I
    .end local v6           #splittedWidth:I
    .end local v7           #splittedHeight:I
    .end local v8           #matrixRotate:Landroid/graphics/Matrix;
    .end local v10           #e:Ljava/io/IOException;
    .end local v12           #height:I
    .end local v13           #newSplitBitmap:Landroid/graphics/Bitmap;
    .end local v14           #newSplitFilePath:Ljava/lang/String;
    .end local v15           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v16           #orgImageHeight:I
    .end local v17           #orgImageWidth:I
    .end local v18           #outStream:Ljava/io/OutputStream;
    .end local v19           #srcHeight:I
    .end local v20           #srcTop:I
    .end local v21           #startPos:I
    .end local v22           #tempFolderPath:Ljava/io/File;
    :catch_1a4
    move-exception v11

    .line 683
    .local v11, ex:Ljava/lang/OutOfMemoryError;
    const-string v9, "ImageController"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "error8 : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v9, v0}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const/4 v9, 0x2

    goto/16 :goto_6c

    .line 629
    :sswitch_data_1c6
    .sparse-switch
        0x0 -> :sswitch_174
        0x5a -> :sswitch_17d
        0xb4 -> :sswitch_f6
    .end sparse-switch
.end method

.method public static splitImageToJPGCrop(Ljava/lang/String;Ljava/lang/String;IIDIIIIII)I
    .registers 37
    .parameter "fileFullPath"
    .parameter "newFilePath"
    .parameter "fristBandHeight"
    .parameter "bandHeight"
    .parameter "scaleRate"
    .parameter "rotateValue"
    .parameter "nCropValue"
    .parameter "cropPosLeft"
    .parameter "cropPosTop"
    .parameter "cropWidth"
    .parameter "cropHeight"

    .prologue
    .line 419
    :try_start_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 420
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 422
    .local v15, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v9, v15, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 423
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 425
    .local v3, srcBitmap:Landroid/graphics/Bitmap;
    const/16 v21, 0x0

    .line 426
    .local v21, startPos:I
    move/from16 v12, p2

    .line 429
    .local v12, height:I
    const/16 v9, 0x5a

    move/from16 v0, p6

    if-eq v0, v9, :cond_22

    const/16 v9, 0x10e

    move/from16 v0, p6

    if-ne v0, v9, :cond_6d

    .line 431
    :cond_22
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 432
    .local v16, orgImageHeight:I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .line 440
    .local v17, orgImageWidth:I
    :goto_2a
    const/16 v20, 0x0

    .line 441
    .local v20, srcTop:I
    const/16 v19, 0x0

    .line 443
    .local v19, srcHeight:I
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 444
    .local v8, matrixRotate:Landroid/graphics/Matrix;
    move/from16 v0, p6

    int-to-float v9, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v8, v9, v0, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 445
    const/16 v18, 0x0

    .line 447
    .local v18, outStream:Ljava/io/OutputStream;
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v22

    .line 448
    .local v22, tempFolderPath:Ljava/io/File;
    if-nez v22, :cond_76

    .line 449
    const-string v9, "ImageController"

    const-string v23, "Error tempFolderPath == null"

    move-object/from16 v0, v23

    invoke-static {v9, v0}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const/4 v9, 0x1

    .line 560
    .end local v3           #srcBitmap:Landroid/graphics/Bitmap;
    .end local v8           #matrixRotate:Landroid/graphics/Matrix;
    .end local v12           #height:I
    .end local v15           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v16           #orgImageHeight:I
    .end local v17           #orgImageWidth:I
    .end local v18           #outStream:Ljava/io/OutputStream;
    .end local v19           #srcHeight:I
    .end local v20           #srcTop:I
    .end local v21           #startPos:I
    .end local v22           #tempFolderPath:Ljava/io/File;
    :goto_6c
    return v9

    .line 436
    .restart local v3       #srcBitmap:Landroid/graphics/Bitmap;
    .restart local v12       #height:I
    .restart local v15       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v21       #startPos:I
    :cond_6d
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    .line 437
    .restart local v16       #orgImageHeight:I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .restart local v17       #orgImageWidth:I
    goto :goto_2a

    .line 452
    .restart local v8       #matrixRotate:Landroid/graphics/Matrix;
    .restart local v18       #outStream:Ljava/io/OutputStream;
    .restart local v19       #srcHeight:I
    .restart local v20       #srcTop:I
    .restart local v22       #tempFolderPath:Ljava/io/File;
    :cond_76
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_8d

    .line 454
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-nez v9, :cond_8d

    .line 456
    const-string v9, "ImageController"

    const-string v23, "error7 : ERROR - mkdirs"

    move-object/from16 v0, v23

    invoke-static {v9, v0}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const/4 v9, 0x1

    goto :goto_6c

    .line 461
    :cond_8d
    const/4 v9, 0x1

    move/from16 v0, p7

    if-ne v0, v9, :cond_e7

    .line 463
    move/from16 v16, p11

    .line 464
    move/from16 v17, p10

    .line 480
    :goto_96
    const/4 v4, 0x0

    .line 481
    .local v4, splittedX:I
    const/4 v5, 0x0

    .line 482
    .local v5, splittedY:I
    const/4 v6, 0x0

    .line 483
    .local v6, splittedWidth:I
    const/4 v7, 0x0

    .line 486
    .local v7, splittedHeight:I
    :goto_9a
    move/from16 v0, v21

    move-wide/from16 v1, p4

    invoke-static {v0, v1, v2}, Lcom/sec/print/mobileprint/io/ImageController;->calcSrcTop(ID)D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v20, v0

    .line 487
    move/from16 v0, v16

    move/from16 v1, v20

    if-gt v0, v1, :cond_ec

    .line 489
    const-string v9, "ImageController"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "break orgImageHeight("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "srcTop ("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v9, v0}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 553
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 560
    const/4 v9, 0x0

    goto :goto_6c

    .line 476
    .end local v4           #splittedX:I
    .end local v5           #splittedY:I
    .end local v6           #splittedWidth:I
    .end local v7           #splittedHeight:I
    :cond_e7
    const/16 p8, 0x0

    .line 477
    const/16 p9, 0x0

    goto :goto_96

    .line 493
    .restart local v4       #splittedX:I
    .restart local v5       #splittedY:I
    .restart local v6       #splittedWidth:I
    .restart local v7       #splittedHeight:I
    :cond_ec
    add-int v9, v21, v12

    move-wide/from16 v0, p4

    invoke-static {v9, v0, v1}, Lcom/sec/print/mobileprint/io/ImageController;->calcSrcBottom(ID)D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-int v9, v0

    sub-int v19, v9, v20

    .line 494
    add-int v9, v20, v19

    move/from16 v0, v16

    if-le v9, v0, :cond_101

    .line 496
    sub-int v19, v16, v20

    .line 499
    :cond_101
    sparse-switch p6, :sswitch_data_1f2

    .line 522
    :goto_104
    :sswitch_104
    const-string v9, "ImageController"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "splittedX:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", splittedY:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", splittedWidth:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", splittedHeight:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v9, v0}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 524
    .local v13, newSplitBitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 526
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_160
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_160} :catch_1d0

    move-result-object v14

    .line 529
    .local v14, newSplitFilePath:Ljava/lang/String;
    :try_start_161
    new-instance v18, Ljava/io/FileOutputStream;

    .end local v18           #outStream:Ljava/io/OutputStream;
    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_168
    .catch Ljava/io/FileNotFoundException; {:try_start_161 .. :try_end_168} :catch_1b2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_161 .. :try_end_168} :catch_1d0

    .line 536
    .restart local v18       #outStream:Ljava/io/OutputStream;
    :try_start_168
    const-string v9, "ImageController"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Split - "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v9, v0}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v23, 0x64

    move/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v13, v9, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_18f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_168 .. :try_end_18f} :catch_1d0

    .line 539
    :try_start_18f
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_192
    .catch Ljava/io/IOException; {:try_start_18f .. :try_end_192} :catch_1c2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18f .. :try_end_192} :catch_1d0

    .line 545
    :goto_192
    :try_start_192
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 546
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 548
    add-int v21, v21, v12

    .line 549
    move/from16 v12, p3

    .line 550
    goto/16 :goto_9a

    .line 502
    .end local v13           #newSplitBitmap:Landroid/graphics/Bitmap;
    .end local v14           #newSplitFilePath:Ljava/lang/String;
    :sswitch_19e
    move/from16 v4, p8

    .line 503
    add-int v5, v20, p9

    .line 504
    move/from16 v6, v17

    .line 505
    move/from16 v7, v19

    .line 506
    goto/16 :goto_104

    .line 508
    :sswitch_1a8
    add-int v4, v20, p9

    .line 509
    move/from16 v5, p8

    .line 510
    move/from16 v6, v19

    .line 511
    move/from16 v7, v17

    .line 512
    goto/16 :goto_104

    .line 530
    .end local v18           #outStream:Ljava/io/OutputStream;
    .restart local v13       #newSplitBitmap:Landroid/graphics/Bitmap;
    .restart local v14       #newSplitFilePath:Ljava/lang/String;
    :catch_1b2
    move-exception v10

    .line 532
    .local v10, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 533
    const-string v9, "ImageController"

    const-string v23, "Error A"

    move-object/from16 v0, v23

    invoke-static {v9, v0}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const/4 v9, 0x1

    goto/16 :goto_6c

    .line 540
    .end local v10           #e:Ljava/io/FileNotFoundException;
    .restart local v18       #outStream:Ljava/io/OutputStream;
    :catch_1c2
    move-exception v10

    .line 542
    .local v10, e:Ljava/io/IOException;
    const-string v9, "ImageController"

    const-string v23, "Error newSplitBitmap.compress"

    move-object/from16 v0, v23

    invoke-static {v9, v0}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1cf
    .catch Ljava/lang/OutOfMemoryError; {:try_start_192 .. :try_end_1cf} :catch_1d0

    goto :goto_192

    .line 554
    .end local v3           #srcBitmap:Landroid/graphics/Bitmap;
    .end local v4           #splittedX:I
    .end local v5           #splittedY:I
    .end local v6           #splittedWidth:I
    .end local v7           #splittedHeight:I
    .end local v8           #matrixRotate:Landroid/graphics/Matrix;
    .end local v10           #e:Ljava/io/IOException;
    .end local v12           #height:I
    .end local v13           #newSplitBitmap:Landroid/graphics/Bitmap;
    .end local v14           #newSplitFilePath:Ljava/lang/String;
    .end local v15           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v16           #orgImageHeight:I
    .end local v17           #orgImageWidth:I
    .end local v18           #outStream:Ljava/io/OutputStream;
    .end local v19           #srcHeight:I
    .end local v20           #srcTop:I
    .end local v21           #startPos:I
    .end local v22           #tempFolderPath:Ljava/io/File;
    :catch_1d0
    move-exception v11

    .line 556
    .local v11, ex:Ljava/lang/OutOfMemoryError;
    const-string v9, "ImageController"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "error8 : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v9, v0}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const/4 v9, 0x2

    goto/16 :goto_6c

    .line 499
    :sswitch_data_1f2
    .sparse-switch
        0x0 -> :sswitch_19e
        0x5a -> :sswitch_1a8
        0xb4 -> :sswitch_104
    .end sparse-switch
.end method


# virtual methods
.method public closeImage()V
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sec/print/mobileprint/io/ImageController;->m_bitmapData:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_f

    .line 214
    iget-object v0, p0, Lcom/sec/print/mobileprint/io/ImageController;->m_bitmapData:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/print/mobileprint/io/ImageController;->m_bitmapData:Landroid/graphics/Bitmap;

    .line 217
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 219
    :cond_f
    return-void
.end method

.method public extractImageToARGB32RawData(II[I[I)I
    .registers 15
    .parameter "startHeightPos"
    .parameter "bandHeightStep"
    .parameter "pixelsOutput"
    .parameter "nOutDataHeight"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/print/mobileprint/io/ImageController;->m_bitmapData:Landroid/graphics/Bitmap;

    if-nez v0, :cond_b

    .line 91
    const-string v0, "error10-1 : m_bitmapData == null "

    invoke-static {p0, v0}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x1

    .line 118
    :goto_a
    return v0

    .line 94
    :cond_b
    move v7, p2

    .line 95
    .local v7, step:I
    iget-object v0, p0, Lcom/sec/print/mobileprint/io/ImageController;->m_bitmapData:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int/2addr v0, p1

    if-le v7, v0, :cond_1d

    .line 97
    iget-object v0, p0, Lcom/sec/print/mobileprint/io/ImageController;->m_bitmapData:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int v7, v0, p1

    .line 102
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/sec/print/mobileprint/io/ImageController;->m_bitmapData:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/print/mobileprint/io/ImageController;->m_bitmapData:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/print/mobileprint/io/ImageController;->m_bitmapData:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    move-object v1, p3

    move v5, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V
    :try_end_32
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_32} :catch_37
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_32} :catch_54

    .line 116
    const/4 v0, 0x0

    aput v7, p4, v0

    .line 118
    const/4 v0, 0x0

    goto :goto_a

    .line 105
    :catch_37
    move-exception v9

    .line 107
    .local v9, ex:Ljava/lang/OutOfMemoryError;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error9 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x2

    goto :goto_a

    .line 110
    .end local v9           #ex:Ljava/lang/OutOfMemoryError;
    :catch_54
    move-exception v8

    .line 112
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "ERROR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error10 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public extractImageToJPGFileData(II[B[I[I)I
    .registers 17
    .parameter "startHeightPos"
    .parameter "bandHeightStep"
    .parameter "outputBuffer"
    .parameter "nDataHeight"
    .parameter "nDataLength"

    .prologue
    .line 160
    move v4, p2

    .line 161
    .local v4, step:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extractImageToJPGFileData => step:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/print/mobileprint/io/ImageController;->m_bitmapData:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startHeightPos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/sec/print/mobileprint/io/ImageController;->m_bitmapData:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int/2addr v0, p1

    if-le v4, v0, :cond_42

    .line 164
    iget-object v0, p0, Lcom/sec/print/mobileprint/io/ImageController;->m_bitmapData:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int v4, v0, p1

    .line 166
    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "step:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    :try_start_58
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 171
    .local v5, matrix:Landroid/graphics/Matrix;
    iget-object v0, p0, Lcom/sec/print/mobileprint/io/ImageController;->m_bitmapData:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/print/mobileprint/io/ImageController;->m_bitmapData:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v6, 0x1

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 176
    .local v7, bandBitmap:Landroid/graphics/Bitmap;
    new-instance v10, Lcom/sec/print/mobileprint/io/ImageController$ByteBufferOutputStream;

    invoke-direct {v10, p0, p3}, Lcom/sec/print/mobileprint/io/ImageController$ByteBufferOutputStream;-><init>(Lcom/sec/print/mobileprint/io/ImageController;[B)V
    :try_end_71
    .catch Ljava/lang/OutOfMemoryError; {:try_start_58 .. :try_end_71} :catch_b4
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_71} :catch_d1

    .line 178
    .local v10, outStream:Lcom/sec/print/mobileprint/io/ImageController$ByteBufferOutputStream;
    :try_start_71
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {v7, v0, v1, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_78} :catch_7d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_71 .. :try_end_78} :catch_b4

    move-result v0

    if-nez v0, :cond_9a

    .line 180
    const/4 v0, 0x1

    .line 207
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v7           #bandBitmap:Landroid/graphics/Bitmap;
    .end local v10           #outStream:Lcom/sec/print/mobileprint/io/ImageController$ByteBufferOutputStream;
    :goto_7c
    return v0

    .line 182
    .restart local v5       #matrix:Landroid/graphics/Matrix;
    .restart local v7       #bandBitmap:Landroid/graphics/Bitmap;
    .restart local v10       #outStream:Lcom/sec/print/mobileprint/io/ImageController$ByteBufferOutputStream;
    :catch_7d
    move-exception v8

    .line 184
    .local v8, e:Ljava/lang/Exception;
    :try_start_7e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error13 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    const/4 v0, 0x1

    goto :goto_7c

    .line 188
    .end local v8           #e:Ljava/lang/Exception;
    :cond_9a
    const/4 v0, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    aput v1, p4, v0

    .line 189
    const/4 v0, 0x0

    invoke-virtual {v10}, Lcom/sec/print/mobileprint/io/ImageController$ByteBufferOutputStream;->getLength()I

    move-result v1

    aput v1, p5, v0

    .line 191
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 192
    const/4 v7, 0x0

    .line 193
    invoke-virtual {v10}, Lcom/sec/print/mobileprint/io/ImageController$ByteBufferOutputStream;->close()V

    .line 194
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_b2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7e .. :try_end_b2} :catch_b4
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_b2} :catch_d1

    .line 207
    const/4 v0, 0x0

    goto :goto_7c

    .line 196
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v7           #bandBitmap:Landroid/graphics/Bitmap;
    .end local v10           #outStream:Lcom/sec/print/mobileprint/io/ImageController$ByteBufferOutputStream;
    :catch_b4
    move-exception v9

    .line 198
    .local v9, ex:Ljava/lang/OutOfMemoryError;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error11 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    const/4 v0, 0x2

    goto :goto_7c

    .line 201
    .end local v9           #ex:Ljava/lang/OutOfMemoryError;
    :catch_d1
    move-exception v8

    .line 203
    .restart local v8       #e:Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error12 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x1

    goto :goto_7c
.end method

.method public loadImage(Ljava/lang/String;)I
    .registers 16
    .parameter "fileBitmapPath"

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/sec/print/mobileprint/io/ImageController;->closeImage()V

    .line 30
    :try_start_3
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 31
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 33
    .local v13, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v13, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 34
    invoke-static {p1, v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/print/mobileprint/io/ImageController;->m_bitmapData:Landroid/graphics/Bitmap;

    .line 35
    iget-object v0, p0, Lcom/sec/print/mobileprint/io/ImageController;->m_bitmapData:Landroid/graphics/Bitmap;

    if-nez v0, :cond_20

    .line 37
    const-string v0, "Fail to decode"

    invoke-static {p0, v0}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x2

    .line 84
    .end local v13           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_1f
    return v0

    .line 42
    .restart local v13       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_20
    const/16 v9, 0x80

    .line 43
    .local v9, m_cnMaxBandHeight:I
    const/16 v10, 0x18

    .line 45
    .local v10, nBitPerPixelNative:I
    iget-object v0, p0, Lcom/sec/print/mobileprint/io/ImageController;->m_bitmapData:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/2addr v0, v10

    add-int/lit8 v0, v0, 0x1f

    div-int/lit8 v0, v0, 0x20

    mul-int/lit8 v12, v0, 0x4

    .line 46
    .local v12, nWidthByte:I
    const/high16 v0, 0x4

    div-int v11, v0, v12

    .line 47
    .local v11, nMinimumHeight:I
    const/4 v4, 0x0

    .line 48
    .local v4, nBandHeight:I
    const/16 v0, 0x80

    if-ge v0, v11, :cond_68

    .line 50
    move v4, v11

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nBandHeight for Test :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/print/mobileprint/MPLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    :goto_51
    iget-object v0, p0, Lcom/sec/print/mobileprint/io/ImageController;->m_bitmapData:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, v4, :cond_81

    .line 60
    const-string v0, "Skip - check memory avaiable"

    invoke-static {p0, v0}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    :goto_5e
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 75
    const-string v0, "success load image"

    invoke-static {p0, v0}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x0

    goto :goto_1f

    .line 54
    :cond_68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nBandHeight for Test :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    const/16 v4, 0x80

    goto :goto_51

    .line 63
    :cond_81
    const-string v0, "Working - check memory avaiable"

    invoke-static {p0, v0}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 65
    .local v5, matrix:Landroid/graphics/Matrix;
    iget-object v0, p0, Lcom/sec/print/mobileprint/io/ImageController;->m_bitmapData:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/print/mobileprint/io/ImageController;->m_bitmapData:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 69
    .local v7, bandBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    .line 71
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_a0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_a0} :catch_a1

    goto :goto_5e

    .line 77
    .end local v4           #nBandHeight:I
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v7           #bandBitmap:Landroid/graphics/Bitmap;
    .end local v9           #m_cnMaxBandHeight:I
    .end local v10           #nBitPerPixelNative:I
    .end local v11           #nMinimumHeight:I
    .end local v12           #nWidthByte:I
    .end local v13           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_a1
    move-exception v8

    .line 79
    .local v8, ex:Ljava/lang/OutOfMemoryError;
    invoke-virtual {p0}, Lcom/sec/print/mobileprint/io/ImageController;->closeImage()V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadImage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/print/mobileprint/MPLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x2

    goto/16 :goto_1f
.end method
