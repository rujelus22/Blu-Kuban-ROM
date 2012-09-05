.class public Lcom/google/android/apps/plus/api/GetPlacesMapOperation;
.super Lcom/google/android/apps/plus/network/HttpOperation;
.source "GetPlacesMapOperation.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "url"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 39
    const-string v2, "GET"

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x3a98

    invoke-direct {v5, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const-string v8, "webupdates"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/plus/network/HttpOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/apps/plus/api/GetPlacesMapOperation;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected onHttpHandleContentFromStream(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 6
    .parameter "inputStream"
    .parameter "contentType"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/GetPlacesMapOperation;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    check-cast v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 51
    .local v0, imageBytes:[B
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/GetPlacesMapOperation;->onStartResultProcessing()V

    .line 53
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/api/GetPlacesMapOperation;->mBitmap:Landroid/graphics/Bitmap;

    .line 54
    return-void
.end method
