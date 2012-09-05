.class Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;
.super Ljava/lang/Object;
.source "AlbumArtUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/utils/AlbumArtUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExternalAlbumBitmapCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache$ExtractableByteArrayOutputStream;
    }
.end annotation


# instance fields
.field private mExternalAlbumData:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/graphics/Bitmap;",
            "Ljava/io/ByteArrayInputStream;",
            ">;"
        }
    .end annotation
.end field

.field private mExternalAlbumHeight:I

.field private mExternalAlbumOptions:Landroid/graphics/BitmapFactory$Options;

.field private mExternalAlbumUrl:Ljava/lang/String;

.field private mExternalAlbumWidth:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;->mExternalAlbumData:Ljava/util/WeakHashMap;

    .line 218
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;->mExternalAlbumOptions:Landroid/graphics/BitmapFactory$Options;

    .line 220
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/utils/AlbumArtUtils$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized resolveArtworkFromUrl(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .registers 25
    .parameter "albumArtUrl"
    .parameter "w"
    .parameter "h"
    .parameter "mayScaleUp"

    .prologue
    .line 239
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/android/music/utils/AlbumArtUtils;->access$100()Z

    move-result v16

    if-eqz v16, :cond_23

    .line 240
    const-string v16, "AlbumArtUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "resolveArtworkFromUrl: albumArtUrl="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_e2

    .line 243
    :cond_23
    if-nez p1, :cond_28

    .line 244
    const/4 v6, 0x0

    .line 321
    :cond_26
    :goto_26
    monitor-exit p0

    return-object v6

    .line 247
    :cond_28
    const/4 v10, 0x0

    .line 248
    .local v10, dataStream:Ljava/io/ByteArrayInputStream;
    :try_start_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;->mExternalAlbumUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_bf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;->mExternalAlbumUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_bf

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;->mExternalAlbumData:Ljava/util/WeakHashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 250
    .local v15, values:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/io/ByteArrayInputStream;>;"
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5b

    .line 251
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .end local v10           #dataStream:Ljava/io/ByteArrayInputStream;
    check-cast v10, Ljava/io/ByteArrayInputStream;
    :try_end_5b
    .catchall {:try_start_29 .. :try_end_5b} :catchall_e2

    .line 260
    .end local v15           #values:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/io/ByteArrayInputStream;>;"
    .restart local v10       #dataStream:Ljava/io/ByteArrayInputStream;
    :cond_5b
    :goto_5b
    if-nez v10, :cond_ba

    .line 262
    const/4 v12, 0x0

    .line 263
    .local v12, is:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 265
    .local v4, bis:Ljava/io/BufferedInputStream;
    const/16 v3, 0x2800

    .line 266
    .local v3, IO_BLOCK_SIZE:I
    :try_start_61
    new-instance v16, Ljava/net/URL;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    .line 267
    .local v9, conn:Ljava/net/URLConnection;
    invoke-virtual {v9}, Ljava/net/URLConnection;->connect()V

    .line 268
    invoke-virtual {v9}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    .line 269
    new-instance v5, Ljava/io/BufferedInputStream;

    const/16 v16, 0x2800

    move/from16 v0, v16

    invoke-direct {v5, v12, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_7e
    .catchall {:try_start_61 .. :try_end_7e} :catchall_f0
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_7e} :catch_1d6

    .line 270
    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .local v5, bis:Ljava/io/BufferedInputStream;
    :try_start_7e
    invoke-virtual {v9}, Ljava/net/URLConnection;->getContentLength()I

    move-result v13

    .line 271
    .local v13, length:I
    new-instance v14, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache$ExtractableByteArrayOutputStream;

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v13, v0, :cond_8c

    const/16 v13, 0x2800

    .end local v13           #length:I
    :cond_8c
    invoke-direct {v14, v13}, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache$ExtractableByteArrayOutputStream;-><init>(I)V

    .line 275
    .local v14, outputStream:Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache$ExtractableByteArrayOutputStream;
    const/16 v16, 0x2800

    move/from16 v0, v16

    new-array v7, v0, [B

    .line 278
    .local v7, buffer:[B
    :goto_95
    invoke-virtual {v12, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, bytesRead:I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v8, v0, :cond_e5

    .line 280
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v7, v0, v8}, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache$ExtractableByteArrayOutputStream;->write([BII)V
    :try_end_a6
    .catchall {:try_start_7e .. :try_end_a6} :catchall_1d2
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_a6} :catch_a7

    goto :goto_95

    .line 284
    .end local v7           #buffer:[B
    .end local v8           #bytesRead:I
    .end local v14           #outputStream:Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache$ExtractableByteArrayOutputStream;
    :catch_a7
    move-exception v11

    move-object v4, v5

    .line 285
    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .end local v9           #conn:Ljava/net/URLConnection;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    .local v11, e:Ljava/io/IOException;
    :goto_a9
    :try_start_a9
    const-string v16, "AlbumArtUtils"

    const-string v17, "Exception: "

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b4
    .catchall {:try_start_a9 .. :try_end_b4} :catchall_f0

    .line 287
    :try_start_b4
    invoke-static {v4}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 288
    invoke-static {v12}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 292
    .end local v3           #IO_BLOCK_SIZE:I
    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .end local v11           #e:Ljava/io/IOException;
    .end local v12           #is:Ljava/io/InputStream;
    :cond_ba
    :goto_ba
    if-nez v10, :cond_f8

    .line 293
    const/4 v6, 0x0

    goto/16 :goto_26

    .line 254
    :cond_bf
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;->mExternalAlbumUrl:Ljava/lang/String;

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;->mExternalAlbumData:Ljava/util/WeakHashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/WeakHashMap;->clear()V

    .line 256
    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;->mExternalAlbumWidth:I

    .line 257
    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;->mExternalAlbumHeight:I
    :try_end_e0
    .catchall {:try_start_b4 .. :try_end_e0} :catchall_e2

    goto/16 :goto_5b

    .line 239
    .end local v10           #dataStream:Ljava/io/ByteArrayInputStream;
    :catchall_e2
    move-exception v16

    monitor-exit p0

    throw v16

    .line 283
    .restart local v3       #IO_BLOCK_SIZE:I
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #buffer:[B
    .restart local v8       #bytesRead:I
    .restart local v9       #conn:Ljava/net/URLConnection;
    .restart local v10       #dataStream:Ljava/io/ByteArrayInputStream;
    .restart local v12       #is:Ljava/io/InputStream;
    .restart local v14       #outputStream:Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache$ExtractableByteArrayOutputStream;
    :cond_e5
    :try_start_e5
    invoke-virtual {v14}, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache$ExtractableByteArrayOutputStream;->toInputStream()Ljava/io/ByteArrayInputStream;
    :try_end_e8
    .catchall {:try_start_e5 .. :try_end_e8} :catchall_1d2
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_e8} :catch_a7

    move-result-object v10

    .line 287
    :try_start_e9
    invoke-static {v5}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 288
    invoke-static {v12}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_ba

    .line 287
    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .end local v7           #buffer:[B
    .end local v8           #bytesRead:I
    .end local v9           #conn:Ljava/net/URLConnection;
    .end local v14           #outputStream:Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache$ExtractableByteArrayOutputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    :catchall_f0
    move-exception v16

    :goto_f1
    invoke-static {v4}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 288
    invoke-static {v12}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    throw v16

    .line 296
    .end local v3           #IO_BLOCK_SIZE:I
    .end local v4           #bis:Ljava/io/BufferedInputStream;
    .end local v12           #is:Ljava/io/InputStream;
    :cond_f8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;->mExternalAlbumWidth:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_158

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;->mExternalAlbumOptions:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 298
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;->mExternalAlbumOptions:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v10, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;->mExternalAlbumOptions:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 300
    invoke-virtual {v10}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;->mExternalAlbumOptions:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;->mExternalAlbumWidth:I

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;->mExternalAlbumOptions:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;->mExternalAlbumHeight:I

    .line 304
    :cond_158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;->mExternalAlbumOptions:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;->mExternalAlbumWidth:I

    move/from16 v18, v0

    div-int v18, v18, p2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;->mExternalAlbumHeight:I

    move/from16 v19, v0

    div-int v19, v19, p3

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 306
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;->mExternalAlbumOptions:Landroid/graphics/BitmapFactory$Options;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v10, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 307
    .local v6, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 309
    invoke-static {}, Lcom/google/android/music/utils/AlbumArtUtils;->access$100()Z

    move-result v16

    if-eqz v16, :cond_1b1

    .line 310
    const-string v16, "AlbumArtUtils"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "resolveArtworkFromUrl: Pulled bitmap: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_1b1
    if-eqz v6, :cond_1bd

    .line 314
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    #calls: Lcom/google/android/music/utils/AlbumArtUtils;->resizeHelper(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    invoke-static {v6, v0, v1, v2}, Lcom/google/android/music/utils/AlbumArtUtils;->access$200(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 317
    :cond_1bd
    if-eqz v6, :cond_26

    .line 318
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;->mExternalAlbumUrl:Ljava/lang/String;

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/utils/AlbumArtUtils$ExternalAlbumBitmapCache;->mExternalAlbumData:Ljava/util/WeakHashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v10}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d0
    .catchall {:try_start_e9 .. :try_end_1d0} :catchall_e2

    goto/16 :goto_26

    .line 287
    .end local v6           #bm:Landroid/graphics/Bitmap;
    .restart local v3       #IO_BLOCK_SIZE:I
    .restart local v5       #bis:Ljava/io/BufferedInputStream;
    .restart local v9       #conn:Ljava/net/URLConnection;
    .restart local v12       #is:Ljava/io/InputStream;
    :catchall_1d2
    move-exception v16

    move-object v4, v5

    .end local v5           #bis:Ljava/io/BufferedInputStream;
    .restart local v4       #bis:Ljava/io/BufferedInputStream;
    goto/16 :goto_f1

    .line 284
    .end local v9           #conn:Ljava/net/URLConnection;
    :catch_1d6
    move-exception v11

    goto/16 :goto_a9
.end method
