.class public final Lcom/cooliris/media/GridLayer;
.super Lcom/cooliris/media/RootLayer;
.source "GridLayer.java"

# interfaces
.implements Lcom/cooliris/media/MediaFeed$Listener;
.implements Lcom/cooliris/media/TimeBar$Listener;


# static fields
.field public static final MULTIPICK_THREAD:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private static mDeltaAnchorPosition:Lcom/cooliris/media/Vector3f;

.field private static final mDeltaAnchorPositionUncommited:Lcom/cooliris/media/Vector3f;

.field private static final mDisplayItems:[Lcom/cooliris/media/DisplayItem;

.field private static final mDisplayList:Lcom/cooliris/media/DisplayList;

.field private static final mDisplaySlots:[Lcom/cooliris/media/DisplaySlot;

.field static mMyMagazineID:I

.field private static final mTempList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mTempVec:Lcom/cooliris/media/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cooliris/media/Pool",
            "<",
            "Lcom/cooliris/media/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field private static mTempVecAlt:Lcom/cooliris/media/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cooliris/media/Pool",
            "<",
            "Lcom/cooliris/media/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field private static mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final mZoomingDrawable:[I

.field private static final sfullScreenLayoutInterface:Lcom/cooliris/media/LayoutInterface;

.field private static threadBlocked:Z


# instance fields
.field private final MultiPickHandler:Landroid/os/Handler;

.field private bKeyLongPress:Z

.field private final mBackground:Lcom/cooliris/media/BackgroundLayer;

.field private final mBoundaryLayer:Lcom/cooliris/media/BoundaryLayer;

.field private final mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

.field private final mCamera:Lcom/cooliris/media/GridCamera;

.field private final mCameraManager:Lcom/cooliris/media/GridCameraManager;

.field private final mCompleteRange:Lcom/cooliris/media/IndexRange;

.field private mContext:Landroid/content/Context;

.field private mCurrentExpandedSlot:I

.field private mCurrentFocusItemHeight:F

.field private mCurrentFocusItemWidth:F

.field private final mDrawManager:Lcom/cooliris/media/GridDrawManager;

.field private final mDrawables:Lcom/cooliris/media/GridDrawables;

.field private mEndUpdateAnimation:Z

.field private mFeedAboutToChange:Z

.field private mFeedChanged:Z

.field private mFirstFullScreenDraw:Z

.field private mFocusSlot:I

.field private mFramesDirty:I

.field private final mHud:Lcom/cooliris/media/HudLayer;

.field private mImgView:Landroid/widget/ImageView;

.field private mInAlbum:Z

.field private final mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

.field mIsDuplicatedDrmPopup:Z

.field private final mLayoutInterface:Lcom/cooliris/media/LayoutInterface;

.field private mLocationFilter:Z

.field private final mMarkedBucketList:Lcom/cooliris/media/MediaBucketList;

.field private mMediaFeed:Lcom/cooliris/media/MediaFeed;

.field private mMotionAnimationHandler:Landroid/os/Handler;

.field private mMotionAnimationIndex:I

.field private mMotionDialog:Z

.field private mMotionDialogShow:Landroid/content/DialogInterface;

.field private final mMotionInfoDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mMultiplePickIntent:Z

.field private mNoDeleteMode:Z

.field private mPerformingLayoutChange:Z

.field private mPickIntent:Z

.field private final mPreviousDataRange:Lcom/cooliris/media/IndexRange;

.field private mRequestFocusContentUri:Ljava/lang/String;

.field private mSelectedAlpha:F

.field private final mSelectedBucketList:Lcom/cooliris/media/MediaBucketList;

.field private mSlideshowMode:Z

.field private mStartMemoryRange:I

.field private mState:I

.field private mStateChangeToFullScreen:Z

.field private mTargetAlpha:F

.field private mTimeElapsedSinceGridViewReady:F

.field private mTimeElapsedSinceStackViewReady:F

.field private mTimeElapsedSinceTransition:F

.field private mTimeElapsedSinceView:F

.field private mView:Lcom/cooliris/media/RenderView;

.field private mViewIntent:Z

.field private final mVisibleRange:Lcom/cooliris/media/IndexRange;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mZoomValue:F

.field public mbFirstDecode:Z

.field public uriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/16 v5, 0x80

    const/4 v1, 0x0

    .line 119
    new-array v2, v5, [Lcom/cooliris/media/Vector3f;

    .line 120
    array-length v3, v2

    move v0, v1

    .line 121
    :goto_7
    if-ge v0, v3, :cond_13

    .line 122
    new-instance v4, Lcom/cooliris/media/Vector3f;

    invoke-direct {v4}, Lcom/cooliris/media/Vector3f;-><init>()V

    aput-object v4, v2, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 124
    :cond_13
    new-array v3, v5, [Lcom/cooliris/media/Vector3f;

    .line 125
    array-length v4, v3

    move v0, v1

    .line 126
    :goto_17
    if-ge v0, v4, :cond_23

    .line 127
    new-instance v5, Lcom/cooliris/media/Vector3f;

    invoke-direct {v5}, Lcom/cooliris/media/Vector3f;-><init>()V

    aput-object v5, v3, v0

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 129
    :cond_23
    new-instance v0, Lcom/cooliris/media/Pool;

    invoke-direct {v0, v2}, Lcom/cooliris/media/Pool;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lcom/cooliris/media/GridLayer;->mTempVec:Lcom/cooliris/media/Pool;

    .line 130
    new-instance v0, Lcom/cooliris/media/Pool;

    invoke-direct {v0, v3}, Lcom/cooliris/media/Pool;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lcom/cooliris/media/GridLayer;->mTempVecAlt:Lcom/cooliris/media/Pool;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/cooliris/media/GridLayer;->mTempList:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Lcom/cooliris/media/Vector3f;

    invoke-direct {v0}, Lcom/cooliris/media/Vector3f;-><init>()V

    sput-object v0, Lcom/cooliris/media/GridLayer;->mDeltaAnchorPositionUncommited:Lcom/cooliris/media/Vector3f;

    .line 139
    new-instance v0, Lcom/cooliris/media/Vector3f;

    invoke-direct {v0}, Lcom/cooliris/media/Vector3f;-><init>()V

    sput-object v0, Lcom/cooliris/media/GridLayer;->mDeltaAnchorPosition:Lcom/cooliris/media/Vector3f;

    .line 164
    new-instance v0, Lcom/cooliris/media/GridLayoutInterface;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/cooliris/media/GridLayoutInterface;-><init>(I)V

    sput-object v0, Lcom/cooliris/media/GridLayer;->sfullScreenLayoutInterface:Lcom/cooliris/media/LayoutInterface;

    .line 172
    new-instance v0, Lcom/cooliris/media/DisplayList;

    invoke-direct {v0}, Lcom/cooliris/media/DisplayList;-><init>()V

    sput-object v0, Lcom/cooliris/media/GridLayer;->mDisplayList:Lcom/cooliris/media/DisplayList;

    .line 174
    const/16 v0, 0x480

    new-array v0, v0, [Lcom/cooliris/media/DisplayItem;

    sput-object v0, Lcom/cooliris/media/GridLayer;->mDisplayItems:[Lcom/cooliris/media/DisplayItem;

    .line 176
    const/16 v0, 0x60

    new-array v0, v0, [Lcom/cooliris/media/DisplaySlot;

    sput-object v0, Lcom/cooliris/media/GridLayer;->mDisplaySlots:[Lcom/cooliris/media/DisplaySlot;

    .line 239
    const/4 v0, -0x1

    sput v0, Lcom/cooliris/media/GridLayer;->mMyMagazineID:I

    .line 2553
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_76

    sput-object v0, Lcom/cooliris/media/GridLayer;->mZoomingDrawable:[I

    .line 2877
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/cooliris/media/GridLayer;->MULTIPICK_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2879
    sput-boolean v1, Lcom/cooliris/media/GridLayer;->threadBlocked:Z

    return-void

    .line 2553
    :array_76
    .array-data 0x4
        0x5bt 0x0t 0x2t 0x7ft
        0x5ct 0x0t 0x2t 0x7ft
        0x5dt 0x0t 0x2t 0x7ft
        0x5et 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/cooliris/media/LayoutInterface;Lcom/cooliris/media/RenderView;)V
    .registers 21
    .parameter "context"
    .parameter "itemWidth"
    .parameter "itemHeight"
    .parameter "layoutInterface"
    .parameter "view"

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/cooliris/media/RootLayer;-><init>()V

    .line 100
    new-instance v2, Lcom/cooliris/media/IndexRange;

    invoke-direct {v2}, Lcom/cooliris/media/IndexRange;-><init>()V

    iput-object v2, p0, Lcom/cooliris/media/GridLayer;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    .line 102
    new-instance v2, Lcom/cooliris/media/IndexRange;

    invoke-direct {v2}, Lcom/cooliris/media/IndexRange;-><init>()V

    iput-object v2, p0, Lcom/cooliris/media/GridLayer;->mVisibleRange:Lcom/cooliris/media/IndexRange;

    .line 104
    new-instance v2, Lcom/cooliris/media/IndexRange;

    invoke-direct {v2}, Lcom/cooliris/media/IndexRange;-><init>()V

    iput-object v2, p0, Lcom/cooliris/media/GridLayer;->mPreviousDataRange:Lcom/cooliris/media/IndexRange;

    .line 106
    new-instance v2, Lcom/cooliris/media/IndexRange;

    invoke-direct {v2}, Lcom/cooliris/media/IndexRange;-><init>()V

    iput-object v2, p0, Lcom/cooliris/media/GridLayer;->mCompleteRange:Lcom/cooliris/media/IndexRange;

    .line 112
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/cooliris/media/GridLayer;->bKeyLongPress:Z

    .line 144
    const/4 v2, 0x0

    iput v2, p0, Lcom/cooliris/media/GridLayer;->mSelectedAlpha:F

    .line 146
    const/4 v2, 0x0

    iput v2, p0, Lcom/cooliris/media/GridLayer;->mTargetAlpha:F

    .line 168
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/cooliris/media/GridLayer;->mInAlbum:Z

    .line 186
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/cooliris/media/GridLayer;->mZoomValue:F

    .line 188
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/cooliris/media/GridLayer;->mCurrentFocusItemWidth:F

    .line 190
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/cooliris/media/GridLayer;->mCurrentFocusItemHeight:F

    .line 192
    const/4 v2, 0x0

    iput v2, p0, Lcom/cooliris/media/GridLayer;->mTimeElapsedSinceGridViewReady:F

    .line 196
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/cooliris/media/GridLayer;->mNoDeleteMode:Z

    .line 200
    new-instance v2, Lcom/cooliris/media/MediaBucketList;

    invoke-direct {v2}, Lcom/cooliris/media/MediaBucketList;-><init>()V

    iput-object v2, p0, Lcom/cooliris/media/GridLayer;->mSelectedBucketList:Lcom/cooliris/media/MediaBucketList;

    .line 202
    new-instance v2, Lcom/cooliris/media/MediaBucketList;

    invoke-direct {v2}, Lcom/cooliris/media/MediaBucketList;-><init>()V

    iput-object v2, p0, Lcom/cooliris/media/GridLayer;->mMarkedBucketList:Lcom/cooliris/media/MediaBucketList;

    .line 214
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/cooliris/media/GridLayer;->mViewIntent:Z

    .line 226
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/cooliris/media/GridLayer;->mStateChangeToFullScreen:Z

    .line 228
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/cooliris/media/GridLayer;->mFirstFullScreenDraw:Z

    .line 230
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/cooliris/media/GridLayer;->mbFirstDecode:Z

    .line 237
    const/4 v2, -0x1

    iput v2, p0, Lcom/cooliris/media/GridLayer;->mFocusSlot:I

    .line 250
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/cooliris/media/GridLayer;->uriList:Ljava/util/ArrayList;

    .line 252
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/cooliris/media/GridLayer;->mIsDuplicatedDrmPopup:Z

    .line 2582
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/cooliris/media/GridLayer;->mEndUpdateAnimation:Z

    .line 2614
    new-instance v2, Lcom/cooliris/media/GridLayer$9;

    invoke-direct {v2, p0}, Lcom/cooliris/media/GridLayer$9;-><init>(Lcom/cooliris/media/GridLayer;)V

    iput-object v2, p0, Lcom/cooliris/media/GridLayer;->mMotionInfoDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 2841
    new-instance v2, Lcom/cooliris/media/GridLayer$23;

    invoke-direct {v2, p0}, Lcom/cooliris/media/GridLayer$23;-><init>(Lcom/cooliris/media/GridLayer;)V

    iput-object v2, p0, Lcom/cooliris/media/GridLayer;->MultiPickHandler:Landroid/os/Handler;

    .line 259
    new-instance v2, Lcom/cooliris/media/BackgroundLayer;

    invoke-direct {v2, p0}, Lcom/cooliris/media/BackgroundLayer;-><init>(Lcom/cooliris/media/GridLayer;)V

    iput-object v2, p0, Lcom/cooliris/media/GridLayer;->mBackground:Lcom/cooliris/media/BackgroundLayer;

    .line 260
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    .line 261
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/cooliris/media/GridLayer;->mView:Lcom/cooliris/media/RenderView;

    .line 263
    const/16 v2, 0x80

    new-array v13, v2, [Lcom/cooliris/media/Vector3f;

    .line 264
    .local v13, vectorPool:[Lcom/cooliris/media/Vector3f;
    array-length v11, v13

    .line 265
    .local v11, length:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_8a
    if-ge v10, v11, :cond_96

    .line 266
    new-instance v2, Lcom/cooliris/media/Vector3f;

    invoke-direct {v2}, Lcom/cooliris/media/Vector3f;-><init>()V

    aput-object v2, v13, v10

    .line 265
    add-int/lit8 v10, v10, 0x1

    goto :goto_8a

    .line 268
    :cond_96
    const/16 v2, 0x80

    new-array v14, v2, [Lcom/cooliris/media/Vector3f;

    .line 269
    .local v14, vectorPoolRenderThread:[Lcom/cooliris/media/Vector3f;
    array-length v11, v14

    .line 270
    const/4 v10, 0x0

    :goto_9c
    if-ge v10, v11, :cond_a8

    .line 271
    new-instance v2, Lcom/cooliris/media/Vector3f;

    invoke-direct {v2}, Lcom/cooliris/media/Vector3f;-><init>()V

    aput-object v2, v14, v10

    .line 270
    add-int/lit8 v10, v10, 0x1

    goto :goto_9c

    .line 273
    :cond_a8
    new-instance v2, Lcom/cooliris/media/Pool;

    invoke-direct {v2, v13}, Lcom/cooliris/media/Pool;-><init>([Ljava/lang/Object;)V

    sput-object v2, Lcom/cooliris/media/GridLayer;->mTempVec:Lcom/cooliris/media/Pool;

    .line 274
    new-instance v2, Lcom/cooliris/media/Pool;

    invoke-direct {v2, v14}, Lcom/cooliris/media/Pool;-><init>([Ljava/lang/Object;)V

    sput-object v2, Lcom/cooliris/media/GridLayer;->mTempVecAlt:Lcom/cooliris/media/Pool;

    .line 276
    sget-object v9, Lcom/cooliris/media/GridLayer;->mDisplaySlots:[Lcom/cooliris/media/DisplaySlot;

    .line 277
    .local v9, displaySlots:[Lcom/cooliris/media/DisplaySlot;
    const/4 v10, 0x0

    :goto_b9
    const/16 v2, 0x60

    if-ge v10, v2, :cond_c7

    .line 278
    new-instance v12, Lcom/cooliris/media/DisplaySlot;

    invoke-direct {v12}, Lcom/cooliris/media/DisplaySlot;-><init>()V

    .line 279
    .local v12, slot:Lcom/cooliris/media/DisplaySlot;
    aput-object v12, v9, v10

    .line 277
    add-int/lit8 v10, v10, 0x1

    goto :goto_b9

    .line 281
    .end local v12           #slot:Lcom/cooliris/media/DisplaySlot;
    :cond_c7
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/cooliris/media/GridLayer;->mLayoutInterface:Lcom/cooliris/media/LayoutInterface;

    .line 282
    new-instance v2, Lcom/cooliris/media/GridCamera;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/cooliris/media/GridCamera;-><init>(IIII)V

    iput-object v2, p0, Lcom/cooliris/media/GridLayer;->mCamera:Lcom/cooliris/media/GridCamera;

    .line 283
    new-instance v2, Lcom/cooliris/media/GridDrawables;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v2, v0, v1}, Lcom/cooliris/media/GridDrawables;-><init>(II)V

    iput-object v2, p0, Lcom/cooliris/media/GridLayer;->mDrawables:Lcom/cooliris/media/GridDrawables;

    .line 284
    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/cooliris/media/IndexRange;->set(II)V

    .line 285
    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mVisibleRange:Lcom/cooliris/media/IndexRange;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/cooliris/media/IndexRange;->set(II)V

    .line 286
    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mCompleteRange:Lcom/cooliris/media/IndexRange;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/cooliris/media/IndexRange;->set(II)V

    .line 287
    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mPreviousDataRange:Lcom/cooliris/media/IndexRange;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/cooliris/media/IndexRange;->set(II)V

    .line 288
    sget-object v2, Lcom/cooliris/media/GridLayer;->mDeltaAnchorPosition:Lcom/cooliris/media/Vector3f;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/cooliris/media/Vector3f;->set(FFF)V

    .line 289
    sget-object v2, Lcom/cooliris/media/GridLayer;->mDeltaAnchorPositionUncommited:Lcom/cooliris/media/Vector3f;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/cooliris/media/Vector3f;->set(FFF)V

    .line 290
    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mSelectedBucketList:Lcom/cooliris/media/MediaBucketList;

    invoke-virtual {v2}, Lcom/cooliris/media/MediaBucketList;->clear()V

    .line 292
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/cooliris/media/GridLayer;->mVisibleItems:Ljava/util/ArrayList;

    .line 293
    new-instance v2, Lcom/cooliris/media/HudLayer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/cooliris/media/HudLayer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    .line 294
    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/cooliris/media/HudLayer;->setContext(Landroid/content/Context;)V

    .line 295
    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v2, p0}, Lcom/cooliris/media/HudLayer;->setGridLayer(Lcom/cooliris/media/GridLayer;)V

    .line 296
    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v2}, Lcom/cooliris/media/HudLayer;->getPathBar()Lcom/cooliris/media/PathBarLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cooliris/media/PathBarLayer;->clear()V

    .line 297
    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v2, p0}, Lcom/cooliris/media/HudLayer;->setGridLayer(Lcom/cooliris/media/GridLayer;)V

    .line 298
    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v2}, Lcom/cooliris/media/HudLayer;->getTimeBar()Lcom/cooliris/media/TimeBar;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/cooliris/media/TimeBar;->setListener(Lcom/cooliris/media/TimeBar$Listener;)V

    .line 299
    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v2}, Lcom/cooliris/media/HudLayer;->getPathBar()Lcom/cooliris/media/PathBarLayer;

    move-result-object v2

    sget-object v3, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v3, 0x7f020048

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const/high16 v5, 0x7f06

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cooliris/media/GridLayer$1;

    invoke-direct {v5, p0}, Lcom/cooliris/media/GridLayer$1;-><init>(Lcom/cooliris/media/GridLayer;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/cooliris/media/PathBarLayer;->pushLabel(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 315
    new-instance v2, Lcom/cooliris/media/BoundaryLayer;

    iget-object v3, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/cooliris/media/BoundaryLayer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cooliris/media/GridLayer;->mBoundaryLayer:Lcom/cooliris/media/BoundaryLayer;

    .line 317
    new-instance v2, Lcom/cooliris/media/GridCameraManager;

    iget-object v3, p0, Lcom/cooliris/media/GridLayer;->mCamera:Lcom/cooliris/media/GridCamera;

    invoke-direct {v2, v3}, Lcom/cooliris/media/GridCameraManager;-><init>(Lcom/cooliris/media/GridCamera;)V

    iput-object v2, p0, Lcom/cooliris/media/GridLayer;->mCameraManager:Lcom/cooliris/media/GridCameraManager;

    .line 318
    new-instance v2, Lcom/cooliris/media/GridDrawManager;

    iget-object v4, p0, Lcom/cooliris/media/GridLayer;->mCamera:Lcom/cooliris/media/GridCamera;

    iget-object v5, p0, Lcom/cooliris/media/GridLayer;->mDrawables:Lcom/cooliris/media/GridDrawables;

    sget-object v6, Lcom/cooliris/media/GridLayer;->mDisplayList:Lcom/cooliris/media/DisplayList;

    sget-object v7, Lcom/cooliris/media/GridLayer;->mDisplayItems:[Lcom/cooliris/media/DisplayItem;

    sget-object v8, Lcom/cooliris/media/GridLayer;->mDisplaySlots:[Lcom/cooliris/media/DisplaySlot;

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/cooliris/media/GridDrawManager;-><init>(Landroid/content/Context;Lcom/cooliris/media/GridCamera;Lcom/cooliris/media/GridDrawables;Lcom/cooliris/media/DisplayList;[Lcom/cooliris/media/DisplayItem;[Lcom/cooliris/media/DisplaySlot;)V

    iput-object v2, p0, Lcom/cooliris/media/GridLayer;->mDrawManager:Lcom/cooliris/media/GridDrawManager;

    .line 320
    new-instance v2, Lcom/cooliris/media/GridInputProcessor;

    iget-object v4, p0, Lcom/cooliris/media/GridLayer;->mCamera:Lcom/cooliris/media/GridCamera;

    iget-object v6, p0, Lcom/cooliris/media/GridLayer;->mView:Lcom/cooliris/media/RenderView;

    sget-object v7, Lcom/cooliris/media/GridLayer;->mTempVec:Lcom/cooliris/media/Pool;

    sget-object v8, Lcom/cooliris/media/GridLayer;->mDisplayItems:[Lcom/cooliris/media/DisplayItem;

    move-object/from16 v3, p1

    move-object v5, p0

    invoke-direct/range {v2 .. v8}, Lcom/cooliris/media/GridInputProcessor;-><init>(Landroid/content/Context;Lcom/cooliris/media/GridCamera;Lcom/cooliris/media/GridLayer;Lcom/cooliris/media/RenderView;Lcom/cooliris/media/Pool;[Lcom/cooliris/media/DisplayItem;)V

    iput-object v2, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    .line 322
    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mCameraManager:Lcom/cooliris/media/GridCameraManager;

    invoke-virtual {v2, p0}, Lcom/cooliris/media/GridCameraManager;->setLayer(Lcom/cooliris/media/GridLayer;)V

    .line 323
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/cooliris/media/GridLayer;->setState(I)V

    .line 324
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/cooliris/media/GridLayer;->mMotionDialog:Z

    .line 325
    return-void
.end method

.method static synthetic access$000(Lcom/cooliris/media/GridLayer;)Lcom/cooliris/media/HudLayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cooliris/media/GridLayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/cooliris/media/GridLayer;->mFeedAboutToChange:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/cooliris/media/GridLayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/cooliris/media/GridLayer;->mMotionDialog:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/cooliris/media/GridLayer;)Lcom/cooliris/media/MediaBucketList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mSelectedBucketList:Lcom/cooliris/media/MediaBucketList;

    return-object v0
.end method

.method static synthetic access$1202(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    sput-boolean p0, Lcom/cooliris/media/GridLayer;->threadBlocked:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/cooliris/media/GridLayer;)Lcom/cooliris/media/MediaFeed;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/cooliris/media/GridLayer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/cooliris/media/GridLayer;->mFocusSlot:I

    return v0
.end method

.method static synthetic access$1500(Lcom/cooliris/media/GridLayer;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->MultiPickHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cooliris/media/GridLayer;)Lcom/cooliris/media/GridInputProcessor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/cooliris/media/GridLayer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/cooliris/media/GridLayer;->mState:I

    return v0
.end method

.method static synthetic access$400(Lcom/cooliris/media/GridLayer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/cooliris/media/GridLayer;->mEndUpdateAnimation:Z

    return v0
.end method

.method static synthetic access$402(Lcom/cooliris/media/GridLayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/cooliris/media/GridLayer;->mEndUpdateAnimation:Z

    return p1
.end method

.method static synthetic access$500(Lcom/cooliris/media/GridLayer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/cooliris/media/GridLayer;->mMotionAnimationIndex:I

    return v0
.end method

.method static synthetic access$600(Lcom/cooliris/media/GridLayer;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/cooliris/media/GridLayer;->updateAnimation(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/cooliris/media/GridLayer;)Landroid/content/DialogInterface;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMotionDialogShow:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$702(Lcom/cooliris/media/GridLayer;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/cooliris/media/GridLayer;->mMotionDialogShow:Landroid/content/DialogInterface;

    return-object p1
.end method

.method static synthetic access$800(Lcom/cooliris/media/GridLayer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/cooliris/media/GridLayer;->createMotionAnimationHander()V

    return-void
.end method

.method static synthetic access$900(Lcom/cooliris/media/GridLayer;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private computeVisibleItems()V
    .registers 26

    .prologue
    .line 917
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/cooliris/media/GridLayer;->mFeedAboutToChange:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/cooliris/media/GridLayer;->mPerformingLayoutChange:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    .line 1099
    :cond_e
    :goto_e
    return-void

    .line 920
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/cooliris/media/GridLayer;->computeVisibleRange()V

    .line 921
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v2, v2, Lcom/cooliris/media/IndexRange;->begin:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/GridLayer;->mPreviousDataRange:Lcom/cooliris/media/IndexRange;

    iget v3, v3, Lcom/cooliris/media/IndexRange;->begin:I

    sub-int/2addr v2, v3

    .line 922
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/GridLayer;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v3, v3, Lcom/cooliris/media/IndexRange;->end:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridLayer;->mPreviousDataRange:Lcom/cooliris/media/IndexRange;

    iget v4, v4, Lcom/cooliris/media/IndexRange;->end:I

    sub-int/2addr v3, v4

    .line 923
    if-nez v2, :cond_30

    if-eqz v3, :cond_e

    .line 928
    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v8, v2, Lcom/cooliris/media/IndexRange;->begin:I

    .line 929
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v9, v2, Lcom/cooliris/media/IndexRange;->end:I

    .line 930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer;->mPreviousDataRange:Lcom/cooliris/media/IndexRange;

    iput v8, v2, Lcom/cooliris/media/IndexRange;->begin:I

    .line 931
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer;->mPreviousDataRange:Lcom/cooliris/media/IndexRange;

    iput v9, v2, Lcom/cooliris/media/IndexRange;->end:I

    .line 933
    sget-object v10, Lcom/cooliris/media/GridLayer;->mTempVec:Lcom/cooliris/media/Pool;

    .line 934
    invoke-virtual {v10}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/Vector3f;

    .line 935
    invoke-virtual {v10}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cooliris/media/Vector3f;

    .line 937
    :try_start_56
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    .line 938
    sget-object v12, Lcom/cooliris/media/GridLayer;->mDisplayList:Lcom/cooliris/media/DisplayList;

    .line 939
    sget-object v13, Lcom/cooliris/media/GridLayer;->mDisplayItems:[Lcom/cooliris/media/DisplayItem;

    .line 940
    sget-object v14, Lcom/cooliris/media/GridLayer;->mDisplaySlots:[Lcom/cooliris/media/DisplaySlot;

    .line 941
    array-length v15, v13

    .line 942
    array-length v0, v14

    move/from16 v16, v0

    .line 943
    sget-object v4, Lcom/cooliris/media/GridLayer;->mVisibleItems:Ljava/util/ArrayList;

    .line 944
    sget-object v4, Lcom/cooliris/media/GridLayer;->mDeltaAnchorPosition:Lcom/cooliris/media/Vector3f;

    invoke-virtual {v3, v4}, Lcom/cooliris/media/Vector3f;->set(Lcom/cooliris/media/Vector3f;)V

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/GridLayer;->mLayoutInterface:Lcom/cooliris/media/LayoutInterface;

    move-object/from16 v17, v0

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/GridLayer;->mCamera:Lcom/cooliris/media/GridCamera;

    move-object/from16 v18, v0

    move v7, v8

    .line 947
    :goto_78
    if-gt v7, v9, :cond_22f

    .line 948
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v7, v0, v1, v3, v2}, Lcom/cooliris/media/GridCameraManager;->getSlotPositionForSlotIndex(ILcom/cooliris/media/GridCamera;Lcom/cooliris/media/LayoutInterface;Lcom/cooliris/media/Vector3f;Lcom/cooliris/media/Vector3f;)V

    .line 950
    invoke-virtual {v11, v7}, Lcom/cooliris/media/MediaFeed;->getSetForSlot(I)Lcom/cooliris/media/MediaSet;

    move-result-object v4

    .line 952
    sub-int v5, v7, v8

    .line 954
    if-eqz v4, :cond_22a

    if-ltz v5, :cond_22a

    move/from16 v0, v16

    if-ge v5, v0, :cond_22a

    .line 955
    invoke-virtual {v4}, Lcom/cooliris/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v19

    .line 956
    aget-object v5, v14, v5

    invoke-virtual {v5, v4}, Lcom/cooliris/media/DisplaySlot;->setMediaSet(Lcom/cooliris/media/MediaSet;)V

    .line 957
    sget-object v20, Lcom/cooliris/media/GridLayer;->mTempList:Ljava/util/ArrayList;

    .line 958
    move-object/from16 v0, p0

    iget v5, v0, Lcom/cooliris/media/GridLayer;->mTimeElapsedSinceTransition:F

    const/high16 v6, 0x3f80

    cmpg-float v5, v5, v6

    if-gez v5, :cond_a4

    .line 971
    :cond_a4
    invoke-virtual {v4}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v21

    .line 972
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 974
    const/16 v4, 0xc

    move/from16 v0, v22

    if-ge v0, v4, :cond_df

    .line 975
    rsub-int/lit8 v5, v22, 0xc

    .line 976
    const/4 v4, 0x0

    move v6, v4

    :goto_b6
    move/from16 v0, v21

    if-ge v6, v0, :cond_df

    .line 977
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cooliris/media/MediaItem;

    .line 978
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/GridLayer;->mTimeElapsedSinceTransition:F

    move/from16 v23, v0

    const/high16 v24, 0x3f80

    cmpl-float v23, v23, v24

    if-gez v23, :cond_d6

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_fc

    .line 980
    :cond_d6
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    add-int/lit8 v4, v5, -0x1

    if-nez v4, :cond_fd

    .line 987
    :cond_df
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 988
    sub-int v4, v7, v8

    mul-int/lit8 v19, v4, 0xc

    .line 989
    const/4 v4, 0x0

    move v6, v4

    :goto_e9
    if-ge v6, v5, :cond_ef

    .line 990
    add-int v4, v19, v6

    if-lt v4, v15, :cond_102

    :cond_ef
    move v4, v5

    .line 1037
    :goto_f0
    const/16 v5, 0xc

    if-ge v4, v5, :cond_227

    .line 1038
    add-int v5, v19, v4

    const/4 v6, 0x0

    aput-object v6, v13, v5

    .line 1037
    add-int/lit8 v4, v4, 0x1

    goto :goto_f0

    :cond_fc
    move v4, v5

    .line 976
    :cond_fd
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v4

    goto :goto_b6

    .line 993
    :cond_102
    move/from16 v0, v21

    if-lt v6, v0, :cond_110

    .line 994
    add-int v4, v19, v6

    const/16 v23, 0x0

    aput-object v23, v13, v4

    .line 989
    :cond_10c
    :goto_10c
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_e9

    .line 996
    :cond_110
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cooliris/media/MediaItem;

    .line 997
    if-eqz v4, :cond_10c

    .line 998
    invoke-virtual {v12, v4}, Lcom/cooliris/media/DisplayList;->get(Lcom/cooliris/media/MediaItem;)Lcom/cooliris/media/DisplayItem;

    move-result-object v4

    .line 999
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/GridLayer;->mState:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_13a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/cooliris/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v23

    move/from16 v0, v23

    if-ne v7, v0, :cond_158

    :cond_13a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/GridLayer;->mState:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_197

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/GridLayer;->mTimeElapsedSinceTransition:F

    move/from16 v23, v0

    const/high16 v24, 0x3f80

    cmpl-float v23, v23, v24

    if-gtz v23, :cond_158

    move/from16 v0, v22

    if-lt v6, v0, :cond_197

    .line 1002
    :cond_158
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v4, v2, v6, v0}, Lcom/cooliris/media/DisplayItem;->set(Lcom/cooliris/media/Vector3f;IZ)V

    .line 1003
    invoke-virtual {v4}, Lcom/cooliris/media/DisplayItem;->commit()V

    .line 1033
    :goto_162
    add-int v23, v19, v6

    aput-object v4, v13, v23
    :try_end_166
    .catchall {:try_start_56 .. :try_end_166} :catchall_1dc
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_166} :catch_167

    goto :goto_10c

    .line 1083
    :catch_167
    move-exception v4

    .line 1084
    :try_start_168
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_16b
    .catchall {:try_start_168 .. :try_end_16b} :catchall_1dc

    .line 1086
    invoke-virtual {v10, v2}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1087
    invoke-virtual {v10, v3}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1090
    :goto_171
    move-object/from16 v0, p0

    iget v2, v0, Lcom/cooliris/media/GridLayer;->mState:I

    if-eqz v2, :cond_17e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cooliris/media/GridLayer;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2d3

    :cond_17e
    const/16 v2, 0x64

    .line 1092
    :goto_180
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/GridLayer;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v3, v3, Lcom/cooliris/media/IndexRange;->begin:I

    div-int/2addr v3, v2

    mul-int/2addr v2, v3

    .line 1094
    move-object/from16 v0, p0

    iget v3, v0, Lcom/cooliris/media/GridLayer;->mStartMemoryRange:I

    if-eq v3, v2, :cond_e

    .line 1095
    move-object/from16 v0, p0

    iput v2, v0, Lcom/cooliris/media/GridLayer;->mStartMemoryRange:I

    .line 1096
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/GridLayer;->clearUnusedThumbnails()V

    goto/16 :goto_e

    .line 1005
    :cond_197
    :try_start_197
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/GridLayer;->mState:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1e4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cooliris/media/GridLayer;->mFeedChanged:Z

    move/from16 v23, v0

    if-nez v23, :cond_1e4

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1d1

    if-nez v9, :cond_1d1

    .line 1012
    const/high16 v23, -0x3d2c

    move/from16 v0, v23

    iput v0, v2, Lcom/cooliris/media/Vector3f;->y:F

    .line 1014
    :cond_1d1
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v12, v4, v2, v6, v0}, Lcom/cooliris/media/DisplayList;->setPositionAndStackIndex(Lcom/cooliris/media/DisplayItem;Lcom/cooliris/media/Vector3f;IZ)V

    .line 1016
    invoke-virtual {v4}, Lcom/cooliris/media/DisplayItem;->commit()V
    :try_end_1db
    .catchall {:try_start_197 .. :try_end_1db} :catchall_1dc
    .catch Ljava/lang/Exception; {:try_start_197 .. :try_end_1db} :catch_167

    goto :goto_162

    .line 1086
    :catchall_1dc
    move-exception v4

    invoke-virtual {v10, v2}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1087
    invoke-virtual {v10, v3}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    throw v4

    .line 1018
    :cond_1e4
    :try_start_1e4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/GridLayer;->mState:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_21e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/cooliris/media/GridLayer;->mFeedChanged:Z

    move/from16 v23, v0

    if-eqz v23, :cond_21e

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_21e

    if-nez v9, :cond_21e

    .line 1025
    const/high16 v23, -0x3d2c

    move/from16 v0, v23

    iput v0, v2, Lcom/cooliris/media/Vector3f;->y:F

    .line 1029
    :cond_21e
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v12, v4, v2, v6, v0}, Lcom/cooliris/media/DisplayList;->setPositionAndStackIndex(Lcom/cooliris/media/DisplayItem;Lcom/cooliris/media/Vector3f;IZ)V

    goto/16 :goto_162

    .line 1040
    :cond_227
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 947
    :cond_22a
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto/16 :goto_78

    .line 1043
    :cond_22f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/cooliris/media/GridLayer;->mFeedChanged:Z

    if-eqz v4, :cond_2cb

    .line 1044
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/cooliris/media/GridLayer;->mFeedChanged:Z

    .line 1045
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    if-eqz v4, :cond_26a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cooliris/media/GridLayer;->mState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_26a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridLayer;->mRequestFocusContentUri:Ljava/lang/String;

    if-nez v4, :cond_26a

    .line 1047
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v4}, Lcom/cooliris/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v4

    .line 1048
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/GridLayer;->mCompleteRange:Lcom/cooliris/media/IndexRange;

    iget v5, v5, Lcom/cooliris/media/IndexRange;->end:I

    if-le v4, v5, :cond_263

    .line 1049
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridLayer;->mCompleteRange:Lcom/cooliris/media/IndexRange;

    iget v4, v4, Lcom/cooliris/media/IndexRange;->end:I

    .line 1050
    :cond_263
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v5, v4}, Lcom/cooliris/media/GridInputProcessor;->setCurrentSelectedSlot(I)V

    .line 1052
    :cond_26a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/cooliris/media/GridLayer;->mState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_29e

    .line 1053
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v4}, Lcom/cooliris/media/MediaFeed;->getExpandedMediaSet()Lcom/cooliris/media/MediaSet;

    move-result-object v4

    .line 1054
    if-eqz v4, :cond_29e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    if-eqz v5, :cond_29e

    .line 1055
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v5}, Lcom/cooliris/media/HudLayer;->getPathBar()Lcom/cooliris/media/PathBarLayer;

    move-result-object v5

    .line 1056
    if-eqz v5, :cond_29e

    .line 1057
    invoke-virtual {v5}, Lcom/cooliris/media/PathBarLayer;->getCurrentLabel()Ljava/lang/String;

    move-result-object v6

    .line 1058
    if-eqz v6, :cond_29e

    iget-object v7, v4, Lcom/cooliris/media/MediaSet;->mNoCountTitleString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_29e

    .line 1060
    iget-object v4, v4, Lcom/cooliris/media/MediaSet;->mNoCountTitleString:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/cooliris/media/PathBarLayer;->changeLabel(Ljava/lang/String;)V

    .line 1065
    :cond_29e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridLayer;->mRequestFocusContentUri:Ljava/lang/String;

    if-eqz v4, :cond_2cb

    .line 1067
    move-object/from16 v0, p0

    iget v4, v0, Lcom/cooliris/media/GridLayer;->mState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2cb

    .line 1068
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridLayer;->mCompleteRange:Lcom/cooliris/media/IndexRange;

    iget v4, v4, Lcom/cooliris/media/IndexRange;->end:I
    :try_end_2b1
    .catchall {:try_start_1e4 .. :try_end_2b1} :catchall_1dc
    .catch Ljava/lang/Exception; {:try_start_1e4 .. :try_end_2b1} :catch_167

    add-int/lit8 v5, v4, 0x1

    .line 1069
    const/4 v4, 0x0

    :goto_2b4
    if-ge v4, v5, :cond_2cb

    .line 1073
    :try_start_2b6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    if-eqz v6, :cond_2c4

    .line 1074
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/cooliris/media/GridInputProcessor;->setCurrentSelectedSlot(I)V
    :try_end_2c4
    .catchall {:try_start_2b6 .. :try_end_2c4} :catchall_1dc
    .catch Ljava/lang/Exception; {:try_start_2b6 .. :try_end_2c4} :catch_2c7

    .line 1069
    :cond_2c4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b4

    .line 1075
    :catch_2c7
    move-exception v4

    .line 1076
    :try_start_2c8
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2cb
    .catchall {:try_start_2c8 .. :try_end_2cb} :catchall_1dc
    .catch Ljava/lang/Exception; {:try_start_2c8 .. :try_end_2cb} :catch_167

    .line 1086
    :cond_2cb
    invoke-virtual {v10, v2}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1087
    invoke-virtual {v10, v3}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    goto/16 :goto_171

    .line 1090
    :cond_2d3
    const/16 v2, 0x190

    goto/16 :goto_180
.end method

.method private computeVisibleRange()V
    .registers 9

    .prologue
    .line 900
    iget-boolean v0, p0, Lcom/cooliris/media/GridLayer;->mPerformingLayoutChange:Z

    if-eqz v0, :cond_5

    .line 914
    :goto_4
    return-void

    .line 902
    :cond_5
    sget-object v0, Lcom/cooliris/media/GridLayer;->mDeltaAnchorPosition:Lcom/cooliris/media/Vector3f;

    sget-object v1, Lcom/cooliris/media/GridLayer;->mDeltaAnchorPositionUncommited:Lcom/cooliris/media/Vector3f;

    invoke-virtual {v0, v1}, Lcom/cooliris/media/Vector3f;->equals(Lcom/cooliris/media/Vector3f;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 903
    sget-object v0, Lcom/cooliris/media/GridLayer;->mDeltaAnchorPosition:Lcom/cooliris/media/Vector3f;

    sget-object v1, Lcom/cooliris/media/GridLayer;->mDeltaAnchorPositionUncommited:Lcom/cooliris/media/Vector3f;

    invoke-virtual {v0, v1}, Lcom/cooliris/media/Vector3f;->set(Lcom/cooliris/media/Vector3f;)V

    .line 906
    sget-boolean v0, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v0, :cond_2d

    .line 907
    invoke-static {}, Lcom/quramsoft/xiv/SFUtils;->getInstance()Lcom/quramsoft/xiv/SFUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->getDeltaAnchorPosition()Lcom/cooliris/media/Vector3f;

    move-result-object v0

    iget v2, v0, Lcom/cooliris/media/Vector3f;->x:F

    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mLayoutInterface:Lcom/cooliris/media/LayoutInterface;

    check-cast v0, Lcom/cooliris/media/GridLayoutInterface;

    iget v0, v0, Lcom/cooliris/media/GridLayoutInterface;->mSpacingX:I

    invoke-virtual {v1, v2, v0}, Lcom/quramsoft/xiv/SFUtils;->setAnchorAndSpacing(FI)V

    .line 912
    :cond_2d
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mCameraManager:Lcom/cooliris/media/GridCameraManager;

    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mLayoutInterface:Lcom/cooliris/media/LayoutInterface;

    sget-object v3, Lcom/cooliris/media/GridLayer;->mDeltaAnchorPosition:Lcom/cooliris/media/Vector3f;

    iget-object v4, p0, Lcom/cooliris/media/GridLayer;->mVisibleRange:Lcom/cooliris/media/IndexRange;

    iget-object v5, p0, Lcom/cooliris/media/GridLayer;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    iget-object v6, p0, Lcom/cooliris/media/GridLayer;->mCompleteRange:Lcom/cooliris/media/IndexRange;

    iget v7, p0, Lcom/cooliris/media/GridLayer;->mState:I

    invoke-virtual/range {v0 .. v7}, Lcom/cooliris/media/GridCameraManager;->computeVisibleRange(Lcom/cooliris/media/MediaFeed;Lcom/cooliris/media/LayoutInterface;Lcom/cooliris/media/Vector3f;Lcom/cooliris/media/IndexRange;Lcom/cooliris/media/IndexRange;Lcom/cooliris/media/IndexRange;I)V

    goto :goto_4
.end method

.method private createMotionAnimationHander()V
    .registers 2

    .prologue
    .line 2565
    new-instance v0, Lcom/cooliris/media/GridLayer$8;

    invoke-direct {v0, p0}, Lcom/cooliris/media/GridLayer$8;-><init>(Lcom/cooliris/media/GridLayer;)V

    iput-object v0, p0, Lcom/cooliris/media/GridLayer;->mMotionAnimationHandler:Landroid/os/Handler;

    .line 2580
    return-void
.end method

.method private forceRecomputeVisibleRange()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 1292
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mPreviousDataRange:Lcom/cooliris/media/IndexRange;

    iput v1, v0, Lcom/cooliris/media/IndexRange;->begin:I

    .line 1293
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mPreviousDataRange:Lcom/cooliris/media/IndexRange;

    iput v1, v0, Lcom/cooliris/media/IndexRange;->end:I

    .line 1294
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mView:Lcom/cooliris/media/RenderView;

    if-eqz v0, :cond_12

    .line 1295
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mView:Lcom/cooliris/media/RenderView;

    invoke-virtual {v0}, Lcom/cooliris/media/RenderView;->requestRender()V

    .line 1297
    :cond_12
    return-void
.end method

.method private getSlotForScreenPosition(IIII)I
    .registers 12
    .parameter "posX"
    .parameter "posY"
    .parameter "itemWidth"
    .parameter "itemHeight"

    .prologue
    .line 1971
    sget-object v1, Lcom/cooliris/media/GridLayer;->mTempVec:Lcom/cooliris/media/Pool;

    .line 1972
    .local v1, pool:Lcom/cooliris/media/Pool;,"Lcom/cooliris/media/Pool<Lcom/cooliris/media/Vector3f;>;"
    const/4 v2, 0x0

    .line 1973
    .local v2, retVal:I
    invoke-virtual {v1}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cooliris/media/Vector3f;

    .line 1975
    .local v3, worldPos:Lcom/cooliris/media/Vector3f;
    :try_start_9
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mCamera:Lcom/cooliris/media/GridCamera;

    .line 1976
    .local v0, camera:Lcom/cooliris/media/GridCamera;
    int-to-float v4, p1

    int-to-float v5, p2

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6, v3}, Lcom/cooliris/media/GridCamera;->convertToCameraSpace(FFFLcom/cooliris/media/Vector3f;)V

    .line 1978
    iget v4, v3, Lcom/cooliris/media/Vector3f;->x:F

    iget v5, v0, Lcom/cooliris/media/GridCamera;->mScale:F

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/cooliris/media/Vector3f;->x:F

    .line 1979
    iget v4, v3, Lcom/cooliris/media/Vector3f;->y:F

    iget v5, v0, Lcom/cooliris/media/GridCamera;->mScale:F

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/cooliris/media/Vector3f;->y:F

    .line 1981
    invoke-direct {p0, v3, p3, p4}, Lcom/cooliris/media/GridLayer;->hitTest(Lcom/cooliris/media/Vector3f;II)I
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_27

    move-result v2

    .line 1983
    invoke-virtual {v1, v3}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1985
    return v2

    .line 1983
    .end local v0           #camera:Lcom/cooliris/media/GridCamera;
    :catchall_27
    move-exception v4

    invoke-virtual {v1, v3}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    throw v4
.end method

.method private hitTest(Lcom/cooliris/media/Vector3f;II)I
    .registers 22
    .parameter "worldPos"
    .parameter "itemWidth"
    .parameter "itemHeight"

    .prologue
    .line 720
    const/16 v17, -0x1

    .line 721
    .local v17, retVal:I
    const/4 v9, 0x0

    .line 722
    .local v9, firstSlotIndex:I
    const/4 v13, 0x0

    .line 723
    .local v13, lastSlotIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/GridLayer;->mVisibleRange:Lcom/cooliris/media/IndexRange;

    move-object/from16 v16, v0

    .line 724
    .local v16, rangeToUse:Lcom/cooliris/media/IndexRange;
    monitor-enter v16

    .line 725
    :try_start_b
    move-object/from16 v0, v16

    iget v9, v0, Lcom/cooliris/media/IndexRange;->begin:I

    .line 726
    move-object/from16 v0, v16

    iget v13, v0, Lcom/cooliris/media/IndexRange;->end:I

    .line 727
    monitor-exit v16
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_66

    .line 728
    sget-object v14, Lcom/cooliris/media/GridLayer;->mTempVec:Lcom/cooliris/media/Pool;

    .line 729
    .local v14, pool:Lcom/cooliris/media/Pool;,"Lcom/cooliris/media/Pool<Lcom/cooliris/media/Vector3f;>;"
    move/from16 v0, p2

    int-to-float v1, v0

    const/high16 v2, 0x3f00

    mul-float v12, v1, v2

    .line 730
    .local v12, itemWidthBy2:F
    move/from16 v0, p3

    int-to-float v1, v0

    const/high16 v2, 0x3f00

    mul-float v11, v1, v2

    .line 731
    .local v11, itemHeightBy2:F
    invoke-virtual {v14}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/cooliris/media/Vector3f;

    .line 732
    .local v15, position:Lcom/cooliris/media/Vector3f;
    invoke-virtual {v14}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cooliris/media/Vector3f;

    .line 734
    .local v7, deltaAnchorPosition:Lcom/cooliris/media/Vector3f;
    :try_start_30
    sget-object v1, Lcom/cooliris/media/GridLayer;->mDeltaAnchorPosition:Lcom/cooliris/media/Vector3f;

    invoke-virtual {v7, v1}, Lcom/cooliris/media/Vector3f;->set(Lcom/cooliris/media/Vector3f;)V

    .line 735
    move v10, v9

    .local v10, i:I
    :goto_36
    if-gt v10, v13, :cond_5f

    .line 736
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/media/GridLayer;->mCamera:Lcom/cooliris/media/GridCamera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer;->mLayoutInterface:Lcom/cooliris/media/LayoutInterface;

    invoke-static {v10, v1, v2, v7, v15}, Lcom/cooliris/media/GridCameraManager;->getSlotPositionForSlotIndex(ILcom/cooliris/media/GridCamera;Lcom/cooliris/media/LayoutInterface;Lcom/cooliris/media/Vector3f;Lcom/cooliris/media/Vector3f;)V

    .line 738
    iget v1, v15, Lcom/cooliris/media/Vector3f;->x:F

    sub-float/2addr v1, v12

    iget v2, v15, Lcom/cooliris/media/Vector3f;->x:F

    add-float/2addr v2, v12

    iget v3, v15, Lcom/cooliris/media/Vector3f;->y:F

    sub-float/2addr v3, v11

    iget v4, v15, Lcom/cooliris/media/Vector3f;->y:F

    add-float/2addr v4, v11

    move-object/from16 v0, p1

    iget v5, v0, Lcom/cooliris/media/Vector3f;->x:F

    move-object/from16 v0, p1

    iget v6, v0, Lcom/cooliris/media/Vector3f;->y:F

    invoke-static/range {v1 .. v6}, Lcom/cooliris/media/FloatUtils;->boundsContainsPoint(FFFFFF)Z
    :try_end_5a
    .catchall {:try_start_30 .. :try_end_5a} :catchall_77
    .catch Ljava/lang/NullPointerException; {:try_start_30 .. :try_end_5a} :catch_6c

    move-result v1

    if-eqz v1, :cond_69

    .line 741
    move/from16 v17, v10

    .line 748
    :cond_5f
    invoke-virtual {v14, v7}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 749
    invoke-virtual {v14, v15}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 751
    .end local v10           #i:I
    :goto_65
    return v17

    .line 727
    .end local v7           #deltaAnchorPosition:Lcom/cooliris/media/Vector3f;
    .end local v11           #itemHeightBy2:F
    .end local v12           #itemWidthBy2:F
    .end local v14           #pool:Lcom/cooliris/media/Pool;,"Lcom/cooliris/media/Pool<Lcom/cooliris/media/Vector3f;>;"
    .end local v15           #position:Lcom/cooliris/media/Vector3f;
    :catchall_66
    move-exception v1

    :try_start_67
    monitor-exit v16
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw v1

    .line 735
    .restart local v7       #deltaAnchorPosition:Lcom/cooliris/media/Vector3f;
    .restart local v10       #i:I
    .restart local v11       #itemHeightBy2:F
    .restart local v12       #itemWidthBy2:F
    .restart local v14       #pool:Lcom/cooliris/media/Pool;,"Lcom/cooliris/media/Pool<Lcom/cooliris/media/Vector3f;>;"
    .restart local v15       #position:Lcom/cooliris/media/Vector3f;
    :cond_69
    add-int/lit8 v10, v10, 0x1

    goto :goto_36

    .line 745
    .end local v10           #i:I
    :catch_6c
    move-exception v8

    .line 746
    .local v8, e:Ljava/lang/NullPointerException;
    :try_start_6d
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_77

    .line 748
    invoke-virtual {v14, v7}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 749
    invoke-virtual {v14, v15}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    goto :goto_65

    .line 748
    .end local v8           #e:Ljava/lang/NullPointerException;
    :catchall_77
    move-exception v1

    invoke-virtual {v14, v7}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 749
    invoke-virtual {v14, v15}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    throw v1
.end method

.method private motionDialogInitialOff()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 2689
    iget-boolean v0, p0, Lcom/cooliris/media/GridLayer;->mMotionDialog:Z

    if-nez v0, :cond_d5

    .line 2690
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/GridLayer;->mMotionDialog:Z

    .line 2691
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2692
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/cooliris/media/Gallery;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2694
    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 2695
    const v0, 0x7f080016

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cooliris/media/GridLayer;->mImgView:Landroid/widget/ImageView;

    .line 2696
    const v0, 0x7f080015

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2701
    const v1, 0x7f080017

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2702
    const v2, 0x7f080019

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 2703
    const v3, 0x7f080018

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 2706
    const v6, 0x7f06008e

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 2710
    const v0, 0x7f060091

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2711
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMotionInfoDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2712
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2713
    const v0, 0x7f06008b

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2714
    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2716
    new-instance v0, Lcom/cooliris/media/GridLayer$15;

    invoke-direct {v0, p0}, Lcom/cooliris/media/GridLayer$15;-><init>(Lcom/cooliris/media/GridLayer;)V

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2723
    new-instance v0, Lcom/cooliris/media/GridLayer$16;

    invoke-direct {v0, p0}, Lcom/cooliris/media/GridLayer$16;-><init>(Lcom/cooliris/media/GridLayer;)V

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2730
    new-instance v0, Lcom/cooliris/media/GridLayer$17;

    invoke-direct {v0, p0, v2}, Lcom/cooliris/media/GridLayer$17;-><init>(Lcom/cooliris/media/GridLayer;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2737
    const v0, 0x7f08001a

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2738
    new-instance v1, Lcom/cooliris/media/GridLayer$18;

    invoke-direct {v1, p0}, Lcom/cooliris/media/GridLayer$18;-><init>(Lcom/cooliris/media/GridLayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2767
    sget-boolean v1, Lcom/cooliris/media/Utils;->mUse_Q1_Eur_Open:Z

    if-eqz v1, :cond_ab

    .line 2768
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2769
    const v0, 0x7f0600ac

    new-instance v1, Lcom/cooliris/media/GridLayer$19;

    invoke-direct {v1, p0}, Lcom/cooliris/media/GridLayer$19;-><init>(Lcom/cooliris/media/GridLayer;)V

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2801
    :cond_ab
    const v0, 0x7f06008a

    new-instance v1, Lcom/cooliris/media/GridLayer$20;

    invoke-direct {v1, p0}, Lcom/cooliris/media/GridLayer$20;-><init>(Lcom/cooliris/media/GridLayer;)V

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2820
    const v0, 0x7f060023

    new-instance v1, Lcom/cooliris/media/GridLayer$21;

    invoke-direct {v1, p0}, Lcom/cooliris/media/GridLayer$21;-><init>(Lcom/cooliris/media/GridLayer;)V

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2829
    iput-boolean v7, p0, Lcom/cooliris/media/GridLayer;->mEndUpdateAnimation:Z

    .line 2830
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/app/App;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cooliris/media/GridLayer$22;

    invoke-direct {v1, p0, v4}, Lcom/cooliris/media/GridLayer$22;-><init>(Lcom/cooliris/media/GridLayer;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2839
    :cond_d5
    return-void
.end method

.method private motionDialogInitialOn()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 2626
    iget-boolean v0, p0, Lcom/cooliris/media/GridLayer;->mMotionDialog:Z

    if-nez v0, :cond_97

    .line 2627
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/GridLayer;->mMotionDialog:Z

    .line 2628
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2629
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/cooliris/media/Gallery;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 2631
    const v1, 0x7f03000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2632
    const v0, 0x7f080016

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cooliris/media/GridLayer;->mImgView:Landroid/widget/ImageView;

    .line 2633
    const v0, 0x7f080015

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2634
    const v1, 0x7f080019

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 2635
    const v2, 0x7f080018

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 2638
    const v5, 0x7f06008e

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2640
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMotionInfoDialogKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2641
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2642
    const v0, 0x7f06008b

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2643
    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2645
    new-instance v0, Lcom/cooliris/media/GridLayer$10;

    invoke-direct {v0, p0}, Lcom/cooliris/media/GridLayer$10;-><init>(Lcom/cooliris/media/GridLayer;)V

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2652
    new-instance v0, Lcom/cooliris/media/GridLayer$11;

    invoke-direct {v0, p0}, Lcom/cooliris/media/GridLayer$11;-><init>(Lcom/cooliris/media/GridLayer;)V

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2659
    new-instance v0, Lcom/cooliris/media/GridLayer$12;

    invoke-direct {v0, p0, v1}, Lcom/cooliris/media/GridLayer$12;-><init>(Lcom/cooliris/media/GridLayer;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2666
    const v0, 0x7f06008d

    new-instance v1, Lcom/cooliris/media/GridLayer$13;

    invoke-direct {v1, p0}, Lcom/cooliris/media/GridLayer$13;-><init>(Lcom/cooliris/media/GridLayer;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2675
    iput-boolean v6, p0, Lcom/cooliris/media/GridLayer;->mEndUpdateAnimation:Z

    .line 2676
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/app/App;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cooliris/media/GridLayer$14;

    invoke-direct {v1, p0, v3}, Lcom/cooliris/media/GridLayer$14;-><init>(Lcom/cooliris/media/GridLayer;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2685
    :cond_97
    return-void
.end method

.method private splitItems(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 3116
    const-string v0, "\\|\\+\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private startMotionTutorialDialog()V
    .registers 4

    .prologue
    .line 2540
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->getGridInputProcessor()Lcom/cooliris/media/GridInputProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cooliris/media/GridInputProcessor;->getMotionDetector()Lcom/cooliris/media/MotionDetector;

    move-result-object v0

    .line 2541
    .local v0, mMotionDetector:Lcom/cooliris/media/MotionDetector;
    invoke-virtual {v0}, Lcom/cooliris/media/MotionDetector;->isMotionDialogOff()Z

    move-result v1

    .line 2542
    .local v1, mMotionDialogOff:Z
    if-nez v1, :cond_1d

    .line 2543
    invoke-virtual {v0}, Lcom/cooliris/media/MotionDetector;->isMotionUse()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {v0}, Lcom/cooliris/media/MotionDetector;->isMotionTiltUse()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2544
    invoke-direct {p0}, Lcom/cooliris/media/GridLayer;->motionDialogInitialOn()V

    .line 2549
    :cond_1d
    :goto_1d
    return-void

    .line 2546
    :cond_1e
    invoke-direct {p0}, Lcom/cooliris/media/GridLayer;->motionDialogInitialOff()V

    goto :goto_1d
.end method

.method private updateAnimation(I)V
    .registers 8
    .parameter "index"

    .prologue
    const/16 v5, 0xc8

    .line 2585
    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mMotionAnimationHandler:Landroid/os/Handler;

    .line 2587
    .local v2, mAnimationHandler:Landroid/os/Handler;
    iget-boolean v3, p0, Lcom/cooliris/media/GridLayer;->mEndUpdateAnimation:Z

    if-eqz v3, :cond_9

    .line 2610
    :cond_8
    :goto_8
    return-void

    .line 2591
    :cond_9
    const/4 v0, 0x0

    .line 2592
    .local v0, animation_size:I
    iget-object v3, p0, Lcom/cooliris/media/GridLayer;->mImgView:Landroid/widget/ImageView;

    if-eqz v3, :cond_8

    .line 2593
    sget-object v3, Lcom/cooliris/media/GridLayer;->mZoomingDrawable:[I

    array-length v0, v3

    .line 2595
    :try_start_11
    iget-object v3, p0, Lcom/cooliris/media/GridLayer;->mImgView:Landroid/widget/ImageView;

    sget-object v4, Lcom/cooliris/media/GridLayer;->mZoomingDrawable:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_1a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_1a} :catch_2d

    .line 2600
    :goto_1a
    add-int/lit8 v3, p1, 0x1

    iput v3, p0, Lcom/cooliris/media/GridLayer;->mMotionAnimationIndex:I

    .line 2601
    if-eqz v2, :cond_8

    .line 2602
    iget v3, p0, Lcom/cooliris/media/GridLayer;->mMotionAnimationIndex:I

    if-lt v3, v0, :cond_32

    .line 2603
    const/4 v3, 0x0

    iput v3, p0, Lcom/cooliris/media/GridLayer;->mMotionAnimationIndex:I

    .line 2604
    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8

    .line 2596
    :catch_2d
    move-exception v1

    .line 2597
    .local v1, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1a

    .line 2606
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :cond_32
    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8
.end method

.method private updateCountOfSelectedItems()V
    .registers 3

    .prologue
    .line 1957
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mSelectedBucketList:Lcom/cooliris/media/MediaBucketList;

    invoke-virtual {v1}, Lcom/cooliris/media/MediaBucketList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cooliris/media/HudLayer;->updateNumItemsSelected(I)V

    .line 1958
    return-void
.end method

.method private updateSelectedSlot(Lcom/cooliris/media/MediaFeed;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x64

    const/4 v2, 0x0

    .line 3065
    if-eqz p2, :cond_9

    const-string v0, ""

    if-ne p2, v0, :cond_11

    .line 3066
    :cond_9
    const-string v0, "GridLayer"

    const-string v1, "Delivered item list is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3113
    :goto_10
    return-void

    .line 3069
    :cond_11
    const-wide/16 v0, 0x0

    .line 3072
    :goto_13
    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/cooliris/media/MediaFeed;->isFeedRunning()Z

    move-result v3

    if-nez v3, :cond_1f

    :cond_1b
    iget-boolean v3, p0, Lcom/cooliris/media/GridLayer;->mFeedAboutToChange:Z

    if-eqz v3, :cond_31

    :cond_1f
    cmp-long v3, v0, v5

    if-gez v3, :cond_31

    .line 3076
    const-wide/16 v3, 0x64

    :try_start_25
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_28} :catch_2c

    .line 3077
    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    goto :goto_13

    .line 3078
    :catch_2c
    move-exception v3

    .line 3079
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_13

    .line 3082
    :cond_31
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mSelectedBucketList:Lcom/cooliris/media/MediaBucketList;

    invoke-virtual {v0}, Lcom/cooliris/media/MediaBucketList;->clear()V

    .line 3083
    invoke-direct {p0, p2}, Lcom/cooliris/media/GridLayer;->splitItems(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3084
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->getChkFromWidget()Z

    move-result v0

    if-eqz v0, :cond_80

    move v1, v2

    .line 3085
    :goto_45
    array-length v0, v4

    if-ge v1, v0, :cond_c6

    .line 3086
    aget-object v5, v4, v1

    .line 3087
    if-eqz p1, :cond_78

    invoke-virtual {p1}, Lcom/cooliris/media/MediaFeed;->getCurrentSet()Lcom/cooliris/media/MediaSet;

    move-result-object v0

    if-eqz v0, :cond_78

    .line 3088
    invoke-virtual {p1}, Lcom/cooliris/media/MediaFeed;->getCurrentSet()Lcom/cooliris/media/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v6

    move v3, v2

    .line 3089
    :goto_5b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_78

    .line 3090
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7c

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaItem;

    iget-object v0, v0, Lcom/cooliris/media/MediaItem;->mCaption:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 3091
    invoke-virtual {p0, v3, v2, v2}, Lcom/cooliris/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    .line 3085
    :cond_78
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_45

    .line 3089
    :cond_7c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5b

    .line 3097
    :cond_80
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->getChkFromPhotoWall()Z

    move-result v0

    if-eqz v0, :cond_c6

    move v1, v2

    .line 3098
    :goto_8b
    array-length v0, v4

    if-ge v1, v0, :cond_c6

    .line 3099
    aget-object v5, v4, v1

    .line 3100
    if-eqz p1, :cond_be

    invoke-virtual {p1}, Lcom/cooliris/media/MediaFeed;->getCurrentSet()Lcom/cooliris/media/MediaSet;

    move-result-object v0

    if-eqz v0, :cond_be

    .line 3101
    invoke-virtual {p1}, Lcom/cooliris/media/MediaFeed;->getCurrentSet()Lcom/cooliris/media/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v6

    move v3, v2

    .line 3102
    :goto_a1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_be

    .line 3103
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c2

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaItem;

    iget-object v0, v0, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 3104
    invoke-virtual {p0, v3, v2, v2}, Lcom/cooliris/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    .line 3098
    :cond_be
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8b

    .line 3102
    :cond_c2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_a1

    .line 3111
    :cond_c6
    invoke-direct {p0}, Lcom/cooliris/media/GridLayer;->updateCountOfSelectedItems()V

    .line 3112
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mView:Lcom/cooliris/media/RenderView;

    invoke-virtual {v0}, Lcom/cooliris/media/RenderView;->requestRender()V

    goto/16 :goto_10
.end method


# virtual methods
.method public addSlotToSelectedItems(IZZ)V
    .registers 6
    .parameter "slotId"
    .parameter "removeIfAlreadyAdded"
    .parameter "updateCount"

    .prologue
    .line 1939
    iput p1, p0, Lcom/cooliris/media/GridLayer;->mFocusSlot:I

    .line 1941
    iget-boolean v1, p0, Lcom/cooliris/media/GridLayer;->mFeedAboutToChange:Z

    if-nez v1, :cond_27

    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    if-eqz v1, :cond_27

    .line 1942
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    .line 1943
    .local v0, feed:Lcom/cooliris/media/MediaFeed;
    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mSelectedBucketList:Lcom/cooliris/media/MediaBucketList;

    invoke-virtual {v1, p1, v0, p2}, Lcom/cooliris/media/MediaBucketList;->add(ILcom/cooliris/media/MediaFeed;Z)V

    .line 1944
    if-eqz p3, :cond_27

    .line 1945
    invoke-direct {p0}, Lcom/cooliris/media/GridLayer;->updateCountOfSelectedItems()V

    .line 1947
    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mSelectedBucketList:Lcom/cooliris/media/MediaBucketList;

    invoke-virtual {v1}, Lcom/cooliris/media/MediaBucketList;->size()I

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->getMultiplePickIntent()Z

    move-result v1

    if-nez v1, :cond_27

    .line 1949
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->deselect()V

    .line 1952
    .end local v0           #feed:Lcom/cooliris/media/MediaFeed;
    :cond_27
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->getMultiplePickIntent()Z

    move-result v1

    if-nez v1, :cond_32

    .line 1953
    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v1}, Lcom/cooliris/media/HudLayer;->computeBottomMenu()V

    .line 1954
    :cond_32
    return-void
.end method

.method public afterDeleteReflush(Z)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1901
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->isViewIntent()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v0

    if-eqz v0, :cond_17

    if-eqz p1, :cond_17

    .line 1903
    invoke-virtual {p0, v2}, Lcom/cooliris/media/GridLayer;->setState(I)V

    .line 1905
    :cond_17
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v0

    if-ne v0, v7, :cond_d2

    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v0}, Lcom/cooliris/media/MediaFeed;->getCurrentSet()Lcom/cooliris/media/MediaSet;

    move-result-object v0

    if-eqz v0, :cond_d2

    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v0, v0, Lcom/cooliris/media/IndexRange;->end:I

    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v1}, Lcom/cooliris/media/MediaFeed;->getCurrentSet()Lcom/cooliris/media/MediaSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v1

    if-le v0, v1, :cond_d2

    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v0}, Lcom/cooliris/media/MediaFeed;->getCurrentSet()Lcom/cooliris/media/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v0

    if-lez v0, :cond_d2

    .line 1909
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v0, v0, Lcom/cooliris/media/IndexRange;->end:I

    .line 1910
    div-int/lit8 v5, v0, 0xa

    .line 1911
    :goto_47
    add-int v1, v0, v5

    iget-object v3, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v3}, Lcom/cooliris/media/MediaFeed;->getCurrentSet()Lcom/cooliris/media/MediaSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v3

    if-lt v1, v3, :cond_d2

    .line 1912
    add-int/lit8 v3, v0, -0x14

    .line 1913
    iget-object v6, p0, Lcom/cooliris/media/GridLayer;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    if-gez v3, :cond_cc

    move v1, v2

    :goto_5c
    iget-object v4, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v4}, Lcom/cooliris/media/MediaFeed;->getCurrentSet()Lcom/cooliris/media/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v4

    if-ge v0, v4, :cond_ce

    iget-object v4, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v4}, Lcom/cooliris/media/MediaFeed;->getCurrentSet()Lcom/cooliris/media/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v4

    :goto_72
    invoke-virtual {v6, v1, v4}, Lcom/cooliris/media/IndexRange;->set(II)V

    .line 1915
    iget-object v4, p0, Lcom/cooliris/media/GridLayer;->mVisibleRange:Lcom/cooliris/media/IndexRange;

    if-gez v3, :cond_7a

    move v3, v2

    :cond_7a
    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v1}, Lcom/cooliris/media/MediaFeed;->getCurrentSet()Lcom/cooliris/media/MediaSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v1

    if-ge v0, v1, :cond_d0

    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v1}, Lcom/cooliris/media/MediaFeed;->getCurrentSet()Lcom/cooliris/media/MediaSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v1

    :goto_90
    invoke-virtual {v4, v3, v1}, Lcom/cooliris/media/IndexRange;->set(II)V

    .line 1917
    const-string v1, "GridLayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBufferedVisibleRange Begin["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cooliris/media/GridLayer;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v4, v4, Lcom/cooliris/media/IndexRange;->begin:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] End["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/cooliris/media/GridLayer;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v4, v4, Lcom/cooliris/media/IndexRange;->end:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {p0, v1, v7}, Lcom/cooliris/media/GridLayer;->onFeedChanged(Lcom/cooliris/media/MediaFeed;Z)V

    .line 1911
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_47

    :cond_cc
    move v1, v3

    .line 1913
    goto :goto_5c

    :cond_ce
    move v4, v0

    goto :goto_72

    :cond_d0
    move v1, v0

    .line 1915
    goto :goto_90

    .line 1923
    :cond_d2
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v0

    if-eqz v0, :cond_df

    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_ee

    .line 1924
    :cond_df
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    invoke-virtual {v0, v2, v2}, Lcom/cooliris/media/IndexRange;->set(II)V

    .line 1925
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mVisibleRange:Lcom/cooliris/media/IndexRange;

    invoke-virtual {v0, v2, v2}, Lcom/cooliris/media/IndexRange;->set(II)V

    .line 1926
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {p0, v0, v7}, Lcom/cooliris/media/GridLayer;->onFeedChanged(Lcom/cooliris/media/MediaFeed;Z)V

    .line 1929
    :cond_ee
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v0

    if-ne v0, v7, :cond_f9

    .line 1930
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {p0, v0, v7}, Lcom/cooliris/media/GridLayer;->onFeedChanged(Lcom/cooliris/media/MediaFeed;Z)V

    .line 1933
    :cond_f9
    sget-object v0, Lcom/cooliris/media/GridLayer;->mDisplayList:Lcom/cooliris/media/DisplayList;

    invoke-virtual {v0}, Lcom/cooliris/media/DisplayList;->clear()V

    .line 1934
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMarkedBucketList:Lcom/cooliris/media/MediaBucketList;

    invoke-virtual {v0}, Lcom/cooliris/media/MediaBucketList;->clear()V

    .line 1935
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mBackground:Lcom/cooliris/media/BackgroundLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/BackgroundLayer;->clearCache()V

    .line 1936
    return-void
.end method

.method centerCameraForSlot(IF)V
    .registers 14
    .parameter "slotIndex"
    .parameter "baseConvergence"

    .prologue
    .line 755
    const/4 v7, 0x0

    .line 758
    .local v7, imageTheta:F
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/cooliris/media/GridLayer;->getDisplayItemForSlotId(I)Lcom/cooliris/media/DisplayItem;

    move-result-object v9

    .line 759
    .local v9, displayItem:Lcom/cooliris/media/DisplayItem;
    if-eqz v9, :cond_b

    .line 760
    invoke-virtual {v9}, Lcom/cooliris/media/DisplayItem;->getImageTheta()F

    move-result v7

    .line 762
    :cond_b
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mCameraManager:Lcom/cooliris/media/GridCameraManager;

    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mLayoutInterface:Lcom/cooliris/media/LayoutInterface;

    sget-object v4, Lcom/cooliris/media/GridLayer;->mDeltaAnchorPositionUncommited:Lcom/cooliris/media/Vector3f;

    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v2}, Lcom/cooliris/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v5

    iget v6, p0, Lcom/cooliris/media/GridLayer;->mZoomValue:F

    iget v8, p0, Lcom/cooliris/media/GridLayer;->mState:I

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v8}, Lcom/cooliris/media/GridCameraManager;->centerCameraForSlot(Lcom/cooliris/media/LayoutInterface;IFLcom/cooliris/media/Vector3f;IFFI)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_21

    .line 768
    .end local v9           #displayItem:Lcom/cooliris/media/DisplayItem;
    :goto_20
    return-void

    .line 765
    :catch_21
    move-exception v10

    .line 766
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method

.method public changeFocusToNextSlot(F)Z
    .registers 6
    .parameter "convergence"

    .prologue
    .line 1622
    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v2}, Lcom/cooliris/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v0

    .line 1623
    .local v0, currentSelectedSlot:I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2, p1}, Lcom/cooliris/media/GridLayer;->changeFocusToSlot(IF)Z

    move-result v1

    .line 1624
    .local v1, retVal:Z
    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v2}, Lcom/cooliris/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v2

    if-ne v2, v0, :cond_1e

    .line 1625
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->endSlideshow()V

    .line 1626
    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Lcom/cooliris/media/HudLayer;->setAlpha(F)V

    .line 1628
    :cond_1e
    return v1
.end method

.method public changeFocusToPreviousSlot(F)Z
    .registers 3
    .parameter "convergence"

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v0}, Lcom/cooliris/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/cooliris/media/GridLayer;->changeFocusToSlot(IF)Z

    move-result v0

    return v0
.end method

.method public changeFocusToSlot(IF)Z
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1657
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/cooliris/media/GridLayer;->mZoomValue:F

    .line 1658
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mBoundaryLayer:Lcom/cooliris/media/BoundaryLayer;

    iget v3, p0, Lcom/cooliris/media/GridLayer;->mZoomValue:F

    invoke-virtual {v0, v3}, Lcom/cooliris/media/BoundaryLayer;->setZoomValue(F)V

    .line 1659
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v0, v0, Lcom/cooliris/media/IndexRange;->begin:I

    sub-int v3, p1, v0

    .line 1662
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v0}, Lcom/cooliris/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v0

    if-eq p1, v0, :cond_1c4

    .line 1663
    const-string v0, "GridLayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeFocusSlot: slotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currentSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v5}, Lcom/cooliris/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    iput-boolean v1, p0, Lcom/cooliris/media/GridLayer;->mbFirstDecode:Z

    .line 1666
    iput-boolean v2, p0, Lcom/cooliris/media/GridLayer;->mIsDuplicatedDrmPopup:Z

    move v0, v1

    .line 1670
    :goto_49
    if-ltz v3, :cond_1c1

    iget-object v4, p0, Lcom/cooliris/media/GridLayer;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v4, v4, Lcom/cooliris/media/IndexRange;->end:I

    if-gt p1, v4, :cond_1c1

    .line 1671
    sget-object v4, Lcom/cooliris/media/GridLayer;->mDisplayItems:[Lcom/cooliris/media/DisplayItem;

    mul-int/lit8 v3, v3, 0xc

    aget-object v3, v4, v3

    .line 1672
    if-eqz v3, :cond_1c1

    .line 1673
    iget-object v4, v3, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    .line 1674
    iget-object v5, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Lcom/cooliris/media/GridLayer;->mCompleteRange:Lcom/cooliris/media/IndexRange;

    iget v7, v7, Lcom/cooliris/media/IndexRange;->end:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v4, v6, v7}, Lcom/cooliris/media/HudLayer;->fullscreenSelectionChanged(Lcom/cooliris/media/MediaItem;II)V

    .line 1675
    const/4 v5, -0x1

    if-eq p1, v5, :cond_1b5

    iget-object v5, p0, Lcom/cooliris/media/GridLayer;->mCompleteRange:Lcom/cooliris/media/IndexRange;

    iget v5, v5, Lcom/cooliris/media/IndexRange;->end:I

    if-gt p1, v5, :cond_1b5

    iget-object v5, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    if-eqz v5, :cond_1b5

    iget-object v5, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v5}, Lcom/cooliris/media/MediaFeed;->isSingleImageMode()Z

    move-result v5

    if-nez v5, :cond_1b5

    .line 1677
    iget-object v5, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v5, p1}, Lcom/cooliris/media/GridInputProcessor;->setCurrentFocusSlot(I)V

    .line 1678
    invoke-virtual {p0, p1, p2}, Lcom/cooliris/media/GridLayer;->centerCameraForSlot(IF)V

    .line 1680
    if-eqz v0, :cond_92

    iget v5, p0, Lcom/cooliris/media/GridLayer;->mState:I

    if-ne v5, v8, :cond_92

    .line 1681
    iget-object v5, p0, Lcom/cooliris/media/GridLayer;->mDrawManager:Lcom/cooliris/media/GridDrawManager;

    iget-object v3, v3, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    invoke-virtual {v5, v3}, Lcom/cooliris/media/GridDrawManager;->setNewImage(Lcom/cooliris/media/MediaItem;)V

    .line 1684
    :cond_92
    iget-boolean v3, v4, Lcom/cooliris/media/MediaItem;->isDrm:Z

    if-eqz v3, :cond_177

    if-eqz v0, :cond_177

    invoke-virtual {v4}, Lcom/cooliris/media/MediaItem;->getMediaType()I

    move-result v0

    if-nez v0, :cond_177

    .line 1685
    const/4 v0, 0x0

    .line 1686
    invoke-virtual {v4}, Lcom/cooliris/media/MediaItem;->drmInfoUpdate()V

    .line 1688
    iget-boolean v3, v4, Lcom/cooliris/media/MediaItem;->hasDrmDisplayRights:Z

    if-eqz v3, :cond_143

    .line 1689
    iget v3, v4, Lcom/cooliris/media/MediaItem;->currentConstraint:I

    invoke-static {v3}, Lcom/cooliris/drm/DrmChecker;->hasCountConstraint(I)Z

    move-result v3

    if-eqz v3, :cond_10e

    .line 1691
    iget v3, v4, Lcom/cooliris/media/MediaItem;->currentCount:I

    .line 1692
    const-string v5, "GridLayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDrmPopup() OmaDrm, Count : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    if-ne v3, v8, :cond_f7

    .line 1695
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    const v5, 0x7f060054

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1697
    invoke-virtual {v4, v1}, Lcom/cooliris/media/MediaItem;->setDrmPopup(Z)V

    .line 1714
    :cond_de
    :goto_de
    invoke-virtual {v4}, Lcom/cooliris/media/MediaItem;->isDrmPopup()Z

    move-result v2

    if-eqz v2, :cond_177

    .line 1715
    new-instance v2, Lcom/cooliris/drm/DrmPopupCountInfo3;

    iget-object v3, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, v3, v4}, Lcom/cooliris/drm/DrmPopupCountInfo3;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/cooliris/media/MediaItem;)V

    .line 1717
    invoke-virtual {v2}, Lcom/cooliris/drm/DrmPopup;->show()V

    .line 1718
    iget-boolean v0, p0, Lcom/cooliris/media/GridLayer;->mSlideshowMode:Z

    if-eqz v0, :cond_f5

    .line 1719
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->endSlideshow()V

    :cond_f5
    move v0, v1

    .line 1757
    :goto_f6
    return v0

    .line 1698
    :cond_f7
    if-ne v3, v1, :cond_de

    .line 1699
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    const v5, 0x7f060055

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1701
    invoke-virtual {v4, v1}, Lcom/cooliris/media/MediaItem;->setDrmPopup(Z)V

    goto :goto_de

    .line 1703
    :cond_10e
    iget v2, v4, Lcom/cooliris/media/MediaItem;->currentConstraint:I

    invoke-static {v2}, Lcom/cooliris/drm/DrmChecker;->hasIntervalConstraint(I)Z

    move-result v2

    if-eqz v2, :cond_de

    .line 1705
    invoke-virtual {v4}, Lcom/cooliris/media/MediaItem;->isDrmFirstView()Z

    move-result v2

    if-eqz v2, :cond_de

    .line 1706
    const-string v0, "GridLayer"

    const-string v2, "getDrmPopup() OmaDrm, Interval, first time"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    const v2, 0x7f06005c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ". "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    const v3, 0x7f060056

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1710
    invoke-virtual {v4, v1}, Lcom/cooliris/media/MediaItem;->setDrmPopup(Z)V

    goto :goto_de

    .line 1723
    :cond_143
    iget-object v0, v4, Lcom/cooliris/media/MediaItem;->drmInfo:[I

    aget v0, v0, v1

    invoke-static {v0}, Lcom/cooliris/drm/DrmChecker;->isSeparateDelivery(I)Z

    move-result v0

    if-eqz v0, :cond_17a

    .line 1724
    const-string v0, "GridLayer"

    const-string v2, "getDrmPopup() OmaDrm, SeparateDelivery, first time"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    const v2, 0x7f06005a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1726
    invoke-virtual {v4, v1}, Lcom/cooliris/media/MediaItem;->setDrmPopup(Z)V

    .line 1739
    :cond_160
    :goto_160
    invoke-virtual {v4}, Lcom/cooliris/media/MediaItem;->isDrmPopup()Z

    move-result v2

    if-eqz v2, :cond_177

    .line 1740
    new-instance v2, Lcom/cooliris/drm/DrmPopupInavailable6;

    iget-object v3, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, v3, v4}, Lcom/cooliris/drm/DrmPopupInavailable6;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/cooliris/media/MediaItem;)V

    .line 1742
    invoke-virtual {v2}, Lcom/cooliris/drm/DrmPopup;->show()V

    .line 1743
    iget-boolean v0, p0, Lcom/cooliris/media/GridLayer;->mSlideshowMode:Z

    if-eqz v0, :cond_177

    .line 1744
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->endSlideshow()V

    :cond_177
    move v0, v1

    .line 1750
    goto/16 :goto_f6

    .line 1728
    :cond_17a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    const v3, 0x7f060059

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    const v3, 0x7f060058

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1731
    new-instance v2, Lcom/cooliris/drm/DrmPopupInavailable5;

    iget-object v3, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, v3, v4}, Lcom/cooliris/drm/DrmPopupInavailable5;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/cooliris/media/MediaItem;)V

    .line 1733
    invoke-virtual {v2}, Lcom/cooliris/drm/DrmPopup;->show()V

    .line 1734
    iget-boolean v2, p0, Lcom/cooliris/media/GridLayer;->mSlideshowMode:Z

    if-eqz v2, :cond_160

    .line 1735
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->endSlideshow()V

    goto :goto_160

    .line 1752
    :cond_1b5
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v0}, Lcom/cooliris/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/cooliris/media/GridLayer;->centerCameraForSlot(IF)V

    move v0, v2

    .line 1753
    goto/16 :goto_f6

    :cond_1c1
    move v0, v2

    .line 1757
    goto/16 :goto_f6

    :cond_1c4
    move v0, v2

    goto/16 :goto_49
.end method

.method public changeStateForWidget(J)I
    .registers 11
    .parameter "setID"

    .prologue
    .line 3045
    const/4 v4, -0x1

    .line 3046
    .local v4, slotIndex:I
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    .line 3047
    .local v0, feed:Lcom/cooliris/media/MediaFeed;
    if-eqz v0, :cond_b

    const-wide/16 v6, -0x1

    cmp-long v6, p1, v6

    if-nez v6, :cond_d

    :cond_b
    move v5, v4

    .line 3061
    .end local v4           #slotIndex:I
    .local v5, slotIndex:I
    :goto_c
    return v5

    .line 3050
    .end local v5           #slotIndex:I
    .restart local v4       #slotIndex:I
    :cond_d
    invoke-virtual {v0}, Lcom/cooliris/media/MediaFeed;->getMediaSets()Ljava/util/ArrayList;

    move-result-object v3

    .line 3052
    .local v3, sets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaSet;>;"
    monitor-enter v3

    .line 3053
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    :try_start_13
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_26

    .line 3054
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/MediaSet;

    .line 3055
    .local v2, set:Lcom/cooliris/media/MediaSet;
    iget-wide v6, v2, Lcom/cooliris/media/MediaSet;->mId:J

    cmp-long v6, p1, v6

    if-nez v6, :cond_29

    .line 3056
    move v4, v1

    .line 3060
    .end local v2           #set:Lcom/cooliris/media/MediaSet;
    :cond_26
    monitor-exit v3

    move v5, v4

    .line 3061
    .end local v4           #slotIndex:I
    .restart local v5       #slotIndex:I
    goto :goto_c

    .line 3053
    .end local v5           #slotIndex:I
    .restart local v2       #set:Lcom/cooliris/media/MediaSet;
    .restart local v4       #slotIndex:I
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 3060
    .end local v2           #set:Lcom/cooliris/media/MediaSet;
    :catchall_2c
    move-exception v6

    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_13 .. :try_end_2e} :catchall_2c

    throw v6
