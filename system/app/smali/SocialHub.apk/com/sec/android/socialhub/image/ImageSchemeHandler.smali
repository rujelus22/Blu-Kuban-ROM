.class public abstract Lcom/sec/android/socialhub/image/ImageSchemeHandler;
.super Ljava/lang/Object;
.source "ImageSchemeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSize;,
        Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSchemeHttp;,
        Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSchemeContent;,
        Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSchemeFile;
    }
.end annotation


# static fields
.field public static final ATTACHMENT_META_COLUMNS:[Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected strScheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/socialhub/image/ImageSchemeHandler;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "context"
    .parameter "scheme"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/sec/android/socialhub/image/ImageSchemeHandler;->mContext:Landroid/content/Context;

    .line 49
    invoke-direct {p0, p2}, Lcom/sec/android/socialhub/image/ImageSchemeHandler;->initialize(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static getImageSize(Ljava/lang/String;)Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSize;
    .registers 8
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 60
    new-instance v2, Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSize;

    invoke-direct {v2}, Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSize;-><init>()V

    .line 62
    .local v2, size:Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSize;
    iput v3, v2, Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSize;->width:I

    .line 63
    iput v3, v2, Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSize;->height:I

    .line 67
    :try_start_a
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 73
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 74
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 76
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, v2, Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSize;->height:I

    .line 77
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, v2, Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSize;->width:I

    .line 79
    const-string v3, "ImageScheme"

    const-string v4, "getImageSize()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "width - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSize;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", height - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSize;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_45} :catch_46

    .line 86
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_45
    return-object v2

    .line 81
    :catch_46
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_45
.end method

.method private initialize(Ljava/lang/String;)V
    .registers 2
    .parameter "scheme"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sec/android/socialhub/image/ImageSchemeHandler;->strScheme:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public abstract getPath(Landroid/net/Uri;)Ljava/lang/String;
.end method

.method public loadImageInfo(Lcom/sec/android/socialhub/image/RemoteImageInfo;Ljava/io/File;Ljava/lang/Long;)V
    .registers 27
    .parameter "info"
    .parameter "file"
    .parameter "filesize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/socialhub/exception/SocialHubNotSupportException;
        }
    .end annotation

    .prologue
    .line 96
    const-wide/16 v13, 0x0

    .line 97
    .local v13, size:J
    const/4 v12, 0x0

    .line 98
    .local v12, name:Ljava/lang/String;
    const-wide/16 v5, 0x0

    .line 100
    .local v5, count:J
    const/4 v10, 0x0

    .line 102
    .local v10, inStream:Ljava/io/InputStream;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/socialhub/image/RemoteImageInfo;->mOriginalUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/socialhub/image/ImageSchemeHandler;->resizeImage(Landroid/net/Uri;Ljava/io/File;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v17

    .line 104
    .local v17, uri:Landroid/net/Uri;
    if-nez v17, :cond_2b

    .line 106
    const-string v18, "ImageScheme"

    const-string v19, "loadImageInfo()"

    const-string v20, "uri is null!!!"

    invoke-static/range {v18 .. v20}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v18, Lcom/sec/android/socialhub/exception/SocialHubNotSupportException;

    const-string v19, "uri is null!! maybe big size image"

    invoke-direct/range {v18 .. v19}, Lcom/sec/android/socialhub/exception/SocialHubNotSupportException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 112
    :cond_2b
    :try_start_2b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    .line 114
    .local v15, start:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/socialhub/image/ImageSchemeHandler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    .line 116
    const/4 v11, 0x0

    .line 117
    .local v11, n:I
    const/16 v18, 0xff

    move/from16 v0, v18

    new-array v4, v0, [B

    .line 118
    .local v4, buffer:[B
    :goto_48
    invoke-virtual {v10, v4}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v11, v0, :cond_58

    .line 120
    int-to-long v0, v11

    move-wide/from16 v18, v0

    add-long v5, v5, v18

    goto :goto_48

    .line 122
    :cond_58
    move-wide v13, v5

    .line 124
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 126
    .local v8, end:J
    const-string v18, "ImageScheme"

    const-string v19, "loadRemoteImage()"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Total Elpased time : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sub-long v21, v8, v15

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", count = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_2b .. :try_end_85} :catchall_bd
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_85} :catch_af
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_85} :catch_c2

    .line 140
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 143
    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/sec/android/socialhub/image/RemoteImageInfo;->mFileName:Ljava/lang/String;

    .line 144
    move-object/from16 v0, p1

    iput-wide v13, v0, Lcom/sec/android/socialhub/image/RemoteImageInfo;->mSize:J

    .line 145
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/sec/android/socialhub/image/RemoteImageInfo;->mContentUri:Landroid/net/Uri;

    .line 148
    :try_start_96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/socialhub/image/ImageSchemeHandler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/sec/android/socialhub/image/RemoteImageInfo;->previewImage:Landroid/graphics/Bitmap;
    :try_end_ae
    .catch Ljava/io/FileNotFoundException; {:try_start_96 .. :try_end_ae} :catch_d0
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_ae} :catch_d5

    .line 159
    :goto_ae
    return-void

    .line 128
    .end local v4           #buffer:[B
    .end local v8           #end:J
    .end local v11           #n:I
    .end local v15           #start:J
    :catch_af
    move-exception v7

    .line 130
    .local v7, e:Ljava/io/FileNotFoundException;
    :try_start_b0
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 131
    new-instance v18, Lcom/sec/android/socialhub/exception/SocialHubNotSupportException;

    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/sec/android/socialhub/exception/SocialHubNotSupportException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_bd
    .catchall {:try_start_b0 .. :try_end_bd} :catchall_bd

    .line 140
    .end local v7           #e:Ljava/io/FileNotFoundException;
    :catchall_bd
    move-exception v18

    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v18

    .line 133
    :catch_c2
    move-exception v7

    .line 135
    .local v7, e:Ljava/io/IOException;
    :try_start_c3
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 136
    new-instance v18, Lcom/sec/android/socialhub/exception/SocialHubNotSupportException;

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/sec/android/socialhub/exception/SocialHubNotSupportException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_d0
    .catchall {:try_start_c3 .. :try_end_d0} :catchall_bd

    .line 150
    .end local v7           #e:Ljava/io/IOException;
    .restart local v4       #buffer:[B
    .restart local v8       #end:J
    .restart local v11       #n:I
    .restart local v15       #start:J
    :catch_d0
    move-exception v7

    .line 153
    .local v7, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_ae

    .line 155
    .end local v7           #e:Ljava/io/FileNotFoundException;
    :catch_d5
    move-exception v7

    .line 157
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ae
.end method

.method public resizeImage(Landroid/net/Uri;Ljava/io/File;Ljava/lang/Long;)Landroid/net/Uri;
    .registers 18
    .parameter "uri"
    .parameter "file"
    .parameter "filesize"

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/image/ImageSchemeHandler;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, file_path:Ljava/lang/String;
    if-nez v2, :cond_11

    .line 176
    const-string v8, "ImageScheme"

    const-string v9, "resizeImage()"

    const-string v10, "file_path is null."

    invoke-static {v8, v9, v10}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const/4 v4, 0x0

    .line 222
    :cond_10
    :goto_10
    return-object v4

    .line 180
    :cond_11
    invoke-static {v2}, Lcom/sec/android/socialhub/util/PictureUtil;->GetExifOrientation(Ljava/lang/String;)I

    move-result v0

    .line 182
    .local v0, degree:I
    const/4 v7, 0x0

    .line 183
    .local v7, temp:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 185
    .local v4, retUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/sec/android/socialhub/image/ImageSchemeHandler;->getImageSize(Ljava/lang/String;)Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSize;

    move-result-object v6

    .line 190
    .local v6, size:Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSize;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 192
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    .line 194
    .local v5, sampleSize:I
    :goto_21
    iget v8, v6, Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSize;->width:I

    div-int/2addr v8, v5

    const/16 v9, 0x5a0

    if-gt v8, v9, :cond_2f

    iget v8, v6, Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSize;->height:I

    div-int/2addr v8, v5

    const/16 v9, 0x5a0

    if-le v8, v9, :cond_32

    .line 196
    :cond_2f
    mul-int/lit8 v5, v5, 0x2

    goto :goto_21

    .line 199
    :cond_32
    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 201
    const-string v8, "ImageScheme"

    const-string v9, "resizeImage()"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "decided sampling size - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :try_start_50
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_75

    move-result-object v7

    .line 215
    :goto_54
    if-eqz v7, :cond_10

    .line 217
    iget-object v8, p0, Lcom/sec/android/socialhub/image/ImageSchemeHandler;->mContext:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/sec/android/socialhub/util/PictureUtil;->GetRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x2d0

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v8, v9, v10, v11, v12}, Lcom/sec/android/socialhub/util/PictureUtil;->SaveBitmapToFileCache(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;ILjava/lang/Long;)V

    .line 218
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 219
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_10

    .line 207
    :catch_75
    move-exception v1

    .line 209
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_54
.end method
