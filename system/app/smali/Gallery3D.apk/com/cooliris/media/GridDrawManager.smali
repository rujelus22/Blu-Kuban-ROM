.class public final Lcom/cooliris/media/GridDrawManager;
.super Ljava/lang/Object;
.source "GridDrawManager.java"


# static fields
.field private static m_curItem:Lcom/cooliris/media/MediaItem;

.field private static final sDisplayItemComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/cooliris/media/DisplayItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThumbnailConfig:Lcom/cooliris/media/MediaItemTexture$Config;


# instance fields
.field DECODING_STARTTIME_MS:J

.field private mAGIFu:F

.field private mAGIFv:F

.field private mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

.field private final mCamera:Lcom/cooliris/media/GridCamera;

.field private mCheckedGif:Z

.field private mContext:Landroid/content/Context;

.field private mCurGifFrame:I

.field private mCurrentFocusIsPressed:Z

.field private mCurrentFocusItemHeight:F

.field private mCurrentFocusItemWidth:F

.field private mCurrentFocusSlot:I

.field private mCurrentScaleSlot:I

.field private final mDisplayItems:[Lcom/cooliris/media/DisplayItem;

.field private final mDisplayList:Lcom/cooliris/media/DisplayList;

.field private final mDisplaySlots:[Lcom/cooliris/media/DisplaySlot;

.field private final mDrawables:Lcom/cooliris/media/GridDrawables;

.field private mDrawnCounter:I

.field private mDuration:J

.field private mFocusMixRatio:F

.field private mHoldPosition:Z

.field private mIndexInDrawnArray:I

.field private mIsGif:Z

.field private mItemsDrawn:[Lcom/cooliris/media/DisplayItem;

.field private mLoadingMessageStartTime:J

.field private final mLoadingTexture:Lcom/cooliris/media/Texture;

.field private mMovie:Landroid/graphics/Movie;

.field private mMoviePaused:J

.field private mMovieStart:J

.field private final mNoItemsTexture:Lcom/cooliris/media/Texture;

.field private mPreviousImage:J

.field private mScaleGestureDetector:Lcom/cooliris/media/ScaleGestureDetector;

.field private final mScanningSdCard:Lcom/cooliris/media/Texture;

.field private final mSelectedMixRatio:Lcom/cooliris/media/FloatAnim;

.field private mSelectedSlot:I

.field private mSpreadValue:F

.field private mTargetFocusMixRatio:F

.field private mTimeGap:J

.field private mTimeGapCount:I

.field private mVisibleRange:Lcom/cooliris/media/IndexRange;

.field m_array:[B

.field m_is:Ljava/io/InputStream;

.field m_streamSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    new-instance v0, Lcom/cooliris/media/MediaItemTexture$Config;

    invoke-direct {v0}, Lcom/cooliris/media/MediaItemTexture$Config;-><init>()V

    sput-object v0, Lcom/cooliris/media/GridDrawManager;->sThumbnailConfig:Lcom/cooliris/media/MediaItemTexture$Config;

    .line 165
    new-instance v0, Lcom/cooliris/media/GridDrawManager$1;

    invoke-direct {v0}, Lcom/cooliris/media/GridDrawManager$1;-><init>()V

    sput-object v0, Lcom/cooliris/media/GridDrawManager;->sDisplayItemComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cooliris/media/GridCamera;Lcom/cooliris/media/GridDrawables;Lcom/cooliris/media/DisplayList;[Lcom/cooliris/media/DisplayItem;[Lcom/cooliris/media/DisplaySlot;)V
    .registers 16
    .parameter "context"
    .parameter "camera"
    .parameter "drawables"
    .parameter "displayList"
    .parameter "displayItems"
    .parameter "displaySlots"

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 184
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput v2, p0, Lcom/cooliris/media/GridDrawManager;->mTargetFocusMixRatio:F

    .line 96
    iput v2, p0, Lcom/cooliris/media/GridDrawManager;->mFocusMixRatio:F

    .line 98
    new-instance v0, Lcom/cooliris/media/FloatAnim;

    invoke-direct {v0, v2}, Lcom/cooliris/media/FloatAnim;-><init>(F)V

    iput-object v0, p0, Lcom/cooliris/media/GridDrawManager;->mSelectedMixRatio:Lcom/cooliris/media/FloatAnim;

    .line 124
    iput-wide v4, p0, Lcom/cooliris/media/GridDrawManager;->mPreviousImage:J

    .line 126
    iput-wide v4, p0, Lcom/cooliris/media/GridDrawManager;->mTimeGap:J

    .line 128
    iput v3, p0, Lcom/cooliris/media/GridDrawManager;->mTimeGapCount:I

    .line 131
    iput-object v1, p0, Lcom/cooliris/media/GridDrawManager;->mMovie:Landroid/graphics/Movie;

    .line 133
    iput-wide v4, p0, Lcom/cooliris/media/GridDrawManager;->mMovieStart:J

    .line 135
    iput-wide v4, p0, Lcom/cooliris/media/GridDrawManager;->mMoviePaused:J

    .line 137
    iput-wide v4, p0, Lcom/cooliris/media/GridDrawManager;->mDuration:J

    .line 141
    iput-boolean v3, p0, Lcom/cooliris/media/GridDrawManager;->mIsGif:Z

    .line 143
    iput-boolean v3, p0, Lcom/cooliris/media/GridDrawManager;->mCheckedGif:Z

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lcom/cooliris/media/GridDrawManager;->mCurGifFrame:I

    .line 147
    iput-object v1, p0, Lcom/cooliris/media/GridDrawManager;->m_is:Ljava/io/InputStream;

    .line 150
    iput-object v1, p0, Lcom/cooliris/media/GridDrawManager;->m_array:[B

    .line 152
    iput v3, p0, Lcom/cooliris/media/GridDrawManager;->m_streamSize:I

    .line 154
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/cooliris/media/GridDrawManager;->DECODING_STARTTIME_MS:J

    .line 160
    iput-wide v4, p0, Lcom/cooliris/media/GridDrawManager;->mLoadingMessageStartTime:J

    .line 502
    const/4 v0, -0x1

    iput v0, p0, Lcom/cooliris/media/GridDrawManager;->mIndexInDrawnArray:I

    .line 504
    iput v2, p0, Lcom/cooliris/media/GridDrawManager;->mAGIFu:F

    .line 506
    iput v2, p0, Lcom/cooliris/media/GridDrawManager;->mAGIFv:F

    .line 185
    iput-object p1, p0, Lcom/cooliris/media/GridDrawManager;->mContext:Landroid/content/Context;

    .line 187
    sget-object v0, Lcom/cooliris/media/GridDrawManager;->sThumbnailConfig:Lcom/cooliris/media/MediaItemTexture$Config;

    const/16 v1, 0x80

    iput v1, v0, Lcom/cooliris/media/MediaItemTexture$Config;->thumbnailWidth:I

    .line 188
    sget-object v0, Lcom/cooliris/media/GridDrawManager;->sThumbnailConfig:Lcom/cooliris/media/MediaItemTexture$Config;

    const/16 v1, 0x60

    iput v1, v0, Lcom/cooliris/media/MediaItemTexture$Config;->thumbnailHeight:I

    .line 189
    iput-object p5, p0, Lcom/cooliris/media/GridDrawManager;->mDisplayItems:[Lcom/cooliris/media/DisplayItem;

    .line 190
    iput-object p6, p0, Lcom/cooliris/media/GridDrawManager;->mDisplaySlots:[Lcom/cooliris/media/DisplaySlot;

    .line 191
    iput-object p4, p0, Lcom/cooliris/media/GridDrawManager;->mDisplayList:Lcom/cooliris/media/DisplayList;

    .line 192
    iput-object p3, p0, Lcom/cooliris/media/GridDrawManager;->mDrawables:Lcom/cooliris/media/GridDrawables;

    .line 193
    iput-object p2, p0, Lcom/cooliris/media/GridDrawManager;->mCamera:Lcom/cooliris/media/GridCamera;

    .line 194
    const/16 v0, 0x480

    new-array v0, v0, [Lcom/cooliris/media/DisplayItem;

    iput-object v0, p0, Lcom/cooliris/media/GridDrawManager;->mItemsDrawn:[Lcom/cooliris/media/DisplayItem;

    .line 196
    new-instance v6, Lcom/cooliris/media/StringTexture$Config;

    invoke-direct {v6}, Lcom/cooliris/media/StringTexture$Config;-><init>()V

    .line 197
    .local v6, stc:Lcom/cooliris/media/StringTexture$Config;
    iput-boolean v8, v6, Lcom/cooliris/media/StringTexture$Config;->bold:Z

    .line 198
    sget v0, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    const/high16 v1, 0x4000

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_db

    .line 199
    const/high16 v0, 0x4160

    sget v1, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v0, v1

    iput v0, v6, Lcom/cooliris/media/StringTexture$Config;->fontSize:F

    .line 204
    :goto_70
    iput v8, v6, Lcom/cooliris/media/StringTexture$Config;->sizeMode:I

    .line 205
    iput v3, v6, Lcom/cooliris/media/StringTexture$Config;->overflowMode:I

    .line 206
    const/4 v0, 0x5

    iput v0, v6, Lcom/cooliris/media/StringTexture$Config;->xalignment:I

    .line 207
    new-instance v0, Lcom/cooliris/media/StringTexture;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v2, 0x7f06001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/cooliris/media/StringTexture;-><init>(Ljava/lang/String;Lcom/cooliris/media/StringTexture$Config;)V

    iput-object v0, p0, Lcom/cooliris/media/GridDrawManager;->mNoItemsTexture:Lcom/cooliris/media/Texture;

    .line 209
    new-instance v0, Lcom/cooliris/media/StringTexture;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v2, 0x7f06001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/cooliris/media/StringTexture;-><init>(Ljava/lang/String;Lcom/cooliris/media/StringTexture$Config;)V

    iput-object v0, p0, Lcom/cooliris/media/GridDrawManager;->mScanningSdCard:Lcom/cooliris/media/Texture;

    .line 211
    new-instance v0, Lcom/cooliris/media/StringTexture;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v2, 0x7f06007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/cooliris/media/StringTexture;-><init>(Ljava/lang/String;Lcom/cooliris/media/StringTexture$Config;)V

    iput-object v0, p0, Lcom/cooliris/media/GridDrawManager;->mLoadingTexture:Lcom/cooliris/media/Texture;

    .line 214
    new-instance v7, Lcom/cooliris/media/StringTexture$Config;

    invoke-direct {v7}, Lcom/cooliris/media/StringTexture$Config;-><init>()V

    .line 215
    .local v7, stc2:Lcom/cooliris/media/StringTexture$Config;
    iput-boolean v3, v7, Lcom/cooliris/media/StringTexture$Config;->bold:Z

    .line 216
    const/high16 v0, 0x4120

    sget v1, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v0, v1

    iput v0, v7, Lcom/cooliris/media/StringTexture$Config;->fontSize:F

    .line 217
    iput v8, v7, Lcom/cooliris/media/StringTexture$Config;->sizeMode:I

    .line 218
    iput v3, v7, Lcom/cooliris/media/StringTexture$Config;->overflowMode:I

    .line 219
    const/4 v0, 0x5

    iput v0, v7, Lcom/cooliris/media/StringTexture$Config;->xalignment:I

    .line 227
    sget-boolean v0, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v0, :cond_da

    .line 228
    invoke-static {}, Lcom/quramsoft/xiv/XIVUtils;->getInstance()Lcom/quramsoft/xiv/XIVUtils;

    move-result-object v0

    const/16 v4, 0xc

    const/16 v5, 0x480

    move-object v1, p0

    move-object v2, p2

    move-object v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/quramsoft/xiv/XIVUtils;->setSlotInitInfo(Lcom/cooliris/media/GridDrawManager;Lcom/cooliris/media/GridCamera;[Lcom/cooliris/media/DisplayItem;II)V

    .line 232
    :cond_da
    return-void

    .line 202
    .end local v7           #stc2:Lcom/cooliris/media/StringTexture$Config;
    :cond_db
    const/high16 v0, 0x4180

    sget v1, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v0, v1

    iput v0, v6, Lcom/cooliris/media/StringTexture$Config;->fontSize:F

    goto :goto_70
.end method

.method private drawDisplayItem(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;Lcom/cooliris/media/DisplayItem;Lcom/cooliris/media/Texture;ILcom/cooliris/media/Texture;F)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/cooliris/media/GridDrawManager;->mCamera:Lcom/cooliris/media/GridCamera;

    .line 1392
    iget-object v1, p3, Lcom/cooliris/media/DisplayItem;->mAnimatedPosition:Lcom/cooliris/media/Vector3f;

    .line 1393
    iget v2, v1, Lcom/cooliris/media/Vector3f;->x:F

    iget v3, v0, Lcom/cooliris/media/GridCamera;->mOneByScale:F

    mul-float v4, v2, v3

    .line 1394
    iget v2, v1, Lcom/cooliris/media/Vector3f;->y:F

    iget v0, v0, Lcom/cooliris/media/GridCamera;->mOneByScale:F

    mul-float v5, v2, v0

    .line 1395
    iget v0, v1, Lcom/cooliris/media/Vector3f;->z:F

    neg-float v0, v0

    .line 1396
    invoke-virtual {p3}, Lcom/cooliris/media/DisplayItem;->getStackIndex()I

    move-result v6

    .line 1397
    iget v1, p3, Lcom/cooliris/media/DisplayItem;->mCurrentSlotIndex:I

    iget v2, p0, Lcom/cooliris/media/GridDrawManager;->mCurrentScaleSlot:I

    if-ne v1, v2, :cond_7a

    iget v1, p0, Lcom/cooliris/media/GridDrawManager;->mCurrentScaleSlot:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7a

    const/4 v1, 0x4

    move v3, v1

    .line 1399
    :goto_24
    const/4 v1, 0x3

    if-eq p5, v1, :cond_2a

    const/4 v1, 0x4

    if-ne p5, v1, :cond_7d

    .line 1400
    :cond_2a
    const v0, -0x42dc28f6

    .line 1412
    :cond_2d
    :goto_2d
    const/4 v2, 0x0

    .line 1413
    const/4 v1, 0x0

    .line 1414
    if-nez p5, :cond_41

    if-ge v6, v3, :cond_c6

    invoke-virtual {p4}, Lcom/cooliris/media/Texture;->isLoaded()Z

    move-result v7

    if-eqz v7, :cond_c6

    if-eqz p6, :cond_41

    invoke-virtual {p6}, Lcom/cooliris/media/Texture;->isLoaded()Z

    move-result v7

    if-eqz v7, :cond_c6

    .line 1417
    :cond_41
    const/high16 v1, 0x3f80

    cmpl-float v1, p7, v1

    if-eqz v1, :cond_4f

    if-eqz p6, :cond_4f

    invoke-virtual {p4, p6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 1418
    :cond_4f
    invoke-virtual {p1, p4}, Lcom/cooliris/media/RenderView;->bind(Lcom/cooliris/media/Texture;)Z

    move-result v1

    move v3, v2

    .line 1434
    :goto_54
    if-eqz p4, :cond_d2

    invoke-virtual {p4}, Lcom/cooliris/media/Texture;->isLoaded()Z

    move-result v2

    if-eqz v2, :cond_5e

    if-nez v1, :cond_d2

    .line 1435
    :cond_5e
    if-nez p5, :cond_79

    .line 1436
    if-eqz p6, :cond_77

    invoke-virtual {p6}, Lcom/cooliris/media/Texture;->isLoaded()Z

    move-result v2

    if-eqz v2, :cond_77

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_77

    .line 1437
    const v2, -0x425c28f6

    .line 1438
    invoke-virtual {p1, p6}, Lcom/cooliris/media/RenderView;->bind(Lcom/cooliris/media/Texture;)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    move v0, v2

    .line 1440
    :cond_77
    if-nez v1, :cond_e1

    .line 1475
    :cond_79
    :goto_79
    return-void

    .line 1397
    :cond_7a
    const/4 v1, 0x4

    move v3, v1

    goto :goto_24

    .line 1402
    :cond_7d
    const/4 v1, 0x2

    if-ne p5, v1, :cond_84

    .line 1403
    const v1, 0x3ca3d70a

    add-float/2addr v0, v1

    .line 1404
    :cond_84
    const/4 v1, 0x5

    if-eq p5, v1, :cond_8e

    const/16 v1, 0x8

    if-eq p5, v1, :cond_8e

    const/4 v1, 0x6

    if-ne p5, v1, :cond_95

    :cond_8e
    invoke-virtual {p3}, Lcom/cooliris/media/DisplayItem;->isAlive()Z

    move-result v1

    if-nez v1, :cond_95

    .line 1406
    const/4 v0, 0x0

    .line 1408
    :cond_95
    const/4 v1, 0x5

    if-ne p5, v1, :cond_2d

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2d

    .line 1409
    const/4 v0, 0x0

    goto :goto_2d

    .line 1419
    :cond_9f
    const/4 v1, 0x0

    cmpl-float v1, p7, v1

    if-eqz v1, :cond_c0

    .line 1420
    invoke-virtual {p4}, Lcom/cooliris/media/Texture;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_b0

    invoke-virtual {p6}, Lcom/cooliris/media/Texture;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_b9

    .line 1422
    :cond_b0
    invoke-virtual {p1, p6}, Lcom/cooliris/media/RenderView;->bind(Lcom/cooliris/media/Texture;)Z

    .line 1423
    invoke-virtual {p1, p4}, Lcom/cooliris/media/RenderView;->bind(Lcom/cooliris/media/Texture;)Z

    move-result v1

    move v3, v2

    goto :goto_54

    .line 1425
    :cond_b9
    const/4 v2, 0x1

    .line 1426
    invoke-virtual {p1, p6, p4, p7}, Lcom/cooliris/media/RenderView;->bindMixed(Lcom/cooliris/media/Texture;Lcom/cooliris/media/Texture;F)Z

    move-result v1

    move v3, v2

    goto :goto_54

    .line 1429
    :cond_c0
    invoke-virtual {p1, p6}, Lcom/cooliris/media/RenderView;->bind(Lcom/cooliris/media/Texture;)Z

    move-result v1

    move v3, v2

    goto :goto_54

    .line 1431
    :cond_c6
    if-lt v6, v3, :cond_d0

    if-nez p5, :cond_d0

    .line 1432
    iget-object v3, p0, Lcom/cooliris/media/GridDrawManager;->mDisplayList:Lcom/cooliris/media/DisplayList;

    const/4 v6, 0x1

    invoke-virtual {v3, p3, v6}, Lcom/cooliris/media/DisplayList;->setAlive(Lcom/cooliris/media/DisplayItem;Z)V

    :cond_d0
    move v3, v2

    goto :goto_54

    .line 1447
    :cond_d2
    if-eqz p5, :cond_d7

    const/4 v1, 0x1

    if-ne p5, v1, :cond_e1

    .line 1448
    :cond_d7
    iget-boolean v1, p3, Lcom/cooliris/media/DisplayItem;->mAlive:Z

    if-nez v1, :cond_e1

    .line 1449
    iget-object v1, p0, Lcom/cooliris/media/GridDrawManager;->mDisplayList:Lcom/cooliris/media/DisplayList;

    const/4 v2, 0x1

    invoke-virtual {v1, p3, v2}, Lcom/cooliris/media/DisplayList;->setAlive(Lcom/cooliris/media/DisplayItem;Z)V

    .line 1453
    :cond_e1
    neg-float v1, v4

    neg-float v2, v5

    neg-float v6, v0

    invoke-interface {p2, v1, v2, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTranslatef(FFF)V

    .line 1454
    const/4 v1, 0x1

    if-ne p5, v1, :cond_128

    iget v1, p3, Lcom/cooliris/media/DisplayItem;->mAnimatedImageTheta:F

    iget v2, p3, Lcom/cooliris/media/DisplayItem;->mAnimatedTheta:F

    add-float/2addr v1, v2

    move v2, v1

    .line 1456
    :goto_f0
    const/4 v1, 0x0

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_fc

    .line 1457
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    invoke-interface {p2, v2, v1, v6, v7}, Ljavax/microedition/khronos/opengles/GL11;->glRotatef(FFFF)V

    .line 1459
    :cond_fc
    const/4 v1, 0x0

    .line 1460
    if-nez p5, :cond_108

    iget v6, p3, Lcom/cooliris/media/DisplayItem;->mAnimatedImageTheta:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_108

    .line 1461
    iget v1, p3, Lcom/cooliris/media/DisplayItem;->mAnimatedImageTheta:F

    .line 1463
    :cond_108
    const/4 v6, 0x2

    if-eq p5, v6, :cond_10e

    const/4 v6, 0x4

    if-ne p5, v6, :cond_12c

    .line 1464
    :cond_10e
    invoke-static {p2}, Lcom/cooliris/media/GridQuadFrame;->draw(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 1468
    :goto_111
    const/4 v1, 0x0

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_11e

    .line 1469
    neg-float v1, v2

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    invoke-interface {p2, v1, v2, v6, v7}, Ljavax/microedition/khronos/opengles/GL11;->glRotatef(FFFF)V

    .line 1471
    :cond_11e
    invoke-interface {p2, v4, v5, v0}, Ljavax/microedition/khronos/opengles/GL11;->glTranslatef(FFF)V

    .line 1472
    if-eqz v3, :cond_79

    .line 1473
    invoke-virtual {p1}, Lcom/cooliris/media/RenderView;->unbindMixed()V

    goto/16 :goto_79

    .line 1454
    :cond_128
    iget v1, p3, Lcom/cooliris/media/DisplayItem;->mAnimatedTheta:F

    move v2, v1

    goto :goto_f0

    .line 1466
    :cond_12c
    invoke-static {p2, v1}, Lcom/cooliris/media/GridQuad;->draw(Ljavax/microedition/khronos/opengles/GL11;F)V

    goto :goto_111
.end method


# virtual methods
.method public clear()V
    .registers 4

    .prologue
    .line 1482
    const/4 v0, 0x0

    .local v0, ix:I
    :goto_1
    const/16 v1, 0x480

    if-ge v0, v1, :cond_d

    .line 1483
    iget-object v1, p0, Lcom/cooliris/media/GridDrawManager;->mItemsDrawn:[Lcom/cooliris/media/DisplayItem;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1482
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1485
    :cond_d
    const/4 v1, 0x0

    iput v1, p0, Lcom/cooliris/media/GridDrawManager;->mDrawnCounter:I

    .line 1486
    return-void
.end method

.method public drawBlendedComponents(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;FIIFFLcom/cooliris/media/MediaBucketList;Lcom/cooliris/media/MediaBucketList;ZZ)V
    .registers 37
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1053
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridDrawManager;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v14, v2, Lcom/cooliris/media/IndexRange;->begin:I

    .line 1054
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridDrawManager;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v0, v2, Lcom/cooliris/media/IndexRange;->end:I

    move/from16 v16, v0

    .line 1055
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridDrawManager;->mVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v0, v2, Lcom/cooliris/media/IndexRange;->begin:I

    move/from16 v17, v0

    .line 1056
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridDrawManager;->mVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v0, v2, Lcom/cooliris/media/IndexRange;->end:I

    move/from16 v18, v0

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/GridDrawManager;->mDisplayItems:[Lcom/cooliris/media/DisplayItem;

    move-object/from16 v19, v0

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/GridDrawManager;->mDrawables:Lcom/cooliris/media/GridDrawables;

    move-object/from16 v20, v0

    .line 1061
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cooliris/media/GridDrawManager;->mCurrentFocusIsPressed:Z

    move/from16 v21, v0

    .line 1062
    const/4 v2, 0x2

    move/from16 v0, p4

    if-eq v0, v2, :cond_50e

    .line 1063
    sget-object v2, Lcom/cooliris/media/GridDrawables;->sFrame:Lcom/cooliris/media/GridQuadFrame;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/cooliris/media/GridQuadFrame;->bindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1064
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_56

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/cooliris/media/GridDrawables;->mTextureGridFrame:Lcom/cooliris/media/Texture;

    :goto_45
    move v10, v14

    .line 1066
    :goto_46
    move/from16 v0, v16

    if-gt v10, v0, :cond_9c

    .line 1067
    move/from16 v0, v17

    if-lt v10, v0, :cond_52

    move/from16 v0, v18

    if-le v10, v0, :cond_5b

    .line 1066
    :cond_52
    :goto_52
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_46

    .line 1064
    :cond_56
    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/cooliris/media/GridDrawables;->mTextureFrame:Lcom/cooliris/media/Texture;

    goto :goto_45

    .line 1070
    :cond_5b
    const/4 v3, 0x0

    .line 1071
    move-object/from16 v0, p0

    iget v2, v0, Lcom/cooliris/media/GridDrawManager;->mCurrentScaleSlot:I

    if-ne v10, v2, :cond_82

    const/4 v2, 0x4

    move v4, v2

    .line 1073
    :goto_64
    if-eqz p4, :cond_52

    const/4 v2, 0x3

    move/from16 v0, p4

    if-eq v0, v2, :cond_52

    .line 1074
    const/4 v2, 0x0

    move/from16 v24, v2

    move v2, v3

    move/from16 v3, v24

    :goto_71
    if-ge v3, v4, :cond_85

    .line 1075
    sub-int v5, v10, v14

    mul-int/lit8 v5, v5, 0xc

    add-int/2addr v5, v3

    aget-object v5, v19, v5

    .line 1077
    if-eqz v5, :cond_7f

    .line 1078
    iget-boolean v5, v5, Lcom/cooliris/media/DisplayItem;->mAlive:Z

    or-int/2addr v2, v5

    .line 1074
    :cond_7f
    add-int/lit8 v3, v3, 0x1

    goto :goto_71

    .line 1071
    :cond_82
    const/4 v2, 0x4

    move v4, v2

    goto :goto_64

    .line 1081
    :cond_85
    if-nez v2, :cond_52

    .line 1082
    sub-int v2, v10, v14

    mul-int/lit8 v2, v2, 0xc

    aget-object v5, v19, v2

    .line 1084
    if-eqz v5, :cond_52

    .line 1085
    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v9}, Lcom/cooliris/media/GridDrawManager;->drawDisplayItem(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;Lcom/cooliris/media/DisplayItem;Lcom/cooliris/media/Texture;ILcom/cooliris/media/Texture;F)V

    goto :goto_52

    .line 1091
    :cond_9c
    move-object/from16 v0, v20

    iget-object v10, v0, Lcom/cooliris/media/GridDrawables;->mTextureFramePressed:Lcom/cooliris/media/Texture;

    .line 1092
    move-object/from16 v0, v20

    iget-object v12, v0, Lcom/cooliris/media/GridDrawables;->mTextureFrameFocus:Lcom/cooliris/media/Texture;

    .line 1093
    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/cooliris/media/GridDrawables;->mTextureGridFrame:Lcom/cooliris/media/Texture;

    .line 1094
    move-object/from16 v0, v20

    iget-object v11, v0, Lcom/cooliris/media/GridDrawables;->mTextureFrame:Lcom/cooliris/media/Texture;

    .line 1096
    move-object/from16 v0, p0

    iget v2, v0, Lcom/cooliris/media/GridDrawManager;->mDrawnCounter:I

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/GridDrawManager;->mItemsDrawn:[Lcom/cooliris/media/DisplayItem;

    move-object/from16 v22, v0

    .line 1098
    if-eqz v11, :cond_150

    .line 1099
    if-lez v2, :cond_12e

    .line 1100
    const/4 v3, 0x0

    sget-object v4, Lcom/cooliris/media/GridDrawManager;->sDisplayItemComparator:Ljava/util/Comparator;

    move-object/from16 v0, v22

    invoke-static {v0, v3, v2, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 1103
    add-int/lit8 v2, v2, -0x1

    move v15, v2

    :goto_c5
    if-ltz v15, :cond_150

    .line 1104
    aget-object v5, v22, v15

    .line 1105
    if-nez v5, :cond_cf

    .line 1103
    :cond_cb
    :goto_cb
    add-int/lit8 v2, v15, -0x1

    move v15, v2

    goto :goto_c5

    .line 1108
    :cond_cf
    iget-object v2, v5, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Lcom/cooliris/media/MediaBucketList;->find(Lcom/cooliris/media/MediaItem;)Z

    move-result v4

    .line 1110
    iget-object v2, v5, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Lcom/cooliris/media/MediaBucketList;->find(Lcom/cooliris/media/MediaItem;)Z

    move-result v3

    .line 1112
    if-eqz v4, :cond_116

    move-object v2, v10

    .line 1114
    :goto_e2
    invoke-virtual {v5}, Lcom/cooliris/media/DisplayItem;->getHasFocus()Z

    move-result v6

    if-eqz v6, :cond_11a

    if-eqz v21, :cond_118

    move-object v3, v10

    .line 1119
    :goto_eb
    iget-boolean v6, v5, Lcom/cooliris/media/DisplayItem;->mAlive:Z

    if-eqz v6, :cond_cb

    .line 1120
    const/4 v6, 0x1

    move/from16 v0, p4

    if-eq v0, v6, :cond_58a

    .line 1121
    if-eqz v4, :cond_124

    move-object v2, v10

    .line 1123
    :goto_f7
    invoke-virtual {v5}, Lcom/cooliris/media/DisplayItem;->getHasFocus()Z

    move-result v3

    if-eqz v3, :cond_128

    if-eqz v21, :cond_126

    move-object v6, v10

    .line 1126
    :goto_100
    const/high16 v3, 0x3f80

    cmpl-float v3, p6, v3

    if-nez v3, :cond_12a

    .line 1127
    move-object/from16 v0, p0

    iget v9, v0, Lcom/cooliris/media/GridDrawManager;->mFocusMixRatio:F

    move-object v8, v2

    .line 1133
    :goto_10b
    const/4 v7, 0x2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v9}, Lcom/cooliris/media/GridDrawManager;->drawDisplayItem(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;Lcom/cooliris/media/DisplayItem;Lcom/cooliris/media/Texture;ILcom/cooliris/media/Texture;F)V

    goto :goto_cb

    :cond_116
    move-object v2, v11

    .line 1112
    goto :goto_e2

    :cond_118
    move-object v3, v12

    .line 1114
    goto :goto_eb

    :cond_11a
    if-eqz v4, :cond_11e

    move-object v3, v10

    goto :goto_eb

    :cond_11e
    if-eqz v3, :cond_122

    move-object v3, v11

    goto :goto_eb

    :cond_122
    move-object v3, v13

    goto :goto_eb

    :cond_124
    move-object v2, v11

    .line 1121
    goto :goto_f7

    :cond_126
    move-object v6, v12

    .line 1123
    goto :goto_100

    :cond_128
    move-object v6, v2

    goto :goto_100

    :cond_12a
    move/from16 v9, p6

    move-object v8, v13

    .line 1130
    goto :goto_10b

    .line 1137
    :cond_12e
    if-lez v18, :cond_1a9

    .line 1138
    const-string v2, "GridDrawManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastVisibleSlot ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_150
    :goto_150
    sget-object v2, Lcom/cooliris/media/GridDrawables;->sFrame:Lcom/cooliris/media/GridQuadFrame;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/cooliris/media/GridQuadFrame;->unbindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1180
    move-object/from16 v0, p0

    iget v2, v0, Lcom/cooliris/media/GridDrawManager;->mSpreadValue:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-nez v2, :cond_168

    .line 1181
    const/16 v2, 0x207

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDepthFunc(I)V

    .line 1182
    :cond_168
    if-eqz p4, :cond_16f

    const/4 v2, 0x3

    move/from16 v0, p4

    if-ne v0, v2, :cond_3cc

    .line 1183
    :cond_16f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cooliris/media/GridDrawManager;->mDisplaySlots:[Lcom/cooliris/media/DisplaySlot;

    .line 1184
    sget-object v2, Lcom/cooliris/media/GridDrawables;->sTextGrid:Lcom/cooliris/media/GridQuad;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/cooliris/media/GridQuad;->bindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1185
    const v13, 0x3f51eb85

    .line 1186
    const/4 v2, 0x0

    neg-float v3, v13

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTranslatef(FFF)V

    .line 1187
    sget-object v15, Lcom/cooliris/media/GridDrawables;->sStringTextureTable:Ljava/util/HashMap;

    .line 1188
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cooliris/app/App;->getReverseGeocoder()Lcom/cooliris/media/ReverseGeocoder;

    move-result-object v21

    .line 1190
    const/4 v2, 0x0

    move v10, v14

    .line 1192
    :goto_195
    move/from16 v0, v16

    if-gt v10, v0, :cond_28a

    .line 1193
    const/4 v11, 0x1

    .line 1194
    move-object/from16 v0, p0

    iget v2, v0, Lcom/cooliris/media/GridDrawManager;->mSpreadValue:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_25d

    .line 1192
    :cond_1a4
    :goto_1a4
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move v2, v11

    goto :goto_195

    .line 1139
    :cond_1a9
    if-eqz p10, :cond_1ff

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridDrawManager;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/cooliris/media/Gallery;

    iget-boolean v2, v2, Lcom/cooliris/media/Gallery;->isMediaItemsLoading:Z

    if-eqz v2, :cond_1ff

    .line 1148
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getWidth()I

    move-result v2

    .line 1149
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getHeight()I

    move-result v3

    .line 1150
    if-le v2, v3, :cond_1f8

    .line 1151
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mScanningSdCard:Lcom/cooliris/media/Texture;

    iput v3, v4, Lcom/cooliris/media/Texture;->mWidth:I

    .line 1154
    :goto_1c5
    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mScanningSdCard:Lcom/cooliris/media/Texture;

    invoke-virtual {v4}, Lcom/cooliris/media/Texture;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    int-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 1155
    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mScanningSdCard:Lcom/cooliris/media/Texture;

    invoke-virtual {v4}, Lcom/cooliris/media/Texture;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 1156
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mScanningSdCard:Lcom/cooliris/media/Texture;

    int-to-float v2, v2

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v2, v3}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FF)V

    goto/16 :goto_150

    .line 1153
    :cond_1f8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mScanningSdCard:Lcom/cooliris/media/Texture;

    iput v2, v4, Lcom/cooliris/media/Texture;->mWidth:I

    goto :goto_1c5

    .line 1157
    :cond_1ff
    if-eqz p11, :cond_254

    .line 1158
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getWidth()I

    move-result v2

    .line 1159
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getHeight()I

    move-result v3

    .line 1160
    if-le v2, v3, :cond_24d

    .line 1161
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mNoItemsTexture:Lcom/cooliris/media/Texture;

    iput v3, v4, Lcom/cooliris/media/Texture;->mWidth:I

    .line 1164
    :goto_211
    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mNoItemsTexture:Lcom/cooliris/media/Texture;

    invoke-virtual {v4}, Lcom/cooliris/media/Texture;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    int-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 1165
    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mNoItemsTexture:Lcom/cooliris/media/Texture;

    invoke-virtual {v4}, Lcom/cooliris/media/Texture;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 1166
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mNoItemsTexture:Lcom/cooliris/media/Texture;

    int-to-float v2, v2

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v2, v3}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FF)V

    .line 1167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridDrawManager;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/cooliris/media/Gallery;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/cooliris/media/Gallery;->isMediaItemsLoading:Z

    goto/16 :goto_150

    .line 1163
    :cond_24d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mNoItemsTexture:Lcom/cooliris/media/Texture;

    iput v2, v4, Lcom/cooliris/media/Texture;->mWidth:I

    goto :goto_211

    .line 1176
    :cond_254
    const-string v2, "Gallery"

    const-string v3, "drawBlendedComponents : else "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_150

    .line 1196
    :cond_25d
    sub-int v2, v10, v14

    mul-int/lit8 v2, v2, 0xc

    aget-object v5, v19, v2

    .line 1198
    if-eqz v5, :cond_1a4

    .line 1199
    sub-int v2, v10, v14

    aget-object v2, v12, v2

    .line 1200
    invoke-virtual {v2, v15}, Lcom/cooliris/media/DisplaySlot;->getTitleImage(Ljava/util/HashMap;)Lcom/cooliris/media/StringTexture;

    move-result-object v6

    .line 1201
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/cooliris/media/RenderView;->loadTexture(Lcom/cooliris/media/Texture;)V

    .line 1202
    if-eqz v6, :cond_1a4

    .line 1203
    move/from16 v0, v17

    if-lt v10, v0, :cond_1a4

    move/from16 v0, v18

    if-gt v10, v0, :cond_1a4

    .line 1206
    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v9}, Lcom/cooliris/media/GridDrawManager;->drawDisplayItem(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;Lcom/cooliris/media/DisplayItem;Lcom/cooliris/media/Texture;ILcom/cooliris/media/Texture;F)V

    goto/16 :goto_1a4

    .line 1212
    :cond_28a
    if-nez v2, :cond_2d1

    if-eqz p11, :cond_2d1

    if-nez p10, :cond_2d1

    .line 1214
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getWidth()I

    move-result v2

    .line 1215
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getHeight()I

    move-result v3

    .line 1219
    if-le v2, v3, :cond_2ef

    .line 1220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mNoItemsTexture:Lcom/cooliris/media/Texture;

    iput v3, v4, Lcom/cooliris/media/Texture;->mWidth:I

    .line 1224
    :goto_2a0
    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mNoItemsTexture:Lcom/cooliris/media/Texture;

    invoke-virtual {v4}, Lcom/cooliris/media/Texture;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    int-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 1225
    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mNoItemsTexture:Lcom/cooliris/media/Texture;

    invoke-virtual {v4}, Lcom/cooliris/media/Texture;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 1226
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mNoItemsTexture:Lcom/cooliris/media/Texture;

    int-to-float v2, v2

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v2, v3}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FF)V

    .line 1229
    :cond_2d1
    const v11, 0x3e4ccccd

    .line 1230
    const/4 v2, 0x0

    neg-float v3, v11

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTranslatef(FFF)V

    move v10, v14

    .line 1231
    :goto_2dd
    move/from16 v0, v16

    if-gt v10, v0, :cond_324

    .line 1232
    move-object/from16 v0, p0

    iget v2, v0, Lcom/cooliris/media/GridDrawManager;->mSpreadValue:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2f6

    .line 1231
    :cond_2eb
    :goto_2eb
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_2dd

    .line 1222
    :cond_2ef
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mNoItemsTexture:Lcom/cooliris/media/Texture;

    iput v2, v4, Lcom/cooliris/media/Texture;->mWidth:I

    goto :goto_2a0

    .line 1234
    :cond_2f6
    sub-int v2, v10, v14

    mul-int/lit8 v2, v2, 0xc

    aget-object v5, v19, v2

    .line 1236
    if-eqz v5, :cond_2eb

    .line 1237
    sub-int v2, v10, v14

    aget-object v2, v12, v2

    .line 1238
    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v15}, Lcom/cooliris/media/DisplaySlot;->getLocationImage(Lcom/cooliris/media/ReverseGeocoder;Ljava/util/HashMap;)Lcom/cooliris/media/StringTexture;

    move-result-object v6

    .line 1240
    if-eqz v6, :cond_2eb

    .line 1241
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/cooliris/media/RenderView;->loadTexture(Lcom/cooliris/media/Texture;)V

    .line 1242
    move/from16 v0, v17

    if-lt v10, v0, :cond_2eb

    move/from16 v0, v18

    if-gt v10, v0, :cond_2eb

    .line 1245
    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v9}, Lcom/cooliris/media/GridDrawManager;->drawDisplayItem(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;Lcom/cooliris/media/DisplayItem;Lcom/cooliris/media/Texture;ILcom/cooliris/media/Texture;F)V

    goto :goto_2eb

    .line 1250
    :cond_324
    const/4 v2, 0x3

    move/from16 v0, p4

    if-ne v0, v2, :cond_404

    .line 1251
    sget-object v2, Lcom/cooliris/media/GridDrawables;->sLocationGrid:Lcom/cooliris/media/GridQuad;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/cooliris/media/GridQuad;->bindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1252
    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/cooliris/media/GridDrawables;->mTextureLocation:Lcom/cooliris/media/Texture;

    .line 1253
    const v22, 0x3e428f5c

    move v10, v14

    .line 1254
    :goto_338
    move/from16 v0, v16

    if-gt v10, v0, :cond_3b0

    .line 1255
    move-object/from16 v0, p0

    iget v2, v0, Lcom/cooliris/media/GridDrawManager;->mCurrentScaleSlot:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_347

    .line 1254
    :cond_343
    :goto_343
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_338

    .line 1257
    :cond_347
    sub-int v2, v10, v14

    mul-int/lit8 v2, v2, 0xc

    aget-object v5, v19, v2

    .line 1259
    if-eqz v5, :cond_343

    .line 1260
    iget-boolean v2, v5, Lcom/cooliris/media/DisplayItem;->mAlive:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_343

    .line 1261
    sub-int v2, v10, v14

    aget-object v2, v12, v2

    .line 1262
    invoke-virtual {v2}, Lcom/cooliris/media/DisplaySlot;->hasValidLocation()Z

    move-result v3

    if-eqz v3, :cond_343

    .line 1263
    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v15}, Lcom/cooliris/media/DisplaySlot;->getLocationImage(Lcom/cooliris/media/ReverseGeocoder;Ljava/util/HashMap;)Lcom/cooliris/media/StringTexture;

    move-result-object v2

    .line 1265
    if-eqz v2, :cond_3ae

    invoke-virtual {v2}, Lcom/cooliris/media/StringTexture;->computeTextWidth()F

    move-result v2

    .line 1267
    :goto_36a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/GridDrawManager;->mCamera:Lcom/cooliris/media/GridCamera;

    iget v3, v3, Lcom/cooliris/media/GridCamera;->mOneByScale:F

    const/high16 v4, 0x3f00

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    .line 1268
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_37d

    .line 1269
    const v3, 0x3e3851ec

    sub-float/2addr v2, v3

    .line 1271
    :cond_37d
    const v3, 0x3dcccccd

    add-float v23, v2, v3

    .line 1272
    move/from16 v0, v17

    if-lt v10, v0, :cond_343

    move/from16 v0, v18

    if-gt v10, v0, :cond_343

    .line 1275
    move/from16 v0, v22

    neg-float v2, v0

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTranslatef(FFF)V

    .line 1276
    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v9}, Lcom/cooliris/media/GridDrawManager;->drawDisplayItem(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;Lcom/cooliris/media/DisplayItem;Lcom/cooliris/media/Texture;ILcom/cooliris/media/Texture;F)V

    .line 1278
    move/from16 v0, v23

    neg-float v2, v0

    const/4 v3, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v2, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTranslatef(FFF)V

    goto :goto_343

    .line 1265
    :cond_3ae
    const/4 v2, 0x0

    goto :goto_36a

    .line 1284
    :cond_3b0
    sget-object v2, Lcom/cooliris/media/GridDrawables;->sLocationGrid:Lcom/cooliris/media/GridQuad;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/cooliris/media/GridQuad;->unbindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1316
    :cond_3b7
    :goto_3b7
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v11, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTranslatef(FFF)V

    .line 1317
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v13, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTranslatef(FFF)V

    .line 1318
    sget-object v2, Lcom/cooliris/media/GridDrawables;->sTextGrid:Lcom/cooliris/media/GridQuad;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/cooliris/media/GridQuad;->unbindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1320
    :cond_3cc
    const/4 v2, 0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_4b1

    const/4 v2, 0x2

    move/from16 v0, p4

    if-eq v0, v2, :cond_4b1

    .line 1321
    move-object/from16 v0, v20

    iget-object v10, v0, Lcom/cooliris/media/GridDrawables;->mTextureCheckmarkOn:Lcom/cooliris/media/Texture;

    .line 1322
    move-object/from16 v0, v20

    iget-object v11, v0, Lcom/cooliris/media/GridDrawables;->mTextureCheckmarkOff:Lcom/cooliris/media/Texture;

    .line 1323
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v2}, Lcom/cooliris/media/RenderView;->prime(Lcom/cooliris/media/Texture;Z)V

    .line 1324
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v2}, Lcom/cooliris/media/RenderView;->prime(Lcom/cooliris/media/Texture;Z)V

    .line 1325
    sget-object v2, Lcom/cooliris/media/GridDrawables;->sSelectedGrid:Lcom/cooliris/media/GridQuad;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/cooliris/media/GridQuad;->bindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    move v12, v14

    .line 1326
    :goto_3f2
    move/from16 v0, v16

    if-gt v12, v0, :cond_4aa

    .line 1327
    move-object/from16 v0, p0

    iget v2, v0, Lcom/cooliris/media/GridDrawManager;->mSpreadValue:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_47f

    .line 1326
    :cond_400
    :goto_400
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_3f2

    .line 1285
    :cond_404
    if-nez p4, :cond_3b7

    const/4 v2, 0x0

    cmpl-float v2, p6, v2

    if-lez v2, :cond_3b7

    .line 1286
    sget-object v2, Lcom/cooliris/media/GridDrawables;->sSourceIconGrid:Lcom/cooliris/media/GridQuad;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/cooliris/media/GridQuad;->bindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1287
    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/cooliris/media/GridDrawables;->mTextureTransparent:Lcom/cooliris/media/Texture;

    move v10, v14

    .line 1288
    :goto_417
    move/from16 v0, v16

    if-gt v10, v0, :cond_476

    .line 1289
    sub-int v2, v10, v14

    mul-int/lit8 v2, v2, 0xc

    aget-object v5, v19, v2

    .line 1291
    move-object/from16 v0, p0

    iget v2, v0, Lcom/cooliris/media/GridDrawManager;->mCurrentScaleSlot:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_42c

    .line 1288
    :cond_428
    :goto_428
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_417

    .line 1293
    :cond_42c
    if-eqz v5, :cond_428

    .line 1294
    iget-boolean v2, v5, Lcom/cooliris/media/DisplayItem;->mAlive:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_428

    .line 1295
    move/from16 v0, v17

    if-lt v10, v0, :cond_428

    move/from16 v0, v18

    if-gt v10, v0, :cond_428

    .line 1300
    sub-int v2, v10, v14

    aget-object v2, v12, v2

    .line 1301
    invoke-virtual {v2}, Lcom/cooliris/media/DisplaySlot;->getMediaSet()Lcom/cooliris/media/MediaSet;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/cooliris/media/GridDrawables;->getIconForSet(Lcom/cooliris/media/MediaSet;Z)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/cooliris/media/RenderView;->getResource(IZ)Lcom/cooliris/media/ResourceTexture;

    move-result-object v6

    .line 1307
    const v2, 0x3e75c28f

    const/high16 v3, 0x3f00

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTranslatef(FFF)V

    .line 1308
    const/16 v7, 0x9

    const v9, 0x3f59999a

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v9}, Lcom/cooliris/media/GridDrawManager;->drawDisplayItem(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;Lcom/cooliris/media/DisplayItem;Lcom/cooliris/media/Texture;ILcom/cooliris/media/Texture;F)V

    .line 1310
    const v2, -0x418a3d71

    const/high16 v3, -0x4100

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTranslatef(FFF)V

    goto :goto_428

    .line 1314
    :cond_476
    sget-object v2, Lcom/cooliris/media/GridDrawables;->sSourceIconGrid:Lcom/cooliris/media/GridQuad;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/cooliris/media/GridQuad;->unbindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    goto/16 :goto_3b7

    .line 1329
    :cond_47f
    sub-int v2, v12, v14

    mul-int/lit8 v2, v2, 0xc

    aget-object v5, v19, v2

    .line 1331
    if-eqz v5, :cond_400

    .line 1332
    move/from16 v0, v17

    if-lt v12, v0, :cond_400

    move/from16 v0, v18

    if-gt v12, v0, :cond_400

    .line 1335
    iget-object v2, v5, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Lcom/cooliris/media/MediaBucketList;->find(Lcom/cooliris/media/MediaItem;)Z

    move-result v2

    if-eqz v2, :cond_4a8

    move-object v6, v10

    .line 1337
    :goto_49a
    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v9}, Lcom/cooliris/media/GridDrawManager;->drawDisplayItem(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;Lcom/cooliris/media/DisplayItem;Lcom/cooliris/media/Texture;ILcom/cooliris/media/Texture;F)V

    goto/16 :goto_400

    :cond_4a8
    move-object v6, v11

    .line 1335
    goto :goto_49a

    .line 1341
    :cond_4aa
    sget-object v2, Lcom/cooliris/media/GridDrawables;->sSelectedGrid:Lcom/cooliris/media/GridQuad;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/cooliris/media/GridQuad;->unbindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1344
    :cond_4b1
    const/16 v2, 0x207

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDepthFunc(I)V

    .line 1346
    sget-object v2, Lcom/cooliris/media/GridDrawables;->sVideoGrid:Lcom/cooliris/media/GridQuad;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/cooliris/media/GridQuad;->bindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1347
    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/cooliris/media/GridDrawables;->mTextureVideo:Lcom/cooliris/media/Texture;

    move v10, v14

    .line 1348
    :goto_4c4
    move/from16 v0, v16

    if-gt v10, v0, :cond_4f9

    .line 1349
    sub-int v2, v10, v14

    mul-int/lit8 v2, v2, 0xc

    aget-object v5, v19, v2

    .line 1351
    if-eqz v5, :cond_4e5

    iget-boolean v2, v5, Lcom/cooliris/media/DisplayItem;->mAlive:Z

    if-eqz v2, :cond_4e5

    .line 1352
    iget-object v2, v5, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    invoke-virtual {v2}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4e5

    .line 1353
    move/from16 v0, v17

    if-lt v10, v0, :cond_4e5

    move/from16 v0, v18

    if-le v10, v0, :cond_4e9

    .line 1348
    :cond_4e5
    :goto_4e5
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_4c4

    .line 1357
    :cond_4e9
    const/4 v2, -0x1

    if-eq v14, v2, :cond_4e5

    .line 1358
    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v9}, Lcom/cooliris/media/GridDrawManager;->drawDisplayItem(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;Lcom/cooliris/media/DisplayItem;Lcom/cooliris/media/Texture;ILcom/cooliris/media/Texture;F)V

    goto :goto_4e5

    .line 1363
    :cond_4f9
    sget-object v2, Lcom/cooliris/media/GridDrawables;->sVideoGrid:Lcom/cooliris/media/GridQuad;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/cooliris/media/GridQuad;->unbindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1364
    const/16 v2, 0x203

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDepthFunc(I)V

    .line 1365
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/cooliris/media/GridDrawManager;->mLoadingMessageStartTime:J

    .line 1387
    :cond_50d
    :goto_50d
    return-void

    .line 1367
    :cond_50e
    const/4 v2, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_583

    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_583

    .line 1368
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/cooliris/media/GridDrawManager;->mLoadingMessageStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_52b

    .line 1369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/cooliris/media/GridDrawManager;->mLoadingMessageStartTime:J

    goto :goto_50d

    .line 1371
    :cond_52b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/cooliris/media/GridDrawManager;->mLoadingMessageStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_50d

    .line 1372
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getWidth()I

    move-result v2

    .line 1373
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getHeight()I

    move-result v3

    .line 1374
    if-le v2, v3, :cond_57c

    .line 1375
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mLoadingTexture:Lcom/cooliris/media/Texture;

    iput v3, v4, Lcom/cooliris/media/Texture;->mWidth:I

    .line 1378
    :goto_54a
    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mLoadingTexture:Lcom/cooliris/media/Texture;

    invoke-virtual {v4}, Lcom/cooliris/media/Texture;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    int-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 1379
    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mLoadingTexture:Lcom/cooliris/media/Texture;

    invoke-virtual {v4}, Lcom/cooliris/media/Texture;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 1380
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mLoadingTexture:Lcom/cooliris/media/Texture;

    int-to-float v2, v2

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v2, v3}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FF)V

    goto :goto_50d

    .line 1377
    :cond_57c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mLoadingTexture:Lcom/cooliris/media/Texture;

    iput v2, v4, Lcom/cooliris/media/Texture;->mWidth:I

    goto :goto_54a

    .line 1384
    :cond_583
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/cooliris/media/GridDrawManager;->mLoadingMessageStartTime:J

    goto :goto_50d

    :cond_58a
    move/from16 v9, p7

    move-object v6, v3

    move-object v8, v2

    goto/16 :goto_10b
