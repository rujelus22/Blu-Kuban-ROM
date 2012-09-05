.class public Lcom/sec/android/app/camera/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/ImageManager$1;,
        Lcom/sec/android/app/camera/ImageManager$EmptyImageList;,
        Lcom/sec/android/app/camera/ImageManager$DataLocation;,
        Lcom/sec/android/app/camera/ImageManager$ImageListParam;
    }
.end annotation


# static fields
.field public static final CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String; = null

.field public static final CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String; = null

.field public static final INCLUDE_DRM_IMAGES:I = 0x2

.field public static final INCLUDE_IMAGES:I = 0x1

.field public static final INCLUDE_VIDEOS:I = 0x4

.field public static final SORT_ASCENDING:I = 0x1

.field public static final SORT_DESCENDING:I = 0x2

.field private static final STORAGE_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "ImageManager"

.field private static final THUMB_URI:Landroid/net/Uri;

.field private static final VIDEO_STORAGE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 61
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/app/camera/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    .line 62
    sget-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/app/camera/ImageManager;->THUMB_URI:Landroid/net/Uri;

    .line 64
    const-string v0, "content://media/external/video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageManager;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    .line 145
    sget-object v0, Lcom/sec/android/app/camera/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/ImageManager;->getBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageManager;->CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 418
    return-void
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;
    .registers 22
    .parameter "cr"
    .parameter "title"
    .parameter "dateTaken"
    .parameter "location"
    .parameter "directory"
    .parameter "filename"
    .parameter "source"
    .parameter "jpegData"
    .parameter "degree"

    .prologue
    .line 243
    const/4 v6, 0x0

    .line 244
    .local v6, outputStream:Ljava/io/OutputStream;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 246
    .local v5, filePath:Ljava/lang/String;
    :try_start_1c
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p5

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2c

    .line 248
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 249
    :cond_2c
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .local v4, file:Ljava/io/File;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3a
    .catchall {:try_start_1c .. :try_end_3a} :catchall_c7
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_3a} :catch_d2
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_3a} :catch_bc

    .line 251
    .end local v6           #outputStream:Ljava/io/OutputStream;
    .local v7, outputStream:Ljava/io/OutputStream;
    if-eqz p7, :cond_a3

    .line 252
    :try_start_3c
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x4b

    move-object/from16 v0, p7

    invoke-virtual {v0, v9, v10, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 253
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, p9, v9
    :try_end_49
    .catchall {:try_start_3c .. :try_end_49} :catchall_cc
    .catch Ljava/io/FileNotFoundException; {:try_start_3c .. :try_end_49} :catch_b0
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_49} :catch_cf

    .line 265
    :goto_49
    invoke-static {v7}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 268
    new-instance v8, Landroid/content/ContentValues;

    const/4 v9, 0x7

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 269
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "title"

    invoke-virtual {v8, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v9, "_display_name"

    move-object/from16 v0, p6

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v9, "datetaken"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 276
    const-string v9, "mime_type"

    const-string v10, "image/jpeg"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v9, "orientation"

    const/4 v10, 0x0

    aget v10, p9, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 278
    const-string v9, "_data"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    if-eqz p4, :cond_9b

    .line 281
    const-string v9, "latitude"

    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 282
    const-string v9, "longitude"

    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 285
    :cond_9b
    sget-object v9, Lcom/sec/android/app/camera/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v9, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    move-object v6, v7

    .end local v2           #dir:Ljava/io/File;
    .end local v4           #file:Ljava/io/File;
    .end local v7           #outputStream:Ljava/io/OutputStream;
    .end local v8           #values:Landroid/content/ContentValues;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    :goto_a2
    return-object v9

    .line 255
    .end local v6           #outputStream:Ljava/io/OutputStream;
    .restart local v2       #dir:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    :cond_a3
    :try_start_a3
    move-object/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 256
    const/4 v9, 0x0

    invoke-static {v5}, Lcom/sec/android/app/camera/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    move-result v10

    aput v10, p9, v9
    :try_end_af
    .catchall {:try_start_a3 .. :try_end_af} :catchall_cc
    .catch Ljava/io/FileNotFoundException; {:try_start_a3 .. :try_end_af} :catch_b0
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_af} :catch_cf

    goto :goto_49

    .line 258
    :catch_b0
    move-exception v3

    move-object v6, v7

    .line 259
    .end local v2           #dir:Ljava/io/File;
    .end local v4           #file:Ljava/io/File;
    .end local v7           #outputStream:Ljava/io/OutputStream;
    .local v3, ex:Ljava/io/FileNotFoundException;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    :goto_b2
    :try_start_b2
    const-string v9, "ImageManager"

    invoke-static {v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b7
    .catchall {:try_start_b2 .. :try_end_b7} :catchall_c7

    .line 260
    const/4 v9, 0x0

    .line 265
    invoke-static {v6}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_a2

    .line 261
    .end local v3           #ex:Ljava/io/FileNotFoundException;
    :catch_bc
    move-exception v3

    .line 262
    .local v3, ex:Ljava/io/IOException;
    :goto_bd
    :try_start_bd
    const-string v9, "ImageManager"

    invoke-static {v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c2
    .catchall {:try_start_bd .. :try_end_c2} :catchall_c7

    .line 263
    const/4 v9, 0x0

    .line 265
    invoke-static {v6}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_a2

    .end local v3           #ex:Ljava/io/IOException;
    :catchall_c7
    move-exception v9

    :goto_c8
    invoke-static {v6}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v9

    .end local v6           #outputStream:Ljava/io/OutputStream;
    .restart local v2       #dir:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    :catchall_cc
    move-exception v9

    move-object v6, v7

    .end local v7           #outputStream:Ljava/io/OutputStream;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    goto :goto_c8

    .line 261
    .end local v6           #outputStream:Ljava/io/OutputStream;
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    :catch_cf
    move-exception v3

    move-object v6, v7

    .end local v7           #outputStream:Ljava/io/OutputStream;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    goto :goto_bd

    .line 258
    .end local v2           #dir:Ljava/io/File;
    .end local v4           #file:Ljava/io/File;
    :catch_d2
    move-exception v3

    goto :goto_b2
.end method

.method private static checkFsWritable()Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 496
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/DCIM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 498
    .local v1, directoryName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 499
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2e

    .line 500
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_2e

    .line 516
    :cond_2d
    :goto_2d
    return v4

    .line 504
    :cond_2e
    new-instance v3, Ljava/io/File;

    const-string v5, ".probe"

    invoke-direct {v3, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    .local v3, f:Ljava/io/File;
    :try_start_35
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 508
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 510
    :cond_3e
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 513
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_47} :catch_49

    .line 514
    const/4 v4, 0x1

    goto :goto_2d

    .line 515
    :catch_49
    move-exception v2

    .line 516
    .local v2, ex:Ljava/io/IOException;
    goto :goto_2d
.end method

.method public static ensureOSXCompatibleFolder()V
    .registers 4

    .prologue
    .line 161
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/100ANDRO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, nnnAAAAA:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4e

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 165
    const-string v1, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create NNNAAAAA file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_4e
    return-void
.end method

.method public static getBucketId(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "path"

    .prologue
    .line 153
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEmptyImageListParam()Lcom/sec/android/app/camera/ImageManager$ImageListParam;
    .registers 2

    .prologue
    .line 472
    new-instance v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/sec/android/app/camera/ImageManager$ImageListParam;-><init>()V

    .line 473
    .local v0, param:Lcom/sec/android/app/camera/ImageManager$ImageListParam;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mIsEmptyImageList:Z

    .line 474
    return-object v0
.end method

.method public static getExifOrientation(Ljava/lang/String;)I
    .registers 9
    .parameter "filepath"

    .prologue
    const/4 v7, -0x1

    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, degree:I
    const/4 v2, 0x0

    .line 292
    .local v2, exif:Landroid/media/ExifInterface;
    :try_start_3
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_17

    .end local v2           #exif:Landroid/media/ExifInterface;
    .local v3, exif:Landroid/media/ExifInterface;
    move-object v2, v3

    .line 296
    .end local v3           #exif:Landroid/media/ExifInterface;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    :goto_9
    if-eqz v2, :cond_16

    .line 297
    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 299
    .local v4, orientation:I
    if-eq v4, v7, :cond_16

    .line 301
    packed-switch v4, :pswitch_data_2a

    .line 317
    .end local v4           #orientation:I
    :cond_16
    :goto_16
    :pswitch_16
    return v0

    .line 293
    :catch_17
    move-exception v1

    .line 294
    .local v1, ex:Ljava/io/IOException;
    const-string v5, "ImageManager"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 303
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v4       #orientation:I
    :pswitch_20
    const/16 v0, 0x5a

    .line 304
    goto :goto_16

    .line 306
    :pswitch_23
    const/16 v0, 0xb4

    .line 307
    goto :goto_16

    .line 309
    :pswitch_26
    const/16 v0, 0x10e

    .line 310
    goto :goto_16

    .line 301
    nop

    :pswitch_data_2a
    .packed-switch 0x3
        :pswitch_23
        :pswitch_16
        :pswitch_16
        :pswitch_20
        :pswitch_16
        :pswitch_26
    .end packed-switch
.end method

.method public static getImageListParam(Lcom/sec/android/app/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/sec/android/app/camera/ImageManager$ImageListParam;
    .registers 5
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    .line 457
    new-instance v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/sec/android/app/camera/ImageManager$ImageListParam;-><init>()V

    .line 458
    .local v0, param:Lcom/sec/android/app/camera/ImageManager$ImageListParam;
    iput-object p0, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mLocation:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    .line 459
    iput p1, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mInclusion:I

    .line 460
    iput p2, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mSort:I

    .line 461
    iput-object p3, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    .line 462
    return-object v0
.end method

.method public static getLastImageThumbPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/.thumbnails/image_last_thumb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastVideoThumbPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/.thumbnails/video_last_thumb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSingleImageListParam(Landroid/net/Uri;)Lcom/sec/android/app/camera/ImageManager$ImageListParam;
    .registers 2
    .parameter "uri"

    .prologue
    .line 466
    new-instance v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/sec/android/app/camera/ImageManager$ImageListParam;-><init>()V

    .line 467
    .local v0, param:Lcom/sec/android/app/camera/ImageManager$ImageListParam;
    iput-object p0, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mSingleImageUri:Landroid/net/Uri;

    .line 468
    return-object v0
.end method

.method public static getTempJpegPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/.tempjpeg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasStorage()Z
    .registers 1

    .prologue
    .line 521
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/camera/ImageManager;->hasStorage(Z)Z

    move-result v0

    return v0
.end method

.method public static hasStorage(Z)Z
    .registers 4
    .parameter "requireWriteAccess"

    .prologue
    const/4 v1, 0x1

    .line 525
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, state:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 528
    if-eqz p0, :cond_13

    .line 529
    invoke-static {}, Lcom/sec/android/app/camera/ImageManager;->checkFsWritable()Z

    move-result v1

    .line 538
    :cond_13
    :goto_13
    return v1

    .line 534
    :cond_14
    if-nez p0, :cond_1e

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 538
    :cond_1e
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public static isImage(Lcom/sec/android/app/camera/gallery/IImage;)Z
    .registers 2
    .parameter "image"

    .prologue
    .line 213
    invoke-interface {p0}, Lcom/sec/android/app/camera/gallery/IImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/ImageManager;->isImageMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isImageMimeType(Ljava/lang/String;)Z
    .registers 2
    .parameter "mimeType"

    .prologue
    .line 197
    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMediaScannerScanning(Landroid/content/ContentResolver;)Z
    .registers 11
    .parameter "cr"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 557
    const/4 v7, 0x0

    .line 558
    .local v7, result:Z
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "volume"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/camera/ImageManager;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 561
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2d

    .line 562
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_2a

    .line 563
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 564
    const-string v0, "external"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 566
    :cond_2a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 569
    :cond_2d
    return v7
.end method

.method static isSingleImageMode(Ljava/lang/String;)Z
    .registers 2
    .parameter "uriString"

    .prologue
    .line 412
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static isVideo(Lcom/sec/android/app/camera/gallery/IImage;)Z
    .registers 2
    .parameter "image"

    .prologue
    .line 222
    instance-of v0, p0, Lcom/sec/android/app/camera/gallery/VideoObject;

    return v0
.end method

.method public static makeEmptyImageList()Lcom/sec/android/app/camera/gallery/IImageList;
    .registers 2

    .prologue
    .line 485
    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/app/camera/ImageManager;->getEmptyImageListParam()Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$ImageListParam;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v0

    return-object v0
.end method

.method public static makeImageList(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/sec/android/app/camera/gallery/IImageList;
    .registers 8
    .parameter "cr"
    .parameter "uri"
    .parameter "sort"

    .prologue
    const/4 v4, 0x0

    .line 390
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, uriString:Ljava/lang/String;
    :goto_7
    const-string v2, "content://drm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 397
    sget-object v2, Lcom/sec/android/app/camera/ImageManager$DataLocation;->ALL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    const/4 v3, 0x2

    invoke-static {p0, v2, v3, p2, v4}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v2

    .line 406
    :goto_16
    return-object v2

    .line 390
    .end local v1           #uriString:Ljava/lang/String;
    :cond_17
    const-string v1, ""

    goto :goto_7

    .line 399
    .restart local v1       #uriString:Ljava/lang/String;
    :cond_1a
    const-string v2, "content://media/external/video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 400
    sget-object v2, Lcom/sec/android/app/camera/ImageManager$DataLocation;->EXTERNAL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    const/4 v3, 0x4

    invoke-static {p0, v2, v3, p2, v4}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v2

    goto :goto_16

    .line 402
    :cond_2a
    invoke-static {v1}, Lcom/sec/android/app/camera/ImageManager;->isSingleImageMode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 403
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/ImageManager;->makeSingleImageList(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v2

    goto :goto_16

    .line 405
    :cond_35
    if-eqz p1, :cond_45

    const-string v2, "bucketId"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, bucketId:Ljava/lang/String;
    :goto_3d
    sget-object v2, Lcom/sec/android/app/camera/ImageManager$DataLocation;->EXTERNAL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    const/4 v3, 0x1

    invoke-static {p0, v2, v3, p2, v0}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v2

    goto :goto_16

    .line 405
    .end local v0           #bucketId:Ljava/lang/String;
    :cond_45
    const-string v0, ""

    goto :goto_3d
.end method

.method public static makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/sec/android/app/camera/gallery/IImageList;
    .registers 7
    .parameter "cr"
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    .line 479
    invoke-static {p1, p2, p3, p4}, Lcom/sec/android/app/camera/ImageManager;->getImageListParam(Lcom/sec/android/app/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    move-result-object v0

    .line 481
    .local v0, param:Lcom/sec/android/app/camera/ImageManager$ImageListParam;
    invoke-static {p0, v0}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$ImageListParam;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v1

    return-object v1
.end method

.method public static makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$ImageListParam;)Lcom/sec/android/app/camera/gallery/IImageList;
    .registers 19
    .parameter "cr"
    .parameter "param"

    .prologue
    .line 323
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mLocation:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    .line 324
    .local v13, location:Lcom/sec/android/app/camera/ImageManager$DataLocation;
    move-object/from16 v0, p1

    iget v8, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mInclusion:I

    .line 325
    .local v8, inclusion:I
    move-object/from16 v0, p1

    iget v5, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mSort:I

    .line 326
    .local v5, sort:I
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    .line 327
    .local v6, bucketId:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mSingleImageUri:Landroid/net/Uri;

    .line 328
    .local v14, singleImageUri:Landroid/net/Uri;
    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mIsEmptyImageList:Z

    .line 330
    .local v9, isEmptyImageList:Z
    if-nez v9, :cond_1c

    if-nez p0, :cond_23

    .line 331
    :cond_1c
    new-instance v12, Lcom/sec/android/app/camera/ImageManager$EmptyImageList;

    const/4 v1, 0x0

    invoke-direct {v12, v1}, Lcom/sec/android/app/camera/ImageManager$EmptyImageList;-><init>(Lcom/sec/android/app/camera/ImageManager$1;)V

    .line 384
    :goto_22
    return-object v12

    .line 334
    :cond_23
    if-eqz v14, :cond_2d

    .line 335
    new-instance v12, Lcom/sec/android/app/camera/gallery/SingleImageList;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v14}, Lcom/sec/android/app/camera/gallery/SingleImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_22

    .line 339
    :cond_2d
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/app/camera/ImageManager;->hasStorage(Z)Z

    move-result v7

    .line 342
    .local v7, haveSdCard:Z
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .local v11, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/camera/gallery/BaseImageList;>;"
    if-eqz v7, :cond_5f

    sget-object v1, Lcom/sec/android/app/camera/ImageManager$DataLocation;->INTERNAL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    if-eq v13, v1, :cond_5f

    .line 345
    and-int/lit8 v1, v8, 0x1

    if-eqz v1, :cond_4f

    .line 346
    new-instance v1, Lcom/sec/android/app/camera/gallery/ImageList;

    sget-object v3, Lcom/sec/android/app/camera/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/camera/ImageManager;->THUMB_URI:Landroid/net/Uri;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/gallery/ImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    :cond_4f
    and-int/lit8 v1, v8, 0x4

    if-eqz v1, :cond_5f

    .line 350
    new-instance v1, Lcom/sec/android/app/camera/gallery/VideoList;

    sget-object v2, Lcom/sec/android/app/camera/ImageManager;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v5, v6}, Lcom/sec/android/app/camera/gallery/VideoList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_5f
    sget-object v1, Lcom/sec/android/app/camera/ImageManager$DataLocation;->INTERNAL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    if-eq v13, v1, :cond_67

    sget-object v1, Lcom/sec/android/app/camera/ImageManager$DataLocation;->ALL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    if-ne v13, v1, :cond_89

    .line 354
    :cond_67
    and-int/lit8 v1, v8, 0x1

    if-eqz v1, :cond_79

    .line 355
    new-instance v1, Lcom/sec/android/app/camera/gallery/ImageList;

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Landroid/provider/MediaStore$Images$Thumbnails;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/gallery/ImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_79
    and-int/lit8 v1, v8, 0x2

    if-eqz v1, :cond_89

    .line 361
    new-instance v1, Lcom/sec/android/app/camera/gallery/DrmImageList;

    sget-object v2, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v5, v6}, Lcom/sec/android/app/camera/gallery/DrmImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_89
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 369
    .local v10, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/gallery/BaseImageList;>;"
    :cond_8d
    :goto_8d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 370
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/camera/gallery/BaseImageList;

    .line 371
    .local v15, sublist:Lcom/sec/android/app/camera/gallery/BaseImageList;
    invoke-virtual {v15}, Lcom/sec/android/app/camera/gallery/BaseImageList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 372
    invoke-virtual {v15}, Lcom/sec/android/app/camera/gallery/BaseImageList;->close()V

    .line 373
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_8d

    .line 377
    .end local v15           #sublist:Lcom/sec/android/app/camera/gallery/BaseImageList;
    :cond_a6
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b6

    .line 378
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/camera/gallery/BaseImageList;

    .line 379
    .local v12, list:Lcom/sec/android/app/camera/gallery/BaseImageList;
    goto/16 :goto_22

    .line 382
    .end local v12           #list:Lcom/sec/android/app/camera/gallery/BaseImageList;
    :cond_b6
    new-instance v16, Lcom/sec/android/app/camera/gallery/ImageListUber;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sec/android/app/camera/gallery/IImageList;

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/camera/gallery/ImageListUber;-><init>([Lcom/sec/android/app/camera/gallery/IImageList;I)V

    .local v16, uber:Lcom/sec/android/app/camera/gallery/ImageListUber;
    move-object/from16 v12, v16

    .line 384
    goto/16 :goto_22
.end method

.method public static makeSingleImageList(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImageList;
    .registers 3
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 489
    invoke-static {p1}, Lcom/sec/android/app/camera/ImageManager;->getSingleImageListParam(Landroid/net/Uri;)Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$ImageListParam;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v0

    return-object v0
.end method

.method private static query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "resolver"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v1, 0x0

    .line 545
    if-nez p0, :cond_4

    .line 551
    :goto_3
    return-object v1

    .line 548
    :cond_4
    :try_start_4
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v1

    goto :goto_3

    .line 550
    :catch_9
    move-exception v0

    .line 551
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    goto :goto_3
.end method

.method public static roundOrientation(I)I
    .registers 4
    .parameter "orientationInput"

    .prologue
    .line 171
    move v0, p0

    .line 172
    .local v0, orientation:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    .line 173
    const/4 v0, 0x0

    .line 176
    :cond_5
    rem-int/lit16 v0, v0, 0x168

    .line 178
    const/16 v2, 0x2d

    if-ge v0, v2, :cond_d

    .line 179
    const/4 v1, 0x0

    .line 190
    .local v1, retVal:I
    :goto_c
    return v1

    .line 180
    .end local v1           #retVal:I
    :cond_d
    const/16 v2, 0x87

    if-ge v0, v2, :cond_14

    .line 181
    const/16 v1, 0x5a

    .restart local v1       #retVal:I
    goto :goto_c

    .line 182
    .end local v1           #retVal:I
    :cond_14
    const/16 v2, 0xe1

    if-ge v0, v2, :cond_1b

    .line 183
    const/16 v1, 0xb4

    .restart local v1       #retVal:I
    goto :goto_c

    .line 184
    .end local v1           #retVal:I
    :cond_1b
    const/16 v2, 0x13b

    if-ge v0, v2, :cond_22

    .line 185
    const/16 v1, 0x10e

    .restart local v1       #retVal:I
    goto :goto_c

    .line 187
    .end local v1           #retVal:I
    :cond_22
    const/4 v1, 0x0

    .restart local v1       #retVal:I
    goto :goto_c
.end method

.method public static setImageSize(Landroid/content/ContentResolver;Landroid/net/Uri;J)V
    .registers 8
    .parameter "cr"
    .parameter "uri"
    .parameter "size"

    .prologue
    const/4 v3, 0x0

    .line 226
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 227
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_size"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 228
    invoke-virtual {p0, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 229
    return-void
.end method
