.class public Lcom/google/android/apps/plus/api/GetPlacesMapOperation;
.super Lcom/google/android/apps/plus/network/HttpOperation;
.source "GetPlacesMapOperation.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "url"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 40
    const-string v2, "GET"

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x3a98

    invoke-direct {v5, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/network/HttpOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/apps/plus/api/GetPlacesMapOperation;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected onHttpHandleContentFromStream(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 9
    .parameter "inputStream"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/GetPlacesMapOperation;->onStartResultProcessing()V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/GetPlacesMapOperation;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    .line 54
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 55
    .local v1, imageBytes:[B
    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, v4}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/api/GetPlacesMapOperation;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_15
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_15} :catch_16

    .line 61
    return-void

    .line 56
    .end local v1           #imageBytes:[B
    :catch_16
    move-exception v2

    .line 57
    .local v2, oome:Ljava/lang/OutOfMemoryError;
    const-string v3, "HttpTransaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetPlacesMapOperation OutOfMemoryError on favicon bytes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    new-instance v3, Lcom/google/android/apps/plus/api/ProtocolException;

    const-string v4, "Cannot handle downloaded places map"

    invoke-direct {v3, v4}, Lcom/google/android/apps/plus/api/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
