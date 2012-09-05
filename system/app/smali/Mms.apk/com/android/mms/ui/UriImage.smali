.class public Lcom/android/mms/ui/UriImage;
.super Ljava/lang/Object;
.source "UriImage.java"


# instance fields
.field private mContentType:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mHeight:I

.field private mPath:Ljava/lang/String;

.field private mRotate:I

.field private mSrc:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 7
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    .line 74
    if-eqz p1, :cond_a

    if-nez p2, :cond_10

    .line 75
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 78
    :cond_10
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, scheme:Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/UriImage;->initFromContentUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 85
    :cond_1f
    :goto_1f
    invoke-static {p2, p1}, Lcom/android/mms/ui/UriImage;->getRotatedDegree(Landroid/net/Uri;Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    .line 87
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    const/16 v2, 0x20

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    .line 97
    invoke-direct {p0}, Lcom/android/mms/ui/UriImage;->decodeBoundsInfo()V

    .line 98
    return-void

    .line 81
    :cond_4b
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/UriImage;->initFromFile(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1f
.end method

.method private decodeBoundsInfo()V
    .registers 7

    .prologue
    .line 149
    const/4 v1, 0x0

    .line 151
    .local v1, input:Ljava/io/InputStream;
    :try_start_1
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 152
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 153
    .local v2, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 154
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 155
    iget v3, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    if-eqz v3, :cond_23

    iget v3, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_31

    .line 156
    :cond_23
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    .line 157
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/android/mms/ui/UriImage;->mHeight:I
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_82
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_2b} :catch_3a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_2b} :catch_5a

    .line 168
    :goto_2b
    if-eqz v1, :cond_30

    .line 170
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_51

    .line 177
    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    :cond_30
    :goto_30
    return-void

    .line 159
    .restart local v2       #opt:Landroid/graphics/BitmapFactory$Options;
    :cond_31
    :try_start_31
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    .line 160
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/android/mms/ui/UriImage;->mHeight:I
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_82
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_39} :catch_3a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_31 .. :try_end_39} :catch_5a

    goto :goto_2b

    .line 162
    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_3a
    move-exception v0

    .line 164
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_3b
    const-string v3, "Mms/image"

    const-string v4, "IOException caught while opening stream"

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_82

    .line 168
    if-eqz v1, :cond_30

    .line 170
    :try_start_44
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_30

    .line 171
    :catch_48
    move-exception v0

    .line 173
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30

    .line 171
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_51
    move-exception v0

    .line 173
    .restart local v0       #e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30

    .line 165
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_5a
    move-exception v0

    .line 166
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_5b
    const-string v3, "Mms/image"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OutOfMemoryError"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_5b .. :try_end_73} :catchall_82

    .line 168
    if-eqz v1, :cond_30

    .line 170
    :try_start_75
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_30

    .line 171
    :catch_79
    move-exception v0

    .line 173
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30

    .line 168
    .end local v0           #e:Ljava/io/IOException;
    :catchall_82
    move-exception v3

    if-eqz v1, :cond_88

    .line 170
    :try_start_85
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89

    .line 174
    :cond_88
    :goto_88
    throw v3

    .line 171
    :catch_89
    move-exception v0

    .line 173
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "Mms/image"

    const-string v5, "IOException caught while closing stream"

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_88
.end method