.end method

.method public checkAGIF(I)Z
    .registers 8
    .parameter "slotId"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 1635
    iget-boolean v3, p0, Lcom/cooliris/media/GridLayer;->mStateChangeToFullScreen:Z

    if-nez v3, :cond_c

    .line 1636
    iget-object v3, p0, Lcom/cooliris/media/GridLayer;->mDrawManager:Lcom/cooliris/media/GridDrawManager;

    invoke-virtual {v3, v5}, Lcom/cooliris/media/GridDrawManager;->setNewImage(Lcom/cooliris/media/MediaItem;)V

    .line 1653
    :goto_b
    return v2

    .line 1639
    :cond_c
    iput-boolean v2, p0, Lcom/cooliris/media/GridLayer;->mStateChangeToFullScreen:Z

    .line 1640
    iget-object v3, p0, Lcom/cooliris/media/GridLayer;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v3, v3, Lcom/cooliris/media/IndexRange;->begin:I

    sub-int v1, p1, v3

    .line 1641
    .local v1, index:I
    if-ltz v1, :cond_36

    iget-object v3, p0, Lcom/cooliris/media/GridLayer;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v3, v3, Lcom/cooliris/media/IndexRange;->end:I

    if-gt p1, v3, :cond_36

    .line 1642
    sget-object v3, Lcom/cooliris/media/GridLayer;->mDisplayItems:[Lcom/cooliris/media/DisplayItem;

    mul-int/lit8 v4, v1, 0xc

    aget-object v0, v3, v4

    .line 1643
    .local v0, displayItem:Lcom/cooliris/media/DisplayItem;
    if-eqz v0, :cond_36

    .line 1644
    const/4 v3, -0x1

    if-eq p1, v3, :cond_36

    iget-object v3, p0, Lcom/cooliris/media/GridLayer;->mCompleteRange:Lcom/cooliris/media/IndexRange;

    iget v3, v3, Lcom/cooliris/media/IndexRange;->end:I

    if-gt p1, v3, :cond_36

    .line 1645
    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mDrawManager:Lcom/cooliris/media/GridDrawManager;

    iget-object v3, v0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    invoke-virtual {v2, v3}, Lcom/cooliris/media/GridDrawManager;->setNewImage(Lcom/cooliris/media/MediaItem;)V

    .line 1646
    const/4 v2, 0x1

    goto :goto_b

    .line 1652
    .end local v0           #displayItem:Lcom/cooliris/media/DisplayItem;
    :cond_36
    iget-object v3, p0, Lcom/cooliris/media/GridLayer;->mDrawManager:Lcom/cooliris/media/GridDrawManager;

    invoke-virtual {v3, v5}, Lcom/cooliris/media/GridDrawManager;->setNewImage(Lcom/cooliris/media/MediaItem;)V

    goto :goto_b
.end method

.method public checkNoItem()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1182
    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    if-eqz v1, :cond_2a

    .line 1183
    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v1}, Lcom/cooliris/media/MediaFeed;->isLoading()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v1}, Lcom/cooliris/media/MediaFeed;->getMediaSets()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1a

    .line 1193
    :cond_19
    :goto_19
    return v0

    .line 1186
    :cond_1a
    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v1}, Lcom/cooliris/media/MediaFeed;->isLoading()Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v1}, Lcom/cooliris/media/MediaFeed;->getClusterSize()I

    move-result v1

    if-eqz v1, :cond_19

    .line 1193
    :cond_2a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public clearUnusedThumbnails()V
    .registers 3

    .prologue
    .line 1110
    sget-object v0, Lcom/cooliris/media/GridLayer;->mDisplayList:Lcom/cooliris/media/DisplayList;

    sget-object v1, Lcom/cooliris/media/GridLayer;->mDisplayItems:[Lcom/cooliris/media/DisplayItem;

    invoke-virtual {v0, v1}, Lcom/cooliris/media/DisplayList;->clearExcept([Lcom/cooliris/media/DisplayItem;)V

    .line 1111
    return-void
.end method

.method constrainCameraForSlot(I)Z
    .registers 8
    .parameter "slotIndex"

    .prologue
    .line 771
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mCameraManager:Lcom/cooliris/media/GridCameraManager;

    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mLayoutInterface:Lcom/cooliris/media/LayoutInterface;

    sget-object v3, Lcom/cooliris/media/GridLayer;->mDeltaAnchorPosition:Lcom/cooliris/media/Vector3f;

    iget v4, p0, Lcom/cooliris/media/GridLayer;->mCurrentFocusItemWidth:F

    iget v5, p0, Lcom/cooliris/media/GridLayer;->mCurrentFocusItemHeight:F

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/cooliris/media/GridCameraManager;->constrainCameraForSlot(Lcom/cooliris/media/LayoutInterface;ILcom/cooliris/media/Vector3f;FF)Z

    move-result v0

    return v0
.end method

.method public deleteSelection()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1881
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1882
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v0

    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    .line 1898
    :goto_21
    return-void

    .line 1887
    :cond_22
    iget v0, p0, Lcom/cooliris/media/GridLayer;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3d

    .line 1888
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v0

    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    .line 1892
    :cond_3d
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/cooliris/media/MediaFeed;->performOperation(ILjava/util/ArrayList;Ljava/lang/Object;)V

    goto :goto_21
.end method

.method public deselect()V
    .registers 2

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mSelectedBucketList:Lcom/cooliris/media/MediaBucketList;

    invoke-virtual {v0}, Lcom/cooliris/media/MediaBucketList;->clear()V

    .line 1848
    invoke-direct {p0}, Lcom/cooliris/media/GridLayer;->updateCountOfSelectedItems()V

    .line 1849
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->computeBottomMenu()V

    .line 1850
    return-void
.end method

.method public deselectAll()V
    .registers 2

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->cancelSelection()V

    .line 1854
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mSelectedBucketList:Lcom/cooliris/media/MediaBucketList;

    invoke-virtual {v0}, Lcom/cooliris/media/MediaBucketList;->clear()V

    .line 1855
    invoke-direct {p0}, Lcom/cooliris/media/GridLayer;->updateCountOfSelectedItems()V

    .line 1856
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->computeBottomMenu()V

    .line 1857
    return-void
.end method

.method public deselectOrCancelSelectMode()V
    .registers 3

    .prologue
    .line 1835
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mSelectedBucketList:Lcom/cooliris/media/MediaBucketList;

    invoke-virtual {v0}, Lcom/cooliris/media/MediaBucketList;->size()I

    move-result v0

    if-eqz v0, :cond_10

    .line 1836
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mSelectedBucketList:Lcom/cooliris/media/MediaBucketList;

    invoke-virtual {v0}, Lcom/cooliris/media/MediaBucketList;->clear()V

    .line 1837
    invoke-direct {p0}, Lcom/cooliris/media/GridLayer;->updateCountOfSelectedItems()V

    .line 1839
    :cond_10
    iget v0, p0, Lcom/cooliris/media/GridLayer;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    .line 1840
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v0}, Lcom/cooliris/media/GridInputProcessor;->clearFocus()V

    .line 1841
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v0}, Lcom/cooliris/media/GridInputProcessor;->clearSelection()V

    .line 1844
    :cond_1f
    return-void
