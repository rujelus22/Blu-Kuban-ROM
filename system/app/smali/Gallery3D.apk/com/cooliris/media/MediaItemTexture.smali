.class public final Lcom/cooliris/media/MediaItemTexture;
.super Lcom/cooliris/media/Texture;
.source "MediaItemTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/media/MediaItemTexture$Config;
    }
.end annotation


# instance fields
.field private mCached:Z

.field private final mConfig:Lcom/cooliris/media/MediaItemTexture$Config;

.field private mContext:Landroid/content/Context;

.field private mIsRetrying:Z

.field private final mItem:Lcom/cooliris/media/MediaItem;

.field private mZoomMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cooliris/media/MediaItemTexture$Config;Lcom/cooliris/media/MediaItem;)V
    .registers 5
    .parameter "context"
    .parameter "config"
    .parameter "item"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/cooliris/media/Texture;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooliris/media/MediaItemTexture;->mZoomMode:I

    .line 77
    iput-object p2, p0, Lcom/cooliris/media/MediaItemTexture;->mConfig:Lcom/cooliris/media/MediaItemTexture$Config;

    .line 78
    iput-object p1, p0, Lcom/cooliris/media/MediaItemTexture;->mContext:Landroid/content/Context;

    .line 79
    iput-object p3, p0, Lcom/cooliris/media/MediaItemTexture;->mItem:Lcom/cooliris/media/MediaItem;

    .line 80
    invoke-direct {p0}, Lcom/cooliris/media/MediaItemTexture;->computeCache()Z

    move-result v0

    iput-boolean v0, p0, Lcom/cooliris/media/MediaItemTexture;->mCached:Z

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cooliris/media/MediaItemTexture$Config;Lcom/cooliris/media/MediaItem;I)V
    .registers 6
    .parameter "context"
    .parameter "config"
    .parameter "item"
    .parameter "iZoomMode"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/cooliris/media/Texture;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooliris/media/MediaItemTexture;->mZoomMode:I

    .line 61
    iput-object p2, p0, Lcom/cooliris/media/MediaItemTexture;->mConfig:Lcom/cooliris/media/MediaItemTexture$Config;

    .line 62
    iput-object p1, p0, Lcom/cooliris/media/MediaItemTexture;->mContext:Landroid/content/Context;

    .line 63
    iput-object p3, p0, Lcom/cooliris/media/MediaItemTexture;->mItem:Lcom/cooliris/media/MediaItem;

    .line 64
    invoke-direct {p0}, Lcom/cooliris/media/MediaItemTexture;->computeCache()Z

    move-result v0

    iput-boolean v0, p0, Lcom/cooliris/media/MediaItemTexture;->mCached:Z

    .line 65
    iput p4, p0, Lcom/cooliris/media/MediaItemTexture;->mZoomMode:I

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/cooliris/media/MediaItemTexture;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cooliris/media/MediaItemTexture;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cooliris/media/MediaItemTexture;)Lcom/cooliris/media/MediaItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cooliris/media/MediaItemTexture;->mItem:Lcom/cooliris/media/MediaItem;

    return-object v0
.end method

.method public static final bitmapCropResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 20
    .parameter "bitmap"
    .parameter "thumbW"
    .parameter "thumbH"

    .prologue
    .line 453
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 454
    .local v14, width:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 455
    .local v12, height:I
    div-int/lit8 v10, v14, 0x2

    .line 456
    .local v10, focusX:I
    div-int/lit8 v11, v12, 0x2

    .line 459
    .local v11, focusY:I
    mul-int v1, p1, v12

    mul-int v7, p2, v14

    if-ge v1, v7, :cond_57

    .line 461
    mul-int v1, p1, v12

    div-int v4, v1, p2

    .line 462
    .local v4, cropW:I
    const/4 v1, 0x0

    div-int/lit8 v7, v4, 0x2

    sub-int v7, v10, v7

    sub-int v15, v14, v4

    invoke-static {v7, v15}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 463
    .local v2, cropX:I
    const/4 v3, 0x0

    .line 464
    .local v3, cropY:I
    move v5, v12

    .line 473
    .local v5, cropH:I
    :goto_27
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 474
    .local v6, mMatrix:Landroid/graphics/Matrix;
    new-instance v8, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v7, 0x0

    int-to-float v15, v4

    int-to-float v0, v5

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v8, v1, v7, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 475
    .local v8, OriginRect:Landroid/graphics/RectF;
    new-instance v9, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v7, 0x0

    move/from16 v0, p1

    int-to-float v15, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v9, v1, v7, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 476
    .local v9, ResizeRect:Landroid/graphics/RectF;
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v6, v8, v9, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 477
    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 479
    .local v13, resize:Landroid/graphics/Bitmap;
    return-object v13

    .line 467
    .end local v2           #cropX:I
    .end local v3           #cropY:I
    .end local v4           #cropW:I
    .end local v5           #cropH:I
    .end local v6           #mMatrix:Landroid/graphics/Matrix;
    .end local v8           #OriginRect:Landroid/graphics/RectF;
    .end local v9           #ResizeRect:Landroid/graphics/RectF;
    .end local v13           #resize:Landroid/graphics/Bitmap;
    :cond_57
    mul-int v1, p2, v14

    div-int v5, v1, p1

    .line 468
    .restart local v5       #cropH:I
    const/4 v1, 0x0

    div-int/lit8 v7, v5, 0x2

    sub-int v7, v11, v7

    sub-int v15, v12, v5

    invoke-static {v7, v15}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 469
    .restart local v3       #cropY:I
    const/4 v2, 0x0

    .line 470
    .restart local v2       #cropX:I
    move v4, v14

    .restart local v4       #cropW:I
    goto :goto_27
.end method

