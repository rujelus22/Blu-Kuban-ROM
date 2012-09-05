.class public Lcom/cooliris/media/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"


# static fields
.field public static final CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

.field public static final CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

.field public static final DEFAULT_THUMBNAIL:Landroid/graphics/Bitmap;

.field public static final NO_IMAGE_BITMAP:Landroid/graphics/Bitmap;

.field private static final STORAGE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0x20

    const/4 v1, 0x1

    .line 48
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/cooliris/media/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    .line 57
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/cooliris/media/ImageManager;->DEFAULT_THUMBNAIL:Landroid/graphics/Bitmap;

    .line 60
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/cooliris/media/ImageManager;->NO_IMAGE_BITMAP:Landroid/graphics/Bitmap;

    .line 73
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

    sput-object v0, Lcom/cooliris/media/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    .line 76
    sget-object v0, Lcom/cooliris/media/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/cooliris/media/ImageManager;->getBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cooliris/media/ImageManager;->CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 249
    return-void
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JJLjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;
    .registers 28
    .parameter "cr"
    .parameter "title"
    .parameter "dateAdded"
    .parameter "dateTaken"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "directory"
    .parameter "filename"
    .parameter "source"
    .parameter "jpegData"
    .parameter "degree"

    .prologue
    .line 160
    const/4 v7, 0x0

    .line 161
    .local v7, outputStream:Ljava/io/OutputStream;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p8

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p9

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 163
    .local v6, filePath:Ljava/lang/String;
    :try_start_1c
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p8

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_2c

    .line 165
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 166
    :cond_2c
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .local v5, file:Ljava/io/File;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3a
    .catchall {:try_start_1c .. :try_end_3a} :catchall_ed
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_3a} :catch_101
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_3a} :catch_e2

    .line 168
    .end local v7           #outputStream:Ljava/io/OutputStream;
    .local v8, outputStream:Ljava/io/OutputStream;
    if-eqz p10, :cond_c8

    .line 169
    :try_start_3c
    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v14, 0x4b

    move-object/from16 v0, p10

    invoke-virtual {v0, v13, v14, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 170
    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, p12, v13
    :try_end_49
    .catchall {:try_start_3c .. :try_end_49} :catchall_fb
    .catch Ljava/io/FileNotFoundException; {:try_start_3c .. :try_end_49} :catch_d6
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_49} :catch_fe

    .line 182
    :goto_49
    invoke-static {v8}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 186
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 188
    .local v9, size:J
    new-instance v12, Landroid/content/ContentValues;

    const/16 v13, 0xb

    invoke-direct {v12, v13}, Landroid/content/ContentValues;-><init>(I)V

    .line 189
    .local v12, values:Landroid/content/ContentValues;
    const-string v13, "title"

    move-object/from16 v0, p1

    invoke-virtual {v12, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v13, "_display_name"

    move-object/from16 v0, p9

    invoke-virtual {v12, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v13, "datetaken"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 198
    const-string v13, "date_added"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 199
    const-string v13, "mime_type"

    const-string v14, "image/jpeg"

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v13, "orientation"

    const/4 v14, 0x0

    aget v14, p12, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    const-string v13, "_data"

    invoke-virtual {v12, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v13, "_size"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 204
    if-eqz p6, :cond_bf

    if-eqz p7, :cond_bf

    .line 205
    const-string v13, "latitude"

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Double;->floatValue()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 206
    const-string v13, "longitude"

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Double;->floatValue()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 209
    :cond_bf
    const/4 v11, 0x0

    .line 211
    .local v11, uri:Landroid/net/Uri;
    :try_start_c0
    sget-object v13, Lcom/cooliris/media/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v13, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_c5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_c0 .. :try_end_c5} :catch_f2

    move-result-object v11

    :goto_c6
    move-object v7, v8

    .line 215
    .end local v2           #dir:Ljava/io/File;
    .end local v5           #file:Ljava/io/File;
    .end local v8           #outputStream:Ljava/io/OutputStream;
    .end local v9           #size:J
    .end local v11           #uri:Landroid/net/Uri;
    .end local v12           #values:Landroid/content/ContentValues;
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    :goto_c7
    return-object v11

    .line 172
    .end local v7           #outputStream:Ljava/io/OutputStream;
    .restart local v2       #dir:Ljava/io/File;
    .restart local v5       #file:Ljava/io/File;
    .restart local v8       #outputStream:Ljava/io/OutputStream;
    :cond_c8
    :try_start_c8
    move-object/from16 v0, p11

    invoke-virtual {v8, v0}, Ljava/io/OutputStream;->write([B)V

    .line 173
    const/4 v13, 0x0

    invoke-static {v6}, Lcom/cooliris/media/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    move-result v14

    aput v14, p12, v13
    :try_end_d4
    .catchall {:try_start_c8 .. :try_end_d4} :catchall_fb
    .catch Ljava/io/FileNotFoundException; {:try_start_c8 .. :try_end_d4} :catch_d6
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_d4} :catch_fe

    goto/16 :goto_49

    .line 175
    :catch_d6
    move-exception v4

    move-object v7, v8

    .line 176
    .end local v2           #dir:Ljava/io/File;
    .end local v5           #file:Ljava/io/File;
    .end local v8           #outputStream:Ljava/io/OutputStream;
    .local v4, ex:Ljava/io/FileNotFoundException;
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    :goto_d8
    :try_start_d8
    const-string v13, "ImageManager"

    invoke-static {v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_dd
    .catchall {:try_start_d8 .. :try_end_dd} :catchall_ed

    .line 177
    const/4 v11, 0x0

    .line 182
    invoke-static {v7}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_c7

    .line 178
    .end local v4           #ex:Ljava/io/FileNotFoundException;
    :catch_e2
    move-exception v4

    .line 179
    .local v4, ex:Ljava/io/IOException;
    :goto_e3
    :try_start_e3
    const-string v13, "ImageManager"

    invoke-static {v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e8
    .catchall {:try_start_e3 .. :try_end_e8} :catchall_ed

    .line 180
    const/4 v11, 0x0

    .line 182
    invoke-static {v7}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_c7

    .end local v4           #ex:Ljava/io/IOException;
    :catchall_ed
    move-exception v13

    :goto_ee
    invoke-static {v7}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v13

    .line 212
    .end local v7           #outputStream:Ljava/io/OutputStream;
    .restart local v2       #dir:Ljava/io/File;
    .restart local v5       #file:Ljava/io/File;
    .restart local v8       #outputStream:Ljava/io/OutputStream;
    .restart local v9       #size:J
    .restart local v11       #uri:Landroid/net/Uri;
    .restart local v12       #values:Landroid/content/ContentValues;
    :catch_f2
    move-exception v3

    .line 213
    .local v3, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v13, "ImageManager"

    const-string v14, "addImage:: SQLiteFullException...."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6

    .line 182
    .end local v3           #e:Landroid/database/sqlite/SQLiteFullException;
    .end local v9           #size:J
    .end local v11           #uri:Landroid/net/Uri;
    .end local v12           #values:Landroid/content/ContentValues;
    :catchall_fb
    move-exception v13

    move-object v7, v8

    .end local v8           #outputStream:Ljava/io/OutputStream;
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    goto :goto_ee

    .line 178
    .end local v7           #outputStream:Ljava/io/OutputStream;
    .restart local v8       #outputStream:Ljava/io/OutputStream;
    :catch_fe
    move-exception v4

    move-object v7, v8

    .end local v8           #outputStream:Ljava/io/OutputStream;
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    goto :goto_e3

    .line 175
    .end local v2           #dir:Ljava/io/File;
    .end local v5           #file:Ljava/io/File;
    :catch_101
    move-exception v4

    goto :goto_d8
.end method

.method private static checkFsWritable()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/DCIM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, directoryName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 326
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 335
    :goto_2d
    return v2

    .line 331
    :cond_2e
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 332
    const/4 v2, 0x1

    goto :goto_2d

    .line 334
    :cond_36
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkFsWritable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not writable."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method public static getBucketId(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "path"

    .prologue
    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExifOrientation(Ljava/lang/String;)I
    .registers 9
    .parameter "filepath"

    .prologue
    const/4 v7, -0x1

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, degree:I
    const/4 v2, 0x0

    .line 222
    .local v2, exif:Landroid/media/ExifInterface;
    :try_start_3
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_17

    .end local v2           #exif:Landroid/media/ExifInterface;
    .local v3, exif:Landroid/media/ExifInterface;
    move-object v2, v3

    .line 226
    .end local v3           #exif:Landroid/media/ExifInterface;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    :goto_9
    if-eqz v2, :cond_16

    .line 227
    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 228
    .local v4, orientation:I
    if-eq v4, v7, :cond_16

    .line 230
    packed-switch v4, :pswitch_data_2a

    .line 246
    .end local v4           #orientation:I
    :cond_16
    :goto_16
    :pswitch_16
    return v0

    .line 223
    :catch_17
    move-exception v1

    .line 224
    .local v1, ex:Ljava/io/IOException;
    const-string v5, "ImageManager"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 232
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v4       #orientation:I
    :pswitch_20
    const/16 v0, 0x5a

    .line 233
    goto :goto_16

    .line 235
    :pswitch_23
    const/16 v0, 0xb4

    .line 236
    goto :goto_16

    .line 238
    :pswitch_26
    const/16 v0, 0x10e

    .line 239
    goto :goto_16

    .line 230
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

.method public static hasStorage()Z
    .registers 1

    .prologue
    .line 344
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cooliris/media/ImageManager;->hasStorage(Z)Z

    move-result v0

    return v0
.end method

.method public static hasStorage(Z)Z
    .registers 4
    .parameter "requireWriteAccess"

    .prologue
    const/4 v1, 0x1

    .line 348
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, state:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 350
    if-eqz p0, :cond_13

    .line 351
    invoke-static {}, Lcom/cooliris/media/ImageManager;->checkFsWritable()Z

    move-result v1

    .line 359
    :cond_13
    :goto_13
    return v1

    .line 356
    :cond_14
    if-nez p0, :cond_1e

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 359
    :cond_1e
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public static final isMediaScannerScanning(Landroid/content/ContentResolver;)Z
    .registers 11
    .parameter "cr"

    .prologue
    const/4 v9, 0x1

    .line 379
    const/4 v8, 0x0

    .line 380
    .local v8, result:Z
    const/4 v6, 0x0

    .line 382
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_3
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "volume"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/cooliris/media/ImageManager;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 385
    if-eqz v6, :cond_2d

    .line 386
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_2d

    .line 387
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 388
    const-string v0, "external"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_52
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2c} :catch_33

    move-result v8

    .line 394
    :cond_2d
    if-eqz v6, :cond_32

    .line 395
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 398
    :cond_32
    :goto_32
    return v8

    .line 391
    :catch_33
    move-exception v7

    .line 392
    .local v7, e:Ljava/lang/Exception;
    :try_start_34
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkMediaScanning:: Exception....: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_34 .. :try_end_4c} :catchall_52

    .line 394
    if-eqz v6, :cond_32

    .line 395
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_32

    .line 394
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_52
    move-exception v0

    if-eqz v6, :cond_58

    .line 395
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_58
    throw v0
.end method

.method private static final query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .parameter "resolver"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v2, 0x0

    .line 366
    if-nez p0, :cond_4

    .line 373
    :goto_3
    return-object v2

    .line 369
    :cond_4
    :try_start_4
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_7} :catch_9
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_7} :catch_b

    move-result-object v2

    goto :goto_3

    .line 370
    :catch_9
    move-exception v1

    .line 371
    .local v1, ex:Ljava/lang/UnsupportedOperationException;
    goto :goto_3

    .line 372
    .end local v1           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_b
    move-exception v0

    .line 373
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    goto :goto_3
.end method
