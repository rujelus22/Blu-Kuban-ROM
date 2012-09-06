.class public Lcom/google/android/apps/plus/api/DownloadPicasaPhotoOperation;
.super Lcom/google/android/apps/plus/network/HttpOperation;
.source "DownloadPicasaPhotoOperation.java"


# instance fields
.field private final mCropType:I

.field private final mHeight:I

.field private mImageBytes:[B

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;IIILandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 17
    .parameter "context"
    .parameter "account"
    .parameter "url"
    .parameter "width"
    .parameter "height"
    .parameter "cropType"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 46
    const-string v2, "GET"

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x3a98

    invoke-direct {v5, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/network/HttpOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 48
    iput p4, p0, Lcom/google/android/apps/plus/api/DownloadPicasaPhotoOperation;->mWidth:I

    .line 49
    iput p5, p0, Lcom/google/android/apps/plus/api/DownloadPicasaPhotoOperation;->mHeight:I

    .line 50
    iput p6, p0, Lcom/google/android/apps/plus/api/DownloadPicasaPhotoOperation;->mCropType:I

    .line 51
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/plus/api/DownloadPicasaPhotoOperation;->mImageBytes:[B

    iget v1, p0, Lcom/google/android/apps/plus/api/DownloadPicasaPhotoOperation;->mWidth:I

    iget v2, p0, Lcom/google/android/apps/plus/api/DownloadPicasaPhotoOperation;->mHeight:I

    iget v3, p0, Lcom/google/android/apps/plus/api/DownloadPicasaPhotoOperation;->mCropType:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/util/ImageUtils;->createBitmap([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBytes()[B
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/apps/plus/api/DownloadPicasaPhotoOperation;->mImageBytes:[B

    return-object v0
.end method

.method protected onHttpHandleContentFromStream(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 8
    .parameter "inputStream"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/DownloadPicasaPhotoOperation;->onStartResultProcessing()V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/DownloadPicasaPhotoOperation;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    .line 61
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/api/DownloadPicasaPhotoOperation;->mImageBytes:[B
    :try_end_f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_f} :catch_10

    .line 67
    return-void

    .line 62
    :catch_10
    move-exception v1

    .line 63
    .local v1, oome:Ljava/lang/OutOfMemoryError;
    const-string v2, "HttpTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DownloadPicasaPhotoOperation OutOfMemoryError on photo bytes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    new-instance v2, Lcom/google/android/apps/plus/api/ProtocolException;

    const-string v3, "Cannot handle downloaded photo"

    invoke-direct {v2, v3}, Lcom/google/android/apps/plus/api/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