.end method

.method protected disableLocationFiltering()V
    .registers 2

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/cooliris/media/GridLayer;->mLocationFilter:Z

    if-eqz v0, :cond_15

    .line 617
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cooliris/media/GridLayer;->mLocationFilter:Z

    .line 618
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v0}, Lcom/cooliris/media/MediaFeed;->removeFilter()V

    .line 619
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->getPathBar()Lcom/cooliris/media/PathBarLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/PathBarLayer;->popLabel()Lcom/cooliris/media/PathBarLayer$Component;

    .line 621
    :cond_15
    return-void
.end method

.method protected enableLocationFiltering(Ljava/lang/String;)V
    .registers 5
    .parameter "label"

    .prologue
    .line 595
    iget-boolean v0, p0, Lcom/cooliris/media/GridLayer;->mLocationFilter:Z

    if-nez v0, :cond_1a

    .line 596
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/GridLayer;->mLocationFilter:Z

    .line 597
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->getPathBar()Lcom/cooliris/media/PathBarLayer;

    move-result-object v0

    sget-object v1, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v1, 0x7f020049

    new-instance v2, Lcom/cooliris/media/GridLayer$4;

    invoke-direct {v2, p0}, Lcom/cooliris/media/GridLayer$4;-><init>(Lcom/cooliris/media/GridLayer;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/cooliris/media/PathBarLayer;->pushLabel(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 613
    :cond_1a
    return-void
.end method

.method public endSlideshow()V
    .registers 3

    .prologue
    .line 667
    iget-boolean v0, p0, Lcom/cooliris/media/GridLayer;->mSlideshowMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 668
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->deselectAll()V

    .line 669
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/cooliris/media/HudLayer;->setAlpha(F)V

    .line 671
    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cooliris/media/GridLayer;->mSlideshowMode:Z

    .line 672
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_26

    .line 673
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 674
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 676
    :cond_23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cooliris/media/GridLayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 678
    :cond_26
    return-void
.end method

.method public enterSelectionMode(Z)V
    .registers 6
    .parameter "callHudSelection"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2077
    iput-boolean v3, p0, Lcom/cooliris/media/GridLayer;->mSlideshowMode:Z

    .line 2078
    iget-boolean v1, p0, Lcom/cooliris/media/GridLayer;->mFeedAboutToChange:Z

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mCompleteRange:Lcom/cooliris/media/IndexRange;

    iget v1, v1, Lcom/cooliris/media/IndexRange;->end:I

    if-eq v1, v2, :cond_14

    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->getPickIntent()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2089
    :cond_14
    :goto_14
    return-void

    .line 2080
    :cond_15
    if-eqz p1, :cond_1c

    .line 2081
    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v1}, Lcom/cooliris/media/HudLayer;->enterSelectionMode()V

    .line 2082
    :cond_1c
    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v1}, Lcom/cooliris/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v0

    .line 2083
    .local v0, currentSlot:I
    if-ne v0, v2, :cond_2a

    .line 2084
    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v1}, Lcom/cooliris/media/GridInputProcessor;->getCurrentFocusSlot()I

    move-result v0

    .line 2086
    :cond_2a
    iget v1, p0, Lcom/cooliris/media/GridLayer;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_14

    .line 2087
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v3, v1}, Lcom/cooliris/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    goto :goto_14
.end method