.method private static getDegreeFromFile(Landroid/net/Uri;)I
    .registers 8
    .parameter "uri"

    .prologue
    .line 477
    const/4 v4, 0x0

    .line 480
    .local v4, path:Ljava/lang/String;
    const-string v5, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 481
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 489
    :goto_11
    :try_start_11
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_16} :catch_31

    .line 495
    .local v2, mExif:Landroid/media/ExifInterface;
    const/4 v0, 0x0

    .line 496
    .local v0, degree:I
    if-eqz v2, :cond_2b

    .line 497
    const/4 v3, 0x0

    .line 499
    .local v3, orientation:I
    :try_start_1a
    const-string v5, "Orientation"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_23} :catch_3b

    move-result v3

    .line 503
    :goto_24
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2b

    .line 504
    packed-switch v3, :pswitch_data_48

    .line 515
    :pswitch_2a
    const/4 v0, 0x0

    .line 520
    .end local v0           #degree:I
    .end local v2           #mExif:Landroid/media/ExifInterface;
    .end local v3           #orientation:I
    :cond_2b
    :goto_2b
    return v0

    .line 483
    :cond_2c
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_11

    .line 490
    :catch_31
    move-exception v1

    .line 491
    .local v1, ex:Ljava/io/IOException;
    const-string v5, "Mms/image"

    const-string v6, "can not read exif"

    invoke-static {v5, v6, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 492
    const/4 v0, 0x0

    goto :goto_2b

    .line 500
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v0       #degree:I
    .restart local v2       #mExif:Landroid/media/ExifInterface;
    .restart local v3       #orientation:I
    :catch_3b
    move-exception v1

    .line 501
    .local v1, ex:Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_24

    .line 506
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :pswitch_3e
    const/16 v0, 0x5a

    .line 507
    goto :goto_2b

    .line 509
    :pswitch_41
    const/16 v0, 0xb4

    .line 510
    goto :goto_2b

    .line 512
    :pswitch_44
    const/16 v0, 0x10e

    .line 513
    goto :goto_2b

    .line 504
    nop

    :pswitch_data_48
    .packed-switch 0x3
        :pswitch_41
        :pswitch_2a
        :pswitch_2a
        :pswitch_3e
        :pswitch_2a
        :pswitch_44
    .end packed-switch
.end method

.method private getResizedImageData(III)[B
    .registers 26
    .parameter "widthLimit"
    .parameter "heightLimit"
    .parameter "byteLimit"

    .prologue
    .line 303
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mWidth:I

    move/from16 v16, v0

    .line 304
    .local v16, outWidth:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/UriImage;->mHeight:I

    .line 306
    .local v15, outHeight:I
    const/16 v19, 0x1

    .line 307
    .local v19, scaleFactor:I
    :goto_c
    div-int v2, v16, v19

    move/from16 v0, p1

    if-gt v2, v0, :cond_18

    div-int v2, v15, v19

    move/from16 v0, p2

    if-le v2, v0, :cond_1b

    .line 308
    :cond_18
    mul-int/lit8 v19, v19, 0x2

    goto :goto_c

    .line 311
    :cond_1b
    const-string v2, "Mms:app"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 312
    const-string v2, "Mms/image"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResizedImageData: wlimit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hlimit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sizeLimit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/ui/UriImage;->mWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/ui/UriImage;->mHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", initialScaleFactor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_7e
    const/4 v10, 0x0

    .line 318
    .local v10, input:Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 320
    .local v13, os:Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x1

    .local v8, attempts:I
    move-object v14, v13

    .line 323
    .end local v13           #os:Ljava/io/ByteArrayOutputStream;
    .local v14, os:Ljava/io/ByteArrayOutputStream;
    :goto_82
    :try_start_82
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 324
    .local v12, options:Landroid/graphics/BitmapFactory$Options;
    move/from16 v0, v19

    iput v0, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_8b
    .catchall {:try_start_82 .. :try_end_8b} :catchall_2c8
    .catch Ljava/io/FileNotFoundException; {:try_start_82 .. :try_end_8b} :catch_e5

    .line 325
    if-eqz v10, :cond_90

    .line 327
    :try_start_8d
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_2c8
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_da
    .catch Ljava/io/FileNotFoundException; {:try_start_8d .. :try_end_90} :catch_e5

    .line 333
    :cond_90
    :goto_90
    :try_start_90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_9f
    .catchall {:try_start_90 .. :try_end_9f} :catchall_2c8
    .catch Ljava/io/FileNotFoundException; {:try_start_90 .. :try_end_9f} :catch_e5

    move-result-object v10

    .line 334
    const/16 v17, 0x50

    .line 336
    .local v17, quality:I
    const/4 v2, 0x0

    :try_start_a3
    invoke-static {v10, v2, v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 338
    .local v1, b:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/UriImage;->mRotate:I

    if-eqz v2, :cond_cb

    if-eqz v1, :cond_cb

    .line 339
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 340
    .local v6, m:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/UriImage;->mRotate:I

    int-to-float v2, v2

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 341
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_ca
    .catchall {:try_start_a3 .. :try_end_ca} :catchall_2c8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a3 .. :try_end_ca} :catch_279
    .catch Ljava/io/FileNotFoundException; {:try_start_a3 .. :try_end_ca} :catch_e5

    move-result-object v1

    .line 343
    .end local v6           #m:Landroid/graphics/Matrix;
    :cond_cb
    if-nez v1, :cond_11d

    .line 344
    const/4 v2, 0x0

    .line 415
    if-eqz v10, :cond_d3

    .line 417
    :try_start_d0
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_107

    .line 422
    :cond_d3
    :goto_d3
    if-eqz v14, :cond_d8

    .line 424
    :try_start_d5
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_112

    :cond_d8
    :goto_d8
    move-object v13, v14

    .line 427
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v12           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v14           #os:Ljava/io/ByteArrayOutputStream;
    .end local v17           #quality:I
    .restart local v13       #os:Ljava/io/ByteArrayOutputStream;
    :cond_d9
    :goto_d9
    return-object v2

    .line 328
    .end local v13           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v14       #os:Ljava/io/ByteArrayOutputStream;
    :catch_da
    move-exception v9

    .line 329
    .local v9, e:Ljava/io/IOException;
    :try_start_db
    const-string v2, "Mms/image"

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e4
    .catchall {:try_start_db .. :try_end_e4} :catchall_2c8
    .catch Ljava/io/FileNotFoundException; {:try_start_db .. :try_end_e4} :catch_e5

    goto :goto_90

    .line 411
    .end local v9           #e:Ljava/io/IOException;
    .end local v12           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_e5
    move-exception v9

    move-object v13, v14

    .line 412
    .end local v14           #os:Ljava/io/ByteArrayOutputStream;
    .local v9, e:Ljava/io/FileNotFoundException;
    .restart local v13       #os:Ljava/io/ByteArrayOutputStream;
    :goto_e7
    :try_start_e7
    const-string v2, "Mms/image"

    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f0
    .catchall {:try_start_e7 .. :try_end_f0} :catchall_2eb

    .line 413
    const/4 v2, 0x0

    .line 415
    if-eqz v10, :cond_f6

    .line 417
    :try_start_f3
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_f6} :catch_2bc

    .line 422
    .end local v9           #e:Ljava/io/FileNotFoundException;
    :cond_f6
    :goto_f6
    if-eqz v13, :cond_d9

    .line 424
    :try_start_f8
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_fb} :catch_fc

    goto :goto_d9

    .line 425
    :catch_fc
    move-exception v9

    .line 426
    .local v9, e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d9

    .line 418
    .end local v9           #e:Ljava/io/IOException;
    .end local v13           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #b:Landroid/graphics/Bitmap;
    .restart local v12       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v14       #os:Ljava/io/ByteArrayOutputStream;
    .restart local v17       #quality:I
    :catch_107
    move-exception v9

    .line 419
    .restart local v9       #e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d3

    .line 425
    .end local v9           #e:Ljava/io/IOException;
    :catch_112
    move-exception v9

    .line 426
    .restart local v9       #e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d8

    .line 346
    .end local v9           #e:Ljava/io/IOException;
    :cond_11d
    :try_start_11d
    iget v2, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v0, p1

    if-gt v2, v0, :cond_129

    iget v2, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p2

    if-le v2, v0, :cond_18b

    .line 349
    :cond_129
    div-int v21, v16, v19

    .line 350
    .local v21, scaledWidth:I
    div-int v20, v15, v19

    .line 352
    .local v20, scaledHeight:I
    const-string v2, "Mms:app"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_15c

    .line 353
    const-string v2, "Mms/image"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResizedImageData: retry scaling using Bitmap.createScaledBitmap: w="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_15c
    div-int v2, v16, v19

    div-int v3, v15, v19

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_164
    .catchall {:try_start_11d .. :try_end_164} :catchall_2c8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11d .. :try_end_164} :catch_279
    .catch Ljava/io/FileNotFoundException; {:try_start_11d .. :try_end_164} :catch_e5

    move-result-object v1

    .line 360
    if-nez v1, :cond_18b

    .line 361
    const/4 v2, 0x0

    .line 415
    if-eqz v10, :cond_16d

    .line 417
    :try_start_16a
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_16d
    .catch Ljava/io/IOException; {:try_start_16a .. :try_end_16d} :catch_175

    .line 422
    :cond_16d
    :goto_16d
    if-eqz v14, :cond_172

    .line 424
    :try_start_16f
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_172
    .catch Ljava/io/IOException; {:try_start_16f .. :try_end_172} :catch_180

    :cond_172
    :goto_172
    move-object v13, v14

    .line 427
    .end local v14           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v13       #os:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_d9

    .line 418
    .end local v13           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v14       #os:Ljava/io/ByteArrayOutputStream;
    :catch_175
    move-exception v9

    .line 419
    .restart local v9       #e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16d

    .line 425
    .end local v9           #e:Ljava/io/IOException;
    :catch_180
    move-exception v9

    .line 426
    .restart local v9       #e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_172

    .line 370
    .end local v9           #e:Ljava/io/IOException;
    .end local v20           #scaledHeight:I
    .end local v21           #scaledWidth:I
    :cond_18b
    if-eqz v14, :cond_190

    .line 372
    :try_start_18d
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_190
    .catchall {:try_start_18d .. :try_end_190} :catchall_2c8
    .catch Ljava/io/IOException; {:try_start_18d .. :try_end_190} :catch_26d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18d .. :try_end_190} :catch_279
    .catch Ljava/io/FileNotFoundException; {:try_start_18d .. :try_end_190} :catch_e5

    .line 377
    :cond_190
    :goto_190
    :try_start_190
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_195
    .catchall {:try_start_190 .. :try_end_195} :catchall_2c8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_190 .. :try_end_195} :catch_279
    .catch Ljava/io/FileNotFoundException; {:try_start_190 .. :try_end_195} :catch_e5

    .line 378
    .end local v14           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v13       #os:Ljava/io/ByteArrayOutputStream;
    :try_start_195
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v0, v17

    invoke-virtual {v1, v2, v0, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 379
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v11

    .line 380
    .local v11, jpgFileSize:I
    move/from16 v0, p3

    if-le v11, v0, :cond_1e3

    .line 381
    mul-int v2, v17, p3

    div-int v18, v2, v11

    .line 382
    .local v18, reducedQuality:I
    const/16 v2, 0x32

    move/from16 v0, v18

    if-lt v0, v2, :cond_1e3

    .line 383
    move/from16 v17, v18

    .line 385
    const-string v2, "Mms:app"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1d3

    .line 386
    const-string v2, "Mms/image"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResizedImageData: compress(2) w/ quality="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d3
    .catchall {:try_start_195 .. :try_end_1d3} :catchall_2eb
    .catch Ljava/lang/OutOfMemoryError; {:try_start_195 .. :try_end_1d3} :catch_2a4
    .catch Ljava/io/FileNotFoundException; {:try_start_195 .. :try_end_1d3} :catch_295

    .line 389
    :cond_1d3
    :try_start_1d3
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1d6
    .catchall {:try_start_1d3 .. :try_end_1d6} :catchall_2eb
    .catch Ljava/io/IOException; {:try_start_1d3 .. :try_end_1d6} :catch_298
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d3 .. :try_end_1d6} :catch_2a4
    .catch Ljava/io/FileNotFoundException; {:try_start_1d3 .. :try_end_1d6} :catch_295

    .line 393
    :goto_1d6
    :try_start_1d6
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1db
    .catchall {:try_start_1d6 .. :try_end_1db} :catchall_2eb
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d6 .. :try_end_1db} :catch_2a4
    .catch Ljava/io/FileNotFoundException; {:try_start_1d6 .. :try_end_1db} :catch_295

    .line 394
    .end local v13           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v14       #os:Ljava/io/ByteArrayOutputStream;
    :try_start_1db
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v0, v17

    invoke-virtual {v1, v2, v0, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1e2
    .catchall {:try_start_1db .. :try_end_1e2} :catchall_2c8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1db .. :try_end_1e2} :catch_279
    .catch Ljava/io/FileNotFoundException; {:try_start_1db .. :try_end_1e2} :catch_e5

    move-object v13, v14

    .line 401
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v11           #jpgFileSize:I
    .end local v14           #os:Ljava/io/ByteArrayOutputStream;
    .end local v18           #reducedQuality:I
    .restart local v13       #os:Ljava/io/ByteArrayOutputStream;
    :cond_1e3
    :goto_1e3
    :try_start_1e3
    const-string v2, "Mms:app"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_241

    .line 402
    const-string v3, "Mms/image"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attempt="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " size="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v13, :cond_2a6

    const/4 v2, 0x0

    :goto_206
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " width="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int v4, v16, v19

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " height="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int v4, v15, v19

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " scaleFactor="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " quality="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_241
    mul-int/lit8 v19, v19, 0x2

    .line 407
    add-int/lit8 v8, v8, 0x1

    .line 408
    if-eqz v13, :cond_24f

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_24a
    .catchall {:try_start_1e3 .. :try_end_24a} :catchall_2eb
    .catch Ljava/io/FileNotFoundException; {:try_start_1e3 .. :try_end_24a} :catch_295

    move-result v2

    move/from16 v0, p3

    if-le v2, v0, :cond_252

    :cond_24f
    const/4 v2, 0x4

    if-lt v8, v2, :cond_2ed

    .line 410
    :cond_252
    if-nez v13, :cond_2ac

    const/4 v2, 0x0

    .line 415
    :goto_255
    if-eqz v10, :cond_25a

    .line 417
    :try_start_257
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_25a
    .catch Ljava/io/IOException; {:try_start_257 .. :try_end_25a} :catch_2b1

    .line 422
    :cond_25a
    :goto_25a
    if-eqz v13, :cond_d9

    .line 424
    :try_start_25c
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_25f
    .catch Ljava/io/IOException; {:try_start_25c .. :try_end_25f} :catch_261

    goto/16 :goto_d9

    .line 425
    :catch_261
    move-exception v9

    .line 426
    .restart local v9       #e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d9

    .line 373
    .end local v9           #e:Ljava/io/IOException;
    .end local v13           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #b:Landroid/graphics/Bitmap;
    .restart local v14       #os:Ljava/io/ByteArrayOutputStream;
    :catch_26d
    move-exception v9

    .line 374
    .restart local v9       #e:Ljava/io/IOException;
    :try_start_26e
    const-string v2, "Mms/image"

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_277
    .catchall {:try_start_26e .. :try_end_277} :catchall_2c8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_26e .. :try_end_277} :catch_279
    .catch Ljava/io/FileNotFoundException; {:try_start_26e .. :try_end_277} :catch_e5

    goto/16 :goto_190

    .line 397
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v9           #e:Ljava/io/IOException;
    :catch_279
    move-exception v9

    move-object v13, v14

    .line 398
    .end local v14           #os:Ljava/io/ByteArrayOutputStream;
    .local v9, e:Ljava/lang/OutOfMemoryError;
    .restart local v13       #os:Ljava/io/ByteArrayOutputStream;
    :goto_27b
    :try_start_27b
    const-string v2, "Mms/image"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OutOfMemoryError"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_293
    .catchall {:try_start_27b .. :try_end_293} :catchall_2eb
    .catch Ljava/io/FileNotFoundException; {:try_start_27b .. :try_end_293} :catch_295

    goto/16 :goto_1e3

    .line 411
    .end local v9           #e:Ljava/lang/OutOfMemoryError;
    :catch_295
    move-exception v9

    goto/16 :goto_e7

    .line 390
    .restart local v1       #b:Landroid/graphics/Bitmap;
    .restart local v11       #jpgFileSize:I
    .restart local v18       #reducedQuality:I
    :catch_298
    move-exception v9

    .line 391
    .local v9, e:Ljava/io/IOException;
    :try_start_299
    const-string v2, "Mms/image"

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2a2
    .catchall {:try_start_299 .. :try_end_2a2} :catchall_2eb
    .catch Ljava/lang/OutOfMemoryError; {:try_start_299 .. :try_end_2a2} :catch_2a4
    .catch Ljava/io/FileNotFoundException; {:try_start_299 .. :try_end_2a2} :catch_295

    goto/16 :goto_1d6

    .line 397
    .end local v9           #e:Ljava/io/IOException;
    .end local v11           #jpgFileSize:I
    .end local v18           #reducedQuality:I
    :catch_2a4
    move-exception v9

    goto :goto_27b

    .line 402
    .end local v1           #b:Landroid/graphics/Bitmap;
    :cond_2a6
    :try_start_2a6
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    goto/16 :goto_206

    .line 410
    :cond_2ac
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2af
    .catchall {:try_start_2a6 .. :try_end_2af} :catchall_2eb
    .catch Ljava/io/FileNotFoundException; {:try_start_2a6 .. :try_end_2af} :catch_295

    move-result-object v2

    goto :goto_255

    .line 418
    :catch_2b1
    move-exception v9

    .line 419
    .restart local v9       #e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_25a

    .line 418
    .end local v12           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v17           #quality:I
    .local v9, e:Ljava/io/FileNotFoundException;
    :catch_2bc
    move-exception v9

    .line 419
    .local v9, e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f6

    .line 415
    .end local v9           #e:Ljava/io/IOException;
    .end local v13           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v14       #os:Ljava/io/ByteArrayOutputStream;
    :catchall_2c8
    move-exception v2

    move-object v13, v14

    .end local v14           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v13       #os:Ljava/io/ByteArrayOutputStream;
    :goto_2ca
    if-eqz v10, :cond_2cf

    .line 417
    :try_start_2cc
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2cf
    .catch Ljava/io/IOException; {:try_start_2cc .. :try_end_2cf} :catch_2d5

    .line 422
    :cond_2cf
    :goto_2cf
    if-eqz v13, :cond_2d4

    .line 424
    :try_start_2d1
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2d4
    .catch Ljava/io/IOException; {:try_start_2d1 .. :try_end_2d4} :catch_2e0

    .line 427
    :cond_2d4
    :goto_2d4
    throw v2

    .line 418
    :catch_2d5
    move-exception v9

    .line 419
    .restart local v9       #e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2cf

    .line 425
    .end local v9           #e:Ljava/io/IOException;
    :catch_2e0
    move-exception v9

    .line 426
    .restart local v9       #e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2d4

    .line 415
    .end local v9           #e:Ljava/io/IOException;
    :catchall_2eb
    move-exception v2

    goto :goto_2ca

    .restart local v12       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v17       #quality:I
    :cond_2ed
    move-object v14, v13

    .end local v13           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v14       #os:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_82
