.class public Lcom/arcsoft/widget/JUtils;
.super Ljava/lang/Object;
.source "JUtils.java"


# static fields
.field public static final MRESULT_SDCARD_CHECK_EXCEPTION:I = -0x2

.field public static final MRESULT_SDCARD_NOT_EXIST:I = -0x1

.field public static final TAG:Ljava/lang/String; = "QuickView"

.field public static final mEnableDebugLog:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static IsAutoRotateLocked()Z
    .registers 2

    .prologue
    .line 206
    const/4 v1, 0x0

    .line 207
    .local v1, mWindowManager:Landroid/view/IWindowManager;
    const/4 v0, 0x0

    .line 216
    .local v0, locked:Z
    return v0
.end method

.method public static MediaScannerStatusQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v7, 0x0

    .line 173
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 174
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_9

    move-object v1, v7

    .line 179
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_8
    return-object v1

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_9
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 177
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_11
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v1

    goto :goto_8

    .line 178
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_13
    move-exception v6

    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    move-object v1, v7

    .line 179
    goto :goto_8
.end method

.method private static checkFsWritable()Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/DCIM/Camera"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, directoryName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2e

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_2e

    .line 91
    :cond_2d
    :goto_2d
    return v4

    .line 78
    :cond_2e
    new-instance v3, Ljava/io/File;

    const-string v5, ".probe"

    invoke-direct {v3, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .local v3, file:Ljava/io/File;
    :try_start_35
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 82
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 84
    :cond_3e
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 87
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_47} :catch_49

    .line 88
    const/4 v4, 0x1

    goto :goto_2d

    .line 90
    :catch_49
    move-exception v2

    .line 91
    .local v2, ex:Ljava/io/IOException;
    goto :goto_2d
.end method

.method public static debugLog(Ljava/lang/String;)V
    .registers 1
    .parameter "msg"

    .prologue
    .line 222
    return-void
.end method

.method public static getSDCardAvailableSize()J
    .registers 6

    .prologue
    .line 99
    const/4 v4, 0x1

    :try_start_1
    invoke-static {v4}, Lcom/arcsoft/widget/JUtils;->hasStorage(Z)Z

    move-result v4

    if-nez v4, :cond_a

    .line 100
    const-wide/16 v4, -0x1

    .line 113
    .local v3, storageDirectory:Ljava/lang/String;
    :goto_9
    return-wide v4

    .line 103
    .end local v3           #storageDirectory:Ljava/lang/String;
    :cond_a
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 104
    .restart local v3       #storageDirectory:Ljava/lang/String;
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 105
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_29

    move-result v5

    int-to-float v5, v5

    mul-float v1, v4, v5

    .line 106
    .local v1, freespace:F
    const/high16 v4, 0x4480

    div-float v4, v1, v4

    float-to-long v4, v4

    goto :goto_9

    .line 109
    .end local v1           #freespace:F
    .end local v2           #stat:Landroid/os/StatFs;
    :catch_29
    move-exception v0

    .line 113
    .local v0, ex:Ljava/lang/Exception;
    const-wide/16 v4, -0x2

    goto :goto_9
.end method

.method public static getThumbnail(Landroid/content/ContentResolver;J)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "cr"
    .parameter "origId"

    .prologue
    .line 184
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 185
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 186
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 188
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1, v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static hasStorage(Z)Z
    .registers 4
    .parameter "requireWriteAccess"

    .prologue
    const/4 v1, 0x1

    .line 52
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, state:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 55
    if-eqz p0, :cond_13

    .line 56
    invoke-static {}, Lcom/arcsoft/widget/JUtils;->checkFsWritable()Z

    move-result v1

    .line 64
    :cond_13
    :goto_13
    return v1

    .line 61
    :cond_14
    if-nez p0, :cond_1e

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 64
    :cond_1e
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public static isMediaScannerScanning(Landroid/content/Context;)Z
    .registers 12
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 155
    const/4 v7, 0x0

    .line 156
    .local v7, result:Z
    if-nez p0, :cond_8

    move v8, v7

    .line 167
    .end local v7           #result:Z
    .local v8, result:I
    :goto_7
    return v8

    .line 158
    .end local v8           #result:I
    .restart local v7       #result:Z
    :cond_8
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "volume"

    aput-object v0, v2, v9

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/arcsoft/widget/JUtils;->MediaScannerStatusQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 160
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_31

    .line 161
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_2e

    .line 162
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 163
    const-string v0, "external"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 165
    :cond_2e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_31
    move v8, v7

    .line 167
    .restart local v8       #result:I
    goto :goto_7
.end method

.method public static isVideoUri(Landroid/net/Uri;)Z
    .registers 4
    .parameter "uri"

    .prologue
    const/4 v1, 0x1

    .line 139
    if-eqz p0, :cond_20

    .line 141
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, uriString:Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 151
    .end local v0           #uriString:Ljava/lang/String;
    :cond_13
    :goto_13
    return v1

    .line 146
    .restart local v0       #uriString:Ljava/lang/String;
    :cond_14
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 151
    .end local v0           #uriString:Ljava/lang/String;
    :cond_20
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public static makeFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "path"
    .parameter "prefix"
    .parameter "suffix"

    .prologue
    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 120
    .local v1, dateTaken:J
    const-string v6, "yyyyMMddkkmmss"

    invoke-static {v6, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, date:Ljava/lang/String;
    const/4 v5, 0x0

    .line 122
    .local v5, index:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, filename:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v3, file:Ljava/io/File;
    :goto_2d
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 125
    add-int/lit8 v5, v5, 0x1

    .line 126
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 127
    new-instance v3, Ljava/io/File;

    .end local v3           #file:Ljava/io/File;
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v3       #file:Ljava/io/File;
    goto :goto_2d

    .line 129
    :cond_5e
    return-object v4
.end method

.method public static rotateBmp(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "context"
    .parameter "srcId"
    .parameter "angle"

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 196
    .local v7, res:Landroid/content/res/Resources;
    invoke-static {v7, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 197
    .local v0, img:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 198
    .local v5, matrix:Landroid/graphics/Matrix;
    int-to-float v2, p2

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 199
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 200
    .local v3, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 201
    .local v4, height:I
    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addDirectory(Ljava/lang/String;)V
    .registers 4
    .parameter "directory"

    .prologue
    .line 133
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 135
    :cond_e
    return-void
.end method