.method public feedAboutToChange()Z
    .registers 2

    .prologue
    .line 2209
    iget-boolean v0, p0, Lcom/cooliris/media/GridLayer;->mFeedAboutToChange:Z

    return v0
.end method

.method public focusItem(Ljava/lang/String;)V
    .registers 4
    .parameter "contentUri"

    .prologue
    .line 2367
    iput-object p1, p0, Lcom/cooliris/media/GridLayer;->mRequestFocusContentUri:Ljava/lang/String;

    .line 2368
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    if-eqz v0, :cond_c

    .line 2369
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cooliris/media/MediaFeed;->updateListener(Z)V

    .line 2371
    :cond_c
    return-void
.end method

.method public generate(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RenderView$Lists;)V
    .registers 4
    .parameter "view"
    .parameter "lists"

    .prologue
    .line 360
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->updateList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->opaqueList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mBackground:Lcom/cooliris/media/BackgroundLayer;

    invoke-virtual {v0, p1, p2}, Lcom/cooliris/media/BackgroundLayer;->generate(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RenderView$Lists;)V

    .line 363
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->blendedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mBoundaryLayer:Lcom/cooliris/media/BoundaryLayer;

    invoke-virtual {v0, p1, p2}, Lcom/cooliris/media/BoundaryLayer;->generate(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RenderView$Lists;)V

    .line 365
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->hitTestList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v0, p1, p2}, Lcom/cooliris/media/HudLayer;->generate(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RenderView$Lists;)V

    .line 367
    return-void
.end method

.method public getAnchorDisplayItem(I)Lcom/cooliris/media/DisplayItem;
    .registers 5
    .parameter "type"

    .prologue
    .line 1535
    invoke-virtual {p0, p1}, Lcom/cooliris/media/GridLayer;->getAnchorSlotIndex(I)I

    move-result v1

    .line 1536
    .local v1, slotIndex:I
    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v2, v2, Lcom/cooliris/media/IndexRange;->begin:I

    sub-int v2, v1, v2

    mul-int/lit8 v0, v2, 0xc

    .line 1537
    .local v0, index:I
    if-ltz v0, :cond_17

    const/16 v2, 0x480

    if-ge v0, v2, :cond_17

    .line 1538
    sget-object v2, Lcom/cooliris/media/GridLayer;->mDisplayItems:[Lcom/cooliris/media/DisplayItem;

    aget-object v2, v2, v0

    .line 1540
    :goto_16
    return-object v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public getAnchorSlotIndex(I)I
    .registers 5
    .parameter "anchorType"

    .prologue
    .line 1595
    const/4 v0, 0x0

    .line 1596
    .local v0, retVal:I
    packed-switch p1, :pswitch_data_1c

    .line 1609
    :goto_4
    return v0

    .line 1598
    :pswitch_5
    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v0, v1, Lcom/cooliris/media/IndexRange;->begin:I

    .line 1599
    goto :goto_4

    .line 1601
    :pswitch_a
    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v0, v1, Lcom/cooliris/media/IndexRange;->end:I

    .line 1602
    goto :goto_4

    .line 1604
    :pswitch_f
    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v1, v1, Lcom/cooliris/media/IndexRange;->begin:I

    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v2, v2, Lcom/cooliris/media/IndexRange;->end:I

    add-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 1605
    goto :goto_4

    .line 1596
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_a
        :pswitch_f
    .end packed-switch
.end method

.method getBorder()I
    .registers 3

    .prologue
    .line 3133
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->getZoomValue()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_11

    .line 3134
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mCamera:Lcom/cooliris/media/GridCamera;

    invoke-virtual {v0}, Lcom/cooliris/media/GridCamera;->getBorder()I

    move-result v0

    .line 3136
    :goto_10
    return v0

    :cond_11
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mCameraManager:Lcom/cooliris/media/GridCameraManager;

    invoke-virtual {v0}, Lcom/cooliris/media/GridCameraManager;->getBorder()I

    move-result v0

    goto :goto_10
.end method

.method getBoundaryLayer()Lcom/cooliris/media/BoundaryLayer;
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mBoundaryLayer:Lcom/cooliris/media/BoundaryLayer;

    return-object v0
.end method

.method public getBufferedVisibleRange()Lcom/cooliris/media/IndexRange;
    .registers 2

    .prologue
    .line 712
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    return-object v0
.end method

.method public getCompleteRange()Lcom/cooliris/media/IndexRange;
    .registers 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mCompleteRange:Lcom/cooliris/media/IndexRange;

    return-object v0
.end method

.method public getCurrentSelectedDisplayItem()Lcom/cooliris/media/DisplayItem;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 2459
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_18

    .line 2460
    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v1}, Lcom/cooliris/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v1

    .line 2462
    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v2, v2, Lcom/cooliris/media/IndexRange;->begin:I

    sub-int v2, v1, v2

    const/16 v3, 0x60

    if-lt v2, v3, :cond_19

    .line 2482
    :cond_18
    :goto_18
    return-object v0

    .line 2467
    :cond_19
    :try_start_19
    sget-object v2, Lcom/cooliris/media/GridLayer;->mDisplayItems:[Lcom/cooliris/media/DisplayItem;

    iget-object v3, p0, Lcom/cooliris/media/GridLayer;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v3, v3, Lcom/cooliris/media/IndexRange;->begin:I

    sub-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0xc

    aget-object v1, v2, v1
    :try_end_24
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_19 .. :try_end_24} :catch_28
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_24} :catch_46

    .line 2477
    if-eqz v1, :cond_18

    move-object v0, v1

    .line 2478
    goto :goto_18

    .line 2469
    :catch_28
    move-exception v1

    .line 2470
    const-string v2, "GridLayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFullImageLoaded() ArrayIndexOutOfBoundsException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 2472
    :catch_46
    move-exception v1

    .line 2473
    const-string v2, "GridLayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFullImageLoaded() Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public getDataSource()Lcom/cooliris/media/DataSource;
    .registers 2

    .prologue
    .line 686
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    if-eqz v0, :cond_b

    .line 687
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v0}, Lcom/cooliris/media/MediaFeed;->getDataSource()Lcom/cooliris/media/DataSource;

    move-result-object v0

    .line 688
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getDeltaAnchorPosition()Lcom/cooliris/media/Vector3f;
    .registers 2

    .prologue
    .line 2217
    sget-object v0, Lcom/cooliris/media/GridLayer;->mDeltaAnchorPosition:Lcom/cooliris/media/Vector3f;

    return-object v0
.end method

.method getDisplayItemForSlotId(I)Lcom/cooliris/media/DisplayItem;
    .registers 5
    .parameter "slotId"

    .prologue
    .line 1613
    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v1, v1, Lcom/cooliris/media/IndexRange;->begin:I

    sub-int v0, p1, v1

    .line 1614
    .local v0, index:I
    if-ltz v0, :cond_15

    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v1, v1, Lcom/cooliris/media/IndexRange;->end:I

    if-gt p1, v1, :cond_15

    .line 1615
    sget-object v1, Lcom/cooliris/media/GridLayer;->mDisplayItems:[Lcom/cooliris/media/DisplayItem;

    mul-int/lit8 v2, v0, 0xc

    aget-object v1, v1, v2

    .line 1617
    :goto_14
    return-object v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public getExpandedSlot()I
    .registers 2

    .prologue
    .line 2221
    iget v0, p0, Lcom/cooliris/media/GridLayer;->mCurrentExpandedSlot:I

    return v0
.end method

.method public getFeed()Lcom/cooliris/media/MediaFeed;
    .registers 2

    .prologue
    .line 2359
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    return-object v0
.end method

.method public getFillScreenZoomValue()F
    .registers 5

    .prologue
    .line 2092
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mCamera:Lcom/cooliris/media/GridCamera;

    sget-object v1, Lcom/cooliris/media/GridLayer;->mTempVec:Lcom/cooliris/media/Pool;

    iget v2, p0, Lcom/cooliris/media/GridLayer;->mCurrentFocusItemWidth:F

    iget v3, p0, Lcom/cooliris/media/GridLayer;->mCurrentFocusItemHeight:F

    invoke-static {v0, v1, v2, v3}, Lcom/cooliris/media/GridCameraManager;->getFillScreenZoomValue(Lcom/cooliris/media/GridCamera;Lcom/cooliris/media/Pool;FF)F

    move-result v0

    return v0
.end method

.method public getGridCamera()Lcom/cooliris/media/GridCamera;
    .registers 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mCamera:Lcom/cooliris/media/GridCamera;

    return-object v0
.end method

.method public getGridInputProcessor()Lcom/cooliris/media/GridInputProcessor;
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    return-object v0
.end method

.method public getHud()Lcom/cooliris/media/HudLayer;
    .registers 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    return-object v0
.end method

.method public getLayoutInterface()Lcom/cooliris/media/GridLayoutInterface;
    .registers 2

    .prologue
    .line 2225
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mLayoutInterface:Lcom/cooliris/media/LayoutInterface;

    check-cast v0, Lcom/cooliris/media/GridLayoutInterface;

    return-object v0
.end method

.method public getMetadataSlotIndexForScreenPosition(II)I
    .registers 7
    .parameter "posX"
    .parameter "posY"

    .prologue
    const/high16 v3, 0x42c8

    .line 1961
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mCamera:Lcom/cooliris/media/GridCamera;

    iget v0, v0, Lcom/cooliris/media/GridCamera;->mItemWidth:I

    sget v1, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mCamera:Lcom/cooliris/media/GridCamera;

    iget v1, v1, Lcom/cooliris/media/GridCamera;->mItemHeight:I

    sget v2, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/cooliris/media/GridLayer;->getSlotForScreenPosition(IIII)I

    move-result v0

    return v0
.end method

.method public getMultiplePickIntent()Z
    .registers 2

    .prologue
    .line 2278
    iget-boolean v0, p0, Lcom/cooliris/media/GridLayer;->mMultiplePickIntent:Z

    return v0
.end method

.method public getPickIntent()Z
    .registers 2

    .prologue
    .line 2254
    iget-boolean v0, p0, Lcom/cooliris/media/GridLayer;->mPickIntent:Z

    return v0
.end method

.method public getRepresentativeDisplayItem()Lcom/cooliris/media/DisplayItem;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1515
    iget-object v3, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v3}, Lcom/cooliris/media/MediaFeed;->isLoading()Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->checkNoItem()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1530
    :cond_13
    :goto_13
    return-object v2

    .line 1519
    :cond_14
    const/4 v1, -0x1

    .line 1520
    .local v1, slotIndex:I
    iget-object v3, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    if-eqz v3, :cond_1f

    .line 1521
    iget-object v3, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v3}, Lcom/cooliris/media/GridInputProcessor;->getCurrentFocusSlot()I

    move-result v1

    .line 1523
    :cond_1f
    const/4 v3, -0x1

    if-ne v1, v3, :cond_27

    .line 1524
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/cooliris/media/GridLayer;->getAnchorSlotIndex(I)I

    move-result v1

    .line 1526
    :cond_27
    iget-object v3, p0, Lcom/cooliris/media/GridLayer;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v3, v3, Lcom/cooliris/media/IndexRange;->begin:I

    sub-int v3, v1, v3

    mul-int/lit8 v0, v3, 0xc

    .line 1527
    .local v0, index:I
    if-ltz v0, :cond_13

    const/16 v3, 0x480

    if-ge v0, v3, :cond_13

    .line 1528
    sget-object v2, Lcom/cooliris/media/GridLayer;->mDisplayItems:[Lcom/cooliris/media/DisplayItem;

    aget-object v2, v2, v0

    goto :goto_13
.end method

.method public getScrollPosition()F
    .registers 3

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mCamera:Lcom/cooliris/media/GridCamera;

    iget v0, v0, Lcom/cooliris/media/GridCamera;->mLookAtX:F

    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mCamera:Lcom/cooliris/media/GridCamera;

    iget v1, v1, Lcom/cooliris/media/GridCamera;->mScale:F

    mul-float/2addr v0, v1

    sget-object v1, Lcom/cooliris/media/GridLayer;->mDeltaAnchorPosition:Lcom/cooliris/media/Vector3f;

    iget v1, v1, Lcom/cooliris/media/Vector3f;->x:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getSelectedBuckets()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaBucket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1768
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mSelectedBucketList:Lcom/cooliris/media/MediaBucketList;

    invoke-virtual {v0}, Lcom/cooliris/media/MediaBucketList;->get()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSlotIndexForScreenPosition(II)I
    .registers 5
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 1967
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mCamera:Lcom/cooliris/media/GridCamera;

    iget v0, v0, Lcom/cooliris/media/GridCamera;->mItemWidth:I

    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mCamera:Lcom/cooliris/media/GridCamera;

    iget v1, v1, Lcom/cooliris/media/GridCamera;->mItemHeight:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/cooliris/media/GridLayer;->getSlotForScreenPosition(IIII)I

    move-result v0

    return v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 381
    iget v0, p0, Lcom/cooliris/media/GridLayer;->mState:I

    return v0
.end method

.method public getViewIntent()Z
    .registers 2

    .prologue
    .line 2338
    iget-boolean v0, p0, Lcom/cooliris/media/GridLayer;->mViewIntent:Z

    return v0
.end method

.method public getVisibleRange()Lcom/cooliris/media/IndexRange;
    .registers 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mVisibleRange:Lcom/cooliris/media/IndexRange;

    return-object v0
.end method

.method public getZoomValue()F
    .registers 2

    .prologue
    .line 2205
    iget v0, p0, Lcom/cooliris/media/GridLayer;->mZoomValue:F

    return v0
.end method

.method public goBack()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 624
    iget-boolean v3, p0, Lcom/cooliris/media/GridLayer;->mFeedAboutToChange:Z

    if-eqz v3, :cond_7

    .line 662
    :goto_6
    return v1

    .line 627
    :cond_7
    iget v0, p0, Lcom/cooliris/media/GridLayer;->mState:I

    .line 628
    .local v0, state:I
    iget-object v3, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v3}, Lcom/cooliris/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1f

    .line 629
    iget-boolean v3, p0, Lcom/cooliris/media/GridLayer;->mLocationFilter:Z

    if-eqz v3, :cond_1f

    .line 630
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->disableLocationFiltering()V

    .line 631
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/cooliris/media/GridLayer;->setState(I)V

    move v1, v2

    .line 632
    goto :goto_6

    .line 635
    :cond_1f
    packed-switch v0, :pswitch_data_5a

    goto :goto_6

    .line 637
    :pswitch_23
    invoke-virtual {p0, v1}, Lcom/cooliris/media/GridLayer;->setState(I)V

    .line 638
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->getMultiplePickIntent()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 639
    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v1}, Lcom/cooliris/media/HudLayer;->cancelSelection()V

    :cond_31
    :goto_31
    move v1, v2

    .line 662
    goto :goto_6

    .line 643
    :pswitch_33
    invoke-virtual {p0, v2}, Lcom/cooliris/media/GridLayer;->setState(I)V

    goto :goto_31

    .line 646
    :pswitch_37
    sget-boolean v3, Lcom/cooliris/media/Utils;->mSupportDNIE:Z

    if-eqz v3, :cond_3e

    .line 647
    invoke-static {v1}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)V

    .line 649
    :cond_3e
    iput-boolean v1, p0, Lcom/cooliris/media/GridLayer;->mFirstFullScreenDraw:Z

    .line 650
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->deselectAll()V

    .line 651
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->getViewIntent()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 652
    invoke-virtual {p0, v1}, Lcom/cooliris/media/GridLayer;->setState(I)V

    .line 653
    invoke-virtual {p0, v1}, Lcom/cooliris/media/GridLayer;->setViewIntent(Z)V

    .line 657
    :goto_4f
    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v1}, Lcom/cooliris/media/GridInputProcessor;->clearSelection()V

    goto :goto_31

    .line 655
    :cond_55
    invoke-virtual {p0, v2}, Lcom/cooliris/media/GridLayer;->setState(I)V

    goto :goto_4f

    .line 635
    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_23
        :pswitch_37
        :pswitch_33
    .end packed-switch
