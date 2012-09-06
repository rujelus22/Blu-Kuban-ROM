.class public Lcom/sec/android/glview/TwGLList;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLList.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;,
        Lcom/sec/android/glview/TwGLList$OnScrollListener;,
        Lcom/sec/android/glview/TwGLList$OnItemSelectedListener;,
        Lcom/sec/android/glview/TwGLList$Adapter;
    }
.end annotation


# static fields
.field private static final BOUNCE_EFFECT_IMAGE_DEFAULT_ALPHA:F = 0.3f

.field private static final BOUNCE_SEVERAL_TIMES:Z = false

.field private static final BOUNCING_VELOCITY:F = 3.0f

.field private static final COEFFICIENT_OF_RESTITUTION:F = 0.4f

.field private static final DEFAULT_SCROLLBAR_PADDING:I = 0x4

.field private static final DRAG_ATTENUATION_RATE_FACTOR:F = 0.7f

.field private static final FLING_VELOCITY:F = 0.3f

.field private static final HIDE_SCROLLBAR:I = 0x1

.field private static final SCROLLBAR_ID:I = 0xfffff

.field private static final SCROLLBAR_TIMEOUT:I = 0x3e8

.field public static final SCROLL_LANDSCAPE:I = 0x2

.field public static final SCROLL_PORTRAIT:I = 0x1

.field public static final STACK_DOWN:I = 0x0

.field public static final STACK_RIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TwGLList"

.field private static mScrollThreshold:F


# instance fields
.field private BOUNCE_EDGE_SIZE:F

.field private BOUNCE_IMAGE_SIZE:F

.field private mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

.field private mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

.field private mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

.field private mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

.field private mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

.field private mBouncing:Z

.field private mContentHeight:F

.field private mContentWidth:F

.field private mFlingVelocityX:F

.field private mFlingVelocityY:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLandscapeBounceOffset:F

.field private mListVisibleHeight:F

.field private mListVisibleWidth:F

.field protected mMainHandler:Landroid/os/Handler;

.field private mOnScrollListener:Lcom/sec/android/glview/TwGLList$OnScrollListener;

.field private mPortraitBounceOffset:F

.field private mScroll:I

.field private mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field private mScrollBarOffset:F

.field private mScrollBarSize:F

.field private mScrollBarVisible:Z

.field private mScrollSumX:F

.field private mScrollSumY:F

.field private mScrollX:F

.field private mScrollY:F

.field private mScrolling:Z

.field private mStackOrientation:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    const/high16 v0, 0x4120

    sput v0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .registers 9
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 285
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 50
    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    .line 65
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    .line 71
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollX:F

    .line 74
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollY:F

    .line 77
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 80
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 83
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    .line 86
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    .line 89
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    .line 92
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    .line 98
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    .line 101
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarSize:F

    .line 104
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    .line 106
    const/high16 v0, 0x4339

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    .line 108
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    .line 122
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    .line 125
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    .line 131
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 134
    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 137
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    .line 168
    new-instance v0, Lcom/sec/android/glview/TwGLList$1;

    invoke-direct {v0, p0}, Lcom/sec/android/glview/TwGLList$1;-><init>(Lcom/sec/android/glview/TwGLList;)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mMainHandler:Landroid/os/Handler;

    .line 291
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/glview/TwGLList;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/glview/TwGLList;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/glview/TwGLList;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    return p1
.end method

