.class final Lcom/google/android/apps/plus/service/EsService$2;
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
        "Lcom/google/android/apps/plus/service/EsService$ImageKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadBitmapFromStorage(Landroid/content/Context;Lcom/google/android/apps/plus/service/EsService$ImageKey;III)Landroid/graphics/Bitmap;
    .registers 21
    .parameter "context"
    .parameter "key"
    .parameter "width"
    .parameter "height"
    .parameter "cropType"

    .prologue
    .line 533
    invoke-interface/range {p2 .. p2}, Lcom/google/android/apps/plus/service/EsService$ImageKey;->getMediaRef()Lcom/google/android/apps/plus/api/MediaRef;

    move-result-object v13

    .line 534
    .local v13, ref:Lcom/google/android/apps/plus/api/MediaRef;
    if-nez v13, :cond_8

    .line 535
    const/4 v10, 0x0

    .line 557
    :cond_7
    :goto_7
    return-object v10

    .line 539
    :cond_8
    :try_start_8
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/google/android/apps/plus/service/EsService$LocalImageKey;

    if-eqz v3, :cond_2b

    .line 540
    new-instance v14, Lcom/google/android/apps/plus/content/LocalImageRequest;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v14, v13, v0, v1}, Lcom/google/android/apps/plus/content/LocalImageRequest;-><init>(Lcom/google/android/apps/plus/api/MediaRef;II)V

    .line 541
    .local v14, request:Lcom/google/android/apps/plus/content/LocalImageRequest;
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/android/apps/plus/content/EsPhotosData;->loadLocalBitmap(Landroid/content/Context;Lcom/google/android/apps/plus/content/LocalImageRequest;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 542
    .local v10, decodedBitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x2

    move/from16 v0, p5

    if-ne v0, v3, :cond_7

    .line 543
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v10, v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->cropWideBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_7

    .line 546
    .end local v10           #decodedBitmap:Landroid/graphics/Bitmap;
    .end local v14           #request:Lcom/google/android/apps/plus/content/LocalImageRequest;
    :cond_2b
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/google/android/apps/plus/service/EsService$RemoteImageKey;

    if-eqz v3, :cond_61

    .line 548
    invoke-virtual {v13}, Lcom/google/android/apps/plus/api/MediaRef;->getPhotoId()J

    move-result-wide v4

    invoke-virtual {v13}, Lcom/google/android/apps/plus/api/MediaRef;->getUrl()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v3, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {v3 .. v9}, Lcom/google/android/apps/plus/content/EsPhotosData;->loadPicasaImageBytes(Landroid/content/Context;JLjava/lang/String;III)[B

    move-result-object v11

    .line 550
    .local v11, imageBytes:[B
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v11, v0, v1, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->createBitmap([BIII)Landroid/graphics/Bitmap;
    :try_end_4e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_4e} :catch_50

    move-result-object v10

    goto :goto_7

    .line 552
    .end local v11           #imageBytes:[B
    :catch_50
    move-exception v12

    .line 553
    .local v12, oome:Ljava/lang/OutOfMemoryError;
    const-string v3, "EsService"

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 554
    const-string v3, "EsService"

    const-string v4, "Could not load image"

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 557
    .end local v12           #oome:Ljava/lang/OutOfMemoryError;
    :cond_61
    const/4 v10, 0x0

    goto :goto_7
.end method

.method public bridge synthetic loadBitmapFromStorage(Landroid/content/Context;Ljava/lang/Object;III)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 529
    move-object v2, p2

    check-cast v2, Lcom/google/android/apps/plus/service/EsService$ImageKey;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService$2;->loadBitmapFromStorage(Landroid/content/Context;Lcom/google/android/apps/plus/service/EsService$ImageKey;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
