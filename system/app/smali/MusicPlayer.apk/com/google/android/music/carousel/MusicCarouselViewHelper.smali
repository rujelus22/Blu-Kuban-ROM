.class public Lcom/google/android/music/carousel/MusicCarouselViewHelper;
.super Lcom/google/android/opengl/carousel/CarouselViewHelper;
.source "MusicCarouselViewHelper.java"

# interfaces
.implements Lcom/google/android/music/BottomBarChangeListener;
.implements Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;,
        Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    }
.end annotation


# static fields
.field private static final mAlbumCols:[Ljava/lang/String;

.field private static final mCursorCols:[Ljava/lang/String;

.field private static final mPlaylistCols:[Ljava/lang/String;

.field private static sIconOffsetX:I

.field private static sIconOffsetY:I


# instance fields
.field private mBackgroundAlbumId:J

.field private mBorder:Landroid/graphics/Bitmap;

.field private mCardTextureHeight:I

.field private mCardTextureWidth:I

.field private mCarouselRotationAngle:F

.field private mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

.field private mCount:I

.field private mCursor:Landroid/database/Cursor;

.field private mDelayTransitionHandler:Lcom/google/android/music/Worker;

.field private mDetailLineBitmap:Landroid/graphics/Bitmap;

.field private mDetailTextureHeight:I

.field private final mDetailTextureParameters:Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;

.field private mDetailTextureWidth:I

.field private mFirstCardPosition:I

.field private mGlossyOverlay:Landroid/graphics/Bitmap;

.field private mGlowingBorder:Landroid/graphics/Bitmap;

.field private mIconKeepOnDevice:Landroid/graphics/Bitmap;

.field private mIconOnlyRemote:Landroid/graphics/Bitmap;

.field private mIconSideLoaded:Landroid/graphics/Bitmap;

.field private mIconTextureSize:I

.field private mLabelConfig:Lcom/google/android/music/utils/LabelMaker$Config;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

.field private mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

.field private mObserver:Landroid/database/ContentObserver;

.field private mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

.field private mSyncHandler:Landroid/os/Handler;

.field private mTransitionHeight:F

.field private mUnknownAlbumName:Ljava/lang/String;

.field private mUnknownArtistName:Ljava/lang/String;

.field private mUnknownPlaylistName:Ljava/lang/String;

.field private final mUp:[F

.field private mView:Lcom/google/android/opengl/carousel/CarouselView;

.field private mVisibleCardInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "hasRemote"

    aput-object v1, v0, v2

    const-string v1, "KeepOnId"

    aput-object v1, v0, v3

    const-string v1, "hasLocal"

    aput-object v1, v0, v4

    const-string v1, "artist_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mAlbumCols:[Ljava/lang/String;

    .line 98
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "hasRemote"

    aput-object v1, v0, v2

    const-string v1, "KeepOnId"

    aput-object v1, v0, v3

    const-string v1, "hasLocal"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mPlaylistCols:[Ljava/lang/String;

    .line 287
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "RecentAlbumId"

    aput-object v1, v0, v3

    const-string v1, "album_name"

    aput-object v1, v0, v4

    const-string v1, "album_artist"

    aput-object v1, v0, v5

    const-string v1, "album_artist_sort"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "RecentListId"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "list_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ListType"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCursorCols:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/music/activitymanagement/MusicFragment;Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/opengl/carousel/CarouselView;Lcom/google/android/music/activitymanagement/MusicStateController;)V
    .registers 16
    .parameter "context"
    .parameter "preferences"
    .parameter "view"
    .parameter "appController"

    .prologue
    const/4 v10, 0x4

    const/4 v3, 0x0

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 308
    invoke-direct {p0, p1, p3}, Lcom/google/android/opengl/carousel/CarouselViewHelper;-><init>(Landroid/content/Context;Lcom/google/android/opengl/carousel/CarouselView;)V

    .line 80
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;

    invoke-direct {v0, v3, v3}, Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailTextureParameters:Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;

    .line 125
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_152

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mUp:[F

    .line 128
    new-array v0, v2, [I

    const v3, 0x40ffffff

    aput v3, v0, v1

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailLineBitmap:Landroid/graphics/Bitmap;

    .line 146
    new-instance v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$1;

    const-string v3, "BackgroundHandler"

    invoke-direct {v0, p0, v3}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$1;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDelayTransitionHandler:Lcom/google/android/music/Worker;

    .line 279
    new-instance v0, Landroid/util/SparseArray;

    const/4 v3, 0x7

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    .line 281
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCount:I

    .line 283
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mBackgroundAlbumId:J

    .line 285
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->createLabelConfig()Lcom/google/android/music/utils/LabelMaker$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mLabelConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    .line 309
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    .line 310
    iput-object p3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    .line 312
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-virtual {v0, v2}, Lcom/google/android/opengl/carousel/CarouselView;->setFocusableInTouchMode(Z)V

    .line 313
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    const v3, 0x7f0d0074

    invoke-virtual {v0, v3}, Lcom/google/android/music/activitymanagement/MusicFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mUnknownArtistName:Ljava/lang/String;

    .line 314
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    const v3, 0x7f0d0075

    invoke-virtual {v0, v3}, Lcom/google/android/music/activitymanagement/MusicFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mUnknownAlbumName:Ljava/lang/String;

    .line 315
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    const v3, 0x7f0d0076

    invoke-virtual {v0, v3}, Lcom/google/android/music/activitymanagement/MusicFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mUnknownPlaylistName:Ljava/lang/String;

    .line 316
    iput-object p4, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    .line 317
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090082

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mTransitionHeight:F

    .line 320
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mSyncHandler:Landroid/os/Handler;

    .line 322
    iput-object p2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 324
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v9, :cond_134

    move v7, v2

    .line 327
    .local v7, landscape:Z
    :goto_9a
    invoke-virtual {p3, v2}, Lcom/google/android/opengl/carousel/CarouselView;->setPreserveEGLContextOnPause(Z)V

    .line 329
    invoke-virtual {p3, p0}, Lcom/google/android/opengl/carousel/CarouselView;->setCallback(Lcom/google/android/opengl/carousel/CarouselCallback;)V

    .line 330
    invoke-virtual {p3, v1}, Lcom/google/android/opengl/carousel/CarouselView;->setScaleSelectedCard(Z)V

    .line 331
    const/high16 v0, 0x4040

    invoke-virtual {p3, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setRezInCardCount(F)V

    .line 332
    invoke-virtual {p3, v10}, Lcom/google/android/opengl/carousel/CarouselView;->setPrefetchCardCount(I)V

    .line 333
    invoke-virtual {p3, v2}, Lcom/google/android/opengl/carousel/CarouselView;->setAntiJitter(Z)V

    .line 336
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v0

    if-eqz v0, :cond_137

    .line 337
    invoke-virtual {p3, v1}, Lcom/google/android/opengl/carousel/CarouselView;->setDpadNavigationHorizontal(Z)V

    .line 339
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mLabelConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    iput v9, v0, Lcom/google/android/music/utils/LabelMaker$Config;->layoutAlignment:I

    .line 340
    invoke-virtual {p3, v2}, Lcom/google/android/opengl/carousel/CarouselView;->setMusicPortraitOfLabel(Z)V

    .line 348
    :cond_c0
    :goto_c0
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->initCarouselParameters()V

    .line 349
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 353
    .local v8, res:Landroid/content/res/Resources;
    const v0, 0x7f0200d5

    :try_start_ca
    invoke-static {v8, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mBorder:Landroid/graphics/Bitmap;

    .line 354
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mBorder:Landroid/graphics/Bitmap;

    invoke-virtual {p3, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setDefaultBitmap(Landroid/graphics/Bitmap;)V

    .line 355
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mBorder:Landroid/graphics/Bitmap;

    invoke-virtual {p3, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 356
    const v0, 0x7f020009

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCardTextureWidth:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCardTextureHeight:I

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v0, v2, v3}, Lcom/google/android/opengl/carousel/GL2Helper;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mGlowingBorder:Landroid/graphics/Bitmap;
    :try_end_ef
    .catch Ljava/lang/OutOfMemoryError; {:try_start_ca .. :try_end_ef} :catch_148

    .line 362
    :goto_ef
    invoke-direct {p0, v8}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->initManageMusicIcons(Landroid/content/res/Resources;)V

    .line 364
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mGlowingBorder:Landroid/graphics/Bitmap;

    invoke-virtual {p3, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setGlowingBitmap(Landroid/graphics/Bitmap;)V

    .line 365
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailLineBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setDetailLineBitmap(Landroid/graphics/Bitmap;)V

    .line 368
    invoke-virtual {p3, v10}, Lcom/google/android/opengl/carousel/CarouselView;->setDragModel(I)V

    .line 369
    const v0, 0x7f0a0016

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setBackgroundColor(I)V

    .line 370
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->createBitmapPool()V

    .line 372
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCarouselView()Lcom/google/android/opengl/carousel/CarouselView;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/google/android/opengl/carousel/CarouselView;->setBackgroundTransitionDuration(J)V

    .line 373
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCarouselView()Lcom/google/android/opengl/carousel/CarouselView;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-direct {p0, v2, v3}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getBackgroundBitmap(J)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/opengl/carousel/CarouselView;->setBackgroundBitmap(Landroid/graphics/Bitmap;Z)V

    .line 374
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->requestReadCursor()V

    .line 376
    new-instance v0, Lcom/google/android/music/NetworkMonitorServiceConnection;

    invoke-direct {v0}, Lcom/google/android/music/NetworkMonitorServiceConnection;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    .line 377
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/music/NetworkMonitorServiceConnection;->bindToService(Landroid/content/Context;)V

    .line 378
    return-void

    .end local v7           #landscape:Z
    .end local v8           #res:Landroid/content/res/Resources;
    :cond_134
    move v7, v1

    .line 324
    goto/16 :goto_9a

    .line 341
    .restart local v7       #landscape:Z
    :cond_137
    if-nez v7, :cond_c0

    .line 342
    invoke-virtual {p3, v1}, Lcom/google/android/opengl/carousel/CarouselView;->setDpadNavigationHorizontal(Z)V

    .line 344
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mLabelConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    iput v9, v0, Lcom/google/android/music/utils/LabelMaker$Config;->layoutAlignment:I

    .line 345
    invoke-virtual {p3, v2}, Lcom/google/android/opengl/carousel/CarouselView;->setMusicPortraitOfLabel(Z)V

    .line 346
    invoke-virtual {p3, v2}, Lcom/google/android/opengl/carousel/CarouselView;->setSpecialRotationInPortrait(Z)V

    goto/16 :goto_c0

    .line 359
    .restart local v8       #res:Landroid/content/res/Resources;
    :catch_148
    move-exception v6

    .line 360
    .local v6, e:Ljava/lang/OutOfMemoryError;
    iget v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCardTextureWidth:I

    iget v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCardTextureHeight:I

    invoke-static {v6, v0, v2}, Lcom/google/android/music/utils/AlbumArtUtils;->reportAndRethrow(Ljava/lang/OutOfMemoryError;II)V

    goto :goto_ef

    .line 125
    nop

    :array_152
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$002(Lcom/google/android/music/carousel/MusicCarouselViewHelper;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mFirstCardPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCarouselRotationAngle:F

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->openTrackBrowserForShuffleAll()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/music/carousel/MusicCarouselViewHelper;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->openTrackBrowserForAlbum(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/music/carousel/MusicCarouselViewHelper;JLjava/lang/String;I)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->openTrackBrowserForPlaylist(JLjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Landroid/util/SparseArray;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/music/carousel/MusicCarouselViewHelper;I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCardInfo(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mBackgroundAlbumId:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/google/android/music/carousel/MusicCarouselViewHelper;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mBackgroundAlbumId:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCardTextureWidth:I

    return v0
.end method

.method static synthetic access$1700(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCardTextureHeight:I

    return v0
.end method

.method static synthetic access$1800(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getGlossyOverlay()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCardIdForCardInfo(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getBackground()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/opengl/carousel/CarouselView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCarouselView()Lcom/google/android/opengl/carousel/CarouselView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Ljava/lang/String;[I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->describeShuffle(Ljava/lang/String;[I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/opengl/carousel/CarouselView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCarouselView()Lcom/google/android/opengl/carousel/CarouselView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/opengl/carousel/CarouselView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCarouselView()Lcom/google/android/opengl/carousel/CarouselView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->clearCursor()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mGlossyOverlay:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mGlossyOverlay:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->readCursor()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->updateKeepOnValues(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/music/activitymanagement/MusicFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/opengl/carousel/CarouselView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/music/NetworkMonitorServiceConnection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/music/activitymanagement/MusicStateController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    return-object v0
.end method

.method private clearCursor()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1377
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_17

    .line 1378
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_12

    .line 1379
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1380
    iput-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mObserver:Landroid/database/ContentObserver;

    .line 1382
    :cond_12
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1384
    :cond_17
    iput-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCursor:Landroid/database/Cursor;

    .line 1385
    return-void
.end method

.method private closest(III)I
    .registers 6
    .parameter "target"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 472
    sub-int v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v1, p1, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 475
    .end local p2
    :goto_e
    return p2

    .restart local p2
    :cond_f
    move p2, p3

    goto :goto_e
.end method

.method private createBitmapPool()V
    .registers 5

    .prologue
    .line 525
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCardTextureWidth:I

    iget v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCardTextureHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->createBitmapPool(IIILandroid/graphics/Bitmap$Config;)V

    .line 527
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailTextureWidth:I

    iget v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailTextureHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->createBitmapPool(IIILandroid/graphics/Bitmap$Config;)V

    .line 530
    return-void
.end method

.method private createCardInfo(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 949
    .line 953
    if-nez p1, :cond_19

    .line 954
    :try_start_3
    invoke-static {}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->createShuffleAllCardRecord()Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    move-result-object v0

    move-object v2, v0

    .line 961
    :goto_8
    if-eqz v2, :cond_42

    .line 962
    new-instance v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    invoke-direct {v0, v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_5c

    .line 963
    :try_start_f
    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_28

    .line 964
    :try_start_12
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 965
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_25

    .line 972
    :goto_18
    return-object v0

    .line 956
    :cond_19
    :try_start_19
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCursorForCard(I)Landroid/database/Cursor;

    move-result-object v0

    .line 957
    if-eqz v0, :cond_61

    .line 958
    invoke-direct {p0, v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->readCardRecord(Landroid/database/Cursor;)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_22} :catch_5c

    move-result-object v0

    move-object v2, v0

    goto :goto_8

    .line 965
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    :try_start_27
    throw v1
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_28} :catch_28

    .line 969
    :catch_28
    move-exception v1

    .line 970
    :goto_29
    const-string v2, "MusicCarouselViewHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Database exception trying to get data for card "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 967
    :cond_42
    :try_start_42
    const-string v0, "MusicCarouselViewHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get data for card "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_5a} :catch_5c

    move-object v0, v1

    goto :goto_18

    .line 969
    :catch_5c
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_29

    :cond_61
    move-object v2, v1

    goto :goto_8
.end method

.method private createLabelConfig()Lcom/google/android/music/utils/LabelMaker$Config;
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 605
    new-instance v0, Lcom/google/android/music/utils/LabelMaker$Config;

    invoke-direct {v0}, Lcom/google/android/music/utils/LabelMaker$Config;-><init>()V

    .line 606
    .local v0, config:Lcom/google/android/music/utils/LabelMaker$Config;
    const/4 v1, 0x4

    iput v1, v0, Lcom/google/android/music/utils/LabelMaker$Config;->sizeMode:I

    .line 607
    iput v3, v0, Lcom/google/android/music/utils/LabelMaker$Config;->overflowMode:I

    .line 608
    iget v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailTextureWidth:I

    iput v1, v0, Lcom/google/android/music/utils/LabelMaker$Config;->width:I

    .line 609
    iget v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailTextureHeight:I

    iput v1, v0, Lcom/google/android/music/utils/LabelMaker$Config;->height:I

    .line 610
    iget v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailTextureWidth:I

    iput v1, v0, Lcom/google/android/music/utils/LabelMaker$Config;->clipWidth:I

    .line 611
    const/4 v1, 0x3

    iput v1, v0, Lcom/google/android/music/utils/LabelMaker$Config;->yalignment:I

    .line 612
    const/high16 v1, 0x3f40

    iput v1, v0, Lcom/google/android/music/utils/LabelMaker$Config;->secondaryOpacity:F

    .line 613
    iput-boolean v2, v0, Lcom/google/android/music/utils/LabelMaker$Config;->bold:Z

    .line 614
    iput v2, v0, Lcom/google/android/music/utils/LabelMaker$Config;->xalignment:I

    .line 615
    iput v3, v0, Lcom/google/android/music/utils/LabelMaker$Config;->multiLine:I

    .line 616
    iput v2, v0, Lcom/google/android/music/utils/LabelMaker$Config;->maxLines:I

    .line 617
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Lcom/google/android/music/utils/LabelMaker$Config;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 619
    return-object v0
.end method

.method private describeShuffle(Ljava/lang/String;[I)V
    .registers 3
    .parameter "label"
    .parameter "comeFrom"

    .prologue
    .line 1240
    return-void
.end method

.method private describeVisibleCards(Ljava/lang/String;Landroid/util/SparseArray;)V
    .registers 3
    .parameter "label"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1225
    .local p2, visibleCards:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;>;"
    return-void
.end method

.method private effectiveAlbumName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "albumName"

    .prologue
    .line 1308
    invoke-static {p1}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1309
    iget-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mUnknownAlbumName:Ljava/lang/String;

    .line 1311
    .end local p1
    :cond_8
    return-object p1
.end method

.method private effectiveArtistName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "artistName"

    .prologue
    .line 1293
    invoke-static {p1}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1294
    iget-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mUnknownArtistName:Ljava/lang/String;

    .line 1296
    .end local p1
    :cond_8
    return-object p1
.end method

.method private effectivePlaylistName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 1300
    invoke-static {p1}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1301
    iget-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mUnknownPlaylistName:Ljava/lang/String;

    .line 1303
    .end local p1
    :cond_8
    return-object p1
.end method

.method private static find(Landroid/util/SparseArray;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;)I
    .registers 6
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;",
            ">;",
            "Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1200
    .local p0, array:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1201
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_17

    .line 1202
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    .line 1203
    .local v2, v:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    invoke-virtual {v2, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1207
    .end local v0           #i:I
    .end local v2           #v:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    :goto_13
    return v0

    .line 1201
    .restart local v0       #i:I
    .restart local v2       #v:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1207
    .end local v2           #v:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    :cond_17
    const/4 v0, -0x1

    goto :goto_13
.end method

.method private getAlbumCurosr(J)Landroid/database/Cursor;
    .registers 10
    .parameter "albumId"

    .prologue
    const/4 v3, 0x0

    .line 1397
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/store/MusicContent$Albums;->getAlbumsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mAlbumCols:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1401
    .local v6, c:Landroid/database/Cursor;
    return-object v6
.end method

.method private getBackground()V
    .registers 6

    .prologue
    const-wide/16 v2, -0x1

    .line 1243
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1282
    :cond_11
    :goto_11
    return-void

    .line 1247
    :cond_12
    iget v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mFirstCardPosition:I

    .line 1251
    if-ltz v1, :cond_11

    iget v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCount:I

    if-ge v1, v0, :cond_11

    .line 1257
    invoke-direct {p0, v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCardInfo(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    move-result-object v0

    .line 1258
    if-nez v0, :cond_24

    .line 1259
    invoke-direct {p0, v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->createCardInfo(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    move-result-object v0

    .line 1262
    :cond_24
    if-eqz v0, :cond_4a

    .line 1263
    iget-object v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    .line 1265
    iget v1, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4a

    .line 1266
    iget-wide v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    .line 1269
    :goto_2f
    cmp-long v2, v0, v2

    if-eqz v2, :cond_11

    iget-wide v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mBackgroundAlbumId:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_11

    .line 1273
    iput-wide v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mBackgroundAlbumId:J

    .line 1275
    invoke-direct {p0, v0, v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getBackgroundBitmap(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1277
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mSyncHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper$13;

    invoke-direct {v2, p0, v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$13;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_11

    :cond_4a
    move-wide v0, v2

    goto :goto_2f
.end method

.method private getBackgroundBitmap(J)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "albumId"

    .prologue
    .line 1285
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_d

    .line 1286
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-static {v0, p1, p2}, Lcom/google/android/music/utils/BackgroundUtils;->getAdaptedBitmap(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1288
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-static {v0}, Lcom/google/android/music/utils/BackgroundUtils;->getDefaultBackground(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_c
.end method

.method private getCardIdForCardInfo(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;)I
    .registers 5
    .parameter "cardInfo"

    .prologue
    .line 1321
    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1322
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-static {v1, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->find(Landroid/util/SparseArray;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;)I

    move-result v0

    .line 1323
    .local v0, index:I
    if-ltz v0, :cond_13

    .line 1324
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    monitor-exit v2

    .line 1326
    :goto_12
    return v1

    :cond_13
    const/4 v1, -0x1

    monitor-exit v2

    goto :goto_12

    .line 1328
    .end local v0           #index:I
    :catchall_16
    move-exception v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private getCardInfo(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    .registers 4
    .parameter "id"

    .prologue
    .line 1315
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1316
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    monitor-exit v1

    return-object v0

    .line 1317
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method private getCardRecord(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    .registers 5
    .parameter "id"

    .prologue
    .line 1333
    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1334
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    .line 1335
    .local v0, info:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    if-eqz v0, :cond_11

    .line 1336
    iget-object v1, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    monitor-exit v2

    .line 1338
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_10

    .line 1339
    .end local v0           #info:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private getCursor()Landroid/database/Cursor;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 1358
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2a

    .line 1359
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    sget-object v1, Lcom/google/android/music/store/MusicContent$Recent;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCursorCols:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1362
    .local v6, c:Landroid/database/Cursor;
    new-instance v0, Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-direct {v0, v6}, Lcom/google/android/music/medialist/MediaList$MediaCursor;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCursor:Landroid/database/Cursor;

    .line 1363
    new-instance v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$14;

    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$14;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mObserver:Landroid/database/ContentObserver;

    .line 1370
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 1373
    .end local v6           #c:Landroid/database/Cursor;
    :cond_2a
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private getCursorForCard(I)Landroid/database/Cursor;
    .registers 5
    .parameter

    .prologue
    .line 1347
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1c

    .line 1348
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "card out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1350
    :cond_1c
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1351
    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_29

    .line 1352
    const/4 v0, 0x0

    .line 1354
    :cond_29
    return-object v0
.end method

.method private getDetailLabel(I)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 1041
    const/4 v0, 0x0

    .line 1042
    if-ltz p1, :cond_37

    .line 1043
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCardInfo(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    move-result-object v1

    .line 1044
    if-eqz v1, :cond_37

    .line 1045
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mActiveDetailTexture:Z

    .line 1046
    iget-object v0, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    .line 1047
    iget v1, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    packed-switch v1, :pswitch_data_78

    .line 1058
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1049
    :pswitch_2e
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    const v1, 0x7f0d013c

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1062
    :cond_37
    :goto_37
    return-object v0

    .line 1052
    :pswitch_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mArtist:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    .line 1055
    :pswitch_54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    const v2, 0x7f0d00a8

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/MusicFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    .line 1047
    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_38
        :pswitch_54
    .end packed-switch
.end method

.method private getGlossyOverlay()Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 544
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mGlossyOverlay:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mGlossyOverlay:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 545
    :cond_c
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 546
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0200cc

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mGlossyOverlay:Landroid/graphics/Bitmap;

    .line 548
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_1b
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mGlossyOverlay:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method private getPlaylistCurosr(J)Landroid/database/Cursor;
    .registers 10
    .parameter "playlistId"

    .prologue
    const/4 v3, 0x0

    .line 1410
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-static {p1, p2}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mPlaylistCols:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1414
    .local v6, c:Landroid/database/Cursor;
    return-object v6
.end method

.method private getScaledIcon(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "res"
    .parameter "resId"

    .prologue
    .line 506
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 507
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mIconTextureSize:I

    iget v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mIconTextureSize:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private initCarouselParameters()V
    .registers 20

    .prologue
    .line 384
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    .line 385
    .local v14, view:Lcom/google/android/opengl/carousel/CarouselView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v15}, Lcom/google/android/music/activitymanagement/MusicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 387
    .local v11, res:Landroid/content/res/Resources;
    const/high16 v15, 0x7f08

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 389
    .local v3, cardSlots:I
    invoke-virtual {v14, v3}, Lcom/google/android/opengl/carousel/CarouselView;->setSlotCount(I)V

    .line 390
    const v15, 0x7f080001

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/google/android/opengl/carousel/CarouselView;->setVisibleSlots(I)V

    .line 391
    const v15, 0x7f080002

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/google/android/opengl/carousel/CarouselView;->setVisibleDetails(I)V

    .line 392
    const v15, 0x7f090002

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    invoke-virtual {v14, v15}, Lcom/google/android/opengl/carousel/CarouselView;->setCameraFov(F)V

    .line 393
    const v15, 0x7f090001

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    invoke-virtual {v14, v15}, Lcom/google/android/opengl/carousel/CarouselView;->setRadius(F)V

    .line 394
    const-wide v15, -0x3fc09585d6aac7a2L

    int-to-double v0, v3

    move-wide/from16 v17, v0

    div-double v15, v15, v17

    double-to-float v15, v15

    invoke-virtual {v14, v15}, Lcom/google/android/opengl/carousel/CarouselView;->setStartAngle(F)V

    .line 395
    const v15, 0x7f090003

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    invoke-virtual {v14, v15}, Lcom/google/android/opengl/carousel/CarouselView;->setCardGlowScale(F)V

    .line 397
    const v15, 0x7f090004

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    invoke-virtual {v14, v15}, Lcom/google/android/opengl/carousel/CarouselView;->setAccelerationFactor(F)V

    .line 398
    const v15, 0x7f090005

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    invoke-virtual {v14, v15}, Lcom/google/android/opengl/carousel/CarouselView;->setFadeOutLeftAngle(F)V

    .line 404
    const/16 v2, 0x168

    .line 405
    .local v2, NOMINAL_SCREEN_SIZE:I
    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 406
    .local v8, metrics:Landroid/util/DisplayMetrics;
    iget v15, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 407
    .local v9, minScreenSize:I
    const v15, 0x7f080003

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 408
    .local v4, carouselTextureSize:I
    mul-int v15, v9, v4

    div-int/lit16 v13, v15, 0x168

    .line 409
    .local v13, unroundedTexelSize:I
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->roundToNearbyValue(I)I

    move-result v12

    .line 410
    .local v12, textureSizeTexels:I
    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCardTextureWidth:I

    .line 411
    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCardTextureHeight:I

    .line 414
    const/4 v15, 0x3

    new-array v5, v15, [F

    const/4 v15, 0x0

    const v16, 0x7f090006

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    aput v16, v5, v15

    const/4 v15, 0x1

    const v16, 0x7f090007

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    aput v16, v5, v15

    const/4 v15, 0x2

    const v16, 0x7f090008

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    aput v16, v5, v15

    .line 418
    .local v5, eye:[F
    const/4 v15, 0x3

    new-array v7, v15, [F

    const/4 v15, 0x0

    const v16, 0x7f090009

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    aput v16, v7, v15

    const/4 v15, 0x1

    const v16, 0x7f09000a

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    aput v16, v7, v15

    const/4 v15, 0x2

    const v16, 0x7f09000b

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    aput v16, v7, v15

    .line 421
    .local v7, lookat:[F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mUp:[F

    invoke-virtual {v14, v5, v7, v15}, Lcom/google/android/opengl/carousel/CarouselView;->setLookAt([F[F[F)V

    .line 424
    const v15, 0x7f09000d

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailTextureWidth:I

    .line 425
    const v15, 0x7f09000e

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailTextureHeight:I

    .line 426
    const v15, 0x7f09000c

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mIconTextureSize:I

    .line 427
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mLabelConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailTextureWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Lcom/google/android/music/utils/LabelMaker$Config;->width:I

    .line 428
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mLabelConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailTextureHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Lcom/google/android/music/utils/LabelMaker$Config;->height:I

    .line 429
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mLabelConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailTextureWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Lcom/google/android/music/utils/LabelMaker$Config;->clipWidth:I

    .line 430
    const/high16 v15, 0x7f09

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v6, v15

    .line 431
    .local v6, fontSize:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mLabelConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    int-to-float v0, v6

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Lcom/google/android/music/utils/LabelMaker$Config;->fontSize:F

    .line 432
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mLabelConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    int-to-float v0, v6

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Lcom/google/android/music/utils/LabelMaker$Config;->secondaryFontSize:F

    .line 434
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailTextureParameters:Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;

    .line 435
    .local v10, parameters:Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;
    const v15, 0x7f09000f

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    iput v15, v10, Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;->textureOffsetX:F

    .line 436
    const v15, 0x7f090010

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    iput v15, v10, Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;->textureOffsetY:F

    .line 437
    const v15, 0x7f090011

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    iput v15, v10, Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;->lineOffsetX:F

    .line 438
    const v15, 0x7f090012

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    iput v15, v10, Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;->lineOffsetY:F

    .line 441
    return-void
.end method

.method private initManageMusicIcons(Landroid/content/res/Resources;)V
    .registers 4
    .parameter "res"

    .prologue
    .line 498
    const v0, 0x7f02005f

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getScaledIcon(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mIconSideLoaded:Landroid/graphics/Bitmap;

    .line 499
    const v0, 0x7f020060

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getScaledIcon(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mIconKeepOnDevice:Landroid/graphics/Bitmap;

    .line 500
    const v0, 0x7f020061

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getScaledIcon(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mIconOnlyRemote:Landroid/graphics/Bitmap;

    .line 501
    const v0, 0x7f090080

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->sIconOffsetX:I

    .line 502
    iget v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailTextureHeight:I

    iget v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mIconTextureSize:I

    sub-int/2addr v0, v1

    sput v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->sIconOffsetY:I

    .line 503
    return-void
.end method

.method private isItemKeepOn(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;)Z
    .registers 9
    .parameter "cardRecord"

    .prologue
    const/4 v3, 0x0

    .line 1508
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 1509
    .local v1, manager:Lcom/google/android/music/OfflineMusicManager;
    if-nez v1, :cond_7

    move v0, v3

    .line 1530
    :cond_6
    :goto_6
    return v0

    .line 1512
    :cond_7
    iget-boolean v0, p1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mKeepOn:Z

    .line 1514
    .local v0, keepOn:Z
    iget v4, p1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    packed-switch v4, :pswitch_data_26

    move v0, v3

    .line 1523
    goto :goto_6

    .line 1516
    :pswitch_10
    iget-wide v3, p1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    iget-wide v5, p1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mArtistId:J

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/google/android/music/OfflineMusicManager;->isAlbumSelected(JJ)Ljava/lang/Boolean;

    move-result-object v2

    .line 1527
    .local v2, uiKeepOn:Ljava/lang/Boolean;
    :goto_18
    if-eqz v2, :cond_6

    .line 1528
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_6

    .line 1520
    .end local v2           #uiKeepOn:Ljava/lang/Boolean;
    :pswitch_1f
    iget-wide v3, p1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListId:J

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->isPlaylistSelected(J)Ljava/lang/Boolean;

    move-result-object v2

    .line 1521
    .restart local v2       #uiKeepOn:Ljava/lang/Boolean;
    goto :goto_18

    .line 1514
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_10
        :pswitch_1f
    .end packed-switch
.end method

.method private isManageMusicMode()Z
    .registers 2

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private listTypeToPlaylistType(I)I
    .registers 3
    .parameter "listType"

    .prologue
    .line 999
    packed-switch p1, :pswitch_data_8

    .line 1002
    const/4 v0, 0x0

    .line 1004
    :goto_4
    return v0

    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 999
    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method private onCreateContextMusicMenu(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;II)V
    .registers 7
    .parameter "record"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 685
    if-nez p1, :cond_3

    .line 715
    :goto_2
    return-void

    .line 686
    :cond_3
    const/4 v1, 0x2

    new-array v0, v1, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    .line 687
    .local v0, location:[I
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    new-instance v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;[I)V

    invoke-static {v1, v2}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsyncWithCallback(Lcom/google/android/music/Worker;Lcom/google/android/music/utils/async/AsyncRunner;)V

    goto :goto_2
.end method

.method private openTrackBrowserForAlbum(J)V
    .registers 10
    .parameter "album_id"

    .prologue
    const-wide/16 v3, -0x1

    .line 630
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    move-wide v1, p1

    move-wide v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListingForAlbum(JJJ)V

    .line 631
    return-void
.end method

.method private openTrackBrowserForPlaylist(JLjava/lang/String;I)V
    .registers 6
    .parameter "id"
    .parameter "name"
    .parameter "playlistType"

    .prologue
    .line 634
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListingForPlaylist(JLjava/lang/String;I)V

    .line 635
    return-void
.end method

.method private openTrackBrowserForShuffleAll()V
    .registers 3

    .prologue
    .line 625
    new-instance v0, Lcom/google/android/music/medialist/AllSongsList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/music/medialist/AllSongsList;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->shuffleAll(Lcom/google/android/music/medialist/SongList;)V

    .line 626
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->startMediaPlayer(Lcom/google/android/music/activitymanagement/MusicFragment;)V

    .line 627
    return-void
.end method

.method private postOpenTrackBrowserForAlbum(J)V
    .registers 5
    .parameter "albumId"

    .prologue
    .line 735
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mSyncHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$6;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 739
    return-void
.end method

.method private postOpenTrackBrowserForPlaylist(JLjava/lang/String;I)V
    .registers 12
    .parameter "id"
    .parameter "name"
    .parameter "playlistType"

    .prologue
    .line 743
    iget-object v6, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mSyncHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$7;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$7;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;JLjava/lang/String;I)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 747
    return-void
.end method

.method private postOpenTrackBrowserForShuffleAll()V
    .registers 3

    .prologue
    .line 728
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mSyncHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$5;

    invoke-direct {v1, p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$5;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 732
    return-void
.end method

.method private readCardRecord(Landroid/database/Cursor;)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    .registers 16
    .parameter "c"

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x1

    .line 976
    const/4 v4, 0x0

    .line 977
    .local v4, cardRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    invoke-interface {p1, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_32

    .line 978
    invoke-interface {p1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 979
    .local v1, albumId:J
    const/4 v11, 0x2

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->effectiveAlbumName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 980
    .local v0, album:Ljava/lang/String;
    const/4 v11, 0x3

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->effectiveArtistName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 981
    .local v3, artist:Ljava/lang/String;
    const/4 v11, 0x4

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->effectiveArtistName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 983
    .local v10, sortableAlbumArtistName:Ljava/lang/String;
    invoke-static {v1, v2, v0, v3, v10}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->createAlbumCardRecord(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    move-result-object v4

    .line 992
    .end local v0           #album:Ljava/lang/String;
    .end local v1           #albumId:J
    .end local v3           #artist:Ljava/lang/String;
    .end local v10           #sortableAlbumArtistName:Ljava/lang/String;
    :cond_2c
    :goto_2c
    if-eqz v4, :cond_31

    .line 993
    invoke-direct {p0, v4}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->updateKeepOnValues(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;)Z

    .line 995
    :cond_31
    return-object v4

    .line 985
    :cond_32
    invoke-interface {p1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_2c

    .line 986
    invoke-interface {p1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 987
    .local v5, listId:J
    const/4 v11, 0x6

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->effectivePlaylistName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 988
    .local v7, listName:Ljava/lang/String;
    const/4 v11, 0x7

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 989
    .local v8, listType:I
    invoke-direct {p0, v8}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->listTypeToPlaylistType(I)I

    move-result v9

    .line 990
    .local v9, playlistType:I
    invoke-static {v5, v6, v7, v9}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->createListCardRecord(JLjava/lang/String;I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    move-result-object v4

    goto :goto_2c
.end method

.method private readCursor()V
    .registers 16

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1076
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 1077
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 1083
    const/16 v2, 0x33

    if-lez v8, :cond_46

    add-int/lit8 v0, v8, 0x1

    :goto_11
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1086
    iget v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCount:I

    if-eq v9, v0, :cond_48

    move v2, v3

    .line 1087
    :goto_1a
    iput v9, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCount:I

    .line 1092
    iget-object v10, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    monitor-enter v10

    .line 1095
    :try_start_1f
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 1096
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12, v11}, Landroid/util/SparseArray;-><init>(I)V

    move v6, v1

    .line 1097
    :goto_2b
    if-ge v6, v11, :cond_6c

    .line 1098
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 1099
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    .line 1100
    if-nez v13, :cond_4a

    .line 1101
    if-lez v8, :cond_42

    .line 1102
    invoke-virtual {v12, v13, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1097
    :cond_42
    :goto_42
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2b

    :cond_46
    move v0, v1

    .line 1083
    goto :goto_11

    :cond_48
    move v2, v1

    .line 1086
    goto :goto_1a

    .line 1106
    :cond_4a
    add-int/lit8 v4, v13, -0x1

    invoke-interface {v7, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_116

    .line 1107
    invoke-direct {p0, v7}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->readCardRecord(Landroid/database/Cursor;)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    move-result-object v4

    .line 1109
    :goto_56
    if-eqz v4, :cond_42

    .line 1110
    iget-object v14, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    invoke-virtual {v4, v14}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_65

    .line 1111
    new-instance v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    invoke-direct {v0, v4}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;)V

    .line 1113
    :cond_65
    invoke-virtual {v12, v13, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_42

    .line 1195
    :catchall_69
    move-exception v0

    monitor-exit v10
    :try_end_6b
    .catchall {:try_start_1f .. :try_end_6b} :catchall_69

    throw v0

    .line 1122
    :cond_6c
    :try_start_6c
    new-array v6, v9, [I

    move v0, v1

    .line 1123
    :goto_6f
    if-ge v0, v9, :cond_77

    .line 1124
    const/4 v4, -0x1

    aput v4, v6, v0

    .line 1123
    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    :cond_77
    move v5, v1

    move v4, v1

    .line 1130
    :goto_79
    if-ge v5, v11, :cond_a9

    .line 1131
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    .line 1132
    invoke-static {v12, v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->find(Landroid/util/SparseArray;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;)I

    move-result v7

    .line 1133
    if-gez v7, :cond_114

    .line 1136
    iget-object v4, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mChangeListener:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;

    if-eqz v4, :cond_a3

    .line 1141
    iget-object v4, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicFragment;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicUIController;->getArtDownloadServiceConnection()Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;

    move-result-object v4

    iget-object v7, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-wide v7, v7, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    iget-object v9, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mChangeListener:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;

    invoke-virtual {v4, v7, v8, v9}, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->removeAlbumArtChangeListener(JLcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;)V

    .line 1144
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mChangeListener:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;

    :cond_a3
    move v0, v3

    .line 1130
    :goto_a4
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v0

    goto :goto_79

    .line 1151
    :cond_a9
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v7

    move v5, v1

    .line 1152
    :goto_ae
    if-ge v5, v7, :cond_d2

    .line 1153
    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 1154
    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    .line 1155
    iget-object v9, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-static {v9, v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->find(Landroid/util/SparseArray;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;)I

    move-result v0

    .line 1156
    if-ltz v0, :cond_112

    .line 1157
    iget-object v9, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 1158
    aput v0, v6, v8

    .line 1159
    if-eq v8, v0, :cond_112

    move v0, v3

    .line 1152
    :goto_cd
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v0

    goto :goto_ae

    .line 1166
    :cond_d2
    if-nez v2, :cond_d6

    if-eqz v4, :cond_e2

    .line 1168
    :cond_d6
    const-string v0, "old visible cards"

    iget-object v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v3}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->describeVisibleCards(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1169
    const-string v0, "new visible cards"

    invoke-direct {p0, v0, v12}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->describeVisibleCards(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1171
    :cond_e2
    if-eqz v4, :cond_ff

    .line 1174
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1175
    :goto_e9
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_ff

    .line 1176
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-virtual {v12, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v12, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1175
    add-int/lit8 v1, v1, 0x1

    goto :goto_e9

    .line 1180
    :cond_ff
    if-nez v2, :cond_103

    if-eqz v4, :cond_110

    .line 1182
    :cond_103
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mSyncHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$12;

    invoke-direct {v1, p0, v6}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$12;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1189
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getBackground()V

    .line 1195
    :cond_110
    monitor-exit v10
    :try_end_111
    .catchall {:try_start_6c .. :try_end_111} :catchall_69

    .line 1196
    return-void

    :cond_112
    move v0, v4

    goto :goto_cd

    :cond_114
    move v0, v4

    goto :goto_a4

    :cond_116
    move-object v4, v5

    goto/16 :goto_56
.end method

.method private recycleBitmaps()V
    .registers 2

    .prologue
    .line 533
    new-instance v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$2;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    .line 540
    return-void
.end method

.method private roundToNearbyValue(I)I
    .registers 7
    .parameter "n"

    .prologue
    const/4 v3, 0x2

    .line 456
    if-ge p1, v3, :cond_4

    .line 464
    :goto_3
    return v3

    .line 459
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->roundUpPowerOfTwo(I)I

    move-result v1

    .line 460
    .local v1, nextPOT:I
    shr-int/lit8 v2, v1, 0x1

    .line 461
    .local v2, prevPOT:I
    mul-int/lit8 v4, v2, 0x3

    div-int/lit8 v0, v4, 0x2

    .line 462
    .local v0, halfPOT:I
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->closest(III)I

    move-result v3

    .line 463
    .local v3, result:I
    invoke-direct {p0, p1, v3, v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->closest(III)I

    move-result v3

    .line 464
    goto :goto_3
.end method

.method private roundUpPowerOfTwo(I)I
    .registers 3
    .parameter "n"

    .prologue
    .line 484
    add-int/lit8 p1, p1, -0x1

    .line 485
    shr-int/lit8 v0, p1, 0x1

    or-int/2addr p1, v0

    .line 486
    shr-int/lit8 v0, p1, 0x2

    or-int/2addr p1, v0

    .line 487
    shr-int/lit8 v0, p1, 0x4

    or-int/2addr p1, v0

    .line 488
    shr-int/lit8 v0, p1, 0x8

    or-int/2addr p1, v0

    .line 489
    shr-int/lit8 v0, p1, 0x10

    or-int/2addr p1, v0

    .line 490
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private switchCardKeepOnStatus(I)V
    .registers 9
    .parameter "id"

    .prologue
    .line 1472
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCardRecord(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    move-result-object v0

    .line 1473
    .local v0, cardRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    if-eqz v0, :cond_a

    iget-boolean v3, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mHasRemote:Z

    if-nez v3, :cond_b

    .line 1499
    :cond_a
    :goto_a
    return-void

    .line 1475
    :cond_b
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 1476
    .local v1, manager:Lcom/google/android/music/OfflineMusicManager;
    if-eqz v1, :cond_a

    .line 1479
    invoke-direct {p0, v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->isItemKeepOn(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;)Z

    move-result v2

    .line 1480
    .local v2, wasKept:Z
    iget v3, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    packed-switch v3, :pswitch_data_3e

    goto :goto_a

    .line 1482
    :pswitch_19
    if-eqz v2, :cond_29

    .line 1483
    iget-wide v3, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    iget-wide v5, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mArtistId:J

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/google/android/music/OfflineMusicManager;->deselectAlbum(JJ)V

    .line 1498
    :goto_22
    iget-object v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/google/android/opengl/carousel/CarouselView;->invalidateDetailTexture(IZ)V

    goto :goto_a

    .line 1485
    :cond_29
    iget-wide v3, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->selectAlbum(J)V

    goto :goto_22

    .line 1489
    :pswitch_2f
    if-eqz v2, :cond_37

    .line 1490
    iget-wide v3, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListId:J

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->deselectPlaylist(J)V

    goto :goto_22

    .line 1492
    :cond_37
    iget-wide v3, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListId:J

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->selectPlaylist(J)V

    goto :goto_22

    .line 1480
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_19
        :pswitch_2f
    .end packed-switch
.end method

.method private updateKeepOnValues(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;)Z
    .registers 9
    .parameter "cardRecord"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1423
    if-nez p1, :cond_5

    .line 1459
    :cond_4
    :goto_4
    return v3

    .line 1428
    :cond_5
    iget v5, p1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    packed-switch v5, :pswitch_data_62

    goto :goto_4

    .line 1430
    :pswitch_b
    iget-wide v1, p1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    .line 1431
    .local v1, id:J
    invoke-direct {p0, v1, v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getAlbumCurosr(J)Landroid/database/Cursor;

    move-result-object v0

    .line 1441
    .local v0, c:Landroid/database/Cursor;
    :goto_11
    if-eqz v0, :cond_4

    .line 1443
    :try_start_13
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_58

    .line 1444
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1445
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v4, :cond_54

    move v5, v4

    :goto_24
    iput-boolean v5, p1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mHasRemote:Z

    .line 1446
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_56

    move v5, v4

    :goto_2e
    iput-boolean v5, p1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mKeepOn:Z

    .line 1447
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_38

    move v3, v4

    :cond_38
    iput-boolean v3, p1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mHasLocal:Z

    .line 1449
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_48

    .line 1450
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mArtistId:J
    :try_end_48
    .catchall {:try_start_13 .. :try_end_48} :catchall_5c

    .line 1456
    :cond_48
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move v3, v4

    goto :goto_4

    .line 1434
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #id:J
    :pswitch_4d
    iget-wide v1, p1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListId:J

    .line 1435
    .restart local v1       #id:J
    invoke-direct {p0, v1, v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getPlaylistCurosr(J)Landroid/database/Cursor;

    move-result-object v0

    .line 1436
    .restart local v0       #c:Landroid/database/Cursor;
    goto :goto_11

    :cond_54
    move v5, v3

    .line 1445
    goto :goto_24

    :cond_56
    move v5, v3

    .line 1446
    goto :goto_2e

    .line 1456
    :cond_58
    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto :goto_4

    :catchall_5c
    move-exception v3

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v3

    .line 1428
    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_b
        :pswitch_4d
    .end packed-switch
.end method

.method private declared-synchronized updateMixAndFade()V
    .registers 7

    .prologue
    .line 569
    monitor-enter p0

    :try_start_1
    iget-object v5, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v5}, Lcom/google/android/music/jumper/MusicPreferences;->isLargeScreen()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 570
    iget-object v5, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/MusicFragment;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/MusicUIController;->getBottomBarHeight()I

    move-result v5

    int-to-float v2, v5

    .line 571
    .local v2, h:F
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_2f

    .line 572
    iget v5, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mTransitionHeight:F

    add-float v3, v2, v5

    .line 573
    .local v3, mix0:F
    move v4, v2

    .line 574
    .local v4, mix1:F
    move v0, v2

    .line 575
    .local v0, fade0:F
    const/high16 v5, 0x4000

    div-float v1, v2, v5

    .line 576
    .local v1, fade1:F
    iget-object v5, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-virtual {v5, v3, v4, v0, v1}, Lcom/google/android/opengl/carousel/CarouselView;->setMixAndFade(FFFF)V

    .line 581
    .end local v0           #fade0:F
    .end local v1           #fade1:F
    .end local v2           #h:F
    .end local v3           #mix0:F
    .end local v4           #mix1:F
    :cond_28
    :goto_28
    iget-object v5, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-virtual {v5}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_35

    .line 582
    monitor-exit p0

    return-void

    .line 578
    .restart local v2       #h:F
    :cond_2f
    :try_start_2f
    iget-object v5, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-virtual {v5}, Lcom/google/android/opengl/carousel/CarouselView;->disableMixAndFade()V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_35

    goto :goto_28

    .line 569
    .end local v2           #h:F
    :catchall_35
    move-exception v5

    monitor-exit p0

    throw v5
.end method


# virtual methods
.method cancelBackgroundTransition()V
    .registers 3

    .prologue
    .line 773
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDelayTransitionHandler:Lcom/google/android/music/Worker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/Worker;->removeMessages(I)V

    .line 774
    return-void
.end method

.method public getCarouselRotationAngle()F
    .registers 2

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselView;->getRealtimeCarouselRotationAngle()F

    move-result v0

    return v0
.end method

.method public getDetailTexture(I)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    .line 1010
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getDetailLabel(I)Ljava/lang/String;

    move-result-object v4

    .line 1011
    .local v4, label:Ljava/lang/String;
    if-eqz v4, :cond_48

    .line 1012
    new-instance v5, Lcom/google/android/music/utils/LabelMaker;

    iget-object v7, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mLabelConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v5, v4, v7, v8}, Lcom/google/android/music/utils/LabelMaker;-><init>(Ljava/lang/String;Lcom/google/android/music/utils/LabelMaker$Config;Landroid/graphics/Bitmap;)V

    .line 1014
    .local v5, maker:Lcom/google/android/music/utils/LabelMaker;
    invoke-virtual {v5}, Lcom/google/android/music/utils/LabelMaker;->load()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1015
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->isManageMusicMode()Z

    move-result v7

    if-eqz v7, :cond_44

    if-lez p1, :cond_44

    .line 1018
    iget-object v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mIconSideLoaded:Landroid/graphics/Bitmap;

    .line 1019
    .local v3, icon:Landroid/graphics/Bitmap;
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCardRecord(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    move-result-object v2

    .line 1020
    .local v2, cardRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    invoke-direct {p0, v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->updateKeepOnValues(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;)Z

    .line 1021
    if-eqz v2, :cond_36

    iget-boolean v7, v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mHasRemote:Z

    if-eqz v7, :cond_36

    .line 1022
    invoke-direct {p0, v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->isItemKeepOn(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;)Z

    move-result v7

    if-eqz v7, :cond_45

    iget-object v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mIconKeepOnDevice:Landroid/graphics/Bitmap;

    .line 1024
    :cond_36
    :goto_36
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1025
    .local v1, canvas:Landroid/graphics/Canvas;
    sget v7, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->sIconOffsetX:I

    int-to-float v7, v7

    sget v8, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->sIconOffsetY:I

    int-to-float v8, v8

    invoke-virtual {v1, v3, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1030
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #cardRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    .end local v3           #icon:Landroid/graphics/Bitmap;
    .end local v5           #maker:Lcom/google/android/music/utils/LabelMaker;
    :cond_44
    :goto_44
    return-object v0

    .line 1022
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #cardRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    .restart local v3       #icon:Landroid/graphics/Bitmap;
    .restart local v5       #maker:Lcom/google/android/music/utils/LabelMaker;
    :cond_45
    iget-object v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mIconOnlyRemote:Landroid/graphics/Bitmap;

    goto :goto_36

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #cardRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    .end local v3           #icon:Landroid/graphics/Bitmap;
    .end local v5           #maker:Lcom/google/android/music/utils/LabelMaker;
    :cond_48
    move-object v0, v6

    .line 1030
    goto :goto_44
.end method

.method public getDetailTextureParameters(I)Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;
    .registers 3
    .parameter "id"

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailTextureParameters:Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;

    return-object v0
.end method

.method public getTalkBackText(I)Ljava/lang/String;
    .registers 3
    .parameter "id"

    .prologue
    .line 1067
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getDetailLabel(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTexture(I)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "id"

    .prologue
    .line 832
    const/4 v0, 0x0

    .line 833
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-ltz p1, :cond_3d

    .line 835
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCardInfo(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    move-result-object v1

    .line 836
    .local v1, cardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    if-nez v1, :cond_d

    .line 837
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->createCardInfo(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    move-result-object v1

    .line 839
    :cond_d
    if-eqz v1, :cond_3d

    .line 840
    iget-object v3, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    .line 842
    .local v3, record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    iget v4, v3, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_34

    .line 843
    iget-object v4, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mChangeListener:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;

    if-nez v4, :cond_34

    .line 849
    new-instance v4, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;

    invoke-direct {v4, p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;I)V

    iput-object v4, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mChangeListener:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;

    .line 862
    iget-object v4, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicFragment;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicUIController;->getArtDownloadServiceConnection()Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-wide v5, v5, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    iget-object v7, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mChangeListener:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->registerAlbumArtChangeListener(JLcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;)V

    .line 869
    :cond_34
    move-object v2, v1

    .line 870
    .local v2, cardInfoArg:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    new-instance v4, Lcom/google/android/music/carousel/MusicCarouselViewHelper$11;

    invoke-direct {v4, p0, v3, v2, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$11;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;I)V

    invoke-static {v4}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 941
    .end local v1           #cardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    .end local v2           #cardInfoArg:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    .end local v3           #record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    :cond_3d
    return-object v0
.end method

.method public onAnimationFinished(F)V
    .registers 6
    .parameter "carouselRotationAngle"

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->cancelBackgroundTransition()V

    .line 754
    iput p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCarouselRotationAngle:F

    .line 755
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 756
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 757
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDelayTransitionHandler:Lcom/google/android/music/Worker;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/music/Worker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 758
    return-void
.end method

.method public onAnimationStarted()V
    .registers 1

    .prologue
    .line 763
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->cancelBackgroundTransition()V

    .line 764
    return-void
.end method

.method public onBottomBarChanged()V
    .registers 1

    .prologue
    .line 945
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->updateMixAndFade()V

    .line 946
    return-void
.end method

.method public onCardLongPress(I[ILandroid/graphics/Rect;)V
    .registers 7
    .parameter "n"
    .parameter "touchPosition"
    .parameter "detailCoordinates"

    .prologue
    .line 672
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->isManageMusicMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 676
    :goto_6
    return-void

    .line 675
    :cond_7
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCardRecord(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    move-result-object v0

    const/4 v1, 0x0

    aget v1, p2, v1

    const/4 v2, 0x1

    aget v2, p2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->onCreateContextMusicMenu(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;II)V

    goto :goto_6
.end method

.method public onCardSelected(I)V
    .registers 10
    .parameter "n"

    .prologue
    .line 643
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCardRecord(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    move-result-object v2

    .line 644
    .local v2, cardRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    if-eqz v2, :cond_b

    .line 645
    iget v7, v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    packed-switch v7, :pswitch_data_20

    .line 667
    :cond_b
    :goto_b
    return-void

    .line 647
    :pswitch_c
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->postOpenTrackBrowserForShuffleAll()V

    goto :goto_b

    .line 651
    :pswitch_10
    iget-wide v0, v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    .line 653
    .local v0, albumId:J
    invoke-direct {p0, v0, v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->postOpenTrackBrowserForAlbum(J)V

    goto :goto_b

    .line 658
    .end local v0           #albumId:J
    :pswitch_16
    iget-wide v3, v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListId:J

    .line 659
    .local v3, listId:J
    iget-object v5, v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListName:Ljava/lang/String;

    .line 660
    .local v5, name:Ljava/lang/String;
    iget v6, v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mPlaylistType:I

    .line 662
    .local v6, type:I
    invoke-direct {p0, v3, v4, v5, v6}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->postOpenTrackBrowserForPlaylist(JLjava/lang/String;I)V

    goto :goto_b

    .line 645
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_c
        :pswitch_10
        :pswitch_16
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 817
    invoke-super {p0}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->onDestroy()V

    .line 818
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->clearCursor()V

    .line 819
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->recycleBitmaps()V

    .line 820
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDelayTransitionHandler:Lcom/google/android/music/Worker;

    invoke-virtual {v0}, Lcom/google/android/music/Worker;->quit()V

    .line 821
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mNetworkMonitorServiceConnection:Lcom/google/android/music/NetworkMonitorServiceConnection;

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/music/NetworkMonitorServiceConnection;->unbindFromService(Landroid/content/Context;)V

    .line 822
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 768
    invoke-super {p0}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->onDetachedFromWindow()V

    .line 769
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->cancelBackgroundTransition()V

    .line 770
    return-void
.end method

.method public onDetailSelected(III)V
    .registers 5
    .parameter "id"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 722
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->isManageMusicMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 725
    :goto_6
    return-void

    .line 724
    :cond_7
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->switchCardKeepOnStatus(I)V

    goto :goto_6
.end method

.method public onInvalidateDetailTexture(I)V
    .registers 4
    .parameter "id"

    .prologue
    .line 803
    invoke-super {p0, p1}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->onInvalidateDetailTexture(I)V

    .line 805
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$9;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$9;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 814
    return-void
.end method

.method public onInvalidateTexture(I)V
    .registers 4
    .parameter "id"

    .prologue
    .line 778
    invoke-super {p0, p1}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->onInvalidateTexture(I)V

    .line 780
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$8;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$8;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 799
    return-void
.end method

.method public onMusicModeChanged(Lcom/google/android/music/activitymanagement/MusicStateController;)V
    .registers 5
    .parameter "musicStateController"

    .prologue
    .line 1463
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicStateController;->getMusicManager()Lcom/google/android/music/OfflineMusicManager;

    move-result-object v0

    .line 1464
    .local v0, manager:Lcom/google/android/music/OfflineMusicManager;
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-ne v1, v0, :cond_9

    .line 1469
    :goto_8
    return-void

    .line 1467
    :cond_9
    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 1468
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/opengl/carousel/CarouselView;->invalidateDetailTextures(Z)V

    goto :goto_8
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 562
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->recycleBitmaps()V

    .line 563
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->cancelBackgroundTransition()V

    .line 564
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragment;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicUIController;->unregisterBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 565
    invoke-super {p0}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->onPause()V

    .line 566
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 553
    invoke-super {p0}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->onResume()V

    .line 554
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    iget v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCarouselRotationAngle:F

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/CarouselView;->setCarouselRotationAngle(F)V

    .line 555
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragment;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/activitymanagement/MusicUIController;->registerBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 556
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->updateMixAndFade()V

    .line 557
    return-void
.end method

.method public requestReadCursor()V
    .registers 3

    .prologue
    .line 585
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$3;

    invoke-direct {v1, p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$3;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 593
    return-void
.end method

.method public setCarouselRotationAngle(F)V
    .registers 3
    .parameter "angle"

    .prologue
    .line 600
    iput p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCarouselRotationAngle:F

    .line 601
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/carousel/CarouselView;->setCarouselRotationAngle(F)V

    .line 602
    return-void
.end method