.method static synthetic access$302(Lcom/sec/android/glview/TwGLList;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    return p1
.end method

.method private checkBoundary()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1220
    const/4 v0, 0x0

    .line 1221
    .local v0, ret:Z
    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 1222
    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_27

    .line 1224
    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    .line 1225
    const/4 v0, 0x1

    .line 1233
    :cond_14
    :goto_14
    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_26

    .line 1234
    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_45

    .line 1236
    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    .line 1237
    const/4 v0, 0x1

    .line 1245
    :cond_26
    :goto_26
    return v0

    .line 1226
    :cond_27
    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaHeight()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_42

    .line 1228
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaHeight()F

    move-result v1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    .line 1229
    const/4 v0, 0x1

    goto :goto_14

    .line 1231
    :cond_42
    iput v4, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    goto :goto_14

    .line 1238
    :cond_45
    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaWidth()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_60

    .line 1240
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaWidth()F

    move-result v1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    .line 1241
    const/4 v0, 0x1

    goto :goto_26

    .line 1243
    :cond_60
    iput v4, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    goto :goto_26
.end method

.method private setScrollBarLayout()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 414
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1a

    .line 433
    :cond_19
    :goto_19
    return-void

    .line 417
    :cond_1a
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    .line 419
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_93

    .line 420
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_72

    .line 421
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getRight()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getLeft()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4080

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayoutAbsolute(FF)V

    .line 425
    :goto_43
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarSize:F

    .line 426
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getWidth()F

    move-result v1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarSize:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 432
    :cond_5a
    :goto_5a
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    mul-float/2addr v1, v2

    neg-float v1, v1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    mul-float/2addr v2, v3

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->translateAbsolute(FF)V

    goto :goto_19

    .line 423
    :cond_72
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getRight()F

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getLeft()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayoutAbsolute(FF)V

    goto :goto_43

    .line 427
    :cond_93
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-ne v0, v2, :cond_5a

    .line 428
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getBottom()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getTop()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayoutAbsolute(FF)V

    .line 429
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarSize:F

    .line 430
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarSize:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    goto :goto_5a
.end method

.method private setVisibleArea()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 385
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    .line 386
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    .line 389
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_75

    .line 390
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_74

    .line 391
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 392
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 393
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 394
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 395
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 396
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 408
    :cond_74
    :goto_74
    return-void

    .line 398
    :cond_75
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_74

    .line 399
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_74

    .line 400
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 401
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 402
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 403
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 404
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 405
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    goto :goto_74
.end method


# virtual methods
.method public addView(Lcom/sec/android/glview/TwGLView;)V
    .registers 7
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 659
    instance-of v2, p1, Lcom/sec/android/glview/TwGLList;

    if-eqz v2, :cond_b

    .line 660
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 662
    :cond_b
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v2, :cond_f1

    .line 663
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    .line 664
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_28

    .line 665
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    .line 674
    :cond_28
    :goto_28
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    .line 675
    .local v1, paddings:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 677
    .local v0, childPaddings:Landroid/graphics/Rect;
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8e

    .line 678
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getLeft()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_62

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getLeft()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_62

    .line 679
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getLeft()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 680
    :cond_62
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getRight()F

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8e

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getRight()F

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_8e

    .line 681
    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getRight()F

    move-result v3

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 683
    :cond_8e
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-eqz v2, :cond_ea

    .line 684
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getTop()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_be

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getTop()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_be

    .line 685
    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getTop()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 686
    :cond_be
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getBottom()F

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_ea

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getBottom()F

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_ea

    .line 687
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getBottom()F

    move-result v3

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 690
    :cond_ea
    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V

    .line 692
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 693
    return-void

    .line 668
    .end local v0           #childPaddings:Landroid/graphics/Rect;
    .end local v1           #paddings:Landroid/graphics/Rect;
    :cond_f1
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    .line 669
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_28

    .line 670
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    goto/16 :goto_28
.end method

.method public contains(FF)Z
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_8

    .line 365
    const/4 v0, 0x0

    .line 367
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_7
.end method

.method public getScrollThreshold()F
    .registers 2

    .prologue
    .line 458
    sget v0, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    return v0
.end method

.method protected hideScrollBar()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 492
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getScrollBarAutoHide()Z

    move-result v0

    if-nez v0, :cond_c

    .line 512
    :goto_b
    return-void

    .line 495
    :cond_c
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    if-nez v0, :cond_20

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_20

    .line 496
    :cond_1c
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->restartScrollBarTimer()V

    goto :goto_b

    .line 500
    :cond_20
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setAnimation(Landroid/view/animation/Animation;Z)V

    .line 501
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    new-instance v1, Lcom/sec/android/glview/TwGLList$2;

    invoke-direct {v1, p0}, Lcom/sec/android/glview/TwGLList$2;-><init>(Lcom/sec/android/glview/TwGLList;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    .line 511
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->startAnimation()V

    goto :goto_b
.end method

.method public invalidate()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 642
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v1

    .line 643
    :try_start_4
    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 644
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_1b

    .line 646
    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    .line 647
    iput v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    .line 649
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v0}, Lcom/sec/android/glview/TwGLList$Adapter;->reset()V

    .line 650
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;I)V

    .line 651
    return-void

    .line 644
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public onDrag(FFFF)V
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1004
    invoke-virtual {p0, p3, p4}, Lcom/sec/android/glview/TwGLList;->translate(FF)V

    .line 1005
    return-void
.end method

.method public onDragEnd(FF)V
    .registers 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1011
    return-void
.end method

