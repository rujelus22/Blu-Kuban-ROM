.class public Lcom/sec/android/mimage/photoretouching/common/Image;
.super Ljava/lang/Object;
.source "Image.java"


# static fields
.field public static final TYPE_JPG:I = 0x0

.field public static final TYPE_PNG:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static CreateBitmapFromSource(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 14
    .parameter "srcbitmap"
    .parameter "m"
    .parameter "config"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 457
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 458
    .local v1, deviceR:Landroid/graphics/RectF;
    new-instance v6, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v1, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 460
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 461
    .local v4, neww:I
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 463
    .local v3, newh:I
    invoke-static {v4, v3, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 465
    .local v2, newbitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 466
    .local v5, paint:Landroid/graphics/Paint;
    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 467
    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setDither(Z)V

    .line 469
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 471
    .local v0, can:Landroid/graphics/Canvas;
    iget v6, v1, Landroid/graphics/RectF;->left:F

    neg-float v6, v6

    iget v7, v1, Landroid/graphics/RectF;->top:F

    neg-float v7, v7

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 472
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 473
    const/4 v6, 0x0

    invoke-virtual {v0, p0, p1, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 475
    return-object v2
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 16
    .parameter "cr"
    .parameter "title"
    .parameter "dateTaken"
    .parameter "location"
    .parameter "orientation"
    .parameter "directory"
    .parameter "filename"

    .prologue
    .line 58
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 60
    .local v4, values:Landroid/content/ContentValues;
    const/4 v2, 0x0

    .line 61
    .local v2, ftemp:Ljava/io/File;
    const-wide/16 v0, 0x0

    .line 62
    .local v0, filesize:J
    if-eqz p6, :cond_2d

    if-eqz p7, :cond_2d

    .line 64
    new-instance v2, Ljava/io/File;

    .end local v2           #ftemp:Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .restart local v2       #ftemp:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 66
    const/4 v2, 0x0

    .line 69
    :cond_2d
    if-nez p1, :cond_34

    .line 70
    const-string v5, "title"

    invoke-virtual {v4, v5, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_34
    const-string v5, "title"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v5, "_display_name"

    invoke-virtual {v4, v5, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v5, "datetaken"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 75
    const-string v5, "mime_type"

    const-string v6, "image/jpeg"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v5, "_size"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 78
    if-eqz p5, :cond_62

    .line 79
    const-string v5, "orientation"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    :cond_62
    if-eqz p4, :cond_7e

    .line 82
    const-string v5, "latitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 83
    const-string v5, "longitude"

    invoke-virtual {p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 86
    :cond_7e
    if-eqz p6, :cond_9e

    if-eqz p7, :cond_9e

    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, fullfilename:Ljava/lang/String;
    const-string v5, "_data"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .end local v3           #fullfilename:Ljava/lang/String;
    :cond_9e
    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    return-object v5
.end method

.method public static checkIfFileExists(Ljava/lang/String;)Z
    .registers 3
    .parameter "filePath"

    .prologue
    .line 733
    if-eqz p0, :cond_c

    .line 735
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 736
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 739
    .end local v0           #file:Ljava/io/File;
    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public static copyToDB(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "path"

    .prologue
    .line 702
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/common/Image;->getSaveFileName()Ljava/lang/String;

    move-result-object v10

    .line 703
    .local v10, newfilename:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/android/mimage/photoretouching/common/Constants;->DB_DIR:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 706
    .local v9, new_path:Ljava/lang/String;
    :try_start_1d
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 707
    .local v11, source:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 709
    .local v6, destination:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 710
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_36

    .line 711
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 714
    :cond_36
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 715
    .local v1, src:Ljava/nio/channels/FileChannel;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 716
    .local v8, fout:Ljava/io/FileOutputStream;
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 718
    .local v0, dst:Ljava/nio/channels/FileChannel;
    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/common/Image;->sync(Ljava/io/FileOutputStream;)Z

    .line 720
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 721
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 722
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_5a} :catch_5b

    .line 729
    .end local v0           #dst:Ljava/nio/channels/FileChannel;
    .end local v1           #src:Ljava/nio/channels/FileChannel;
    .end local v6           #destination:Ljava/io/File;
    .end local v8           #fout:Ljava/io/FileOutputStream;
    .end local v11           #source:Ljava/io/File;
    :cond_5a
    :goto_5a
    return-object v9

    .line 724
    :catch_5b
    move-exception v7

    .line 725
    .local v7, e:Ljava/lang/Exception;
    const/4 v9, 0x0

    goto :goto_5a
.end method

.method public static getBitmapSampleSize(Ljava/lang/String;)I
    .registers 8
    .parameter "path"

    .prologue
    .line 317
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 318
    .local v0, bfo:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 320
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 322
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int v4, v5, v6

    .line 323
    .local v4, size:I
    const/high16 v1, 0x10

    .line 324
    .local v1, maxcapacity:I
    const/4 v2, 0x1

    .line 326
    .local v2, scale:I
    if-le v4, v1, :cond_1c

    .line 328
    div-int v5, v4, v1

    add-int/lit8 v2, v5, 0x1

    move v3, v2

    .line 332
    .end local v2           #scale:I
    .local v3, scale:I
    :goto_1b
    return v3

    .end local v3           #scale:I
    .restart local v2       #scale:I
    :cond_1c
    move v3, v2

    .end local v2           #scale:I
    .restart local v3       #scale:I
    goto :goto_1b
.end method

.method public static getImageBuff(Landroid/graphics/Bitmap;[III)Z
    .registers 6
    .parameter "bmp"
    .parameter "imageBuff"
    .parameter "imageWidth"
    .parameter "imageHeight"

    .prologue
    .line 133
    invoke-static {p1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 134
    .local v0, a:Ljava/nio/IntBuffer;
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 135
    const/4 v1, 0x1

    return v1
.end method

.method public static getRotateDegree(Ljava/lang/String;)I
    .registers 7
    .parameter "path"

    .prologue
    .line 480
    const/4 v3, 0x0

    .line 484
    .local v3, rotation:I
    :try_start_1
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 486
    .local v1, exif:Landroid/media/ExifInterface;
    if-eqz v1, :cond_14

    .line 488
    const-string v4, "Orientation"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_22

    move-result v2

    .line 490
    .local v2, exifOrientation:I
    const/4 v4, 0x6

    if-ne v2, v4, :cond_15

    .line 491
    const/16 v3, 0x5a

    .line 502
    .end local v1           #exif:Landroid/media/ExifInterface;
    .end local v2           #exifOrientation:I
    :cond_14
    :goto_14
    return v3

    .line 492
    .restart local v1       #exif:Landroid/media/ExifInterface;
    .restart local v2       #exifOrientation:I
    :cond_15
    const/4 v4, 0x3

    if-ne v2, v4, :cond_1b

    .line 493
    const/16 v3, 0xb4

    goto :goto_14

    .line 494
    :cond_1b
    const/16 v4, 0x8

    if-ne v2, v4, :cond_14

    .line 495
    const/16 v3, 0x10e

    goto :goto_14

    .line 498
    .end local v1           #exif:Landroid/media/ExifInterface;
    .end local v2           #exifOrientation:I
    :catch_22
    move-exception v0

    .line 500
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14
.end method

.method public static getSaveFileName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 229
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH.mm.ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, sdfNow:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, strNow:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getSaveFileName(I)Ljava/lang/String;
    .registers 6
    .parameter "type"

    .prologue
    .line 209
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH.mm.ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, sdfNow:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, strNow:Ljava/lang/String;
    packed-switch p0, :pswitch_data_40

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2a
    return-object v2

    .line 214
    :pswitch_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2a

    .line 212
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_2b
    .end packed-switch
.end method

.method public static getSaveFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "filename"

    .prologue
    .line 221
    const-string v0, ".jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, ".png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 224
    .end local p0
    :cond_10
    :goto_10
    return-object p0

    .restart local p0
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_10
.end method

.method public static getYfrombitmap(Landroid/graphics/Bitmap;)[B
    .registers 10
    .parameter "bitmap"

    .prologue
    .line 506
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 507
    .local v4, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 510
    .local v1, height:I
    mul-int v6, v4, v1

    new-array v5, v6, [B

    .line 512
    .local v5, ybuff:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_d
    if-lt v2, v1, :cond_10

    .line 519
    return-object v5

    .line 513
    :cond_10
    const/4 v3, 0x0

    .local v3, j:I
    :goto_11
    if-lt v3, v4, :cond_16

    .line 512
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 514
    :cond_16
    invoke-virtual {p0, v3, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    .line 515
    .local v0, color:I
    mul-int v6, v2, v4

    add-int/2addr v6, v3

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x3

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 513
    add-int/lit8 v3, v3, 0x1

    goto :goto_11
.end method

.method public static loadBitmap(Ljava/lang/String;[I)Landroid/graphics/Bitmap;
    .registers 19
    .parameter "path"
    .parameter "rotate"

    .prologue
    .line 337
    const/4 v1, 0x0

    .line 338
    .local v1, tmpBitmap:Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .line 339
    .local v13, orgBitmap:Landroid/graphics/Bitmap;
    const/4 v15, 0x0

    .line 340
    .local v15, tmpBitmap2:Landroid/graphics/Bitmap;
    const/4 v14, 0x1

    .line 343
    .local v14, sampling:I
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 344
    .local v8, bfo:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 347
    :try_start_c
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_11
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_11} :catch_91

    .line 353
    iget v2, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v3, 0x500

    if-gt v2, v3, :cond_1d

    iget v2, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v3, 0x500

    if-le v2, v3, :cond_ab

    .line 355
    :cond_1d
    iget v2, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v2, v3, :cond_97

    .line 356
    const/16 v16, 0x500

    .line 357
    .local v16, width:I
    iget v2, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int v2, v2, v16

    iget v3, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v12, v2, v3

    .line 364
    .local v12, height:I
    :goto_2d
    iget v2, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v2, v14

    move/from16 v0, v16

    if-gt v2, v0, :cond_a1

    .line 369
    const/4 v14, 0x2

    .line 371
    iput v14, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 372
    const/4 v2, 0x0

    iput-boolean v2, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 373
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 376
    :try_start_3e
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_43
    .catch Ljava/lang/Error; {:try_start_3e .. :try_end_43} :catch_a4

    move-result-object v1

    .line 409
    :goto_44
    if-eqz v1, :cond_8f

    .line 412
    const/4 v2, 0x0

    :try_start_47
    invoke-static/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/common/Image;->getRotateDegree(Ljava/lang/String;)I

    move-result v3

    aput v3, p1, v2

    .line 419
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 421
    .local v6, m:Landroid/graphics/Matrix;
    move/from16 v0, v16

    int-to-float v2, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v9, v2, v3

    .line 422
    .local v9, dx:F
    int-to-float v2, v12

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v10, v2, v3

    .line 424
    .local v10, dy:F
    invoke-virtual {v6, v9, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 426
    const/4 v2, 0x0

    aget v2, p1, v2

    if-eqz v2, :cond_73

    .line 427
    const/4 v2, 0x0

    aget v2, p1, v2

    int-to-float v2, v2

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 429
    :cond_73
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 430
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v15, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 432
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 433
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_8f
    .catch Ljava/lang/Error; {:try_start_47 .. :try_end_8f} :catch_d0

    .end local v6           #m:Landroid/graphics/Matrix;
    .end local v9           #dx:F
    .end local v10           #dy:F
    :cond_8f
    move-object v2, v13

    .line 450
    .end local v12           #height:I
    .end local v16           #width:I
    :goto_90
    return-object v2

    .line 348
    :catch_91
    move-exception v11

    .line 349
    .local v11, e:Ljava/lang/Error;
    invoke-virtual {v11}, Ljava/lang/Error;->printStackTrace()V

    .line 350
    const/4 v2, 0x0

    goto :goto_90

    .line 360
    .end local v11           #e:Ljava/lang/Error;
    :cond_97
    const/16 v12, 0x500

    .line 361
    .restart local v12       #height:I
    iget v2, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/2addr v2, v12

    iget v3, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v16, v2, v3

    .line 364
    .restart local v16       #width:I
    goto :goto_2d

    .line 366
    :cond_a1
    mul-int/lit8 v14, v14, 0x2

    goto :goto_2d

    .line 378
    :catch_a4
    move-exception v11

    .line 380
    .restart local v11       #e:Ljava/lang/Error;
    invoke-virtual {v11}, Ljava/lang/Error;->printStackTrace()V

    .line 381
    const/4 v1, 0x0

    .line 382
    const/4 v2, 0x0

    goto :goto_90

    .line 388
    .end local v11           #e:Ljava/lang/Error;
    .end local v12           #height:I
    .end local v16           #width:I
    :cond_ab
    const/4 v2, 0x1

    :try_start_ac
    iput v2, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 389
    const/4 v2, 0x0

    iput-boolean v2, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 390
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 391
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 393
    if-nez v1, :cond_bf

    .line 394
    const/4 v2, 0x0

    goto :goto_90

    .line 397
    :cond_bf
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 398
    .restart local v16       #width:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_c6
    .catch Ljava/lang/Error; {:try_start_ac .. :try_end_c6} :catch_c9

    move-result v12

    .restart local v12       #height:I
    goto/16 :goto_44

    .line 400
    .end local v12           #height:I
    .end local v16           #width:I
    :catch_c9
    move-exception v11

    .line 402
    .restart local v11       #e:Ljava/lang/Error;
    invoke-virtual {v11}, Ljava/lang/Error;->printStackTrace()V

    .line 404
    const/4 v1, 0x0

    .line 405
    const/4 v2, 0x0

    goto :goto_90

    .line 436
    .end local v11           #e:Ljava/lang/Error;
    .restart local v12       #height:I
    .restart local v16       #width:I
    :catch_d0
    move-exception v11

    .line 438
    .restart local v11       #e:Ljava/lang/Error;
    if-eqz v1, :cond_d6

    .line 439
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 440
    :cond_d6
    if-eqz v13, :cond_db

    .line 441
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 442
    :cond_db
    if-eqz v15, :cond_e0

    .line 443
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 445
    :cond_e0
    invoke-virtual {v11}, Ljava/lang/Error;->printStackTrace()V

    .line 447
    const/4 v2, 0x0

    goto :goto_90
.end method

.method public static loadBitmapforCopyto(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;)Landroid/graphics/Bitmap;
    .registers 21
    .parameter "cxt"
    .parameter "path"
    .parameter "imginfo"

    .prologue
    .line 524
    const/16 v16, 0x0

    .line 525
    .local v16, tmpBitmap2:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 526
    .local v1, tmpBitmap:Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 527
    .local v11, orgBitmap:Landroid/graphics/Bitmap;
    const/4 v13, 0x1

    .line 529
    .local v13, sampling:I
    const/4 v12, 0x0

    .line 531
    .local v12, rotate:I
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 532
    .local v8, bfo:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 534
    invoke-static/range {p1 .. p1}, Lcom/sec/android/mimage/photoretouching/common/Image;->getRotateDegree(Ljava/lang/String;)I

    move-result v12

    .line 537
    :try_start_12
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_17
    .catch Ljava/lang/Error; {:try_start_12 .. :try_end_17} :catch_5e

    .line 543
    iget v2, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v3, 0x500

    if-gt v2, v3, :cond_23

    iget v2, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v3, 0x500

    if-le v2, v3, :cond_cf

    .line 545
    :cond_23
    iget v2, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v2, v3, :cond_6e

    .line 546
    const/16 v17, 0x500

    .line 547
    .local v17, width:I
    iget v2, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int v2, v2, v17

    iget v3, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v10, v2, v3

    .line 554
    .local v10, height:I
    :goto_33
    iget v2, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v2, v13

    move/from16 v0, v17

    if-gt v2, v0, :cond_78

    .line 559
    const/4 v13, 0x2

    .line 564
    if-eqz v12, :cond_41

    const/16 v2, 0xb4

    if-ne v12, v2, :cond_7b

    .line 566
    :cond_41
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v2

    move/from16 v0, v17

    if-ne v0, v2, :cond_4f

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v2

    if-eq v10, v2, :cond_98

    .line 568
    :cond_4f
    const v2, 0x7f060033

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 569
    const/4 v2, 0x0

    .line 696
    .end local v10           #height:I
    .end local v17           #width:I
    :goto_5d
    return-object v2

    .line 538
    :catch_5e
    move-exception v9

    .line 539
    .local v9, e:Ljava/lang/Error;
    const v2, 0x7f06002b

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 540
    const/4 v2, 0x0

    goto :goto_5d

    .line 550
    .end local v9           #e:Ljava/lang/Error;
    :cond_6e
    const/16 v10, 0x500

    .line 551
    .restart local v10       #height:I
    iget v2, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/2addr v2, v10

    iget v3, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v17, v2, v3

    .line 554
    .restart local v17       #width:I
    goto :goto_33

    .line 556
    :cond_78
    mul-int/lit8 v13, v13, 0x2

    goto :goto_33

    .line 574
    :cond_7b
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v2

    if-ne v10, v2, :cond_89

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v2

    move/from16 v0, v17

    if-eq v0, v2, :cond_98

    .line 576
    :cond_89
    const v2, 0x7f060033

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 577
    const/4 v2, 0x0

    goto :goto_5d

    .line 581
    :cond_98
    iput v13, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 582
    const/4 v2, 0x0

    iput-boolean v2, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 583
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 586
    :try_start_a1
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 588
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 589
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_ae
    .catch Ljava/lang/Error; {:try_start_a1 .. :try_end_ae} :catch_be

    move-result v10

    .line 638
    :goto_af
    if-eqz v1, :cond_184

    .line 640
    :try_start_b1
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 645
    .local v6, m:Landroid/graphics/Matrix;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->isCanvasNull()Z
    :try_end_b9
    .catch Ljava/lang/Error; {:try_start_b1 .. :try_end_b9} :catch_1a9

    move-result v2

    if-eqz v2, :cond_142

    .line 646
    const/4 v2, 0x0

    goto :goto_5d

    .line 591
    .end local v6           #m:Landroid/graphics/Matrix;
    :catch_be
    move-exception v9

    .line 593
    .restart local v9       #e:Ljava/lang/Error;
    const v2, 0x7f06002b

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 594
    const/4 v1, 0x0

    .line 595
    const/4 v2, 0x0

    goto :goto_5d

    .line 600
    .end local v9           #e:Ljava/lang/Error;
    .end local v10           #height:I
    .end local v17           #width:I
    :cond_cf
    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v17, v0

    .line 601
    .restart local v17       #width:I
    iget v10, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 603
    .restart local v10       #height:I
    if-eqz v12, :cond_db

    const/16 v2, 0xb4

    if-ne v12, v2, :cond_f9

    .line 605
    :cond_db
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v2

    move/from16 v0, v17

    if-ne v0, v2, :cond_e9

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v2

    if-eq v10, v2, :cond_117

    .line 607
    :cond_e9
    const v2, 0x7f060033

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 608
    const/4 v2, 0x0

    goto/16 :goto_5d

    .line 613
    :cond_f9
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageWidth()I

    move-result v2

    if-ne v10, v2, :cond_107

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImageHeight()I

    move-result v2

    move/from16 v0, v17

    if-eq v0, v2, :cond_117

    .line 615
    :cond_107
    const v2, 0x7f060033

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 616
    const/4 v2, 0x0

    goto/16 :goto_5d

    .line 621
    :cond_117
    const/4 v2, 0x1

    :try_start_118
    iput v2, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 622
    const/4 v2, 0x0

    iput-boolean v2, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 623
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 624
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 626
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 627
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_12e
    .catch Ljava/lang/Error; {:try_start_118 .. :try_end_12e} :catch_130

    move-result v10

    goto :goto_af

    .line 629
    :catch_130
    move-exception v9

    .line 631
    .restart local v9       #e:Ljava/lang/Error;
    const v2, 0x7f06002b

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 633
    const/4 v1, 0x0

    .line 634
    const/4 v2, 0x0

    goto/16 :goto_5d

    .line 649
    .end local v9           #e:Ljava/lang/Error;
    .restart local v6       #m:Landroid/graphics/Matrix;
    :cond_142
    if-eqz v12, :cond_148

    const/16 v2, 0xb4

    if-ne v12, v2, :cond_196

    .line 651
    :cond_148
    :try_start_148
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v2

    int-to-float v2, v2

    move/from16 v0, v17

    int-to-float v3, v0

    div-float v15, v2, v3

    .line 652
    .local v15, scaleWidth:F
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v10

    div-float v14, v2, v3

    .line 660
    .local v14, scaleHeight:F
    :goto_15a
    invoke-virtual {v6, v15, v14}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 662
    if-eqz v12, :cond_163

    .line 663
    int-to-float v2, v12

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 665
    :cond_163
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 666
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 668
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 669
    const/4 v1, 0x0

    .line 671
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_182
    .catch Ljava/lang/Error; {:try_start_148 .. :try_end_182} :catch_1a9

    .line 672
    const/16 v16, 0x0

    .line 690
    .end local v6           #m:Landroid/graphics/Matrix;
    .end local v14           #scaleHeight:F
    .end local v15           #scaleWidth:F
    :cond_184
    if-nez v11, :cond_1c9

    .line 692
    const v2, 0x7f06002b

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 693
    const/4 v2, 0x0

    goto/16 :goto_5d

    .line 656
    .restart local v6       #m:Landroid/graphics/Matrix;
    :cond_196
    :try_start_196
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v2

    int-to-float v2, v2

    move/from16 v0, v17

    int-to-float v3, v0

    div-float v15, v2, v3

    .line 657
    .restart local v15       #scaleWidth:F
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I
    :try_end_1a3
    .catch Ljava/lang/Error; {:try_start_196 .. :try_end_1a3} :catch_1a9

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v10

    div-float v14, v2, v3

    .restart local v14       #scaleHeight:F
    goto :goto_15a

    .line 674
    .end local v6           #m:Landroid/graphics/Matrix;
    .end local v14           #scaleHeight:F
    .end local v15           #scaleWidth:F
    :catch_1a9
    move-exception v9

    .line 676
    .restart local v9       #e:Ljava/lang/Error;
    if-eqz v16, :cond_1af

    .line 677
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 679
    :cond_1af
    if-eqz v1, :cond_1b4

    .line 680
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 681
    :cond_1b4
    if-eqz v11, :cond_1b9

    .line 682
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 684
    :cond_1b9
    const v2, 0x7f06002b

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 686
    const/4 v2, 0x0

    goto/16 :goto_5d

    .end local v9           #e:Ljava/lang/Error;
    :cond_1c9
    move-object v2, v11

    .line 696
    goto/16 :goto_5d
.end method

.method public static save(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .registers 11
    .parameter "context"
    .parameter "savebm"

    .prologue
    .line 238
    sget-object v6, Lcom/sec/android/mimage/photoretouching/common/Constants;->SAVE_DIR:Ljava/lang/String;

    .line 239
    .local v6, directory:Ljava/lang/String;
    const/4 v4, 0x0

    .line 240
    .local v4, location:Landroid/location/Location;
    const/4 v5, 0x0

    .line 241
    .local v5, orientation:I
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/common/Image;->getSaveFileName()Ljava/lang/String;

    move-result-object v7

    .line 243
    .local v7, newfilename:Ljava/lang/String;
    invoke-static {p1, v6, v7}, Lcom/sec/android/mimage/photoretouching/common/Image;->storeImage(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Z

    .line 245
    move-object v1, v7

    .line 246
    .local v1, title:Ljava/lang/String;
    const/4 v8, 0x0

    .line 248
    .local v8, uri:Landroid/net/Uri;
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/common/Image;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 250
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_23} :catch_24

    .line 255
    :goto_23
    return-object v8

    .line 252
    :catch_24
    move-exception v0

    goto :goto_23
.end method

.method public static save(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/net/Uri;
    .registers 16
    .parameter "context"
    .parameter "savebm"
    .parameter "filename"

    .prologue
    const/4 v12, 0x0

    .line 261
    sget-object v6, Lcom/sec/android/mimage/photoretouching/common/Constants;->SAVE_DIR:Ljava/lang/String;

    .line 262
    .local v6, directory:Ljava/lang/String;
    const/4 v4, 0x0

    .line 265
    .local v4, location:Landroid/location/Location;
    const/4 v5, 0x0

    .line 267
    .local v5, orientation:I
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 268
    const-string v0, "[*?|:/()\"<>]"

    const-string v2, ""

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 269
    const-string v0, "\\\\"

    const-string v2, ""

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 270
    const-string v0, "\n"

    const-string v2, " "

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 271
    const-string v0, "\t"

    const-string v2, " "

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 273
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_37

    .line 274
    const/16 v0, 0x63

    invoke-virtual {p2, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 277
    :cond_37
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3f

    .line 278
    const-string p2, "notitle"

    .line 280
    :cond_3f
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 281
    .local v10, tmpfilename:Ljava/lang/String;
    const/4 v9, 0x1

    .line 284
    .local v9, i:I
    :goto_45
    invoke-static {v10}, Lcom/sec/android/mimage/photoretouching/common/Image;->getSaveFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 285
    .local v7, newfilename:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .local v8, checkfile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 293
    const/4 v10, 0x0

    .line 295
    invoke-static {p1, v6, v7}, Lcom/sec/android/mimage/photoretouching/common/Image;->storeImage(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_80

    .line 296
    const/4 v11, 0x0

    .line 309
    :goto_5c
    return-object v11

    .line 289
    :cond_5d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_%02d"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 290
    add-int/lit8 v9, v9, 0x1

    .line 282
    goto :goto_45

    .line 299
    :cond_80
    move-object v1, v7

    .line 300
    .local v1, title:Ljava/lang/String;
    const/4 v11, 0x0

    .line 302
    .local v11, uri:Landroid/net/Uri;
    :try_start_82
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/common/Image;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 304
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_98} :catch_99

    goto :goto_5c

    .line 306
    :catch_99
    move-exception v0

    goto :goto_5c
.end method

.method public static storeBuff([BLjava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "buff"
    .parameter "directory"
    .parameter "path"

    .prologue
    .line 98
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .local v3, loadFile:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v4, nf:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1d

    .line 101
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_1d

    .line 102
    const-string v6, "[PhotoEditor_U1ICS_120206]"

    const-string v7, "make directory!!, fail"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_1d
    const/4 v1, 0x0

    .line 109
    .local v1, fis:Ljava/io/FileOutputStream;
    :try_start_1e
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_3a
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_2d

    .line 110
    .end local v1           #fis:Ljava/io/FileOutputStream;
    .local v2, fis:Ljava/io/FileOutputStream;
    :try_start_23
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_47
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_4a

    .line 111
    const/4 v5, 0x1

    .line 121
    .local v5, result:Z
    :try_start_27
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_43

    .line 122
    const/4 v5, 0x1

    move-object v1, v2

    .line 128
    .end local v2           #fis:Ljava/io/FileOutputStream;
    .restart local v1       #fis:Ljava/io/FileOutputStream;
    :goto_2c
    return v5

    .line 113
    .end local v5           #result:Z
    :catch_2d
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/Exception;
    :goto_2e
    :try_start_2e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_3a

    .line 116
    const/4 v5, 0x0

    .line 121
    .restart local v5       #result:Z
    :try_start_32
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_37

    .line 122
    const/4 v5, 0x1

    goto :goto_2c

    .line 124
    :catch_37
    move-exception v0

    .line 125
    const/4 v5, 0x0

    goto :goto_2c

    .line 118
    .end local v0           #e:Ljava/lang/Exception;
    .end local v5           #result:Z
    :catchall_3a
    move-exception v6

    .line 121
    :goto_3b
    :try_start_3b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_40

    .line 122
    const/4 v5, 0x1

    .line 127
    .restart local v5       #result:Z
    :goto_3f
    throw v6

    .line 124
    .end local v5           #result:Z
    :catch_40
    move-exception v0

    .line 125
    .restart local v0       #e:Ljava/lang/Exception;
    const/4 v5, 0x0

    .restart local v5       #result:Z
    goto :goto_3f

    .line 124
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #fis:Ljava/io/FileOutputStream;
    .restart local v2       #fis:Ljava/io/FileOutputStream;
    :catch_43
    move-exception v0

    .line 125
    .restart local v0       #e:Ljava/lang/Exception;
    const/4 v5, 0x0

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileOutputStream;
    .restart local v1       #fis:Ljava/io/FileOutputStream;
    goto :goto_2c

    .line 118
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #fis:Ljava/io/FileOutputStream;
    .end local v5           #result:Z
    .restart local v2       #fis:Ljava/io/FileOutputStream;
    :catchall_47
    move-exception v6

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileOutputStream;
    .restart local v1       #fis:Ljava/io/FileOutputStream;
    goto :goto_3b

    .line 113
    .end local v1           #fis:Ljava/io/FileOutputStream;
    .restart local v2       #fis:Ljava/io/FileOutputStream;
    :catch_4a
    move-exception v0

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileOutputStream;
    .restart local v1       #fis:Ljava/io/FileOutputStream;
    goto :goto_2e
.end method

.method public static storeImage(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "src"
    .parameter "directory"
    .parameter "filename"

    .prologue
    .line 204
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/mimage/photoretouching/common/Image;->storeImage(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Z

    move-result v0

    return v0
.end method

.method public static storeImage(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Z
    .registers 12
    .parameter "src"
    .parameter "directory"
    .parameter "filename"
    .parameter "format"

    .prologue
    const/4 v4, 0x0

    .line 152
    const/4 v1, 0x0

    .line 154
    .local v1, fOut:Ljava/io/FileOutputStream;
    const-string v6, "[PhotoEditor_U1ICS_120206]"

    const-string v7, "storeImage Start"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .local v5, saveFile:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v3, nf:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2b

    .line 162
    :try_start_19
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_2b

    .line 164
    const-string v6, "[PhotoEditor_U1ICS_120206]"

    const-string v7, "make directory!!, fail"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_26} :catch_27

    .line 197
    :goto_26
    return v4

    .line 168
    :catch_27
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2b
    :try_start_2b
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_30} :catch_46

    .line 177
    .end local v1           #fOut:Ljava/io/FileOutputStream;
    .local v2, fOut:Ljava/io/FileOutputStream;
    const/16 v6, 0x64

    :try_start_32
    invoke-virtual {p0, p3, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_51

    .line 178
    const/4 v4, 0x1

    .line 185
    .local v4, result:Z
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/common/Image;->sync(Ljava/io/FileOutputStream;)Z

    .line 188
    :try_start_39
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_4b

    .line 189
    const/4 v4, 0x1

    .line 195
    :goto_3d
    const-string v6, "[PhotoEditor_U1ICS_120206]"

    const-string v7, "storeImage End"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 197
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .restart local v1       #fOut:Ljava/io/FileOutputStream;
    goto :goto_26

    .line 179
    .end local v4           #result:Z
    :catch_46
    move-exception v0

    .line 180
    .restart local v0       #e:Ljava/lang/Exception;
    :goto_47
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26

    .line 190
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    .restart local v4       #result:Z
    :catch_4b
    move-exception v0

    .line 191
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    const/4 v4, 0x0

    goto :goto_3d

    .line 179
    .end local v0           #e:Ljava/lang/Exception;
    .end local v4           #result:Z
    :catch_51
    move-exception v0

    move-object v1, v2

    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .restart local v1       #fOut:Ljava/io/FileOutputStream;
    goto :goto_47
.end method

.method public static sync(Ljava/io/FileOutputStream;)Z
    .registers 2
    .parameter "stream"

    .prologue
    .line 140
    if-eqz p0, :cond_9

    .line 141
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_b

    .line 143
    :cond_9
    const/4 v0, 0x1

    .line 146
    :goto_a
    return v0

    .line 144
    :catch_b
    move-exception v0

    .line 146
    const/4 v0, 0x0

    goto :goto_a
.end method
