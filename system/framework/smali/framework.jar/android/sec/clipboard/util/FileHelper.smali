.class public Landroid/sec/clipboard/util/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# static fields
.field private static instance:Landroid/sec/clipboard/util/FileHelper;


# instance fields
.field private NullFile:Ljava/io/File;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    new-instance v0, Landroid/sec/clipboard/util/FileHelper;

    invoke-direct {v0}, Landroid/sec/clipboard/util/FileHelper;-><init>()V

    sput-object v0, Landroid/sec/clipboard/util/FileHelper;->instance:Landroid/sec/clipboard/util/FileHelper;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "FileHelper"

    iput-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->tag:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/io/File;

    const-string v1, "_TEMP_FILE"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->NullFile:Ljava/io/File;

    return-void
.end method

.method private getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "bitmapPath"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    const/4 v4, 0x1

    .line 230
    const/4 v3, 0x2

    .line 231
    .local v3, sampleSize:I
    const/4 v1, 0x0

    .line 233
    .local v1, bm:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 238
    .local v0, bitmapOption:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 241
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 247
    :try_start_c
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_17

    const-string v4, "FileHelper"

    const-string v5, "BitmapFactory.decodeFile(bitmapPath, bitmapOption"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_17
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_79

    move-result-object v1

    .line 257
    :cond_1b
    :goto_1b
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_45

    const-string v4, "FileHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bitmapOption.outWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bitmapOption.outHieght:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_45
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_6c

    const-string v4, "FileHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mGridItemWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mGridItemHeight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_6c
    :goto_6c
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v4, v3

    if-lt v4, p2, :cond_86

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v4, v3

    if-lt v4, p3, :cond_86

    .line 262
    add-int/lit8 v3, v3, 0x1

    goto :goto_6c

    .line 249
    :catch_79
    move-exception v2

    .line 251
    .local v2, e:Ljava/lang/Exception;
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_1b

    const-string v4, "FileHelper"

    const-string v5, "exception arised during bm = BitmapFactory.decodeFile(bitmapPath, bitmapOption);"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 264
    .end local v2           #e:Ljava/lang/Exception;
    :cond_86
    add-int/lit8 v3, v3, -0x1

    .line 268
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 272
    const/4 v4, 0x0

    :try_start_8b
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 273
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_90} :catch_92

    move-result-object v1

    .line 280
    :cond_91
    :goto_91
    return-object v1

    .line 274
    :catch_92
    move-exception v2

    .line 276
    .restart local v2       #e:Ljava/lang/Exception;
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_91

    const-string v4, "FileHelper"

    const-string v5, "exception arised during bm = BitmapFactory.decodeFile(((ClipboardDataBitmap) cbData).GetBitmapPath());"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91
.end method

.method public static getInstance()Landroid/sec/clipboard/util/FileHelper;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Landroid/sec/clipboard/util/FileHelper;->instance:Landroid/sec/clipboard/util/FileHelper;

    return-object v0
.end method