.method public onDragStart(FF)V
    .registers 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 998
    return-void
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 15
    .parameter "gl"

    .prologue
    .line 718
    iget-object v8, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v8

    .line 719
    :try_start_3
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    add-float/2addr v7, v9

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 720
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    add-float/2addr v7, v9

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 721
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->checkBoundary()Z

    move-result v7

    if-nez v7, :cond_15d

    .line 723
    const/4 v3, 0x0

    .local v3, i:I
    :goto_18
    iget-object v7, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_8c

    .line 724
    iget-object v7, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/glview/TwGLView;

    .line 725
    .local v5, view:Lcom/sec/android/glview/TwGLView;
    if-nez v5, :cond_2d

    .line 723
    :cond_2a
    :goto_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 728
    :cond_2d
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v7, v3, v5}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    .line 729
    .local v1, convertView:Lcom/sec/android/glview/TwGLView;
    if-eqz v1, :cond_2a

    .line 732
    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_66

    .line 733
    invoke-virtual {p0, v5}, Lcom/sec/android/glview/TwGLList;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 734
    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 735
    move-object v5, v1

    .line 737
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v7, :cond_72

    .line 738
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    add-float/2addr v7, v9

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    .line 739
    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_5f

    .line 740
    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    .line 748
    :cond_5f
    :goto_5f
    iget-object v7, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v7, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 749
    iput-object p0, v1, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 753
    :cond_66
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v9, v10}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto :goto_2a

    .line 991
    .end local v1           #convertView:Lcom/sec/android/glview/TwGLView;
    .end local v3           #i:I
    .end local v5           #view:Lcom/sec/android/glview/TwGLView;
    :catchall_6f
    move-exception v7

    monitor-exit v8
    :try_end_71
    .catchall {:try_start_3 .. :try_end_71} :catchall_6f

    throw v7

    .line 743
    .restart local v1       #convertView:Lcom/sec/android/glview/TwGLView;
    .restart local v3       #i:I
    .restart local v5       #view:Lcom/sec/android/glview/TwGLView;
    :cond_72
    :try_start_72
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v9

    add-float/2addr v7, v9

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    .line 744
    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_5f

    .line 745
    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    goto :goto_5f

    .line 755
    .end local v1           #convertView:Lcom/sec/android/glview/TwGLView;
    .end local v5           #view:Lcom/sec/android/glview/TwGLView;
    :cond_8c
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v7, :cond_ac

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v7, :cond_ac

    .line 756
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    mul-float/2addr v9, v10

    neg-float v9, v9

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v11, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    mul-float/2addr v10, v11

    neg-float v10, v10

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11}, Lcom/sec/android/glview/TwGLNinePatchTexture;->translate(FFZ)V

    .line 760
    :cond_ac
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 761
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 762
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 763
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 767
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-lez v7, :cond_137

    .line 768
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const v9, 0x3e99999a

    sub-float/2addr v7, v9

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 769
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v9, 0x0

    cmpg-float v7, v7, v9

    if-gez v7, :cond_dd

    .line 770
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 776
    :cond_dd
    :goto_dd
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-lez v7, :cond_14a

    .line 777
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const v9, 0x3e99999a

    sub-float/2addr v7, v9

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 778
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v9, 0x0

    cmpg-float v7, v7, v9

    if-gez v7, :cond_f6

    .line 779
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 950
    .end local v3           #i:I
    :cond_f6
    :goto_f6
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-nez v7, :cond_104

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-eqz v7, :cond_4b8

    .line 951
    :cond_104
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 957
    :cond_10c
    :goto_10c
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_10d
    iget-object v7, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_4c9

    .line 958
    iget-object v7, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/glview/TwGLView;

    .line 959
    .restart local v5       #view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLList;->clip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 960
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL11;->glPushMatrix()V

    .line 961
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getMatrix()[F

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v5, p1, v7, v9}, Lcom/sec/android/glview/TwGLView;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 962
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL11;->glPopMatrix()V

    .line 963
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLList;->clearClip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 957
    add-int/lit8 v3, v3, 0x1

    goto :goto_10d

    .line 772
    .end local v5           #view:Lcom/sec/android/glview/TwGLView;
    :cond_137
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const v9, 0x3e99999a

    add-float/2addr v7, v9

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 773
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-lez v7, :cond_dd

    .line 774
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    goto :goto_dd

    .line 781
    :cond_14a
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const v9, 0x3e99999a

    add-float/2addr v7, v9

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 782
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-lez v7, :cond_f6

    .line 783
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    goto :goto_f6

    .line 785
    .end local v3           #i:I
    :cond_15d
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    if-eqz v7, :cond_f6

    .line 796
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    const/4 v9, 0x1

    if-ne v7, v9, :cond_301

    .line 797
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    cmpg-float v7, v7, v9

    if-gez v7, :cond_1b2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v2

    .line 799
    .local v2, height:F
    :goto_174
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    const v10, 0x3eb33333

    mul-float/2addr v9, v10

    div-float/2addr v7, v9

    const/high16 v9, 0x3f80

    cmpl-float v7, v7, v9

    if-lez v7, :cond_1b5

    const/high16 v0, 0x3f80

    .line 800
    .local v0, alpha:F
    :goto_189
    const v7, 0x3f333333

    mul-float/2addr v7, v0

    const v9, 0x3e99999a

    add-float v0, v7, v9

    .line 802
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-lez v7, :cond_233

    .line 806
    iget-object v7, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_19f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/glview/TwGLView;

    .line 807
    .restart local v5       #view:Lcom/sec/android/glview/TwGLView;
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v9, v10}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_19f

    .line 797
    .end local v0           #alpha:F
    .end local v2           #height:F
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #view:Lcom/sec/android/glview/TwGLView;
    :cond_1b2
    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    goto :goto_174

    .line 799
    .restart local v2       #height:F
    :cond_1b5
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    const v10, 0x3f333333

    mul-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    div-float v0, v7, v9

    goto :goto_189

    .line 809
    .restart local v0       #alpha:F
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_1c7
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v7, :cond_1d7

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v7, :cond_1d7

    .line 810
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11}, Lcom/sec/android/glview/TwGLNinePatchTexture;->translateAbsolute(FFZ)V

    .line 813
    :cond_1d7
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 814
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    iget-object v9, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v9

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    iget v11, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    add-float/2addr v10, v11

    invoke-virtual {v7, v9, v10}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 815
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    const/high16 v9, 0x3f80

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 819
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/high16 v9, 0x4040

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    div-float/2addr v10, v2

    const/high16 v11, 0x3f80

    add-float/2addr v10, v11

    mul-float/2addr v9, v10

    sub-float/2addr v7, v9

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 821
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    add-float/2addr v7, v9

    const/4 v9, 0x0

    cmpg-float v7, v7, v9

    if-gtz v7, :cond_214

    .line 828
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 829
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 830
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    .line 932
    .end local v0           #alpha:F
    .end local v2           #height:F
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_214
    :goto_214
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    if-nez v7, :cond_f6

    .line 934
    iget-object v7, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_21e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_476

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/glview/TwGLView;

    .line 935
    .restart local v5       #view:Lcom/sec/android/glview/TwGLView;
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v9, v10}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_21e

    .line 833
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #view:Lcom/sec/android/glview/TwGLView;
    .restart local v0       #alpha:F
    .restart local v2       #height:F
    :cond_233
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v9

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaHeight()F

    move-result v9

    cmpg-float v7, v7, v9

    if-gez v7, :cond_214

    .line 837
    iget-object v7, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_246
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_268

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/glview/TwGLView;

    .line 838
    .restart local v5       #view:Lcom/sec/android/glview/TwGLView;
    const/4 v7, 0x0

    iget-object v9, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float v9, v2, v9

    iget-object v10, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    sub-float/2addr v9, v10

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v9, v10}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_246

    .line 840
    .end local v5           #view:Lcom/sec/android/glview/TwGLView;
    :cond_268
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v7, :cond_28e

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v7, :cond_28e

    .line 841
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v11, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v10, v11

    iget-object v11, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    sub-float v11, v2, v11

    iget-object v12, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    neg-float v10, v10

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11}, Lcom/sec/android/glview/TwGLNinePatchTexture;->translateAbsolute(FFZ)V

    .line 845
    :cond_28e
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 846
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget-object v9, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v9

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    iget v11, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    add-float/2addr v10, v11

    invoke-virtual {v7, v9, v10}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 847
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v11, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    iget v12, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    add-float/2addr v11, v12

    sub-float/2addr v10, v11

    invoke-virtual {v7, v9, v10}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 848
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    const/high16 v9, 0x3f80

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 851
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    const/high16 v9, 0x4040

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    div-float/2addr v10, v2

    const/high16 v11, 0x3f80

    add-float/2addr v10, v11

    mul-float/2addr v9, v10

    add-float/2addr v7, v9

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 853
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v9

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    add-float/2addr v7, v9

    iget-object v9, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    sub-float v9, v2, v9

    iget-object v10, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    cmpl-float v7, v7, v9

    if-ltz v7, :cond_214

    .line 860
    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float v7, v2, v7

    iget-object v9, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    sub-float/2addr v7, v9

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    sub-float/2addr v7, v9

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 861
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 862
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto/16 :goto_214

    .line 866
    .end local v0           #alpha:F
    .end local v2           #height:F
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_301
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    const/4 v9, 0x2

    if-ne v7, v9, :cond_214

    .line 867
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    cmpg-float v7, v7, v9

    if-gez v7, :cond_352

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v6

    .line 869
    .local v6, width:F
    :goto_314
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    const v10, 0x3eb33333

    mul-float/2addr v9, v10

    div-float/2addr v7, v9

    const/high16 v9, 0x3f80

    cmpl-float v7, v7, v9

    if-lez v7, :cond_355

    const/high16 v0, 0x3f80

    .line 870
    .restart local v0       #alpha:F
    :goto_329
    const v7, 0x3f333333

    mul-float/2addr v7, v0

    const v9, 0x3e99999a

    add-float v0, v7, v9

    .line 872
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-lez v7, :cond_3af

    .line 876
    iget-object v7, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_33f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_367

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/glview/TwGLView;

    .line 877
    .restart local v5       #view:Lcom/sec/android/glview/TwGLView;
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v9, v10}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_33f

    .line 867
    .end local v0           #alpha:F
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #view:Lcom/sec/android/glview/TwGLView;
    .end local v6           #width:F
    :cond_352
    iget v6, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    goto :goto_314

    .line 869
    .restart local v6       #width:F
    :cond_355
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    const v10, 0x3f333333

    mul-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    div-float v0, v7, v9

    goto :goto_329

    .line 879
    .restart local v0       #alpha:F
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_367
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v7, :cond_377

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v7, :cond_377

    .line 880
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11}, Lcom/sec/android/glview/TwGLNinePatchTexture;->translateAbsolute(FFZ)V

    .line 883
    :cond_377
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 884
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v10

    invoke-virtual {v7, v9, v10}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 887
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/high16 v9, 0x4040

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    div-float/2addr v10, v6

    const/high16 v11, 0x3f80

    add-float/2addr v10, v11

    mul-float/2addr v9, v10

    sub-float/2addr v7, v9

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 889
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    add-float/2addr v7, v9

    const/4 v9, 0x0

    cmpg-float v7, v7, v9

    if-gtz v7, :cond_214

    .line 896
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 897
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 898
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto/16 :goto_214

    .line 901
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_3af
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v7, v9

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaWidth()F

    move-result v9

    cmpg-float v7, v7, v9

    if-gez v7, :cond_214

    .line 905
    iget-object v7, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_3c2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3e4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/glview/TwGLView;

    .line 906
    .restart local v5       #view:Lcom/sec/android/glview/TwGLView;
    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float v7, v6, v7

    iget-object v9, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    sub-float/2addr v7, v9

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    sub-float/2addr v7, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v9, v10}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    goto :goto_3c2

    .line 908
    .end local v5           #view:Lcom/sec/android/glview/TwGLView;
    :cond_3e4
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v7, :cond_40a

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v7, :cond_40a

    .line 909
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v9, v10

    iget-object v10, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    iget-object v11, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    sub-float/2addr v10, v11

    mul-float/2addr v9, v10

    neg-float v9, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11}, Lcom/sec/android/glview/TwGLNinePatchTexture;->translateAbsolute(FFZ)V

    .line 912
    :cond_40a
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 913
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v10

    invoke-virtual {v7, v9, v10}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 914
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    iget v11, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    add-float/2addr v10, v11

    sub-float/2addr v9, v10

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 917
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    const/high16 v9, 0x4040

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mLandscapeBounceOffset:F

    div-float/2addr v10, v6

    const/high16 v11, 0x3f80

    add-float/2addr v10, v11

    mul-float/2addr v9, v10

    add-float/2addr v7, v9

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 919
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v7, v9

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    add-float/2addr v7, v9

    iget-object v9, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    sub-float v9, v6, v9

    iget-object v10, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    cmpl-float v7, v7, v9

    if-ltz v7, :cond_214

    .line 926
    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float v7, v6, v7

    iget-object v9, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    sub-float/2addr v7, v9

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    sub-float/2addr v7, v9

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 927
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 928
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto/16 :goto_214

    .line 937
    .end local v0           #alpha:F
    .end local v6           #width:F
    :cond_476
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v7, :cond_496

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v7, :cond_496

    .line 938
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    mul-float/2addr v9, v10

    neg-float v9, v9

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v11, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v10, v11

    iget v11, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    mul-float/2addr v10, v11

    neg-float v10, v10

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11}, Lcom/sec/android/glview/TwGLNinePatchTexture;->translateAbsolute(FFZ)V

    .line 941
    :cond_496
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 942
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 943
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 944
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 946
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    goto/16 :goto_f6

    .line 952
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4b8
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    if-eqz v7, :cond_10c

    .line 953
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    .line 954
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    goto/16 :goto_10c

    .line 966
    .restart local v3       #i:I
    :cond_4c9
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v7, :cond_4ea

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v7, :cond_4ea

    .line 967
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLList;->clip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 968
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL11;->glPushMatrix()V

    .line 969
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getMatrix()[F

    move-result-object v9

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v7, p1, v9, v10}, Lcom/sec/android/glview/TwGLNinePatchTexture;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 970
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL11;->glPopMatrix()V

    .line 971
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLList;->clearClip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 974
    :cond_4ea
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_514

    .line 975
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLList;->clip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 976
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL11;->glPushMatrix()V

    .line 977
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getMatrix()[F

    move-result-object v9

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v7, p1, v9, v10}, Lcom/sec/android/glview/TwGLImage;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 978
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getMatrix()[F

    move-result-object v9

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v7, p1, v9, v10}, Lcom/sec/android/glview/TwGLImage;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 979
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL11;->glPopMatrix()V

    .line 980
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLList;->clearClip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 982
    :cond_514
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v7, :cond_53e

    .line 983
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLList;->clip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 984
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL11;->glPushMatrix()V

    .line 985
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getMatrix()[F

    move-result-object v9

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v7, p1, v9, v10}, Lcom/sec/android/glview/TwGLImage;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 986
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getMatrix()[F

    move-result-object v9

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getClipRect()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v7, p1, v9, v10}, Lcom/sec/android/glview/TwGLImage;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 987
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL11;->glPopMatrix()V

    .line 988
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLList;->clearClip(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 991
    :cond_53e
    monitor-exit v8
    :try_end_53f
    .catchall {:try_start_72 .. :try_end_53f} :catchall_6f

    .line 992
    return-void
.end method

.method protected onLayoutUpdate()V
    .registers 2

    .prologue
    .line 532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    .line 533
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->onLayoutUpdate()V

    .line 534
    return-void
.end method

.method protected onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z
    .registers 3
    .parameter "gl"

    .prologue
    .line 306
    const/4 v0, 0x1

    .line 307
    .local v0, ret:Z
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v0

    .line 308
    return v0
.end method

.method public onReset()V
    .registers 5

    .prologue
    .line 1301
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v3

    .line 1302
    :try_start_3
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v2, :cond_c

    .line 1303
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->reset()V

    .line 1305
    :cond_c
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v2, :cond_15

    .line 1306
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->reset()V

    .line 1308
    :cond_15
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    if-eqz v2, :cond_1e

    .line 1309
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->reset()V

    .line 1311
    :cond_1e
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v2, :cond_27

    .line 1312
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->reset()V

    .line 1314
    :cond_27
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    if-eqz v2, :cond_30

    .line 1315
    iget-object v2, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->reset()V

    .line 1317
    :cond_30
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    .line 1318
    .local v1, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->reset()V

    goto :goto_36

    .line 1320
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #view:Lcom/sec/android/glview/TwGLView;
    :catchall_46
    move-exception v2

    monitor-exit v3
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_49
    :try_start_49
    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_46

    .line 1321
    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "v"
    .parameter "e"

    .prologue
    .line 1017
    invoke-virtual {p0, p2}, Lcom/sec/android/glview/TwGLList;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "e"

    .prologue
    .line 1025
    iget-object v8, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v8

    .line 1026
    :try_start_3
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 1027
    .local v3, et:Landroid/view/MotionEvent;
    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p0, v7, v9, v10}, Lcom/sec/android/glview/TwGLList;->mapPointReverse([FFF)V

    .line 1028
    iget-object v7, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    const/4 v9, 0x0

    aget v7, v7, v9

    iget-object v9, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-virtual {v3, v7, v9}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 1030
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->checkBoundary()Z

    move-result v5

    .line 1032
    .local v5, mBoundary:Z
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v7, :cond_3d

    .line 1033
    new-instance v7, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;

    invoke-direct {v10, p0}, Lcom/sec/android/glview/TwGLList$TwGLListGestureDetectorListener;-><init>(Lcom/sec/android/glview/TwGLList;)V

    invoke-direct {v7, v9, v10}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v7, p0, Lcom/sec/android/glview/TwGLList;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1035
    :cond_3d
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, v3}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 1036
    const/4 v7, 0x1

    monitor-exit v8

    .line 1207
    :goto_47
    return v7

    .line 1039
    :cond_48
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_70

    .line 1040
    const-string v7, "TwGLList"

    const-string v9, "ACTION_DOWN"

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollX:F

    .line 1042
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollY:F

    .line 1043
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityY:F

    .line 1044
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mFlingVelocityX:F

    .line 1045
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    .line 1046
    const/4 v7, 0x0

    monitor-exit v8

    goto :goto_47

    .line 1208
    .end local v3           #et:Landroid/view/MotionEvent;
    .end local v5           #mBoundary:Z
    :catchall_6d
    move-exception v7

    monitor-exit v8
    :try_end_6f
    .catchall {:try_start_3 .. :try_end_6f} :catchall_6d

    throw v7

    .line 1048
    .restart local v3       #et:Landroid/view/MotionEvent;
    .restart local v5       #mBoundary:Z
    :cond_70
    :try_start_70
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    if-nez v7, :cond_d4

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    if-nez v7, :cond_d4

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_d4

    .line 1049
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v7, v7, 0x1

    const/4 v9, 0x1

    if-ne v7, v9, :cond_a6

    .line 1050
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollY:F

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    sub-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v9, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_a6

    .line 1051
    const-string v7, "TwGLList"

    const-string v9, "Start portrait scrolling"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLList;->setScrolling(Z)V

    .line 1053
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1056
    :cond_a6
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v7, v7, 0x2

    const/4 v9, 0x2

    if-ne v7, v9, :cond_cd

    .line 1057
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollX:F

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    sub-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v9, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_cd

    .line 1058
    const-string v7, "TwGLList"

    const-string v9, "Start landscape scrolling"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLList;->setScrolling(Z)V

    .line 1060
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1063
    :cond_cd
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->restartScrollBarTimer()V

    .line 1064
    const/4 v7, 0x0

    monitor-exit v8

    goto/16 :goto_47

    .line 1066
    :cond_d4
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    if-eqz v7, :cond_2c7

    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLView;->mDragging:Z

    if-nez v7, :cond_2c7

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v9, 0x2

    if-ne v7, v9, :cond_2c7

    .line 1067
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v7, v7, 0x1

    const/4 v9, 0x1

    if-ne v7, v9, :cond_200

    .line 1068
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollY:F

    sub-float v1, v7, v9

    .line 1069
    .local v1, delta:F
    move v2, v1

    .line 1072
    .local v2, deltaForContents:F
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-gez v7, :cond_107

    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v9

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaHeight()F

    move-result v9

    cmpg-float v7, v7, v9

    if-gtz v7, :cond_122

    .line 1074
    :cond_107
    const/4 v2, 0x0

    .line 1086
    :cond_108
    :goto_108
    iget-object v7, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_10e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_159

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/glview/TwGLView;

    .line 1087
    .local v6, view:Lcom/sec/android/glview/TwGLView;
    if-nez v5, :cond_14f

    .line 1088
    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v2, v9}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto :goto_10e

    .line 1075
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #view:Lcom/sec/android/glview/TwGLView;
    :cond_122
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v1

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-lez v7, :cond_132

    .line 1077
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    sub-float v2, v1, v7

    .line 1078
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto :goto_108

    .line 1079
    :cond_132
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v9

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaHeight()F

    move-result v9

    cmpg-float v7, v7, v9

    if-gez v7, :cond_108

    .line 1081
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContentAreaHeight()F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    sub-float/2addr v7, v9

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v9

    sub-float v2, v1, v7

    .line 1082
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    goto :goto_108

    .line 1090
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #view:Lcom/sec/android/glview/TwGLView;
    :cond_14f
    const/4 v7, 0x0

    const v9, 0x3f333333

    mul-float/2addr v9, v2

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v9, v10}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto :goto_10e

    .line 1094
    .end local v6           #view:Lcom/sec/android/glview/TwGLView;
    :cond_159
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v7, :cond_174

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v7, :cond_174

    .line 1095
    if-nez v5, :cond_22a

    .line 1096
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v7, v9

    mul-float/2addr v7, v2

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    .line 1100
    :goto_16b
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    neg-float v10, v10

    invoke-virtual {v7, v9, v10}, Lcom/sec/android/glview/TwGLNinePatchTexture;->translate(FF)V

    .line 1104
    :cond_174
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1105
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1106
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1107
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1110
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    iget-object v9, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v9

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    iget v11, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    add-float/2addr v10, v11

    invoke-virtual {v7, v9, v10}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1111
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iget-object v9, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v9

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    iget v11, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    add-float/2addr v10, v11

    invoke-virtual {v7, v9, v10}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1112
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v11, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    iget v12, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    add-float/2addr v11, v12

    sub-float/2addr v10, v11

    invoke-virtual {v7, v9, v10}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 1115
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    const v10, 0x3eb33333

    mul-float/2addr v9, v10

    div-float/2addr v7, v9

    const/high16 v9, 0x3f80

    cmpl-float v7, v7, v9

    if-lez v7, :cond_238

    const/high16 v0, 0x3f80

    .line 1116
    .local v0, alpha:F
    :goto_1d7
    const v7, 0x3f333333

    mul-float/2addr v7, v0

    const v9, 0x3e99999a

    add-float v0, v7, v9

    .line 1118
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-lez v7, :cond_24a

    .line 1119
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1120
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    const/high16 v9, 0x3f80

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1126
    :cond_1f3
    :goto_1f3
    if-nez v5, :cond_270

    .line 1127
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v1

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 1132
    :goto_1fa
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollY:F

    .line 1134
    .end local v0           #alpha:F
    .end local v1           #delta:F
    .end local v2           #deltaForContents:F
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_200
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    and-int/lit8 v7, v7, 0x2

    const/4 v9, 0x2

    if-ne v7, v9, :cond_2ac

    .line 1135
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollX:F

    sub-float v1, v7, v9

    .line 1136
    .restart local v1       #delta:F
    move v2, v1

    .line 1153
    .restart local v2       #deltaForContents:F
    iget-object v7, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_216
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_284

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/glview/TwGLView;

    .line 1154
    .restart local v6       #view:Lcom/sec/android/glview/TwGLView;
    if-nez v5, :cond_27a

    .line 1155
    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v2, v7, v9}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto :goto_216

    .line 1098
    .end local v6           #view:Lcom/sec/android/glview/TwGLView;
    :cond_22a
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v7, v9

    mul-float/2addr v7, v2

    const v9, 0x3f333333

    mul-float/2addr v7, v9

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    goto/16 :goto_16b

    .line 1115
    :cond_238
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mPortraitBounceOffset:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    const v10, 0x3f333333

    mul-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    div-float v0, v7, v9

    goto :goto_1d7

    .line 1121
    .restart local v0       #alpha:F
    :cond_24a
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    add-float/2addr v7, v9

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v9

    iget-object v10, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget-object v10, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    cmpg-float v7, v7, v9

    if-gez v7, :cond_1f3

    .line 1122
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7, v0}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 1123
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    const/high16 v9, 0x3f80

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    goto :goto_1f3

    .line 1129
    :cond_270
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    const v9, 0x3f333333

    mul-float/2addr v9, v1

    add-float/2addr v7, v9

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    goto :goto_1fa

    .line 1157
    .end local v0           #alpha:F
    .restart local v6       #view:Lcom/sec/android/glview/TwGLView;
    :cond_27a
    const v7, 0x3f333333

    mul-float/2addr v7, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v9, v10}, Lcom/sec/android/glview/TwGLView;->translate(FFZ)V

    goto :goto_216

    .line 1161
    .end local v6           #view:Lcom/sec/android/glview/TwGLView;
    :cond_284
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v7, :cond_29f

    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v7, :cond_29f

    .line 1162
    if-nez v5, :cond_2b0

    .line 1163
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v7, v9

    mul-float/2addr v7, v2

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    .line 1167
    :goto_296
    iget-object v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    neg-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/sec/android/glview/TwGLNinePatchTexture;->translate(FF)V

    .line 1189
    :cond_29f
    if-nez v5, :cond_2bd

    .line 1190
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    add-float/2addr v7, v1

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 1194
    :goto_2a6
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollX:F

    .line 1196
    .end local v1           #delta:F
    .end local v2           #deltaForContents:F
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_2ac
    const/4 v7, 0x1

    monitor-exit v8

    goto/16 :goto_47

    .line 1165
    .restart local v1       #delta:F
    .restart local v2       #deltaForContents:F
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_2b0
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v9, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v7, v9

    mul-float/2addr v7, v2

    const v9, 0x3f333333

    mul-float/2addr v7, v9

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarOffset:F

    goto :goto_296

    .line 1192
    :cond_2bd
    iget v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    const v9, 0x3f333333

    mul-float/2addr v9, v1

    add-float/2addr v7, v9

    iput v7, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    goto :goto_2a6

    .line 1198
    .end local v1           #delta:F
    .end local v2           #deltaForContents:F
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_2c7
    iget-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    if-eqz v7, :cond_2fa

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v9, 0x1

    if-eq v7, v9, :cond_2d9

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v9, 0x3

    if-ne v7, v9, :cond_2fa

    .line 1199
    :cond_2d9
    const-string v7, "TwGLList"

    const-string v9, "ACTION_UP"

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sec/android/glview/TwGLList;->setScrolling(Z)V

    .line 1201
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    .line 1202
    const/4 v7, 0x3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1203
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->restartScrollBarTimer()V

    .line 1204
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lcom/sec/android/glview/TwGLContext;->setDirty(Z)V

    .line 1205
    const/4 v7, 0x0

    monitor-exit v8

    goto/16 :goto_47

    .line 1207
    :cond_2fa
    const/4 v7, 0x0

    monitor-exit v8
    :try_end_2fc
    .catchall {:try_start_70 .. :try_end_2fc} :catchall_6d

    goto/16 :goto_47
