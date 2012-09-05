.class public Lcom/google/android/music/carousel/MusicCarouselViewHelper;
.super Lcom/google/android/opengl/carousel/CarouselViewHelper;
.source "MusicCarouselViewHelper.java"

# interfaces
.implements Lcom/google/android/music/activitymanagement/TopLevelActivity$ManageMusicModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback;,
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

.field private mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

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

.field private mObserver:Landroid/database/ContentObserver;

.field private mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

.field private mSyncHandler:Landroid/os/Handler;

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
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "hasRemote"

    aput-object v1, v0, v2

    const-string v1, "KeepOnId"

    aput-object v1, v0, v3

    const-string v1, "artist_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mAlbumCols:[Ljava/lang/String;

    .line 98
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "hasRemote"

    aput-object v1, v0, v2

    const-string v1, "KeepOnId"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mPlaylistCols:[Ljava/lang/String;

    .line 279
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "RecentAlbumId"

    aput-object v1, v0, v3

    const-string v1, "album_name"

    aput-object v1, v0, v4

    const-string v1, "album_artist"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "RecentListId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "list_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

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

    .line 298
    invoke-direct {p0, p1, p3}, Lcom/google/android/opengl/carousel/CarouselViewHelper;-><init>(Landroid/content/Context;Lcom/google/android/opengl/carousel/CarouselView;)V

    .line 81
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;

    invoke-direct {v0, v3, v3}, Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailTextureParameters:Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;

    .line 123
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_132

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mUp:[F

    .line 126
    new-array v0, v2, [I

    const v3, 0x40ffffff

    aput v3, v0, v1

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailLineBitmap:Landroid/graphics/Bitmap;

    .line 142
    new-instance v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$1;

    const-string v3, "BackgroundHandler"

    invoke-direct {v0, p0, v3}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$1;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDelayTransitionHandler:Lcom/google/android/music/Worker;

    .line 271
    new-instance v0, Landroid/util/SparseArray;

    const/4 v3, 0x7

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    .line 273
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCount:I

    .line 275
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mBackgroundAlbumId:J

    .line 277
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->createLabelConfig()Lcom/google/android/music/utils/LabelMaker$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mLabelConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    .line 299
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    .line 300
    iput-object p3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    .line 302
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-virtual {v0, v2}, Lcom/google/android/opengl/carousel/CarouselView;->setFocusableInTouchMode(Z)V

    .line 303
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    const v3, 0x7f0d0064

    invoke-virtual {v0, v3}, Lcom/google/android/music/activitymanagement/MusicFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mUnknownArtistName:Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    const v3, 0x7f0d0065

    invoke-virtual {v0, v3}, Lcom/google/android/music/activitymanagement/MusicFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mUnknownAlbumName:Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    const v3, 0x7f0d0066

    invoke-virtual {v0, v3}, Lcom/google/android/music/activitymanagement/MusicFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mUnknownPlaylistName:Ljava/lang/String;

    .line 306
    iput-object p4, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    .line 308
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mSyncHandler:Landroid/os/Handler;

    .line 310
    iput-object p2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 312
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v9, :cond_116

    move v7, v2

    .line 315
    .local v7, landscape:Z
    :goto_8a
    invoke-virtual {p3, v2}, Lcom/google/android/opengl/carousel/CarouselView;->setPreserveEGLContextOnPause(Z)V

    .line 317
    invoke-virtual {p3, p0}, Lcom/google/android/opengl/carousel/CarouselView;->setCallback(Lcom/google/android/opengl/carousel/CarouselCallback;)V

    .line 318
    invoke-virtual {p3, v1}, Lcom/google/android/opengl/carousel/CarouselView;->setScaleSelectedCard(Z)V

    .line 319
    const/high16 v0, 0x4040

    invoke-virtual {p3, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setRezInCardCount(F)V

    .line 320
    invoke-virtual {p3, v10}, Lcom/google/android/opengl/carousel/CarouselView;->setPrefetchCardCount(I)V

    .line 321
    invoke-virtual {p3, v2}, Lcom/google/android/opengl/carousel/CarouselView;->setAntiJitter(Z)V

    .line 324
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v0

    if-eqz v0, :cond_119

    .line 325
    invoke-virtual {p3, v1}, Lcom/google/android/opengl/carousel/CarouselView;->setDpadNavigationHorizontal(Z)V

    .line 327
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mLabelConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    iput v9, v0, Lcom/google/android/music/utils/LabelMaker$Config;->layoutAlignment:I

    .line 328
    invoke-virtual {p3, v2}, Lcom/google/android/opengl/carousel/CarouselView;->setMusicPortraitOfLabel(Z)V

    .line 336
    :cond_b0
    :goto_b0
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->initCarouselParameters()V

    .line 337
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 341
    .local v8, res:Landroid/content/res/Resources;
    const v0, 0x7f02017a

    :try_start_ba
    invoke-static {v8, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mBorder:Landroid/graphics/Bitmap;

    .line 342
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mBorder:Landroid/graphics/Bitmap;

    invoke-virtual {p3, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setDefaultBitmap(Landroid/graphics/Bitmap;)V

    .line 343
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mBorder:Landroid/graphics/Bitmap;

    invoke-virtual {p3, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 344
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
    :try_end_df
    .catch Ljava/lang/OutOfMemoryError; {:try_start_ba .. :try_end_df} :catch_129

    .line 350
    :goto_df
    invoke-direct {p0, v8}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->initManageMusicIcons(Landroid/content/res/Resources;)V

    .line 352
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mGlowingBorder:Landroid/graphics/Bitmap;

    invoke-virtual {p3, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setGlowingBitmap(Landroid/graphics/Bitmap;)V

    .line 353
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailLineBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setDetailLineBitmap(Landroid/graphics/Bitmap;)V

    .line 356
    invoke-virtual {p3, v10}, Lcom/google/android/opengl/carousel/CarouselView;->setDragModel(I)V

    .line 357
    const v0, 0x7f0a0012

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setBackgroundColor(I)V

    .line 358
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->createBitmapPool()V

    .line 360
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCarouselView()Lcom/google/android/opengl/carousel/CarouselView;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/google/android/opengl/carousel/CarouselView;->setBackgroundTransitionDuration(J)V

    .line 361
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCarouselView()Lcom/google/android/opengl/carousel/CarouselView;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-direct {p0, v2, v3}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getBackgroundBitmap(J)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/android/opengl/carousel/CarouselView;->setBackgroundBitmap(Landroid/graphics/Bitmap;Z)V

    .line 362
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->requestReadCursor()V

    .line 363
    return-void

    .end local v7           #landscape:Z
    .end local v8           #res:Landroid/content/res/Resources;
    :cond_116
    move v7, v1

    .line 312
    goto/16 :goto_8a

    .line 329
    .restart local v7       #landscape:Z
    :cond_119
    if-nez v7, :cond_b0

    .line 330
    invoke-virtual {p3, v1}, Lcom/google/android/opengl/carousel/CarouselView;->setDpadNavigationHorizontal(Z)V

    .line 332
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mLabelConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    iput v9, v0, Lcom/google/android/music/utils/LabelMaker$Config;->layoutAlignment:I

    .line 333
    invoke-virtual {p3, v2}, Lcom/google/android/opengl/carousel/CarouselView;->setMusicPortraitOfLabel(Z)V

    .line 334
    invoke-virtual {p3, v2}, Lcom/google/android/opengl/carousel/CarouselView;->setSpecialRotationInPortrait(Z)V

    goto :goto_b0

    .line 347
    .restart local v8       #res:Landroid/content/res/Resources;
    :catch_129
    move-exception v6

    .line 348
    .local v6, e:Ljava/lang/OutOfMemoryError;
    iget v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCardTextureWidth:I

    iget v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCardTextureHeight:I

    invoke-static {v6, v0, v2}, Lcom/google/android/music/utils/AlbumArtUtils;->reportAndRethrow(Ljava/lang/OutOfMemoryError;II)V

    goto :goto_df

    .line 123
    :array_132
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
    .line 56
    iput p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mFirstCardPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCarouselRotationAngle:F

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mBackgroundAlbumId:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/google/android/music/carousel/MusicCarouselViewHelper;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mBackgroundAlbumId:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCardTextureWidth:I

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCardTextureHeight:I

    return v0
.end method

.method static synthetic access$1300(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/music/activitymanagement/MusicFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getGlossyOverlay()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCardIdForCardInfo(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/opengl/carousel/CarouselView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCarouselView()Lcom/google/android/opengl/carousel/CarouselView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/music/activitymanagement/MusicStateController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Ljava/lang/String;[I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->describeShuffle(Ljava/lang/String;[I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/opengl/carousel/CarouselView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCarouselView()Lcom/google/android/opengl/carousel/CarouselView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getBackground()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/opengl/carousel/CarouselView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCarouselView()Lcom/google/android/opengl/carousel/CarouselView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->clearCursor()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mGlossyOverlay:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mGlossyOverlay:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->readCursor()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->openTrackBrowserForShuffleAll()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/music/carousel/MusicCarouselViewHelper;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->openTrackBrowserForAlbum(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/music/carousel/MusicCarouselViewHelper;JLjava/lang/String;I)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->openTrackBrowserForPlaylist(JLjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Landroid/util/SparseArray;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/music/carousel/MusicCarouselViewHelper;I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCardInfo(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    move-result-object v0

    return-object v0
.end method

.method private clearCursor()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1335
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_17

    .line 1336
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_12

    .line 1337
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1338
    iput-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mObserver:Landroid/database/ContentObserver;

    .line 1340
    :cond_12
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1342
    :cond_17
    iput-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCursor:Landroid/database/Cursor;

    .line 1343
    return-void
.end method

.method private createBitmapPool()V
    .registers 5

    .prologue
    .line 450
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCardTextureWidth:I

    iget v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCardTextureHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->createBitmapPool(IIILandroid/graphics/Bitmap$Config;)V

    .line 452
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailTextureWidth:I

    iget v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailTextureHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->createBitmapPool(IIILandroid/graphics/Bitmap$Config;)V

    .line 455
    return-void
.end method

.method private createCardInfo(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 857
    .line 861
    if-nez p1, :cond_19

    .line 862
    :try_start_3
    invoke-static {}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->createShuffleAllCardRecord()Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    move-result-object v0

    move-object v2, v0

    .line 869
    :goto_8
    if-eqz v2, :cond_42

    .line 870
    new-instance v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    invoke-direct {v0, v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_5c

    .line 871
    :try_start_f
    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_28

    .line 872
    :try_start_12
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 873
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_25

    .line 880
    :goto_18
    return-object v0

    .line 864
    :cond_19
    :try_start_19
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCursorForCard(I)Landroid/database/Cursor;

    move-result-object v0

    .line 865
    if-eqz v0, :cond_61

    .line 866
    invoke-direct {p0, v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->readCardRecord(Landroid/database/Cursor;)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_22} :catch_5c

    move-result-object v0

    move-object v2, v0

    goto :goto_8

    .line 873
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

    .line 877
    :catch_28
    move-exception v1

    .line 878
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

    .line 875
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

    .line 877
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

.method private createContextMenu(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;II)V
    .registers 10
    .parameter "record"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 591
    if-nez p1, :cond_3

    .line 618
    :goto_2
    return-void

    .line 593
    :cond_3
    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 594
    new-instance v2, Lcom/google/android/music/menu/MusicDropdownMenu;

    iget-object v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    new-instance v4, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback;

    invoke-direct {v4, p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;)V

    iget-object v5, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/music/menu/MusicDropdownMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    iput-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    .line 595
    int-to-float v2, p2

    int-to-float v3, p3

    invoke-direct {p0, v2, v3}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->setContextMenuPosition(FF)V

    .line 601
    :goto_20
    iget v2, p1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5c

    iget-object v0, p1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbum:Ljava/lang/String;

    .line 602
    .local v0, header:Ljava/lang/String;
    :goto_27
    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    invoke-virtual {v2, v0}, Lcom/google/android/music/menu/MusicListMenu;->setHeader(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    const/4 v3, 0x6

    const/4 v4, 0x0

    const v5, 0x7f0d0070

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/music/menu/MusicListMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v1

    .line 607
    .local v1, playMenuItem:Lcom/google/android/music/menu/MusicMenuItem;
    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 608
    const v2, 0x7f020199

    invoke-virtual {v1, v2}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 617
    :cond_45
    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    invoke-virtual {v2}, Lcom/google/android/music/menu/MusicListMenu;->show()V

    goto :goto_2

    .line 597
    .end local v0           #header:Ljava/lang/String;
    .end local v1           #playMenuItem:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_4b
    new-instance v2, Lcom/google/android/music/menu/MusicPopupMenu;

    iget-object v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    new-instance v4, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback;

    invoke-direct {v4, p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;)V

    iget-object v5, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/music/menu/MusicPopupMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    iput-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    goto :goto_20

    .line 601
    :cond_5c
    iget-object v0, p1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListName:Ljava/lang/String;

    goto :goto_27
.end method

.method private createLabelConfig()Lcom/google/android/music/utils/LabelMaker$Config;
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 511
    new-instance v0, Lcom/google/android/music/utils/LabelMaker$Config;

    invoke-direct {v0}, Lcom/google/android/music/utils/LabelMaker$Config;-><init>()V

    .line 512
    .local v0, config:Lcom/google/android/music/utils/LabelMaker$Config;
    const/4 v1, 0x4

    iput v1, v0, Lcom/google/android/music/utils/LabelMaker$Config;->sizeMode:I

    .line 513
    iput v3, v0, Lcom/google/android/music/utils/LabelMaker$Config;->overflowMode:I

    .line 514
    iget v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailTextureWidth:I

    iput v1, v0, Lcom/google/android/music/utils/LabelMaker$Config;->width:I

    .line 515
    iget v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailTextureHeight:I

    iput v1, v0, Lcom/google/android/music/utils/LabelMaker$Config;->height:I

    .line 516
    iget v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailTextureWidth:I

    iput v1, v0, Lcom/google/android/music/utils/LabelMaker$Config;->clipWidth:I

    .line 517
    const/4 v1, 0x3

    iput v1, v0, Lcom/google/android/music/utils/LabelMaker$Config;->yalignment:I

    .line 518
    const/high16 v1, 0x3f40

    iput v1, v0, Lcom/google/android/music/utils/LabelMaker$Config;->secondaryOpacity:F

    .line 519
    iput-boolean v2, v0, Lcom/google/android/music/utils/LabelMaker$Config;->bold:Z

    .line 520
    iput v2, v0, Lcom/google/android/music/utils/LabelMaker$Config;->xalignment:I

    .line 521
    iput v3, v0, Lcom/google/android/music/utils/LabelMaker$Config;->multiLine:I

    .line 522
    iput v2, v0, Lcom/google/android/music/utils/LabelMaker$Config;->maxLines:I

    .line 523
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Lcom/google/android/music/utils/LabelMaker$Config;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 525
    return-object v0
.end method

.method private describeShuffle(Ljava/lang/String;[I)V
    .registers 3
    .parameter "label"
    .parameter "comeFrom"

    .prologue
    .line 1198
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
    .line 1183
    .local p2, visibleCards:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;>;"
    return-void
.end method

.method private effectiveAlbumName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "albumName"

    .prologue
    .line 1266
    invoke-static {p1}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1267
    iget-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mUnknownAlbumName:Ljava/lang/String;

    .line 1269
    .end local p1
    :cond_8
    return-object p1
.end method

.method private effectiveArtistName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "artistName"

    .prologue
    .line 1251
    invoke-static {p1}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1252
    iget-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mUnknownArtistName:Ljava/lang/String;

    .line 1254
    .end local p1
    :cond_8
    return-object p1
.end method

.method private effectivePlaylistName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 1258
    invoke-static {p1}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1259
    iget-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mUnknownPlaylistName:Ljava/lang/String;

    .line 1261
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
    .line 1158
    .local p0, array:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1159
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_17

    .line 1160
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    .line 1161
    .local v2, v:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    invoke-virtual {v2, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1165
    .end local v0           #i:I
    .end local v2           #v:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    :goto_13
    return v0

    .line 1159
    .restart local v0       #i:I
    .restart local v2       #v:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1165
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

    .line 1355
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

    .line 1359
    .local v6, c:Landroid/database/Cursor;
    return-object v6
.end method

.method private getBackground()V
    .registers 6

    .prologue
    const-wide/16 v2, -0x1

    .line 1201
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/MusicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1240
    :cond_11
    :goto_11
    return-void

    .line 1205
    :cond_12
    iget v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mFirstCardPosition:I

    .line 1209
    if-ltz v1, :cond_11

    iget v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCount:I

    if-ge v1, v0, :cond_11

    .line 1215
    invoke-direct {p0, v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCardInfo(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    move-result-object v0

    .line 1216
    if-nez v0, :cond_24

    .line 1217
    invoke-direct {p0, v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->createCardInfo(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    move-result-object v0

    .line 1220
    :cond_24
    if-eqz v0, :cond_4a

    .line 1221
    iget-object v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    .line 1223
    iget v1, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4a

    .line 1224
    iget-wide v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    .line 1227
    :goto_2f
    cmp-long v2, v0, v2

    if-eqz v2, :cond_11

    iget-wide v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mBackgroundAlbumId:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_11

    .line 1231
    iput-wide v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mBackgroundAlbumId:J

    .line 1233
    invoke-direct {p0, v0, v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getBackgroundBitmap(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1235
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mSyncHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper$12;

    invoke-direct {v2, p0, v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$12;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Landroid/graphics/Bitmap;)V

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
    .line 1243
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_d

    .line 1244
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-static {v0, p1, p2}, Lcom/google/android/music/utils/BackgroundUtils;->getAdaptedBitmap(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1246
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
    .line 1279
    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1280
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-static {v1, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->find(Landroid/util/SparseArray;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;)I

    move-result v0

    .line 1281
    .local v0, index:I
    if-ltz v0, :cond_13

    .line 1282
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    monitor-exit v2

    .line 1284
    :goto_12
    return v1

    :cond_13
    const/4 v1, -0x1

    monitor-exit v2

    goto :goto_12

    .line 1286
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
    .line 1273
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1274
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    monitor-exit v1

    return-object v0

    .line 1275
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
    .line 1291
    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1292
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    .line 1293
    .local v0, info:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    if-eqz v0, :cond_11

    .line 1294
    iget-object v1, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    monitor-exit v2

    .line 1296
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_10

    .line 1297
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

    .line 1316
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2a

    .line 1317
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    sget-object v1, Lcom/google/android/music/store/MusicContent$Recent;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCursorCols:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1320
    .local v6, c:Landroid/database/Cursor;
    new-instance v0, Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-direct {v0, v6}, Lcom/google/android/music/medialist/MediaList$MediaCursor;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCursor:Landroid/database/Cursor;

    .line 1321
    new-instance v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$13;

    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$13;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mObserver:Landroid/database/ContentObserver;

    .line 1328
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 1331
    .end local v6           #c:Landroid/database/Cursor;
    :cond_2a
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private getCursorForCard(I)Landroid/database/Cursor;
    .registers 5
    .parameter

    .prologue
    .line 1305
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1c

    .line 1306
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

    .line 1308
    :cond_1c
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1309
    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_29

    .line 1310
    const/4 v0, 0x0

    .line 1312
    :cond_29
    return-object v0
.end method

.method private getDetailLabel(I)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 1000
    const/4 v0, 0x0

    .line 1001
    if-ltz p1, :cond_37

    .line 1002
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCardInfo(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    move-result-object v1

    .line 1003
    if-eqz v1, :cond_37

    .line 1004
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mActiveDetailTexture:Z

    .line 1005
    iget-object v0, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    .line 1006
    iget v1, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    packed-switch v1, :pswitch_data_58

    .line 1017
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

    .line 1008
    :pswitch_2e
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    const v1, 0x7f0d0100

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1021
    :cond_37
    :goto_37
    return-object v0

    .line 1011
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

    .line 1014
    :pswitch_54
    iget-object v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListName:Ljava/lang/String;

    goto :goto_37

    .line 1006
    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_38
        :pswitch_54
    .end packed-switch
.end method

.method private getGlossyOverlay()Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 469
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mGlossyOverlay:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mGlossyOverlay:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 470
    :cond_c
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 471
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f020173

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mGlossyOverlay:Landroid/graphics/Bitmap;

    .line 473
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_1b
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mGlossyOverlay:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method private getHasRemoteKeepOn(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;)Z
    .registers 12
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1381
    if-nez p1, :cond_5

    .line 1415
    :cond_4
    :goto_4
    return v0

    .line 1386
    :cond_5
    iget v2, p1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    packed-switch v2, :pswitch_data_8c

    goto :goto_4

    .line 1388
    :pswitch_b
    iget-wide v3, p1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    .line 1389
    invoke-direct {p0, v3, v4}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getAlbumCurosr(J)Landroid/database/Cursor;

    move-result-object v2

    move-wide v8, v3

    move-wide v4, v8

    move-object v3, v2

    .line 1399
    :goto_14
    if-eqz v3, :cond_4

    .line 1401
    :try_start_16
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_82

    .line 1402
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1403
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v1, :cond_80

    move v2, v1

    :goto_27
    iput-boolean v2, p1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mHasRemote:Z

    .line 1404
    const/4 v2, 0x1

    invoke-interface {v3, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_31

    move v0, v1

    :cond_31
    iput-boolean v0, p1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mKeepOn:Z

    .line 1405
    const/4 v0, 0x2

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_41

    .line 1406
    const/4 v0, 0x2

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, p1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mArtistId:J

    .line 1408
    :cond_41
    const-string v0, "MusicCarouselViewHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The album: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " hasRemote: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mHasRemote:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " keepOn: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mKeepOn:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_16 .. :try_end_71} :catchall_87

    .line 1412
    invoke-static {v3}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    move v0, v1

    goto :goto_4

    .line 1392
    :pswitch_76
    iget-wide v3, p1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListId:J

    .line 1393
    invoke-direct {p0, v3, v4}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getPlaylistCurosr(J)Landroid/database/Cursor;

    move-result-object v2

    move-wide v8, v3

    move-wide v4, v8

    move-object v3, v2

    .line 1394
    goto :goto_14

    :cond_80
    move v2, v0

    .line 1403
    goto :goto_27

    .line 1412
    :cond_82
    invoke-static {v3}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    goto/16 :goto_4

    :catchall_87
    move-exception v0

    invoke-static {v3}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v0

    .line 1386
    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_b
        :pswitch_76
    .end packed-switch
.end method

.method private getPlaylistCurosr(J)Landroid/database/Cursor;
    .registers 10
    .parameter "playlistId"

    .prologue
    const/4 v3, 0x0

    .line 1368
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-static {p1, p2}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mPlaylistCols:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1372
    .local v6, c:Landroid/database/Cursor;
    return-object v6
.end method

.method private getScaledIcon(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "res"
    .parameter "resId"

    .prologue
    .line 431
    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 432
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mIconTextureSize:I

    iget v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mIconTextureSize:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private initCarouselParameters()V
    .registers 16

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 369
    iget-object v6, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    .line 370
    .local v6, view:Lcom/google/android/opengl/carousel/CarouselView;
    iget-object v7, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-virtual {v7}, Lcom/google/android/music/activitymanagement/MusicFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 372
    .local v5, res:Landroid/content/res/Resources;
    const/high16 v7, 0x7f08

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 374
    .local v0, cardSlots:I
    invoke-virtual {v6, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setSlotCount(I)V

    .line 375
    const v7, 0x7f080001

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/opengl/carousel/CarouselView;->setVisibleSlots(I)V

    .line 376
    const v7, 0x7f080002

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/opengl/carousel/CarouselView;->setVisibleDetails(I)V

    .line 377
    const v7, 0x7f090002

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/opengl/carousel/CarouselView;->setCameraFov(F)V

    .line 378
    const v7, 0x7f090001

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/opengl/carousel/CarouselView;->setRadius(F)V

    .line 379
    const-wide v7, -0x3fc09585d6aac7a2L

    int-to-double v9, v0

    div-double/2addr v7, v9

    double-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/google/android/opengl/carousel/CarouselView;->setStartAngle(F)V

    .line 380
    const v7, 0x7f090003

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/opengl/carousel/CarouselView;->setCardGlowScale(F)V

    .line 382
    const v7, 0x7f090004

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/opengl/carousel/CarouselView;->setAccelerationFactor(F)V

    .line 383
    const v7, 0x7f090005

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/opengl/carousel/CarouselView;->setFadeOutLeftAngle(F)V

    .line 385
    const v7, 0x7f080003

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCardTextureWidth:I

    .line 386
    const v7, 0x7f080004

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCardTextureHeight:I

    .line 388
    new-array v1, v14, [F

    const v7, 0x7f090006

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    aput v7, v1, v11

    const v7, 0x7f090007

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    aput v7, v1, v12

    const v7, 0x7f090008

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    aput v7, v1, v13

    .line 392
    .local v1, eye:[F
    new-array v3, v14, [F

    const v7, 0x7f090009

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    aput v7, v3, v11

    const v7, 0x7f09000a

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    aput v7, v3, v12

    const v7, 0x7f09000b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    aput v7, v3, v13

    .line 395
    .local v3, lookat:[F
    iget-object v7, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mUp:[F

    invoke-virtual {v6, v1, v3, v7}, Lcom/google/android/opengl/carousel/CarouselView;->setLookAt([F[F[F)V

    .line 398
    const v7, 0x7f09000d

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailTextureWidth:I

    .line 399
    const v7, 0x7f09000e

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailTextureHeight:I

    .line 400
    const v7, 0x7f09000c

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mIconTextureSize:I

    .line 401
    iget-object v7, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mLabelConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    iget v8, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailTextureWidth:I

    iput v8, v7, Lcom/google/android/music/utils/LabelMaker$Config;->width:I

    .line 402
    iget-object v7, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mLabelConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    iget v8, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailTextureHeight:I

    iput v8, v7, Lcom/google/android/music/utils/LabelMaker$Config;->height:I

    .line 403
    iget-object v7, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mLabelConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    iget v8, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailTextureWidth:I

    iput v8, v7, Lcom/google/android/music/utils/LabelMaker$Config;->clipWidth:I

    .line 404
    const/high16 v7, 0x7f09

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v2, v7

    .line 405
    .local v2, fontSize:I
    iget-object v7, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mLabelConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    int-to-float v8, v2

    iput v8, v7, Lcom/google/android/music/utils/LabelMaker$Config;->fontSize:F

    .line 406
    iget-object v7, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mLabelConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    int-to-float v8, v2

    iput v8, v7, Lcom/google/android/music/utils/LabelMaker$Config;->secondaryFontSize:F

    .line 408
    iget-object v4, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailTextureParameters:Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;

    .line 409
    .local v4, parameters:Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;
    const v7, 0x7f09000f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    iput v7, v4, Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;->textureOffsetX:F

    .line 410
    const v7, 0x7f090010

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    iput v7, v4, Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;->textureOffsetY:F

    .line 411
    const v7, 0x7f090011

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    iput v7, v4, Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;->lineOffsetX:F

    .line 412
    const v7, 0x7f090012

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    iput v7, v4, Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;->lineOffsetY:F

    .line 417
    return-void
.end method

.method private initManageMusicIcons(Landroid/content/res/Resources;)V
    .registers 4
    .parameter "res"

    .prologue
    .line 423
    const v0, 0x7f020068

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getScaledIcon(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mIconSideLoaded:Landroid/graphics/Bitmap;

    .line 424
    const v0, 0x7f02006f

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getScaledIcon(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mIconKeepOnDevice:Landroid/graphics/Bitmap;

    .line 425
    const v0, 0x7f02006e

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getScaledIcon(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mIconOnlyRemote:Landroid/graphics/Bitmap;

    .line 426
    const v0, 0x7f090068

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->sIconOffsetX:I

    .line 427
    iget v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailTextureHeight:I

    iget v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mIconTextureSize:I

    sub-int/2addr v0, v1

    sput v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->sIconOffsetY:I

    .line 428
    return-void
.end method

.method private isItemKeepOn(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;)Z
    .registers 9
    .parameter "cardRecord"

    .prologue
    const/4 v3, 0x0

    .line 1463
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 1464
    .local v1, manager:Lcom/google/android/music/OfflineMusicManager;
    if-nez v1, :cond_7

    move v0, v3

    .line 1485
    :cond_6
    :goto_6
    return v0

    .line 1467
    :cond_7
    iget-boolean v0, p1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mKeepOn:Z

    .line 1469
    .local v0, keepOn:Z
    iget v4, p1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    packed-switch v4, :pswitch_data_26

    move v0, v3

    .line 1478
    goto :goto_6

    .line 1471
    :pswitch_10
    iget-wide v3, p1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    iget-wide v5, p1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mArtistId:J

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/google/android/music/OfflineMusicManager;->isAlbumSelected(JJ)Ljava/lang/Boolean;

    move-result-object v2

    .line 1482
    .local v2, uiKeepOn:Ljava/lang/Boolean;
    :goto_18
    if-eqz v2, :cond_6

    .line 1483
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_6

    .line 1475
    .end local v2           #uiKeepOn:Ljava/lang/Boolean;
    :pswitch_1f
    iget-wide v3, p1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListId:J

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->isPlaylistSelected(J)Ljava/lang/Boolean;

    move-result-object v2

    .line 1476
    .restart local v2       #uiKeepOn:Ljava/lang/Boolean;
    goto :goto_18

    .line 1469
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_10
        :pswitch_1f
    .end packed-switch
.end method

.method private isManageMusicMode()Z
    .registers 2

    .prologue
    .line 1346
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
    .line 901
    packed-switch p1, :pswitch_data_8

    .line 904
    const/4 v0, 0x0

    .line 906
    :goto_4
    return v0

    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 901
    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method private openTrackBrowserForAlbum(J)V
    .registers 10
    .parameter "album_id"

    .prologue
    const-wide/16 v3, -0x1

    .line 536
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    move-wide v1, p1

    move-wide v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListingForAlbum(JJJ)V

    .line 537
    return-void
.end method

.method private openTrackBrowserForPlaylist(JLjava/lang/String;I)V
    .registers 6
    .parameter "id"
    .parameter "name"
    .parameter "playlistType"

    .prologue
    .line 540
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mMusicStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/music/activitymanagement/MusicStateController;->startTrackListingForPlaylist(JLjava/lang/String;I)V

    .line 541
    return-void
.end method

.method private openTrackBrowserForShuffleAll()V
    .registers 3

    .prologue
    .line 531
    new-instance v0, Lcom/google/android/music/medialist/AllSongsList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/music/medialist/AllSongsList;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->shuffleAll(Lcom/google/android/music/medialist/SongList;)V

    .line 532
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->startMediaPlayer(Lcom/google/android/music/activitymanagement/MusicFragment;)V

    .line 533
    return-void
.end method

.method private postOpenTrackBrowserForAlbum(J)V
    .registers 5
    .parameter "albumId"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mSyncHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$5;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 654
    return-void
.end method

.method private postOpenTrackBrowserForPlaylist(JLjava/lang/String;I)V
    .registers 12
    .parameter "id"
    .parameter "name"
    .parameter "playlistType"

    .prologue
    .line 658
    iget-object v6, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mSyncHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$6;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$6;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;JLjava/lang/String;I)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 662
    return-void
.end method

.method private postOpenTrackBrowserForShuffleAll()V
    .registers 3

    .prologue
    .line 643
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mSyncHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;

    invoke-direct {v1, p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 647
    return-void
.end method

.method private readCardRecord(Landroid/database/Cursor;)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    .registers 14
    .parameter "c"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x1

    .line 884
    invoke-interface {p1, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_23

    .line 885
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 886
    .local v1, albumId:J
    const/4 v9, 0x2

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->effectiveAlbumName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 887
    .local v0, album:Ljava/lang/String;
    const/4 v9, 0x3

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->effectiveArtistName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 888
    .local v3, artist:Ljava/lang/String;
    invoke-static {v1, v2, v0, v3}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->createAlbumCardRecord(JLjava/lang/String;Ljava/lang/String;)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    move-result-object v9

    .line 896
    .end local v0           #album:Ljava/lang/String;
    .end local v1           #albumId:J
    .end local v3           #artist:Ljava/lang/String;
    :goto_22
    return-object v9

    .line 889
    :cond_23
    invoke-interface {p1, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_44

    .line 890
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 891
    .local v4, listId:J
    const/4 v9, 0x5

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->effectivePlaylistName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 892
    .local v6, listName:Ljava/lang/String;
    const/4 v9, 0x6

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 893
    .local v7, listType:I
    invoke-direct {p0, v7}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->listTypeToPlaylistType(I)I

    move-result v8

    .line 894
    .local v8, playlistType:I
    invoke-static {v4, v5, v6, v8}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->createListCardRecord(JLjava/lang/String;I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    move-result-object v9

    goto :goto_22

    .line 896
    .end local v4           #listId:J
    .end local v6           #listName:Ljava/lang/String;
    .end local v7           #listType:I
    .end local v8           #playlistType:I
    :cond_44
    const/4 v9, 0x0

    goto :goto_22
.end method

.method private readCursor()V
    .registers 16

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1035
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 1036
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 1042
    const/16 v2, 0x33

    if-lez v8, :cond_46

    add-int/lit8 v0, v8, 0x1

    :goto_11
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1045
    iget v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCount:I

    if-eq v9, v0, :cond_48

    move v2, v3

    .line 1046
    :goto_1a
    iput v9, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCount:I

    .line 1051
    iget-object v10, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    monitor-enter v10

    .line 1054
    :try_start_1f
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 1055
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12, v11}, Landroid/util/SparseArray;-><init>(I)V

    move v6, v1

    .line 1056
    :goto_2b
    if-ge v6, v11, :cond_6c

    .line 1057
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 1058
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    .line 1059
    if-nez v13, :cond_4a

    .line 1060
    if-lez v8, :cond_42

    .line 1061
    invoke-virtual {v12, v13, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1056
    :cond_42
    :goto_42
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2b

    :cond_46
    move v0, v1

    .line 1042
    goto :goto_11

    :cond_48
    move v2, v1

    .line 1045
    goto :goto_1a

    .line 1065
    :cond_4a
    add-int/lit8 v4, v13, -0x1

    invoke-interface {v7, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_10c

    .line 1066
    invoke-direct {p0, v7}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->readCardRecord(Landroid/database/Cursor;)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    move-result-object v4

    .line 1068
    :goto_56
    if-eqz v4, :cond_42

    .line 1069
    iget-object v14, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    invoke-virtual {v4, v14}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_65

    .line 1070
    new-instance v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    invoke-direct {v0, v4}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;)V

    .line 1072
    :cond_65
    invoke-virtual {v12, v13, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_42

    .line 1153
    :catchall_69
    move-exception v0

    monitor-exit v10
    :try_end_6b
    .catchall {:try_start_1f .. :try_end_6b} :catchall_69

    throw v0

    .line 1081
    :cond_6c
    :try_start_6c
    new-array v6, v9, [I

    move v0, v1

    .line 1082
    :goto_6f
    if-ge v0, v9, :cond_77

    .line 1083
    const/4 v4, -0x1

    aput v4, v6, v0

    .line 1082
    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    :cond_77
    move v5, v1

    move v4, v1

    .line 1089
    :goto_79
    if-ge v5, v11, :cond_9f

    .line 1090
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    .line 1091
    invoke-static {v12, v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->find(Landroid/util/SparseArray;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;)I

    move-result v7

    .line 1092
    if-gez v7, :cond_10a

    .line 1095
    iget-object v4, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mChangeListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;

    if-eqz v4, :cond_99

    .line 1100
    iget-object v4, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-wide v7, v4, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    iget-object v4, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mChangeListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;

    invoke-static {v7, v8, v4}, Lcom/google/android/music/utils/AlbumArtUtils;->removeAlbumArtChangeListener(JLcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;)V

    .line 1102
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mChangeListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;

    :cond_99
    move v0, v3

    .line 1089
    :goto_9a
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v0

    goto :goto_79

    .line 1109
    :cond_9f
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v7

    move v5, v1

    .line 1110
    :goto_a4
    if-ge v5, v7, :cond_c8

    .line 1111
    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 1112
    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    .line 1113
    iget-object v9, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-static {v9, v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->find(Landroid/util/SparseArray;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;)I

    move-result v0

    .line 1114
    if-ltz v0, :cond_108

    .line 1115
    iget-object v9, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 1116
    aput v0, v6, v8

    .line 1117
    if-eq v8, v0, :cond_108

    move v0, v3

    .line 1110
    :goto_c3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v0

    goto :goto_a4

    .line 1124
    :cond_c8
    if-nez v2, :cond_cc

    if-eqz v4, :cond_d8

    .line 1126
    :cond_cc
    const-string v0, "old visible cards"

    iget-object v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v3}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->describeVisibleCards(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1127
    const-string v0, "new visible cards"

    invoke-direct {p0, v0, v12}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->describeVisibleCards(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1129
    :cond_d8
    if-eqz v4, :cond_f5

    .line 1132
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1133
    :goto_df
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_f5

    .line 1134
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-virtual {v12, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v12, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1133
    add-int/lit8 v1, v1, 0x1

    goto :goto_df

    .line 1138
    :cond_f5
    if-nez v2, :cond_f9

    if-eqz v4, :cond_106

    .line 1140
    :cond_f9
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mSyncHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$11;

    invoke-direct {v1, p0, v6}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$11;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1147
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getBackground()V

    .line 1153
    :cond_106
    monitor-exit v10
    :try_end_107
    .catchall {:try_start_6c .. :try_end_107} :catchall_69

    .line 1154
    return-void

    :cond_108
    move v0, v4

    goto :goto_c3

    :cond_10a
    move v0, v4

    goto :goto_9a

    :cond_10c
    move-object v4, v5

    goto/16 :goto_56
.end method

.method private recycleBitmaps()V
    .registers 2

    .prologue
    .line 458
    new-instance v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$2;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    .line 465
    return-void
.end method

.method private setContextMenuPosition(FF)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 623
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 624
    .local v0, menuPlacement:Landroid/graphics/Rect;
    float-to-int v1, p1

    add-int/lit8 v1, v1, 0xa

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 625
    float-to-int v1, p2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 626
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0xa

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 627
    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, 0xa

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 628
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    check-cast v1, Lcom/google/android/music/menu/MusicDropdownMenu;

    invoke-virtual {v1, v0}, Lcom/google/android/music/menu/MusicDropdownMenu;->setButtonLocation(Landroid/graphics/Rect;)V

    .line 629
    return-void
.end method

.method private switchCardKeepOnStatus(I)V
    .registers 9
    .parameter "id"

    .prologue
    .line 1427
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCardRecord(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    move-result-object v0

    .line 1428
    .local v0, cardRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    if-eqz v0, :cond_a

    iget-boolean v3, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mHasRemote:Z

    if-nez v3, :cond_b

    .line 1454
    :cond_a
    :goto_a
    return-void

    .line 1430
    :cond_b
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 1431
    .local v1, manager:Lcom/google/android/music/OfflineMusicManager;
    if-eqz v1, :cond_a

    .line 1434
    invoke-direct {p0, v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->isItemKeepOn(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;)Z

    move-result v2

    .line 1435
    .local v2, wasKept:Z
    iget v3, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    packed-switch v3, :pswitch_data_3e

    goto :goto_a

    .line 1437
    :pswitch_19
    if-eqz v2, :cond_29

    .line 1438
    iget-wide v3, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    iget-wide v5, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mArtistId:J

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/google/android/music/OfflineMusicManager;->deselectAlbum(JJ)V

    .line 1453
    :goto_22
    iget-object v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/google/android/opengl/carousel/CarouselView;->invalidateDetailTexture(IZ)V

    goto :goto_a

    .line 1440
    :cond_29
    iget-wide v3, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->selectAlbum(J)V

    goto :goto_22

    .line 1444
    :pswitch_2f
    if-eqz v2, :cond_37

    .line 1445
    iget-wide v3, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListId:J

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->deselectPlaylist(J)V

    goto :goto_22

    .line 1447
    :cond_37
    iget-wide v3, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListId:J

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->selectPlaylist(J)V

    goto :goto_22

    .line 1435
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_19
        :pswitch_2f
    .end packed-switch
.end method


# virtual methods
.method cancelBackgroundTransition()V
    .registers 3

    .prologue
    .line 688
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDelayTransitionHandler:Lcom/google/android/music/Worker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/Worker;->removeMessages(I)V

    .line 689
    return-void
.end method

.method public getCarouselRotationAngle()F
    .registers 2

    .prologue
    .line 502
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

    .line 969
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getDetailLabel(I)Ljava/lang/String;

    move-result-object v4

    .line 970
    .local v4, label:Ljava/lang/String;
    if-eqz v4, :cond_48

    .line 971
    new-instance v5, Lcom/google/android/music/utils/LabelMaker;

    iget-object v7, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mLabelConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v5, v4, v7, v8}, Lcom/google/android/music/utils/LabelMaker;-><init>(Ljava/lang/String;Lcom/google/android/music/utils/LabelMaker$Config;Landroid/graphics/Bitmap;)V

    .line 973
    .local v5, maker:Lcom/google/android/music/utils/LabelMaker;
    invoke-virtual {v5}, Lcom/google/android/music/utils/LabelMaker;->load()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 974
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->isManageMusicMode()Z

    move-result v7

    if-eqz v7, :cond_44

    if-lez p1, :cond_44

    .line 977
    iget-object v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mIconSideLoaded:Landroid/graphics/Bitmap;

    .line 978
    .local v3, icon:Landroid/graphics/Bitmap;
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCardRecord(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    move-result-object v2

    .line 979
    .local v2, cardRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    invoke-direct {p0, v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getHasRemoteKeepOn(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;)Z

    .line 980
    if-eqz v2, :cond_36

    iget-boolean v7, v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mHasRemote:Z

    if-eqz v7, :cond_36

    .line 981
    invoke-direct {p0, v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->isItemKeepOn(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;)Z

    move-result v7

    if-eqz v7, :cond_45

    iget-object v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mIconKeepOnDevice:Landroid/graphics/Bitmap;

    .line 983
    :cond_36
    :goto_36
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 984
    .local v1, canvas:Landroid/graphics/Canvas;
    sget v7, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->sIconOffsetX:I

    int-to-float v7, v7

    sget v8, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->sIconOffsetY:I

    int-to-float v8, v8

    invoke-virtual {v1, v3, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 989
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #cardRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    .end local v3           #icon:Landroid/graphics/Bitmap;
    .end local v5           #maker:Lcom/google/android/music/utils/LabelMaker;
    :cond_44
    :goto_44
    return-object v0

    .line 981
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

    .line 989
    goto :goto_44
.end method

.method public getDetailTextureParameters(I)Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;
    .registers 3
    .parameter "id"

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailTextureParameters:Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;

    return-object v0
.end method

.method public getTalkBackText(I)Ljava/lang/String;
    .registers 3
    .parameter "id"

    .prologue
    .line 1026
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getDetailLabel(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTexture(I)Landroid/graphics/Bitmap;
    .registers 9
    .parameter "id"

    .prologue
    .line 745
    const/4 v0, 0x0

    .line 746
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-ltz p1, :cond_33

    .line 748
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCardInfo(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    move-result-object v1

    .line 749
    .local v1, cardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    if-nez v1, :cond_d

    .line 750
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->createCardInfo(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    move-result-object v1

    .line 752
    :cond_d
    if-eqz v1, :cond_33

    .line 753
    iget-object v3, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    .line 755
    .local v3, record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    iget v4, v3, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 756
    iget-object v4, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mChangeListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;

    if-nez v4, :cond_2a

    .line 762
    new-instance v4, Lcom/google/android/music/carousel/MusicCarouselViewHelper$9;

    invoke-direct {v4, p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$9;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;I)V

    iput-object v4, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mChangeListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;

    .line 775
    iget-object v4, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-wide v4, v4, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    iget-object v6, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mChangeListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;

    invoke-static {v4, v5, v6}, Lcom/google/android/music/utils/AlbumArtUtils;->registerAlbumArtChangeListener(JLcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;)V

    .line 781
    :cond_2a
    move-object v2, v1

    .line 782
    .local v2, cardInfoArg:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    new-instance v4, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;

    invoke-direct {v4, p0, v3, v2, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;I)V

    invoke-static {v4}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 853
    .end local v1           #cardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    .end local v2           #cardInfoArg:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    .end local v3           #record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    :cond_33
    return-object v0
.end method

.method public onAnimationFinished(F)V
    .registers 6
    .parameter "carouselRotationAngle"

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->cancelBackgroundTransition()V

    .line 669
    iput p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCarouselRotationAngle:F

    .line 670
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 671
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 672
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDelayTransitionHandler:Lcom/google/android/music/Worker;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/music/Worker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 673
    return-void
.end method

.method public onAnimationStarted()V
    .registers 1

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->cancelBackgroundTransition()V

    .line 679
    return-void
.end method

.method public onCardLongPress(I[ILandroid/graphics/Rect;)V
    .registers 7
    .parameter "n"
    .parameter "touchPosition"
    .parameter "detailCoordinates"

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->isManageMusicMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 582
    :goto_6
    return-void

    .line 581
    :cond_7
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCardRecord(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    move-result-object v0

    const/4 v1, 0x0

    aget v1, p2, v1

    const/4 v2, 0x1

    aget v2, p2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->createContextMenu(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;II)V

    goto :goto_6
.end method

.method public onCardSelected(I)V
    .registers 10
    .parameter "n"

    .prologue
    .line 549
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCardRecord(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    move-result-object v2

    .line 550
    .local v2, cardRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    if-eqz v2, :cond_b

    .line 551
    iget v7, v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    packed-switch v7, :pswitch_data_20

    .line 573
    :cond_b
    :goto_b
    return-void

    .line 553
    :pswitch_c
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->postOpenTrackBrowserForShuffleAll()V

    goto :goto_b

    .line 557
    :pswitch_10
    iget-wide v0, v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    .line 559
    .local v0, albumId:J
    invoke-direct {p0, v0, v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->postOpenTrackBrowserForAlbum(J)V

    goto :goto_b

    .line 564
    .end local v0           #albumId:J
    :pswitch_16
    iget-wide v3, v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListId:J

    .line 565
    .local v3, listId:J
    iget-object v5, v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListName:Ljava/lang/String;

    .line 566
    .local v5, name:Ljava/lang/String;
    iget v6, v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mPlaylistType:I

    .line 568
    .local v6, type:I
    invoke-direct {p0, v3, v4, v5, v6}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->postOpenTrackBrowserForPlaylist(JLjava/lang/String;I)V

    goto :goto_b

    .line 551
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_c
        :pswitch_10
        :pswitch_16
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 731
    invoke-super {p0}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->onDestroy()V

    .line 732
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->clearCursor()V

    .line 733
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->recycleBitmaps()V

    .line 734
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDelayTransitionHandler:Lcom/google/android/music/Worker;

    invoke-virtual {v0}, Lcom/google/android/music/Worker;->quit()V

    .line 735
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 683
    invoke-super {p0}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->onDetachedFromWindow()V

    .line 684
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->cancelBackgroundTransition()V

    .line 685
    return-void
.end method

.method public onDetailSelected(III)V
    .registers 5
    .parameter "id"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->isManageMusicMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 640
    :goto_6
    return-void

    .line 639
    :cond_7
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->switchCardKeepOnStatus(I)V

    goto :goto_6
.end method

.method public onInvalidateDetailTexture(I)V
    .registers 4
    .parameter "id"

    .prologue
    .line 717
    invoke-super {p0, p1}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->onInvalidateDetailTexture(I)V

    .line 719
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$8;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$8;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 728
    return-void
.end method

.method public onInvalidateTexture(I)V
    .registers 4
    .parameter "id"

    .prologue
    .line 693
    invoke-super {p0, p1}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->onInvalidateTexture(I)V

    .line 695
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$7;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$7;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 713
    return-void
.end method

.method public onManageMusicModeChanged(ZLcom/google/android/music/OfflineMusicManager;)V
    .registers 5
    .parameter "inManageMusicMode"
    .parameter "manager"

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-ne v0, p2, :cond_5

    .line 1424
    :goto_4
    return-void

    .line 1422
    :cond_5
    iput-object p2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 1423
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/CarouselView;->invalidateDetailTextures(Z)V

    goto :goto_4
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->recycleBitmaps()V

    .line 486
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->cancelBackgroundTransition()V

    .line 487
    invoke-super {p0}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->onPause()V

    .line 488
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 478
    invoke-super {p0}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->onResume()V

    .line 479
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    iget v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCarouselRotationAngle:F

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/CarouselView;->setCarouselRotationAngle(F)V

    .line 480
    return-void
.end method

.method public requestReadCursor()V
    .registers 3

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$3;

    invoke-direct {v1, p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$3;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 499
    return-void
.end method

.method public setCarouselRotationAngle(F)V
    .registers 3
    .parameter "angle"

    .prologue
    .line 506
    iput p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCarouselRotationAngle:F

    .line 507
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/carousel/CarouselView;->setCarouselRotationAngle(F)V

    .line 508
    return-void
.end method