.end method

.method public static getRotatedDegree(Landroid/net/Uri;Landroid/content/Context;)I
    .registers 11
    .parameter "uri"
    .parameter "context"

    .prologue
    .line 453
    const/4 v8, 0x0

    .line 454
    .local v8, degree:I
    if-eqz p0, :cond_3e

    invoke-static {p0}, Lcom/android/mms/ui/UriImage;->isMediaUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 455
    const/4 v7, 0x0

    .line 457
    .local v7, cur:Landroid/database/Cursor;
    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 459
    if-eqz v7, :cond_2a

    .line 460
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 461
    const-string v0, "orientation"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_37
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_29} :catch_30

    move-result v8

    .line 466
    :cond_2a
    if-eqz v7, :cond_2f

    .line 467
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 473
    .end local v7           #cur:Landroid/database/Cursor;
    :cond_2f
    :goto_2f
    return v8

    .line 464
    .restart local v7       #cur:Landroid/database/Cursor;
    :catch_30
    move-exception v0

    .line 466
    if-eqz v7, :cond_2f

    .line 467
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2f

    .line 466
    :catchall_37
    move-exception v0

    if-eqz v7, :cond_3d

    .line 467
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3d
    throw v0

    .line 470
    .end local v7           #cur:Landroid/database/Cursor;
    :cond_3e
    if-eqz p0, :cond_2f

    invoke-static {p0}, Lcom/android/mms/ui/UriImage;->isMMSUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 471
    invoke-static {p0}, Lcom/android/mms/ui/UriImage;->getDegreeFromFile(Landroid/net/Uri;)I

    move-result v8

    goto :goto_2f