.end method

.method public removeView(Lcom/sec/android/glview/TwGLView;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 700
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v1

    .line 701
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 702
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_1d

    .line 703
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    .line 708
    :cond_18
    :goto_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_27

    .line 710
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 711
    return-void

    .line 705
    :cond_1d
    :try_start_1d
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    goto :goto_18

    .line 708
    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_27

    throw v0
.end method

.method protected restartScrollBarTimer()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 484
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 485
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 486
    return-void
.end method

.method public setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V
    .registers 3
    .parameter "adapter"

    .prologue
    .line 542
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;I)V

    .line 543
    return-void
.end method

.method public setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;I)V
    .registers 16
    .parameter "adapter"
    .parameter "stackOrientation"

    .prologue
    .line 552
    if-nez p1, :cond_8

    .line 553
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 555
    :cond_8
    iput-object p1, p0, Lcom/sec/android/glview/TwGLList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    .line 556
    iput p2, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    .line 557
    iget-object v1, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v1

    .line 558
    :try_start_f
    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 559
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_4e

    .line 561
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_51

    .line 562
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLList;->setScroll(I)V

    .line 567
    :goto_1d
    const/4 v10, 0x0

    .line 568
    .local v10, offset:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1f
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v0}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v0

    if-ge v8, v0, :cond_6d

    .line 569
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v1, 0x0

    invoke-interface {v0, v8, v1}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v12

    .line 570
    .local v12, view:Lcom/sec/android/glview/TwGLView;
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_56

    .line 571
    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLView;->getScrollHint()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 572
    neg-int v0, v10

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    .line 574
    :cond_3c
    const/4 v0, 0x0

    int-to-float v1, v10

    invoke-virtual {v12, v0, v1}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 575
    int-to-float v0, v10

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v10, v0

    .line 583
    :goto_48
    invoke-virtual {p0, v12}, Lcom/sec/android/glview/TwGLList;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 568
    add-int/lit8 v8, v8, 0x1

    goto :goto_1f

    .line 559
    .end local v8           #i:I
    .end local v10           #offset:I
    .end local v12           #view:Lcom/sec/android/glview/TwGLView;
    :catchall_4e
    move-exception v0

    :try_start_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v0

    .line 564
    :cond_51
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLList;->setScroll(I)V

    goto :goto_1d

    .line 577
    .restart local v8       #i:I
    .restart local v10       #offset:I
    .restart local v12       #view:Lcom/sec/android/glview/TwGLView;
    :cond_56
    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLView;->getScrollHint()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 578
    neg-int v0, v10

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    .line 580
    :cond_60
    int-to-float v0, v10

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    .line 581
    int-to-float v0, v10

    invoke-virtual {v12}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v10, v0

    goto :goto_48

    .line 586
    .end local v12           #view:Lcom/sec/android/glview/TwGLView;
    :cond_6d
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_133

    .line 587
    int-to-float v0, v10

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_82

    .line 588
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v0

    int-to-float v1, v10

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    .line 597
    :cond_82
    :goto_82
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_146

    .line 598
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v4

    iget v5, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    const/4 v6, 0x1

    const v7, 0x7f0201ac

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    .line 599
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v4

    iget v5, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    const/4 v6, 0x1

    const v7, 0x7f0201aa

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    .line 600
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v4

    iget v5, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    const/4 v6, 0x1

    const v7, 0x7f0201ab

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    .line 601
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v4

    iget v5, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    const/4 v6, 0x1

    const v7, 0x7f0201ab

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    .line 608
    :goto_e3
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 609
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 610
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 611
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 612
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 613
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 614
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 615
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setAlpha(F)V

    .line 618
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setVisibleArea()V

    .line 620
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-nez v0, :cond_1a5

    .line 621
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_119

    .line 622
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setScrollBarLayout()V

    .line 630
    :cond_119
    :goto_119
    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_11f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/glview/TwGLView;

    .line 631
    .local v11, v:Lcom/sec/android/glview/TwGLView;
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    invoke-virtual {v11, v0, v1}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_11f

    .line 591
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #v:Lcom/sec/android/glview/TwGLView;
    :cond_133
    int-to-float v0, v10

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_82

    .line 592
    int-to-float v0, v10

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    goto/16 :goto_82

    .line 603
    :cond_146
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v5

    const/4 v6, 0x1

    const v7, 0x7f0201a8

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageTop:Lcom/sec/android/glview/TwGLImage;

    .line 604
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_IMAGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v5

    const/4 v6, 0x1

    const v7, 0x7f0201a9

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceImageBottom:Lcom/sec/android/glview/TwGLImage;

    .line 605
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v5

    const/4 v6, 0x1

    const v7, 0x7f0201a7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeTop:Lcom/sec/android/glview/TwGLImage;

    .line 606
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/glview/TwGLList;->BOUNCE_EDGE_SIZE:F

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getHeight()F

    move-result v5

    const/4 v6, 0x1

    const v7, 0x7f0201a7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mBounceEdgeBottom:Lcom/sec/android/glview/TwGLImage;

    goto/16 :goto_e3

    .line 624
    :cond_1a5
    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_119

    .line 625
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_119

    .line 626
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setScrollBarLayout()V

    goto/16 :goto_119

    .line 633
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_1b3
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    if-eqz v0, :cond_1d2

    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_1d2

    .line 634
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleWidth:F

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mContentWidth:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumX:F

    mul-float/2addr v1, v2

    neg-float v1, v1

    iget v2, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollSumY:F

    mul-float/2addr v2, v3

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->translate(FF)V

    .line 636
    :cond_1d2
    return-void
