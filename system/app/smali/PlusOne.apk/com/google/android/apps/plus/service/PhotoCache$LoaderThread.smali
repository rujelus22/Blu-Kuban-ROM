.class Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;
.super Ljava/lang/Thread;
.source "PhotoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/PhotoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderThread"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mPendingRunnables:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TE;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessQueueRunnable:Ljava/lang/Runnable;

.field private mThreadHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/google/android/apps/plus/service/PhotoCache;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/service/PhotoCache;)V
    .registers 4
    .parameter

    .prologue
    .line 300
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;,"Lcom/google/android/apps/plus/service/PhotoCache<TE;>.LoaderThread;"
    iput-object p1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->this$0:Lcom/google/android/apps/plus/service/PhotoCache;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 277
    new-instance v0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$1;-><init>(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mProcessQueueRunnable:Ljava/lang/Runnable;

    .line 301
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mHandler:Landroid/os/Handler;

    .line 302
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mPendingRunnables:Ljava/util/LinkedHashMap;

    .line 304
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->start()V

    .line 305
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;Ljava/lang/Object;III)V
    .registers 8
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 222
    invoke-direct/range {p0 .. p7}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->load(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;Ljava/lang/Object;III)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;Ljava/lang/Object;[BLjava/lang/Object;III)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 222
    invoke-direct/range {p0 .. p6}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->put(Ljava/lang/Object;[BLjava/lang/Object;III)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->pollFirstEntry()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;[BIII)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 222
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->createBitmap([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mProcessQueueRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private createBitmap([BIII)Landroid/graphics/Bitmap;
    .registers 16
    .parameter "imageBytes"
    .parameter "width"
    .parameter "height"
    .parameter "cropType"

    .prologue
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;,"Lcom/google/android/apps/plus/service/PhotoCache<TE;>.LoaderThread;"
    const/4 v7, 0x0

    .line 416
    if-eqz p1, :cond_6

    array-length v8, p1

    if-nez v8, :cond_8

    :cond_6
    move-object v4, v7

    .line 469
    :goto_7
    return-object v4

    .line 420
    :cond_8
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 421
    .local v3, inputStream:Ljava/io/ByteArrayInputStream;
    sget-boolean v6, Lcom/google/android/apps/plus/util/ImageUtils;->sUseLowResImages:Z

    .line 423
    .local v6, useLowResImages:Z
    :try_start_f
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 424
    .local v5, opts:Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->getImageBounds([B)Landroid/graphics/Point;

    move-result-object v0

    .line 426
    .local v0, bounds:Landroid/graphics/Point;
    const-string v8, "EsPhotoCache"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_51

    .line 427
    const-string v8, "EsPhotoCache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PhotoCache#createBitmap; w: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", h: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", max: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_51
    iget v8, v0, Landroid/graphics/Point;->x:I

    div-int/2addr v8, p2

    iget v9, v0, Landroid/graphics/Point;->y:I

    div-int/2addr v9, p3

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 431
    if-eqz v6, :cond_63

    .line 432
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v8, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 435
    :cond_63
    const/4 v8, 0x0

    invoke-static {v3, v8, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_67
    .catchall {:try_start_f .. :try_end_67} :catchall_9a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_67} :catch_9f

    move-result-object v2

    .line 436
    .local v2, decodedBitmap:Landroid/graphics/Bitmap;
    if-nez v2, :cond_6f

    .line 465
    :try_start_6a
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_aa

    :goto_6d
    move-object v4, v7

    .line 437
    goto :goto_7

    .line 441
    :cond_6f
    const/4 v8, 0x2

    if-ne p4, v8, :cond_80

    .line 442
    :try_start_72
    invoke-direct {p0, v2, p2, p3}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->cropWideBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 443
    .local v1, croppedBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_79
    .catchall {:try_start_72 .. :try_end_79} :catchall_9a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_72 .. :try_end_79} :catch_9f

    .line 445
    if-nez v1, :cond_81

    .line 465
    :try_start_7b
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_ac

    :goto_7e
    move-object v4, v7

    .line 446
    goto :goto_7

    .line 449
    .end local v1           #croppedBitmap:Landroid/graphics/Bitmap;
    :cond_80
    move-object v1, v2

    .line 452
    .restart local v1       #croppedBitmap:Landroid/graphics/Bitmap;
    :cond_81
    if-eqz v6, :cond_94

    .line 453
    :try_start_83
    invoke-static {v1}, Lcom/google/android/apps/plus/util/ImageUtils;->getLowResBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 454
    .local v4, lowResBitmap:Landroid/graphics/Bitmap;
    if-eq v4, v1, :cond_8c

    .line 455
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_8c
    .catchall {:try_start_83 .. :try_end_8c} :catchall_9a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_83 .. :try_end_8c} :catch_9f

    .line 465
    :cond_8c
    :try_start_8c
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_91

    goto/16 :goto_7

    .line 466
    :catch_91
    move-exception v7

    goto/16 :goto_7

    .line 465
    .end local v4           #lowResBitmap:Landroid/graphics/Bitmap;
    :cond_94
    :try_start_94
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_ae

    :goto_97
    move-object v4, v1

    .line 459
    goto/16 :goto_7

    .line 464
    .end local v0           #bounds:Landroid/graphics/Point;
    .end local v1           #croppedBitmap:Landroid/graphics/Bitmap;
    .end local v2           #decodedBitmap:Landroid/graphics/Bitmap;
    .end local v5           #opts:Landroid/graphics/BitmapFactory$Options;
    :catchall_9a
    move-exception v7

    .line 465
    :try_start_9b
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_a8

    .line 464
    :goto_9e
    throw v7

    .line 461
    :catch_9f
    move-exception v8

    .line 465
    :try_start_a0
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_a6

    :goto_a3
    move-object v4, v7

    .line 469
    goto/16 :goto_7

    .line 466
    :catch_a6
    move-exception v8

    goto :goto_a3

    :catch_a8
    move-exception v8

    goto :goto_9e

    .restart local v0       #bounds:Landroid/graphics/Point;
    .restart local v2       #decodedBitmap:Landroid/graphics/Bitmap;
    .restart local v5       #opts:Landroid/graphics/BitmapFactory$Options;
    :catch_aa
    move-exception v8

    goto :goto_6d

    .restart local v1       #croppedBitmap:Landroid/graphics/Bitmap;
    :catch_ac
    move-exception v8

    goto :goto_7e

    :catch_ae
    move-exception v7

    goto :goto_97
.end method

.method private cropWideBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 23
    .parameter "inputBitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 481
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;,"Lcom/google/android/apps/plus/service/PhotoCache<TE;>.LoaderThread;"
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 482
    .local v15, srcWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 483
    .local v13, srcHeight:I
    move/from16 v11, p2

    .line 484
    .local v11, dstWidth:I
    move/from16 v9, p3

    .line 486
    .local v9, dstHeight:I
    if-ne v15, v11, :cond_2f

    if-ne v13, v9, :cond_2f

    .line 488
    new-instance v14, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v14, v0, v1, v15, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 507
    .local v14, srcRect:Landroid/graphics/Rect;
    :goto_1d
    sget-boolean v17, Lcom/google/android/apps/plus/util/ImageUtils;->sUseLowResImages:Z

    if-eqz v17, :cond_5c

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 509
    .local v5, bitmapConfig:Landroid/graphics/Bitmap$Config;
    :goto_23
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 510
    .local v4, bitmap:Landroid/graphics/Bitmap;
    if-nez v4, :cond_5f

    .line 511
    const/4 v4, 0x0

    .line 521
    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    :goto_2e
    return-object v4

    .line 491
    .end local v5           #bitmapConfig:Landroid/graphics/Bitmap$Config;
    .end local v14           #srcRect:Landroid/graphics/Rect;
    :cond_2f
    move v8, v15

    .line 492
    .local v8, cropWidth:I
    move v7, v13

    .line 493
    .local v7, cropHeight:I
    mul-int v17, v15, v9

    mul-int v18, v13, v11

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_57

    .line 495
    mul-int v17, v13, v11

    div-int v8, v17, v9

    .line 501
    :goto_3f
    sub-int v17, v15, v8

    div-int/lit8 v12, v17, 0x2

    .line 502
    .local v12, left:I
    sub-int v17, v13, v7

    div-int/lit8 v16, v17, 0x2

    .line 503
    .local v16, top:I
    new-instance v14, Landroid/graphics/Rect;

    add-int v17, v12, v8

    add-int v18, v16, v7

    move/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v14, v12, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v14       #srcRect:Landroid/graphics/Rect;
    goto :goto_1d

    .line 498
    .end local v12           #left:I
    .end local v14           #srcRect:Landroid/graphics/Rect;
    .end local v16           #top:I
    :cond_57
    mul-int v17, v15, v9

    div-int v7, v17, v11

    goto :goto_3f

    .line 507
    .end local v7           #cropHeight:I
    .end local v8           #cropWidth:I
    .restart local v14       #srcRect:Landroid/graphics/Rect;
    :cond_5c
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_23

    .line 514
    .restart local v4       #bitmap:Landroid/graphics/Bitmap;
    .restart local v5       #bitmapConfig:Landroid/graphics/Bitmap$Config;
    :cond_5f
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 515
    .local v6, canvas:Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 517
    .local v10, dstRect:Landroid/graphics/Rect;
    invoke-static {}, Lcom/google/android/apps/plus/service/PhotoCache;->access$1100()Landroid/graphics/Paint;

    move-result-object v18

    monitor-enter v18

    .line 518
    :try_start_7a
    invoke-static {}, Lcom/google/android/apps/plus/service/PhotoCache;->access$1100()Landroid/graphics/Paint;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v14, v10, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 519
    monitor-exit v18

    goto :goto_2e

    :catchall_87
    move-exception v17

    monitor-exit v18
    :try_end_89
    .catchall {:try_start_7a .. :try_end_89} :catchall_87

    throw v17
.end method

.method private getImageBounds([B)Landroid/graphics/Point;
    .registers 7
    .parameter "imageBytes"

    .prologue
    .line 528
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;,"Lcom/google/android/apps/plus/service/PhotoCache<TE;>.LoaderThread;"
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 529
    .local v1, opts:Landroid/graphics/BitmapFactory$Options;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 532
    .local v0, inputStream:Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x1

    :try_start_b
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 533
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 534
    new-instance v2, Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_1e

    .line 537
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_25

    .line 534
    :goto_1d
    return-object v2

    .line 536
    :catchall_1e
    move-exception v2

    .line 537
    :try_start_1f
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    .line 536
    :goto_22
    throw v2

    .line 538
    :catch_23
    move-exception v3

    goto :goto_22

    :catch_25
    move-exception v3

    goto :goto_1d
.end method

.method private load(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/Object;Ljava/lang/Object;III)V
    .registers 17
    .parameter "context"
    .parameter "account"
    .parameter
    .parameter "data"
    .parameter "width"
    .parameter "height"
    .parameter "cropType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "TE;",
            "Ljava/lang/Object;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;,"Lcom/google/android/apps/plus/service/PhotoCache<TE;>.LoaderThread;"
    .local p3, imageKey:Ljava/lang/Object;,"TE;"
    new-instance v0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$3;-><init>(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;Ljava/lang/Object;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;IIILjava/lang/Object;)V

    invoke-direct {p0, p3, v0}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->queueRunnable(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 384
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1c

    .line 385
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mProcessQueueRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 387
    :cond_1c
    return-void
.end method

.method private declared-synchronized pollFirstEntry()Ljava/lang/Runnable;
    .registers 5

    .prologue
    .line 247
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;,"Lcom/google/android/apps/plus/service/PhotoCache<TE;>.LoaderThread;"
    monitor-enter p0

    :try_start_1
    const-string v1, "EsPhotoCache"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 248
    iget-object v1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mPendingRunnables:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_31

    .line 249
    const-string v1, "EsPhotoCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Amount of mPendingRunnables in LoaderThread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mPendingRunnables:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_31
    iget-object v1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mPendingRunnables:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_54

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3d

    .line 255
    const/4 v1, 0x0

    .line 260
    :goto_3b
    monitor-exit p0

    return-object v1

    .line 258
    :cond_3d
    :try_start_3d
    iget-object v1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mPendingRunnables:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 260
    .local v0, key:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mPendingRunnables:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;
    :try_end_53
    .catchall {:try_start_3d .. :try_end_53} :catchall_54

    goto :goto_3b

    .line 247
    .end local v0           #key:Ljava/lang/Object;,"TE;"
    :catchall_54
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private put(Ljava/lang/Object;[BLjava/lang/Object;III)V
    .registers 15
    .parameter
    .parameter "imageBytes"
    .parameter "data"
    .parameter "width"
    .parameter "height"
    .parameter "cropType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;[B",
            "Ljava/lang/Object;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;,"Lcom/google/android/apps/plus/service/PhotoCache<TE;>.LoaderThread;"
    .local p1, imageKey:Ljava/lang/Object;,"TE;"
    new-instance v0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;

    move-object v1, p0

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$2;-><init>(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;[BIIILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->queueRunnable(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 332
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1a

    .line 333
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mProcessQueueRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 335
    :cond_1a
    return-void
.end method

.method private declared-synchronized queueRunnable(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .registers 6
    .parameter
    .parameter "runnable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;,"Lcom/google/android/apps/plus/service/PhotoCache<TE;>.LoaderThread;"
    .local p1, imageKey:Ljava/lang/Object;,"TE;"
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mPendingRunnables:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 236
    .local v0, found:Ljava/lang/Runnable;
    if-eqz v0, :cond_1b

    .line 237
    const-string v1, "EsPhotoCache"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 238
    const-string v1, "EsPhotoCache"

    const-string v2, "queueRunnable replaced Runnable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 241
    :cond_1b
    monitor-exit p0

    return-void

    .line 235
    .end local v0           #found:Ljava/lang/Runnable;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized removeQueuedLoad(Ljava/lang/Object;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;,"Lcom/google/android/apps/plus/service/PhotoCache<TE;>.LoaderThread;"
    .local p1, imageKey:Ljava/lang/Object;,"TE;"
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mPendingRunnables:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 270
    .local v0, runnable:Ljava/lang/Runnable;
    if-eqz v0, :cond_2c

    .line 271
    const-string v1, "EsPhotoCache"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 272
    const-string v1, "EsPhotoCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeQueuedLoad; key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 275
    :cond_2c
    monitor-exit p0

    return-void

    .line 269
    .end local v0           #runnable:Ljava/lang/Runnable;
    :catchall_2e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public run()V
    .registers 3

    .prologue
    .line 391
    .local p0, this:Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;,"Lcom/google/android/apps/plus/service/PhotoCache<TE;>.LoaderThread;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->setPriority(I)V

    .line 392
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 393
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mThreadHandler:Landroid/os/Handler;

    .line 396
    iget-object v0, p0, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$4;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread$4;-><init>(Lcom/google/android/apps/plus/service/PhotoCache$LoaderThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 404
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 405
    return-void
.end method