.method private computeCache()Z
    .registers 11

    .prologue
    .line 84
    iget-object v1, p0, Lcom/cooliris/media/MediaItemTexture;->mConfig:Lcom/cooliris/media/MediaItemTexture$Config;

    .line 85
    .local v1, config:Lcom/cooliris/media/MediaItemTexture$Config;
    iget-object v4, p0, Lcom/cooliris/media/MediaItemTexture;->mItem:Lcom/cooliris/media/MediaItem;

    .line 86
    .local v4, item:Lcom/cooliris/media/MediaItem;
    const/4 v0, 0x0

    .line 87
    .local v0, cache:Lcom/cooliris/media/DiskCache;
    iget-object v5, v4, Lcom/cooliris/media/MediaItem;->mParentMediaSet:Lcom/cooliris/media/MediaSet;

    .line 88
    .local v5, parentMediaSet:Lcom/cooliris/media/MediaSet;
    if-eqz v1, :cond_29

    if-eqz v5, :cond_29

    iget-object v6, v5, Lcom/cooliris/media/MediaSet;->mDataSource:Lcom/cooliris/media/DataSource;

    if-eqz v6, :cond_29

    .line 89
    iget-object v6, v5, Lcom/cooliris/media/MediaSet;->mDataSource:Lcom/cooliris/media/DataSource;

    invoke-interface {v6}, Lcom/cooliris/media/DataSource;->getThumbnailCache()Lcom/cooliris/media/DiskCache;

    move-result-object v0

    .line 90
    sget-object v6, Lcom/cooliris/media/LocalDataSource;->sThumbnailCache:Lcom/cooliris/media/DiskCache;

    if-ne v0, v6, :cond_29

    .line 91
    iget-object v6, v4, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    if-eqz v6, :cond_29

    iget-object v6, v4, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    const-string v7, "video"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 92
    sget-object v0, Lcom/cooliris/media/LocalDataSource;->sThumbnailCacheVideo:Lcom/cooliris/media/DiskCache;

    .line 96
    :cond_29
    if-nez v0, :cond_2d

    .line 97
    const/4 v6, 0x0

    .line 102
    :goto_2c
    return v6

    .line 99
    :cond_2d
    monitor-enter v0

    .line 100
    :try_start_2e
    iget-wide v6, v5, Lcom/cooliris/media/MediaSet;->mPicasaAlbumId:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_4a

    iget-object v6, v4, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v6}, Lcom/cooliris/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v2

    .line 102
    .local v2, id:J
    :goto_3c
    iget-wide v6, v4, Lcom/cooliris/media/MediaItem;->mDateModifiedInSec:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v0, v2, v3, v6, v7}, Lcom/cooliris/media/DiskCache;->isDataAvailable(JJ)Z

    move-result v6

    monitor-exit v0

    goto :goto_2c

    .line 103
    .end local v2           #id:J
    :catchall_47
    move-exception v6

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_2e .. :try_end_49} :catchall_47

    throw v6

    .line 100
    :cond_4a
    :try_start_4a
    iget-wide v2, v4, Lcom/cooliris/media/MediaItem;->mId:J
    :try_end_4c
    .catchall {:try_start_4a .. :try_end_4c} :catchall_47

    goto :goto_3c
.end method