.end method

.method public setOnScrollListener(Lcom/sec/android/glview/TwGLList$OnScrollListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/sec/android/glview/TwGLList;->mOnScrollListener:Lcom/sec/android/glview/TwGLList$OnScrollListener;

    .line 300
    return-void
.end method

.method public setPaddings(Landroid/graphics/Rect;)V
    .registers 10
    .parameter "paddings"

    .prologue
    .line 316
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    .line 318
    iget-object v4, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    monitor-enter v4

    .line 319
    :try_start_5
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLView;

    .line 320
    .local v2, view:Lcom/sec/android/glview/TwGLView;
    new-instance v0, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v0, v3, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 322
    .local v0, childPaddings:Landroid/graphics/Rect;
    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_7d

    .line 323
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getLeft()F

    move-result v5

    sub-float/2addr v3, v5

    iget v5, p1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_51

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getLeft()F

    move-result v5

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_51

    .line 324
    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getLeft()F

    move-result v6

    sub-float/2addr v5, v6

    sub-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 325
    :cond_51
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getRight()F

    move-result v3

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v5

    sub-float/2addr v3, v5

    iget v5, p1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_7d

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getRight()F

    move-result v3

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v5

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_7d

    .line 326
    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getRight()F

    move-result v5

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v6

    sub-float/2addr v5, v6

    sub-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 328
    :cond_7d
    iget v3, p0, Lcom/sec/android/glview/TwGLList;->mStackOrientation:I

    if-eqz v3, :cond_d9

    .line 329
    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getTop()F

    move-result v5

    sub-float/2addr v3, v5

    iget v5, p1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_ad

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getTop()F

    move-result v5

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_ad

    .line 330
    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getTop()F

    move-result v6

    sub-float/2addr v5, v6

    sub-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 331
    :cond_ad
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getBottom()F

    move-result v3

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v5

    sub-float/2addr v3, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_d9

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getBottom()F

    move-result v3

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v5

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_d9

    .line 332
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getBottom()F

    move-result v5

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getBottom()F

    move-result v6

    sub-float/2addr v5, v6

    sub-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 334
    :cond_d9
    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLView;->setPaddings(Landroid/graphics/Rect;)V

    goto/16 :goto_b

    .line 336
    .end local v0           #childPaddings:Landroid/graphics/Rect;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #view:Lcom/sec/android/glview/TwGLView;
    :catchall_de
    move-exception v3

    monitor-exit v4
    :try_end_e0
    .catchall {:try_start_5 .. :try_end_e0} :catchall_de

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_e1
    :try_start_e1
    monitor-exit v4
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_de

    .line 338
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setVisibleArea()V

    .line 339
    iget-object v3, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v3, :cond_ec

    .line 340
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setScrollBarLayout()V

    .line 342
    :cond_ec
    return-void
.end method

.method public setScroll(I)V
    .registers 2
    .parameter "scroll"

    .prologue
    .line 441
    iput p1, p0, Lcom/sec/android/glview/TwGLList;->mScroll:I

    .line 442
    return-void
.end method

.method public setScrollBarResource(I)V
    .registers 5
    .parameter "ninepatchId"

    .prologue
    const/4 v2, 0x0

    .line 376
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, p1}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 377
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const v1, 0xfffff

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setTag(I)V

    .line 378
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 379
    return-void
