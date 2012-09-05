.class public Lcom/samsung/swift/service/media/ThumbnailRequest;
.super Lcom/samsung/swift/service/media/Request;
.source "ThumbnailRequest.java"


# static fields
.field private static final TRACE_LOG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 118
    const-class v0, Lcom/samsung/swift/service/media/ThumbnailRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/media/ThumbnailRequest;->TRACE_LOG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3
    .parameter "peer"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/samsung/swift/service/media/Request;-><init>(J)V

    .line 123
    return-void
.end method

.method private createAndSendImageThumbnail(Landroid/graphics/Bitmap;)V
    .registers 6
    .parameter "bitmap"

    .prologue
    const/16 v3, 0xe

    .line 409
    const/4 v0, 0x0

    .line 413
    .local v0, scaled_bitmap:Landroid/graphics/Bitmap;
    :try_start_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->width()I

    move-result v2

    if-ne v1, v2, :cond_24

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->height()I

    move-result v2

    if-ne v1, v2, :cond_24

    .line 415
    invoke-virtual {p0, p1}, Lcom/samsung/swift/service/media/ThumbnailRequest;->send(Landroid/graphics/Bitmap;)V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_32

    .line 424
    if-eqz v0, :cond_23

    .line 426
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v3, :cond_23

    .line 428
    :goto_20
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 433
    :cond_23
    return-void

    .line 418
    :cond_24
    :try_start_24
    invoke-direct {p0, p1}, Lcom/samsung/swift/service/media/ThumbnailRequest;->makeThumbnail(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 419
    invoke-virtual {p0, v0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->send(Landroid/graphics/Bitmap;)V
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_32

    .line 424
    if-eqz v0, :cond_23

    .line 426
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v3, :cond_23

    goto :goto_20

    .line 424
    :catchall_32
    move-exception v1

    if-eqz v0, :cond_3c

    .line 426
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_3c

    .line 428
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 424
    :cond_3c
    throw v1
.end method

.method private createAndSendImageThumbnail(Ljava/io/File;)Z
    .registers 14
    .parameter "file"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v11, 0xe

    .line 354
    const/4 v0, 0x0

    .line 359
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_5
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 360
    .local v2, o:Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x1

    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 362
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 365
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .local v5, width_tmp:I
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 366
    .local v1, height_tmp:I
    const/4 v4, 0x1

    .line 368
    .local v4, scale:I
    :goto_19
    div-int/lit8 v8, v5, 0x2

    invoke-virtual {p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->width()I

    move-result v9

    if-lt v8, v9, :cond_29

    div-int/lit8 v8, v1, 0x2

    invoke-virtual {p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->height()I

    move-result v9

    if-ge v8, v9, :cond_63

    .line 374
    :cond_29
    sget-object v8, Lcom/samsung/swift/service/media/ThumbnailRequest;->TRACE_LOG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "**** Scale is  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 377
    .local v3, opts:Landroid/graphics/BitmapFactory$Options;
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 378
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 380
    if-nez v0, :cond_6a

    .line 382
    sget-object v7, Lcom/samsung/swift/service/media/ThumbnailRequest;->TRACE_LOG:Ljava/lang/String;

    const-string v8, "Failed to parse ...trying with the Android thumbnails now...."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_5 .. :try_end_59} :catchall_ca

    .line 397
    if-eqz v0, :cond_62

    .line 399
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v11, :cond_62

    .line 401
    :goto_5f
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 393
    :cond_62
    :goto_62
    return v6

    .line 370
    .end local v3           #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_63
    :try_start_63
    div-int/lit8 v5, v5, 0x2

    .line 371
    div-int/lit8 v1, v1, 0x2

    .line 372
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 385
    .restart local v3       #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_6a
    sget-object v8, Lcom/samsung/swift/service/media/ThumbnailRequest;->TRACE_LOG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cached bimap is  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-virtual {p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->getInputFile()Ljava/io/File;

    move-result-object v8

    if-eq p1, v8, :cond_bc

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->width()I

    move-result v9

    if-lt v8, v9, :cond_ae

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->height()I

    move-result v9

    if-ge v8, v9, :cond_bc

    .line 389
    :cond_ae
    sget-object v7, Lcom/samsung/swift/service/media/ThumbnailRequest;->TRACE_LOG:Ljava/lang/String;

    const-string v8, "too small - falling back to file"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catchall {:try_start_63 .. :try_end_b5} :catchall_ca

    .line 397
    if-eqz v0, :cond_62

    .line 399
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v11, :cond_62

    goto :goto_5f

    .line 392
    :cond_bc
    :try_start_bc
    invoke-direct {p0, v0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->createAndSendImageThumbnail(Landroid/graphics/Bitmap;)V
    :try_end_bf
    .catchall {:try_start_bc .. :try_end_bf} :catchall_ca

    .line 397
    if-eqz v0, :cond_c8

    .line 399
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v11, :cond_c8

    .line 401
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c8
    move v6, v7

    .line 393
    goto :goto_62

    .line 397
    .end local v1           #height_tmp:I
    .end local v2           #o:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #scale:I
    .end local v5           #width_tmp:I
    :catchall_ca
    move-exception v6

    if-eqz v0, :cond_d4

    .line 399
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v11, :cond_d4

    .line 401
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 397
    :cond_d4
    throw v6
.end method

.method private createAndSendVideoThumbnail(Ljava/io/File;)Z
    .registers 8
    .parameter "file"

    .prologue
    .line 653
    sget-object v1, Lcom/samsung/swift/service/media/ThumbnailRequest;->TRACE_LOG:Ljava/lang/String;

    const-string v2, "createAndSendVideoThumbnail() add to data base to create thumbnail"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 656
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_data"

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v1, "title"

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v1, "mime_type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-static {}, Lcom/samsung/swift/service/media/ThumbnailRequest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 662
    invoke-direct {p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->loadCachedVideoThumnail()Z

    move-result v1

    return v1
.end method

.method private drawMarginsAround(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .registers 18
    .parameter "c"
    .parameter "rect"

    .prologue
    .line 437
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 438
    .local v8, paint:Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->bgcolor()J

    move-result-wide v11

    long-to-int v11, v11

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 445
    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v13

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/RectF;->top:F

    float-to-int v14, v14

    add-int/lit8 v14, v14, -0x1

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 446
    .local v10, t:Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    const/4 v11, 0x0

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v12, v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v14

    invoke-direct {v3, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 447
    .local v3, b:Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    const/4 v11, 0x0

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/RectF;->top:F

    float-to-int v12, v12

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/RectF;->left:F

    float-to-int v13, v13

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v14, v14

    invoke-direct {v6, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 448
    .local v6, l:Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/RectF;->right:F

    float-to-int v11, v11

    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/RectF;->top:F

    float-to-int v12, v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v13

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v14, v14

    invoke-direct {v9, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 449
    .local v9, r:Landroid/graphics/Rect;
    const/4 v11, 0x4

    new-array v1, v11, [Landroid/graphics/Rect;

    const/4 v11, 0x0

    aput-object v10, v1, v11

    const/4 v11, 0x1

    aput-object v3, v1, v11

    const/4 v11, 0x2

    aput-object v6, v1, v11

    const/4 v11, 0x3

    aput-object v9, v1, v11

    .line 450
    .local v1, arr:[Landroid/graphics/Rect;
    move-object v2, v1

    .local v2, arr$:[Landroid/graphics/Rect;
    array-length v7, v2

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_73
    if-ge v5, v7, :cond_7f

    aget-object v4, v2, v5

    .line 452
    .local v4, dr:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 450
    add-int/lit8 v5, v5, 0x1

    goto :goto_73

    .line 454
    .end local v4           #dr:Landroid/graphics/Rect;
    :cond_7f
    return-void
.end method

.method private static getContentResolver()Landroid/content/ContentResolver;
    .registers 1

    .prologue
    .line 234
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private getDefaulVideoThumbnail()Landroid/graphics/Bitmap;
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 622
    const/4 v0, 0x0

    .line 623
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/samsung/swift/security/SecurityManager;->instance()Lcom/samsung/swift/security/SecurityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/swift/security/SecurityManager;->getAuthorisedConnections()[Lcom/samsung/swift/security/Connection;

    move-result-object v1

    .line 625
    .local v1, connections:[Lcom/samsung/swift/security/Connection;
    array-length v2, v1

    if-lez v2, :cond_54

    .line 627
    aget-object v2, v1, v5

    invoke-interface {v2}, Lcom/samsung/swift/security/Connection;->userAgent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Windows Phone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_46

    aget-object v2, v1, v5

    invoke-interface {v2}, Lcom/samsung/swift/security/Connection;->userAgent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "iPhone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_46

    aget-object v2, v1, v5

    invoke-interface {v2}, Lcom/samsung/swift/security/Connection;->userAgent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "iPod"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_46

    aget-object v2, v1, v5

    invoke-interface {v2}, Lcom/samsung/swift/security/Connection;->userAgent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Android"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_57

    .line 632
    :cond_46
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/swift/R$raw;->default_mobile_video_thumb:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 640
    :cond_54
    :goto_54
    if-eqz v0, :cond_66

    .line 647
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_56
    return-object v0

    .line 636
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_57
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/swift/R$raw;->default_video_thumb:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_54

    .line 647
    :cond_66
    const/4 v0, 0x0

    goto :goto_56
.end method

.method private getDefaultImageThumbnail()Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 348
    const/4 v0, 0x0

    .line 349
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/swift/R$raw;->default_photo_thumb:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 350
    return-object v0
.end method

.method private loadCachedImageThumnail()Z
    .registers 26

    .prologue
    .line 239
    const/4 v2, 0x2

    new-array v0, v2, [Landroid/net/Uri;

    move-object/from16 v20, v0

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v3, v20, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v3, v20, v2

    .line 240
    .local v20, mediaUri:[Landroid/net/Uri;
    const/4 v2, 0x2

    new-array v0, v2, [Landroid/net/Uri;

    move-object/from16 v24, v0

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v3, v24, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/provider/MediaStore$Images$Thumbnails;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v3, v24, v2

    .line 242
    .local v24, thumbnailUri:[Landroid/net/Uri;
    const/16 v16, 0x0

    .local v16, i:I
    :goto_20
    move-object/from16 v0, v20

    array-length v2, v0

    move/from16 v0, v16

    if-eq v0, v2, :cond_17b

    .line 245
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    .line 246
    .local v4, proj:[Ljava/lang/String;
    const-string v22, "_data like ?"

    .line 247
    .local v22, selection:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->inputFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 249
    .local v6, selectionArgs:[Ljava/lang/String;
    invoke-static {}, Lcom/samsung/swift/service/media/ThumbnailRequest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    aget-object v3, v20, v16

    const-string v5, "_data like ?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 255
    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_179

    .line 257
    const/16 v23, 0x0

    .line 260
    .local v23, tCursor:Landroid/database/Cursor;
    :try_start_65
    const-string v2, "_id"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 261
    .local v13, column_index:I
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_16f

    move-result v2

    if-nez v2, :cond_7c

    .line 331
    if-eqz v23, :cond_76

    .line 333
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 335
    :cond_76
    :goto_76
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 242
    add-int/lit8 v16, v16, 0x1

    goto :goto_20

    .line 266
    :cond_7c
    :try_start_7c
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 267
    .local v17, image_id:Ljava/lang/String;
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 271
    .local v18, imgId_ori:I
    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_data"

    aput-object v3, v9, v2

    .line 274
    .local v9, tProj:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "image_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "width"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->width()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "height"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->height()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 280
    .local v10, tSelection:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/swift/service/media/ThumbnailRequest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    aget-object v8, v24, v16

    const/4 v11, 0x0

    const-string v12, "height asc"

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 286
    if-eqz v23, :cond_168

    .line 288
    const-string v2, "_data"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 289
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_f5
    .catchall {:try_start_7c .. :try_end_f5} :catchall_16f

    move-result v2

    if-nez v2, :cond_ff

    .line 331
    if-eqz v23, :cond_76

    .line 333
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto/16 :goto_76

    .line 295
    :cond_ff
    :try_start_ff
    move-object/from16 v0, v23

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_104
    .catchall {:try_start_ff .. :try_end_104} :catchall_16f

    move-result-object v15

    .line 296
    .local v15, filePath:Ljava/lang/String;
    if-nez v15, :cond_111

    .line 299
    const/4 v2, 0x0

    .line 331
    if-eqz v23, :cond_10d

    .line 333
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 335
    .end local v15           #filePath:Ljava/lang/String;
    :cond_10d
    :goto_10d
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 343
    .end local v4           #proj:[Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v9           #tProj:[Ljava/lang/String;
    .end local v10           #tSelection:Ljava/lang/String;
    .end local v13           #column_index:I
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v17           #image_id:Ljava/lang/String;
    .end local v18           #imgId_ori:I
    .end local v22           #selection:Ljava/lang/String;
    .end local v23           #tCursor:Landroid/database/Cursor;
    :goto_110
    return v2

    .line 301
    .restart local v4       #proj:[Ljava/lang/String;
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    .restart local v9       #tProj:[Ljava/lang/String;
    .restart local v10       #tSelection:Ljava/lang/String;
    .restart local v13       #column_index:I
    .restart local v14       #cursor:Landroid/database/Cursor;
    .restart local v15       #filePath:Ljava/lang/String;
    .restart local v17       #image_id:Ljava/lang/String;
    .restart local v18       #imgId_ori:I
    .restart local v22       #selection:Ljava/lang/String;
    .restart local v23       #tCursor:Landroid/database/Cursor;
    :cond_111
    :try_start_111
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/swift/service/media/ThumbnailRequest;->createAndSendImageThumbnail(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_161

    .line 304
    sget-object v2, Lcom/samsung/swift/service/media/ThumbnailRequest;->TRACE_LOG:Ljava/lang/String;

    const-string v3, "Trying with MediaStore.Images.Thumbnails.getThumbnail()"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v21, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 306
    .local v21, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    move-object/from16 v0, v21

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 307
    invoke-static {}, Lcom/samsung/swift/service/media/ThumbnailRequest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move/from16 v0, v18

    int-to-long v7, v0

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-static {v2, v7, v8, v3, v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 309
    .local v19, imgThumb:Landroid/graphics/Bitmap;
    if-nez v19, :cond_153

    .line 312
    invoke-direct/range {p0 .. p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->getDefaultImageThumbnail()Landroid/graphics/Bitmap;

    move-result-object v19

    .line 313
    if-nez v19, :cond_153

    .line 315
    sget-object v2, Lcom/samsung/swift/service/media/ThumbnailRequest;->TRACE_LOG:Ljava/lang/String;

    const-string v3, "NO default thumbail for image in server"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14c
    .catchall {:try_start_111 .. :try_end_14c} :catchall_16f

    .line 316
    const/4 v2, 0x0

    .line 331
    if-eqz v23, :cond_10d

    .line 333
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto :goto_10d

    .line 319
    :cond_153
    :try_start_153
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/samsung/swift/service/media/ThumbnailRequest;->createAndSendImageThumbnail(Landroid/graphics/Bitmap;)V
    :try_end_15a
    .catchall {:try_start_153 .. :try_end_15a} :catchall_16f

    .line 320
    const/4 v2, 0x1

    .line 331
    if-eqz v23, :cond_10d

    .line 333
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto :goto_10d

    .line 322
    .end local v19           #imgThumb:Landroid/graphics/Bitmap;
    .end local v21           #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_161
    const/4 v2, 0x1

    .line 331
    if-eqz v23, :cond_10d

    .line 333
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto :goto_10d

    .line 326
    .end local v15           #filePath:Ljava/lang/String;
    :cond_168
    const/4 v2, 0x0

    .line 331
    if-eqz v23, :cond_10d

    .line 333
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto :goto_10d

    .line 331
    .end local v9           #tProj:[Ljava/lang/String;
    .end local v10           #tSelection:Ljava/lang/String;
    .end local v13           #column_index:I
    .end local v17           #image_id:Ljava/lang/String;
    .end local v18           #imgId_ori:I
    :catchall_16f
    move-exception v2

    if-eqz v23, :cond_175

    .line 333
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 335
    :cond_175
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 331
    throw v2

    .line 340
    .end local v23           #tCursor:Landroid/database/Cursor;
    :cond_179
    const/4 v2, 0x0

    goto :goto_110

    .line 343
    .end local v4           #proj:[Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v22           #selection:Ljava/lang/String;
    :cond_17b
    const/4 v2, 0x0

    goto :goto_110
.end method

.method private loadCachedVideoThumnail()Z
    .registers 20

    .prologue
    .line 554
    const/4 v2, 0x2

    new-array v11, v2, [Landroid/net/Uri;

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v3, v11, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v3, v11, v2

    .line 555
    .local v11, mediaUri:[Landroid/net/Uri;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_e
    array-length v2, v11

    if-eq v10, v2, :cond_b2

    .line 558
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    .line 559
    .local v4, proj:[Ljava/lang/String;
    const-string v13, "_data like ?"

    .line 560
    .local v13, selection:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->inputFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 561
    .local v6, selectionArgs:[Ljava/lang/String;
    invoke-static {}, Lcom/samsung/swift/service/media/ThumbnailRequest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    aget-object v3, v11, v10

    const-string v5, "_data like ?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 567
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_b0

    .line 569
    const/4 v14, 0x0

    .line 573
    .local v14, tCursor:Landroid/database/Cursor;
    :try_start_4e
    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 574
    .local v8, column_index:I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_a6

    move-result v2

    if-nez v2, :cond_65

    .line 604
    if-eqz v14, :cond_5f

    .line 606
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 608
    :cond_5f
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 555
    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    .line 579
    :cond_65
    :try_start_65
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 583
    .local v16, video_id:I
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 584
    .local v12, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput v2, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 586
    invoke-static {}, Lcom/samsung/swift/service/media/ThumbnailRequest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v17, v0

    const/4 v3, 0x1

    move-wide/from16 v0, v17

    invoke-static {v2, v0, v1, v3, v12}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 587
    .local v15, vidThumb:Landroid/graphics/Bitmap;
    if-nez v15, :cond_9a

    .line 590
    invoke-direct/range {p0 .. p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->getDefaulVideoThumbnail()Landroid/graphics/Bitmap;

    move-result-object v15

    .line 591
    if-nez v15, :cond_9a

    .line 593
    sget-object v2, Lcom/samsung/swift/service/media/ThumbnailRequest;->TRACE_LOG:Ljava/lang/String;

    const-string v3, "NO default thumbail for video in server"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_65 .. :try_end_90} :catchall_a6

    .line 594
    const/4 v2, 0x0

    .line 604
    if-eqz v14, :cond_96

    .line 606
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 608
    :cond_96
    :goto_96
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 616
    .end local v4           #proj:[Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v8           #column_index:I
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v12           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v13           #selection:Ljava/lang/String;
    .end local v14           #tCursor:Landroid/database/Cursor;
    .end local v15           #vidThumb:Landroid/graphics/Bitmap;
    .end local v16           #video_id:I
    :goto_99
    return v2

    .line 598
    .restart local v4       #proj:[Ljava/lang/String;
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    .restart local v8       #column_index:I
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v12       #opts:Landroid/graphics/BitmapFactory$Options;
    .restart local v13       #selection:Ljava/lang/String;
    .restart local v14       #tCursor:Landroid/database/Cursor;
    .restart local v15       #vidThumb:Landroid/graphics/Bitmap;
    .restart local v16       #video_id:I
    :cond_9a
    :try_start_9a
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/samsung/swift/service/media/ThumbnailRequest;->createAndSendImageThumbnail(Landroid/graphics/Bitmap;)V
    :try_end_9f
    .catchall {:try_start_9a .. :try_end_9f} :catchall_a6

    .line 600
    const/4 v2, 0x1

    .line 604
    if-eqz v14, :cond_96

    .line 606
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_96

    .line 604
    .end local v8           #column_index:I
    .end local v12           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v15           #vidThumb:Landroid/graphics/Bitmap;
    .end local v16           #video_id:I
    :catchall_a6
    move-exception v2

    if-eqz v14, :cond_ac

    .line 606
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 608
    :cond_ac
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 604
    throw v2

    .line 613
    .end local v14           #tCursor:Landroid/database/Cursor;
    :cond_b0
    const/4 v2, 0x0

    goto :goto_99

    .line 616
    .end local v4           #proj:[Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v13           #selection:Ljava/lang/String;
    :cond_b2
    const/4 v2, 0x0

    goto :goto_99
.end method

.method private makeThumbnail(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 21
    .parameter "bitmap"

    .prologue
    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->outputMimeType()Ljava/lang/String;

    move-result-object v13

    const-string v14, "image/png"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->bgcolor()J

    move-result-wide v13

    const-wide/32 v15, -0x1000000

    or-long/2addr v13, v15

    const-wide/32 v15, -0x1000000

    cmp-long v13, v13, v15

    if-eqz v13, :cond_6f

    .line 466
    sget-object v13, Lcom/samsung/swift/service/media/ThumbnailRequest;->TRACE_LOG:Ljava/lang/String;

    const-string v14, "Thumbnail depth 32bit"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 476
    .local v3, config:Landroid/graphics/Bitmap$Config;
    :goto_24
    const/4 v12, 0x0

    .line 481
    .local v12, workArea:Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->width()I

    move-result v14

    if-gt v13, v14, :cond_79

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->height()I

    move-result v14

    if-ge v13, v14, :cond_79

    .line 483
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 484
    .local v11, width:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 502
    .local v5, height:I
    :goto_41
    if-gtz v11, :cond_51

    .line 504
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->width()I

    move-result v14

    if-gt v13, v14, :cond_ea

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 507
    :cond_51
    :goto_51
    if-gtz v5, :cond_61

    .line 509
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->height()I

    move-result v14

    if-gt v13, v14, :cond_f0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 513
    :cond_61
    :goto_61
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->withBorder()Z

    move-result v13

    if-nez v13, :cond_f6

    .line 515
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v11, v5, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 546
    :goto_6e
    return-object v12

    .line 472
    .end local v3           #config:Landroid/graphics/Bitmap$Config;
    .end local v5           #height:I
    .end local v11           #width:I
    .end local v12           #workArea:Landroid/graphics/Bitmap;
    :cond_6f
    sget-object v13, Lcom/samsung/swift/service/media/ThumbnailRequest;->TRACE_LOG:Ljava/lang/String;

    const-string v14, "Thumbnail depth 16bit"

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .restart local v3       #config:Landroid/graphics/Bitmap$Config;
    goto :goto_24

    .line 486
    .restart local v12       #workArea:Landroid/graphics/Bitmap;
    :cond_79
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-double v13, v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->height()I

    move-result v15

    int-to-double v15, v15

    div-double/2addr v13, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-double v15, v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->width()I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v15, v15, v17

    cmpl-double v13, v13, v15

    if-lez v13, :cond_ac

    .line 488
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->height()I

    move-result v14

    mul-int/2addr v13, v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    div-int v11, v13, v14

    .line 489
    .restart local v11       #width:I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->height()I

    move-result v5

    .restart local v5       #height:I
    goto :goto_41

    .line 491
    .end local v5           #height:I
    .end local v11           #width:I
    :cond_ac
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-double v13, v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->height()I

    move-result v15

    int-to-double v15, v15

    div-double/2addr v13, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-double v15, v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->width()I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v15, v15, v17

    cmpg-double v13, v13, v15

    if-gez v13, :cond_e0

    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->width()I

    move-result v11

    .line 494
    .restart local v11       #width:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->width()I

    move-result v14

    mul-int/2addr v13, v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    div-int v5, v13, v14

    .restart local v5       #height:I
    goto/16 :goto_41

    .line 498
    .end local v5           #height:I
    .end local v11           #width:I
    :cond_e0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->width()I

    move-result v11

    .line 499
    .restart local v11       #width:I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->height()I

    move-result v5

    .restart local v5       #height:I
    goto/16 :goto_41

    .line 505
    :cond_ea
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->width()I

    move-result v11

    goto/16 :goto_51

    .line 510
    :cond_f0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->height()I

    move-result v5

    goto/16 :goto_61

    .line 520
    :cond_f6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->width()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->height()I

    move-result v14

    invoke-static {v13, v14, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 522
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 524
    .local v2, c:Landroid/graphics/Canvas;
    sget-object v13, Lcom/samsung/swift/service/media/ThumbnailRequest;->TRACE_LOG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Thumbnail graphics size "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->width()I

    move-result v13

    sub-int/2addr v13, v11

    div-int/lit8 v7, v13, 0x2

    .line 527
    .local v7, offsetX:I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->height()I

    move-result v13

    sub-int/2addr v13, v5

    div-int/lit8 v8, v13, 0x2

    .line 529
    .local v8, offsetY:I
    sget-object v13, Lcom/samsung/swift/service/media/ThumbnailRequest;->TRACE_LOG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Thumbnail corner at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    new-instance v10, Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v10, v13, v14, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 532
    .local v10, src:Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v13, v7

    int-to-float v14, v8

    add-int v15, v11, v7

    int-to-float v15, v15

    add-int v16, v5, v8

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v4, v13, v14, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 534
    .local v4, dest:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/samsung/swift/service/media/ThumbnailRequest;->drawMarginsAround(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 536
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 537
    .local v6, matrix:Landroid/graphics/Matrix;
    sget-object v13, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v6, v10, v4, v13}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 539
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 541
    .local v9, paint:Landroid/graphics/Paint;
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setDither(Z)V

    .line 542
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 543
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto/16 :goto_6e
.end method


# virtual methods
.method public native bgcolor()J
.end method

.method public native height()I
.end method

.method public native outputFileName()Ljava/lang/String;
.end method

.method public process()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/swift/service/media/UnsupportedFormatException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-super {p0}, Lcom/samsung/swift/service/media/Request;->process()V

    .line 206
    invoke-virtual {p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->isImageInputFormat()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 209
    invoke-direct {p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->loadCachedImageThumnail()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 210
    invoke-virtual {p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->getInputFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/swift/service/media/ThumbnailRequest;->createAndSendImageThumbnail(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 213
    invoke-direct {p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->getDefaultImageThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 214
    .local v0, imgThumb:Landroid/graphics/Bitmap;
    if-nez v0, :cond_27

    .line 216
    sget-object v1, Lcom/samsung/swift/service/media/ThumbnailRequest;->TRACE_LOG:Ljava/lang/String;

    const-string v2, "NO default thumbail for image in server"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .end local v0           #imgThumb:Landroid/graphics/Bitmap;
    :cond_26
    :goto_26
    return-void

    .line 219
    .restart local v0       #imgThumb:Landroid/graphics/Bitmap;
    :cond_27
    invoke-direct {p0, v0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->createAndSendImageThumbnail(Landroid/graphics/Bitmap;)V

    .line 223
    .end local v0           #imgThumb:Landroid/graphics/Bitmap;
    :cond_2a
    invoke-virtual {p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->isVideoInputFormat()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 226
    invoke-direct {p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->loadCachedVideoThumnail()Z

    move-result v1

    if-nez v1, :cond_26

    .line 227
    invoke-virtual {p0}, Lcom/samsung/swift/service/media/ThumbnailRequest;->getInputFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/swift/service/media/ThumbnailRequest;->createAndSendVideoThumbnail(Ljava/io/File;)Z

    goto :goto_26
.end method

.method public native setBgColor(J)V
.end method

.method public native setHeight(I)V
.end method

.method public native setOutputFileName(Ljava/lang/String;)V
.end method

.method public native setWidth(I)V
.end method

.method public native width()I
.end method

.method public native withBorder()Z
.end method
