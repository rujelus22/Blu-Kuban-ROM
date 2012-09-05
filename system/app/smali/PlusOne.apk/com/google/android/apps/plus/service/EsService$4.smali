.class final Lcom/google/android/apps/plus/service/EsService$4;
.super Ljava/lang/Object;
.source "EsService.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/PhotoCache$PhotoLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/EsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/plus/service/PhotoCache$PhotoLoader",
        "<",
        "Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadImageBytesFromStorage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;III)[B
    .registers 36
    .parameter "context"
    .parameter "account"
    .parameter "key"
    .parameter "width"
    .parameter "height"
    .parameter "cropType"

    .prologue
    .line 399
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;->getMediaRef()Lcom/google/android/apps/plus/api/MediaRef;

    move-result-object v19

    .line 400
    .local v19, ref:Lcom/google/android/apps/plus/api/MediaRef;
    if-nez v19, :cond_8

    .line 401
    const/4 v10, 0x0

    .line 461
    :goto_7
    return-object v10

    .line 404
    :cond_8
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/plus/api/MediaRef;->getUrl()Ljava/lang/String;

    move-result-object v20

    .line 405
    .local v20, remoteUrl:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/plus/api/MediaRef;->getPhotoId()J

    move-result-wide v15

    .line 406
    .local v15, photoId:J
    invoke-static/range {p1 .. p1}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/picasasync/PicasaFacade;->getPhotosUri()Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    .line 408
    .local v17, photoUri:Landroid/net/Uri;
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v23

    .line 410
    .local v23, uriBuilder:Landroid/net/Uri$Builder;
    const-string v24, "content_url"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 412
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 413
    .local v14, maxDimension:I
    const/16 v24, 0x12c

    move/from16 v0, v24

    if-le v14, v0, :cond_113

    const-string v11, "screennail"

    .line 416
    .local v11, imageType:Ljava/lang/String;
    :goto_3a
    const-string v24, "type"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 418
    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v18

    .line 420
    .local v18, queryUri:Landroid/net/Uri;
    const/16 v24, 0x12c

    move/from16 v0, v24

    if-le v14, v0, :cond_117

    const v12, 0x19000

    .line 421
    .local v12, initialStreamSize:I
    :goto_50
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v12}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 422
    .local v4, baos:Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 424
    .local v21, startTime:J
    const/16 v8, 0x2800

    .line 425
    .local v8, downloadBufferSize:I
    const/16 v24, 0x2800

    :try_start_5d
    move/from16 v0, v24

    new-array v3, v0, [B

    .line 428
    .local v3, array:[B
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_6c
    .catchall {:try_start_5d .. :try_end_6c} :catchall_184
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_6c} :catch_129

    move-result-object v13

    .line 432
    .local v13, is:Ljava/io/InputStream;
    :goto_6d
    :try_start_6d
    invoke-virtual {v13, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 433
    .local v5, bytesRead:I
    const/16 v24, -0x1

    move/from16 v0, v24

    if-ne v5, v0, :cond_11b

    .line 438
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    .line 439
    .local v10, imageArray:[B
    const-string v24, "EsPhotos"

    const/16 v25, 0x3

    invoke-static/range {v24 .. v25}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_bb

    .line 440
    const-string v24, "EsPhotos"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "]; size: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    array-length v0, v10

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", url: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catchall {:try_start_6d .. :try_end_bb} :catchall_124

    .line 446
    :cond_bb
    :try_start_bb
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_184
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_1dd

    .line 452
    :goto_be
    const-string v24, "EsPhotos"

    const/16 v25, 0x3

    invoke-static/range {v24 .. v25}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_10b

    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v6, v24, v21

    .line 454
    .local v6, deltaTime:J
    const-string v24, "EsPhotos"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "]; Done in "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-wide/16 v26, 0x3e8

    div-long v26, v6, v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-wide/16 v26, 0x3e8

    rem-long v26, v6, v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " seconds"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .end local v6           #deltaTime:J
    :cond_10b
    :try_start_10b
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10e
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_10e} :catch_110

    goto/16 :goto_7

    .line 459
    :catch_110
    move-exception v24

    goto/16 :goto_7

    .line 413
    .end local v3           #array:[B
    .end local v4           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v5           #bytesRead:I
    .end local v8           #downloadBufferSize:I
    .end local v10           #imageArray:[B
    .end local v11           #imageType:Ljava/lang/String;
    .end local v12           #initialStreamSize:I
    .end local v13           #is:Ljava/io/InputStream;
    .end local v18           #queryUri:Landroid/net/Uri;
    .end local v21           #startTime:J
    :cond_113
    const-string v11, "thumbnail"

    goto/16 :goto_3a

    .line 420
    .restart local v11       #imageType:Ljava/lang/String;
    .restart local v18       #queryUri:Landroid/net/Uri;
    :cond_117
    const/16 v12, 0x2800

    goto/16 :goto_50

    .line 436
    .restart local v3       #array:[B
    .restart local v4       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #bytesRead:I
    .restart local v8       #downloadBufferSize:I
    .restart local v12       #initialStreamSize:I
    .restart local v13       #is:Ljava/io/InputStream;
    .restart local v21       #startTime:J
    :cond_11b
    const/16 v24, 0x0

    :try_start_11d
    move/from16 v0, v24

    invoke-virtual {v4, v3, v0, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_122
    .catchall {:try_start_11d .. :try_end_122} :catchall_124

    goto/16 :goto_6d

    .line 445
    .end local v5           #bytesRead:I
    :catchall_124
    move-exception v24

    .line 446
    :try_start_125
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_128
    .catchall {:try_start_125 .. :try_end_128} :catchall_184
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_128} :catch_1da

    .line 445
    :goto_128
    :try_start_128
    throw v24
    :try_end_129
    .catchall {:try_start_128 .. :try_end_129} :catchall_184
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_129} :catch_129

    .line 449
    .end local v3           #array:[B
    .end local v13           #is:Ljava/io/InputStream;
    :catch_129
    move-exception v9

    .line 450
    .local v9, e:Ljava/io/IOException;
    :try_start_12a
    const-string v24, "EsPhotos"

    move-object/from16 v0, v24

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_131
    .catchall {:try_start_12a .. :try_end_131} :catchall_184

    .line 452
    const-string v24, "EsPhotos"

    const/16 v25, 0x3

    invoke-static/range {v24 .. v25}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_17e

    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v6, v24, v21

    .line 454
    .restart local v6       #deltaTime:J
    const-string v24, "EsPhotos"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "]; Done in "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-wide/16 v26, 0x3e8

    div-long v26, v6, v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-wide/16 v26, 0x3e8

    rem-long v26, v6, v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " seconds"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .end local v6           #deltaTime:J
    :cond_17e
    :try_start_17e
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_181
    .catch Ljava/io/IOException; {:try_start_17e .. :try_end_181} :catch_1d8

    .line 461
    :goto_181
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 452
    .end local v9           #e:Ljava/io/IOException;
    :catchall_184
    move-exception v24

    const-string v25, "EsPhotos"

    const/16 v26, 0x3

    invoke-static/range {v25 .. v26}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_1d2

    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    sub-long v6, v25, v21

    .line 454
    .restart local v6       #deltaTime:J
    const-string v25, "EsPhotos"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "]; Done in "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-wide/16 v27, 0x3e8

    div-long v27, v6, v27

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-wide/16 v27, 0x3e8

    rem-long v27, v6, v27

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " seconds"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .end local v6           #deltaTime:J
    :cond_1d2
    :try_start_1d2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1d5
    .catch Ljava/io/IOException; {:try_start_1d2 .. :try_end_1d5} :catch_1d6

    .line 452
    :goto_1d5
    throw v24

    .line 459
    :catch_1d6
    move-exception v25

    goto :goto_1d5

    .restart local v9       #e:Ljava/io/IOException;
    :catch_1d8
    move-exception v24

    goto :goto_181

    .line 447
    .end local v9           #e:Ljava/io/IOException;
    .restart local v3       #array:[B
    .restart local v13       #is:Ljava/io/InputStream;
    :catch_1da
    move-exception v25

    goto/16 :goto_128

    .restart local v5       #bytesRead:I
    .restart local v10       #imageArray:[B
    :catch_1dd
    move-exception v24

    goto/16 :goto_be
.end method

.method public bridge synthetic loadImageBytesFromStorage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;III)[B
    .registers 14
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 395
    move-object v3, p3

    check-cast v3, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/plus/service/EsService$4;->loadImageBytesFromStorage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;III)[B

    move-result-object v0

    return-object v0
.end method