.end method

.method public setScrollThreshold(F)V
    .registers 5
    .parameter "ScrollThreshold"

    .prologue
    .line 450
    const-string v0, "TwGLList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScrollThreshold : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    sput p1, Lcom/sec/android/glview/TwGLList;->mScrollThreshold:F

    .line 452
    return-void
.end method

.method public setScrolling(Z)V
    .registers 3
    .parameter "start"

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    if-eq v0, p1, :cond_11

    .line 468
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLList;->mScrolling:Z

    .line 469
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mOnScrollListener:Lcom/sec/android/glview/TwGLList$OnScrollListener;

    if-eqz v0, :cond_11

    .line 470
    if-eqz p1, :cond_17

    .line 471
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mOnScrollListener:Lcom/sec/android/glview/TwGLList$OnScrollListener;

    invoke-interface {v0}, Lcom/sec/android/glview/TwGLList$OnScrollListener;->onScrollStart()V

    .line 476
    :cond_11
    :goto_11
    if-eqz p1, :cond_16

    .line 477
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->resetDrag()V

    .line 478
    :cond_16
    return-void

    .line 473
    :cond_17
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mOnScrollListener:Lcom/sec/android/glview/TwGLList$OnScrollListener;

    invoke-interface {v0}, Lcom/sec/android/glview/TwGLList$OnScrollListener;->onScrollEnd()V

    goto :goto_11
.end method

.method public setSize(FF)V
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 349
    invoke-super {p0, p1, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 351
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->checkBoundary()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mBouncing:Z

    .line 354
    :cond_c
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setVisibleArea()V

    .line 355
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_16

    .line 356
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLList;->setScrollBarLayout()V

    .line 358
    :cond_16
    return-void
.end method

.method public showScrollBar()V
    .registers 3

    .prologue
    .line 518
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/sec/android/glview/TwGLList;->mListVisibleHeight:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/glview/TwGLView;->mPaddings:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/sec/android/glview/TwGLList;->mContentHeight:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_19

    .line 526
    :cond_18
    :goto_18
    return-void

    .line 521
    :cond_19
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setAnimation(Landroid/view/animation/Animation;)V

    .line 522
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setAlpha(F)V

    .line 523
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBarVisible:Z

    .line 524
    iget-object v0, p0, Lcom/sec/android/glview/TwGLList;->mScrollBar:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setVisibility(I)V

    .line 525
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLList;->restartScrollBarTimer()V

    goto :goto_18
.end method
