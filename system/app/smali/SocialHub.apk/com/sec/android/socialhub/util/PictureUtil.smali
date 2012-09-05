.class public Lcom/sec/android/socialhub/util/PictureUtil;
.super Ljava/lang/Object;
.source "PictureUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized GetExifOrientation(Ljava/lang/String;)I
    .registers 10
    .parameter "filepath"

    .prologue
    const/4 v8, -0x1

    .line 80
    const-class v6, Lcom/sec/android/socialhub/util/PictureUtil;

    monitor-enter v6

    const/4 v0, 0x0

    .line 81
    .local v0, degree:I
    const/4 v2, 0x0

    .line 85
    .local v2, exif:Landroid/media/ExifInterface;
    :try_start_6
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_21
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_1c

    .end local v2           #exif:Landroid/media/ExifInterface;
    .local v3, exif:Landroid/media/ExifInterface;
    move-object v2, v3

    .line 91
    .end local v3           #exif:Landroid/media/ExifInterface;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    :goto_c
    if-eqz v2, :cond_1a

    .line 93
    :try_start_e
    const-string v5, "Orientation"

    const/4 v7, -0x1

    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_21

    move-result v4

    .line 95
    .local v4, orientation:I
    if-eq v4, v8, :cond_1a

    .line 98
    packed-switch v4, :pswitch_data_2e

    .line 114
    .end local v4           #orientation:I
    :cond_1a
    :goto_1a
    :pswitch_1a
    monitor-exit v6

    return v0

    .line 87
    :catch_1c
    move-exception v1

    .line 89
    .local v1, e:Ljava/io/IOException;
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_c

    .line 80
    .end local v1           #e:Ljava/io/IOException;
    :catchall_21
    move-exception v5

    monitor-exit v6

    throw v5

    .line 101
    .restart local v4       #orientation:I
    :pswitch_24
    const/16 v0, 0x5a

    .line 102
    goto :goto_1a

    .line 105
    :pswitch_27
    const/16 v0, 0xb4

    .line 106
    goto :goto_1a

    .line 109
    :pswitch_2a
    const/16 v0, 0x10e

    goto :goto_1a

    .line 98
    nop

    :pswitch_data_2e
    .packed-switch 0x3
        :pswitch_27
        :pswitch_1a
        :pswitch_1a
        :pswitch_24
        :pswitch_1a
        :pswitch_2a
    .end packed-switch
.end method

