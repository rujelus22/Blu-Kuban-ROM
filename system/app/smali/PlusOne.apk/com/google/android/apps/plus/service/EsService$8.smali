.class final Lcom/google/android/apps/plus/service/EsService$8;
.super Ljava/lang/Object;
.source "EsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/service/EsService;->getLocalImageAsync(Landroid/content/Context;Lcom/google/android/apps/plus/api/MediaRef;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$maxSize:I

.field final synthetic val$ref:Lcom/google/android/apps/plus/api/MediaRef;

.field final synthetic val$resolver:Landroid/content/ContentResolver;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILandroid/content/Context;Lcom/google/android/apps/plus/api/MediaRef;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1445
    iput-object p1, p0, Lcom/google/android/apps/plus/service/EsService$8;->val$resolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/google/android/apps/plus/service/EsService$8;->val$uri:Landroid/net/Uri;

    iput p3, p0, Lcom/google/android/apps/plus/service/EsService$8;->val$maxSize:I

    iput-object p4, p0, Lcom/google/android/apps/plus/service/EsService$8;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/google/android/apps/plus/service/EsService$8;->val$ref:Lcom/google/android/apps/plus/api/MediaRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 1451
    invoke-static {}, Lcom/google/android/apps/plus/service/EsService;->access$500()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1452
    const/4 v0, 0x0

    .line 1453
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_6
    iget-object v5, p0, Lcom/google/android/apps/plus/service/EsService$8;->val$resolver:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/google/android/apps/plus/service/EsService$8;->val$uri:Landroid/net/Uri;

    invoke-static {v5, v7}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->safeGetMimeType(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 1454
    .local v4, mimeType:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isImageMimeType(Ljava/lang/String;)Z
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_3b

    move-result v5

    if-eqz v5, :cond_3e

    .line 1456
    :try_start_14
    iget-object v5, p0, Lcom/google/android/apps/plus/service/EsService$8;->val$resolver:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/google/android/apps/plus/service/EsService$8;->val$uri:Landroid/net/Uri;

    iget v8, p0, Lcom/google/android/apps/plus/service/EsService$8;->val$maxSize:I

    invoke-static {v5, v7, v8}, Lcom/google/android/apps/plus/util/ImageUtils;->createBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_3b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_1d} :catch_32

    move-result-object v0

    .line 1471
    :cond_1e
    :goto_1e
    :try_start_1e
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1473
    .local v3, handler:Landroid/os/Handler;
    move-object v2, v0

    .line 1474
    .local v2, fBitmap:Landroid/graphics/Bitmap;
    new-instance v5, Lcom/google/android/apps/plus/service/EsService$8$1;

    invoke-direct {v5, p0, v2}, Lcom/google/android/apps/plus/service/EsService$8$1;-><init>(Lcom/google/android/apps/plus/service/EsService$8;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1490
    monitor-exit v6

    .line 1491
    return-void

    .line 1457
    .end local v2           #fBitmap:Landroid/graphics/Bitmap;
    .end local v3           #handler:Landroid/os/Handler;
    :catch_32
    move-exception v1

    .line 1458
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v5, "EsService"

    const-string v7, "getLocalImageAsync: OutOfMemoryError"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 1490
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .end local v4           #mimeType:Ljava/lang/String;
    :catchall_3b
    move-exception v5

    monitor-exit v6
    :try_end_3d
    .catchall {:try_start_1e .. :try_end_3d} :catchall_3b

    throw v5

    .line 1460
    .restart local v4       #mimeType:Ljava/lang/String;
    :cond_3e
    :try_start_3e
    invoke-static {v4}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isVideoMimeType(Ljava/lang/String;)Z
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_3b

    move-result v5

    if-eqz v5, :cond_5a

    .line 1462
    :try_start_44
    iget-object v5, p0, Lcom/google/android/apps/plus/service/EsService$8;->val$context:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/android/apps/plus/service/EsService$8;->val$uri:Landroid/net/Uri;

    iget v8, p0, Lcom/google/android/apps/plus/service/EsService$8;->val$maxSize:I

    iget v9, p0, Lcom/google/android/apps/plus/service/EsService$8;->val$maxSize:I

    invoke-static {v5, v7, v8, v9}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->getThumbnail(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    :try_end_4f
    .catchall {:try_start_44 .. :try_end_4f} :catchall_3b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_44 .. :try_end_4f} :catch_51

    move-result-object v0

    goto :goto_1e

    .line 1463
    :catch_51
    move-exception v1

    .line 1464
    .restart local v1       #e:Ljava/lang/OutOfMemoryError;
    :try_start_52
    const-string v5, "EsService"

    const-string v7, "getLocalImageAsync: OutOfMemoryError"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 1467
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :cond_5a
    const-string v5, "EsService"

    const/4 v7, 0x3

    invoke-static {v5, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1468
    const-string v5, "EsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLocalImageAsync: unknown mimeType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_52 .. :try_end_7b} :catchall_3b

    goto :goto_1e
.end method