.method public static getExifthumbnail(Ljava/lang/String;)[B
    .registers 6
    .parameter "filepath"

    .prologue
    .line 487
    const/4 v1, 0x0

    .line 488
    .local v1, exif:Landroid/media/ExifInterface;
    if-eqz p0, :cond_1f

    .line 490
    :try_start_3
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_16

    .end local v1           #exif:Landroid/media/ExifInterface;
    .local v2, exif:Landroid/media/ExifInterface;
    move-object v1, v2

    .line 494
    .end local v2           #exif:Landroid/media/ExifInterface;
    .restart local v1       #exif:Landroid/media/ExifInterface;
    :goto_9
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 495
    invoke-virtual {v1}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v3

    .line 497
    :goto_15
    return-object v3

    .line 491
    :catch_16
    move-exception v0

    .line 492
    .local v0, ex:Ljava/io/IOException;
    const-string v3, "MediaItemTexture"

    const-string v4, "cannot read exif"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 497
    .end local v0           #ex:Ljava/io/IOException;
    :cond_1f
    const/4 v3, 0x0

    new-array v3, v3, [B

    goto :goto_15
.end method


# virtual methods
.method public isCached()Z
    .registers 2

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/cooliris/media/MediaItemTexture;->mCached:Z

    return v0
.end method

.method public isUncachedVideo()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0}, Lcom/cooliris/media/MediaItemTexture;->isCached()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 116
    :cond_7
    :goto_7
    return v0

    .line 110
    :cond_8
    iget-object v1, p0, Lcom/cooliris/media/MediaItemTexture;->mItem:Lcom/cooliris/media/MediaItem;

    iget-object v1, v1, Lcom/cooliris/media/MediaItem;->mParentMediaSet:Lcom/cooliris/media/MediaSet;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/cooliris/media/MediaItemTexture;->mItem:Lcom/cooliris/media/MediaItem;

    iget-object v1, v1, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 112
    iget-object v1, p0, Lcom/cooliris/media/MediaItemTexture;->mItem:Lcom/cooliris/media/MediaItem;

    iget-object v1, v1, Lcom/cooliris/media/MediaItem;->mParentMediaSet:Lcom/cooliris/media/MediaSet;

    iget-wide v1, v1, Lcom/cooliris/media/MediaSet;->mPicasaAlbumId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/cooliris/media/MediaItemTexture;->mItem:Lcom/cooliris/media/MediaItem;

    iget-object v1, v1, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 114
    const/4 v0, 0x1

    goto :goto_7
.end method

.method protected load(Lcom/cooliris/media/RenderView;)Landroid/graphics/Bitmap;
    .registers 46
    .parameter "view"

    .prologue
    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaItemTexture;->mConfig:Lcom/cooliris/media/MediaItemTexture$Config;

    move-object/from16 v25, v0

    .line 128
    .local v25, config:Lcom/cooliris/media/MediaItemTexture$Config;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MediaItemTexture;->mItem:Lcom/cooliris/media/MediaItem;

    move-object/from16 v34, v0

    .line 130
    .local v34, item:Lcom/cooliris/media/MediaItem;
    if-nez v34, :cond_11

    .line 131
    const/16 v21, 0x0

    .line 448
    :cond_10
    :goto_10
    return-object v21

    .line 135
    :cond_11
    const/16 v19, 0x0

    .line 136
    .local v19, bMediumnail:Z
    sget-boolean v3, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v3, :cond_55

    move-object/from16 v0, v34

    iget-boolean v3, v0, Lcom/cooliris/media/MediaItem;->isDrm:Z

    if-nez v3, :cond_55

    .line 138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/MediaItemTexture;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/cooliris/media/Gallery;

    invoke-virtual {v3}, Lcom/cooliris/media/Gallery;->getGridLayer()Lcom/cooliris/media/GridLayer;

    move-result-object v36

    .line 139
    .local v36, mLayer:Lcom/cooliris/media/GridLayer;
    if-eqz v36, :cond_39

    invoke-virtual/range {v36 .. v36}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_39

    move-object/from16 v0, p0

    iget v3, v0, Lcom/cooliris/media/MediaItemTexture;->mZoomMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_39

    .line 141
    const/16 v19, 0x1

    .line 144
    :cond_39
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_55

    .line 145
    move-object/from16 v0, v34

    iget-boolean v3, v0, Lcom/cooliris/media/MediaItem;->mMediumnailReady:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8d

    .line 146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/MediaItemTexture;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/MediaItemTexture;->mItem:Lcom/cooliris/media/MediaItem;

    move/from16 v0, v19

    invoke-static {v3, v4, v0}, Lcom/quramsoft/xiv/XIVUtils;->getMediumnailBitmap(Landroid/content/Context;Lcom/cooliris/media/MediaItem;Z)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 148
    .local v21, bitmapMediumnail:Landroid/graphics/Bitmap;
    if-nez v21, :cond_10

    .line 160
    .end local v21           #bitmapMediumnail:Landroid/graphics/Bitmap;
    .end local v36           #mLayer:Lcom/cooliris/media/GridLayer;
    :cond_55
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    move-object/from16 v43, v0

    .line 161
    .local v43, uriString:Ljava/lang/String;
    if-eqz v43, :cond_9a

    .line 162
    invoke-static/range {v43 .. v43}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v42

    .line 163
    .local v42, uri:Landroid/net/Uri;
    invoke-virtual/range {v42 .. v42}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9a

    invoke-virtual/range {v42 .. v42}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v4, "media"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9a

    .line 165
    :try_start_79
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/MediaItemTexture;->mContext:Landroid/content/Context;

    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/cooliris/media/MediaItem;->mThumbnailUri:Ljava/lang/String;

    const/16 v5, 0x80

    const/16 v6, 0x80

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/cooliris/media/UriTexture;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_8b} :catch_90
    .catch Ljava/net/URISyntaxException; {:try_start_79 .. :try_end_8b} :catch_95

    move-result-object v21

    goto :goto_10

    .line 151
    .end local v42           #uri:Landroid/net/Uri;
    .end local v43           #uriString:Ljava/lang/String;
    .restart local v36       #mLayer:Lcom/cooliris/media/GridLayer;
    :cond_8d
    const/16 v21, 0x0

    goto :goto_10

    .line 167
    .end local v36           #mLayer:Lcom/cooliris/media/GridLayer;
    .restart local v42       #uri:Landroid/net/Uri;
    .restart local v43       #uriString:Ljava/lang/String;
    :catch_90
    move-exception v33

    .line 168
    .local v33, e:Ljava/io/IOException;
    const/16 v21, 0x0

    goto/16 :goto_10

    .line 169
    .end local v33           #e:Ljava/io/IOException;
    :catch_95
    move-exception v33

    .line 170
    .local v33, e:Ljava/net/URISyntaxException;
    const/16 v21, 0x0

    goto/16 :goto_10

    .line 176
    .end local v33           #e:Ljava/net/URISyntaxException;
    .end local v42           #uri:Landroid/net/Uri;
    :cond_9a
    if-nez v25, :cond_2a4

    .line 177
    const/16 v39, 0x0

    .line 179
    .local v39, retVal:Landroid/graphics/Bitmap;
    :try_start_9e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/MediaItemTexture;->mItem:Lcom/cooliris/media/MediaItem;

    invoke-virtual {v3}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v3

    if-nez v3, :cond_23d

    .line 180
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_ac
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9e .. :try_end_ac} :catch_508

    .line 183
    const/16 v22, 0x0

    .line 184
    .local v22, cache:Lcom/cooliris/media/DiskCache;
    :try_start_ae
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/cooliris/media/MediaItem;->mParentMediaSet:Lcom/cooliris/media/MediaSet;

    move-object/from16 v38, v0

    .line 185
    .local v38, parentMediaSet:Lcom/cooliris/media/MediaSet;
    if-eqz v38, :cond_51b

    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/cooliris/media/MediaSet;->mDataSource:Lcom/cooliris/media/DataSource;

    if-eqz v3, :cond_51b

    .line 186
    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/cooliris/media/MediaSet;->mDataSource:Lcom/cooliris/media/DataSource;

    invoke-interface {v3}, Lcom/cooliris/media/DataSource;->getThumbnailCache()Lcom/cooliris/media/DiskCache;

    move-result-object v22

    .line 187
    sget-object v3, Lcom/cooliris/media/LocalDataSource;->sThumbnailCache:Lcom/cooliris/media/DiskCache;

    move-object/from16 v0, v22

    if-ne v0, v3, :cond_fe

    .line 188
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    if-eqz v3, :cond_de

    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    const-string v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_de

    .line 189
    sget-object v22, Lcom/cooliris/media/LocalDataSource;->sThumbnailCacheVideo:Lcom/cooliris/media/DiskCache;

    .line 191
    :cond_de
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/cooliris/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v26

    .line 192
    .local v26, crc64:J
    move-object/from16 v0, v34

    iget-wide v3, v0, Lcom/cooliris/media/MediaItem;->mDateModifiedInSec:J

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    move-object/from16 v0, v22

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cooliris/media/DiskCache;->isDataAvailable(JJ)Z

    move-result v3

    if-nez v3, :cond_fe

    .line 194
    sget-boolean v3, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v3, :cond_12a

    .line 195
    invoke-static/range {v26 .. v27}, Lcom/quramsoft/xiv/XIVUtils;->invalidateCache(J)V

    .line 203
    .end local v26           #crc64:J
    :cond_fe
    :goto_fe
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/MediaItemTexture;->mItem:Lcom/cooliris/media/MediaItem;

    invoke-virtual {v3}, Lcom/cooliris/media/MediaItem;->getDrmDrawable()Z

    move-result v3

    if-nez v3, :cond_162

    .line 204
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/MediaItemTexture;->mItem:Lcom/cooliris/media/MediaItem;

    invoke-virtual {v3}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_152

    .line 205
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/MediaItemTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020061

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_121} :catch_132
    .catch Ljava/net/URISyntaxException; {:try_start_ae .. :try_end_121} :catch_235
    .catch Ljava/lang/OutOfMemoryError; {:try_start_ae .. :try_end_121} :catch_508

    move-result-object v8

    .line 267
    .end local v38           #parentMediaSet:Lcom/cooliris/media/MediaSet;
    .end local v39           #retVal:Landroid/graphics/Bitmap;
    .local v8, retVal:Landroid/graphics/Bitmap;
    :cond_122
    :goto_122
    const/4 v3, 0x0

    :try_start_123
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_126
    .catch Ljava/lang/OutOfMemoryError; {:try_start_123 .. :try_end_126} :catch_139

    .end local v22           #cache:Lcom/cooliris/media/DiskCache;
    :cond_126
    :goto_126
    move-object/from16 v21, v8

    .line 320
    goto/16 :goto_10

    .line 197
    .end local v8           #retVal:Landroid/graphics/Bitmap;
    .restart local v22       #cache:Lcom/cooliris/media/DiskCache;
    .restart local v26       #crc64:J
    .restart local v38       #parentMediaSet:Lcom/cooliris/media/MediaSet;
    .restart local v39       #retVal:Landroid/graphics/Bitmap;
    :cond_12a
    const/16 v3, 0x400

    :try_start_12c
    move-wide/from16 v0, v26

    invoke-static {v0, v1, v3}, Lcom/cooliris/media/UriTexture;->invalidateCache(JI)V
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_12c .. :try_end_131} :catch_132
    .catch Ljava/net/URISyntaxException; {:try_start_12c .. :try_end_131} :catch_235
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12c .. :try_end_131} :catch_508

    goto :goto_fe

    .line 262
    .end local v26           #crc64:J
    .end local v38           #parentMediaSet:Lcom/cooliris/media/MediaSet;
    :catch_132
    move-exception v33

    move-object/from16 v8, v39

    .line 263
    .end local v39           #retVal:Landroid/graphics/Bitmap;
    .restart local v8       #retVal:Landroid/graphics/Bitmap;
    .local v33, e:Ljava/io/IOException;
    :goto_135
    :try_start_135
    invoke-virtual/range {v33 .. v33}, Ljava/io/IOException;->printStackTrace()V
    :try_end_138
    .catch Ljava/lang/OutOfMemoryError; {:try_start_135 .. :try_end_138} :catch_139

    goto :goto_122

    .line 308
    .end local v22           #cache:Lcom/cooliris/media/DiskCache;
    .end local v33           #e:Ljava/io/IOException;
    :catch_139
    move-exception v33

    .line 309
    .local v33, e:Ljava/lang/OutOfMemoryError;
    :goto_13a
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->handleLowMemory()V

    .line 311
    :try_start_13d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/cooliris/media/MediaItemTexture;->mIsRetrying:Z

    if-nez v3, :cond_126

    .line 312
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 313
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/cooliris/media/MediaItemTexture;->mIsRetrying:Z

    .line 314
    invoke-virtual/range {p0 .. p1}, Lcom/cooliris/media/MediaItemTexture;->load(Lcom/cooliris/media/RenderView;)Landroid/graphics/Bitmap;
    :try_end_150
    .catch Ljava/lang/InterruptedException; {:try_start_13d .. :try_end_150} :catch_505

    move-result-object v8

    goto :goto_126

    .line 208
    .end local v8           #retVal:Landroid/graphics/Bitmap;
    .end local v33           #e:Ljava/lang/OutOfMemoryError;
    .restart local v22       #cache:Lcom/cooliris/media/DiskCache;
    .restart local v38       #parentMediaSet:Lcom/cooliris/media/MediaSet;
    .restart local v39       #retVal:Landroid/graphics/Bitmap;
    :cond_152
    :try_start_152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/MediaItemTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02006b

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .end local v39           #retVal:Landroid/graphics/Bitmap;
    .restart local v8       #retVal:Landroid/graphics/Bitmap;
    goto :goto_122

    .line 215
    .end local v8           #retVal:Landroid/graphics/Bitmap;
    .restart local v39       #retVal:Landroid/graphics/Bitmap;
    :cond_162
    const/16 v35, 0x0

    .line 216
    .local v35, local:Z
    if-eqz v34, :cond_186

    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    if-eqz v3, :cond_186

    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    const-string v4, "content"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_184

    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_186

    .line 221
    :cond_184
    const/16 v35, 0x1

    .line 224
    :cond_186
    sget-boolean v3, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v3, :cond_207

    move-object/from16 v0, v34

    iget-boolean v3, v0, Lcom/cooliris/media/MediaItem;->isDrm:Z

    if-nez v3, :cond_207

    if-eqz v35, :cond_207

    .line 228
    sget-boolean v3, Lcom/cooliris/media/Utils;->mUseDualCore:Z

    if-eqz v3, :cond_1eb

    .line 229
    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/cooliris/media/MediaItem;->mDateModifiedInSec:J

    move-wide/from16 v31, v0

    .line 234
    .local v31, dateToUse:J
    :goto_19c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/MediaItemTexture;->mContext:Landroid/content/Context;

    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/cooliris/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, v34

    iget-wide v6, v0, Lcom/cooliris/media/MediaItem;->mId:J

    invoke-virtual/range {v34 .. v34}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_205

    const/4 v8, 0x1

    :goto_1b4
    const-wide/16 v10, 0x3e8

    mul-long v9, v31, v10

    invoke-static/range {v3 .. v10}, Lcom/cooliris/cache/CacheService;->queryThumbnail(Landroid/content/Context;JJZJ)[B

    .line 239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/MediaItemTexture;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/MediaItemTexture;->mItem:Lcom/cooliris/media/MediaItem;

    iget-object v5, v4, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/cooliris/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v8, 0x0

    sget-object v10, Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;->LARGE_THUMNAIL_IMAGE:Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;

    move-object/from16 v4, p0

    move-object/from16 v9, v34

    invoke-static/range {v3 .. v10}, Lcom/quramsoft/xiv/XIVUtils;->createFromUriEx(Landroid/content/Context;Lcom/cooliris/media/Texture;Ljava/lang/String;JLorg/apache/http/conn/ClientConnectionManager;Lcom/cooliris/media/MediaItem;Lcom/quramsoft/xiv/XIVUtils$XIVDecodingType;)Landroid/graphics/Bitmap;
    :try_end_1d7
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_1d7} :catch_132
    .catch Ljava/net/URISyntaxException; {:try_start_152 .. :try_end_1d7} :catch_235
    .catch Ljava/lang/OutOfMemoryError; {:try_start_152 .. :try_end_1d7} :catch_508

    move-result-object v8

    .line 245
    .end local v39           #retVal:Landroid/graphics/Bitmap;
    .restart local v8       #retVal:Landroid/graphics/Bitmap;
    if-nez v8, :cond_122

    .line 246
    :try_start_1da
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/MediaItemTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02006b

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_1e8
    .catch Ljava/io/IOException; {:try_start_1da .. :try_end_1e8} :catch_510
    .catch Ljava/net/URISyntaxException; {:try_start_1da .. :try_end_1e8} :catch_50d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1da .. :try_end_1e8} :catch_139

    move-result-object v8

    goto/16 :goto_122

    .line 231
    .end local v8           #retVal:Landroid/graphics/Bitmap;
    .end local v31           #dateToUse:J
    .restart local v39       #retVal:Landroid/graphics/Bitmap;
    :cond_1eb
    :try_start_1eb
    move-object/from16 v0, v34

    iget-wide v3, v0, Lcom/cooliris/media/MediaItem;->mDateAddedInSec:J

    move-object/from16 v0, v34

    iget-wide v5, v0, Lcom/cooliris/media/MediaItem;->mDateModifiedInSec:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_1fe

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/cooliris/media/MediaItem;->mDateAddedInSec:J

    move-wide/from16 v31, v0

    .restart local v31       #dateToUse:J
    :goto_1fd
    goto :goto_19c

    .end local v31           #dateToUse:J
    :cond_1fe
    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/cooliris/media/MediaItem;->mDateModifiedInSec:J

    move-wide/from16 v31, v0

    goto :goto_1fd

    .line 234
    .restart local v31       #dateToUse:J
    :cond_205
    const/4 v8, 0x0

    goto :goto_1b4

    .line 250
    .end local v31           #dateToUse:J
    :cond_207
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/MediaItemTexture;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/MediaItemTexture;->mItem:Lcom/cooliris/media/MediaItem;

    iget-object v4, v4, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    const/16 v5, 0x400

    const/16 v6, 0x400

    move-object/from16 v0, v34

    iget-object v7, v0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v7}, Lcom/cooliris/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/cooliris/media/UriTexture;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;
    :try_end_221
    .catch Ljava/io/IOException; {:try_start_1eb .. :try_end_221} :catch_132
    .catch Ljava/net/URISyntaxException; {:try_start_1eb .. :try_end_221} :catch_235
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1eb .. :try_end_221} :catch_508

    move-result-object v8

    .line 254
    .end local v39           #retVal:Landroid/graphics/Bitmap;
    .restart local v8       #retVal:Landroid/graphics/Bitmap;
    if-nez v8, :cond_122

    .line 255
    :try_start_224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/MediaItemTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02006b

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_232
    .catch Ljava/io/IOException; {:try_start_224 .. :try_end_232} :catch_510
    .catch Ljava/net/URISyntaxException; {:try_start_224 .. :try_end_232} :catch_50d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_224 .. :try_end_232} :catch_139

    move-result-object v8

    goto/16 :goto_122

    .line 264
    .end local v8           #retVal:Landroid/graphics/Bitmap;
    .end local v35           #local:Z
    .end local v38           #parentMediaSet:Lcom/cooliris/media/MediaSet;
    .restart local v39       #retVal:Landroid/graphics/Bitmap;
    :catch_235
    move-exception v33

    move-object/from16 v8, v39

    .line 265
    .end local v39           #retVal:Landroid/graphics/Bitmap;
    .restart local v8       #retVal:Landroid/graphics/Bitmap;
    .local v33, e:Ljava/net/URISyntaxException;
    :goto_238
    :try_start_238
    invoke-virtual/range {v33 .. v33}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_23b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_238 .. :try_end_23b} :catch_139

    goto/16 :goto_122

    .line 269
    .end local v8           #retVal:Landroid/graphics/Bitmap;
    .end local v22           #cache:Lcom/cooliris/media/DiskCache;
    .end local v33           #e:Ljava/net/URISyntaxException;
    .restart local v39       #retVal:Landroid/graphics/Bitmap;
    :cond_23d
    const/4 v3, -0x2

    :try_start_23e
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 270
    sget-boolean v3, Lcom/cooliris/media/Utils;->mUseDirectVideo:Z

    if-eqz v3, :cond_267

    .line 272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/MediaItemTexture;->mItem:Lcom/cooliris/media/MediaItem;

    iget-object v3, v3, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/cooliris/media/Utils;->getVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_24e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_23e .. :try_end_24e} :catch_508

    move-result-object v8

    .line 273
    .end local v39           #retVal:Landroid/graphics/Bitmap;
    .restart local v8       #retVal:Landroid/graphics/Bitmap;
    if-nez v8, :cond_260

    .line 274
    :try_start_251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/MediaItemTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020061

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 306
    :cond_260
    :goto_260
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_265
    .catch Ljava/lang/OutOfMemoryError; {:try_start_251 .. :try_end_265} :catch_139

    goto/16 :goto_126

    .line 278
    .end local v8           #retVal:Landroid/graphics/Bitmap;
    .restart local v39       #retVal:Landroid/graphics/Bitmap;
    :cond_267
    :try_start_267
    new-instance v3, Lcom/cooliris/media/MediaItemTexture$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/cooliris/media/MediaItemTexture$1;-><init>(Lcom/cooliris/media/MediaItemTexture;)V

    invoke-virtual {v3}, Lcom/cooliris/media/MediaItemTexture$1;->start()V

    .line 294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/MediaItemTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/MediaItemTexture;->mItem:Lcom/cooliris/media/MediaItem;

    iget-wide v4, v4, Lcom/cooliris/media/MediaItem;->mId:J

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_284
    .catch Ljava/lang/OutOfMemoryError; {:try_start_267 .. :try_end_284} :catch_508

    move-result-object v8

    .line 297
    .end local v39           #retVal:Landroid/graphics/Bitmap;
    .restart local v8       #retVal:Landroid/graphics/Bitmap;
    if-nez v8, :cond_260

    .line 298
    :try_start_287
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/MediaItemTexture;->mItem:Lcom/cooliris/media/MediaItem;

    iget-object v3, v3, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 300
    if-nez v8, :cond_260

    .line 301
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/MediaItemTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020061

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_2a2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_287 .. :try_end_2a2} :catch_139

    move-result-object v8

    goto :goto_260

    .line 322
    .end local v8           #retVal:Landroid/graphics/Bitmap;
    :cond_2a4
    const/16 v28, 0x0

    .line 323
    .local v28, data:[B
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/cooliris/media/MediaItem;->mParentMediaSet:Lcom/cooliris/media/MediaSet;

    move-object/from16 v38, v0

    .line 324
    .restart local v38       #parentMediaSet:Lcom/cooliris/media/MediaSet;
    if-eqz v38, :cond_408

    move-object/from16 v0, v38

    iget-wide v3, v0, Lcom/cooliris/media/MediaSet;->mPicasaAlbumId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_408

    .line 325
    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/cooliris/media/MediaSet;->mDataSource:Lcom/cooliris/media/DataSource;

    invoke-interface {v3}, Lcom/cooliris/media/DataSource;->getThumbnailCache()Lcom/cooliris/media/DiskCache;

    move-result-object v41

    .line 326
    .local v41, thumbnailCache:Lcom/cooliris/media/DiskCache;
    move-object/from16 v0, v34

    iget-wide v3, v0, Lcom/cooliris/media/MediaItem;->mId:J

    const-wide/16 v5, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/cooliris/media/DiskCache;->get(JJ)[B

    move-result-object v28

    .line 327
    if-nez v28, :cond_31b

    .line 330
    const/16 v39, 0x0

    .line 331
    .restart local v39       #retVal:Landroid/graphics/Bitmap;
    :try_start_2d0
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/cooliris/media/MediaItemTexture;->getExifthumbnail(Ljava/lang/String;)[B

    move-result-object v40

    .line 332
    .local v40, thumbnail:[B
    if-eqz v40, :cond_3e5

    move-object/from16 v0, v40

    array-length v3, v0

    if-lez v3, :cond_3e5

    .line 333
    const/4 v3, 0x0

    move-object/from16 v0, v40

    array-length v4, v0

    move-object/from16 v0, v40

    invoke-static {v0, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v39

    .line 334
    if-nez v39, :cond_517

    .line 335
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/MediaItemTexture;->mContext:Landroid/content/Context;

    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/cooliris/media/MediaItem;->mThumbnailUri:Ljava/lang/String;

    const/16 v5, 0x100

    const/16 v6, 0x100

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/cooliris/media/UriTexture;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;
    :try_end_2fd
    .catch Ljava/io/IOException; {:try_start_2d0 .. :try_end_2fd} :catch_3fa
    .catch Ljava/net/URISyntaxException; {:try_start_2d0 .. :try_end_2fd} :catch_401

    move-result-object v8

    .line 341
    .end local v39           #retVal:Landroid/graphics/Bitmap;
    .restart local v8       #retVal:Landroid/graphics/Bitmap;
    :goto_2fe
    :try_start_2fe
    move-object/from16 v0, v34

    iget-wide v4, v0, Lcom/cooliris/media/MediaItem;->mId:J

    move-object/from16 v0, v34

    iget-wide v6, v0, Lcom/cooliris/media/MediaItem;->mId:J

    move-object/from16 v0, v25

    iget v9, v0, Lcom/cooliris/media/MediaItemTexture$Config;->thumbnailWidth:I

    move-object/from16 v0, v25

    iget v10, v0, Lcom/cooliris/media/MediaItemTexture$Config;->thumbnailHeight:I

    move-object/from16 v0, v34

    iget-wide v11, v0, Lcom/cooliris/media/MediaItem;->mDateModifiedInSec:J

    const-wide/16 v15, 0x3e8

    mul-long/2addr v11, v15

    move-object/from16 v3, v41

    invoke-static/range {v3 .. v12}, Lcom/cooliris/cache/CacheService;->writeBitmapToCache(Lcom/cooliris/media/DiskCache;JJLandroid/graphics/Bitmap;IIJ)[B
    :try_end_31a
    .catch Ljava/io/IOException; {:try_start_2fe .. :try_end_31a} :catch_502
    .catch Ljava/net/URISyntaxException; {:try_start_2fe .. :try_end_31a} :catch_4ff

    move-result-object v28

    .line 378
    .end local v8           #retVal:Landroid/graphics/Bitmap;
    .end local v40           #thumbnail:[B
    .end local v41           #thumbnailCache:Lcom/cooliris/media/DiskCache;
    :cond_31b
    :goto_31b
    if-eqz v28, :cond_4a8

    .line 379
    const/16 v23, 0x0

    .line 380
    .local v23, cacheInput:Ljava/io/ByteArrayInputStream;
    const/16 v29, 0x0

    .line 383
    .local v29, dataInput:Ljava/io/DataInputStream;
    :try_start_321
    new-instance v24, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_32a
    .catchall {:try_start_321 .. :try_end_32a} :catchall_4f1
    .catch Ljava/io/IOException; {:try_start_321 .. :try_end_32a} :catch_4f7

    .line 384
    .end local v23           #cacheInput:Ljava/io/ByteArrayInputStream;
    .local v24, cacheInput:Ljava/io/ByteArrayInputStream;
    :try_start_32a
    new-instance v30, Ljava/io/DataInputStream;

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_333
    .catchall {:try_start_32a .. :try_end_333} :catchall_4f3
    .catch Ljava/io/IOException; {:try_start_32a .. :try_end_333} :catch_4f9

    .line 385
    .end local v29           #dataInput:Ljava/io/DataInputStream;
    .local v30, dataInput:Ljava/io/DataInputStream;
    :try_start_333
    invoke-virtual/range {v30 .. v30}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    move-object/from16 v0, v34

    iput-wide v3, v0, Lcom/cooliris/media/MediaItem;->mThumbnailId:J

    .line 386
    invoke-virtual/range {v30 .. v30}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    move-object/from16 v0, v34

    iput v3, v0, Lcom/cooliris/media/MediaItem;->mThumbnailFocusX:I

    .line 387
    invoke-virtual/range {v30 .. v30}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    move-object/from16 v0, v34

    iput v3, v0, Lcom/cooliris/media/MediaItem;->mThumbnailFocusY:I

    .line 389
    new-instance v37, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v37 .. v37}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 390
    .local v37, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    move-object/from16 v0, v37

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 391
    const/4 v3, 0x0

    move-object/from16 v0, v37

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 394
    sget-boolean v3, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v3, :cond_477

    .line 395
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v37

    iput-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 402
    :goto_364
    const/16 v3, 0xc

    move-object/from16 v0, v28

    array-length v4, v0

    add-int/lit8 v4, v4, -0xc

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_372
    .catchall {:try_start_333 .. :try_end_372} :catchall_49c
    .catch Ljava/io/IOException; {:try_start_333 .. :try_end_372} :catch_47f

    move-result-object v20

    .line 404
    .local v20, bitmap:Landroid/graphics/Bitmap;
    if-nez v20, :cond_513

    .line 406
    :try_start_375
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/MediaItemTexture;->mContext:Landroid/content/Context;

    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/cooliris/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual/range {v34 .. v34}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_491

    const/4 v3, 0x1

    :goto_389
    invoke-static {v4, v5, v6, v3}, Lcom/cooliris/cache/CacheService;->deleteThumbId(Landroid/content/Context;JZ)V

    .line 408
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cooliris/media/MediaItemTexture;->mContext:Landroid/content/Context;

    move-object/from16 v0, v34

    iget-object v10, v0, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    const/16 v11, 0x100

    const/16 v12, 0x100

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lcom/cooliris/media/UriTexture;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;
    :try_end_39e
    .catchall {:try_start_375 .. :try_end_39e} :catchall_49c
    .catch Ljava/lang/Exception; {:try_start_375 .. :try_end_39e} :catch_494
    .catch Ljava/io/IOException; {:try_start_375 .. :try_end_39e} :catch_47f

    move-result-object v14

    .line 410
    .end local v20           #bitmap:Landroid/graphics/Bitmap;
    .local v14, bitmap:Landroid/graphics/Bitmap;
    if-eqz v38, :cond_3d9

    .line 411
    :try_start_3a1
    move-object/from16 v0, v38

    iget-object v3, v0, Lcom/cooliris/media/MediaSet;->mDataSource:Lcom/cooliris/media/DataSource;

    invoke-interface {v3}, Lcom/cooliris/media/DataSource;->getThumbnailCache()Lcom/cooliris/media/DiskCache;

    move-result-object v9

    .line 413
    .local v9, thumbnailCache:Lcom/cooliris/media/DiskCache;
    move-object/from16 v0, v34

    iget-wide v10, v0, Lcom/cooliris/media/MediaItem;->mId:J

    move-object/from16 v0, v34

    iget-wide v12, v0, Lcom/cooliris/media/MediaItem;->mId:J

    move-object/from16 v0, v25

    iget v15, v0, Lcom/cooliris/media/MediaItemTexture$Config;->thumbnailWidth:I

    move-object/from16 v0, v25

    iget v0, v0, Lcom/cooliris/media/MediaItemTexture$Config;->thumbnailHeight:I

    move/from16 v16, v0

    move-object/from16 v0, v34

    iget-wide v3, v0, Lcom/cooliris/media/MediaItem;->mDateModifiedInSec:J

    const-wide/16 v5, 0x3e8

    mul-long v17, v3, v5

    invoke-static/range {v9 .. v18}, Lcom/cooliris/cache/CacheService;->writeBitmapToCache(Lcom/cooliris/media/DiskCache;JJLandroid/graphics/Bitmap;IIJ)[B

    move-result-object v28

    .line 416
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 417
    const/16 v3, 0xc

    move-object/from16 v0, v28

    array-length v4, v0

    add-int/lit8 v4, v4, -0xc

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3d8
    .catchall {:try_start_3a1 .. :try_end_3d8} :catchall_49c
    .catch Ljava/lang/Exception; {:try_start_3a1 .. :try_end_3d8} :catch_4fd
    .catch Ljava/io/IOException; {:try_start_3a1 .. :try_end_3d8} :catch_47f

    move-result-object v14

    .line 424
    .end local v9           #thumbnailCache:Lcom/cooliris/media/DiskCache;
    :cond_3d9
    :goto_3d9
    const/16 v28, 0x0

    .line 430
    invoke-static/range {v24 .. v24}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 431
    invoke-static/range {v30 .. v30}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    move-object/from16 v21, v14

    goto/16 :goto_10

    .line 338
    .end local v14           #bitmap:Landroid/graphics/Bitmap;
    .end local v24           #cacheInput:Ljava/io/ByteArrayInputStream;
    .end local v30           #dataInput:Ljava/io/DataInputStream;
    .end local v37           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v39       #retVal:Landroid/graphics/Bitmap;
    .restart local v40       #thumbnail:[B
    .restart local v41       #thumbnailCache:Lcom/cooliris/media/DiskCache;
    :cond_3e5
    :try_start_3e5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/MediaItemTexture;->mContext:Landroid/content/Context;

    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/cooliris/media/MediaItem;->mThumbnailUri:Ljava/lang/String;

    const/16 v5, 0x100

    const/16 v6, 0x100

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/cooliris/media/UriTexture;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;
    :try_end_3f7
    .catch Ljava/io/IOException; {:try_start_3e5 .. :try_end_3f7} :catch_3fa
    .catch Ljava/net/URISyntaxException; {:try_start_3e5 .. :try_end_3f7} :catch_401

    move-result-object v8

    .end local v39           #retVal:Landroid/graphics/Bitmap;
    .restart local v8       #retVal:Landroid/graphics/Bitmap;
    goto/16 :goto_2fe

    .line 344
    .end local v8           #retVal:Landroid/graphics/Bitmap;
    .end local v40           #thumbnail:[B
    .restart local v39       #retVal:Landroid/graphics/Bitmap;
    :catch_3fa
    move-exception v33

    move-object/from16 v8, v39

    .line 345
    .end local v39           #retVal:Landroid/graphics/Bitmap;
    .restart local v8       #retVal:Landroid/graphics/Bitmap;
    .local v33, e:Ljava/io/IOException;
    :goto_3fd
    const/16 v21, 0x0

    goto/16 :goto_10

    .line 346
    .end local v8           #retVal:Landroid/graphics/Bitmap;
    .end local v33           #e:Ljava/io/IOException;
    .restart local v39       #retVal:Landroid/graphics/Bitmap;
    :catch_401
    move-exception v33

    move-object/from16 v8, v39

    .line 347
    .end local v39           #retVal:Landroid/graphics/Bitmap;
    .restart local v8       #retVal:Landroid/graphics/Bitmap;
    .local v33, e:Ljava/net/URISyntaxException;
    :goto_404
    const/16 v21, 0x0

    goto/16 :goto_10

    .line 351
    .end local v8           #retVal:Landroid/graphics/Bitmap;
    .end local v33           #e:Ljava/net/URISyntaxException;
    .end local v41           #thumbnailCache:Lcom/cooliris/media/DiskCache;
    :cond_408
    move-object/from16 v0, v34

    iget-boolean v3, v0, Lcom/cooliris/media/MediaItem;->isDrm:Z

    if-eqz v3, :cond_42f

    .line 352
    const/4 v14, 0x0

    .line 359
    .restart local v14       #bitmap:Landroid/graphics/Bitmap;
    new-instance v37, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v37 .. v37}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 360
    .restart local v37       #options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    move-object/from16 v0, v37

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->isPreview:Z

    .line 361
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 363
    if-eqz v14, :cond_31b

    .line 364
    const/16 v3, 0x80

    const/16 v4, 0x60

    invoke-static {v14, v3, v4}, Lcom/cooliris/media/MediaItemTexture;->bitmapCropResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v21

    goto/16 :goto_10

    .line 367
    .end local v14           #bitmap:Landroid/graphics/Bitmap;
    .end local v37           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_42f
    sget-boolean v3, Lcom/cooliris/media/Utils;->mUseDualCore:Z

    if-eqz v3, :cond_45b

    .line 368
    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/cooliris/media/MediaItem;->mDateModifiedInSec:J

    move-wide/from16 v31, v0

    .line 373
    .restart local v31       #dateToUse:J
    :goto_439
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/cooliris/media/MediaItemTexture;->mContext:Landroid/content/Context;

    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/cooliris/media/Utils;->Crc64Long(Ljava/lang/String;)J

    move-result-wide v10

    move-object/from16 v0, v34

    iget-wide v12, v0, Lcom/cooliris/media/MediaItem;->mId:J

    invoke-virtual/range {v34 .. v34}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_475

    const/4 v14, 0x1

    :goto_451
    const-wide/16 v3, 0x3e8

    mul-long v15, v31, v3

    invoke-static/range {v9 .. v16}, Lcom/cooliris/cache/CacheService;->queryThumbnail(Landroid/content/Context;JJZJ)[B

    move-result-object v28

    goto/16 :goto_31b

    .line 370
    .end local v31           #dateToUse:J
    :cond_45b
    move-object/from16 v0, v34

    iget-wide v3, v0, Lcom/cooliris/media/MediaItem;->mDateAddedInSec:J

    move-object/from16 v0, v34

    iget-wide v5, v0, Lcom/cooliris/media/MediaItem;->mDateModifiedInSec:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_46e

    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/cooliris/media/MediaItem;->mDateAddedInSec:J

    move-wide/from16 v31, v0

    .restart local v31       #dateToUse:J
    :goto_46d
    goto :goto_439

    .end local v31           #dateToUse:J
    :cond_46e
    move-object/from16 v0, v34

    iget-wide v0, v0, Lcom/cooliris/media/MediaItem;->mDateModifiedInSec:J

    move-wide/from16 v31, v0

    goto :goto_46d

    .line 373
    .restart local v31       #dateToUse:J
    :cond_475
    const/4 v14, 0x0

    goto :goto_451

    .line 397
    .end local v31           #dateToUse:J
    .restart local v24       #cacheInput:Ljava/io/ByteArrayInputStream;
    .restart local v30       #dataInput:Ljava/io/DataInputStream;
    .restart local v37       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_477
    :try_start_477
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v37

    iput-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_47d
    .catchall {:try_start_477 .. :try_end_47d} :catchall_49c
    .catch Ljava/io/IOException; {:try_start_477 .. :try_end_47d} :catch_47f

    goto/16 :goto_364

    .line 426
    .end local v37           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_47f
    move-exception v33

    move-object/from16 v29, v30

    .end local v30           #dataInput:Ljava/io/DataInputStream;
    .restart local v29       #dataInput:Ljava/io/DataInputStream;
    move-object/from16 v23, v24

    .line 428
    .end local v24           #cacheInput:Ljava/io/ByteArrayInputStream;
    .restart local v23       #cacheInput:Ljava/io/ByteArrayInputStream;
    .local v33, e:Ljava/io/IOException;
    :goto_484
    :try_start_484
    invoke-virtual/range {v33 .. v33}, Ljava/io/IOException;->printStackTrace()V
    :try_end_487
    .catchall {:try_start_484 .. :try_end_487} :catchall_4f1

    .line 430
    invoke-static/range {v23 .. v23}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 431
    invoke-static/range {v29 .. v29}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 448
    const/16 v21, 0x0

    goto/16 :goto_10

    .line 406
    .end local v23           #cacheInput:Ljava/io/ByteArrayInputStream;
    .end local v29           #dataInput:Ljava/io/DataInputStream;
    .end local v33           #e:Ljava/io/IOException;
    .restart local v20       #bitmap:Landroid/graphics/Bitmap;
    .restart local v24       #cacheInput:Ljava/io/ByteArrayInputStream;
    .restart local v30       #dataInput:Ljava/io/DataInputStream;
    .restart local v37       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_491
    const/4 v3, 0x0

    goto/16 :goto_389

    .line 420
    :catch_494
    move-exception v33

    move-object/from16 v14, v20

    .line 421
    .end local v20           #bitmap:Landroid/graphics/Bitmap;
    .restart local v14       #bitmap:Landroid/graphics/Bitmap;
    .local v33, e:Ljava/lang/Exception;
    :goto_497
    :try_start_497
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_49a
    .catchall {:try_start_497 .. :try_end_49a} :catchall_49c
    .catch Ljava/io/IOException; {:try_start_497 .. :try_end_49a} :catch_47f

    goto/16 :goto_3d9

    .line 430
    .end local v14           #bitmap:Landroid/graphics/Bitmap;
    .end local v33           #e:Ljava/lang/Exception;
    .end local v37           #options:Landroid/graphics/BitmapFactory$Options;
    :catchall_49c
    move-exception v3

    move-object/from16 v29, v30

    .end local v30           #dataInput:Ljava/io/DataInputStream;
    .restart local v29       #dataInput:Ljava/io/DataInputStream;
    move-object/from16 v23, v24

    .end local v24           #cacheInput:Ljava/io/ByteArrayInputStream;
    .restart local v23       #cacheInput:Ljava/io/ByteArrayInputStream;
    :goto_4a1
    invoke-static/range {v23 .. v23}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 431
    invoke-static/range {v29 .. v29}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v3

    .line 435
    .end local v23           #cacheInput:Ljava/io/ByteArrayInputStream;
    .end local v29           #dataInput:Ljava/io/DataInputStream;
    :cond_4a8
    invoke-virtual/range {v34 .. v34}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4c8

    .line 436
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/MediaItemTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020061

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 438
    .restart local v14       #bitmap:Landroid/graphics/Bitmap;
    const/16 v3, 0x80

    const/16 v4, 0x60

    invoke-static {v14, v3, v4}, Lcom/cooliris/media/MediaItemTexture;->bitmapCropResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v21

    goto/16 :goto_10

    .line 439
    .end local v14           #bitmap:Landroid/graphics/Bitmap;
    :cond_4c8
    move-object/from16 v0, v34

    iget-object v3, v0, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    const-string v4, "android.resource://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4d8

    .line 440
    const/16 v21, 0x0

    goto/16 :goto_10

    .line 442
    :cond_4d8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/MediaItemTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02006b

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 444
    .restart local v14       #bitmap:Landroid/graphics/Bitmap;
    const/16 v3, 0x80

    const/16 v4, 0x60

    invoke-static {v14, v3, v4}, Lcom/cooliris/media/MediaItemTexture;->bitmapCropResize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v21

    goto/16 :goto_10

    .line 430
    .end local v14           #bitmap:Landroid/graphics/Bitmap;
    .restart local v23       #cacheInput:Ljava/io/ByteArrayInputStream;
    .restart local v29       #dataInput:Ljava/io/DataInputStream;
    :catchall_4f1
    move-exception v3

    goto :goto_4a1

    .end local v23           #cacheInput:Ljava/io/ByteArrayInputStream;
    .restart local v24       #cacheInput:Ljava/io/ByteArrayInputStream;
    :catchall_4f3
    move-exception v3

    move-object/from16 v23, v24

    .end local v24           #cacheInput:Ljava/io/ByteArrayInputStream;
    .restart local v23       #cacheInput:Ljava/io/ByteArrayInputStream;
    goto :goto_4a1

    .line 426
    :catch_4f7
    move-exception v33

    goto :goto_484

    .end local v23           #cacheInput:Ljava/io/ByteArrayInputStream;
    .restart local v24       #cacheInput:Ljava/io/ByteArrayInputStream;
    :catch_4f9
    move-exception v33

    move-object/from16 v23, v24

    .end local v24           #cacheInput:Ljava/io/ByteArrayInputStream;
    .restart local v23       #cacheInput:Ljava/io/ByteArrayInputStream;
    goto :goto_484

    .line 420
    .end local v23           #cacheInput:Ljava/io/ByteArrayInputStream;
    .end local v29           #dataInput:Ljava/io/DataInputStream;
    .restart local v14       #bitmap:Landroid/graphics/Bitmap;
    .restart local v24       #cacheInput:Ljava/io/ByteArrayInputStream;
    .restart local v30       #dataInput:Ljava/io/DataInputStream;
    .restart local v37       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_4fd
    move-exception v33

    goto :goto_497

    .line 346
    .end local v14           #bitmap:Landroid/graphics/Bitmap;
    .end local v24           #cacheInput:Ljava/io/ByteArrayInputStream;
    .end local v30           #dataInput:Ljava/io/DataInputStream;
    .end local v37           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v8       #retVal:Landroid/graphics/Bitmap;
    .restart local v40       #thumbnail:[B
    .restart local v41       #thumbnailCache:Lcom/cooliris/media/DiskCache;
    :catch_4ff
    move-exception v33

    goto/16 :goto_404

    .line 344
    :catch_502
    move-exception v33

    goto/16 :goto_3fd

    .line 316
    .end local v28           #data:[B
    .end local v38           #parentMediaSet:Lcom/cooliris/media/MediaSet;
    .end local v40           #thumbnail:[B
    .end local v41           #thumbnailCache:Lcom/cooliris/media/DiskCache;
    .local v33, e:Ljava/lang/OutOfMemoryError;
    :catch_505
    move-exception v3

    goto/16 :goto_126

    .line 308
    .end local v8           #retVal:Landroid/graphics/Bitmap;
    .end local v33           #e:Ljava/lang/OutOfMemoryError;
    .restart local v39       #retVal:Landroid/graphics/Bitmap;
    :catch_508
    move-exception v33

    move-object/from16 v8, v39

    .end local v39           #retVal:Landroid/graphics/Bitmap;
    .restart local v8       #retVal:Landroid/graphics/Bitmap;
    goto/16 :goto_13a

    .line 264
    .restart local v22       #cache:Lcom/cooliris/media/DiskCache;
    .restart local v35       #local:Z
    .restart local v38       #parentMediaSet:Lcom/cooliris/media/MediaSet;
    :catch_50d
    move-exception v33

    goto/16 :goto_238

    .line 262
    :catch_510
    move-exception v33

    goto/16 :goto_135

    .end local v8           #retVal:Landroid/graphics/Bitmap;
    .end local v22           #cache:Lcom/cooliris/media/DiskCache;
    .end local v35           #local:Z
    .restart local v20       #bitmap:Landroid/graphics/Bitmap;
    .restart local v24       #cacheInput:Ljava/io/ByteArrayInputStream;
    .restart local v28       #data:[B
    .restart local v30       #dataInput:Ljava/io/DataInputStream;
    .restart local v37       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_513
    move-object/from16 v14, v20

    .end local v20           #bitmap:Landroid/graphics/Bitmap;
    .restart local v14       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_3d9

    .end local v14           #bitmap:Landroid/graphics/Bitmap;
    .end local v24           #cacheInput:Ljava/io/ByteArrayInputStream;
    .end local v30           #dataInput:Ljava/io/DataInputStream;
    .end local v37           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v39       #retVal:Landroid/graphics/Bitmap;
    .restart local v40       #thumbnail:[B
    .restart local v41       #thumbnailCache:Lcom/cooliris/media/DiskCache;
    :cond_517
    move-object/from16 v8, v39

    .end local v39           #retVal:Landroid/graphics/Bitmap;
    .restart local v8       #retVal:Landroid/graphics/Bitmap;
    goto/16 :goto_2fe

    .end local v8           #retVal:Landroid/graphics/Bitmap;
    .end local v28           #data:[B
    .end local v40           #thumbnail:[B
    .end local v41           #thumbnailCache:Lcom/cooliris/media/DiskCache;
    .restart local v22       #cache:Lcom/cooliris/media/DiskCache;
    .restart local v39       #retVal:Landroid/graphics/Bitmap;
    :cond_51b
    move-object/from16 v8, v39

    .end local v39           #retVal:Landroid/graphics/Bitmap;
    .restart local v8       #retVal:Landroid/graphics/Bitmap;
    goto/16 :goto_122
.end method
