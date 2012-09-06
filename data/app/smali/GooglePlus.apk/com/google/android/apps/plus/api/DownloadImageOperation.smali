.class public Lcom/google/android/apps/plus/api/DownloadImageOperation;
.super Lcom/google/android/apps/plus/network/HttpOperation;
.source "DownloadImageOperation.java"


# instance fields
.field private mRequest:Lcom/google/android/apps/plus/content/MediaImageRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/content/MediaImageRequest;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "request"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 49
    const-string v2, "GET"

    invoke-virtual {p3}, Lcom/google/android/apps/plus/content/MediaImageRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x3a98

    invoke-direct {v5, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/network/HttpOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 51
    iput-object p3, p0, Lcom/google/android/apps/plus/api/DownloadImageOperation;->mRequest:Lcom/google/android/apps/plus/content/MediaImageRequest;

    .line 52
    return-void
.end method


# virtual methods
.method protected onHttpHandleContentFromStream(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 16
    .parameter "inputStream"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/DownloadImageOperation;->onStartResultProcessing()V

    .line 62
    iget-object v10, p0, Lcom/google/android/apps/plus/api/DownloadImageOperation;->mRequest:Lcom/google/android/apps/plus/content/MediaImageRequest;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/content/MediaImageRequest;->getMediaType()Ljava/lang/String;

    move-result-object v8

    .line 63
    .local v8, type:Ljava/lang/String;
    sget-object v10, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2d

    sget-object v10, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2d

    sget-object v10, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->TITLE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_75

    .line 65
    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/DownloadImageOperation;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    .line 67
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_33
    iget-object v10, p0, Lcom/google/android/apps/plus/api/DownloadImageOperation;->mRequest:Lcom/google/android/apps/plus/content/MediaImageRequest;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/content/MediaImageRequest;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 68
    .local v7, imageUrl:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 70
    .local v5, imageBytes:[B
    invoke-static {v5}, Lcom/google/android/apps/plus/util/GifDrawable;->isGif([B)Z

    move-result v10

    if-nez v10, :cond_89

    .line 71
    iget-object v10, p0, Lcom/google/android/apps/plus/api/DownloadImageOperation;->mRequest:Lcom/google/android/apps/plus/content/MediaImageRequest;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/content/MediaImageRequest;->getWidth()I

    move-result v9

    .line 72
    .local v9, width:I
    iget-object v10, p0, Lcom/google/android/apps/plus/api/DownloadImageOperation;->mRequest:Lcom/google/android/apps/plus/content/MediaImageRequest;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/content/MediaImageRequest;->getHeight()I

    move-result v4

    .line 75
    .local v4, height:I
    if-gtz v9, :cond_61

    if-gtz v4, :cond_61

    .line 77
    invoke-static {v7}, Lcom/google/android/apps/plus/phone/FIFEUtil;->isFifeHostedUrl(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_76

    .line 78
    invoke-static {v7}, Lcom/google/android/apps/plus/phone/FIFEUtil;->getImageUrlSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v6

    .line 82
    .local v6, imageSize:Landroid/graphics/Point;
    :goto_5d
    iget v9, v6, Landroid/graphics/Point;->x:I

    .line 83
    iget v4, v6, Landroid/graphics/Point;->y:I

    .line 86
    .end local v6           #imageSize:Landroid/graphics/Point;
    :cond_61
    if-lez v9, :cond_80

    if-lez v4, :cond_80

    .line 87
    invoke-static {v5, v9, v4}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 88
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_7b

    const/4 v2, 0x0

    .line 97
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .local v2, compressedImageBytes:[B
    :goto_6c
    if-eqz v2, :cond_75

    .line 98
    iget-object v10, p0, Lcom/google/android/apps/plus/api/DownloadImageOperation;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/google/android/apps/plus/api/DownloadImageOperation;->mRequest:Lcom/google/android/apps/plus/content/MediaImageRequest;

    invoke-static {v10, v11, v2}, Lcom/google/android/apps/plus/content/EsMediaCache;->insertMedia(Landroid/content/Context;Lcom/google/android/apps/plus/content/MediaImageRequest;[B)V

    .line 109
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #compressedImageBytes:[B
    .end local v4           #height:I
    .end local v5           #imageBytes:[B
    .end local v7           #imageUrl:Ljava/lang/String;
    .end local v9           #width:I
    :cond_75
    :goto_75
    return-void

    .line 80
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #height:I
    .restart local v5       #imageBytes:[B
    .restart local v7       #imageUrl:Ljava/lang/String;
    .restart local v9       #width:I
    :cond_76
    invoke-static {v7}, Lcom/google/android/apps/plus/phone/ImageProxyUtil;->getImageUrlSize(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v6

    .restart local v6       #imageSize:Landroid/graphics/Point;
    goto :goto_5d

    .line 88
    .end local v6           #imageSize:Landroid/graphics/Point;
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    :cond_7b
    invoke-static {v1}, Lcom/google/android/apps/plus/util/ImageUtils;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    goto :goto_6c

    .line 92
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_80
    const-string v10, "HttpTransaction"

    const-string v11, "DownloadImageOperation could not resize image; width or height were not specified"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    move-object v2, v5

    .restart local v2       #compressedImageBytes:[B
    goto :goto_6c

    .line 101
    .end local v2           #compressedImageBytes:[B
    .end local v4           #height:I
    .end local v9           #width:I
    :cond_89
    iget-object v10, p0, Lcom/google/android/apps/plus/api/DownloadImageOperation;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/google/android/apps/plus/api/DownloadImageOperation;->mRequest:Lcom/google/android/apps/plus/content/MediaImageRequest;

    invoke-static {v10, v11, v5}, Lcom/google/android/apps/plus/content/EsMediaCache;->insertMedia(Landroid/content/Context;Lcom/google/android/apps/plus/content/MediaImageRequest;[B)V
    :try_end_90
    .catch Ljava/lang/OutOfMemoryError; {:try_start_33 .. :try_end_90} :catch_91

    goto :goto_75

    .line 103
    .end local v5           #imageBytes:[B
    .end local v7           #imageUrl:Ljava/lang/String;
    :catch_91
    move-exception v3

    .line 104
    .local v3, e:Ljava/lang/OutOfMemoryError;
    const-string v10, "HttpTransaction"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DownloadImageOperation OutOfMemoryError on image bytes: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    new-instance v10, Lcom/google/android/apps/plus/api/ProtocolException;

    const-string v11, "Cannot handle downloaded image"

    invoke-direct {v10, v11}, Lcom/google/android/apps/plus/api/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v10
.end method