.end method

.method public handleLowMemory()V
    .registers 2

    .prologue
    .line 1103
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->clearUnusedThumbnails()V

    .line 1104
    sget-object v0, Lcom/cooliris/media/GridDrawables;->sStringTextureTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1105
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mBackground:Lcom/cooliris/media/BackgroundLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/BackgroundLayer;->clearCache()V

    .line 1106
    return-void
.end method

.method public inSlideShowMode()Z
    .registers 2

    .prologue
    .line 2185
    iget-boolean v0, p0, Lcom/cooliris/media/GridLayer;->mSlideshowMode:Z

    return v0
.end method

.method public isFullImageLoaded()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2428
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_74

    .line 2429
    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v2}, Lcom/cooliris/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v2

    .line 2431
    iget-object v3, p0, Lcom/cooliris/media/GridLayer;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v3, v3, Lcom/cooliris/media/IndexRange;->begin:I

    sub-int v3, v2, v3

    const/16 v4, 0x60

    if-lt v3, v4, :cond_1a

    .line 2455
    :cond_19
    :goto_19
    return v0

    .line 2436
    :cond_1a
    :try_start_1a
    sget-object v3, Lcom/cooliris/media/GridLayer;->mDisplayItems:[Lcom/cooliris/media/DisplayItem;

    iget-object v4, p0, Lcom/cooliris/media/GridLayer;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v4, v4, Lcom/cooliris/media/IndexRange;->begin:I

    sub-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0xc

    aget-object v2, v3, v2
    :try_end_25
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1a .. :try_end_25} :catch_38
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_25} :catch_56

    .line 2446
    if-eqz v2, :cond_19

    .line 2447
    iget-object v3, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/cooliris/media/DisplayItem;->getScreennailImage(Landroid/content/Context;)Lcom/cooliris/media/Texture;

    move-result-object v2

    .line 2448
    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lcom/cooliris/media/Texture;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_19

    move v0, v1

    .line 2449
    goto :goto_19

    .line 2438
    :catch_38
    move-exception v1

    .line 2439
    const-string v2, "GridLayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFullImageLoaded() ArrayIndexOutOfBoundsException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 2441
    :catch_56
    move-exception v1

    .line 2442
    const-string v2, "GridLayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFullImageLoaded() Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :cond_74
    move v0, v1

    .line 2455
    goto :goto_19
.end method

.method public isItemExistInSelectedBucketList(I)Z
    .registers 4
    .parameter "slotId"

    .prologue
    .line 3124
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    .line 3125
    .local v0, feed:Lcom/cooliris/media/MediaFeed;
    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mSelectedBucketList:Lcom/cooliris/media/MediaBucketList;

    invoke-virtual {v1, p1, v0}, Lcom/cooliris/media/MediaBucketList;->findItem(ILcom/cooliris/media/MediaFeed;)Z

    move-result v1

    return v1
.end method

.method public markDirty(I)V
    .registers 2
    .parameter "numFrames"

    .prologue
    .line 2363
    iput p1, p0, Lcom/cooliris/media/GridLayer;->mFramesDirty:I

    .line 2364
    return-void
.end method

.method public noDeleteMode()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2190
    :try_start_2
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->getFeed()Lcom/cooliris/media/MediaFeed;

    move-result-object v2

    if-eqz v2, :cond_60

    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->getFeed()Lcom/cooliris/media/MediaFeed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cooliris/media/MediaFeed;->getCurrentSet()Lcom/cooliris/media/MediaSet;

    move-result-object v2

    if-eqz v2, :cond_60

    .line 2191
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->getFeed()Lcom/cooliris/media/MediaFeed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cooliris/media/MediaFeed;->getCurrentSet()Lcom/cooliris/media/MediaSet;

    move-result-object v2

    iget-wide v2, v2, Lcom/cooliris/media/MediaSet;->mPicasaAlbumId:J
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_1c} :catch_24
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1c} :catch_42

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_60

    move v0, v1

    .line 2201
    :cond_23
    :goto_23
    return v0

    .line 2194
    :catch_24
    move-exception v1

    .line 2195
    const-string v2, "GridLayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "noDeleteMode() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 2197
    :catch_42
    move-exception v1

    .line 2198
    const-string v2, "GridLayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "noDeleteMode() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 2201
    :cond_60
    iget-boolean v2, p0, Lcom/cooliris/media/GridLayer;->mNoDeleteMode:Z

    if-nez v2, :cond_70

    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v2}, Lcom/cooliris/media/MediaFeed;->isSingleImageMode()Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_70
    move v0, v1

    goto :goto_23
.end method

.method public onFeedAboutToChange(Lcom/cooliris/media/MediaFeed;)V
    .registers 3
    .parameter "feed"

    .prologue
    .line 2057
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/GridLayer;->mFeedAboutToChange:Z

    .line 2058
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooliris/media/GridLayer;->mTimeElapsedSinceTransition:F

    .line 2059
    return-void
.end method

.method public declared-synchronized onFeedChanged(Lcom/cooliris/media/MediaFeed;Z)V
    .registers 19
    .parameter
    .parameter

    .prologue
    .line 1329
    monitor-enter p0

    if-nez p2, :cond_45

    .line 1330
    const/4 v2, 0x1

    :try_start_4
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/cooliris/media/GridLayer;->mFeedChanged:Z

    .line 1332
    move-object/from16 v0, p0

    iget v2, v0, Lcom/cooliris/media/GridLayer;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_19

    .line 1333
    const-string v2, "GridLayer"

    const-string v3, "feed.performClustering"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/MediaFeed;->performClustering()V

    .line 1336
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/cooliris/media/GridLayer;->forceRecomputeVisibleRange()V

    .line 1337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_42

    if-nez v2, :cond_24

    .line 1511
    :cond_22
    :goto_22
    monitor-exit p0

    return-void

    .line 1345
    :cond_24
    :try_start_24
    move-object/from16 v0, p0

    iget v2, v0, Lcom/cooliris/media/GridLayer;->mState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_32

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cooliris/media/GridLayer;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_22

    .line 1346
    :cond_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/cooliris/media/GridLayer;->mState:I

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v3, v1}, Lcom/cooliris/media/HudLayer;->setFeed(Lcom/cooliris/media/MediaFeed;IZ)V
    :try_end_41
    .catchall {:try_start_24 .. :try_end_41} :catchall_42

    goto :goto_22

    .line 1329
    :catchall_42
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1358
    :cond_45
    :try_start_45
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    if-eqz v2, :cond_7a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v2}, Lcom/cooliris/media/HudLayer;->getMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cooliris/media/GridLayer;->mState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cooliris/media/GridLayer;->mState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cooliris/media/GridLayer;->mState:I

    if-nez v2, :cond_7a

    .line 1361
    :cond_6a
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/GridLayer;->getMultiplePickIntent()Z

    move-result v2

    if-nez v2, :cond_7a

    .line 1362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer;->mSelectedBucketList:Lcom/cooliris/media/MediaBucketList;

    invoke-virtual {v2}, Lcom/cooliris/media/MediaBucketList;->clear()V

    .line 1363
    invoke-direct/range {p0 .. p0}, Lcom/cooliris/media/GridLayer;->updateCountOfSelectedItems()V

    .line 1367
    :cond_7a
    :goto_7a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/cooliris/media/GridLayer;->mPerformingLayoutChange:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_85

    .line 1368
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_7a

    .line 1370
    :cond_85
    move-object/from16 v0, p0

    iget v2, v0, Lcom/cooliris/media/GridLayer;->mState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_ab

    .line 1371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    if-eqz v2, :cond_ab

    .line 1372
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/MediaFeed;->getCurrentSet()Lcom/cooliris/media/MediaSet;

    move-result-object v2

    .line 1373
    if-eqz v2, :cond_ab

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/cooliris/media/GridLayer;->mLocationFilter:Z

    if-nez v3, :cond_ab

    .line 1374
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v3}, Lcom/cooliris/media/HudLayer;->getPathBar()Lcom/cooliris/media/PathBarLayer;

    move-result-object v3

    iget-object v2, v2, Lcom/cooliris/media/MediaSet;->mNoCountTitleString:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/cooliris/media/PathBarLayer;->changeLabel(Ljava/lang/String;)V

    .line 1377
    :cond_ab
    sget-object v6, Lcom/cooliris/media/GridLayer;->mDisplayItems:[Lcom/cooliris/media/DisplayItem;

    .line 1378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v7, v2, Lcom/cooliris/media/IndexRange;->begin:I

    .line 1379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v8, v2, Lcom/cooliris/media/IndexRange;->end:I

    .line 1384
    move-object/from16 v0, p0

    iget v2, v0, Lcom/cooliris/media/GridLayer;->mState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11e

    .line 1385
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cooliris/media/GridLayer;->getAnchorSlotIndex(I)I

    move-result v2

    .line 1391
    :goto_c7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/GridLayer;->mVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v3, v3, Lcom/cooliris/media/IndexRange;->end:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/GridLayer;->mVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v4, v4, Lcom/cooliris/media/IndexRange;->begin:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    .line 1392
    move-object/from16 v0, p0

    iget v4, v0, Lcom/cooliris/media/GridLayer;->mState:I

    if-nez v4, :cond_127

    if-ge v2, v3, :cond_127

    .line 1393
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cooliris/media/GridLayer;->getAnchorSlotIndex(I)I

    move-result v2

    .line 1397
    :cond_e5
    :goto_e5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/cooliris/media/GridLayer;->mCurrentExpandedSlot:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2a0

    .line 1398
    move-object/from16 v0, p0

    iget v2, v0, Lcom/cooliris/media/GridLayer;->mCurrentExpandedSlot:I

    move v5, v2

    .line 1400
    :goto_f1
    const/4 v2, 0x0

    .line 1401
    sget-object v9, Lcom/cooliris/media/GridLayer;->mVisibleItems:Ljava/util/ArrayList;

    .line 1402
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1403
    sub-int v3, v8, v7

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V
    :try_end_fc
    .catchall {:try_start_45 .. :try_end_fc} :catchall_42

    .line 1404
    const/4 v3, -0x1

    if-eq v5, v3, :cond_29d

    if-lt v5, v7, :cond_29d

    if-gt v5, v8, :cond_29d

    .line 1407
    sub-int v3, v5, v7

    mul-int/lit8 v4, v3, 0xc

    .line 1409
    const/4 v3, 0x0

    :goto_108
    const/16 v10, 0xc

    if-ge v3, v10, :cond_29a

    .line 1411
    add-int v10, v4, v3

    :try_start_10e
    aget-object v10, v6, v10

    .line 1412
    if-eqz v10, :cond_11b

    .line 1413
    if-nez v2, :cond_116

    .line 1414
    iget-object v2, v10, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    .line 1416
    :cond_116
    iget-object v10, v10, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_11b
    .catchall {:try_start_10e .. :try_end_11b} :catchall_42
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_10e .. :try_end_11b} :catch_136

    .line 1409
    :cond_11b
    add-int/lit8 v3, v3, 0x1

    goto :goto_108

    .line 1387
    :cond_11e
    :try_start_11e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v2}, Lcom/cooliris/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v2

    goto :goto_c7

    .line 1394
    :cond_127
    move-object/from16 v0, p0

    iget v3, v0, Lcom/cooliris/media/GridLayer;->mState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_e5

    .line 1395
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/cooliris/media/GridLayer;->getAnchorSlotIndex(I)I

    move-result v2

    goto :goto_e5

    .line 1418
    :catch_136
    move-exception v10

    .line 1419
    const-string v10, "GridLayer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "displayItems.length: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", baseIndex: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, ", i: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v2

    .line 1426
    :goto_165
    sub-int v2, v8, v7

    add-int/lit8 v10, v2, 0x1

    .line 1427
    sub-int v2, v8, v7

    div-int/lit8 v8, v2, 0x2

    .line 1428
    array-length v11, v6

    .line 1429
    const/4 v2, 0x0

    move v3, v2

    :goto_170
    if-ge v3, v10, :cond_1c9

    .line 1430
    invoke-static {v3}, Lcom/cooliris/media/Shared;->midPointIterator(I)I
    :try_end_175
    .catchall {:try_start_11e .. :try_end_175} :catchall_42

    move-result v2

    add-int/2addr v2, v8

    .line 1431
    sub-int/2addr v2, v7

    mul-int/lit8 v12, v2, 0xc

    .line 1432
    if-ltz v12, :cond_1c5

    if-ge v12, v11, :cond_1c5

    .line 1433
    const/4 v2, 0x0

    :goto_17f
    const/16 v13, 0xc

    if-ge v2, v13, :cond_1c5

    .line 1435
    add-int v13, v12, v2

    :try_start_185
    aget-object v13, v6, v13

    .line 1436
    if-eqz v13, :cond_194

    .line 1437
    iget-object v13, v13, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    .line 1438
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_194

    .line 1439
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_194
    .catchall {:try_start_185 .. :try_end_194} :catchall_42
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_185 .. :try_end_194} :catch_197

    .line 1433
    :cond_194
    add-int/lit8 v2, v2, 0x1

    goto :goto_17f

    .line 1442
    :catch_197
    move-exception v13

    .line 1443
    :try_start_198
    const-string v13, "GridLayer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "displayItems.length: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v15, v6

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", indexIntoDisplayItem: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ", j: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :cond_1c5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_170

    .line 1450
    :cond_1c9
    const/4 v2, -0x1

    .line 1451
    if-eqz v4, :cond_297

    .line 1453
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/MediaFeed;->getNumSlots()I

    move-result v7

    .line 1454
    const/4 v3, 0x0

    :goto_1d1
    if-ge v3, v7, :cond_297

    .line 1455
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/cooliris/media/MediaFeed;->getSetForSlot(I)Lcom/cooliris/media/MediaSet;

    move-result-object v8

    .line 1456
    if-eqz v8, :cond_281

    invoke-virtual {v8}, Lcom/cooliris/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/cooliris/media/ArrayUtils;->contains(Ljava/util/ArrayList;Lcom/cooliris/media/MediaItem;)Z

    move-result v8

    if-eqz v8, :cond_281

    .line 1463
    :goto_1e5
    if-eqz v4, :cond_294

    const/4 v2, -0x1

    if-ne v3, v2, :cond_294

    .line 1464
    invoke-virtual/range {p1 .. p1}, Lcom/cooliris/media/MediaFeed;->getNumSlots()I

    move-result v7

    .line 1465
    iget-object v4, v4, Lcom/cooliris/media/MediaItem;->mParentMediaSet:Lcom/cooliris/media/MediaSet;

    .line 1466
    const/4 v2, 0x0

    :goto_1f1
    if-ge v2, v7, :cond_294

    .line 1467
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/cooliris/media/MediaFeed;->getSetForSlot(I)Lcom/cooliris/media/MediaSet;

    move-result-object v8

    .line 1468
    if-eqz v8, :cond_285

    iget-wide v8, v8, Lcom/cooliris/media/MediaSet;->mId:J

    iget-wide v10, v4, Lcom/cooliris/media/MediaSet;->mId:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_285

    .line 1475
    :goto_203
    const-string v3, "GridLayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Slot changing from "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    const/4 v3, -0x1

    if-eq v2, v3, :cond_289

    .line 1477
    move-object/from16 v0, p0

    iget v3, v0, Lcom/cooliris/media/GridLayer;->mState:I

    if-nez v3, :cond_233

    .line 1478
    sget-object v3, Lcom/cooliris/media/GridLayer;->mDisplayList:Lcom/cooliris/media/DisplayList;

    invoke-virtual {v3, v6}, Lcom/cooliris/media/DisplayList;->clearExcept([Lcom/cooliris/media/DisplayItem;)V

    .line 1493
    :cond_233
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5, v3}, Lcom/cooliris/media/GridLayer;->onLayout(IILcom/cooliris/media/LayoutInterface;)V

    .line 1498
    :goto_239
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/cooliris/media/GridLayer;->mCurrentExpandedSlot:I

    .line 1499
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/cooliris/media/GridLayer;->mFeedAboutToChange:Z

    .line 1500
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/cooliris/media/GridLayer;->mFeedChanged:Z

    .line 1501
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/cooliris/media/GridLayer;->mRequestFocusContentUri:Ljava/lang/String;

    .line 1503
    if-eqz p1, :cond_272

    .line 1504
    move-object/from16 v0, p0

    iget v2, v0, Lcom/cooliris/media/GridLayer;->mState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_25d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/cooliris/media/GridLayer;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_272

    .line 1505
    :cond_25d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    if-eqz v2, :cond_272

    .line 1506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/cooliris/media/GridLayer;->mState:I

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v3, v1}, Lcom/cooliris/media/HudLayer;->setFeed(Lcom/cooliris/media/MediaFeed;IZ)V

    .line 1508
    :cond_272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer;->mView:Lcom/cooliris/media/RenderView;

    if-eqz v2, :cond_22

    .line 1509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer;->mView:Lcom/cooliris/media/RenderView;

    invoke-virtual {v2}, Lcom/cooliris/media/RenderView;->requestRender()V

    goto/16 :goto_22

    .line 1454
    :cond_281
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1d1

    .line 1466
    :cond_285
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1f1

    .line 1495
    :cond_289
    const-string v2, "GridLayer"

    const-string v3, "forceRecomputeVisibleRange"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    invoke-direct/range {p0 .. p0}, Lcom/cooliris/media/GridLayer;->forceRecomputeVisibleRange()V
    :try_end_293
    .catchall {:try_start_198 .. :try_end_293} :catchall_42

    goto :goto_239

    :cond_294
    move v2, v3

    goto/16 :goto_203

    :cond_297
    move v3, v2

    goto/16 :goto_1e5

    :cond_29a
    move-object v4, v2

    goto/16 :goto_165

    :cond_29d
    move-object v4, v2

    goto/16 :goto_165

    :cond_2a0
    move v5, v2

    goto/16 :goto_f1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2179
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    if-eqz v0, :cond_d

    .line 2180
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    iget v1, p0, Lcom/cooliris/media/GridLayer;->mState:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/cooliris/media/GridInputProcessor;->onKeyDown(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 2181
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public declared-synchronized onLayout(IILcom/cooliris/media/LayoutInterface;)V
    .registers 17
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v12, -0x1

    .line 1219
    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lcom/cooliris/media/GridLayer;->mPerformingLayoutChange:Z

    if-nez v1, :cond_10

    sget-object v1, Lcom/cooliris/media/GridLayer;->mDeltaAnchorPosition:Lcom/cooliris/media/Vector3f;

    sget-object v2, Lcom/cooliris/media/GridLayer;->mDeltaAnchorPositionUncommited:Lcom/cooliris/media/Vector3f;

    invoke-virtual {v1, v2}, Lcom/cooliris/media/Vector3f;->equals(Lcom/cooliris/media/Vector3f;)Z
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_ba

    move-result v1

    if-nez v1, :cond_12

    .line 1289
    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    .line 1228
    :cond_12
    const/4 v1, 0x0

    :try_start_13
    iput v1, p0, Lcom/cooliris/media/GridLayer;->mTimeElapsedSinceTransition:F

    .line 1229
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cooliris/media/GridLayer;->mPerformingLayoutChange:Z

    .line 1230
    iget-object v4, p0, Lcom/cooliris/media/GridLayer;->mLayoutInterface:Lcom/cooliris/media/LayoutInterface;

    .line 1231
    if-nez p3, :cond_d7

    .line 1232
    sget-object v3, Lcom/cooliris/media/GridLayer;->sfullScreenLayoutInterface:Lcom/cooliris/media/LayoutInterface;

    .line 1234
    :goto_1e
    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mCamera:Lcom/cooliris/media/GridCamera;

    .line 1235
    if-ne p2, v12, :cond_d4

    .line 1236
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/cooliris/media/GridLayer;->getAnchorSlotIndex(I)I

    move-result p2

    .line 1237
    iget v2, p0, Lcom/cooliris/media/GridLayer;->mCurrentExpandedSlot:I

    if-eq v2, v12, :cond_2d

    .line 1238
    iget p2, p0, Lcom/cooliris/media/GridLayer;->mCurrentExpandedSlot:I

    .line 1240
    :cond_2d
    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v2}, Lcom/cooliris/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v5

    .line 1241
    if-eq v5, v12, :cond_d4

    .line 1245
    :goto_35
    if-ne p1, v12, :cond_38

    move p1, v5

    .line 1248
    :cond_38
    iget v6, v1, Lcom/cooliris/media/GridCamera;->mItemHeight:I

    .line 1249
    iget v7, v1, Lcom/cooliris/media/GridCamera;->mItemWidth:I

    .line 1250
    sget-object v8, Lcom/cooliris/media/GridLayer;->mTempVec:Lcom/cooliris/media/Pool;

    .line 1251
    invoke-virtual {v8}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/Vector3f;

    .line 1252
    invoke-virtual {v8}, Lcom/cooliris/media/Pool;->create()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/Vector3f;
    :try_end_4a
    .catchall {:try_start_13 .. :try_end_4a} :catchall_ba

    .line 1254
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :try_start_4d
    invoke-virtual {v1, v9, v10, v11}, Lcom/cooliris/media/Vector3f;->set(FFF)V

    .line 1255
    if-eq v5, v12, :cond_68

    if-eq p1, v12, :cond_68

    .line 1256
    invoke-virtual {v4, p1, v7, v6, v1}, Lcom/cooliris/media/LayoutInterface;->getPositionForSlotIndex(IIILcom/cooliris/media/Vector3f;)V

    .line 1258
    invoke-virtual {v3, v5, v7, v6, v2}, Lcom/cooliris/media/LayoutInterface;->getPositionForSlotIndex(IIILcom/cooliris/media/Vector3f;)V

    .line 1260
    sget-object v5, Lcom/cooliris/media/GridLayer;->mDeltaAnchorPosition:Lcom/cooliris/media/Vector3f;

    invoke-virtual {v2, v5}, Lcom/cooliris/media/Vector3f;->subtract(Lcom/cooliris/media/Vector3f;)V

    .line 1261
    invoke-virtual {v1, v2}, Lcom/cooliris/media/Vector3f;->subtract(Lcom/cooliris/media/Vector3f;)V

    .line 1262
    const/4 v5, 0x0

    iput v5, v1, Lcom/cooliris/media/Vector3f;->y:F

    .line 1263
    const/4 v5, 0x0

    iput v5, v1, Lcom/cooliris/media/Vector3f;->z:F

    .line 1265
    :cond_68
    sget-object v5, Lcom/cooliris/media/GridLayer;->mDeltaAnchorPositionUncommited:Lcom/cooliris/media/Vector3f;

    invoke-virtual {v5, v1}, Lcom/cooliris/media/Vector3f;->set(Lcom/cooliris/media/Vector3f;)V
    :try_end_6d
    .catchall {:try_start_4d .. :try_end_6d} :catchall_cc
    .catch Ljava/lang/NullPointerException; {:try_start_4d .. :try_end_6d} :catch_bd

    .line 1269
    :try_start_6d
    invoke-virtual {v8, v1}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1270
    invoke-virtual {v8, v2}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1272
    :goto_73
    const/high16 v1, 0x3f80

    invoke-virtual {p0, p1, v1}, Lcom/cooliris/media/GridLayer;->centerCameraForSlot(IF)V

    .line 1273
    const/4 v1, -0x1

    iput v1, p0, Lcom/cooliris/media/GridLayer;->mCurrentExpandedSlot:I

    .line 1276
    move-object v0, v3

    check-cast v0, Lcom/cooliris/media/GridLayoutInterface;

    move-object v1, v0

    move-object v0, v4

    check-cast v0, Lcom/cooliris/media/GridLayoutInterface;

    move-object v2, v0

    iget v2, v2, Lcom/cooliris/media/GridLayoutInterface;->mNumRows:I

    iput v2, v1, Lcom/cooliris/media/GridLayoutInterface;->mNumRows:I

    .line 1277
    move-object v0, v3

    check-cast v0, Lcom/cooliris/media/GridLayoutInterface;

    move-object v1, v0

    move-object v0, v4

    check-cast v0, Lcom/cooliris/media/GridLayoutInterface;

    move-object v2, v0

    iget v2, v2, Lcom/cooliris/media/GridLayoutInterface;->mSpacingX:I

    iput v2, v1, Lcom/cooliris/media/GridLayoutInterface;->mSpacingX:I

    .line 1278
    check-cast v3, Lcom/cooliris/media/GridLayoutInterface;

    check-cast v4, Lcom/cooliris/media/GridLayoutInterface;

    iget v1, v4, Lcom/cooliris/media/GridLayoutInterface;->mSpacingY:I

    iput v1, v3, Lcom/cooliris/media/GridLayoutInterface;->mSpacingY:I

    .line 1279
    invoke-direct {p0}, Lcom/cooliris/media/GridLayer;->forceRecomputeVisibleRange()V

    .line 1282
    sget-boolean v1, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v1, :cond_b5

    .line 1283
    invoke-static {}, Lcom/quramsoft/xiv/SFUtils;->getInstance()Lcom/quramsoft/xiv/SFUtils;

    move-result-object v2

    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->getDeltaAnchorPosition()Lcom/cooliris/media/Vector3f;

    move-result-object v1

    iget v3, v1, Lcom/cooliris/media/Vector3f;->x:F

    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mLayoutInterface:Lcom/cooliris/media/LayoutInterface;

    check-cast v1, Lcom/cooliris/media/GridLayoutInterface;

    iget v1, v1, Lcom/cooliris/media/GridLayoutInterface;->mSpacingX:I

    invoke-virtual {v2, v3, v1}, Lcom/quramsoft/xiv/SFUtils;->setAnchorAndSpacing(FI)V

    .line 1288
    :cond_b5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cooliris/media/GridLayer;->mPerformingLayoutChange:Z
    :try_end_b8
    .catchall {:try_start_6d .. :try_end_b8} :catchall_ba

    goto/16 :goto_10

    .line 1219
    :catchall_ba
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1266
    :catch_bd
    move-exception v5

    .line 1267
    :try_start_be
    const-string v5, "GridLayer"

    const-string v6, "Can not set layout!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catchall {:try_start_be .. :try_end_c5} :catchall_cc

    .line 1269
    :try_start_c5
    invoke-virtual {v8, v1}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1270
    invoke-virtual {v8, v2}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    goto :goto_73

    .line 1269
    :catchall_cc
    move-exception v3

    invoke-virtual {v8, v1}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1270
    invoke-virtual {v8, v2}, Lcom/cooliris/media/Pool;->delete(Ljava/lang/Object;)V

    throw v3
    :try_end_d4
    .catchall {:try_start_c5 .. :try_end_d4} :catchall_ba

    :cond_d4
    move v5, p2

    goto/16 :goto_35

    :cond_d7
    move-object/from16 v3, p3

    goto/16 :goto_1e
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 2400
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    if-eqz v0, :cond_9

    .line 2401
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v0}, Lcom/cooliris/media/MediaFeed;->onPause()V

    .line 2404
    :cond_9
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mSelectedBucketList:Lcom/cooliris/media/MediaBucketList;

    invoke-virtual {v0}, Lcom/cooliris/media/MediaBucketList;->clear()V

    .line 2405
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMarkedBucketList:Lcom/cooliris/media/MediaBucketList;

    invoke-virtual {v0}, Lcom/cooliris/media/MediaBucketList;->clear()V

    .line 2407
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mDrawManager:Lcom/cooliris/media/GridDrawManager;

    invoke-virtual {v0}, Lcom/cooliris/media/GridDrawManager;->onPause()V

    .line 2408
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mDrawManager:Lcom/cooliris/media/GridDrawManager;

    invoke-virtual {v0}, Lcom/cooliris/media/GridDrawManager;->clear()V

    .line 2410
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v0}, Lcom/cooliris/media/GridInputProcessor;->clear()V

    .line 2412
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->dialogClose()V

    .line 2414
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMotionDialogShow:Landroid/content/DialogInterface;

    if-eqz v0, :cond_36

    .line 2415
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/GridLayer;->mEndUpdateAnimation:Z

    .line 2416
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMotionDialogShow:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 2417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cooliris/media/GridLayer;->mMotionDialogShow:Landroid/content/DialogInterface;

    .line 2420
    :cond_36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cooliris/media/GridLayer;->mFirstFullScreenDraw:Z

    .line 2421
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 2375
    const-string v0, "GridLayer"

    const-string v1, "GridLayer onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    if-eqz v0, :cond_39

    .line 2377
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v0}, Lcom/cooliris/media/MediaFeed;->onResume()V

    .line 2381
    sget-boolean v0, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v0, :cond_28

    .line 2382
    iget v0, p0, Lcom/cooliris/media/GridLayer;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    .line 2383
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v0}, Lcom/cooliris/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cooliris/media/GridLayer;->getDisplayItemForSlotId(I)Lcom/cooliris/media/DisplayItem;

    move-result-object v0

    .line 2385
    if-eqz v0, :cond_28

    .line 2386
    iput v2, v0, Lcom/cooliris/media/DisplayItem;->mZoomMode:I

    .line 2392
    :cond_28
    iget v0, p0, Lcom/cooliris/media/GridLayer;->mState:I

    if-ne v0, v2, :cond_39

    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->getMultiplePickIntent()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2393
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->enterSelectionMode()V

    .line 2396
    :cond_39
    return-void
