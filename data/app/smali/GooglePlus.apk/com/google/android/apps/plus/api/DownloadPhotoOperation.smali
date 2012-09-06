.class public Lcom/google/android/apps/plus/api/DownloadPhotoOperation;
.super Lcom/google/android/apps/plus/network/HttpOperation;
.source "DownloadPhotoOperation.java"


# instance fields
.field private mBytes:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "url"

    .prologue
    const/4 v6, 0x0

    .line 35
    const-string v2, "GET"

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x3a98

    invoke-direct {v5, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 37
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 8
    .parameter "context"
    .parameter "method"
    .parameter "url"
    .parameter "account"
    .parameter "outputStream"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p7}, Lcom/google/android/apps/plus/network/HttpOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;->mBytes:[B

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
    .line 51
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;->onStartResultProcessing()V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 54
    .local v2, out:Ljava/io/OutputStream;
    instance-of v3, v2, Ljava/io/ByteArrayOutputStream;

    if-eqz v3, :cond_17

    .line 55
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    .line 57
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_11
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;->mBytes:[B
    :try_end_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_17} :catch_18

    .line 64
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    :cond_17
    return-void

    .line 58
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    :catch_18
    move-exception v1

    .line 59
    .local v1, oome:Ljava/lang/OutOfMemoryError;
    const-string v3, "HttpTransaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadPhotoOperation OutOfMemoryError on photo bytes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    new-instance v3, Lcom/google/android/apps/plus/api/ProtocolException;

    const-string v4, "Cannot handle downloaded photo"

    invoke-direct {v3, v4}, Lcom/google/android/apps/plus/api/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