.end method

.method public drawFocusItems(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;FZF)V
    .registers 44
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/GridDrawManager;->mDrawables:Lcom/cooliris/media/GridDrawables;

    move-object/from16 v27, v0

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/GridDrawManager;->mCamera:Lcom/cooliris/media/GridCamera;

    move-object/from16 v28, v0

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/GridDrawManager;->mDisplayItems:[Lcom/cooliris/media/DisplayItem;

    move-object/from16 v29, v0

    .line 513
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v0, v4, Lcom/cooliris/media/IndexRange;->begin:I

    move/from16 v26, v0

    .line 514
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v0, v4, Lcom/cooliris/media/IndexRange;->end:I

    move/from16 v30, v0

    .line 515
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mCamera:Lcom/cooliris/media/GridCamera;

    invoke-virtual {v4}, Lcom/cooliris/media/GridCamera;->isZAnimating()Z

    move-result v31

    .line 519
    move-object/from16 v0, p0

    iget v9, v0, Lcom/cooliris/media/GridDrawManager;->mSelectedSlot:I

    .line 520
    const/4 v11, 0x0

    move/from16 v4, v26

    .line 523
    :goto_31
    move/from16 v0, v30

    if-gt v4, v0, :cond_4f

    .line 524
    const/4 v5, -0x1

    if-eq v9, v5, :cond_43

    add-int/lit8 v5, v9, -0x2

    if-lt v4, v5, :cond_43

    add-int/lit8 v5, v9, 0x2

    if-gt v4, v5, :cond_43

    .line 523
    :cond_40
    :goto_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 528
    :cond_43
    sub-int v5, v4, v26

    mul-int/lit8 v5, v5, 0xc

    aget-object v5, v29, v5

    .line 530
    if-eqz v5, :cond_40

    .line 531
    invoke-virtual {v5}, Lcom/cooliris/media/DisplayItem;->clearScreennailImage()V

    goto :goto_40

    .line 534
    :cond_4f
    const/4 v4, -0x1

    if-eq v9, v4, :cond_67

    .line 535
    move-object/from16 v0, v28

    iget v4, v0, Lcom/cooliris/media/GridCamera;->mLookAtX:F

    move-object/from16 v0, v28

    iget v5, v0, Lcom/cooliris/media/GridCamera;->mScale:F

    mul-float v32, v4, v5

    .line 536
    sub-int v4, v9, v26

    mul-int/lit8 v4, v4, 0xc

    .line 538
    if-ltz v4, :cond_67

    move-object/from16 v0, v29

    array-length v5, v0

    if-lt v4, v5, :cond_68

    .line 1047
    :cond_67
    return-void

    .line 541
    :cond_68
    aget-object v5, v29, v4

    .line 542
    if-eqz v5, :cond_67

    iget-object v4, v5, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    iget-wide v6, v4, Lcom/cooliris/media/MediaItem;->mId:J

    const-wide/16 v12, -0x1

    cmp-long v4, v6, v12

    if-eqz v4, :cond_67

    .line 545
    const/4 v4, 0x0

    .line 546
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/cooliris/media/DisplayItem;->getScreennailImage(Landroid/content/Context;)Lcom/cooliris/media/Texture;

    move-result-object v6

    .line 547
    if-eqz v6, :cond_8ad

    invoke-virtual {v6}, Lcom/cooliris/media/Texture;->isLoaded()Z

    move-result v6

    if-eqz v6, :cond_8ad

    .line 548
    const/4 v4, 0x1

    move/from16 v22, v4

    .line 550
    :goto_8a
    iget-object v4, v5, Lcom/cooliris/media/DisplayItem;->mAnimatedPosition:Lcom/cooliris/media/Vector3f;

    iget v0, v4, Lcom/cooliris/media/Vector3f;->x:F

    move/from16 v33, v0

    .line 551
    cmpg-float v4, v33, v32

    if-gez v4, :cond_c4

    const/4 v4, 0x1

    move/from16 v23, v4

    .line 552
    :goto_97
    const/high16 v4, 0x3f80

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/cooliris/media/RenderView;->setAlpha(F)V

    .line 553
    const/16 v4, 0xbe2

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 554
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 555
    const/4 v12, 0x0

    .line 556
    const/4 v4, -0x1

    move/from16 v25, v4

    :goto_b0
    const/4 v4, 0x1

    move/from16 v0, v25

    if-gt v0, v4, :cond_67

    .line 557
    if-eqz p4, :cond_c8

    const/high16 v4, 0x3f80

    cmpl-float v4, p5, v4

    if-lez v4, :cond_c8

    if-eqz v25, :cond_c8

    .line 556
    :cond_bf
    :goto_bf
    add-int/lit8 v4, v25, 0x1

    move/from16 v25, v4

    goto :goto_b0

    .line 551
    :cond_c4
    const/4 v4, 0x0

    move/from16 v23, v4

    goto :goto_97

    .line 559
    :cond_c8
    move-object/from16 v0, v28

    iget v13, v0, Lcom/cooliris/media/GridCamera;->mAspectRatio:F

    .line 560
    add-int v8, v9, v25

    .line 561
    if-ltz v8, :cond_bf

    move/from16 v0, v30

    if-gt v8, v0, :cond_bf

    .line 562
    sub-int v4, v8, v26

    mul-int/lit8 v7, v4, 0xc

    .line 564
    if-ltz v7, :cond_67

    move-object/from16 v0, v29

    array-length v4, v0

    if-ge v7, v4, :cond_67

    .line 567
    aget-object v5, v29, v7

    .line 568
    if-nez v5, :cond_fc

    .line 569
    const-string v4, "GridDrawManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "drawFocusItems():displayItem is null!!! indexInDrawnArray is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bf

    .line 573
    :cond_fc
    iget-object v0, v5, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    move-object/from16 v34, v0

    .line 575
    const/4 v6, 0x0

    .line 576
    const/4 v4, 0x0

    .line 578
    if-eqz v34, :cond_8a9

    move-object/from16 v0, v34

    iget-object v10, v0, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    if-eqz v10, :cond_8a9

    move-object/from16 v0, v34

    iget-object v10, v0, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    const-string v14, "content"

    invoke-virtual {v10, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_122

    move-object/from16 v0, v34

    iget-object v10, v0, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    const-string v14, "file://"

    invoke-virtual {v10, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8a9

    .line 582
    :cond_122
    const/4 v4, 0x1

    .line 586
    move-object/from16 v0, v34

    iget-object v6, v0, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v6}, Lcom/cooliris/drm/DrmChecker;->isDrm(Ljava/lang/String;)Z

    move-result v6

    move/from16 v24, v6

    .line 589
    :goto_12d
    if-eqz v24, :cond_144

    .line 590
    if-nez v25, :cond_bf

    .line 593
    move-object/from16 v0, p0

    iget v6, v0, Lcom/cooliris/media/GridDrawManager;->mIndexInDrawnArray:I

    if-eq v6, v7, :cond_144

    .line 594
    move-object/from16 v0, p0

    iput v7, v0, Lcom/cooliris/media/GridDrawManager;->mIndexInDrawnArray:I

    .line 595
    invoke-virtual {v5}, Lcom/cooliris/media/DisplayItem;->clearHiResImage()V

    .line 596
    invoke-virtual {v5}, Lcom/cooliris/media/DisplayItem;->clearScreennailImage()V

    .line 597
    invoke-virtual {v5}, Lcom/cooliris/media/DisplayItem;->clearThumbnail()V

    .line 605
    :cond_144
    if-eqz v34, :cond_162

    move-object/from16 v0, v34

    iget-object v6, v0, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    if-eqz v6, :cond_162

    move-object/from16 v0, v34

    iget-object v6, v0, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    const-string v7, "image/gif"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_162

    if-eqz v25, :cond_162

    .line 607
    invoke-virtual {v5}, Lcom/cooliris/media/DisplayItem;->clearScreennailImage()V

    .line 608
    invoke-virtual {v5}, Lcom/cooliris/media/DisplayItem;->clearThumbnail()V

    goto/16 :goto_bf

    .line 616
    :cond_162
    sget-boolean v6, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v6, :cond_4d7

    if-nez v24, :cond_4d7

    if-eqz v4, :cond_4d7

    .line 617
    sget-object v6, Lcom/cooliris/media/GridDrawManager;->sThumbnailConfig:Lcom/cooliris/media/MediaItemTexture$Config;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/cooliris/media/GridDrawManager;->mSelectedSlot:I

    move-object/from16 v4, p1

    move/from16 v10, p4

    invoke-static/range {v4 .. v11}, Lcom/quramsoft/xiv/XIVUtils;->getThumbnailTexture(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/DisplayItem;Lcom/cooliris/media/MediaItemTexture$Config;IIIZZ)Lcom/cooliris/media/Texture;

    move-result-object v6

    .line 628
    move-object/from16 v0, p0

    iget v7, v0, Lcom/cooliris/media/GridDrawManager;->mSelectedSlot:I

    move-object/from16 v4, p1

    move/from16 v10, p4

    invoke-static/range {v4 .. v11}, Lcom/quramsoft/xiv/XIVUtils;->getTexture(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/DisplayItem;Lcom/cooliris/media/Texture;IIIZZ)Lcom/cooliris/media/Texture;

    move-result-object v4

    .line 633
    if-nez v6, :cond_8a5

    move-object v6, v4

    move-object v7, v4

    .line 669
    :goto_188
    if-eqz v31, :cond_1ab

    if-eqz v6, :cond_192

    invoke-virtual {v6}, Lcom/cooliris/media/Texture;->isLoaded()Z

    move-result v4

    if-nez v4, :cond_1ab

    .line 671
    :cond_192
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mSelectedMixRatio:Lcom/cooliris/media/FloatAnim;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/cooliris/media/FloatAnim;->setValue(F)V

    .line 672
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mSelectedMixRatio:Lcom/cooliris/media/FloatAnim;

    const/high16 v6, 0x3f80

    const v10, 0x3a83126f

    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getFrameTime()J

    move-result-wide v14

    invoke-virtual {v4, v6, v10, v14, v15}, Lcom/cooliris/media/FloatAnim;->animateValue(FFJ)V

    move-object v6, v7

    .line 674
    :cond_1ab
    const/high16 v4, 0x3f80

    cmpl-float v4, p3, v4

    if-eqz v4, :cond_55f

    if-nez v25, :cond_55f

    invoke-virtual/range {v34 .. v34}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v4

    const/4 v10, 0x1

    if-eq v4, v10, :cond_55f

    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/cooliris/media/DisplayItem;->getHiResImage(Landroid/content/Context;)Lcom/cooliris/media/Texture;

    move-result-object v4

    .line 679
    :goto_1c2
    sget-boolean v10, Lcom/cooliris/media/Utils;->mUseXivRD:Z

    if-eqz v10, :cond_565

    .line 680
    const/high16 v4, 0x3f80

    cmpl-float v4, p3, v4

    if-eqz v4, :cond_562

    if-nez v25, :cond_562

    invoke-virtual/range {v34 .. v34}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v4

    const/4 v10, 0x1

    if-eq v4, v10, :cond_562

    iget-object v4, v5, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    invoke-virtual {v4}, Lcom/cooliris/media/MediaItem;->isSupportedRD()Z

    move-result v4

    if-nez v4, :cond_562

    if-nez v24, :cond_562

    .line 684
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/cooliris/media/DisplayItem;->getHiResImage(Landroid/content/Context;)Lcom/cooliris/media/Texture;

    move-result-object v4

    .line 698
    :cond_1e7
    :goto_1e7
    if-eqz v25, :cond_1ec

    .line 699
    invoke-virtual {v5}, Lcom/cooliris/media/DisplayItem;->clearHiResImage()V

    .line 701
    :cond_1ec
    if-eqz v4, :cond_1ff

    .line 702
    invoke-virtual {v4}, Lcom/cooliris/media/Texture;->isLoaded()Z

    move-result v10

    if-nez v10, :cond_57a

    .line 703
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/cooliris/media/RenderView;->bind(Lcom/cooliris/media/Texture;)Z

    .line 704
    const/4 v10, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v10}, Lcom/cooliris/media/RenderView;->prime(Lcom/cooliris/media/Texture;Z)V

    .line 710
    :cond_1ff
    :goto_1ff
    if-eqz v6, :cond_207

    invoke-virtual {v6}, Lcom/cooliris/media/Texture;->isLoaded()Z

    move-result v4

    if-nez v4, :cond_8a2

    .line 711
    :cond_207
    sub-float v4, v33, v32

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v10, 0x3dcccccd

    cmpg-float v4, v4, v10

    if-gez v4, :cond_225

    .line 712
    if-eqz v22, :cond_21d

    if-eqz v25, :cond_21d

    .line 713
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/cooliris/media/RenderView;->bind(Lcom/cooliris/media/Texture;)Z

    .line 715
    :cond_21d
    if-nez v25, :cond_225

    .line 717
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v4}, Lcom/cooliris/media/RenderView;->prime(Lcom/cooliris/media/Texture;Z)V

    .line 721
    :cond_225
    if-nez v25, :cond_240

    .line 722
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mSelectedMixRatio:Lcom/cooliris/media/FloatAnim;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/cooliris/media/FloatAnim;->setValue(F)V

    .line 723
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mSelectedMixRatio:Lcom/cooliris/media/FloatAnim;

    const/high16 v10, 0x3f80

    const v14, 0x3a83126f

    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getFrameTime()J

    move-result-wide v15

    move-wide v0, v15

    invoke-virtual {v4, v10, v14, v0, v1}, Lcom/cooliris/media/FloatAnim;->animateValue(FFJ)V

    :cond_240
    move-object v4, v7

    .line 726
    :goto_241
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/cooliris/media/GridDrawManager;->mCamera:Lcom/cooliris/media/GridCamera;

    invoke-virtual {v10}, Lcom/cooliris/media/GridCamera;->isAnimating()Z

    move-result v10

    if-nez v10, :cond_24d

    if-eqz p4, :cond_25d

    .line 727
    :cond_24d
    if-nez p4, :cond_256

    if-eqz v23, :cond_256

    const/4 v10, -0x1

    move/from16 v0, v25

    if-eq v0, v10, :cond_bf

    .line 730
    :cond_256
    if-nez v23, :cond_25d

    const/4 v10, 0x1

    move/from16 v0, v25

    if-eq v0, v10, :cond_bf

    .line 734
    :cond_25d
    invoke-virtual {v5}, Lcom/cooliris/media/DisplayItem;->getImageTheta()F

    move-result v10

    float-to-int v0, v10

    move/from16 v19, v0

    .line 737
    if-eqz p4, :cond_588

    const/high16 v10, 0x3f80

    cmpg-float v10, p5, v10

    if-gez v10, :cond_588

    const/4 v10, 0x0

    cmpl-float v10, p5, v10

    if-eqz v10, :cond_588

    .line 738
    const/4 v10, -0x1

    move/from16 v0, v25

    if-ne v0, v10, :cond_57d

    .line 739
    add-int/lit8 v8, v8, 0x1

    .line 740
    if-ltz v8, :cond_89f

    move/from16 v0, v30

    if-gt v8, v0, :cond_89f

    .line 741
    sub-int v8, v8, v26

    mul-int/lit8 v8, v8, 0xc

    .line 743
    if-ltz v8, :cond_89f

    move-object/from16 v0, v29

    array-length v10, v0

    if-ge v8, v10, :cond_89f

    .line 745
    iget v10, v5, Lcom/cooliris/media/DisplayItem;->mAnimatedImageTheta:F

    .line 746
    aget-object v5, v29, v8

    .line 747
    iget v8, v5, Lcom/cooliris/media/DisplayItem;->mAnimatedImageTheta:F

    .line 748
    iput v10, v5, Lcom/cooliris/media/DisplayItem;->mAnimatedImageTheta:F

    .line 749
    const/high16 v10, 0x3f80

    sub-float v10, v10, p5

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/cooliris/media/RenderView;->setAlpha(F)V

    :goto_29a
    move-object v10, v5

    .line 757
    :goto_29b
    if-eqz v4, :cond_4d4

    .line 758
    add-int/lit8 v5, v25, 0x1

    .line 759
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getAlpha()F

    move-result v35

    .line 760
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cooliris/media/GridDrawManager;->mSelectedMixRatio:Lcom/cooliris/media/FloatAnim;

    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getFrameTime()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Lcom/cooliris/media/FloatAnim;->getValue(J)F

    move-result v36

    .line 761
    const/high16 v12, 0x3f80

    cmpl-float v12, v36, v12

    if-eqz v12, :cond_89b

    .line 763
    const/high16 v4, 0x3f80

    sub-float v4, v4, v36

    mul-float v4, v4, v35

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/cooliris/media/RenderView;->setAlpha(F)V

    move-object/from16 v18, v7

    .line 765
    :goto_2c2
    sget-object v4, Lcom/cooliris/media/GridDrawables;->sFullscreenGrid:[Lcom/cooliris/media/GridQuad;

    aget-object v12, v4, v5

    .line 774
    sget-object v4, Lcom/cooliris/media/GridDrawManager;->m_curItem:Lcom/cooliris/media/MediaItem;

    move-object/from16 v0, v34

    if-eq v4, v0, :cond_33f

    if-nez v25, :cond_33f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/cooliris/media/GridDrawManager;->mCheckedGif:Z

    if-nez v4, :cond_33f

    .line 783
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/cooliris/media/GridDrawManager;->mAGIFu:F

    .line 784
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/cooliris/media/GridDrawManager;->mAGIFv:F

    .line 785
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mMovie:Landroid/graphics/Movie;

    .line 786
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/cooliris/media/GridDrawManager;->mIsGif:Z

    .line 787
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/cooliris/media/GridDrawManager;->mCurGifFrame:I

    .line 788
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/cooliris/media/GridDrawManager;->m_array:[B

    .line 789
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/cooliris/media/GridDrawManager;->m_is:Ljava/io/InputStream;

    .line 790
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/cooliris/media/GridDrawManager;->mDuration:J

    .line 791
    iget-object v4, v10, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    sput-object v4, Lcom/cooliris/media/GridDrawManager;->m_curItem:Lcom/cooliris/media/MediaItem;

    .line 792
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/cooliris/media/GridDrawManager;->mIndexInDrawnArray:I

    .line 794
    if-eqz v34, :cond_33f

    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    if-eqz v4, :cond_33f

    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/cooliris/media/MediaItem;->mMimeType:Ljava/lang/String;

    const-string v5, "image/gif"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_33f

    .line 796
    sget-object v4, Lcom/cooliris/media/GridDrawManager;->m_curItem:Lcom/cooliris/media/MediaItem;

    iget-object v4, v4, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    .line 797
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_32a

    .line 798
    sget-object v4, Lcom/cooliris/media/GridDrawManager;->m_curItem:Lcom/cooliris/media/MediaItem;

    iget-object v4, v4, Lcom/cooliris/media/MediaItem;->mScreennailUri:Ljava/lang/String;

    .line 801
    :cond_32a
    if-nez v4, :cond_58c

    .line 802
    sget-object v5, Lcom/cooliris/media/GridDrawManager;->m_curItem:Lcom/cooliris/media/MediaItem;

    iget-object v5, v5, Lcom/cooliris/media/MediaItem;->mScreennailUri:Ljava/lang/String;

    if-eqz v5, :cond_336

    .line 803
    sget-object v4, Lcom/cooliris/media/GridDrawManager;->m_curItem:Lcom/cooliris/media/MediaItem;

    iget-object v4, v4, Lcom/cooliris/media/MediaItem;->mScreennailUri:Ljava/lang/String;

    .line 810
    :cond_336
    :goto_336
    if-nez v4, :cond_5a0

    .line 811
    const-string v4, "GridDrawManager"

    const-string v5, "checkstrPath is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_33f
    :goto_33f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/cooliris/media/GridDrawManager;->mIsGif:Z

    if-eqz v4, :cond_3a2

    if-nez v25, :cond_3a2

    .line 870
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mMovie:Landroid/graphics/Movie;

    if-nez v4, :cond_71d

    const/high16 v4, 0x3f00

    cmpl-float v4, v36, v4

    if-lez v4, :cond_71d

    .line 871
    move-object/from16 v0, p0

    iget v4, v0, Lcom/cooliris/media/GridDrawManager;->mCurGifFrame:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3a2

    .line 872
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 873
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/cooliris/media/GridDrawManager;->mMovieStart:J

    sub-long/2addr v4, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/cooliris/media/GridDrawManager;->DECODING_STARTTIME_MS:J

    cmp-long v4, v4, v14

    if-ltz v4, :cond_3a2

    .line 874
    new-instance v4, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/GridDrawManager;->m_array:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/cooliris/media/GridDrawManager;->m_is:Ljava/io/InputStream;

    .line 875
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->m_is:Ljava/io/InputStream;

    invoke-static {v4}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mMovie:Landroid/graphics/Movie;

    .line 876
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->m_is:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 877
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/cooliris/media/GridDrawManager;->m_array:[B

    .line 879
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mMovie:Landroid/graphics/Movie;

    if-nez v4, :cond_6eb

    .line 880
    const-string v4, "GridDrawManager"

    const-string v5, "Decode AGIF Failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/cooliris/media/GridDrawManager;->mIsGif:Z

    .line 964
    :cond_3a2
    :goto_3a2
    const/4 v14, 0x0

    .line 965
    const/4 v15, 0x0

    .line 966
    const/16 v16, 0x0

    .line 967
    const/16 v17, 0x0

    .line 969
    if-eqz v18, :cond_3d4

    .line 970
    move-object/from16 v0, p0

    iget v4, v0, Lcom/cooliris/media/GridDrawManager;->mAGIFu:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_87b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cooliris/media/GridDrawManager;->mAGIFv:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_87b

    .line 971
    invoke-virtual/range {v18 .. v18}, Lcom/cooliris/media/Texture;->getNormalizedWidth()F

    move-result v5

    .line 972
    invoke-virtual/range {v18 .. v18}, Lcom/cooliris/media/Texture;->getNormalizedHeight()F

    move-result v4

    .line 977
    :goto_3c4
    invoke-virtual/range {v18 .. v18}, Lcom/cooliris/media/Texture;->getWidth()I

    move-result v7

    int-to-float v0, v7

    move/from16 v16, v0

    .line 978
    invoke-virtual/range {v18 .. v18}, Lcom/cooliris/media/Texture;->getHeight()I

    move-result v7

    int-to-float v0, v7

    move/from16 v17, v0

    move v15, v4

    move v14, v5

    .line 984
    :cond_3d4
    cmpl-float v4, v16, v17

    if-lez v4, :cond_888

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x5a

    rem-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_885

    const/4 v4, 0x1

    .line 986
    :goto_3e4
    if-eqz v4, :cond_3ea

    .line 987
    const/high16 v5, 0x3f80

    div-float v13, v5, v13

    .line 989
    :cond_3ea
    invoke-virtual/range {v12 .. v17}, Lcom/cooliris/media/GridQuad;->resizeQuad(FFFFF)V

    .line 990
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/cooliris/media/GridQuad;->bindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 991
    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, v10

    invoke-direct/range {v14 .. v21}, Lcom/cooliris/media/GridDrawManager;->drawDisplayItem(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;Lcom/cooliris/media/DisplayItem;Lcom/cooliris/media/Texture;ILcom/cooliris/media/Texture;F)V

    .line 993
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/cooliris/media/GridQuad;->unbindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 994
    const/4 v5, 0x0

    cmpl-float v5, v36, v5

    if-eqz v5, :cond_452

    const/high16 v5, 0x3f80

    cmpl-float v5, v36, v5

    if-eqz v5, :cond_452

    .line 996
    if-eqz v6, :cond_452

    .line 998
    mul-float v5, v35, v36

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/cooliris/media/RenderView;->setAlpha(F)V

    .line 999
    invoke-virtual {v6}, Lcom/cooliris/media/Texture;->getNormalizedWidth()F

    move-result v14

    .line 1000
    invoke-virtual {v6}, Lcom/cooliris/media/Texture;->getNormalizedHeight()F

    move-result v15

    .line 1001
    invoke-virtual {v6}, Lcom/cooliris/media/Texture;->getWidth()I

    move-result v5

    int-to-float v0, v5

    move/from16 v16, v0

    .line 1002
    invoke-virtual {v6}, Lcom/cooliris/media/Texture;->getHeight()I

    move-result v5

    int-to-float v0, v5

    move/from16 v17, v0

    .line 1003
    invoke-virtual/range {v12 .. v17}, Lcom/cooliris/media/GridQuad;->resizeQuad(FFFFF)V

    .line 1004
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/cooliris/media/GridQuad;->bindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1005
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/high16 v20, 0x3f80

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, v10

    move-object/from16 v17, v6

    invoke-direct/range {v13 .. v20}, Lcom/cooliris/media/GridDrawManager;->drawDisplayItem(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;Lcom/cooliris/media/DisplayItem;Lcom/cooliris/media/Texture;ILcom/cooliris/media/Texture;F)V

    .line 1007
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/cooliris/media/GridQuad;->unbindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1012
    :cond_452
    sget-boolean v5, Lcom/cooliris/media/Utils;->mUseXivRD:Z

    if-eqz v5, :cond_469

    if-nez v25, :cond_469

    if-nez v24, :cond_469

    .line 1013
    const-class v5, Lcom/quramsoft/xiv/XIVRegionManager;

    monitor-enter v5

    .line 1014
    :try_start_45d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cooliris/media/GridDrawManager;->mCamera:Lcom/cooliris/media/GridCamera;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1, v10, v6, v12}, Lcom/quramsoft/xiv/XIVRegionManager;->drawRegion(Ljavax/microedition/khronos/opengles/GL11;Lcom/cooliris/media/RenderView;Lcom/cooliris/media/DisplayItem;Lcom/cooliris/media/GridCamera;Lcom/cooliris/media/GridQuad;)V

    .line 1015
    monitor-exit v5
    :try_end_469
    .catchall {:try_start_45d .. :try_end_469} :catchall_898

    .line 1020
    :cond_469
    if-eqz v25, :cond_46d

    if-eqz p4, :cond_4a0

    .line 1021
    :cond_46d
    invoke-virtual {v12}, Lcom/cooliris/media/GridQuad;->getWidth()F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/cooliris/media/GridDrawManager;->mCurrentFocusItemWidth:F

    .line 1022
    invoke-virtual {v12}, Lcom/cooliris/media/GridQuad;->getHeight()F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/cooliris/media/GridDrawManager;->mCurrentFocusItemHeight:F

    .line 1023
    if-eqz v4, :cond_48f

    .line 1025
    move-object/from16 v0, p0

    iget v4, v0, Lcom/cooliris/media/GridDrawManager;->mCurrentFocusItemWidth:F

    .line 1026
    move-object/from16 v0, p0

    iget v5, v0, Lcom/cooliris/media/GridDrawManager;->mCurrentFocusItemHeight:F

    move-object/from16 v0, p0

    iput v5, v0, Lcom/cooliris/media/GridDrawManager;->mCurrentFocusItemWidth:F

    .line 1027
    move-object/from16 v0, p0

    iput v4, v0, Lcom/cooliris/media/GridDrawManager;->mCurrentFocusItemHeight:F

    .line 1031
    :cond_48f
    invoke-static {}, Lcom/quramsoft/xiv/SFUtils;->getInstance()Lcom/quramsoft/xiv/SFUtils;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/cooliris/media/GridDrawManager;->mCurrentFocusItemWidth:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/cooliris/media/GridDrawManager;->mCurrentFocusItemHeight:F

    move/from16 v0, v25

    invoke-virtual {v4, v0, v5, v6}, Lcom/quramsoft/xiv/SFUtils;->setSelectedItemAspectRatio(IFF)V

    .line 1035
    :cond_4a0
    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/cooliris/media/RenderView;->setAlpha(F)V

    .line 1036
    invoke-virtual/range {v34 .. v34}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4d4

    if-nez v25, :cond_4d4

    .line 1038
    sget-object v4, Lcom/cooliris/media/GridDrawables;->sVideoGrid:Lcom/cooliris/media/GridQuad;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/cooliris/media/GridQuad;->bindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1039
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/cooliris/media/GridDrawables;->mTextureVideo:Lcom/cooliris/media/Texture;

    move-object/from16 v16, v0

    const/16 v17, 0x7

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object v15, v10

    invoke-direct/range {v12 .. v19}, Lcom/cooliris/media/GridDrawManager;->drawDisplayItem(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;Lcom/cooliris/media/DisplayItem;Lcom/cooliris/media/Texture;ILcom/cooliris/media/Texture;F)V

    .line 1041
    sget-object v4, Lcom/cooliris/media/GridDrawables;->sVideoGrid:Lcom/cooliris/media/GridQuad;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/cooliris/media/GridQuad;->unbindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_4d4
    move v12, v8

    goto/16 :goto_bf

    .line 640
    :cond_4d7
    if-eqz v4, :cond_535

    if-nez v24, :cond_535

    .line 643
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/cooliris/media/GridDrawManager;->mTimeGap:J

    const-wide/16 v14, 0x1f4

    cmp-long v4, v6, v14

    if-gez v4, :cond_504

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cooliris/media/GridDrawManager;->mTimeGapCount:I

    const/16 v6, 0x32

    if-ge v4, v6, :cond_504

    .line 645
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v6, Lcom/cooliris/media/GridDrawManager;->sThumbnailConfig:Lcom/cooliris/media/MediaItemTexture$Config;

    invoke-virtual {v5, v4, v6}, Lcom/cooliris/media/DisplayItem;->getThumbnailImage(Landroid/content/Context;Lcom/cooliris/media/MediaItemTexture$Config;)Lcom/cooliris/media/Texture;

    move-result-object v6

    .line 648
    move-object/from16 v0, p0

    iget v4, v0, Lcom/cooliris/media/GridDrawManager;->mTimeGapCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/cooliris/media/GridDrawManager;->mTimeGapCount:I

    move-object v7, v6

    goto/16 :goto_188

    .line 649
    :cond_504
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/cooliris/media/GridDrawManager;->mTimeGap:J

    const-wide/16 v14, 0x1f4

    cmp-long v4, v6, v14

    if-gez v4, :cond_52a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cooliris/media/GridDrawManager;->mTimeGapCount:I

    const/16 v6, 0x32

    if-lt v4, v6, :cond_52a

    .line 650
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v6, Lcom/cooliris/media/GridDrawManager;->sThumbnailConfig:Lcom/cooliris/media/MediaItemTexture$Config;

    invoke-virtual {v5, v4, v6}, Lcom/cooliris/media/DisplayItem;->getThumbnailImage(Landroid/content/Context;Lcom/cooliris/media/MediaItemTexture$Config;)Lcom/cooliris/media/Texture;

    move-result-object v7

    .line 652
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/cooliris/media/DisplayItem;->getScreennailImage(Landroid/content/Context;)Lcom/cooliris/media/Texture;

    move-result-object v6

    goto/16 :goto_188

    .line 654
    :cond_52a
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/cooliris/media/DisplayItem;->getScreennailImage(Landroid/content/Context;)Lcom/cooliris/media/Texture;

    move-result-object v6

    move-object v7, v6

    .line 655
    goto/16 :goto_188

    .line 658
    :cond_535
    if-eqz v24, :cond_54b

    .line 659
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v6, Lcom/cooliris/media/GridDrawManager;->sThumbnailConfig:Lcom/cooliris/media/MediaItemTexture$Config;

    invoke-virtual {v5, v4, v6}, Lcom/cooliris/media/DisplayItem;->getThumbnailImage(Landroid/content/Context;Lcom/cooliris/media/MediaItemTexture$Config;)Lcom/cooliris/media/Texture;

    move-result-object v7

    .line 661
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/cooliris/media/DisplayItem;->getScreennailImage(Landroid/content/Context;)Lcom/cooliris/media/Texture;

    move-result-object v6

    goto/16 :goto_188

    .line 663
    :cond_54b
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v6, Lcom/cooliris/media/GridDrawManager;->sThumbnailConfig:Lcom/cooliris/media/MediaItemTexture$Config;

    invoke-virtual {v5, v4, v6}, Lcom/cooliris/media/DisplayItem;->getThumbnailImage(Landroid/content/Context;Lcom/cooliris/media/MediaItemTexture$Config;)Lcom/cooliris/media/Texture;

    move-result-object v7

    .line 665
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/cooliris/media/DisplayItem;->getScreennailImage(Landroid/content/Context;)Lcom/cooliris/media/Texture;

    move-result-object v6

    goto/16 :goto_188

    .line 674
    :cond_55f
    const/4 v4, 0x0

    goto/16 :goto_1c2

    .line 686
    :cond_562
    const/4 v4, 0x0

    goto/16 :goto_1e7

    .line 689
    :cond_565
    sget-boolean v10, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v10, :cond_56f

    .line 690
    invoke-static {v4}, Lcom/quramsoft/xiv/XIVUtils;->checkHiresImage(Lcom/cooliris/media/Texture;)Lcom/cooliris/media/Texture;

    move-result-object v4

    goto/16 :goto_1e7

    .line 692
    :cond_56f
    sget v10, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    const/high16 v14, 0x3f80

    cmpl-float v10, v10, v14

    if-lez v10, :cond_1e7

    move-object v4, v6

    .line 693
    goto/16 :goto_1e7

    :cond_57a
    move-object v6, v4

    .line 706
    goto/16 :goto_1ff

    .line 752
    :cond_57d
    if-nez v25, :cond_588

    .line 753
    iput v12, v5, Lcom/cooliris/media/DisplayItem;->mAnimatedImageTheta:F

    .line 754
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/cooliris/media/RenderView;->setAlpha(F)V

    :cond_588
    move-object v10, v5

    move v8, v12

    goto/16 :goto_29b

    .line 805
    :cond_58c
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_336

    sget-object v5, Lcom/cooliris/media/GridDrawManager;->m_curItem:Lcom/cooliris/media/MediaItem;

    iget-object v5, v5, Lcom/cooliris/media/MediaItem;->mScreennailUri:Ljava/lang/String;

    if-eqz v5, :cond_336

    .line 807
    sget-object v4, Lcom/cooliris/media/GridDrawManager;->m_curItem:Lcom/cooliris/media/MediaItem;

    iget-object v4, v4, Lcom/cooliris/media/MediaItem;->mScreennailUri:Ljava/lang/String;

    goto/16 :goto_336

    .line 812
    :cond_5a0
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5b1

    .line 813
    const-string v4, "GridDrawManager"

    const-string v5, "checkstrPath is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33f

    .line 817
    :cond_5b1
    invoke-static {v4}, Lcom/cooliris/drm/DrmChecker;->isDrm(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_610

    .line 818
    invoke-static {v4}, Lcom/cooliris/drm/DrmChecker;->hasDisplayRights(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5d2

    .line 820
    invoke-static {v4}, Lcom/cooliris/drm/DrmChecker;->getDecryptedContent(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/cooliris/media/GridDrawManager;->m_array:[B

    .line 821
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->m_array:[B

    if-eqz v4, :cond_5d2

    .line 822
    const-string v4, "QURAMAGIF"

    const-string v5, "Decrypt content successful!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_5d2
    :goto_5d2
    :try_start_5d2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->m_array:[B

    if-eqz v4, :cond_6e4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->m_array:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    const/16 v5, 0x47

    if-ne v4, v5, :cond_6e4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->m_array:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0x49

    if-ne v4, v5, :cond_6e4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->m_array:[B

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    const/16 v5, 0x46

    if-ne v4, v5, :cond_6e4

    .line 856
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/cooliris/media/GridDrawManager;->mIsGif:Z

    .line 857
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/cooliris/media/GridDrawManager;->mMovieStart:J
    :try_end_606
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5d2 .. :try_end_606} :catch_608

    goto/16 :goto_33f

    .line 861
    :catch_608
    move-exception v4

    .line 862
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/cooliris/media/GridDrawManager;->m_array:[B

    goto/16 :goto_33f

    .line 827
    :cond_610
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 829
    :try_start_614
    sget-object v5, Lcom/cooliris/media/GridDrawManager;->m_curItem:Lcom/cooliris/media/MediaItem;

    iget-object v5, v5, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    if-eqz v5, :cond_62e

    .line 830
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/cooliris/media/GridDrawManager;->m_curItem:Lcom/cooliris/media/MediaItem;

    iget-object v5, v5, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/cooliris/media/GridDrawManager;->m_is:Ljava/io/InputStream;
    :try_end_62e
    .catchall {:try_start_614 .. :try_end_62e} :catchall_6aa
    .catch Ljava/io/FileNotFoundException; {:try_start_614 .. :try_end_62e} :catch_668

    .line 838
    :cond_62e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->m_is:Ljava/io/InputStream;

    if-eqz v4, :cond_660

    .line 840
    :try_start_634
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->m_is:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/cooliris/media/GridDrawManager;->m_streamSize:I
    :try_end_640
    .catch Ljava/io/IOException; {:try_start_634 .. :try_end_640} :catch_65b

    .line 844
    :goto_640
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->m_is:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/cooliris/media/GridDrawManager;->m_streamSize:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/cooliris/media/GridDrawManager;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/cooliris/media/GridDrawManager;->m_array:[B

    .line 849
    :goto_652
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->m_is:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_5d2

    .line 841
    :catch_65b
    move-exception v4

    .line 842
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_640

    .line 846
    :cond_660
    const-string v4, "GridDrawManager"

    const-string v5, "QURAM AGIF stream is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_652

    .line 834
    :catch_668
    move-exception v4

    .line 835
    :try_start_669
    const-string v4, "GridDrawManager"

    const-string v5, "QURAM AGIF IO Exception cautch while opening stream"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_670
    .catchall {:try_start_669 .. :try_end_670} :catchall_6aa

    .line 838
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->m_is:Ljava/io/InputStream;

    if-eqz v4, :cond_6a2

    .line 840
    :try_start_676
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->m_is:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/cooliris/media/GridDrawManager;->m_streamSize:I
    :try_end_682
    .catch Ljava/io/IOException; {:try_start_676 .. :try_end_682} :catch_69d

    .line 844
    :goto_682
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->m_is:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/cooliris/media/GridDrawManager;->m_streamSize:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/cooliris/media/GridDrawManager;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/cooliris/media/GridDrawManager;->m_array:[B

    .line 849
    :goto_694
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->m_is:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_5d2

    .line 841
    :catch_69d
    move-exception v4

    .line 842
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_682

    .line 846
    :cond_6a2
    const-string v4, "GridDrawManager"

    const-string v5, "QURAM AGIF stream is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_694

    .line 838
    :catchall_6aa
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/GridDrawManager;->m_is:Ljava/io/InputStream;

    if-eqz v5, :cond_6dc

    .line 840
    :try_start_6b1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/GridDrawManager;->m_is:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/cooliris/media/GridDrawManager;->m_streamSize:I
    :try_end_6bd
    .catch Ljava/io/IOException; {:try_start_6b1 .. :try_end_6bd} :catch_6d7

    .line 844
    :goto_6bd
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/GridDrawManager;->m_is:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/cooliris/media/GridDrawManager;->m_streamSize:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/cooliris/media/GridDrawManager;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/cooliris/media/GridDrawManager;->m_array:[B

    .line 849
    :goto_6cf
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/GridDrawManager;->m_is:Ljava/io/InputStream;

    invoke-static {v5}, Lcom/cooliris/media/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    .line 841
    :catch_6d7
    move-exception v5

    .line 842
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6bd

    .line 846
    :cond_6dc
    const-string v5, "GridDrawManager"

    const-string v6, "QURAM AGIF stream is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6cf

    .line 859
    :cond_6e4
    const/4 v4, 0x0

    :try_start_6e5
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/cooliris/media/GridDrawManager;->m_array:[B
    :try_end_6e9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6e5 .. :try_end_6e9} :catch_608

    goto/16 :goto_33f

    .line 882
    :cond_6eb
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v4}, Landroid/graphics/Movie;->duration()I

    move-result v4

    if-lez v4, :cond_716

    .line 883
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/cooliris/media/GridDrawManager;->mMovieStart:J

    .line 884
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridDrawManager;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v4}, Landroid/graphics/Movie;->duration()I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/cooliris/media/GridDrawManager;->mDuration:J

    .line 885
    move-object/from16 v0, p0

    iget v4, v0, Lcom/cooliris/media/GridDrawManager;->mCurGifFrame:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/cooliris/media/GridDrawManager;->mCurGifFrame:I

    goto/16 :goto_3a2

    .line 887
    :cond_716
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/cooliris/media/GridDrawManager;->mIsGif:Z

    goto/16 :goto_3a2

    .line 891
    :cond_71d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/cooliris/media/GridDrawManager;->mCurGifFrame:I

    if-nez v4, :cond_74c

    .line 892
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 893
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/cooliris/media/GridDrawManager;->mMoviePaused:J

    .line 894
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/cooliris/media/GridDrawManager;->mMovieStart:J

    sub-long/2addr v4, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/cooliris/media/GridDrawManager;->DECODING_STARTTIME_MS:J

    cmp-long v4, v4, v14

    if-ltz v4, :cond_3a2

    .line 895
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/cooliris/media/GridDrawManager;->mMovieStart:J

    .line 896
    move-object/from16 v0, p0

    iget v4, v0, Lcom/cooliris/media/GridDrawManager;->mCurGifFrame:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/cooliris/media/GridDrawManager;->mCurGifFrame:I

    goto/16 :goto_3a2

    .line 899
    :cond_74c
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/cooliris/media/RenderView;->bind(Lcom/cooliris/media/Texture;)Z

    move-result v4

    .line 900
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/GridDrawManager;->mMovie:Landroid/graphics/Movie;

    if-eqz v5, :cond_3a2

    if-eqz v4, :cond_3a2

    .line 901
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 902
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cooliris/media/GridDrawManager;->mMovieStart:J

    move-wide/from16 v16, v0

    const-wide/16 v20, 0x0

    cmp-long v5, v16, v20

    if-nez v5, :cond_776

    .line 903
    const-wide/16 v16, 0x1

    sub-long v16, v14, v16

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/cooliris/media/GridDrawManager;->mMovieStart:J

    .line 908
    :cond_776
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cooliris/media/GridDrawManager;->mMoviePaused:J

    move-wide/from16 v16, v0

    const-wide/16 v20, 0x0

    cmp-long v5, v16, v20

    if-eqz v5, :cond_7a0

    .line 909
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cooliris/media/GridDrawManager;->mMovieStart:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cooliris/media/GridDrawManager;->mMoviePaused:J

    move-wide/from16 v20, v0

    sub-long v20, v14, v20

    add-long v16, v16, v20

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/cooliris/media/GridDrawManager;->mMovieStart:J

    .line 910
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/cooliris/media/GridDrawManager;->mMoviePaused:J

    .line 913
    :cond_7a0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cooliris/media/GridDrawManager;->mMovieStart:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/cooliris/media/GridDrawManager;->mDuration:J

    move-wide/from16 v16, v0

    rem-long v14, v14, v16

    long-to-int v5, v14

    .line 917
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/cooliris/media/GridDrawManager;->mMovie:Landroid/graphics/Movie;

    if-eqz v7, :cond_870

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/cooliris/media/GridDrawManager;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v7, v5}, Landroid/graphics/Movie;->setTime(I)Z

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_870

    .line 920
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 921
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/GridDrawManager;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v5}, Landroid/graphics/Movie;->width()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/cooliris/media/GridDrawManager;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v7}, Landroid/graphics/Movie;->height()I

    move-result v7

    invoke-static {v5, v7, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 923
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 924
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridDrawManager;->mMovie:Landroid/graphics/Movie;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v7, v15, v0}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 926
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 927
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 929
    invoke-static {v7}, Lcom/cooliris/media/Shared;->isPowerOf2(I)Z

    move-result v15

    if-eqz v15, :cond_7fd

    invoke-static {v14}, Lcom/cooliris/media/Shared;->isPowerOf2(I)Z

    move-result v15

    if-nez v15, :cond_837

    .line 930
    :cond_7fd
    invoke-static {v7}, Lcom/cooliris/media/Shared;->nextPowerOf2(I)I

    move-result v15

    .line 931
    invoke-static {v14}, Lcom/cooliris/media/Shared;->nextPowerOf2(I)I

    move-result v16

    .line 934
    :try_start_805
    move/from16 v0, v16

    invoke-static {v15, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 936
    new-instance v17, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 937
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v37

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 938
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_826
    .catch Ljava/lang/OutOfMemoryError; {:try_start_805 .. :try_end_826} :catch_861

    .line 945
    :goto_826
    int-to-float v5, v7

    int-to-float v7, v15

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iput v5, v0, Lcom/cooliris/media/GridDrawManager;->mAGIFu:F

    .line 946
    int-to-float v5, v14

    move/from16 v0, v16

    int-to-float v7, v0

    div-float/2addr v5, v7

    move-object/from16 v0, p0

    iput v5, v0, Lcom/cooliris/media/GridDrawManager;->mAGIFv:F

    move-object v5, v4

    .line 949
    :cond_837
    const/16 v4, 0xde1

    const/4 v7, 0x0

    const/4 v14, 0x0

    invoke-static {v4, v7, v5, v14}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 950
    invoke-interface/range {p2 .. p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetError()I

    move-result v4

    .line 951
    if-eqz v4, :cond_85c

    .line 952
    const-string v7, "GridDrawManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "glError!! = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_85c
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_3a2

    .line 940
    :catch_861
    move-exception v4

    .line 941
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 942
    const-string v4, "GridDrawManager"

    const-string v17, "Out of memory error!"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    goto :goto_826

    .line 956
    :cond_870
    if-nez v4, :cond_3a2

    .line 957
    const-string v4, "GridDrawManager"

    const-string v5, "bind failed : "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a2

    .line 974
    :cond_87b
    move-object/from16 v0, p0

    iget v5, v0, Lcom/cooliris/media/GridDrawManager;->mAGIFu:F

    .line 975
    move-object/from16 v0, p0

    iget v4, v0, Lcom/cooliris/media/GridDrawManager;->mAGIFv:F

    goto/16 :goto_3c4

    .line 984
    :cond_885
    const/4 v4, 0x0

    goto/16 :goto_3e4

    :cond_888
    move/from16 v0, v19

    add-int/lit16 v4, v0, 0xb4

    div-int/lit8 v4, v4, 0x5a

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_895

    const/4 v4, 0x1

    goto/16 :goto_3e4

    :cond_895
    const/4 v4, 0x0

    goto/16 :goto_3e4

    .line 1015
    :catchall_898
    move-exception v4

    :try_start_899
    monitor-exit v5
    :try_end_89a
    .catchall {:try_start_899 .. :try_end_89a} :catchall_898

    throw v4

    :cond_89b
    move-object/from16 v18, v4

    goto/16 :goto_2c2

    :cond_89f
    move v8, v12

    goto/16 :goto_29a

    :cond_8a2
    move-object v4, v6

    goto/16 :goto_241

    :cond_8a5
    move-object v7, v6

    move-object v6, v4

    goto/16 :goto_188

    :cond_8a9
    move/from16 v24, v6

    goto/16 :goto_12d

    :cond_8ad
    move/from16 v22, v4

    goto/16 :goto_8a
.end method

.method public drawThumbnails(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;I)V
    .registers 52
    .parameter "view"
    .parameter "gl"
    .parameter "state"

    .prologue
    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/GridDrawManager;->mDrawables:Lcom/cooliris/media/GridDrawables;

    move-object/from16 v24, v0

    .line 264
    .local v24, drawables:Lcom/cooliris/media/GridDrawables;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/GridDrawManager;->mDisplayList:Lcom/cooliris/media/DisplayList;

    .line 265
    .local v3, displayList:Lcom/cooliris/media/DisplayList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/GridDrawManager;->mDisplayItems:[Lcom/cooliris/media/DisplayItem;

    move-object/from16 v23, v0

    .line 266
    .local v23, displayItems:[Lcom/cooliris/media/DisplayItem;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/GridDrawManager;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v0, v5, Lcom/cooliris/media/IndexRange;->begin:I

    move/from16 v27, v0

    .line 267
    .local v27, firstBufferedVisibleSlot:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/GridDrawManager;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v0, v5, Lcom/cooliris/media/IndexRange;->end:I

    move/from16 v35, v0

    .line 268
    .local v35, lastBufferedVisibleSlot:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/GridDrawManager;->mVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v0, v5, Lcom/cooliris/media/IndexRange;->begin:I

    move/from16 v28, v0

    .line 269
    .local v28, firstVisibleSlot:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/GridDrawManager;->mVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v0, v5, Lcom/cooliris/media/IndexRange;->end:I

    move/from16 v36, v0

    .line 270
    .local v36, lastVisibleSlot:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/GridDrawManager;->mSelectedSlot:I

    move/from16 v44, v0

    .line 271
    .local v44, selectedSlotIndex:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/GridDrawManager;->mCurrentFocusSlot:I

    move/from16 v21, v0

    .line 272
    .local v21, currentFocusSlot:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/GridDrawManager;->mCurrentScaleSlot:I

    move/from16 v22, v0

    .line 273
    .local v22, currentScaleSlot:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/GridDrawManager;->mItemsDrawn:[Lcom/cooliris/media/DisplayItem;

    move-object/from16 v32, v0

    .line 274
    .local v32, itemsDrawn:[Lcom/cooliris/media/DisplayItem;
    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v32, v5

    .line 275
    const/16 v25, 0x0

    .line 276
    .local v25, drawnCounter:I
    sget-object v29, Lcom/cooliris/media/GridDrawables;->sGrid:Lcom/cooliris/media/GridQuad;

    .line 277
    .local v29, grid:Lcom/cooliris/media/GridQuad;
    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/cooliris/media/GridQuad;->bindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 278
    const/16 v40, 0x0

    .line 279
    .local v40, numTexturesQueued:I
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getContext()Landroid/content/Context;

    move-result-object v20

    .line 280
    .local v20, context:Landroid/content/Context;
    move/from16 v33, v27

    .local v33, itrSlotIndex:I
    :goto_5f
    move/from16 v0, v33

    move/from16 v1, v35

    if-gt v0, v1, :cond_2ff

    .line 281
    move/from16 v30, v33

    .line 282
    .local v30, index:I
    move/from16 v0, v30

    move/from16 v1, v28

    if-lt v0, v1, :cond_9a

    move/from16 v0, v30

    move/from16 v1, v36

    if-gt v0, v1, :cond_9a

    const/16 v42, 0x1

    .line 283
    .local v42, priority:Z
    :goto_75
    const/16 v46, 0x0

    .line 284
    .local v46, startSlotIndex:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/cooliris/media/GridDrawManager;->mCurrentScaleSlot:I

    move/from16 v0, v30

    if-ne v0, v5, :cond_9d

    const/16 v37, 0x4

    .line 286
    .local v37, maxDisplayedItemsPerSlot:I
    :goto_81
    move-object/from16 v0, p0

    iget v5, v0, Lcom/cooliris/media/GridDrawManager;->mCurrentScaleSlot:I

    move/from16 v0, v30

    if-eq v0, v5, :cond_b2

    .line 287
    add-int/lit8 v34, v37, -0x1

    .local v34, j:I
    :goto_8b
    if-ltz v34, :cond_b2

    .line 288
    sub-int v5, v30, v27

    mul-int/lit8 v5, v5, 0xc

    add-int v5, v5, v34

    aget-object v4, v23, v5

    .line 290
    .local v4, displayItem:Lcom/cooliris/media/DisplayItem;
    if-nez v4, :cond_a0

    .line 287
    :cond_97
    add-int/lit8 v34, v34, -0x1

    goto :goto_8b

    .line 282
    .end local v4           #displayItem:Lcom/cooliris/media/DisplayItem;
    .end local v34           #j:I
    .end local v37           #maxDisplayedItemsPerSlot:I
    .end local v42           #priority:Z
    .end local v46           #startSlotIndex:I
    :cond_9a
    const/16 v42, 0x0

    goto :goto_75

    .line 284
    .restart local v42       #priority:Z
    .restart local v46       #startSlotIndex:I
    :cond_9d
    const/16 v37, 0x4

    goto :goto_81

    .line 293
    .restart local v4       #displayItem:Lcom/cooliris/media/DisplayItem;
    .restart local v34       #j:I
    .restart local v37       #maxDisplayedItemsPerSlot:I
    :cond_a0
    sget-object v5, Lcom/cooliris/media/GridDrawManager;->sThumbnailConfig:Lcom/cooliris/media/MediaItemTexture$Config;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v5}, Lcom/cooliris/media/DisplayItem;->getThumbnailImage(Landroid/content/Context;Lcom/cooliris/media/MediaItemTexture$Config;)Lcom/cooliris/media/Texture;

    move-result-object v16

    .line 294
    .local v16, texture:Lcom/cooliris/media/Texture;
    if-eqz v16, :cond_97

    invoke-virtual/range {v16 .. v16}, Lcom/cooliris/media/Texture;->isLoaded()Z

    move-result v5

    if-nez v5, :cond_97

    .line 295
    move/from16 v46, v34

    .line 302
    .end local v4           #displayItem:Lcom/cooliris/media/DisplayItem;
    .end local v16           #texture:Lcom/cooliris/media/Texture;
    .end local v34           #j:I
    :cond_b2
    const/16 v34, 0x0

    .restart local v34       #j:I
    :goto_b4
    move/from16 v0, v34

    move/from16 v1, v37

    if-ge v0, v1, :cond_145

    .line 303
    move-object/from16 v0, p0

    iget v5, v0, Lcom/cooliris/media/GridDrawManager;->mCurrentScaleSlot:I

    move/from16 v0, v30

    if-ne v0, v5, :cond_d3

    rsub-int/lit8 v5, v34, 0x4

    add-int/lit8 v45, v5, -0x1

    .line 305
    .local v45, stackIndex:I
    :goto_c6
    sub-int v5, v30, v27

    mul-int/lit8 v5, v5, 0xc

    add-int v5, v5, v45

    aget-object v4, v23, v5

    .line 307
    .restart local v4       #displayItem:Lcom/cooliris/media/DisplayItem;
    if-nez v4, :cond_d6

    .line 302
    :cond_d0
    :goto_d0
    add-int/lit8 v34, v34, 0x1

    goto :goto_b4

    .end local v4           #displayItem:Lcom/cooliris/media/DisplayItem;
    .end local v45           #stackIndex:I
    :cond_d3
    move/from16 v45, v34

    .line 303
    goto :goto_c6

    .line 310
    .restart local v4       #displayItem:Lcom/cooliris/media/DisplayItem;
    .restart local v45       #stackIndex:I
    :cond_d6
    move/from16 v0, v30

    iput v0, v4, Lcom/cooliris/media/DisplayItem;->mCurrentSlotIndex:I

    .line 311
    const/4 v5, -0x1

    move/from16 v0, v44

    if-eq v0, v5, :cond_ee

    add-int/lit8 v5, v44, -0x2

    move/from16 v0, v30

    if-le v0, v5, :cond_eb

    add-int/lit8 v5, v44, 0x2

    move/from16 v0, v30

    if-lt v0, v5, :cond_ee

    .line 313
    :cond_eb
    invoke-virtual {v4}, Lcom/cooliris/media/DisplayItem;->clearScreennailImage()V

    .line 315
    :cond_ee
    sget-object v5, Lcom/cooliris/media/GridDrawManager;->sThumbnailConfig:Lcom/cooliris/media/MediaItemTexture$Config;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v5}, Lcom/cooliris/media/DisplayItem;->getThumbnailImage(Landroid/content/Context;Lcom/cooliris/media/MediaItemTexture$Config;)Lcom/cooliris/media/Texture;

    move-result-object v16

    .line 316
    .restart local v16       #texture:Lcom/cooliris/media/Texture;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/cooliris/media/GridDrawManager;->mCurrentScaleSlot:I

    move/from16 v0, v30

    if-ne v0, v5, :cond_116

    if-eqz v16, :cond_116

    invoke-virtual/range {v16 .. v16}, Lcom/cooliris/media/Texture;->isLoaded()Z

    move-result v5

    if-nez v5, :cond_116

    .line 317
    const/4 v5, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v5}, Lcom/cooliris/media/RenderView;->prime(Lcom/cooliris/media/Texture;Z)V

    .line 318
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/cooliris/media/RenderView;->bind(Lcom/cooliris/media/Texture;)Z

    goto :goto_d0

    .line 319
    :cond_116
    if-eqz v16, :cond_d0

    invoke-virtual/range {v16 .. v16}, Lcom/cooliris/media/Texture;->isLoaded()Z

    move-result v5

    if-nez v5, :cond_d0

    const/4 v5, 0x6

    move/from16 v0, v40

    if-gt v0, v5, :cond_d0

    .line 320
    invoke-virtual/range {v16 .. v16}, Lcom/cooliris/media/Texture;->isCached()Z

    move-result v31

    .line 321
    .local v31, isCached:Z
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/RenderView;->prime(Lcom/cooliris/media/Texture;Z)V

    .line 322
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/cooliris/media/RenderView;->bind(Lcom/cooliris/media/Texture;)Z

    .line 323
    if-eqz v42, :cond_d0

    if-eqz v31, :cond_d0

    move-object/from16 v0, v16

    iget v5, v0, Lcom/cooliris/media/Texture;->mState:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_d0

    .line 324
    add-int/lit8 v40, v40, 0x1

    goto :goto_d0

    .line 328
    .end local v4           #displayItem:Lcom/cooliris/media/DisplayItem;
    .end local v16           #texture:Lcom/cooliris/media/Texture;
    .end local v31           #isCached:Z
    .end local v45           #stackIndex:I
    :cond_145
    move/from16 v0, v33

    move/from16 v1, v44

    if-ne v0, v1, :cond_14f

    .line 280
    :goto_14b
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_5f

    .line 331
    :cond_14f
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/cooliris/media/GridDrawables;->mTexturePlaceholder:Lcom/cooliris/media/Texture;

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/cooliris/media/RenderView;->prime(Lcom/cooliris/media/Texture;Z)V

    .line 332
    const/4 v5, 0x1

    move/from16 v0, p3

    if-ne v0, v5, :cond_185

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/cooliris/media/GridDrawables;->mTexturePlaceholder:Lcom/cooliris/media/Texture;

    move-object/from16 v18, v0

    .line 334
    .local v18, placeholder:Lcom/cooliris/media/Texture;
    :goto_164
    const/4 v5, 0x1

    move/from16 v0, p3

    if-eq v0, v5, :cond_16e

    const/4 v5, 0x2

    move/from16 v0, p3

    if-ne v0, v5, :cond_188

    :cond_16e
    const/16 v43, 0x0

    .line 336
    .local v43, pushDown:Z
    :goto_170
    const/16 v34, 0x0

    :goto_172
    const/16 v5, 0xc

    move/from16 v0, v34

    if-ge v0, v5, :cond_24f

    .line 337
    sub-int v5, v30, v27

    mul-int/lit8 v5, v5, 0xc

    add-int v5, v5, v34

    aget-object v4, v23, v5

    .line 339
    .restart local v4       #displayItem:Lcom/cooliris/media/DisplayItem;
    if-nez v4, :cond_18b

    .line 336
    :cond_182
    :goto_182
    add-int/lit8 v34, v34, 0x1

    goto :goto_172

    .line 332
    .end local v4           #displayItem:Lcom/cooliris/media/DisplayItem;
    .end local v18           #placeholder:Lcom/cooliris/media/Texture;
    .end local v43           #pushDown:Z
    :cond_185
    const/16 v18, 0x0

    goto :goto_164

    .line 334
    .restart local v18       #placeholder:Lcom/cooliris/media/Texture;
    :cond_188
    const/16 v43, 0x1

    goto :goto_170

    .line 341
    .restart local v4       #displayItem:Lcom/cooliris/media/DisplayItem;
    .restart local v43       #pushDown:Z
    :cond_18b
    sget-object v5, Lcom/cooliris/media/GridDrawManager;->sThumbnailConfig:Lcom/cooliris/media/MediaItemTexture$Config;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v5}, Lcom/cooliris/media/DisplayItem;->getThumbnailImage(Landroid/content/Context;Lcom/cooliris/media/MediaItemTexture$Config;)Lcom/cooliris/media/Texture;

    move-result-object v16

    .line 342
    .restart local v16       #texture:Lcom/cooliris/media/Texture;
    if-eqz v16, :cond_19b

    invoke-virtual/range {v16 .. v16}, Lcom/cooliris/media/Texture;->isLoaded()Z

    move-result v5

    if-nez v5, :cond_1b6

    .line 343
    :cond_19b
    move/from16 v0, v22

    move/from16 v1, v30

    if-eq v0, v1, :cond_1b6

    .line 344
    if-nez v34, :cond_1e9

    .line 345
    iget-object v5, v4, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    iget-object v0, v5, Lcom/cooliris/media/MediaItem;->mParentMediaSet:Lcom/cooliris/media/MediaSet;

    move-object/from16 v41, v0

    .line 346
    .local v41, parentSet:Lcom/cooliris/media/MediaSet;
    if-eqz v41, :cond_1b6

    invoke-virtual/range {v41 .. v41}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_1b6

    .line 347
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/cooliris/media/DisplayList;->setAlive(Lcom/cooliris/media/DisplayItem;Z)V

    .line 354
    .end local v41           #parentSet:Lcom/cooliris/media/MediaSet;
    :cond_1b6
    :goto_1b6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/GridDrawManager;->mScaleGestureDetector:Lcom/cooliris/media/ScaleGestureDetector;

    invoke-virtual {v5}, Lcom/cooliris/media/ScaleGestureDetector;->getTopFingerDeltaX()F

    move-result v8

    .line 355
    .local v8, dx1:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/GridDrawManager;->mScaleGestureDetector:Lcom/cooliris/media/ScaleGestureDetector;

    invoke-virtual {v5}, Lcom/cooliris/media/ScaleGestureDetector;->getTopFingerDeltaY()F

    move-result v9

    .line 356
    .local v9, dy1:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/GridDrawManager;->mScaleGestureDetector:Lcom/cooliris/media/ScaleGestureDetector;

    invoke-virtual {v5}, Lcom/cooliris/media/ScaleGestureDetector;->getBottomFingerDeltaX()F

    move-result v10

    .line 357
    .local v10, dx2:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/GridDrawManager;->mScaleGestureDetector:Lcom/cooliris/media/ScaleGestureDetector;

    invoke-virtual {v5}, Lcom/cooliris/media/ScaleGestureDetector;->getBottomFingerDeltaY()F

    move-result v11

    .line 358
    .local v11, dy2:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/GridDrawManager;->mScaleGestureDetector:Lcom/cooliris/media/ScaleGestureDetector;

    invoke-virtual {v5}, Lcom/cooliris/media/ScaleGestureDetector;->getCurrentSpan()F

    move-result v7

    .line 359
    .local v7, span:F
    const/4 v5, 0x2

    move/from16 v0, p3

    if-ne v0, v5, :cond_1ee

    .line 360
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v3 .. v11}, Lcom/cooliris/media/DisplayList;->setOffset(Lcom/cooliris/media/DisplayItem;ZZFFFFF)V

    goto :goto_182

    .line 350
    .end local v7           #span:F
    .end local v8           #dx1:F
    .end local v9           #dy1:F
    .end local v10           #dx2:F
    .end local v11           #dy2:F
    :cond_1e9
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/cooliris/media/DisplayList;->setAlive(Lcom/cooliris/media/DisplayItem;Z)V

    goto :goto_1b6

    .line 362
    .restart local v7       #span:F
    .restart local v8       #dx1:F
    .restart local v9       #dy1:F
    .restart local v10       #dx2:F
    .restart local v11       #dy2:F
    :cond_1ee
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/cooliris/media/GridDrawManager;->mHoldPosition:Z

    if-nez v5, :cond_182

    .line 363
    const/4 v5, 0x1

    move/from16 v0, p3

    if-eq v0, v5, :cond_219

    .line 364
    move/from16 v0, v22

    move/from16 v1, v30

    if-ne v0, v1, :cond_206

    .line 365
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/cooliris/media/DisplayList;->setOffset(Lcom/cooliris/media/DisplayItem;ZZFFFFF)V

    goto/16 :goto_182

    .line 367
    :cond_206
    const/4 v5, -0x1

    move/from16 v0, v22

    if-eq v0, v5, :cond_212

    .line 368
    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v3 .. v11}, Lcom/cooliris/media/DisplayList;->setOffset(Lcom/cooliris/media/DisplayItem;ZZFFFFF)V

    goto/16 :goto_182

    .line 371
    :cond_212
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/cooliris/media/DisplayList;->setOffset(Lcom/cooliris/media/DisplayItem;ZZFFFFF)V

    goto/16 :goto_182

    .line 375
    :cond_219
    const/high16 v39, -0x4080

    .line 376
    .local v39, minVal:F
    const/high16 v38, 0x4080

    .line 377
    .local v38, maxVal:F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/cooliris/media/GridDrawManager;->mSpreadValue:F

    add-float v47, v39, v5

    .line 378
    .local v47, zVal:F
    move/from16 v0, v47

    move/from16 v1, v39

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Lcom/cooliris/media/FloatUtils;->clamp(FFF)F

    move-result v47

    .line 379
    invoke-static/range {v47 .. v47}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v5

    if-nez v5, :cond_239

    invoke-static/range {v47 .. v47}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_243

    .line 380
    :cond_239
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/GridDrawManager;->mCamera:Lcom/cooliris/media/GridCamera;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/cooliris/media/GridCamera;->moveZTo(F)V

    goto/16 :goto_182

    .line 382
    :cond_243
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/GridDrawManager;->mCamera:Lcom/cooliris/media/GridCamera;

    move/from16 v0, v47

    neg-float v6, v0

    invoke-virtual {v5, v6}, Lcom/cooliris/media/GridCamera;->moveZTo(F)V

    goto/16 :goto_182

    .line 388
    .end local v4           #displayItem:Lcom/cooliris/media/DisplayItem;
    .end local v7           #span:F
    .end local v8           #dx1:F
    .end local v9           #dy1:F
    .end local v10           #dx2:F
    .end local v11           #dy2:F
    .end local v16           #texture:Lcom/cooliris/media/Texture;
    .end local v38           #maxVal:F
    .end local v39           #minVal:F
    .end local v47           #zVal:F
    :cond_24f
    move/from16 v34, v46

    move/from16 v26, v25

    .end local v25           #drawnCounter:I
    .local v26, drawnCounter:I
    :goto_253
    const/4 v5, 0x4

    move/from16 v0, v34

    if-ge v0, v5, :cond_30d

    .line 389
    sub-int v5, v30, v27

    mul-int/lit8 v5, v5, 0xc

    add-int v5, v5, v34

    aget-object v4, v23, v5

    .line 391
    .restart local v4       #displayItem:Lcom/cooliris/media/DisplayItem;
    if-nez v4, :cond_266

    move/from16 v25, v26

    .line 392
    .end local v26           #drawnCounter:I
    .restart local v25       #drawnCounter:I
    goto/16 :goto_14b

    .line 394
    .end local v25           #drawnCounter:I
    .restart local v26       #drawnCounter:I
    :cond_266
    move/from16 v0, v21

    move/from16 v1, v30

    if-ne v0, v1, :cond_285

    .line 395
    const/4 v5, 0x1

    move/from16 v0, v43

    invoke-virtual {v3, v4, v5, v0}, Lcom/cooliris/media/DisplayList;->setHasFocus(Lcom/cooliris/media/DisplayItem;ZZ)V

    .line 396
    const/high16 v5, 0x3f80

    move-object/from16 v0, p0

    iput v5, v0, Lcom/cooliris/media/GridDrawManager;->mTargetFocusMixRatio:F

    .line 400
    :goto_278
    move/from16 v0, v34

    move/from16 v1, v37

    if-lt v0, v1, :cond_28c

    move/from16 v25, v26

    .line 388
    .end local v26           #drawnCounter:I
    .restart local v25       #drawnCounter:I
    :goto_280
    add-int/lit8 v34, v34, 0x1

    move/from16 v26, v25

    .end local v25           #drawnCounter:I
    .restart local v26       #drawnCounter:I
    goto :goto_253

    .line 398
    :cond_285
    const/4 v5, 0x0

    move/from16 v0, v43

    invoke-virtual {v3, v4, v5, v0}, Lcom/cooliris/media/DisplayList;->setHasFocus(Lcom/cooliris/media/DisplayItem;ZZ)V

    goto :goto_278

    .line 402
    :cond_28c
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/RenderView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/cooliris/media/GridDrawManager;->sThumbnailConfig:Lcom/cooliris/media/MediaItemTexture$Config;

    invoke-virtual {v4, v5, v6}, Lcom/cooliris/media/DisplayItem;->getThumbnailImage(Landroid/content/Context;Lcom/cooliris/media/MediaItemTexture$Config;)Lcom/cooliris/media/Texture;

    move-result-object v16

    .line 404
    .restart local v16       #texture:Lcom/cooliris/media/Texture;
    if-eqz v16, :cond_30d

    .line 405
    move-object/from16 v0, p0

    iget v5, v0, Lcom/cooliris/media/GridDrawManager;->mCurrentScaleSlot:I

    move/from16 v0, v30

    if-ne v0, v5, :cond_2a3

    .line 406
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/cooliris/media/DisplayItem;->mAlive:Z

    .line 407
    :cond_2a3
    invoke-virtual {v4}, Lcom/cooliris/media/DisplayItem;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_2af

    invoke-virtual/range {v16 .. v16}, Lcom/cooliris/media/Texture;->isLoaded()Z

    move-result v5

    if-nez v5, :cond_2be

    :cond_2af
    invoke-virtual {v4}, Lcom/cooliris/media/DisplayItem;->getStackIndex()I

    move-result v5

    const/16 v6, 0xc

    if-le v5, v6, :cond_2be

    .line 409
    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/cooliris/media/DisplayList;->setAlive(Lcom/cooliris/media/DisplayItem;Z)V

    move/from16 v25, v26

    .line 410
    .end local v26           #drawnCounter:I
    .restart local v25       #drawnCounter:I
    goto :goto_280

    .line 412
    .end local v25           #drawnCounter:I
    .restart local v26       #drawnCounter:I
    :cond_2be
    move/from16 v0, v30

    move/from16 v1, v28

    if-lt v0, v1, :cond_2ca

    move/from16 v0, v30

    move/from16 v1, v36

    if-le v0, v1, :cond_2db

    .line 413
    :cond_2ca
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/cooliris/media/RenderView;->bind(Lcom/cooliris/media/Texture;)Z

    move-result v5

    if-eqz v5, :cond_311

    .line 414
    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/cooliris/media/DisplayList;->setAlive(Lcom/cooliris/media/DisplayItem;Z)V

    move/from16 v25, v26

    .end local v26           #drawnCounter:I
    .restart local v25       #drawnCounter:I
    goto :goto_280

    .line 418
    .end local v25           #drawnCounter:I
    .restart local v26       #drawnCounter:I
    :cond_2db
    const/16 v17, 0x0

    iget v0, v4, Lcom/cooliris/media/DisplayItem;->mAnimatedPlaceholderFade:F

    move/from16 v19, v0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object v15, v4

    invoke-direct/range {v12 .. v19}, Lcom/cooliris/media/GridDrawManager;->drawDisplayItem(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;Lcom/cooliris/media/DisplayItem;Lcom/cooliris/media/Texture;ILcom/cooliris/media/Texture;F)V

    .line 424
    const/16 v5, 0x47f

    move/from16 v0, v26

    if-ge v0, v5, :cond_30d

    if-gez v26, :cond_2f7

    move/from16 v25, v26

    .line 425
    .end local v26           #drawnCounter:I
    .restart local v25       #drawnCounter:I
    goto/16 :goto_14b

    .line 428
    .end local v25           #drawnCounter:I
    .restart local v26       #drawnCounter:I
    :cond_2f7
    add-int/lit8 v25, v26, 0x1

    .end local v26           #drawnCounter:I
    .restart local v25       #drawnCounter:I
    aput-object v4, v32, v26

    .line 429
    const/4 v5, 0x0

    aput-object v5, v32, v25

    goto :goto_280

    .line 433
    .end local v4           #displayItem:Lcom/cooliris/media/DisplayItem;
    .end local v16           #texture:Lcom/cooliris/media/Texture;
    .end local v18           #placeholder:Lcom/cooliris/media/Texture;
    .end local v30           #index:I
    .end local v34           #j:I
    .end local v37           #maxDisplayedItemsPerSlot:I
    .end local v42           #priority:Z
    .end local v43           #pushDown:Z
    .end local v46           #startSlotIndex:I
    :cond_2ff
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cooliris/media/GridDrawManager;->mDrawnCounter:I

    .line 434
    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/cooliris/media/GridQuad;->unbindArrays(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 435
    return-void

    .end local v25           #drawnCounter:I
    .restart local v18       #placeholder:Lcom/cooliris/media/Texture;
    .restart local v26       #drawnCounter:I
    .restart local v30       #index:I
    .restart local v34       #j:I
    .restart local v37       #maxDisplayedItemsPerSlot:I
    .restart local v42       #priority:Z
    .restart local v43       #pushDown:Z
    .restart local v46       #startSlotIndex:I
    :cond_30d
    move/from16 v25, v26

    .end local v26           #drawnCounter:I
    .restart local v25       #drawnCounter:I
    goto/16 :goto_14b

    .end local v25           #drawnCounter:I
    .restart local v4       #displayItem:Lcom/cooliris/media/DisplayItem;
    .restart local v16       #texture:Lcom/cooliris/media/Texture;
    .restart local v26       #drawnCounter:I
    :cond_311
    move/from16 v25, v26

    .end local v26           #drawnCounter:I
    .restart local v25       #drawnCounter:I
    goto/16 :goto_280
.end method

.method public getBeginOfBufferedVisibleRange()I
    .registers 2

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/cooliris/media/GridDrawManager;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    if-nez v0, :cond_6

    .line 1495
    const/4 v0, 0x0

    .line 1497
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/cooliris/media/GridDrawManager;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v0, v0, Lcom/cooliris/media/IndexRange;->begin:I

    goto :goto_5
.end method

.method public getFocusQuadHeight()F
    .registers 2

    .prologue
    .line 442
    iget v0, p0, Lcom/cooliris/media/GridDrawManager;->mCurrentFocusItemHeight:F

    return v0
.end method

.method public getFocusQuadWidth()F
    .registers 2

    .prologue
    .line 438
    iget v0, p0, Lcom/cooliris/media/GridDrawManager;->mCurrentFocusItemWidth:F

    return v0
.end method

.method public getSelectedSlot()I
    .registers 2

    .prologue
    .line 1490
    iget v0, p0, Lcom/cooliris/media/GridDrawManager;->mSelectedSlot:I

    return v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 1478
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cooliris/media/GridDrawManager;->mMoviePaused:J

    .line 1479
    return-void
.end method

.method public prepareDraw(Lcom/cooliris/media/IndexRange;Lcom/cooliris/media/IndexRange;IIIZFLcom/cooliris/media/ScaleGestureDetector;Z)V
    .registers 10
    .parameter "bufferedVisibleRange"
    .parameter "visibleRange"
    .parameter "selectedSlot"
    .parameter "currentFocusSlot"
    .parameter "currentScaleSlot"
    .parameter "currentFocusIsPressed"
    .parameter "spreadValue"
    .parameter "scaleGestureDetector"
    .parameter "holdPosition"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/cooliris/media/GridDrawManager;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    .line 239
    iput-object p2, p0, Lcom/cooliris/media/GridDrawManager;->mVisibleRange:Lcom/cooliris/media/IndexRange;

    .line 240
    iput p3, p0, Lcom/cooliris/media/GridDrawManager;->mSelectedSlot:I

    .line 241
    iput p4, p0, Lcom/cooliris/media/GridDrawManager;->mCurrentFocusSlot:I

    .line 242
    iput-boolean p6, p0, Lcom/cooliris/media/GridDrawManager;->mCurrentFocusIsPressed:Z

    .line 243
    iput p5, p0, Lcom/cooliris/media/GridDrawManager;->mCurrentScaleSlot:I

    .line 244
    iput-object p8, p0, Lcom/cooliris/media/GridDrawManager;->mScaleGestureDetector:Lcom/cooliris/media/ScaleGestureDetector;

    .line 245
    iput p7, p0, Lcom/cooliris/media/GridDrawManager;->mSpreadValue:F

    .line 246
    iput-boolean p9, p0, Lcom/cooliris/media/GridDrawManager;->mHoldPosition:Z

    .line 247
    return-void
.end method

.method public setNewImage(Lcom/cooliris/media/MediaItem;)V
    .registers 9
    .parameter "curDispItem"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 480
    iput-object v2, p0, Lcom/cooliris/media/GridDrawManager;->mMovie:Landroid/graphics/Movie;

    .line 481
    sput-object v2, Lcom/cooliris/media/GridDrawManager;->m_curItem:Lcom/cooliris/media/MediaItem;

    .line 482
    iput-boolean v4, p0, Lcom/cooliris/media/GridDrawManager;->mCheckedGif:Z

    .line 483
    const/4 v2, -0x1

    iput v2, p0, Lcom/cooliris/media/GridDrawManager;->mIndexInDrawnArray:I

    .line 484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 485
    .local v0, current:J
    iget-wide v2, p0, Lcom/cooliris/media/GridDrawManager;->mPreviousImage:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/cooliris/media/GridDrawManager;->mTimeGap:J

    .line 486
    if-eqz p1, :cond_19

    .line 487
    iput-wide v0, p0, Lcom/cooliris/media/GridDrawManager;->mPreviousImage:J

    .line 489
    :cond_19
    iput v4, p0, Lcom/cooliris/media/GridDrawManager;->mTimeGapCount:I

    .line 492
    sget-boolean v2, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v2, :cond_2e

    .line 493
    iget-object v2, p0, Lcom/cooliris/media/GridDrawManager;->mDisplayItems:[Lcom/cooliris/media/DisplayItem;

    iget v3, p0, Lcom/cooliris/media/GridDrawManager;->mSelectedSlot:I

    invoke-virtual {p0}, Lcom/cooliris/media/GridDrawManager;->getBeginOfBufferedVisibleRange()I

    move-result v4

    const/16 v5, 0xc

    const/16 v6, 0x480

    invoke-static {v2, v3, v4, v5, v6}, Lcom/quramsoft/xiv/XIVUtils;->requestFullImage([Lcom/cooliris/media/DisplayItem;IIII)Z

    .line 498
    :cond_2e
    return-void
.end method

.method streamToBytes(Ljava/io/InputStream;I)[B
    .registers 9
    .parameter "is"
    .parameter "streamSize"

    .prologue
    .line 447
    const/4 v0, 0x0

    .line 448
    .local v0, buffer:[B
    const/4 v1, 0x0

    .line 450
    .local v1, bufferLen:I
    :try_start_2
    new-array v0, p2, [B

    .line 451
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, p2}, Ljava/io/InputStream;->read([BII)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_8} :catch_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_8} :catch_2d

    move-result v1

    .line 459
    :goto_9
    return-object v0

    .line 452
    :catch_a
    move-exception v2

    .line 453
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 454
    const-string v3, "GridDrawManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Buffer Len ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 455
    .end local v2           #e:Ljava/io/IOException;
    :catch_2d
    move-exception v2

    .line 456
    .local v2, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_9
.end method

.method public update(F)Z
    .registers 5
    .parameter "timeElapsed"

    .prologue
    const/4 v0, 0x1

    .line 250
    iget v1, p0, Lcom/cooliris/media/GridDrawManager;->mFocusMixRatio:F

    iget v2, p0, Lcom/cooliris/media/GridDrawManager;->mTargetFocusMixRatio:F

    invoke-static {v1, v2, p1}, Lcom/cooliris/media/FloatUtils;->animate(FFF)F

    move-result v1

    iput v1, p0, Lcom/cooliris/media/GridDrawManager;->mFocusMixRatio:F

    .line 251
    const/4 v1, 0x0

    iput v1, p0, Lcom/cooliris/media/GridDrawManager;->mTargetFocusMixRatio:F

    .line 252
    iget v1, p0, Lcom/cooliris/media/GridDrawManager;->mFocusMixRatio:F

    iget v2, p0, Lcom/cooliris/media/GridDrawManager;->mTargetFocusMixRatio:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/cooliris/media/GridDrawManager;->mSelectedMixRatio:Lcom/cooliris/media/FloatAnim;

    invoke-virtual {v1}, Lcom/cooliris/media/FloatAnim;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 259
    :cond_1e
    :goto_1e
    return v0

    .line 256
    :cond_1f
    iget-object v1, p0, Lcom/cooliris/media/GridDrawManager;->mMovie:Landroid/graphics/Movie;

    if-nez v1, :cond_1e

    iget-boolean v1, p0, Lcom/cooliris/media/GridDrawManager;->mCheckedGif:Z

    if-nez v1, :cond_1e

    iget-boolean v1, p0, Lcom/cooliris/media/GridDrawManager;->mIsGif:Z

    if-nez v1, :cond_1e

    .line 259
    const/4 v0, 0x0

    goto :goto_1e
.end method