# virtual methods
.method public checkDir(Ljava/io/File;)Z
    .registers 3
    .parameter "file"

    .prologue
    .line 343
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public checkFile(Ljava/io/File;)Z
    .registers 3
    .parameter "file"

    .prologue
    .line 365
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method public createThumnailImage(Ljava/lang/String;)Z
    .registers 13
    .parameter "filePath"

    .prologue
    .line 181
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/sec/clipboard/data/ClipboardDefine;->THUMBNAIL_SUFFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 183
    .local v6, thumFullPath:Ljava/lang/String;
    const/4 v2, 0x0

    .line 185
    .local v2, bm:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 189
    .local v0, Result:Z
    const/16 v7, 0x99

    const/16 v8, 0x56

    invoke-direct {p0, p1, v7, v8}, Landroid/sec/clipboard/util/FileHelper;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 192
    if-nez v2, :cond_2c

    .line 193
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_2a

    const-string v7, "FileHelper"

    const-string v8, "createThumnailImage Bitmap is null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    move v1, v0

    .line 222
    .end local v0           #Result:Z
    .local v1, Result:I
    :goto_2b
    return v1

    .line 197
    .end local v1           #Result:I
    .restart local v0       #Result:Z
    :cond_2c
    const/4 v4, 0x0

    .line 200
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_2d
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_a9
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_6d

    .line 202
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    if-eqz v5, :cond_3c

    .line 203
    :try_start_34
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x32

    invoke-virtual {v2, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_d5
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3b} :catch_d8

    .line 204
    const/4 v0, 0x1

    .line 212
    :cond_3c
    if-eqz v5, :cond_41

    .line 213
    :try_start_3e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_47

    :cond_41
    move-object v4, v5

    .line 221
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :cond_42
    :goto_42
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move v1, v0

    .line 222
    .restart local v1       #Result:I
    goto :goto_2b

    .line 215
    .end local v1           #Result:I
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_47
    move-exception v3

    .line 216
    .local v3, e:Ljava/io/IOException;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_68

    const-string v7, "FileHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_68
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 219
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_42

    .line 207
    .end local v3           #e:Ljava/io/IOException;
    :catch_6d
    move-exception v3

    .line 208
    .local v3, e:Ljava/lang/Exception;
    :goto_6e
    :try_start_6e
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_7b

    const-string v7, "FileHelper"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_7b
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7e
    .catchall {:try_start_6e .. :try_end_7e} :catchall_a9

    .line 212
    if-eqz v4, :cond_42

    .line 213
    :try_start_80
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_42

    .line 215
    :catch_84
    move-exception v3

    .line 216
    .local v3, e:Ljava/io/IOException;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_a5

    const-string v7, "FileHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_a5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    .line 211
    .end local v3           #e:Ljava/io/IOException;
    :catchall_a9
    move-exception v7

    .line 212
    :goto_aa
    if-eqz v4, :cond_af

    .line 213
    :try_start_ac
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b0

    .line 218
    :cond_af
    :goto_af
    throw v7

    .line 215
    :catch_b0
    move-exception v3

    .line 216
    .restart local v3       #e:Ljava/io/IOException;
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_d1

    const-string v8, "FileHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "close : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_d1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_af

    .line 211
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catchall_d5
    move-exception v7

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_aa

    .line 207
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_d8
    move-exception v3

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_6e
.end method