.end method

.method public onSensorChanged(Lcom/cooliris/media/RenderView;Landroid/hardware/SensorEvent;)V
    .registers 5
    .parameter "view"
    .parameter "event"

    .prologue
    .line 682
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    iget v1, p0, Lcom/cooliris/media/GridLayer;->mState:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/cooliris/media/GridInputProcessor;->onSensorChanged(Lcom/cooliris/media/RenderView;Landroid/hardware/SensorEvent;I)V

    .line 683
    return-void
.end method

.method protected onSizeChanged()V
    .registers 4

    .prologue
    .line 371
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    iget v1, p0, Lcom/cooliris/media/GridLayer;->mWidth:F

    iget v2, p0, Lcom/cooliris/media/GridLayer;->mHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/HudLayer;->setSize(FF)V

    .line 372
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/cooliris/media/HudLayer;->setAlpha(F)V

    .line 373
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mBackground:Lcom/cooliris/media/BackgroundLayer;

    iget v1, p0, Lcom/cooliris/media/GridLayer;->mWidth:F

    iget v2, p0, Lcom/cooliris/media/GridLayer;->mHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/BackgroundLayer;->setSize(FF)V

    .line 374
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooliris/media/GridLayer;->mTimeElapsedSinceTransition:F

    .line 375
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mView:Lcom/cooliris/media/RenderView;

    if-eqz v0, :cond_25

    .line 376
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mView:Lcom/cooliris/media/RenderView;

    invoke-virtual {v0}, Lcom/cooliris/media/RenderView;->requestRender()V

    .line 378
    :cond_25
    return-void
.end method

.method public onSurfaceChanged(Lcom/cooliris/media/RenderView;II)V
    .registers 7
    .parameter "view"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mCamera:Lcom/cooliris/media/GridCamera;

    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mCamera:Lcom/cooliris/media/GridCamera;

    iget v1, v1, Lcom/cooliris/media/GridCamera;->mItemWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mCamera:Lcom/cooliris/media/GridCamera;

    iget v2, v2, Lcom/cooliris/media/GridCamera;->mItemHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/cooliris/media/GridCamera;->viewportChanged(IIFF)V

    .line 1127
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mCamera:Lcom/cooliris/media/GridCamera;

    iget v0, v0, Lcom/cooliris/media/GridCamera;->mFov:F

    invoke-virtual {p1, v0}, Lcom/cooliris/media/RenderView;->setFov(F)V

    .line 1128
    iget v0, p0, Lcom/cooliris/media/GridLayer;->mState:I

    invoke-virtual {p0, v0}, Lcom/cooliris/media/GridLayer;->setState(I)V

    .line 1129
    return-void
.end method

.method public onSurfaceCreated(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 4
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 1115
    sget-object v0, Lcom/cooliris/media/GridLayer;->mDisplayList:Lcom/cooliris/media/DisplayList;

    invoke-virtual {v0}, Lcom/cooliris/media/DisplayList;->clear()V

    .line 1116
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->clear()V

    .line 1117
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->reset()V

    .line 1118
    sget-object v0, Lcom/cooliris/media/GridDrawables;->sStringTextureTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1119
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mDrawables:Lcom/cooliris/media/GridDrawables;

    invoke-virtual {v0, p1, p2}, Lcom/cooliris/media/GridDrawables;->onSurfaceCreated(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V

    .line 1120
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mBackground:Lcom/cooliris/media/BackgroundLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/BackgroundLayer;->clear()V

    .line 1121
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mBoundaryLayer:Lcom/cooliris/media/BoundaryLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/BoundaryLayer;->reset()V

    .line 1122
    return-void
.end method

.method public onTimeChanged(Lcom/cooliris/media/TimeBar;)V
    .registers 9
    .parameter "timebar"

    .prologue
    .line 2028
    iget-boolean v6, p0, Lcom/cooliris/media/GridLayer;->mFeedAboutToChange:Z

    if-eqz v6, :cond_5

    .line 2053
    :cond_4
    :goto_4
    return-void

    .line 2032
    :cond_5
    invoke-virtual {p1}, Lcom/cooliris/media/TimeBar;->getItem()Lcom/cooliris/media/MediaItem;

    move-result-object v2

    .line 2033
    .local v2, item:Lcom/cooliris/media/MediaItem;
    if-eqz v2, :cond_4

    .line 2035
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    .line 2036
    .local v0, feed:Lcom/cooliris/media/MediaFeed;
    if-eqz v0, :cond_4

    .line 2038
    invoke-virtual {v0}, Lcom/cooliris/media/MediaFeed;->getNumSlots()I

    move-result v4

    .line 2039
    .local v4, numSlots:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    if-ge v1, v4, :cond_4

    .line 2040
    invoke-virtual {v0, v1}, Lcom/cooliris/media/MediaFeed;->getSetForSlot(I)Lcom/cooliris/media/MediaSet;

    move-result-object v5

    .line 2041
    .local v5, set:Lcom/cooliris/media/MediaSet;
    if-eqz v5, :cond_4

    .line 2044
    invoke-virtual {v5}, Lcom/cooliris/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 2045
    .local v3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    if-eqz v3, :cond_4

    invoke-virtual {v5}, Lcom/cooliris/media/MediaSet;->getNumItems()I

    move-result v6

    if-eqz v6, :cond_4

    .line 2048
    invoke-static {v3, v2}, Lcom/cooliris/media/ArrayUtils;->contains(Ljava/util/ArrayList;Lcom/cooliris/media/MediaItem;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 2049
    const/high16 v6, 0x3f80

    invoke-virtual {p0, v1, v6}, Lcom/cooliris/media/GridLayer;->centerCameraForSlot(IF)V

    goto :goto_4

    .line 2039
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_14
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 2174
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v0, p1}, Lcom/cooliris/media/GridInputProcessor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public renderBlended(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 15
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mDrawManager:Lcom/cooliris/media/GridDrawManager;

    if-eqz v0, :cond_3e

    .line 1200
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    if-eqz v0, :cond_3e

    .line 1201
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mDrawManager:Lcom/cooliris/media/GridDrawManager;

    iget v3, p0, Lcom/cooliris/media/GridLayer;->mSelectedAlpha:F

    iget v4, p0, Lcom/cooliris/media/GridLayer;->mState:I

    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v1}, Lcom/cooliris/media/HudLayer;->getMode()I

    move-result v5

    iget v6, p0, Lcom/cooliris/media/GridLayer;->mTimeElapsedSinceStackViewReady:F

    iget v7, p0, Lcom/cooliris/media/GridLayer;->mTimeElapsedSinceGridViewReady:F

    iget-object v8, p0, Lcom/cooliris/media/GridLayer;->mSelectedBucketList:Lcom/cooliris/media/MediaBucketList;

    iget-object v9, p0, Lcom/cooliris/media/GridLayer;->mMarkedBucketList:Lcom/cooliris/media/MediaBucketList;

    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v1}, Lcom/cooliris/media/MediaFeed;->getWaitingForMediaScanner()Z

    move-result v1

    if-nez v1, :cond_34

    iget-boolean v1, p0, Lcom/cooliris/media/GridLayer;->mFeedAboutToChange:Z

    if-nez v1, :cond_34

    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v1}, Lcom/cooliris/media/MediaFeed;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_3f

    :cond_34
    const/4 v10, 0x1

    :goto_35
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->checkNoItem()Z

    move-result v11

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v11}, Lcom/cooliris/media/GridDrawManager;->drawBlendedComponents(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;FIIFFLcom/cooliris/media/MediaBucketList;Lcom/cooliris/media/MediaBucketList;ZZ)V

    .line 1215
    :cond_3e
    return-void

    .line 1201
    :cond_3f
    const/4 v10, 0x0

    goto :goto_35
.end method

.method public renderOpaque(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 15
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 1134
    iget-object v10, p0, Lcom/cooliris/media/GridLayer;->mCamera:Lcom/cooliris/media/GridCamera;

    .line 1135
    .local v10, camera:Lcom/cooliris/media/GridCamera;
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v0}, Lcom/cooliris/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v11

    .line 1136
    .local v11, selectedSlotIndex:I
    invoke-direct {p0}, Lcom/cooliris/media/GridLayer;->computeVisibleItems()V

    .line 1139
    sget-boolean v0, Lcom/cooliris/media/Utils;->mUseXivRD:Z

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/cooliris/media/GridLayer;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_17

    .line 1140
    invoke-static {p2}, Lcom/quramsoft/xiv/XIVRegionManager;->releaseGridQuad(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 1144
    :cond_17
    const/16 v0, 0x1700

    invoke-interface {p2, v0}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 1145
    invoke-interface {p2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 1146
    iget v0, v10, Lcom/cooliris/media/GridCamera;->mEyeX:F

    neg-float v1, v0

    iget v0, v10, Lcom/cooliris/media/GridCamera;->mEyeY:F

    neg-float v2, v0

    iget v0, v10, Lcom/cooliris/media/GridCamera;->mEyeZ:F

    neg-float v3, v0

    iget v0, v10, Lcom/cooliris/media/GridCamera;->mLookAtX:F

    neg-float v4, v0

    iget v0, v10, Lcom/cooliris/media/GridCamera;->mLookAtY:F

    neg-float v5, v0

    iget v0, v10, Lcom/cooliris/media/GridCamera;->mLookAtZ:F

    neg-float v6, v0

    iget v7, v10, Lcom/cooliris/media/GridCamera;->mUpX:F

    iget v8, v10, Lcom/cooliris/media/GridCamera;->mUpY:F

    iget v9, v10, Lcom/cooliris/media/GridCamera;->mUpZ:F

    move-object v0, p2

    invoke-static/range {v0 .. v9}, Landroid/opengl/GLU;->gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V

    .line 1148
    const/high16 v0, 0x3f80

    invoke-virtual {p1, v0}, Lcom/cooliris/media/RenderView;->setAlpha(F)V

    .line 1149
    iget v0, p0, Lcom/cooliris/media/GridLayer;->mSelectedAlpha:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_59

    .line 1150
    const/16 v0, 0xbe2

    invoke-interface {p2, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 1151
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-interface {p2, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 1152
    iget v0, p0, Lcom/cooliris/media/GridLayer;->mSelectedAlpha:F

    invoke-virtual {p1, v0}, Lcom/cooliris/media/RenderView;->setAlpha(F)V

    .line 1154
    :cond_59
    const/4 v0, -0x1

    if-eq v11, v0, :cond_d7

    .line 1155
    const/4 v0, 0x0

    iput v0, p0, Lcom/cooliris/media/GridLayer;->mTargetAlpha:F

    .line 1159
    :goto_5f
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mDrawManager:Lcom/cooliris/media/GridDrawManager;

    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mVisibleRange:Lcom/cooliris/media/IndexRange;

    iget-object v3, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v3}, Lcom/cooliris/media/GridInputProcessor;->getCurrentFocusSlot()I

    move-result v4

    iget-object v3, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v3}, Lcom/cooliris/media/GridInputProcessor;->getCurrentScaledSlot()I

    move-result v5

    iget-object v3, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v3}, Lcom/cooliris/media/GridInputProcessor;->isFocusItemPressed()Z

    move-result v6

    iget-object v3, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v3}, Lcom/cooliris/media/GridInputProcessor;->getScale()F

    move-result v7

    iget-object v3, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v3}, Lcom/cooliris/media/GridInputProcessor;->getScaleGestureDetector()Lcom/cooliris/media/ScaleGestureDetector;

    move-result-object v8

    iget-boolean v9, p0, Lcom/cooliris/media/GridLayer;->mFeedAboutToChange:Z

    move v3, v11

    invoke-virtual/range {v0 .. v9}, Lcom/cooliris/media/GridDrawManager;->prepareDraw(Lcom/cooliris/media/IndexRange;Lcom/cooliris/media/IndexRange;IIIZFLcom/cooliris/media/ScaleGestureDetector;Z)V

    .line 1163
    iget v0, p0, Lcom/cooliris/media/GridLayer;->mSelectedAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_97

    .line 1164
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mDrawManager:Lcom/cooliris/media/GridDrawManager;

    iget v1, p0, Lcom/cooliris/media/GridLayer;->mState:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/cooliris/media/GridDrawManager;->drawThumbnails(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;I)V

    .line 1166
    :cond_97
    iget v0, p0, Lcom/cooliris/media/GridLayer;->mSelectedAlpha:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a4

    .line 1167
    const/16 v0, 0xbe2

    invoke-interface {p2, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 1170
    :cond_a4
    const/4 v0, -0x1

    if-eq v11, v0, :cond_d1

    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mRequestFocusContentUri:Ljava/lang/String;

    if-nez v0, :cond_d1

    .line 1171
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mDrawManager:Lcom/cooliris/media/GridDrawManager;

    iget v3, p0, Lcom/cooliris/media/GridLayer;->mZoomValue:F

    iget-boolean v4, p0, Lcom/cooliris/media/GridLayer;->mSlideshowMode:Z

    iget v5, p0, Lcom/cooliris/media/GridLayer;->mTimeElapsedSinceView:F

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/cooliris/media/GridDrawManager;->drawFocusItems(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;FZF)V

    .line 1173
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mDrawManager:Lcom/cooliris/media/GridDrawManager;

    invoke-virtual {v0}, Lcom/cooliris/media/GridDrawManager;->getFocusQuadWidth()F

    move-result v0

    iput v0, p0, Lcom/cooliris/media/GridLayer;->mCurrentFocusItemWidth:F

    .line 1174
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mDrawManager:Lcom/cooliris/media/GridDrawManager;

    invoke-virtual {v0}, Lcom/cooliris/media/GridDrawManager;->getFocusQuadHeight()F

    move-result v0

    iput v0, p0, Lcom/cooliris/media/GridLayer;->mCurrentFocusItemHeight:F

    .line 1176
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mBoundaryLayer:Lcom/cooliris/media/BoundaryLayer;

    iget v1, p0, Lcom/cooliris/media/GridLayer;->mCurrentFocusItemWidth:F

    iget v2, p0, Lcom/cooliris/media/GridLayer;->mCurrentFocusItemHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/BoundaryLayer;->setImageSize(FF)V

    .line 1178
    :cond_d1
    iget v0, p0, Lcom/cooliris/media/GridLayer;->mSelectedAlpha:F

    invoke-virtual {p1, v0}, Lcom/cooliris/media/RenderView;->setAlpha(F)V

    .line 1179
    return-void

    .line 1157
    :cond_d7
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/cooliris/media/GridLayer;->mTargetAlpha:F

    goto :goto_5f
.end method

.method public rotateSelectedItems(F)V
    .registers 16
    .parameter "f"

    .prologue
    .line 2144
    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mSelectedBucketList:Lcom/cooliris/media/MediaBucketList;

    .line 2145
    .local v1, bucketList:Lcom/cooliris/media/MediaBucketList;
    invoke-virtual {v1}, Lcom/cooliris/media/MediaBucketList;->get()Ljava/util/ArrayList;

    move-result-object v7

    .line 2146
    .local v7, mediaBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaBucket;>;"
    sget-object v3, Lcom/cooliris/media/GridLayer;->mDisplayList:Lcom/cooliris/media/DisplayList;

    .line 2147
    .local v3, displayList:Lcom/cooliris/media/DisplayList;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2148
    .local v9, numBuckets:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_d
    if-ge v4, v9, :cond_36

    .line 2149
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaBucket;

    .line 2150
    .local v0, bucket:Lcom/cooliris/media/MediaBucket;
    iget-object v8, v0, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 2151
    .local v8, mediaItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    if-eqz v8, :cond_33

    .line 2152
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2153
    .local v10, numMediaItems:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1e
    if-ge v6, v10, :cond_33

    .line 2154
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cooliris/media/MediaItem;

    .line 2155
    .local v5, item:Lcom/cooliris/media/MediaItem;
    invoke-virtual {v3, v5}, Lcom/cooliris/media/DisplayList;->get(Lcom/cooliris/media/MediaItem;)Lcom/cooliris/media/DisplayItem;

    move-result-object v2

    .line 2156
    .local v2, displayItem:Lcom/cooliris/media/DisplayItem;
    invoke-virtual {v2, p1}, Lcom/cooliris/media/DisplayItem;->rotateImageBy(F)V

    .line 2157
    invoke-virtual {v3, v2}, Lcom/cooliris/media/DisplayList;->addToAnimatables(Lcom/cooliris/media/DisplayItem;)V

    .line 2153
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 2148
    .end local v2           #displayItem:Lcom/cooliris/media/DisplayItem;
    .end local v5           #item:Lcom/cooliris/media/MediaItem;
    .end local v6           #j:I
    .end local v10           #numMediaItems:I
    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 2161
    .end local v0           #bucket:Lcom/cooliris/media/MediaBucket;
    .end local v8           #mediaItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaItem;>;"
    :cond_36
    iget v11, p0, Lcom/cooliris/media/GridLayer;->mState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_46

    .line 2162
    iget-object v11, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v11}, Lcom/cooliris/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v11

    const/high16 v12, 0x3f80

    invoke-virtual {p0, v11, v12}, Lcom/cooliris/media/GridLayer;->centerCameraForSlot(IF)V

    .line 2164
    :cond_46
    iget-object v11, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    const/4 v12, 0x1

    new-instance v13, Ljava/lang/Float;

    invoke-direct {v13, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v11, v12, v7, v13}, Lcom/cooliris/media/MediaFeed;->performOperation(ILjava/util/ArrayList;Ljava/lang/Object;)V

    .line 2166
    return-void
.end method

.method public selectAll()V
    .registers 9

    .prologue
    const v7, 0x7f060099

    const/16 v6, 0x12c

    const/4 v5, 0x1

    const/16 v4, 0x64

    const/4 v1, 0x0

    .line 1772
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mCompleteRange:Lcom/cooliris/media/IndexRange;

    iget v0, v0, Lcom/cooliris/media/IndexRange;->end:I

    add-int/lit8 v2, v0, 0x1

    .line 1773
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->getMultiplePickIntent()Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 1774
    iget v0, p0, Lcom/cooliris/media/GridLayer;->mState:I

    if-nez v0, :cond_3a

    .line 1775
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->getChkFromWidget()Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->getChkFromPhotoWall()Z

    move-result v0

    if-nez v0, :cond_39

    move v0, v1

    .line 1777
    :goto_2e
    if-ge v0, v2, :cond_36

    .line 1778
    invoke-virtual {p0, v0, v1, v1}, Lcom/cooliris/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    .line 1777
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 1780
    :cond_36
    invoke-direct {p0}, Lcom/cooliris/media/GridLayer;->updateCountOfSelectedItems()V

    .line 1832
    :cond_39
    :goto_39
    return-void

    .line 1783
    :cond_3a
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->getChkFromWidget()Z

    move-result v0

    if-eqz v0, :cond_7e

    if-le v2, v4, :cond_7e

    move v0, v1

    .line 1788
    :goto_47
    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mSelectedBucketList:Lcom/cooliris/media/MediaBucketList;

    invoke-virtual {v2}, Lcom/cooliris/media/MediaBucketList;->size()I

    move-result v2

    if-ge v2, v4, :cond_5f

    if-ge v0, v4, :cond_5f

    .line 1792
    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v2, v0}, Lcom/cooliris/media/GridInputProcessor;->checkFile(I)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 1793
    invoke-virtual {p0, v0, v1, v1}, Lcom/cooliris/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    .line 1788
    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 1796
    :cond_5f
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v0

    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v2, v7, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    .line 1820
    :cond_7a
    :goto_7a
    invoke-direct {p0}, Lcom/cooliris/media/GridLayer;->updateCountOfSelectedItems()V

    goto :goto_39

    .line 1799
    :cond_7e
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->getChkFromPhotoWall()Z

    move-result v0

    if-eqz v0, :cond_b7

    if-le v2, v6, :cond_b7

    move v0, v1

    .line 1801
    :goto_8b
    if-ge v0, v6, :cond_9b

    .line 1802
    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v2, v0}, Lcom/cooliris/media/GridInputProcessor;->checkFile(I)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 1803
    invoke-virtual {p0, v0, v1, v1}, Lcom/cooliris/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    .line 1801
    :cond_98
    add-int/lit8 v0, v0, 0x1

    goto :goto_8b

    .line 1806
    :cond_9b
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cooliris/app/App;->get(Landroid/content/Context;)Lcom/cooliris/app/App;

    move-result-object v0

    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v2, v7, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V

    goto :goto_7a

    .line 1809
    :cond_b7
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->getChkFromWidget()Z

    move-result v0

    if-nez v0, :cond_cb

    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->getChkFromPhotoWall()Z

    move-result v0

    if-eqz v0, :cond_dc

    :cond_cb
    move v0, v1

    .line 1810
    :goto_cc
    if-ge v0, v2, :cond_7a

    .line 1811
    iget-object v3, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v3, v0}, Lcom/cooliris/media/GridInputProcessor;->checkFile(I)Z

    move-result v3

    if-eqz v3, :cond_d9

    .line 1812
    invoke-virtual {p0, v0, v1, v1}, Lcom/cooliris/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    .line 1810
    :cond_d9
    add-int/lit8 v0, v0, 0x1

    goto :goto_cc

    :cond_dc
    move v0, v1

    .line 1816
    :goto_dd
    if-ge v0, v2, :cond_7a

    .line 1817
    invoke-virtual {p0, v0, v1, v1}, Lcom/cooliris/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    .line 1816
    add-int/lit8 v0, v0, 0x1

    goto :goto_dd

    .line 1823
    :cond_e5
    iget v0, p0, Lcom/cooliris/media/GridLayer;->mState:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_f8

    move v0, v1

    .line 1824
    :goto_eb
    if-ge v0, v2, :cond_f3

    .line 1825
    invoke-virtual {p0, v0, v1, v1}, Lcom/cooliris/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    .line 1824
    add-int/lit8 v0, v0, 0x1

    goto :goto_eb

    .line 1827
    :cond_f3
    invoke-direct {p0}, Lcom/cooliris/media/GridLayer;->updateCountOfSelectedItems()V

    goto/16 :goto_39

    .line 1829
    :cond_f8
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v0}, Lcom/cooliris/media/GridInputProcessor;->getCurrentFocusSlot()I

    move-result v0

    invoke-virtual {p0, v0, v1, v5}, Lcom/cooliris/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    goto/16 :goto_39
.end method

.method public selectedBucketListSize()I
    .registers 2

    .prologue
    .line 3120
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mSelectedBucketList:Lcom/cooliris/media/MediaBucketList;

    invoke-virtual {v0}, Lcom/cooliris/media/MediaBucketList;->size()I

    move-result v0

    return v0
.end method

.method public setDataSource(Lcom/cooliris/media/DataSource;)V
    .registers 5
    .parameter "dataSource"

    .prologue
    .line 692
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    .line 694
    .local v0, feed:Lcom/cooliris/media/MediaFeed;
    if-eqz v0, :cond_16

    .line 697
    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v1, v0}, Lcom/cooliris/media/MediaFeed;->copySlotStateFrom(Lcom/cooliris/media/MediaFeed;)V

    .line 699
    invoke-virtual {v0}, Lcom/cooliris/media/MediaFeed;->shutdown()V

    .line 700
    sget-object v1, Lcom/cooliris/media/GridLayer;->mDisplayList:Lcom/cooliris/media/DisplayList;

    invoke-virtual {v1}, Lcom/cooliris/media/DisplayList;->clear()V

    .line 701
    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mBackground:Lcom/cooliris/media/BackgroundLayer;

    invoke-virtual {v1}, Lcom/cooliris/media/BackgroundLayer;->clear()V

    .line 703
    :cond_16
    new-instance v1, Lcom/cooliris/media/MediaFeed;

    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, p0}, Lcom/cooliris/media/MediaFeed;-><init>(Landroid/content/Context;Lcom/cooliris/media/DataSource;Lcom/cooliris/media/MediaFeed$Listener;)V

    iput-object v1, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    .line 704
    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v1}, Lcom/cooliris/media/MediaFeed;->start()V

    .line 705
    return-void
