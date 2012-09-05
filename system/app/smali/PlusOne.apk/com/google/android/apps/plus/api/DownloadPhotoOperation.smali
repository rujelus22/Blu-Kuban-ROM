.class public Lcom/google/android/apps/plus/api/DownloadPhotoOperation;
.super Lcom/google/android/apps/plus/network/HttpOperation;
.source "DownloadPhotoOperation.java"


# instance fields
.field private mBytes:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;IILandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 17
    .parameter "context"
    .parameter "account"
    .parameter "url"
    .parameter "width"
    .parameter "height"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 38
    const-string v2, "GET"

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x3a98

    invoke-direct {v5, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const-string v8, "webupdates"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/plus/network/HttpOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;->mBytes:[B

    return-object v0
.end method

.method protected onHttpHandleContentFromStream(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 5
    .parameter "inputStream"
    .parameter "contentType"

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 46
    .local v0, imageBytes:[B
    iput-object v0, p0, Lcom/google/android/apps/plus/api/DownloadPhotoOperation;->mBytes:[B

    .line 47
    return-void
.end method