.method public delete(Ljava/io/File;)V
    .registers 8
    .parameter "file"

    .prologue
    .line 377
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 378
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 389
    :cond_9
    :goto_9
    return-void

    .line 382
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 383
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 384
    .local v4, list:[Ljava/io/File;
    move-object v0, v4

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_17
    if-ge v2, v3, :cond_21

    aget-object v1, v0, v2

    .line 385
    .local v1, f:Ljava/io/File;
    invoke-virtual {p0, v1}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    .line 384
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 387
    .end local v1           #f:Ljava/io/File;
    :cond_21
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_9
.end method

.method public fileCopy(Ljava/io/File;Ljava/io/File;)Z
    .registers 19
    .parameter "src"
    .parameter "dest"

    .prologue
    .line 77
    const/4 v7, 0x0

    .line 78
    .local v7, Result:Z
    const/4 v10, 0x0

    .line 79
    .local v10, inputStream:Ljava/io/FileInputStream;
    const/4 v12, 0x0

    .line 82
    .local v12, outputStream:Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->createNewFile()Z

    .line 83
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1fd

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static {v2, v3, v14, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 84
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_18} :catch_55
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_18} :catch_a2

    .end local v10           #inputStream:Ljava/io/FileInputStream;
    .local v11, inputStream:Ljava/io/FileInputStream;
    move-object v10, v11

    .line 95
    .end local v11           #inputStream:Ljava/io/FileInputStream;
    .restart local v10       #inputStream:Ljava/io/FileInputStream;
    :goto_19
    :try_start_19
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_20} :catch_a8

    .end local v12           #outputStream:Ljava/io/FileOutputStream;
    .local v13, outputStream:Ljava/io/FileOutputStream;
    move-object v12, v13

    .line 102
    .end local v13           #outputStream:Ljava/io/FileOutputStream;
    .restart local v12       #outputStream:Ljava/io/FileOutputStream;
    :cond_21
    :goto_21
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 103
    .local v1, fcin:Ljava/nio/channels/FileChannel;
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 105
    .local v6, fcout:Ljava/nio/channels/FileChannel;
    :try_start_29
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    .line 106
    .local v4, lSize:J
    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 108
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 109
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 111
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 112
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_3e
    .catchall {:try_start_29 .. :try_end_3e} :catchall_1a3
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_3e} :catch_11b

    .line 113
    const/4 v7, 0x1

    .line 122
    if-eqz v1, :cond_44

    :try_start_41
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 123
    :cond_44
    if-eqz v6, :cond_49

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 124
    :cond_49
    if-eqz v10, :cond_4e

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 125
    :cond_4e
    if-eqz v12, :cond_53

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_53} :catch_f5

    .end local v4           #lSize:J
    :cond_53
    :goto_53
    move v8, v7

    .line 133
    .end local v1           #fcin:Ljava/nio/channels/FileChannel;
    .end local v6           #fcout:Ljava/nio/channels/FileChannel;
    .end local v7           #Result:Z
    .local v8, Result:I
    :goto_54
    return v8

    .line 86
    .end local v8           #Result:I
    .restart local v7       #Result:Z
    :catch_55
    move-exception v9

    .line 87
    .local v9, e:Ljava/io/FileNotFoundException;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_76

    const-string v2, "FileHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "InputStream~ FileNotFoundException Error : "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_76
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v2, :cond_a0

    const-string v2, "FileHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FileCopy~ Source file:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, "/ Destination file:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a0
    move v8, v7

    .line 89
    .restart local v8       #Result:I
    goto :goto_54

    .line 90
    .end local v8           #Result:I
    .end local v9           #e:Ljava/io/FileNotFoundException;
    :catch_a2
    move-exception v9

    .line 91
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_19

    .line 96
    .end local v9           #e:Ljava/io/IOException;
    :catch_a8
    move-exception v9

    .line 97
    .local v9, e:Ljava/io/FileNotFoundException;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_c9

    const-string v2, "FileHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "OutputStream~ FileNotFoundException Error : "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_c9
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v2, :cond_21

    const-string v2, "FileHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FileCopy~ Source file:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, "/ Destination file:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 126
    .end local v9           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #fcin:Ljava/nio/channels/FileChannel;
    .restart local v4       #lSize:J
    .restart local v6       #fcout:Ljava/nio/channels/FileChannel;
    :catch_f5
    move-exception v9

    .line 127
    .local v9, e:Ljava/io/IOException;
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_116

    const-string v2, "FileHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "close : "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_116
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_53

    .line 114
    .end local v4           #lSize:J
    .end local v9           #e:Ljava/io/IOException;
    :catch_11b
    move-exception v9

    .line 115
    .restart local v9       #e:Ljava/io/IOException;
    :try_start_11c
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_13c

    const-string v2, "FileHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FileCopy~ IOException Error : "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_13c
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v2, :cond_166

    const-string v2, "FileHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "FileCopy~ Source file:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, "/ Destination file:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_166
    .catchall {:try_start_11c .. :try_end_166} :catchall_1a3

    .line 117
    :cond_166
    const/4 v7, 0x0

    .line 122
    if-eqz v1, :cond_16c

    :try_start_169
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 123
    :cond_16c
    if-eqz v6, :cond_171

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 124
    :cond_171
    if-eqz v10, :cond_176

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 125
    :cond_176
    if-eqz v12, :cond_53

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_17b
    .catch Ljava/io/IOException; {:try_start_169 .. :try_end_17b} :catch_17d

    goto/16 :goto_53

    .line 126
    :catch_17d
    move-exception v9

    .line 127
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v2, :cond_19e

    const-string v2, "FileHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "close : "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_19e
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_53

    .line 121
    .end local v9           #e:Ljava/io/IOException;
    :catchall_1a3
    move-exception v2

    .line 122
    if-eqz v1, :cond_1a9

    :try_start_1a6
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 123
    :cond_1a9
    if-eqz v6, :cond_1ae

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 124
    :cond_1ae
    if-eqz v10, :cond_1b3

    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 125
    :cond_1b3
    if-eqz v12, :cond_1b8

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b8
    .catch Ljava/io/IOException; {:try_start_1a6 .. :try_end_1b8} :catch_1b9

    .line 129
    :cond_1b8
    :goto_1b8
    throw v2

    .line 126
    :catch_1b9
    move-exception v9

    .line 127
    .restart local v9       #e:Ljava/io/IOException;
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_1da

    const-string v3, "FileHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "close : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_1da
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b8
.end method

