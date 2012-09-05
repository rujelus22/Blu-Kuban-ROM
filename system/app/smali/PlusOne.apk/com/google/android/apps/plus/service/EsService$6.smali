.class final Lcom/google/android/apps/plus/service/EsService$6;
.super Ljava/lang/Object;
.source "EsService.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/ImagesCache$ImageLoader;


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
        "Lcom/google/android/apps/plus/service/ImagesCache$ImageLoader",
        "<",
        "Lcom/google/android/apps/plus/service/EsService$LocalImageKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadImageBytesFromStorage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsService$LocalImageKey;II)[B
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "imageKey"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 535
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 536
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p3}, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;->uri()Landroid/net/Uri;

    move-result-object v4

    .line 537
    .local v4, uri:Landroid/net/Uri;
    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->safeGetMimeType(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 538
    .local v2, mimeType:Ljava/lang/String;
    const/4 v0, 0x0

    .line 540
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isImageMimeType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 541
    invoke-static {v3, v4, p4, p5}, Lcom/google/android/apps/plus/util/ImageUtils;->createCroppedBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 553
    :cond_17
    :goto_17
    if-nez v0, :cond_48

    const/4 v1, 0x0

    .line 555
    .local v1, imageBytes:[B
    :goto_1a
    return-object v1

    .line 543
    .end local v1           #imageBytes:[B
    :cond_1b
    invoke-static {v2}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isVideoMimeType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 544
    invoke-static {p1, v4, p4, p5}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->getThumbnail(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_17

    .line 547
    :cond_26
    const-string v5, "EsService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 548
    const-string v5, "EsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "localImage#loadImageBytes: unknown mimeType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 553
    :cond_48
    invoke-static {v0}, Lcom/google/android/apps/plus/util/ImageUtils;->compressBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    goto :goto_1a
.end method

.method public bridge synthetic loadImageBytesFromStorage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;II)[B
    .registers 12
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 531
    move-object v3, p3

    check-cast v3, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService$6;->loadImageBytesFromStorage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsService$LocalImageKey;II)[B

    move-result-object v0

    return-object v0
.end method
