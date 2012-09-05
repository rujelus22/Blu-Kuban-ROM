.class public Lcom/quramsoft/xiv/XIVRegionManager;
.super Ljava/lang/Object;
.source "XIVRegionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;,
        Lcom/quramsoft/xiv/XIVRegionManager$Tile;
    }
.end annotation


# static fields
.field private static BORDER_WIDTH:I

.field private static MAX_TILE:I

.field private static MAX_WAITING_TIME:I

.field private static TILE_UNIT:I

.field private static TILE_UNIT_WITH_BORDER:I

.field private static mBrd:Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;

.field private static mInputQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lcom/quramsoft/xiv/XIVRegionManager$Tile;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsNeededTileDecoding:Z

.field private static mOutputQueue:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque",
            "<",
            "Lcom/quramsoft/xiv/XIVRegionManager$Tile;",
            ">;"
        }
    .end annotation
.end field

.field private static mRDThread:Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;

.field private static mSRFilePath:Ljava/lang/String;

.field private static mSRHeight:I

.field private static mSRWidth:I

.field private static mSampleSize:I

.field private static mTexture:[I

.field private static mTextureIds:[I

.field private static mTileArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/quramsoft/xiv/XIVRegionManager$Tile;",
            ">;"
        }
    .end annotation
.end field

.field private static mTotalTexture:I

.field private static sSuperResolutionGrid:Lcom/cooliris/media/GridQuad;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;

    invoke-direct {v0}, Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;-><init>()V

    sput-object v0, Lcom/quramsoft/xiv/XIVRegionManager;->mBrd:Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;

    .line 37
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/quramsoft/xiv/XIVRegionManager;->mSRFilePath:Ljava/lang/String;

    .line 38
    sput v2, Lcom/quramsoft/xiv/XIVRegionManager;->mSRWidth:I

    .line 39
    sput v2, Lcom/quramsoft/xiv/XIVRegionManager;->mSRHeight:I

    .line 41
    const/16 v0, 0x1f4

    sput v0, Lcom/quramsoft/xiv/XIVRegionManager;->MAX_WAITING_TIME:I

    .line 43
    invoke-static {}, Lcom/quramsoft/xiv/XIVRegionManager;->getMaxTile()I

    move-result v0

    sput v0, Lcom/quramsoft/xiv/XIVRegionManager;->MAX_TILE:I

    .line 45
    new-array v0, v3, [I

    sput-object v0, Lcom/quramsoft/xiv/XIVRegionManager;->mTexture:[I

    .line 46
    sget v0, Lcom/quramsoft/xiv/XIVRegionManager;->MAX_TILE:I

    new-array v0, v0, [I

    sput-object v0, Lcom/quramsoft/xiv/XIVRegionManager;->mTextureIds:[I

    .line 47
    sput v2, Lcom/quramsoft/xiv/XIVRegionManager;->mTotalTexture:I

    .line 48
    sput v3, Lcom/quramsoft/xiv/XIVRegionManager;->mSampleSize:I

    .line 50
    sput-boolean v3, Lcom/quramsoft/xiv/XIVRegionManager;->mIsNeededTileDecoding:Z

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/quramsoft/xiv/XIVRegionManager;->mRDThread:Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/quramsoft/xiv/XIVRegionManager;->mTileArray:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    sput-object v0, Lcom/quramsoft/xiv/XIVRegionManager;->mInputQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 55
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    sput-object v0, Lcom/quramsoft/xiv/XIVRegionManager;->mOutputQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 57
    const/16 v0, 0x200

    sput v0, Lcom/quramsoft/xiv/XIVRegionManager;->TILE_UNIT_WITH_BORDER:I

    .line 58
    const/4 v0, 0x4

    sput v0, Lcom/quramsoft/xiv/XIVRegionManager;->BORDER_WIDTH:I

    .line 59
    sget v0, Lcom/quramsoft/xiv/XIVRegionManager;->TILE_UNIT_WITH_BORDER:I

    sget v1, Lcom/quramsoft/xiv/XIVRegionManager;->BORDER_WIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/quramsoft/xiv/XIVRegionManager;->TILE_UNIT:I

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/quramsoft/xiv/XIVRegionManager;->mBrd:Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/quramsoft/xiv/XIVRegionManager;->mSRFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;)V
    .registers 1
    .parameter

    .prologue
    .line 35
    sput-object p0, Lcom/quramsoft/xiv/XIVRegionManager;->mBrd:Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;

    return-void
.end method

.method static synthetic access$3()Ljava/util/concurrent/LinkedBlockingDeque;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/quramsoft/xiv/XIVRegionManager;->mInputQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    return-object v0
.end method

.method static synthetic access$4()Ljava/util/concurrent/LinkedBlockingDeque;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/quramsoft/xiv/XIVRegionManager;->mOutputQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    return-object v0
.end method

.method static synthetic access$5()I
    .registers 1

    .prologue
    .line 48
    sget v0, Lcom/quramsoft/xiv/XIVRegionManager;->mSampleSize:I

    return v0
.end method

.method public static clearAll()V
    .registers 8

    .prologue
    const-wide/16 v6, 0x19

    .line 416
    sget-object v4, Lcom/quramsoft/xiv/XIVRegionManager;->mRDThread:Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;

    if-eqz v4, :cond_17

    .line 417
    sget v4, Lcom/quramsoft/xiv/XIVRegionManager;->MAX_WAITING_TIME:I

    int-to-long v1, v4

    .line 418
    .local v1, maxWaitingTime:J
    :goto_9
    sget-object v4, Lcom/quramsoft/xiv/XIVRegionManager;->mRDThread:Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;

    invoke-virtual {v4}, Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;->isDecoding()Z

    move-result v4

    if-eqz v4, :cond_17

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gez v4, :cond_30

    .line 428
    :cond_17
    sget-object v4, Lcom/quramsoft/xiv/XIVRegionManager;->mInputQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 429
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/quramsoft/xiv/XIVRegionManager$Tile;>;"
    :cond_1d
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_37

    .line 438
    sget-object v4, Lcom/quramsoft/xiv/XIVRegionManager;->mOutputQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 439
    :cond_29
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4f

    .line 447
    return-void

    .line 420
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/quramsoft/xiv/XIVRegionManager$Tile;>;"
    :cond_30
    const-wide/16 v4, 0x19

    :try_start_32
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_35} :catch_67

    .line 421
    sub-long/2addr v1, v6

    goto :goto_9

    .line 430
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/quramsoft/xiv/XIVRegionManager$Tile;>;"
    :cond_37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/quramsoft/xiv/XIVRegionManager$Tile;

    .line 431
    .local v3, tile:Lcom/quramsoft/xiv/XIVRegionManager$Tile;
    iget-object v4, v3, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1d

    .line 432
    iget-object v4, v3, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 433
    iget-object v4, v3, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1d

    .line 440
    .end local v3           #tile:Lcom/quramsoft/xiv/XIVRegionManager$Tile;
    :cond_4f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/quramsoft/xiv/XIVRegionManager$Tile;

    .line 441
    .restart local v3       #tile:Lcom/quramsoft/xiv/XIVRegionManager$Tile;
    iget-object v4, v3, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_29

    .line 442
    iget-object v4, v3, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_29

    .line 443
    iget-object v4, v3, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_29

    .line 422
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/quramsoft/xiv/XIVRegionManager$Tile;>;"
    .end local v3           #tile:Lcom/quramsoft/xiv/XIVRegionManager$Tile;
    :catch_67
    move-exception v4

    goto :goto_9
.end method

.method public static createGridQuad()V
    .registers 7

    .prologue
    const/high16 v4, 0x3f80

    const/high16 v0, 0x3f00

    const/4 v2, 0x0

    .line 213
    const/4 v6, 0x0

    move v1, v0

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/cooliris/media/GridQuad;->createGridQuad(FFFFFFZ)Lcom/cooliris/media/GridQuad;

    move-result-object v0

    sput-object v0, Lcom/quramsoft/xiv/XIVRegionManager;->sSuperResolutionGrid:Lcom/cooliris/media/GridQuad;

    .line 214
    sget-object v0, Lcom/quramsoft/xiv/XIVRegionManager;->sSuperResolutionGrid:Lcom/cooliris/media/GridQuad;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cooliris/media/GridQuad;->setDynamic(Z)V

    .line 215
    return-void
.end method

.method public static deleteAllTextures(Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 7
    .parameter "gl"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 625
    sget v2, Lcom/quramsoft/xiv/XIVRegionManager;->mTotalTexture:I

    if-eqz v2, :cond_e

    .line 626
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    sget v2, Lcom/quramsoft/xiv/XIVRegionManager;->MAX_TILE:I

    if-lt v0, v2, :cond_f

    .line 635
    sput v3, Lcom/quramsoft/xiv/XIVRegionManager;->mTotalTexture:I

    .line 637
    .end local v0           #i:I
    :cond_e
    return-void

    .line 627
    .restart local v0       #i:I
    :cond_f
    sget-object v2, Lcom/quramsoft/xiv/XIVRegionManager;->mTextureIds:[I

    aget v2, v2, v0

    if-eq v2, v4, :cond_20

    .line 628
    new-array v1, v5, [I

    .line 629
    .local v1, texId:[I
    sget-object v2, Lcom/quramsoft/xiv/XIVRegionManager;->mTextureIds:[I

    aget v2, v2, v0

    aput v2, v1, v3

    .line 630
    invoke-interface {p0, v5, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteTextures(I[II)V

    .line 632
    .end local v1           #texId:[I
    :cond_20
    sget-object v2, Lcom/quramsoft/xiv/XIVRegionManager;->mTextureIds:[I

    aput v4, v2, v0

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public static drawRegion(Ljavax/microedition/khronos/opengles/GL11;Lcom/cooliris/media/RenderView;Lcom/cooliris/media/DisplayItem;Lcom/cooliris/media/GridCamera;Lcom/cooliris/media/GridQuad;)V
    .registers 25
    .parameter "gl"
    .parameter "view"
    .parameter "displayItem"
    .parameter "camera"
    .parameter "quad"

    .prologue
    .line 488
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/cooliris/app/App;->getGridLayer()Lcom/cooliris/media/GridLayer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/cooliris/media/GridLayer;->getZoomValue()F

    move-result v16

    .line 491
    .local v16, zoomValue:F
    sget-object v17, Lcom/quramsoft/xiv/XIVRegionManager;->mSRFilePath:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_ca

    .line 493
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Lcom/quramsoft/xiv/XIVRegionManager;->stopDecodingThread(Z)Z

    move-result v17

    if-nez v17, :cond_2d

    .line 572
    :cond_2c
    :goto_2c
    return-void

    .line 497
    :cond_2d
    sget-object v18, Lcom/quramsoft/xiv/XIVRegionManager;->mSRFilePath:Ljava/lang/String;

    monitor-enter v18

    .line 498
    :try_start_30
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    move-object/from16 v17, v0

    sput-object v17, Lcom/quramsoft/xiv/XIVRegionManager;->mSRFilePath:Ljava/lang/String;

    .line 497
    monitor-exit v18
    :try_end_3f
    .catchall {:try_start_30 .. :try_end_3f} :catchall_a9

    .line 502
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 503
    .local v8, opts:Landroid/graphics/BitmapFactory$Options;
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 504
    sget-object v17, Lcom/quramsoft/xiv/XIVRegionManager;->mSRFilePath:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-static {v0, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 506
    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v17, v0

    sput v17, Lcom/quramsoft/xiv/XIVRegionManager;->mSRWidth:I

    .line 507
    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v17, v0

    sput v17, Lcom/quramsoft/xiv/XIVRegionManager;->mSRHeight:I

    .line 509
    sget v17, Lcom/quramsoft/xiv/XIVRegionManager;->mSRWidth:I

    const/16 v18, 0x400

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_71

    sget v17, Lcom/quramsoft/xiv/XIVRegionManager;->mSRHeight:I

    const/16 v18, 0x400

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_ac

    .line 510
    :cond_71
    const/16 v17, 0x1

    sput-boolean v17, Lcom/quramsoft/xiv/XIVRegionManager;->mIsNeededTileDecoding:Z

    .line 515
    :goto_75
    sget-object v18, Lcom/quramsoft/xiv/XIVRegionManager;->mBrd:Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;

    monitor-enter v18

    .line 516
    :try_start_78
    sget-object v17, Lcom/quramsoft/xiv/XIVRegionManager;->mBrd:Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;

    invoke-virtual/range {v17 .. v17}, Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;->isRecycled()Z

    move-result v17

    if-nez v17, :cond_85

    .line 517
    sget-object v17, Lcom/quramsoft/xiv/XIVRegionManager;->mBrd:Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;

    invoke-virtual/range {v17 .. v17}, Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;->recycle()V

    .line 515
    :cond_85
    monitor-exit v18
    :try_end_86
    .catchall {:try_start_78 .. :try_end_86} :catchall_b1

    .line 520
    const/4 v9, 0x1

    .line 521
    .local v9, sampleSize:I
    const/4 v5, 0x1

    .line 522
    .local v5, neededTile:I
    sget v12, Lcom/quramsoft/xiv/XIVRegionManager;->TILE_UNIT:I

    .line 524
    .local v12, tileUnit:I
    :goto_8a
    sget v17, Lcom/quramsoft/xiv/XIVRegionManager;->mSRWidth:I

    div-int v11, v17, v9

    .line 525
    .local v11, sampledWidth:I
    sget v17, Lcom/quramsoft/xiv/XIVRegionManager;->mSRHeight:I

    div-int v10, v17, v9

    .line 526
    .local v10, sampledHeight:I
    add-int v17, v11, v12

    add-int/lit8 v17, v17, -0x1

    div-int v6, v17, v12

    .line 527
    .local v6, neededTileX:I
    add-int v17, v10, v12

    add-int/lit8 v17, v17, -0x1

    div-int v7, v17, v12

    .line 529
    .local v7, neededTileY:I
    mul-int v5, v6, v7

    .line 530
    sget v17, Lcom/quramsoft/xiv/XIVRegionManager;->MAX_TILE:I

    move/from16 v0, v17

    if-le v5, v0, :cond_b4

    .line 531
    shl-int/lit8 v9, v9, 0x1

    goto :goto_8a

    .line 497
    .end local v5           #neededTile:I
    .end local v6           #neededTileX:I
    .end local v7           #neededTileY:I
    .end local v8           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v9           #sampleSize:I
    .end local v10           #sampledHeight:I
    .end local v11           #sampledWidth:I
    .end local v12           #tileUnit:I
    :catchall_a9
    move-exception v17

    :try_start_aa
    monitor-exit v18
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    throw v17

    .line 512
    .restart local v8       #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_ac
    const/16 v17, 0x0

    sput-boolean v17, Lcom/quramsoft/xiv/XIVRegionManager;->mIsNeededTileDecoding:Z

    goto :goto_75

    .line 515
    :catchall_b1
    move-exception v17

    :try_start_b2
    monitor-exit v18
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    throw v17

    .line 533
    .restart local v5       #neededTile:I
    .restart local v6       #neededTileX:I
    .restart local v7       #neededTileY:I
    .restart local v9       #sampleSize:I
    .restart local v10       #sampledHeight:I
    .restart local v11       #sampledWidth:I
    .restart local v12       #tileUnit:I
    :cond_b4
    sput v9, Lcom/quramsoft/xiv/XIVRegionManager;->mSampleSize:I

    .line 538
    invoke-static {}, Lcom/quramsoft/xiv/XIVRegionManager;->generateTileArray()V

    .line 540
    new-instance v17, Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;

    invoke-direct/range {v17 .. v17}, Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;-><init>()V

    sput-object v17, Lcom/quramsoft/xiv/XIVRegionManager;->mRDThread:Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;

    .line 541
    sget-object v17, Lcom/quramsoft/xiv/XIVRegionManager;->mRDThread:Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;->setIsStarted(Z)V

    .line 543
    invoke-static/range {p0 .. p0}, Lcom/quramsoft/xiv/XIVRegionManager;->deleteAllTextures(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 546
    .end local v5           #neededTile:I
    .end local v6           #neededTileX:I
    .end local v7           #neededTileY:I
    .end local v8           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v9           #sampleSize:I
    .end local v10           #sampledHeight:I
    .end local v11           #sampledWidth:I
    .end local v12           #tileUnit:I
    :cond_ca
    sget-boolean v17, Lcom/quramsoft/xiv/XIVRegionManager;->mIsNeededTileDecoding:Z

    if-eqz v17, :cond_2c

    .line 550
    const/high16 v17, 0x3f80

    cmpg-float v17, v16, v17

    if-lez v17, :cond_2c

    .line 553
    sget-object v17, Lcom/quramsoft/xiv/XIVRegionManager;->mSRFilePath:Ljava/lang/String;

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_f6

    sget-object v17, Lcom/quramsoft/xiv/XIVRegionManager;->mRDThread:Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;

    if-eqz v17, :cond_f6

    sget-object v17, Lcom/quramsoft/xiv/XIVRegionManager;->mRDThread:Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;

    invoke-virtual/range {v17 .. v17}, Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;->isStarted()Z

    move-result v17

    if-nez v17, :cond_f6

    .line 554
    sget-object v17, Lcom/quramsoft/xiv/XIVRegionManager;->mRDThread:Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;

    invoke-virtual/range {v17 .. v17}, Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;->start()V

    .line 555
    sget-object v17, Lcom/quramsoft/xiv/XIVRegionManager;->mRDThread:Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;->setIsStarted(Z)V

    .line 559
    :cond_f6
    move-object/from16 v0, p2

    iget v4, v0, Lcom/cooliris/media/DisplayItem;->mAnimatedImageTheta:F

    .line 560
    .local v4, degree:F
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/cooliris/media/DisplayItem;->mAnimatedPosition:Lcom/cooliris/media/Vector3f;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/cooliris/media/Vector3f;->x:F

    move/from16 v17, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/cooliris/media/GridCamera;->mOneByScale:F

    move/from16 v18, v0

    mul-float v13, v17, v18

    .line 561
    .local v13, translateX:F
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/cooliris/media/DisplayItem;->mAnimatedPosition:Lcom/cooliris/media/Vector3f;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/cooliris/media/Vector3f;->y:F

    move/from16 v17, v0

    move-object/from16 v0, p3

    iget v0, v0, Lcom/cooliris/media/GridCamera;->mOneByScale:F

    move/from16 v18, v0

    mul-float v14, v17, v18

    .line 562
    .local v14, translateY:F
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/cooliris/media/DisplayItem;->mAnimatedPosition:Lcom/cooliris/media/Vector3f;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v15, v0, Lcom/cooliris/media/Vector3f;->z:F

    .line 564
    .local v15, translateZ:F
    invoke-interface/range {p0 .. p0}, Ljavax/microedition/khronos/opengles/GL11;->glPushMatrix()V

    .line 565
    neg-float v0, v13

    move/from16 v17, v0

    neg-float v0, v14

    move/from16 v18, v0

    neg-float v0, v15

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTranslatef(FFF)V

    .line 566
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v19, 0x3f80

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-interface {v0, v4, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glRotatef(FFFF)V

    .line 568
    invoke-static/range {p0 .. p4}, Lcom/quramsoft/xiv/XIVRegionManager;->drawTilesWithThread(Ljavax/microedition/khronos/opengles/GL11;Lcom/cooliris/media/RenderView;Lcom/cooliris/media/DisplayItem;Lcom/cooliris/media/GridCamera;Lcom/cooliris/media/GridQuad;)V

    .line 570
    invoke-interface/range {p0 .. p0}, Ljavax/microedition/khronos/opengles/GL11;->glPopMatrix()V

    goto/16 :goto_2c
.end method

.method public static drawTilesWithThread(Ljavax/microedition/khronos/opengles/GL11;Lcom/cooliris/media/RenderView;Lcom/cooliris/media/DisplayItem;Lcom/cooliris/media/GridCamera;Lcom/cooliris/media/GridQuad;)V
    .registers 29
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 240
    invoke-virtual/range {p4 .. p4}, Lcom/cooliris/media/GridQuad;->getHeight()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual/range {p4 .. p4}, Lcom/cooliris/media/GridQuad;->getWidth()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 413
    :cond_14
    :goto_14
    return-void

    .line 245
    :cond_15
    new-instance v22, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 248
    sget-object v5, Lcom/quramsoft/xiv/XIVRegionManager;->mOutputQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    monitor-enter v5

    .line 249
    :try_start_1d
    sget-object v3, Lcom/quramsoft/xiv/XIVRegionManager;->mOutputQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v11

    .line 250
    const/4 v3, 0x0

    move v4, v3

    :goto_25
    if-lt v4, v11, :cond_93

    .line 248
    monitor-exit v5
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_a4

    .line 257
    invoke-virtual/range {p3 .. p3}, Lcom/cooliris/media/GridCamera;->isAnimating()Z

    move-result v3

    if-nez v3, :cond_57

    .line 259
    sget-object v4, Lcom/quramsoft/xiv/XIVRegionManager;->mInputQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    monitor-enter v4

    .line 260
    :try_start_31
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/quramsoft/xiv/XIVRegionManager;->getFocusedRect(Lcom/cooliris/media/GridCamera;Lcom/cooliris/media/DisplayItem;Lcom/cooliris/media/GridQuad;)Landroid/graphics/Rect;

    move-result-object v5

    .line 262
    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 263
    sget-object v3, Lcom/quramsoft/xiv/XIVRegionManager;->mInputQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 264
    :cond_46
    :goto_46
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_a7

    .line 271
    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 273
    :goto_50
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_bc

    .line 259
    monitor-exit v4
    :try_end_57
    .catchall {:try_start_31 .. :try_end_57} :catchall_b9

    .line 282
    :cond_57
    sget v3, Lcom/quramsoft/xiv/XIVRegionManager;->TILE_UNIT_WITH_BORDER:I

    sget v4, Lcom/quramsoft/xiv/XIVRegionManager;->mSampleSize:I

    mul-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v23, v0

    .line 284
    invoke-virtual/range {p4 .. p4}, Lcom/cooliris/media/GridQuad;->getWidth()F

    move-result v3

    sget v4, Lcom/quramsoft/xiv/XIVRegionManager;->mSRWidth:I

    int-to-float v4, v4

    div-float v4, v23, v4

    mul-float/2addr v4, v3

    .line 285
    invoke-virtual/range {p4 .. p4}, Lcom/cooliris/media/GridQuad;->getHeight()F

    move-result v3

    sget v5, Lcom/quramsoft/xiv/XIVRegionManager;->mSRHeight:I

    int-to-float v5, v5

    div-float v5, v23, v5

    mul-float/2addr v5, v3

    .line 287
    sget-object v3, Lcom/quramsoft/xiv/XIVRegionManager;->sSuperResolutionGrid:Lcom/cooliris/media/GridQuad;

    .line 288
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/cooliris/media/GridQuad;->setQuad(FFFFFFZ)V

    move/from16 v21, v11

    .line 291
    :goto_81
    if-gtz v21, :cond_cd

    .line 382
    sget-object v6, Lcom/quramsoft/xiv/XIVRegionManager;->mTileArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 383
    :cond_89
    :goto_89
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_250

    .line 412
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->requestRender()V

    goto :goto_14

    .line 251
    :cond_93
    :try_start_93
    sget-object v3, Lcom/quramsoft/xiv/XIVRegionManager;->mOutputQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/quramsoft/xiv/XIVRegionManager$Tile;

    .line 252
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    .line 250
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_25

    .line 248
    :catchall_a4
    move-exception v3

    monitor-exit v5
    :try_end_a6
    .catchall {:try_start_93 .. :try_end_a6} :catchall_a4

    throw v3

    .line 265
    :cond_a7
    :try_start_a7
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/quramsoft/xiv/XIVRegionManager$Tile;

    .line 266
    iget-object v8, v3, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mRect:Landroid/graphics/Rect;

    invoke-static {v8, v5}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_46

    .line 267
    invoke-virtual {v6, v3}, Ljava/util/concurrent/LinkedBlockingDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_46

    .line 259
    :catchall_b9
    move-exception v3

    monitor-exit v4
    :try_end_bb
    .catchall {:try_start_a7 .. :try_end_bb} :catchall_b9

    throw v3

    .line 274
    :cond_bc
    :try_start_bc
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/quramsoft/xiv/XIVRegionManager$Tile;

    .line 275
    sget-object v6, Lcom/quramsoft/xiv/XIVRegionManager;->mInputQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/LinkedBlockingDeque;->remove(Ljava/lang/Object;)Z

    .line 276
    sget-object v6, Lcom/quramsoft/xiv/XIVRegionManager;->mInputQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/LinkedBlockingDeque;->addFirst(Ljava/lang/Object;)V
    :try_end_cc
    .catchall {:try_start_bc .. :try_end_cc} :catchall_b9

    goto :goto_50

    .line 292
    :cond_cd
    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/LinkedBlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v20, v6

    check-cast v20, Lcom/quramsoft/xiv/XIVRegionManager$Tile;

    .line 294
    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sget v7, Lcom/quramsoft/xiv/XIVRegionManager;->TILE_UNIT_WITH_BORDER:I

    if-ne v6, v7, :cond_ed

    .line 295
    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget v7, Lcom/quramsoft/xiv/XIVRegionManager;->TILE_UNIT_WITH_BORDER:I

    if-eq v6, v7, :cond_118

    .line 298
    :cond_ed
    sget v6, Lcom/quramsoft/xiv/XIVRegionManager;->TILE_UNIT_WITH_BORDER:I

    .line 299
    sget v7, Lcom/quramsoft/xiv/XIVRegionManager;->TILE_UNIT_WITH_BORDER:I

    .line 300
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 297
    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 302
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 303
    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 304
    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 305
    move-object/from16 v0, v20

    iput-object v6, v0, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mBitmap:Landroid/graphics/Bitmap;

    .line 316
    :cond_118
    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 317
    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 319
    const/4 v8, 0x4

    new-array v8, v8, [F

    const/4 v9, 0x0

    .line 320
    sget v10, Lcom/quramsoft/xiv/XIVRegionManager;->BORDER_WIDTH:I

    int-to-float v10, v10

    aput v10, v8, v9

    const/4 v9, 0x1

    .line 321
    sget v10, Lcom/quramsoft/xiv/XIVRegionManager;->BORDER_WIDTH:I

    add-int/2addr v10, v7

    int-to-float v10, v10

    aput v10, v8, v9

    const/4 v9, 0x2

    .line 322
    int-to-float v6, v6

    aput v6, v8, v9

    const/4 v6, 0x3

    .line 323
    neg-int v7, v7

    int-to-float v7, v7

    aput v7, v8, v6

    .line 324
    const/4 v6, 0x1

    sget-object v7, Lcom/quramsoft/xiv/XIVRegionManager;->mTexture:[I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v6, v7, v9}, Ljavax/microedition/khronos/opengles/GL11;->glGenTextures(I[II)V

    .line 326
    invoke-interface/range {p0 .. p0}, Ljavax/microedition/khronos/opengles/GL11;->glGetError()I

    move-result v6

    if-eqz v6, :cond_168

    .line 327
    const-string v6, "XIVRegionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "gl.glGetError() = "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Ljavax/microedition/khronos/opengles/GL11;->glGetError()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_168
    sget-object v6, Lcom/quramsoft/xiv/XIVRegionManager;->mTextureIds:[I

    move-object/from16 v0, v20

    iget v7, v0, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mId:I

    sget-object v9, Lcom/quramsoft/xiv/XIVRegionManager;->mTexture:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    aput v9, v6, v7

    .line 332
    const/16 v6, 0xde1

    sget-object v7, Lcom/quramsoft/xiv/XIVRegionManager;->mTexture:[I

    const/4 v9, 0x0

    aget v7, v7, v9

    move-object/from16 v0, p0

    invoke-interface {v0, v6, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 333
    const/16 v6, 0xde1

    const v7, 0x8b9d

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v6, v7, v8, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    .line 334
    const/16 v6, 0xde1

    const/16 v7, 0x2802

    const v8, 0x812f

    move-object/from16 v0, p0

    invoke-interface {v0, v6, v7, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 335
    const/16 v6, 0xde1

    const/16 v7, 0x2803

    const v8, 0x812f

    move-object/from16 v0, p0

    invoke-interface {v0, v6, v7, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 336
    const/16 v6, 0xde1

    const/16 v7, 0x2801

    const v8, 0x46180400

    move-object/from16 v0, p0

    invoke-interface {v0, v6, v7, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 337
    const/16 v6, 0xde1

    const/16 v7, 0x2800

    const v8, 0x46180400

    move-object/from16 v0, p0

    invoke-interface {v0, v6, v7, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 339
    sget v6, Lcom/quramsoft/xiv/XIVRegionManager;->BORDER_WIDTH:I

    if-lez v6, :cond_22a

    .line 340
    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mBitmap:Landroid/graphics/Bitmap;

    .line 341
    invoke-static {v6}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v11

    .line 342
    invoke-static {v6}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v12

    .line 343
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    .line 345
    const/16 v7, 0xde1

    const/4 v8, 0x0

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 352
    const/4 v7, 0x1

    sget v8, Lcom/quramsoft/xiv/XIVRegionManager;->TILE_UNIT_WITH_BORDER:I

    invoke-static {v7, v8, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 353
    sget v7, Lcom/quramsoft/xiv/XIVRegionManager;->TILE_UNIT_WITH_BORDER:I

    const/4 v8, 0x1

    invoke-static {v7, v8, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 356
    const/16 v6, 0xde1

    const/4 v7, 0x0

    .line 357
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 356
    invoke-static/range {v6 .. v12}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 359
    const/16 v13, 0xde1

    const/4 v14, 0x0

    .line 360
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v18, v11

    move/from16 v19, v12

    .line 359
    invoke-static/range {v13 .. v19}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 362
    const/16 v6, 0xde1

    const/4 v7, 0x0

    .line 363
    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x0

    .line 362
    invoke-static/range {v6 .. v12}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 365
    const/16 v13, 0xde1

    const/4 v14, 0x0

    .line 366
    const/4 v15, 0x0

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/lit8 v16, v6, 0x1

    move/from16 v18, v11

    move/from16 v19, v12

    .line 365
    invoke-static/range {v13 .. v19}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 368
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 369
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 372
    :cond_22a
    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 373
    const/4 v6, 0x0

    move-object/from16 v0, v20

    iput-object v6, v0, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mBitmap:Landroid/graphics/Bitmap;

    .line 374
    sget-object v6, Lcom/quramsoft/xiv/XIVRegionManager;->mTexture:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object/from16 v0, v20

    iput v6, v0, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mTexId:I

    .line 375
    const/4 v6, 0x3

    move-object/from16 v0, v20

    iput v6, v0, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mLoadingStatus:I

    .line 377
    sget v6, Lcom/quramsoft/xiv/XIVRegionManager;->mTotalTexture:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/quramsoft/xiv/XIVRegionManager;->mTotalTexture:I

    .line 378
    add-int/lit8 v6, v21, -0x1

    move/from16 v21, v6

    goto/16 :goto_81

    .line 384
    :cond_250
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/quramsoft/xiv/XIVRegionManager$Tile;

    .line 385
    iget v8, v6, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mLoadingStatus:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_89

    .line 386
    invoke-interface/range {p0 .. p0}, Ljavax/microedition/khronos/opengles/GL11;->glPushMatrix()V

    .line 388
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/cooliris/media/GridQuad;->bindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 393
    iget-object v8, v6, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    const/high16 v9, 0x4000

    div-float v9, v23, v9

    add-float/2addr v8, v9

    div-float v8, v8, v23

    mul-float/2addr v8, v4

    invoke-virtual/range {p4 .. p4}, Lcom/cooliris/media/GridQuad;->getWidth()F

    move-result v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    .line 394
    iget-object v9, v6, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    const/high16 v10, 0x4000

    div-float v10, v23, v10

    add-float/2addr v9, v10

    div-float v9, v9, v23

    mul-float/2addr v9, v5

    invoke-virtual/range {p4 .. p4}, Lcom/cooliris/media/GridQuad;->getHeight()F

    move-result v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    .line 396
    const/4 v10, 0x1

    const/16 v11, 0x303

    move-object/from16 v0, p0

    invoke-interface {v0, v10, v11}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 398
    neg-float v8, v8

    neg-float v9, v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v8, v9, v10}, Ljavax/microedition/khronos/opengles/GL11;->glTranslatef(FFF)V

    .line 399
    const/high16 v8, 0x3f80

    const/high16 v9, 0x3f80

    const/high16 v10, 0x3f80

    const/high16 v11, 0x3f80

    move-object/from16 v0, p0

    invoke-interface {v0, v8, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    .line 401
    const/16 v8, 0xde1

    sget-object v9, Lcom/quramsoft/xiv/XIVRegionManager;->mTextureIds:[I

    iget v6, v6, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mId:I

    aget v6, v9, v6

    move-object/from16 v0, p0

    invoke-interface {v0, v8, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 403
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/cooliris/media/GridQuad;->draw(Ljavax/microedition/khronos/opengles/GL11;F)V

    .line 405
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/cooliris/media/GridQuad;->unbindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 407
    invoke-interface/range {p0 .. p0}, Ljavax/microedition/khronos/opengles/GL11;->glPopMatrix()V

    goto/16 :goto_89
.end method

.method public static generateTileArray()V
    .registers 13

    .prologue
    const/4 v12, 0x0

    .line 576
    const/4 v1, 0x0

    .line 577
    .local v1, i:I
    new-instance v3, Landroid/graphics/Rect;

    sget v8, Lcom/quramsoft/xiv/XIVRegionManager;->mSRWidth:I

    sget v9, Lcom/quramsoft/xiv/XIVRegionManager;->mSRHeight:I

    invoke-direct {v3, v12, v12, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 579
    .local v3, rectOrg:Landroid/graphics/Rect;
    sget v8, Lcom/quramsoft/xiv/XIVRegionManager;->TILE_UNIT_WITH_BORDER:I

    sget v9, Lcom/quramsoft/xiv/XIVRegionManager;->BORDER_WIDTH:I

    sub-int/2addr v8, v9

    sget v9, Lcom/quramsoft/xiv/XIVRegionManager;->mSampleSize:I

    mul-int/2addr v8, v9

    int-to-float v0, v8

    .line 581
    .local v0, convertedTileUnit:F
    const/4 v7, 0x0

    .local v7, y:I
    :goto_15
    sget v8, Lcom/quramsoft/xiv/XIVRegionManager;->mSRHeight:I

    if-lt v7, v8, :cond_1a

    .line 606
    return-void

    .line 582
    :cond_1a
    const/4 v6, 0x0

    .local v6, x:I
    :goto_1b
    sget v8, Lcom/quramsoft/xiv/XIVRegionManager;->mSRWidth:I

    if-lt v6, v8, :cond_23

    .line 581
    int-to-float v8, v7

    add-float/2addr v8, v0

    float-to-int v7, v8

    goto :goto_15

    .line 583
    :cond_23
    new-instance v4, Landroid/graphics/Rect;

    .line 584
    sget v8, Lcom/quramsoft/xiv/XIVRegionManager;->BORDER_WIDTH:I

    sget v9, Lcom/quramsoft/xiv/XIVRegionManager;->mSampleSize:I

    mul-int/2addr v8, v9

    sub-int v8, v6, v8

    .line 585
    sget v9, Lcom/quramsoft/xiv/XIVRegionManager;->BORDER_WIDTH:I

    sget v10, Lcom/quramsoft/xiv/XIVRegionManager;->mSampleSize:I

    mul-int/2addr v9, v10

    sub-int v9, v7, v9

    .line 586
    float-to-int v10, v0

    add-int/2addr v10, v6

    .line 587
    float-to-int v11, v0

    add-int/2addr v11, v7

    .line 583
    invoke-direct {v4, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 589
    .local v4, rectTile:Landroid/graphics/Rect;
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 591
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-eqz v8, :cond_49

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-nez v8, :cond_4d

    .line 582
    :cond_49
    :goto_49
    int-to-float v8, v6

    add-float/2addr v8, v0

    float-to-int v6, v8

    goto :goto_1b

    .line 594
    :cond_4d
    new-instance v5, Lcom/quramsoft/xiv/XIVRegionManager$Tile;

    invoke-direct {v5}, Lcom/quramsoft/xiv/XIVRegionManager$Tile;-><init>()V

    .line 595
    .local v5, tile:Lcom/quramsoft/xiv/XIVRegionManager$Tile;
    iput-object v4, v5, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mRect:Landroid/graphics/Rect;

    .line 596
    const/4 v8, 0x0

    iput-object v8, v5, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mBitmap:Landroid/graphics/Bitmap;

    .line 597
    iput v12, v5, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mLoadingStatus:I

    .line 599
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    iput v1, v5, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mId:I

    .line 600
    const/4 v8, -0x1

    iput v8, v5, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mTexId:I

    .line 601
    sget v8, Lcom/quramsoft/xiv/XIVRegionManager;->mSampleSize:I

    iput v8, v5, Lcom/quramsoft/xiv/XIVRegionManager$Tile;->mSampleSize:I

    .line 602
    sget-object v8, Lcom/quramsoft/xiv/XIVRegionManager;->mTileArray:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    sget-object v8, Lcom/quramsoft/xiv/XIVRegionManager;->mInputQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v8, v5}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_49
.end method

.method public static getFocusedRect(Lcom/cooliris/media/GridCamera;Lcom/cooliris/media/DisplayItem;Lcom/cooliris/media/GridQuad;)Landroid/graphics/Rect;
    .registers 19
    .parameter "camera"
    .parameter "displayItem"
    .parameter "quad"

    .prologue
    .line 185
    new-instance v5, Lcom/cooliris/media/Vector3f;

    invoke-direct {v5}, Lcom/cooliris/media/Vector3f;-><init>()V

    .line 186
    .local v5, ltPos:Lcom/cooliris/media/Vector3f;
    new-instance v10, Lcom/cooliris/media/Vector3f;

    invoke-direct {v10}, Lcom/cooliris/media/Vector3f;-><init>()V

    .line 187
    .local v10, rbPos:Lcom/cooliris/media/Vector3f;
    new-instance v1, Lcom/cooliris/media/Vector3f;

    invoke-direct {v1}, Lcom/cooliris/media/Vector3f;-><init>()V

    .line 189
    .local v1, ctPos:Lcom/cooliris/media/Vector3f;
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15, v5}, Lcom/cooliris/media/GridCamera;->convertToCameraSpace(FFFLcom/cooliris/media/Vector3f;)V

    .line 190
    move-object/from16 v0, p0

    iget v13, v0, Lcom/cooliris/media/GridCamera;->mWidth:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/cooliris/media/GridCamera;->mHeight:I

    int-to-float v14, v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15, v10}, Lcom/cooliris/media/GridCamera;->convertToCameraSpace(FFFLcom/cooliris/media/Vector3f;)V

    .line 191
    move-object/from16 v0, p0

    iget v13, v0, Lcom/cooliris/media/GridCamera;->mWidth:I

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/cooliris/media/GridCamera;->mHeight:I

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15, v1}, Lcom/cooliris/media/GridCamera;->convertToCameraSpace(FFFLcom/cooliris/media/Vector3f;)V

    .line 193
    iget v13, v1, Lcom/cooliris/media/Vector3f;->x:F

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/cooliris/media/DisplayItem;->mAnimatedPosition:Lcom/cooliris/media/Vector3f;

    iget v14, v14, Lcom/cooliris/media/Vector3f;->x:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/cooliris/media/GridCamera;->mOneByScale:F

    mul-float/2addr v14, v15

    sub-float v2, v13, v14

    .line 194
    .local v2, ctX:F
    iget v13, v1, Lcom/cooliris/media/Vector3f;->y:F

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/cooliris/media/DisplayItem;->mAnimatedPosition:Lcom/cooliris/media/Vector3f;

    iget v14, v14, Lcom/cooliris/media/Vector3f;->y:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/cooliris/media/GridCamera;->mOneByScale:F

    mul-float/2addr v14, v15

    sub-float v3, v13, v14

    .line 196
    .local v3, ctY:F
    iget v13, v10, Lcom/cooliris/media/Vector3f;->x:F

    iget v14, v5, Lcom/cooliris/media/Vector3f;->x:F

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 197
    .local v12, width:F
    iget v13, v10, Lcom/cooliris/media/Vector3f;->y:F

    iget v14, v5, Lcom/cooliris/media/Vector3f;->y:F

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 199
    .local v4, height:F
    invoke-virtual/range {p2 .. p2}, Lcom/cooliris/media/GridQuad;->getWidth()F

    move-result v13

    sub-float/2addr v13, v12

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    add-float/2addr v13, v2

    sget v14, Lcom/quramsoft/xiv/XIVRegionManager;->mSRWidth:I

    int-to-float v14, v14

    invoke-virtual/range {p2 .. p2}, Lcom/cooliris/media/GridQuad;->getWidth()F

    move-result v15

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    float-to-int v8, v13

    .line 200
    .local v8, offsetStartX:I
    invoke-virtual/range {p2 .. p2}, Lcom/cooliris/media/GridQuad;->getHeight()F

    move-result v13

    sub-float/2addr v13, v4

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    add-float/2addr v13, v3

    sget v14, Lcom/quramsoft/xiv/XIVRegionManager;->mSRHeight:I

    int-to-float v14, v14

    invoke-virtual/range {p2 .. p2}, Lcom/cooliris/media/GridQuad;->getHeight()F

    move-result v15

    div-float/2addr v14, v15

    mul-float/2addr v13, v14

    float-to-int v9, v13

    .line 202
    .local v9, offsetStartY:I
    int-to-float v13, v8

    sget v14, Lcom/quramsoft/xiv/XIVRegionManager;->mSRWidth:I

    int-to-float v14, v14

    invoke-virtual/range {p2 .. p2}, Lcom/cooliris/media/GridQuad;->getWidth()F

    move-result v15

    div-float/2addr v14, v15

    mul-float/2addr v14, v12

    add-float/2addr v13, v14

    float-to-int v6, v13

    .line 203
    .local v6, offsetEndX:I
    int-to-float v13, v9

    sget v14, Lcom/quramsoft/xiv/XIVRegionManager;->mSRHeight:I

    int-to-float v14, v14

    invoke-virtual/range {p2 .. p2}, Lcom/cooliris/media/GridQuad;->getHeight()F

    move-result v15

    div-float/2addr v14, v15

    mul-float/2addr v14, v4

    add-float/2addr v13, v14

    float-to-int v7, v13

    .line 205
    .local v7, offsetEndY:I
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v8, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 207
    .local v11, rectFocused:Landroid/graphics/Rect;
    return-object v11
.end method

.method private static getMaxTile()I
    .registers 1

    .prologue
    .line 649
    const/16 v0, 0x30

    return v0
.end method

.method public static isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 642
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 645
    :cond_5
    :goto_5
    return v0

    .line 643
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 644
    const-string v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string v2, "image/jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string v2, "image/png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 645
    :cond_2a
    const-string v2, "image/gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "bmp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static releaseAll(Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 3
    .parameter "gl"

    .prologue
    .line 611
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/quramsoft/xiv/XIVRegionManager;->stopDecodingThread(Z)Z

    .line 612
    invoke-static {p0}, Lcom/quramsoft/xiv/XIVRegionManager;->deleteAllTextures(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 614
    sget-object v1, Lcom/quramsoft/xiv/XIVRegionManager;->mSRFilePath:Ljava/lang/String;

    monitor-enter v1

    .line 615
    :try_start_a
    const-string v0, ""

    sput-object v0, Lcom/quramsoft/xiv/XIVRegionManager;->mSRFilePath:Ljava/lang/String;

    .line 614
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_21

    .line 618
    sget-object v1, Lcom/quramsoft/xiv/XIVRegionManager;->mBrd:Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;

    monitor-enter v1

    .line 619
    :try_start_12
    sget-object v0, Lcom/quramsoft/xiv/XIVRegionManager;->mBrd:Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;

    invoke-virtual {v0}, Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 620
    sget-object v0, Lcom/quramsoft/xiv/XIVRegionManager;->mBrd:Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;

    invoke-virtual {v0}, Lcom/quramsoft/xiv/XIVBitmapRegionDecoder;->recycle()V

    .line 618
    :cond_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_24

    .line 622
    return-void

    .line 614
    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0

    .line 618
    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public static releaseGridQuad(Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 2
    .parameter "gl"

    .prologue
    .line 220
    sget-object v0, Lcom/quramsoft/xiv/XIVRegionManager;->sSuperResolutionGrid:Lcom/cooliris/media/GridQuad;

    invoke-virtual {v0, p0}, Lcom/cooliris/media/GridQuad;->freeHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 221
    sget-object v0, Lcom/quramsoft/xiv/XIVRegionManager;->sSuperResolutionGrid:Lcom/cooliris/media/GridQuad;

    invoke-virtual {v0, p0}, Lcom/cooliris/media/GridQuad;->generateHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 223
    invoke-static {p0}, Lcom/quramsoft/xiv/XIVRegionManager;->releaseAll(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 224
    return-void
.end method

.method public static stopDecodingThread(Z)Z
    .registers 7
    .parameter "isForcely"

    .prologue
    const-wide/16 v4, 0x19

    .line 450
    sget-object v2, Lcom/quramsoft/xiv/XIVRegionManager;->mRDThread:Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;

    if-eqz v2, :cond_17

    .line 451
    sget-object v3, Lcom/quramsoft/xiv/XIVRegionManager;->mRDThread:Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;

    monitor-enter v3

    .line 452
    :try_start_9
    sget-object v2, Lcom/quramsoft/xiv/XIVRegionManager;->mRDThread:Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;

    invoke-virtual {v2}, Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_16

    .line 453
    sget-object v2, Lcom/quramsoft/xiv/XIVRegionManager;->mRDThread:Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;

    invoke-virtual {v2}, Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;->interrupt()V

    .line 451
    :cond_16
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_42

    .line 458
    :cond_17
    sget-object v2, Lcom/quramsoft/xiv/XIVRegionManager;->mRDThread:Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;

    if-eqz v2, :cond_2e

    .line 459
    if-eqz p0, :cond_4c

    .line 460
    sget v2, Lcom/quramsoft/xiv/XIVRegionManager;->MAX_WAITING_TIME:I

    int-to-long v0, v2

    .line 461
    .local v0, maxWaitingTime:J
    :goto_20
    sget-object v2, Lcom/quramsoft/xiv/XIVRegionManager;->mRDThread:Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;

    invoke-virtual {v2}, Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;->isDecoding()Z

    move-result v2

    if-eqz v2, :cond_2e

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_45

    .line 476
    .end local v0           #maxWaitingTime:J
    :cond_2e
    invoke-static {}, Lcom/quramsoft/xiv/XIVRegionManager;->clearAll()V

    .line 478
    sget-object v2, Lcom/quramsoft/xiv/XIVRegionManager;->mInputQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 479
    sget-object v2, Lcom/quramsoft/xiv/XIVRegionManager;->mOutputQueue:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    .line 480
    sget-object v2, Lcom/quramsoft/xiv/XIVRegionManager;->mTileArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 482
    const/4 v2, 0x1

    :goto_41
    return v2

    .line 451
    :catchall_42
    move-exception v2

    :try_start_43
    monitor-exit v3
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v2

    .line 463
    .restart local v0       #maxWaitingTime:J
    :cond_45
    const-wide/16 v2, 0x19

    :try_start_47
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_4a} :catch_56

    .line 464
    sub-long/2addr v0, v4

    goto :goto_20

    .line 470
    .end local v0           #maxWaitingTime:J
    :cond_4c
    sget-object v2, Lcom/quramsoft/xiv/XIVRegionManager;->mRDThread:Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;

    invoke-virtual {v2}, Lcom/quramsoft/xiv/XIVRegionManager$RegionDecodeThread;->isDecoding()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 471
    const/4 v2, 0x0

    goto :goto_41

    .line 465
    .restart local v0       #maxWaitingTime:J
    :catch_56
    move-exception v2

    goto :goto_20
.end method