.end method

.method private getRotatedImageData()[B
    .registers 15

    .prologue
    const/4 v13, 0x0

    .line 253
    const/4 v8, 0x0

    .line 254
    .local v8, input:Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 256
    .local v10, os:Ljava/io/ByteArrayOutputStream;
    :try_start_3
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 257
    .local v9, options:Landroid/graphics/BitmapFactory$Options;
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_d6
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_13} :catch_90

    move-result-object v8

    .line 258
    const/16 v12, 0x64

    .line 260
    .local v12, quality:I
    const/4 v1, 0x0

    :try_start_17
    invoke-static {v8, v1, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 262
    .local v0, b:Landroid/graphics/Bitmap;
    iget v1, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    if-eqz v1, :cond_3b

    if-eqz v0, :cond_3b

    .line 263
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 264
    .local v5, m:Landroid/graphics/Matrix;
    iget v1, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 265
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_3a
    .catchall {:try_start_17 .. :try_end_3a} :catchall_d6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_3a} :catch_76
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_3a} :catch_90

    move-result-object v0

    .line 267
    .end local v5           #m:Landroid/graphics/Matrix;
    :cond_3b
    if-nez v0, :cond_5c

    .line 282
    if-eqz v8, :cond_42

    .line 284
    :try_start_3f
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_46

    .line 289
    :cond_42
    :goto_42
    if-eqz v10, :cond_45

    .line 291
    :try_start_44
    throw v10
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_45} :catch_51

    .line 294
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v9           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v12           #quality:I
    :cond_45
    :goto_45
    return-object v13

    .line 285
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v9       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v12       #quality:I
    :catch_46
    move-exception v7

    .line 286
    .local v7, e:Ljava/io/IOException;
    const-string v1, "Mms/image"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_42

    .line 292
    .end local v7           #e:Ljava/io/IOException;
    :catch_51
    move-exception v7

    .line 293
    .restart local v7       #e:Ljava/io/IOException;
    const-string v1, "Mms/image"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_45

    .line 270
    .end local v7           #e:Ljava/io/IOException;
    :cond_5c
    :try_start_5c
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_d6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5c .. :try_end_61} :catch_76
    .catch Ljava/io/FileNotFoundException; {:try_start_5c .. :try_end_61} :catch_90

    .line 272
    .end local v10           #os:Ljava/io/ByteArrayOutputStream;
    .local v11, os:Ljava/io/ByteArrayOutputStream;
    :try_start_61
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v1, v12, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_f8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_61 .. :try_end_66} :catch_fe
    .catch Ljava/io/FileNotFoundException; {:try_start_61 .. :try_end_66} :catch_fb

    move-object v10, v11

    .line 277
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v11           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #os:Ljava/io/ByteArrayOutputStream;
    :goto_67
    if-nez v10, :cond_b0

    move-object v1, v13

    .line 282
    :goto_6a
    if-eqz v8, :cond_6f

    .line 284
    :try_start_6c
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_b5

    .line 289
    :cond_6f
    :goto_6f
    if-eqz v10, :cond_74

    .line 291
    :try_start_71
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_c0

    :cond_74
    :goto_74
    move-object v13, v1

    .line 294
    goto :goto_45

    .line 273
    :catch_76
    move-exception v7

    .line 274
    .local v7, e:Ljava/lang/OutOfMemoryError;
    :goto_77
    :try_start_77
    const-string v1, "Mms/image"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutOfMemoryError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_77 .. :try_end_8f} :catchall_d6
    .catch Ljava/io/FileNotFoundException; {:try_start_77 .. :try_end_8f} :catch_90

    goto :goto_67

    .line 278
    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    .end local v9           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v12           #quality:I
    :catch_90
    move-exception v7

    .line 279
    .local v7, e:Ljava/io/FileNotFoundException;
    :goto_91
    :try_start_91
    const-string v1, "Mms/image"

    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9a
    .catchall {:try_start_91 .. :try_end_9a} :catchall_d6

    .line 282
    if-eqz v8, :cond_9f

    .line 284
    :try_start_9c
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_cb

    .line 289
    .end local v7           #e:Ljava/io/FileNotFoundException;
    :cond_9f
    :goto_9f
    if-eqz v10, :cond_45

    .line 291
    :try_start_a1
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a5

    goto :goto_45

    .line 292
    :catch_a5
    move-exception v7

    .line 293
    .local v7, e:Ljava/io/IOException;
    const-string v1, "Mms/image"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_45

    .line 277
    .end local v7           #e:Ljava/io/IOException;
    .restart local v9       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v12       #quality:I
    :cond_b0
    :try_start_b0
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_d6
    .catch Ljava/io/FileNotFoundException; {:try_start_b0 .. :try_end_b3} :catch_90

    move-result-object v1

    goto :goto_6a

    .line 285
    :catch_b5
    move-exception v7

    .line 286
    .restart local v7       #e:Ljava/io/IOException;
    const-string v2, "Mms/image"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6f

    .line 292
    .end local v7           #e:Ljava/io/IOException;
    :catch_c0
    move-exception v7

    .line 293
    .restart local v7       #e:Ljava/io/IOException;
    const-string v2, "Mms/image"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_74

    .line 285
    .end local v9           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v12           #quality:I
    .local v7, e:Ljava/io/FileNotFoundException;
    :catch_cb
    move-exception v7

    .line 286
    .local v7, e:Ljava/io/IOException;
    const-string v1, "Mms/image"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9f

    .line 282
    .end local v7           #e:Ljava/io/IOException;
    :catchall_d6
    move-exception v1

    :goto_d7
    if-eqz v8, :cond_dc

    .line 284
    :try_start_d9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dc} :catch_e2

    .line 289
    :cond_dc
    :goto_dc
    if-eqz v10, :cond_e1

    .line 291
    :try_start_de
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e1} :catch_ed

    .line 294
    :cond_e1
    :goto_e1
    throw v1

    .line 285
    :catch_e2
    move-exception v7

    .line 286
    .restart local v7       #e:Ljava/io/IOException;
    const-string v2, "Mms/image"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_dc

    .line 292
    .end local v7           #e:Ljava/io/IOException;
    :catch_ed
    move-exception v7

    .line 293
    .restart local v7       #e:Ljava/io/IOException;
    const-string v2, "Mms/image"

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e1

    .line 282
    .end local v7           #e:Ljava/io/IOException;
    .end local v10           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v9       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v11       #os:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #quality:I
    :catchall_f8
    move-exception v1

    move-object v10, v11

    .end local v11           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #os:Ljava/io/ByteArrayOutputStream;
    goto :goto_d7

    .line 278
    .end local v10           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #os:Ljava/io/ByteArrayOutputStream;
    :catch_fb
    move-exception v7

    move-object v10, v11

    .end local v11           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #os:Ljava/io/ByteArrayOutputStream;
    goto :goto_91

    .line 273
    .end local v10           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #os:Ljava/io/ByteArrayOutputStream;
    :catch_fe
    move-exception v7

    move-object v10, v11

    .end local v11           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #os:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_77