.end method

.method public setDuplicatedDrmPopup(Z)V
    .registers 2
    .parameter "mIsDuplicatedDrmPopup"

    .prologue
    .line 3129
    iput-boolean p1, p0, Lcom/cooliris/media/GridLayer;->mIsDuplicatedDrmPopup:Z

    .line 3130
    return-void
.end method

.method public setKeyLongPress(Z)V
    .registers 2
    .parameter "bKeyLongPress"

    .prologue
    .line 2494
    iput-boolean p1, p0, Lcom/cooliris/media/GridLayer;->bKeyLongPress:Z

    .line 2495
    return-void
.end method

.method public setMultiIntent(Ljava/lang/String;)V
    .registers 6
    .parameter "items"

    .prologue
    .line 2315
    const/4 v1, -0x1

    .line 2316
    .local v1, index:I
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->getMultiplePickIntent()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2317
    :goto_7
    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v2}, Lcom/cooliris/media/MediaFeed;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2319
    const-wide/16 v2, 0x64

    :try_start_15
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_7

    .line 2320
    :catch_19
    move-exception v0

    .line 2322
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7

    .line 2325
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1e
    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/cooliris/media/Gallery;

    invoke-virtual {v2}, Lcom/cooliris/media/Gallery;->getFolderID()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/cooliris/media/GridLayer;->changeStateForWidget(J)I

    move-result v1

    .line 2327
    :cond_2a
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2e

    .line 2335
    :cond_2d
    :goto_2d
    return-void

    .line 2329
    :cond_2e
    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    if-eqz v2, :cond_2d

    .line 2330
    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v2}, Lcom/cooliris/media/MediaFeed;->setFeedRunning()V

    .line 2331
    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v2, v1}, Lcom/cooliris/media/MediaFeed;->expandMediaSet(I)V

    .line 2332
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/cooliris/media/GridLayer;->setState(I)V

    .line 2333
    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-direct {p0, v2, p1}, Lcom/cooliris/media/GridLayer;->updateSelectedSlot(Lcom/cooliris/media/MediaFeed;Ljava/lang/String;)V

    goto :goto_2d
.end method

.method public setMultiplePickIntent(Z)V
    .registers 6
    .parameter

    .prologue
    .line 2260
    iput-boolean p1, p0, Lcom/cooliris/media/GridLayer;->mMultiplePickIntent:Z

    .line 2261
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->getPathBar()Lcom/cooliris/media/PathBarLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/PathBarLayer;->popLabel()Lcom/cooliris/media/PathBarLayer$Component;

    .line 2262
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->getPathBar()Lcom/cooliris/media/PathBarLayer;

    move-result-object v0

    sget-object v1, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v1, 0x7f020049

    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v3, 0x7f06001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cooliris/media/GridLayer$6;

    invoke-direct {v3, p0}, Lcom/cooliris/media/GridLayer$6;-><init>(Lcom/cooliris/media/GridLayer;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/cooliris/media/PathBarLayer;->pushLabel(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 2275
    return-void
.end method

.method public setPickIntent(Z)V
    .registers 6
    .parameter

    .prologue
    .line 2236
    iput-boolean p1, p0, Lcom/cooliris/media/GridLayer;->mPickIntent:Z

    .line 2237
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->getPathBar()Lcom/cooliris/media/PathBarLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/PathBarLayer;->popLabel()Lcom/cooliris/media/PathBarLayer$Component;

    .line 2238
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->getPathBar()Lcom/cooliris/media/PathBarLayer;

    move-result-object v0

    sget-object v1, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v1, 0x7f020049

    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/cooliris/app/Res;->string:Lcom/cooliris/media/R$string;

    const v3, 0x7f06001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/cooliris/media/GridLayer$5;

    invoke-direct {v3, p0}, Lcom/cooliris/media/GridLayer$5;-><init>(Lcom/cooliris/media/GridLayer;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/cooliris/media/PathBarLayer;->pushLabel(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 2251
    return-void
.end method

.method public setResultForMultiPick(ZZ)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2883
    sget-object v0, Lcom/cooliris/media/GridLayer;->MULTIPICK_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 2884
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiPickThread"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2885
    sget-boolean v0, Lcom/cooliris/media/GridLayer;->threadBlocked:Z

    if-eqz v0, :cond_30

    .line 2886
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cooliris/media/GridLayer;->threadBlocked:Z

    .line 2894
    :cond_1d
    new-instance v0, Lcom/cooliris/media/GridLayer$24;

    invoke-direct {v0, p0, p2, p1}, Lcom/cooliris/media/GridLayer$24;-><init>(Lcom/cooliris/media/GridLayer;ZZ)V

    .line 3038
    const-string v1, "MultiPickThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 3039
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3040
    sget-object v1, Lcom/cooliris/media/GridLayer;->MULTIPICK_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3042
    :goto_2f
    return-void

    .line 2889
    :cond_30
    const-string v0, "GridLayer"

    const-string v1, "MULTIPICKFOLDER_THREAD running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method public setSingleImage(Z)V
    .registers 5
    .parameter "noDeleteMode"

    .prologue
    const/4 v2, 0x0

    .line 2346
    iput-boolean p1, p0, Lcom/cooliris/media/GridLayer;->mNoDeleteMode:Z

    .line 2347
    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v1, v2}, Lcom/cooliris/media/GridInputProcessor;->setCurrentSelectedSlot(I)V

    .line 2350
    sget-boolean v1, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v1, :cond_15

    .line 2351
    invoke-virtual {p0, v2}, Lcom/cooliris/media/GridLayer;->getDisplayItemForSlotId(I)Lcom/cooliris/media/DisplayItem;

    move-result-object v0

    .line 2352
    .local v0, displayItem:Lcom/cooliris/media/DisplayItem;
    if-eqz v0, :cond_15

    .line 2353
    const/4 v1, 0x1

    iput v1, v0, Lcom/cooliris/media/DisplayItem;->mZoomMode:I

    .line 2356
    .end local v0           #displayItem:Lcom/cooliris/media/DisplayItem;
    :cond_15
    return-void
.end method

.method public setState(I)V
    .registers 20
    .parameter "state"

    .prologue
    .line 386
    const/4 v4, 0x0

    .line 387
    .local v4, feedUnchanged:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridLayer;->mCamera:Lcom/cooliris/media/GridCamera;

    const/4 v15, 0x0

    iput v15, v14, Lcom/cooliris/media/GridCamera;->mFriction:F

    .line 388
    move-object/from16 v0, p0

    iget v14, v0, Lcom/cooliris/media/GridLayer;->mState:I

    move/from16 v0, p1

    if-ne v14, v0, :cond_11

    .line 389
    const/4 v4, 0x1

    .line 391
    :cond_11
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/cooliris/media/GridLayer;->mLayoutInterface:Lcom/cooliris/media/LayoutInterface;

    check-cast v6, Lcom/cooliris/media/GridLayoutInterface;

    .line 392
    .local v6, layoutInterface:Lcom/cooliris/media/GridLayoutInterface;
    sget-object v8, Lcom/cooliris/media/GridLayer;->sfullScreenLayoutInterface:Lcom/cooliris/media/LayoutInterface;

    check-cast v8, Lcom/cooliris/media/GridLayoutInterface;

    .line 393
    .local v8, oldLayout:Lcom/cooliris/media/GridLayoutInterface;
    iget v14, v6, Lcom/cooliris/media/GridLayoutInterface;->mNumRows:I

    iput v14, v8, Lcom/cooliris/media/GridLayoutInterface;->mNumRows:I

    .line 394
    iget v14, v6, Lcom/cooliris/media/GridLayoutInterface;->mSpacingX:I

    iput v14, v8, Lcom/cooliris/media/GridLayoutInterface;->mSpacingX:I

    .line 395
    iget v14, v6, Lcom/cooliris/media/GridLayoutInterface;->mSpacingY:I

    iput v14, v8, Lcom/cooliris/media/GridLayoutInterface;->mSpacingY:I

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/cooliris/media/GridLayer;->mCamera:Lcom/cooliris/media/GridCamera;

    .line 397
    .local v2, camera:Lcom/cooliris/media/GridCamera;
    iget v14, v2, Lcom/cooliris/media/GridCamera;->mHeight:I

    iget v15, v2, Lcom/cooliris/media/GridCamera;->mWidth:I

    if-lt v14, v15, :cond_a0

    const/4 v7, 0x4

    .line 398
    .local v7, numMaxRows:I
    :goto_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    .line 399
    .local v3, feed:Lcom/cooliris/media/MediaFeed;
    const/4 v9, 0x1

    .line 400
    .local v9, performLayout:Z
    const/high16 v14, 0x3f80

    move-object/from16 v0, p0

    iput v14, v0, Lcom/cooliris/media/GridLayer;->mZoomValue:F

    .line 401
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridLayer;->mBoundaryLayer:Lcom/cooliris/media/BoundaryLayer;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/cooliris/media/GridLayer;->mZoomValue:F

    invoke-virtual {v14, v15}, Lcom/cooliris/media/BoundaryLayer;->setZoomValue(F)V

    .line 402
    iget v14, v2, Lcom/cooliris/media/GridCamera;->mDefaultAspectRatio:F

    iget v15, v2, Lcom/cooliris/media/GridCamera;->mAspectRatio:F

    div-float v13, v14, v15

    .line 403
    .local v13, yStretch:F
    const/high16 v14, 0x3f80

    cmpg-float v14, v13, v14

    if-gez v14, :cond_56

    .line 404
    const/high16 v13, 0x3f80

    .line 406
    :cond_56
    packed-switch p1, :pswitch_data_2a0

    .line 575
    :cond_59
    :goto_59
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/cooliris/media/GridLayer;->mState:I

    .line 576
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v14}, Lcom/cooliris/media/HudLayer;->onGridStateChanged()V

    .line 577
    if-eqz v9, :cond_75

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/cooliris/media/GridLayer;->mFeedAboutToChange:Z

    if-nez v14, :cond_75

    .line 578
    const/4 v14, -0x1

    const/4 v15, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15, v8}, Lcom/cooliris/media/GridLayer;->onLayout(IILcom/cooliris/media/LayoutInterface;)V

    .line 580
    :cond_75
    const/4 v14, 0x2

    move/from16 v0, p1

    if-eq v0, v14, :cond_8a

    .line 581
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridLayer;->mCamera:Lcom/cooliris/media/GridCamera;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/cooliris/media/GridCamera;->moveYTo(F)V

    .line 582
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridLayer;->mCamera:Lcom/cooliris/media/GridCamera;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/cooliris/media/GridCamera;->moveZTo(F)V

    .line 586
    :cond_8a
    sget-boolean v14, Lcom/cooliris/media/Utils;->mUseXiv:Z

    if-eqz v14, :cond_9f

    .line 587
    invoke-static {}, Lcom/quramsoft/xiv/SFUtils;->getInstance()Lcom/quramsoft/xiv/SFUtils;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/GridLayer;->getDeltaAnchorPosition()Lcom/cooliris/media/Vector3f;

    move-result-object v15

    iget v15, v15, Lcom/cooliris/media/Vector3f;->x:F

    iget v0, v6, Lcom/cooliris/media/GridLayoutInterface;->mSpacingX:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/quramsoft/xiv/SFUtils;->setAnchorAndSpacing(FI)V

    .line 591
    :cond_9f
    return-void

    .line 397
    .end local v3           #feed:Lcom/cooliris/media/MediaFeed;
    .end local v7           #numMaxRows:I
    .end local v9           #performLayout:Z
    .end local v13           #yStretch:F
    :cond_a0
    const/4 v7, 0x3

    goto :goto_32

    .line 408
    .restart local v3       #feed:Lcom/cooliris/media/MediaFeed;
    .restart local v7       #numMaxRows:I
    .restart local v9       #performLayout:Z
    .restart local v13       #yStretch:F
    :pswitch_a2
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/cooliris/media/GridLayer;->mTimeElapsedSinceGridViewReady:F

    .line 409
    if-eqz v3, :cond_b2

    if-nez v4, :cond_b2

    .line 410
    invoke-virtual {v3}, Lcom/cooliris/media/MediaFeed;->restorePreviousClusteringState()Z

    move-result v12

    .line 411
    .local v12, updatedData:Z
    if-eqz v12, :cond_b2

    .line 412
    const/4 v9, 0x0

    .line 415
    .end local v12           #updatedData:Z
    :cond_b2
    iput v7, v6, Lcom/cooliris/media/GridLayoutInterface;->mNumRows:I

    .line 416
    const/high16 v14, 0x41a0

    sget v15, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v6, Lcom/cooliris/media/GridLayoutInterface;->mSpacingX:I

    .line 417
    const/high16 v14, 0x41a0

    sget v15, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v6, Lcom/cooliris/media/GridLayoutInterface;->mSpacingY:I

    .line 418
    move-object/from16 v0, p0

    iget v14, v0, Lcom/cooliris/media/GridLayer;->mState:I

    if-nez v14, :cond_106

    .line 420
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/cooliris/media/GridLayer;->mInAlbum:Z

    .line 421
    if-eqz v3, :cond_f8

    .line 422
    invoke-virtual {v3}, Lcom/cooliris/media/MediaFeed;->getCurrentSet()Lcom/cooliris/media/MediaSet;

    move-result-object v10

    .line 423
    .local v10, set:Lcom/cooliris/media/MediaSet;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridLayer;->mDrawables:Lcom/cooliris/media/GridDrawables;

    const/4 v15, 0x1

    invoke-virtual {v14, v10, v15}, Lcom/cooliris/media/GridDrawables;->getIconForSet(Lcom/cooliris/media/MediaSet;Z)I

    move-result v5

    .line 424
    .local v5, icon:I
    if-eqz v10, :cond_f8

    .line 425
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v14}, Lcom/cooliris/media/HudLayer;->getPathBar()Lcom/cooliris/media/PathBarLayer;

    move-result-object v14

    iget-object v15, v10, Lcom/cooliris/media/MediaSet;->mNoCountTitleString:Ljava/lang/String;

    new-instance v16, Lcom/cooliris/media/GridLayer$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/cooliris/media/GridLayer$2;-><init>(Lcom/cooliris/media/GridLayer;)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v5, v15, v0}, Lcom/cooliris/media/PathBarLayer;->pushLabel(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 445
    .end local v5           #icon:I
    .end local v10           #set:Lcom/cooliris/media/MediaSet;
    :cond_f8
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/GridLayer;->getMultiplePickIntent()Z

    move-result v14

    if-eqz v14, :cond_106

    .line 446
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/cooliris/media/HudLayer;->setMode(I)V

    .line 449
    :cond_106
    move-object/from16 v0, p0

    iget v14, v0, Lcom/cooliris/media/GridLayer;->mState:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_13a

    .line 450
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v14}, Lcom/cooliris/media/HudLayer;->getPathBar()Lcom/cooliris/media/PathBarLayer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/cooliris/media/PathBarLayer;->popLabel()Lcom/cooliris/media/PathBarLayer$Component;

    .line 451
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v14}, Lcom/cooliris/media/HudLayer;->clear()V

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/GridLayer;->getViewIntent()Z

    move-result v14

    if-eqz v14, :cond_12a

    if-eqz v3, :cond_12a

    .line 453
    invoke-virtual {v3}, Lcom/cooliris/media/MediaFeed;->start()V

    .line 458
    :cond_12a
    :goto_12a
    sget-boolean v14, Lcom/cooliris/media/Utils;->mUse_U1_Aus_Open:Z

    if-eqz v14, :cond_59

    .line 459
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    check-cast v14, Lcom/cooliris/media/Gallery;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/cooliris/media/Gallery;->setOrientationEvent(Z)V

    goto/16 :goto_59

    .line 455
    :cond_13a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/cooliris/media/GridLayer;->mState:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_12a

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/GridLayer;->deselectOrCancelSelectMode()V

    goto :goto_12a

    .line 463
    :pswitch_145
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/cooliris/media/GridLayer;->mTimeElapsedSinceStackViewReady:F

    .line 464
    if-eqz v3, :cond_152

    if-nez v4, :cond_152

    .line 465
    invoke-virtual {v3}, Lcom/cooliris/media/MediaFeed;->performClustering()V

    .line 466
    const/4 v9, 0x0

    .line 468
    :cond_152
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/GridLayer;->disableLocationFiltering()V

    .line 469
    add-int/lit8 v14, v7, -0x1

    iput v14, v6, Lcom/cooliris/media/GridLayoutInterface;->mNumRows:I

    .line 470
    const/high16 v14, 0x42c8

    sget v15, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v6, Lcom/cooliris/media/GridLayoutInterface;->mSpacingX:I

    .line 471
    const/high16 v14, 0x428c

    sget v15, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v14, v15

    mul-float/2addr v14, v13

    float-to-int v14, v14

    iput v14, v6, Lcom/cooliris/media/GridLayoutInterface;->mSpacingY:I

    .line 472
    sget-boolean v14, Lcom/cooliris/media/Utils;->mUse_U1_Aus_Open:Z

    if-eqz v14, :cond_59

    .line 473
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    check-cast v14, Lcom/cooliris/media/Gallery;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/cooliris/media/Gallery;->setOrientationEvent(Z)V

    goto/16 :goto_59

    .line 477
    :pswitch_17a
    const/4 v14, 0x1

    iput v14, v6, Lcom/cooliris/media/GridLayoutInterface;->mNumRows:I

    .line 490
    const/4 v11, 0x0

    .line 491
    .local v11, space:I
    sget-boolean v14, Lcom/cooliris/media/Utils;->mUse_Gerry_Kor_Open:Z

    if-eqz v14, :cond_1f2

    .line 492
    iget v14, v2, Lcom/cooliris/media/GridCamera;->mHeight:I

    iget v15, v2, Lcom/cooliris/media/GridCamera;->mWidth:I

    if-lt v14, v15, :cond_1ef

    const/16 v11, 0x19

    .line 495
    :goto_18a
    const/4 v14, 0x1

    iput v14, v6, Lcom/cooliris/media/GridLayoutInterface;->mNumRows:I

    .line 496
    int-to-float v14, v11

    sget v15, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v6, Lcom/cooliris/media/GridLayoutInterface;->mSpacingX:I

    .line 498
    const/high16 v14, 0x4220

    sget v15, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v6, Lcom/cooliris/media/GridLayoutInterface;->mSpacingY:I

    .line 507
    sget-boolean v14, Lcom/cooliris/media/Utils;->mSupportMotionTilt:Z

    if-eqz v14, :cond_1a9

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/cooliris/media/GridLayer;->mViewIntent:Z

    if-nez v14, :cond_1a9

    .line 508
    invoke-direct/range {p0 .. p0}, Lcom/cooliris/media/GridLayer;->startMotionTutorialDialog()V

    .line 511
    :cond_1a9
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/cooliris/media/GridLayer;->mFirstFullScreenDraw:Z

    if-nez v14, :cond_1b7

    sget-boolean v14, Lcom/cooliris/media/Utils;->mSupportDNIE:Z

    if-eqz v14, :cond_1b7

    .line 512
    const/4 v14, 0x6

    invoke-static {v14}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)V

    .line 515
    :cond_1b7
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/cooliris/media/GridLayer;->mFirstFullScreenDraw:Z

    .line 516
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/cooliris/media/GridLayer;->mStateChangeToFullScreen:Z

    .line 517
    move-object/from16 v0, p0

    iget v14, v0, Lcom/cooliris/media/GridLayer;->mState:I

    const/4 v15, 0x2

    if-eq v14, v15, :cond_1df

    .line 518
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v14}, Lcom/cooliris/media/HudLayer;->getPathBar()Lcom/cooliris/media/PathBarLayer;

    move-result-object v14

    sget-object v15, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v15, 0x7f020027

    const-string v16, ""

    new-instance v17, Lcom/cooliris/media/GridLayer$3;

    invoke-direct/range {v17 .. v18}, Lcom/cooliris/media/GridLayer$3;-><init>(Lcom/cooliris/media/GridLayer;)V

    invoke-virtual/range {v14 .. v17}, Lcom/cooliris/media/PathBarLayer;->pushLabel(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 528
    :cond_1df
    sget-boolean v14, Lcom/cooliris/media/Utils;->mUse_U1_Aus_Open:Z

    if-eqz v14, :cond_59

    .line 529
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    check-cast v14, Lcom/cooliris/media/Gallery;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/cooliris/media/Gallery;->setOrientationEvent(Z)V

    goto/16 :goto_59

    .line 492
    :cond_1ef
    const/16 v11, 0x46

    goto :goto_18a

    .line 494
    :cond_1f2
    iget v14, v2, Lcom/cooliris/media/GridCamera;->mHeight:I

    iget v15, v2, Lcom/cooliris/media/GridCamera;->mWidth:I

    if-lt v14, v15, :cond_1fb

    const/16 v11, 0x19

    :goto_1fa
    goto :goto_18a

    :cond_1fb
    const/16 v11, 0x46

    goto :goto_1fa

    .line 533
    .end local v11           #space:I
    :pswitch_1fe
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/cooliris/media/GridLayer;->mTimeElapsedSinceStackViewReady:F

    .line 534
    if-eqz v3, :cond_227

    if-nez v4, :cond_227

    .line 535
    invoke-virtual {v3}, Lcom/cooliris/media/MediaFeed;->restorePreviousClusteringState()Z

    .line 536
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridLayer;->mMarkedBucketList:Lcom/cooliris/media/MediaBucketList;

    invoke-virtual {v14}, Lcom/cooliris/media/MediaBucketList;->clear()V

    .line 537
    const/4 v14, -0x1

    invoke-virtual {v3, v14}, Lcom/cooliris/media/MediaFeed;->expandMediaSet(I)V

    .line 538
    const/4 v9, 0x0

    .line 539
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    if-eqz v14, :cond_227

    .line 540
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    check-cast v14, Lcom/cooliris/media/Gallery;

    const-wide/16 v15, -0x1

    invoke-virtual/range {v14 .. v16}, Lcom/cooliris/media/Gallery;->setFolderID(J)V

    .line 542
    :cond_227
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/GridLayer;->disableLocationFiltering()V

    .line 543
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v14}, Lcom/cooliris/media/GridInputProcessor;->clearSelection()V

    .line 544
    add-int/lit8 v14, v7, -0x1

    iput v14, v6, Lcom/cooliris/media/GridLayoutInterface;->mNumRows:I

    .line 545
    const/high16 v14, 0x42c8

    sget v15, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    iput v14, v6, Lcom/cooliris/media/GridLayoutInterface;->mSpacingX:I

    .line 546
    const/high16 v14, 0x428c

    sget v15, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v14, v15

    mul-float/2addr v14, v13

    float-to-int v14, v14

    iput v14, v6, Lcom/cooliris/media/GridLayoutInterface;->mSpacingY:I

    .line 547
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/cooliris/media/GridLayer;->mInAlbum:Z

    if-eqz v14, :cond_26e

    .line 548
    move-object/from16 v0, p0

    iget v14, v0, Lcom/cooliris/media/GridLayer;->mState:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_25e

    .line 549
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v14}, Lcom/cooliris/media/HudLayer;->getPathBar()Lcom/cooliris/media/PathBarLayer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/cooliris/media/PathBarLayer;->popLabel()Lcom/cooliris/media/PathBarLayer$Component;

    .line 551
    :cond_25e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v14}, Lcom/cooliris/media/HudLayer;->getPathBar()Lcom/cooliris/media/PathBarLayer;

    move-result-object v14

    invoke-virtual {v14}, Lcom/cooliris/media/PathBarLayer;->popLabel()Lcom/cooliris/media/PathBarLayer$Component;

    .line 552
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/cooliris/media/GridLayer;->mInAlbum:Z

    .line 554
    :cond_26e
    sget-boolean v14, Lcom/cooliris/media/Utils;->mUse_U1_Aus_Open:Z

    if-eqz v14, :cond_27c

    .line 555
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    check-cast v14, Lcom/cooliris/media/Gallery;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/cooliris/media/Gallery;->setOrientationEvent(Z)V

    .line 557
    :cond_27c
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/GridLayer;->getViewIntent()Z

    move-result v14

    if-eqz v14, :cond_291

    .line 558
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/GridLayer;->getDataSource()Lcom/cooliris/media/DataSource;

    move-result-object v14

    if-eqz v14, :cond_291

    .line 559
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/GridLayer;->getDataSource()Lcom/cooliris/media/DataSource;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/cooliris/media/GridLayer;->setDataSource(Lcom/cooliris/media/DataSource;)V

    .line 567
    :cond_291
    invoke-virtual/range {p0 .. p0}, Lcom/cooliris/media/GridLayer;->getMultiplePickIntent()Z

    move-result v14

    if-eqz v14, :cond_59

    .line 568
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v14}, Lcom/cooliris/media/HudLayer;->cancelSelection()V

    goto/16 :goto_59

    .line 406
    :pswitch_data_2a0
    .packed-switch 0x0
        :pswitch_1fe
        :pswitch_a2
        :pswitch_17a
        :pswitch_145
    .end packed-switch
.end method

.method public setViewIntent(Z)V
    .registers 2
    .parameter "ViewIntent"

    .prologue
    .line 2342
    iput-boolean p1, p0, Lcom/cooliris/media/GridLayer;->mViewIntent:Z

    .line 2343
    return-void
.end method

.method public setViewIntent(ZLjava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2285
    iput-boolean p1, p0, Lcom/cooliris/media/GridLayer;->mViewIntent:Z

    .line 2286
    if-eqz p1, :cond_2d

    .line 2287
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cooliris/media/MediaFeed;->expandMediaSet(I)V

    .line 2288
    invoke-virtual {p0, v2}, Lcom/cooliris/media/GridLayer;->setState(I)V

    .line 2290
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->getPathBar()Lcom/cooliris/media/PathBarLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/PathBarLayer;->getNumLevels()I

    move-result v0

    if-ne v0, v2, :cond_2d

    .line 2291
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/HudLayer;->getPathBar()Lcom/cooliris/media/PathBarLayer;

    move-result-object v0

    sget-object v1, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v1, 0x7f020046

    new-instance v2, Lcom/cooliris/media/GridLayer$7;

    invoke-direct {v2, p0}, Lcom/cooliris/media/GridLayer$7;-><init>(Lcom/cooliris/media/GridLayer;)V

    invoke-virtual {v0, v1, p2, v2}, Lcom/cooliris/media/PathBarLayer;->pushLabel(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 2312
    :cond_2d
    return-void
.end method

.method public setZoomValue(F)V
    .registers 4
    .parameter

    .prologue
    .line 2229
    iput p1, p0, Lcom/cooliris/media/GridLayer;->mZoomValue:F

    .line 2230
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v0}, Lcom/cooliris/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v0

    const/high16 v1, 0x4120

    invoke-virtual {p0, v0, v1}, Lcom/cooliris/media/GridLayer;->centerCameraForSlot(IF)V

    .line 2231
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mBoundaryLayer:Lcom/cooliris/media/BoundaryLayer;

    invoke-virtual {v0, p1}, Lcom/cooliris/media/BoundaryLayer;->setZoomValue(F)V

    .line 2232
    return-void
.end method

.method public shutdown()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 344
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->endSlideshow()V

    .line 345
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    if-eqz v0, :cond_d

    .line 346
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v0}, Lcom/cooliris/media/MediaFeed;->shutdown()V

    .line 348
    :cond_d
    iput-object v1, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    .line 349
    iput-object v1, p0, Lcom/cooliris/media/GridLayer;->mView:Lcom/cooliris/media/RenderView;

    .line 350
    return-void
