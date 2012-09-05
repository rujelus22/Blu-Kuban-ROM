.class public Lcom/google/android/apps/plus/api/DownloadImageOperation;
.super Lcom/google/android/apps/plus/network/HttpOperation;
.source "DownloadImageOperation.java"


# instance fields
.field private final mHeight:I

.field private mImageBytes:[B

.field private final mImageUrl:Ljava/lang/String;

.field private final mType:Ljava/lang/String;

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;IILjava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 18
    .parameter "context"
    .parameter "account"
    .parameter "url"
    .parameter "width"
    .parameter "height"
    .parameter "type"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 49
    const-string v2, "GET"

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x3a98

    invoke-direct {v5, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const-string v8, "webupdates"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/plus/network/HttpOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Ljava/lang/String;)V

    .line 53
    iput-object p3, p0, Lcom/google/android/apps/plus/api/DownloadImageOperation;->mImageUrl:Ljava/lang/String;

    .line 54
    iput p4, p0, Lcom/google/android/apps/plus/api/DownloadImageOperation;->mWidth:I

    .line 55
    iput p5, p0, Lcom/google/android/apps/plus/api/DownloadImageOperation;->mHeight:I

    .line 56
    iput-object p6, p0, Lcom/google/android/apps/plus/api/DownloadImageOperation;->mType:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public getImageBytes()[B
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/apps/plus/api/DownloadImageOperation;->mImageBytes:[B

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/apps/plus/api/DownloadImageOperation;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/apps/plus/api/DownloadImageOperation;->mType:Ljava/lang/String;

    return-object v0
.end method

.method protected onHttpHandleContentFromStream(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 10
    .parameter "inputStream"
    .parameter "contentType"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/DownloadImageOperation;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    check-cast v3, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 66
    .local v2, imageBytes:[B
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/DownloadImageOperation;->onStartResultProcessing()V

    .line 68
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/api/DownloadImageOperation;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/api/DownloadImageOperation;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 70
    :cond_29
    :try_start_29
    iget v3, p0, Lcom/google/android/apps/plus/api/DownloadImageOperation;->mWidth:I

    iget v4, p0, Lcom/google/android/apps/plus/api/DownloadImageOperation;->mHeight:I

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_46

    .line 72
    invoke-static {v0}, Lcom/google/android/apps/plus/util/ImageUtils;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/api/DownloadImageOperation;->mImageBytes:[B

    .line 73
    iget-object v3, p0, Lcom/google/android/apps/plus/api/DownloadImageOperation;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/apps/plus/api/DownloadImageOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/DownloadImageOperation;->getUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/api/DownloadImageOperation;->mImageBytes:[B

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/apps/plus/content/EsPostsData;->insertMediaThumbnail(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[B)V
    :try_end_46
    .catch Ljava/lang/OutOfMemoryError; {:try_start_29 .. :try_end_46} :catch_47

    .line 82
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_46
    :goto_46
    return-void

    .line 75
    :catch_47
    move-exception v1

    .line 76
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "HttpTransaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadImageOperation OutOfMemoryError on image bytes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 80
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :cond_62
    iput-object v2, p0, Lcom/google/android/apps/plus/api/DownloadImageOperation;->mImageBytes:[B

    goto :goto_46
.end method
