.class public Lcom/google/android/apps/plus/api/DownloadImageOperationNoCache;
.super Lcom/google/android/apps/plus/network/HttpOperation;
.source "DownloadImageOperationNoCache.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

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
    .line 44
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

    .line 46
    iput-object p3, p0, Lcom/google/android/apps/plus/api/DownloadImageOperationNoCache;->mRequest:Lcom/google/android/apps/plus/content/MediaImageRequest;

    .line 47
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/apps/plus/api/DownloadImageOperationNoCache;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected onHttpHandleContentFromStream(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 10
    .parameter "inputStream"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/DownloadImageOperationNoCache;->onStartResultProcessing()V

    .line 61
    iget-object v4, p0, Lcom/google/android/apps/plus/api/DownloadImageOperationNoCache;->mRequest:Lcom/google/android/apps/plus/content/MediaImageRequest;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/MediaImageRequest;->getMediaType()Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, type:Ljava/lang/String;
    sget-object v4, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    sget-object v4, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    sget-object v4, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->TITLE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 64
    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/DownloadImageOperationNoCache;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    .line 66
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_33
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 67
    .local v2, imageBytes:[B
    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v2, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/api/DownloadImageOperationNoCache;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_3f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_33 .. :try_end_3f} :catch_40

    .line 74
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #imageBytes:[B
    :cond_3f
    return-void

    .line 68
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_40
    move-exception v1

    .line 69
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v4, "HttpTransaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DownloadImageOperation OutOfMemoryError on image bytes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    new-instance v4, Lcom/google/android/apps/plus/api/ProtocolException;

    const-string v5, "Cannot handle downloaded image"

    invoke-direct {v4, v5}, Lcom/google/android/apps/plus/api/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