.method public getAbsoluteNullFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 398
    iget-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->NullFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getList(Ljava/io/File;)[Ljava/io/File;
    .registers 3
    .parameter "file"

    .prologue
    .line 370
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 372
    .local v0, list:[Ljava/io/File;
    return-object v0
.end method

.method public getNullFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->NullFile:Ljava/io/File;

    return-object v0
.end method

.method public getSDCardPath()Ljava/lang/String;
    .registers 4

    .prologue
    .line 327
    const-string v1, ""

    .line 328
    .local v1, path:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, ext:Ljava/lang/String;
    const-string/jumbo v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 330
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 334
    :goto_17
    return-object v1

    .line 332
    :cond_18
    const-string/jumbo v1, "unmounted"

    goto :goto_17
.end method

.method public loadObjectFile(Ljava/io/File;)Ljava/lang/Object;
    .registers 11
    .parameter "file"

    .prologue
    .line 289
    const/4 v5, 0x0

    .line 290
    .local v5, result:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 291
    .local v1, is:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 293
    .local v3, ois:Ljava/io/ObjectInputStream;
    :try_start_3
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_f

    const-string v6, "FileHelper"

    const-string/jumbo v7, "load object file"

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_f
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_ec
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_19} :catch_41
    .catch Ljava/io/StreamCorruptedException; {:try_start_3 .. :try_end_19} :catch_6b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_19} :catch_95
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_19} :catch_c0

    .line 295
    .end local v1           #is:Ljava/io/InputStream;
    .local v2, is:Ljava/io/InputStream;
    :try_start_19
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_108
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_1e} :catch_128
    .catch Ljava/io/StreamCorruptedException; {:try_start_19 .. :try_end_1e} :catch_11f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_19 .. :try_end_1e} :catch_116
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_10f

    .line 296
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .local v4, ois:Ljava/io/ObjectInputStream;
    :try_start_1e
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_10b
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_21} :catch_12c
    .catch Ljava/io/StreamCorruptedException; {:try_start_1e .. :try_end_21} :catch_123
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1e .. :try_end_21} :catch_11a
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_112

    move-result-object v5

    .line 311
    if-eqz v4, :cond_27

    :try_start_24
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 312
    :cond_27
    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2c} :catch_2f

    :cond_2c
    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .line 318
    .end local v2           #is:Ljava/io/InputStream;
    .end local v5           #result:Ljava/lang/Object;
    .restart local v1       #is:Ljava/io/InputStream;
    :cond_2e
    :goto_2e
    return-object v5

    .line 313
    .end local v1           #is:Ljava/io/InputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    .restart local v5       #result:Ljava/lang/Object;
    :catch_2f
    move-exception v0

    .line 314
    .local v0, e:Ljava/io/IOException;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_3b

    const-string v6, "FileHelper"

    const-string v7, "close IOException"

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_3b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .line 317
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    goto :goto_2e

    .line 297
    .end local v0           #e:Ljava/io/IOException;
    :catch_41
    move-exception v0

    .line 298
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_42
    :try_start_42
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_4d

    const-string v6, "FileHelper"

    const-string v7, "FileNotFoundException"

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_4d
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_50
    .catchall {:try_start_42 .. :try_end_50} :catchall_ec

    .line 311
    if-eqz v3, :cond_55

    :try_start_52
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 312
    :cond_55
    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5a} :catch_5b

    goto :goto_2e

    .line 313
    :catch_5b
    move-exception v0

    .line 314
    .local v0, e:Ljava/io/IOException;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_67

    const-string v6, "FileHelper"

    const-string v7, "close IOException"

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_67
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2e

    .line 300
    .end local v0           #e:Ljava/io/IOException;
    :catch_6b
    move-exception v0

    .line 301
    .local v0, e:Ljava/io/StreamCorruptedException;
    :goto_6c
    :try_start_6c
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_77

    const-string v6, "FileHelper"

    const-string v7, "StreamCorruptedException"

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_77
    invoke-virtual {v0}, Ljava/io/StreamCorruptedException;->printStackTrace()V
    :try_end_7a
    .catchall {:try_start_6c .. :try_end_7a} :catchall_ec

    .line 311
    if-eqz v3, :cond_7f

    :try_start_7c
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 312
    :cond_7f
    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_84} :catch_85

    goto :goto_2e

    .line 313
    :catch_85
    move-exception v0

    .line 314
    .local v0, e:Ljava/io/IOException;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_91

    const-string v6, "FileHelper"

    const-string v7, "close IOException"

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_91
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2e

    .line 303
    .end local v0           #e:Ljava/io/IOException;
    :catch_95
    move-exception v0

    .line 304
    .local v0, e:Ljava/lang/ClassNotFoundException;
    :goto_96
    :try_start_96
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_a1

    const-string v6, "FileHelper"

    const-string v7, "ClassNotFoundException"

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_a1
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_a4
    .catchall {:try_start_96 .. :try_end_a4} :catchall_ec

    .line 311
    if-eqz v3, :cond_a9

    :try_start_a6
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 312
    :cond_a9
    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_ae} :catch_af

    goto :goto_2e

    .line 313
    :catch_af
    move-exception v0

    .line 314
    .local v0, e:Ljava/io/IOException;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_bb

    const-string v6, "FileHelper"

    const-string v7, "close IOException"

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_bb
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2e

    .line 306
    .end local v0           #e:Ljava/io/IOException;
    :catch_c0
    move-exception v0

    .line 307
    .restart local v0       #e:Ljava/io/IOException;
    :goto_c1
    :try_start_c1
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_cc

    const-string v6, "FileHelper"

    const-string v7, "ClassNotFoundException"

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_cc
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_cf
    .catchall {:try_start_c1 .. :try_end_cf} :catchall_ec

    .line 311
    if-eqz v3, :cond_d4

    :try_start_d1
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 312
    :cond_d4
    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d9} :catch_db

    goto/16 :goto_2e

    .line 313
    :catch_db
    move-exception v0

    .line 314
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_e7

    const-string v6, "FileHelper"

    const-string v7, "close IOException"

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_e7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2e

    .line 310
    .end local v0           #e:Ljava/io/IOException;
    :catchall_ec
    move-exception v6

    .line 311
    :goto_ed
    if-eqz v3, :cond_f2

    :try_start_ef
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 312
    :cond_f2
    if-eqz v1, :cond_f7

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f7} :catch_f8

    .line 316
    :cond_f7
    :goto_f7
    throw v6

    .line 313
    :catch_f8
    move-exception v0

    .line 314
    .restart local v0       #e:Ljava/io/IOException;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_104

    const-string v7, "FileHelper"

    const-string v8, "close IOException"

    invoke-static {v7, v8}, Landroid/sec/clipboard/util/ClipLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_104
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f7

    .line 310
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :catchall_108
    move-exception v6

    move-object v1, v2

    .end local v2           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    goto :goto_ed

    .end local v1           #is:Ljava/io/InputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catchall_10b
    move-exception v6

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    goto :goto_ed

    .line 306
    .end local v1           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :catch_10f
    move-exception v0

    move-object v1, v2

    .end local v2           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    goto :goto_c1

    .end local v1           #is:Ljava/io/InputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catch_112
    move-exception v0

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    goto :goto_c1

    .line 303
    .end local v1           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :catch_116
    move-exception v0

    move-object v1, v2

    .end local v2           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    goto/16 :goto_96

    .end local v1           #is:Ljava/io/InputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catch_11a
    move-exception v0

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    goto/16 :goto_96

    .line 300
    .end local v1           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :catch_11f
    move-exception v0

    move-object v1, v2

    .end local v2           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    goto/16 :goto_6c

    .end local v1           #is:Ljava/io/InputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catch_123
    move-exception v0

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    goto/16 :goto_6c

    .line 297
    .end local v1           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :catch_128
    move-exception v0

    move-object v1, v2

    .end local v2           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    goto/16 :goto_42

    .end local v1           #is:Ljava/io/InputStream;
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v4       #ois:Ljava/io/ObjectInputStream;
    :catch_12c
    move-exception v0

    move-object v3, v4

    .end local v4           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    goto/16 :goto_42