.method public static declared-synchronized GetRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "bitmap"
    .parameter "degrees"

    .prologue
    const/high16 v3, 0x4000

    .line 207
    const-class v9, Lcom/sec/android/socialhub/util/PictureUtil;

    monitor-enter v9

    if-eqz p1, :cond_34

    if-eqz p0, :cond_34

    .line 209
    :try_start_9
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 210
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_3b

    .line 213
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_20
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 214
    .local v7, b2:Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_34

    .line 216
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_3b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_20 .. :try_end_33} :catch_36

    .line 217
    move-object p0, v7

    .line 226
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :cond_34
    :goto_34
    monitor-exit v9

    return-object p0

    .line 220
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_36
    move-exception v8

    .line 222
    .local v8, ex:Ljava/lang/OutOfMemoryError;
    :try_start_37
    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3b

    goto :goto_34

    .line 207
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v8           #ex:Ljava/lang/OutOfMemoryError;
    :catchall_3b
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static SaveBitmapToFileCache(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;ILjava/lang/Long;)V
    .registers 15
    .parameter "context"
    .parameter "bitmap"
    .parameter "strFilePath"
    .parameter "maxPx"
    .parameter "FileSize"

    .prologue
    .line 127
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v1, fileCacheItem:Ljava/io/File;
    const/4 v5, 0x0

    .line 129
    .local v5, resizeBitmap:[B
    const/4 v2, 0x0

    .line 133
    .local v2, out:Ljava/io/OutputStream;
    :try_start_7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3c

    .line 134
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 138
    :goto_11
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_40

    .line 140
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    :try_start_16
    invoke-static {p1, p4}, Lcom/sec/android/socialhub/util/PictureUtil;->bitmapToByteArray(Landroid/graphics/Bitmap;Ljava/lang/Long;)[B

    move-result-object v4

    .line 141
    .local v4, resize:[B
    invoke-static {v4, p3, p3, p4}, Lcom/sec/android/socialhub/util/ResizeBitmap;->getScaledRaw([BIILjava/lang/Long;)[B

    move-result-object v5

    .line 142
    const/4 v4, 0x0

    .line 144
    if-eqz v5, :cond_52

    .line 146
    array-length v6, v5

    int-to-long v6, v6

    invoke-static {p0}, Lcom/sec/android/socialhub/util/MemoryStatus;->getAvailableExternalAppMemorySize(Landroid/content/Context;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_4b

    .line 148
    const-string v6, "PictureUtil"

    const-string v7, "SaveBitmapToFileCache()"

    const-string v8, "resizeBitmap is OutofMemery!!"

    invoke-static {v6, v7, v8}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_16 .. :try_end_34} :catchall_5c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_34} :catch_4f

    .line 168
    :goto_34
    if-eqz v3, :cond_39

    .line 170
    :try_start_36
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_6f

    .line 172
    :cond_39
    const/4 v5, 0x0

    :goto_3a
    move-object v2, v3

    .line 179
    .end local v3           #out:Ljava/io/OutputStream;
    .end local v4           #resize:[B
    .restart local v2       #out:Ljava/io/OutputStream;
    :goto_3b
    return-void

    .line 136
    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_74
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_11

    .line 160
    :catch_40
    move-exception v0

    .line 162
    .local v0, e:Ljava/lang/Exception;
    :goto_41
    :try_start_41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_74

    .line 168
    if-eqz v2, :cond_49

    .line 170
    :try_start_46
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_6a

    .line 172
    :cond_49
    const/4 v5, 0x0

    goto :goto_3b

    .line 152
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    .restart local v4       #resize:[B
    :cond_4b
    :try_start_4b
    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    goto :goto_34

    .line 160
    .end local v4           #resize:[B
    :catch_4f
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_41

    .line 157
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    .restart local v4       #resize:[B
    :cond_52
    const-string v6, "PictureUtil"

    const-string v7, "resizeFile()"

    const-string v8, "resizedRaw is null!!"

    invoke-static {v6, v7, v8}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_4b .. :try_end_5b} :catchall_5c
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_5b} :catch_4f

    goto :goto_34

    .line 166
    .end local v4           #resize:[B
    :catchall_5c
    move-exception v6

    move-object v2, v3

    .line 168
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :goto_5e
    if-eqz v2, :cond_63

    .line 170
    :try_start_60
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_65

    .line 172
    :cond_63
    const/4 v5, 0x0

    .line 166
    :goto_64
    throw v6

    .line 174
    :catch_65
    move-exception v0

    .line 176
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_64

    .line 174
    .local v0, e:Ljava/lang/Exception;
    :catch_6a
    move-exception v0

    .line 176
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    .line 174
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    .restart local v4       #resize:[B
    :catch_6f
    move-exception v0

    .line 176
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3a

    .line 166
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #out:Ljava/io/OutputStream;
    .end local v4           #resize:[B
    .restart local v2       #out:Ljava/io/OutputStream;
    :catchall_74
    move-exception v6

    goto :goto_5e
.end method

.method public static bitmapToByteArray(Landroid/graphics/Bitmap;Ljava/lang/Long;)[B
    .registers 5
    .parameter "bitmap"
    .parameter "FileSize"

    .prologue
    .line 191
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 192
    .local v0, stream:Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 194
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static getVideoThumbnailFromPath(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 16
    .parameter "context"
    .parameter "uri"
    .parameter "file_path"

    .prologue
    const/4 v1, 0x0

    const/4 v12, 0x1

    .line 30
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const-string v0, "_data"

    aput-object v0, v2, v12

    const/4 v0, 0x2

    const-string v1, "_display_name"

    aput-object v1, v2, v0

    .line 32
    .local v2, projection:[Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 34
    .local v11, selection:Ljava/lang/StringBuffer;
    const-string v0, "_data"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\' or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    const-string v0, "_display_name"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    const/4 v8, 0x0

    .line 40
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 44
    .local v7, bitmap:Landroid/graphics/Bitmap;
    :try_start_43
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 46
    if-eqz v8, :cond_8f

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-ne v0, v12, :cond_8f

    .line 48
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 49
    .local v6, _id:I
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 50
    .local v10, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x1

    iput v0, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    int-to-long v3, v6

    const/4 v1, 0x1

    invoke-static {v0, v3, v4, v1, v10}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 52
    const-string v0, "PictureUtil"

    const-string v1, "getVideoThumbnailFromPath()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "count - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_43 .. :try_end_8f} :catchall_a0
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_8f} :catch_96

    .line 61
    .end local v6           #_id:I
    .end local v10           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_8f
    if-eqz v8, :cond_95

    .line 63
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 64
    :goto_94
    const/4 v8, 0x0

    .line 68
    :cond_95
    return-object v7

    .line 55
    :catch_96
    move-exception v9

    .line 57
    .local v9, e:Ljava/lang/Exception;
    :try_start_97
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_a0

    .line 61
    if-eqz v8, :cond_95

    .line 63
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_94

    .line 61
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_a0
    move-exception v0

    if-eqz v8, :cond_a7

    .line 63
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 64
    const/4 v8, 0x0

    .line 61
    :cond_a7
    throw v0
.end method