.end method

.method private initFromContentUri(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 12
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 121
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_2f

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns null result."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_2f
    :try_start_2f
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3c

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_60

    .line 127
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns 0 or multiple rows."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5b
    .catchall {:try_start_2f .. :try_end_5b} :catchall_5b

    .line 144
    :catchall_5b
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 132
    :cond_60
    :try_start_60
    invoke-static {p2}, Lcom/android/mms/model/ImageModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 133
    const-string v0, "fn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 134
    .local v8, filePath:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 135
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 137
    :cond_80
    const-string v0, "ct"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 142
    :goto_8c
    iput-object v8, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;
    :try_end_8e
    .catchall {:try_start_60 .. :try_end_8e} :catchall_5b

    .line 144
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 146
    return-void

    .line 139
    .end local v8           #filePath:Ljava/lang/String;
    :cond_92
    :try_start_92
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 140
    .restart local v8       #filePath:Ljava/lang/String;
    const-string v0, "mime_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;
    :try_end_a8
    .catchall {:try_start_92 .. :try_end_a8} :catchall_5b

    goto :goto_8c
.end method

.method private initFromFile(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 8
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 101
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v2

    .line 103
    .local v2, mimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/mms/util/MessageMimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, extension:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 107
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 108
    .local v0, dotPos:I
    if-ltz v0, :cond_28

    .line 109
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    .end local v0           #dotPos:I
    :cond_28
    invoke-virtual {v2, v1}, Lcom/android/mms/util/MessageMimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 115
    return-void
.end method

.method private static isMMSUri(Landroid/net/Uri;)Z
    .registers 4
    .parameter "uri"

    .prologue
    .line 443
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, authority:Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    if-eqz v0, :cond_1c

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 446
    const/4 v1, 0x1

    .line 448
    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private static isMediaUri(Landroid/net/Uri;)Z
    .registers 4
    .parameter "uri"

    .prologue
    .line 433
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, authority:Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    if-eqz v0, :cond_1c

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 436
    const/4 v1, 0x1

    .line 438
    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 192
    iget v0, p0, Lcom/android/mms/ui/UriImage;->mHeight:I

    return v0
.end method

.method public getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;
    .registers 11
    .parameter "widthLimit"
    .parameter "heightLimit"
    .parameter "byteLimit"

    .prologue
    .line 204
    new-instance v2, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 206
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/UriImage;->getResizedImageData(III)[B

    move-result-object v1

    .line 207
    .local v1, data:[B
    if-nez v1, :cond_d

    .line 211
    const/4 v2, 0x0

    .line 224
    .end local v2           #part:Lcom/google/android/mms/pdu/PduPart;
    :goto_c
    return-object v2

    .line 214
    .restart local v2       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_d
    invoke-virtual {v2, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 215
    invoke-virtual {p0}, Lcom/android/mms/ui/UriImage;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 216
    invoke-virtual {p0}, Lcom/android/mms/ui/UriImage;->getSrc()Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, src:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 218
    .local v5, srcBytes:[B
    invoke-virtual {v2, v5}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 219
    invoke-virtual {v2, v5}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 220
    const/16 v6, 0x2e

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 221
    .local v3, period:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_41

    if-eqz v3, :cond_41

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 222
    .local v0, contentId:[B
    :goto_3d
    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    goto :goto_c

    .end local v0           #contentId:[B
    :cond_41
    move-object v0, v5

    .line 221
    goto :goto_3d
.end method

.method public getRotate()I
    .registers 2

    .prologue
    .line 196
    iget v0, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    return v0
.end method

.method public getRotateImageAsPart()Lcom/google/android/mms/pdu/PduPart;
    .registers 8

    .prologue
    .line 229
    new-instance v2, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 231
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-direct {p0}, Lcom/android/mms/ui/UriImage;->getRotatedImageData()[B

    move-result-object v1

    .line 232
    .local v1, data:[B
    if-nez v1, :cond_d

    .line 236
    const/4 v2, 0x0

    .line 249
    .end local v2           #part:Lcom/google/android/mms/pdu/PduPart;
    :goto_c
    return-object v2

    .line 239
    .restart local v2       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_d
    invoke-virtual {v2, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 240
    invoke-virtual {p0}, Lcom/android/mms/ui/UriImage;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 241
    invoke-virtual {p0}, Lcom/android/mms/ui/UriImage;->getSrc()Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, src:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 243
    .local v5, srcBytes:[B
    invoke-virtual {v2, v5}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 244
    invoke-virtual {v2, v5}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 245
    const/16 v6, 0x2e

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 246
    .local v3, period:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_41

    if-eqz v3, :cond_41

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 247
    .local v0, contentId:[B
    :goto_3d
    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    goto :goto_c

    .end local v0           #contentId:[B
    :cond_41
    move-object v0, v5

    .line 246
    goto :goto_3d
.end method

.method public getSrc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 188
    iget v0, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    return v0
.end method