.end method

.method public makeDir(Ljava/io/File;)V
    .registers 5
    .parameter "file"

    .prologue
    const/4 v2, -0x1

    .line 352
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13

    .line 353
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 354
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 356
    :cond_13
    return-void
.end method

.method public saveObjectFile(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 13
    .parameter "file"
    .parameter "obj"

    .prologue
    .line 146
    if-nez p2, :cond_10

    .line 147
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_e

    const-string v6, "FileHelper"

    const-string/jumbo v7, "obj == null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_e
    const/4 v5, 0x0

    .line 174
    :cond_f
    :goto_f
    return v5

    .line 152
    :cond_10
    const/4 v5, 0x1

    .line 153
    .local v5, result:Z
    const/4 v1, 0x0

    .line 154
    .local v1, fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 157
    .local v3, oos:Ljava/io/ObjectOutputStream;
    :try_start_13
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_97
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_54

    .line 158
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_18
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_c8
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_cf

    .line 159
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .local v4, oos:Ljava/io/ObjectOutputStream;
    :try_start_1d
    invoke-virtual {v4, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_cb
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_d2

    .line 166
    if-eqz v4, :cond_25

    :try_start_22
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    .line 167
    :cond_25
    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2a} :catch_2d

    :cond_2a
    move-object v3, v4

    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .line 171
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_f

    .line 168
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :catch_2d
    move-exception v0

    .line 169
    .local v0, e:Ljava/io/IOException;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_4e

    const-string v6, "FileHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "close : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_4e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .line 172
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_f

    .line 160
    .end local v0           #e:Ljava/io/IOException;
    :catch_54
    move-exception v0

    .line 161
    .restart local v0       #e:Ljava/io/IOException;
    :goto_55
    :try_start_55
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_62

    const-string v6, "FileHelper"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_62
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_65
    .catchall {:try_start_55 .. :try_end_65} :catchall_97

    .line 163
    const/4 v5, 0x0

    .line 166
    if-eqz v3, :cond_6b

    :try_start_68
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 167
    :cond_6b
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_70} :catch_71

    goto :goto_f

    .line 168
    :catch_71
    move-exception v0

    .line 169
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_92

    const-string v6, "FileHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "close : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_92
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_f

    .line 165
    .end local v0           #e:Ljava/io/IOException;
    :catchall_97
    move-exception v6

    .line 166
    :goto_98
    if-eqz v3, :cond_9d

    :try_start_9a
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 167
    :cond_9d
    if-eqz v1, :cond_a2

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_a2} :catch_a3

    .line 171
    :cond_a2
    :goto_a2
    throw v6

    .line 168
    :catch_a3
    move-exception v0

    .line 169
    .restart local v0       #e:Ljava/io/IOException;
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v7, :cond_c4

    const-string v7, "FileHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_c4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a2

    .line 165
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_c8
    move-exception v6

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_98

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :catchall_cb
    move-exception v6

    move-object v3, v4

    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_98

    .line 160
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_cf
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_55

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :catch_d2
    move-exception v0

    move-object v3, v4

    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v3       #oos:Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_55
.end method