.end method

.method public startSlideshow()V
    .registers 4

    .prologue
    const/high16 v2, 0x3f80

    .line 2062
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->endSlideshow()V

    .line 2063
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->deselectAll()V

    .line 2064
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cooliris/media/HudLayer;->setMode(I)V

    .line 2065
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/GridLayer;->mSlideshowMode:Z

    .line 2066
    iput v2, p0, Lcom/cooliris/media/GridLayer;->mZoomValue:F

    .line 2067
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mBoundaryLayer:Lcom/cooliris/media/BoundaryLayer;

    iget v1, p0, Lcom/cooliris/media/GridLayer;->mZoomValue:F

    invoke-virtual {v0, v1}, Lcom/cooliris/media/BoundaryLayer;->setZoomValue(F)V

    .line 2068
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v0}, Lcom/cooliris/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/cooliris/media/GridLayer;->centerCameraForSlot(IF)V

    .line 2069
    iput v2, p0, Lcom/cooliris/media/GridLayer;->mTimeElapsedSinceView:F

    .line 2070
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cooliris/media/HudLayer;->setAlpha(F)V

    .line 2071
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2072
    const/16 v1, 0xa

    const-string v2, "GridView.Slideshow"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/media/GridLayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2073
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2074
    return-void
.end method

.method public startSlideshowSelected()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 2504
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mSelectedBucketList:Lcom/cooliris/media/MediaBucketList;

    .line 2505
    invoke-virtual {v0}, Lcom/cooliris/media/MediaBucketList;->get()Ljava/util/ArrayList;

    move-result-object v4

    .line 2506
    sget-object v5, Lcom/cooliris/media/GridLayer;->mDisplayList:Lcom/cooliris/media/DisplayList;

    .line 2507
    const/16 v0, 0x480

    new-array v6, v0, [Lcom/cooliris/media/DisplayItem;

    .line 2509
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2511
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v3, v2

    .line 2512
    :goto_18
    if-ge v3, v7, :cond_4e

    .line 2513
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaBucket;

    .line 2514
    iget-object v8, v0, Lcom/cooliris/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 2515
    if-eqz v8, :cond_4a

    .line 2516
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v1, v2

    .line 2517
    :goto_29
    if-ge v1, v9, :cond_4a

    .line 2519
    :try_start_2b
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaItem;

    .line 2520
    invoke-virtual {v5, v0}, Lcom/cooliris/media/DisplayList;->get(Lcom/cooliris/media/MediaItem;)Lcom/cooliris/media/DisplayItem;

    move-result-object v10

    .line 2521
    invoke-virtual {v5, v10}, Lcom/cooliris/media/DisplayList;->addToAnimatables(Lcom/cooliris/media/DisplayItem;)V

    .line 2522
    aput-object v10, v6, v1

    .line 2523
    iget-object v10, p0, Lcom/cooliris/media/GridLayer;->uriList:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/cooliris/media/MediaItem;->mContentUri:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2b .. :try_end_41} :catch_45

    .line 2517
    :goto_41
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_29

    .line 2524
    :catch_45
    move-exception v0

    .line 2525
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_41

    .line 2512
    :cond_4a
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_18

    .line 2531
    :cond_4e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2532
    const-string v1, "slideshow"

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2533
    const-string v1, "slideshowseleted"

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2534
    const-string v1, "slideUriList"

    iget-object v2, p0, Lcom/cooliris/media/GridLayer;->uriList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2535
    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2536
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mBackground:Lcom/cooliris/media/BackgroundLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/BackgroundLayer;->clear()V

    .line 354
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->handleLowMemory()V

    .line 355
    invoke-static {}, Lcom/cooliris/media/GridInputProcessor;->resetScale()V

    .line 356
    return-void
.end method

.method public tapGesture(IZ)Z
    .registers 16
    .parameter "slotIndex"
    .parameter "metadata"

    .prologue
    const/4 v0, 0x1

    const/4 v12, 0x0

    .line 1989
    iget-object v9, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    .line 1990
    .local v9, feed:Lcom/cooliris/media/MediaFeed;
    if-nez v9, :cond_8

    move v0, v12

    .line 2022
    :cond_7
    :goto_7
    return v0

    .line 1992
    :cond_8
    invoke-virtual {v9}, Lcom/cooliris/media/MediaFeed;->isClustered()Z

    move-result v1

    if-nez v1, :cond_24

    .line 1994
    invoke-virtual {v9}, Lcom/cooliris/media/MediaFeed;->hasExpandedMediaSet()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1995
    invoke-virtual {v9, p1}, Lcom/cooliris/media/MediaFeed;->canExpandSet(I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1996
    iput p1, p0, Lcom/cooliris/media/GridLayer;->mCurrentExpandedSlot:I

    .line 1997
    invoke-virtual {v9, p1}, Lcom/cooliris/media/MediaFeed;->expandMediaSet(I)V

    .line 1998
    invoke-virtual {p0, v0}, Lcom/cooliris/media/GridLayer;->setState(I)V

    :cond_22
    move v0, v12

    .line 2000
    goto :goto_7

    .line 2007
    :cond_24
    iput p1, p0, Lcom/cooliris/media/GridLayer;->mCurrentExpandedSlot:I

    .line 2008
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMarkedBucketList:Lcom/cooliris/media/MediaBucketList;

    invoke-virtual {v0}, Lcom/cooliris/media/MediaBucketList;->clear()V

    .line 2009
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mMarkedBucketList:Lcom/cooliris/media/MediaBucketList;

    invoke-virtual {v0, p1, v9, v12}, Lcom/cooliris/media/MediaBucketList;->add(ILcom/cooliris/media/MediaFeed;Z)V

    .line 2010
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->goBack()Z

    .line 2011
    if-eqz p2, :cond_62

    .line 2012
    sget-object v0, Lcom/cooliris/media/GridLayer;->mDisplaySlots:[Lcom/cooliris/media/DisplaySlot;

    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mBufferedVisibleRange:Lcom/cooliris/media/IndexRange;

    iget v1, v1, Lcom/cooliris/media/IndexRange;->begin:I

    sub-int v1, p1, v1

    aget-object v11, v0, v1

    .line 2013
    .local v11, slot:Lcom/cooliris/media/DisplaySlot;
    invoke-virtual {v11}, Lcom/cooliris/media/DisplaySlot;->hasValidLocation()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 2014
    invoke-virtual {v11}, Lcom/cooliris/media/DisplaySlot;->getMediaSet()Lcom/cooliris/media/MediaSet;

    move-result-object v10

    .line 2015
    .local v10, set:Lcom/cooliris/media/MediaSet;
    iget-object v0, v10, Lcom/cooliris/media/MediaSet;->mReverseGeocodedLocation:Ljava/lang/String;

    if-eqz v0, :cond_52

    .line 2016
    iget-object v0, v10, Lcom/cooliris/media/MediaSet;->mReverseGeocodedLocation:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cooliris/media/GridLayer;->enableLocationFiltering(Ljava/lang/String;)V

    .line 2018
    :cond_52
    new-instance v0, Lcom/cooliris/media/LocationMediaFilter;

    iget-wide v1, v10, Lcom/cooliris/media/MediaSet;->mMinLatLatitude:D

    iget-wide v3, v10, Lcom/cooliris/media/MediaSet;->mMinLonLongitude:D

    iget-wide v5, v10, Lcom/cooliris/media/MediaSet;->mMaxLatLatitude:D

    iget-wide v7, v10, Lcom/cooliris/media/MediaSet;->mMaxLonLongitude:D

    invoke-direct/range {v0 .. v8}, Lcom/cooliris/media/LocationMediaFilter;-><init>(DDDD)V

    invoke-virtual {v9, v0}, Lcom/cooliris/media/MediaFeed;->setFilter(Lcom/cooliris/media/MediaFilter;)V

    .end local v10           #set:Lcom/cooliris/media/MediaSet;
    .end local v11           #slot:Lcom/cooliris/media/DisplaySlot;
    :cond_62
    move v0, v12

    .line 2022
    goto :goto_7
.end method

.method public update(Lcom/cooliris/media/RenderView;F)Z
    .registers 14
    .parameter "view"
    .parameter "timeElapsed"

    .prologue
    .line 778
    iget-boolean v7, p0, Lcom/cooliris/media/GridLayer;->mSlideshowMode:Z

    if-eqz v7, :cond_22

    iget-object v7, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    if-eqz v7, :cond_22

    .line 779
    iget-object v7, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v7}, Lcom/cooliris/media/HudLayer;->getPathBar()Lcom/cooliris/media/PathBarLayer;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/cooliris/media/PathBarLayer;->setHidden(Z)V

    .line 780
    iget-object v7, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v7}, Lcom/cooliris/media/HudLayer;->getMenuBar()Lcom/cooliris/media/Layer;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/cooliris/media/Layer;->setHidden(Z)V

    .line 781
    iget-object v7, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/cooliris/media/HudLayer;->hideZoomButtons(Z)V

    .line 784
    :cond_22
    iget-boolean v7, p0, Lcom/cooliris/media/GridLayer;->mFeedAboutToChange:Z

    if-nez v7, :cond_fb

    .line 785
    iget v7, p0, Lcom/cooliris/media/GridLayer;->mTimeElapsedSinceTransition:F

    add-float/2addr v7, p2

    iput v7, p0, Lcom/cooliris/media/GridLayer;->mTimeElapsedSinceTransition:F

    .line 786
    iget v7, p0, Lcom/cooliris/media/GridLayer;->mTimeElapsedSinceGridViewReady:F

    add-float/2addr v7, p2

    iput v7, p0, Lcom/cooliris/media/GridLayer;->mTimeElapsedSinceGridViewReady:F

    .line 787
    iget v7, p0, Lcom/cooliris/media/GridLayer;->mTimeElapsedSinceGridViewReady:F

    const/high16 v8, 0x3f80

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_3c

    .line 788
    const/high16 v7, 0x3f80

    iput v7, p0, Lcom/cooliris/media/GridLayer;->mTimeElapsedSinceGridViewReady:F

    .line 790
    :cond_3c
    iget v7, p0, Lcom/cooliris/media/GridLayer;->mTimeElapsedSinceStackViewReady:F

    add-float/2addr v7, p2

    iput v7, p0, Lcom/cooliris/media/GridLayer;->mTimeElapsedSinceStackViewReady:F

    .line 791
    iget v7, p0, Lcom/cooliris/media/GridLayer;->mTimeElapsedSinceStackViewReady:F

    const/high16 v8, 0x3f80

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_4d

    .line 792
    const/high16 v7, 0x3f80

    iput v7, p0, Lcom/cooliris/media/GridLayer;->mTimeElapsedSinceStackViewReady:F

    .line 812
    :cond_4d
    :goto_4d
    iget-object v7, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    if-eqz v7, :cond_79

    iget-object v7, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v7}, Lcom/cooliris/media/MediaFeed;->isSingleImageMode()Z

    move-result v7

    if-eqz v7, :cond_79

    .line 813
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v4

    .line 814
    .local v4, hud:Lcom/cooliris/media/HudLayer;
    if-eqz v4, :cond_79

    .line 815
    invoke-virtual {v4}, Lcom/cooliris/media/HudLayer;->getPathBar()Lcom/cooliris/media/PathBarLayer;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/cooliris/media/PathBarLayer;->setHidden(Z)V

    .line 816
    invoke-virtual {v4}, Lcom/cooliris/media/HudLayer;->getMenuBar()Lcom/cooliris/media/Layer;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/cooliris/media/Layer;->setHidden(Z)V

    .line 817
    invoke-virtual {v4}, Lcom/cooliris/media/HudLayer;->getMode()I

    move-result v7

    if-eqz v7, :cond_79

    .line 818
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/cooliris/media/HudLayer;->setMode(I)V

    .line 822
    .end local v4           #hud:Lcom/cooliris/media/HudLayer;
    :cond_79
    iget-object v7, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    if-eqz v7, :cond_9e

    .line 823
    invoke-virtual {p1}, Lcom/cooliris/media/RenderView;->elapsedLoadingExpensiveTextures()J

    move-result-wide v7

    const-wide/16 v9, 0x96

    cmp-long v7, v7, v9

    if-gtz v7, :cond_93

    iget-object v7, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    if-eqz v7, :cond_100

    iget-object v7, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v7}, Lcom/cooliris/media/MediaFeed;->getWaitingForMediaScanner()Z

    move-result v7

    if-eqz v7, :cond_100

    .line 825
    :cond_93
    iget-object v7, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v7}, Lcom/cooliris/media/HudLayer;->getPathBar()Lcom/cooliris/media/PathBarLayer;

    move-result-object v7

    sget-object v8, Lcom/cooliris/media/GridDrawables;->TEXTURE_SPINNER:[I

    invoke-virtual {v7, v8}, Lcom/cooliris/media/PathBarLayer;->setAnimatedIcons([I)V

    .line 833
    :cond_9e
    :goto_9e
    iget-object v1, p0, Lcom/cooliris/media/GridLayer;->mCamera:Lcom/cooliris/media/GridCamera;

    .line 834
    .local v1, camera:Lcom/cooliris/media/GridCamera;
    invoke-virtual {v1, p2}, Lcom/cooliris/media/GridCamera;->update(F)V

    .line 835
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/cooliris/media/GridLayer;->getAnchorDisplayItem(I)Lcom/cooliris/media/DisplayItem;

    move-result-object v0

    .line 836
    .local v0, anchorDisplayItem:Lcom/cooliris/media/DisplayItem;
    iget-object v7, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    if-eqz v7, :cond_c5

    if-eqz v0, :cond_c5

    iget-object v7, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v7}, Lcom/cooliris/media/HudLayer;->getTimeBar()Lcom/cooliris/media/TimeBar;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cooliris/media/TimeBar;->isDragged()Z

    move-result v7

    if-nez v7, :cond_c5

    .line 837
    iget-object v7, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v7}, Lcom/cooliris/media/HudLayer;->getTimeBar()Lcom/cooliris/media/TimeBar;

    move-result-object v7

    iget-object v8, v0, Lcom/cooliris/media/DisplayItem;->mItemRef:Lcom/cooliris/media/MediaItem;

    invoke-virtual {v7, v8}, Lcom/cooliris/media/TimeBar;->setItem(Lcom/cooliris/media/MediaItem;)V

    .line 842
    :cond_c5
    sget-object v7, Lcom/cooliris/media/GridLayer;->mDisplayList:Lcom/cooliris/media/DisplayList;

    iget v8, p0, Lcom/cooliris/media/GridLayer;->mState:I

    invoke-virtual {v7, v8, p2}, Lcom/cooliris/media/DisplayList;->update(IF)V

    .line 845
    iget-object v7, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v7, p2}, Lcom/cooliris/media/GridInputProcessor;->update(F)V

    .line 846
    iget v7, p0, Lcom/cooliris/media/GridLayer;->mSelectedAlpha:F

    iget v8, p0, Lcom/cooliris/media/GridLayer;->mTargetAlpha:F

    const/high16 v9, 0x3f00

    mul-float/2addr v9, p2

    invoke-static {v7, v8, v9}, Lcom/cooliris/media/FloatUtils;->animate(FFF)F

    move-result v7

    iput v7, p0, Lcom/cooliris/media/GridLayer;->mSelectedAlpha:F

    .line 847
    iget-object v7, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    if-eqz v7, :cond_ed

    .line 848
    iget v7, p0, Lcom/cooliris/media/GridLayer;->mState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_10b

    .line 849
    iget-object v7, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/cooliris/media/HudLayer;->autoHide(Z)V

    .line 855
    :cond_ed
    :goto_ed
    sget-object v3, Lcom/cooliris/media/GridDrawables;->sFullscreenGrid:[Lcom/cooliris/media/GridQuad;

    .line 856
    .local v3, fullscreenQuads:[Lcom/cooliris/media/GridQuad;
    array-length v6, v3

    .line 857
    .local v6, numFullScreenQuads:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_f1
    if-ge v5, v6, :cond_119

    .line 858
    aget-object v7, v3, v5

    invoke-virtual {v7, p2}, Lcom/cooliris/media/GridQuad;->update(F)V

    .line 857
    add-int/lit8 v5, v5, 0x1

    goto :goto_f1

    .line 795
    .end local v0           #anchorDisplayItem:Lcom/cooliris/media/DisplayItem;
    .end local v1           #camera:Lcom/cooliris/media/GridCamera;
    .end local v3           #fullscreenQuads:[Lcom/cooliris/media/GridQuad;
    .end local v5           #i:I
    .end local v6           #numFullScreenQuads:I
    :cond_fb
    const/4 v7, 0x0

    iput v7, p0, Lcom/cooliris/media/GridLayer;->mTimeElapsedSinceTransition:F

    goto/16 :goto_4d

    .line 827
    :cond_100
    iget-object v7, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v7}, Lcom/cooliris/media/HudLayer;->getPathBar()Lcom/cooliris/media/PathBarLayer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/cooliris/media/PathBarLayer;->setAnimatedIcons([I)V

    goto :goto_9e

    .line 851
    .restart local v0       #anchorDisplayItem:Lcom/cooliris/media/DisplayItem;
    .restart local v1       #camera:Lcom/cooliris/media/GridCamera;
    :cond_10b
    iget-object v7, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/cooliris/media/HudLayer;->autoHide(Z)V

    .line 852
    iget-object v7, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    const/high16 v8, 0x3f80

    invoke-virtual {v7, v8}, Lcom/cooliris/media/HudLayer;->setAlpha(F)V

    goto :goto_ed

    .line 860
    .restart local v3       #fullscreenQuads:[Lcom/cooliris/media/GridQuad;
    .restart local v5       #i:I
    .restart local v6       #numFullScreenQuads:I
    :cond_119
    iget-boolean v7, p0, Lcom/cooliris/media/GridLayer;->mSlideshowMode:Z

    if-eqz v7, :cond_141

    iget v7, p0, Lcom/cooliris/media/GridLayer;->mState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_141

    .line 861
    iget v7, p0, Lcom/cooliris/media/GridLayer;->mTimeElapsedSinceView:F

    add-float/2addr v7, p2

    iput v7, p0, Lcom/cooliris/media/GridLayer;->mTimeElapsedSinceView:F

    .line 862
    iget v7, p0, Lcom/cooliris/media/GridLayer;->mTimeElapsedSinceView:F

    const/high16 v8, 0x4000

    cmpl-float v7, v7, v8

    if-lez v7, :cond_141

    .line 864
    const/4 v7, 0x0

    iput v7, p0, Lcom/cooliris/media/GridLayer;->mTimeElapsedSinceView:F

    .line 865
    const/high16 v7, 0x3f80

    invoke-virtual {p0, v7}, Lcom/cooliris/media/GridLayer;->changeFocusToNextSlot(F)Z

    .line 866
    iget-object v7, p0, Lcom/cooliris/media/GridLayer;->mCamera:Lcom/cooliris/media/GridCamera;

    invoke-virtual {v7}, Lcom/cooliris/media/GridCamera;->commitMoveInX()V

    .line 867
    iget-object v7, p0, Lcom/cooliris/media/GridLayer;->mCamera:Lcom/cooliris/media/GridCamera;

    invoke-virtual {v7}, Lcom/cooliris/media/GridCamera;->commitMoveInY()V

    .line 870
    :cond_141
    iget v7, p0, Lcom/cooliris/media/GridLayer;->mState:I

    if-eqz v7, :cond_14a

    iget v7, p0, Lcom/cooliris/media/GridLayer;->mState:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_157

    .line 871
    :cond_14a
    iget-object v7, p0, Lcom/cooliris/media/GridLayer;->mCamera:Lcom/cooliris/media/GridCamera;

    const v8, -0x42333333

    invoke-virtual {v7, v8}, Lcom/cooliris/media/GridCamera;->moveYTo(F)V

    .line 872
    iget-object v7, p0, Lcom/cooliris/media/GridLayer;->mCamera:Lcom/cooliris/media/GridCamera;

    invoke-virtual {v7}, Lcom/cooliris/media/GridCamera;->commitMoveInY()V

    .line 874
    :cond_157
    iget-object v7, p0, Lcom/cooliris/media/GridLayer;->mDrawManager:Lcom/cooliris/media/GridDrawManager;

    invoke-virtual {v7, p2}, Lcom/cooliris/media/GridDrawManager;->update(F)Z

    move-result v2

    .line 875
    .local v2, dirty:Z
    iget-boolean v7, p0, Lcom/cooliris/media/GridLayer;->mSlideshowMode:Z

    or-int/2addr v2, v7

    .line 876
    iget v7, p0, Lcom/cooliris/media/GridLayer;->mFramesDirty:I

    if-lez v7, :cond_1ac

    const/4 v7, 0x1

    :goto_165
    or-int/2addr v2, v7

    .line 877
    iget v7, p0, Lcom/cooliris/media/GridLayer;->mFramesDirty:I

    if-lez v7, :cond_170

    .line 878
    iget v7, p0, Lcom/cooliris/media/GridLayer;->mFramesDirty:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/cooliris/media/GridLayer;->mFramesDirty:I

    .line 881
    :cond_170
    :try_start_170
    iget-object v7, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    if-eqz v7, :cond_181

    iget-object v7, p0, Lcom/cooliris/media/GridLayer;->mMediaFeed:Lcom/cooliris/media/MediaFeed;

    invoke-virtual {v7}, Lcom/cooliris/media/MediaFeed;->getWaitingForMediaScanner()Z

    move-result v7

    if-eqz v7, :cond_181

    .line 884
    const-wide/16 v7, 0xc8

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_181
    .catch Ljava/lang/InterruptedException; {:try_start_170 .. :try_end_181} :catch_1b0

    .line 889
    :cond_181
    :goto_181
    sget-object v7, Lcom/cooliris/media/GridLayer;->mDisplayList:Lcom/cooliris/media/DisplayList;

    invoke-virtual {v7}, Lcom/cooliris/media/DisplayList;->getNumAnimatables()I

    move-result v7

    if-nez v7, :cond_1aa

    iget-object v7, p0, Lcom/cooliris/media/GridLayer;->mCamera:Lcom/cooliris/media/GridCamera;

    invoke-virtual {v7}, Lcom/cooliris/media/GridCamera;->isAnimating()Z

    move-result v7

    if-nez v7, :cond_1aa

    iget v7, p0, Lcom/cooliris/media/GridLayer;->mTimeElapsedSinceTransition:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1a0

    iget v7, p0, Lcom/cooliris/media/GridLayer;->mTimeElapsedSinceTransition:F

    const/high16 v8, 0x3f80

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_1aa

    :cond_1a0
    iget v7, p0, Lcom/cooliris/media/GridLayer;->mSelectedAlpha:F

    iget v8, p0, Lcom/cooliris/media/GridLayer;->mTargetAlpha:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_1aa

    if-eqz v2, :cond_1ae

    .line 894
    :cond_1aa
    const/4 v7, 0x1

    .line 896
    :goto_1ab
    return v7

    .line 876
    :cond_1ac
    const/4 v7, 0x0

    goto :goto_165

    .line 896
    :cond_1ae
    const/4 v7, 0x0

    goto :goto_1ab

    .line 886
    :catch_1b0
    move-exception v7

    goto :goto_181
.end method

.method public zoomInToSelectedItem()V
    .registers 5

    .prologue
    const/high16 v3, 0x40c0

    const/high16 v2, 0x3f80

    .line 2097
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cooliris/media/GridLayer;->mSlideshowMode:Z

    .line 2098
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->isFullImageLoaded()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2099
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->getFillScreenZoomValue()F

    move-result v0

    .line 2100
    iget v1, p0, Lcom/cooliris/media/GridLayer;->mZoomValue:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_37

    .line 2101
    iput v0, p0, Lcom/cooliris/media/GridLayer;->mZoomValue:F

    .line 2105
    :goto_19
    iget v0, p0, Lcom/cooliris/media/GridLayer;->mZoomValue:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_21

    .line 2106
    iput v3, p0, Lcom/cooliris/media/GridLayer;->mZoomValue:F

    .line 2109
    :cond_21
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mBoundaryLayer:Lcom/cooliris/media/BoundaryLayer;

    iget v1, p0, Lcom/cooliris/media/GridLayer;->mZoomValue:F

    invoke-virtual {v0, v1}, Lcom/cooliris/media/BoundaryLayer;->setZoomValue(F)V

    .line 2110
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v0, v2}, Lcom/cooliris/media/HudLayer;->setAlpha(F)V

    .line 2111
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v0}, Lcom/cooliris/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/cooliris/media/GridLayer;->centerCameraForSlot(IF)V

    .line 2112
    return-void

    .line 2103
    :cond_37
    iget v0, p0, Lcom/cooliris/media/GridLayer;->mZoomValue:F

    const/high16 v1, 0x4040

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/cooliris/media/GridLayer;->mZoomValue:F

    goto :goto_19
.end method

.method public zoomOutFromSelectedItem()V
    .registers 4

    .prologue
    const/high16 v2, 0x3f80

    .line 2126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cooliris/media/GridLayer;->mSlideshowMode:Z

    .line 2127
    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->isFullImageLoaded()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2128
    iget v0, p0, Lcom/cooliris/media/GridLayer;->mZoomValue:F

    invoke-virtual {p0}, Lcom/cooliris/media/GridLayer;->getFillScreenZoomValue()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3e

    .line 2129
    iput v2, p0, Lcom/cooliris/media/GridLayer;->mZoomValue:F

    .line 2133
    :goto_17
    iget v0, p0, Lcom/cooliris/media/GridLayer;->mZoomValue:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1f

    .line 2134
    iput v2, p0, Lcom/cooliris/media/GridLayer;->mZoomValue:F

    .line 2137
    :cond_1f
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mHud:Lcom/cooliris/media/HudLayer;

    invoke-virtual {v0, v2}, Lcom/cooliris/media/HudLayer;->setAlpha(F)V

    .line 2138
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v0}, Lcom/cooliris/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/cooliris/media/GridLayer;->centerCameraForSlot(IF)V

    .line 2139
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mInputProcessor:Lcom/cooliris/media/GridInputProcessor;

    invoke-virtual {v0}, Lcom/cooliris/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/cooliris/media/GridLayer;->constrainCameraForSlot(I)Z

    .line 2140
    iget-object v0, p0, Lcom/cooliris/media/GridLayer;->mBoundaryLayer:Lcom/cooliris/media/BoundaryLayer;

    iget v1, p0, Lcom/cooliris/media/GridLayer;->mZoomValue:F

    invoke-virtual {v0, v1}, Lcom/cooliris/media/BoundaryLayer;->setZoomValue(F)V

    .line 2141
    return-void

    .line 2131
    :cond_3e
    iget v0, p0, Lcom/cooliris/media/GridLayer;->mZoomValue:F

    const/high16 v1, 0x4040

    div-float/2addr v0, v1

    iput v0, p0, Lcom/cooliris/media/GridLayer;->mZoomValue:F

    goto :goto_17
.end method
