.class public Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;
.super Landroid/widget/FrameLayout;
.source "TwHorizontalScrollView.java"


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field static DEBUG_BOUNCE:Z = false

.field static DEBUG_SCROLL:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_SCROLL_FACTOR:F = 0.5f

.field static final TAG:Ljava/lang/String; = "TwHorizontalScrollView"


# instance fields
.field private mActivePointerId:I

.field mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

.field private mBounceEnabled:Z

.field mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

.field private mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionX:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 79
    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->DEBUG_BOUNCE:Z

    .line 81
    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->DEBUG_SCROLL:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 162
    const v0, 0x1010353

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 166
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 105
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsLayoutDirty:Z

    .line 112
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 119
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    .line 136
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 149
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    .line 167
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->initScrollView()V

    .line 169
    sget-object v2, Landroid/R$styleable;->HorizontalScrollView:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 172
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->setFillViewport(Z)V

    .line 175
    const/16 v2, 0x2d

    const/4 v3, 0x1

    :try_start_2b
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->setOverScrollMode(I)V
    :try_end_32
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2b .. :try_end_32} :catch_36

    .line 182
    :goto_32
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 183
    return-void

    .line 177
    :catch_36
    move-exception v1

    .line 178
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 179
    const-string v2, "TwHorizontalScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IndexOutOfBoundsException occured: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method private canScroll()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 306
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 307
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_18

    .line 308
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 309
    .local v1, childWidth:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingLeft:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_18

    const/4 v2, 0x1

    .line 311
    .end local v1           #childWidth:I
    :cond_18
    return v2
.end method

.method private clamp(III)I
    .registers 5
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 1777
    if-ge p2, p3, :cond_4

    if-gez p1, :cond_6

    .line 1778
    :cond_4
    const/4 p1, 0x0

    .line 1783
    .end local p1
    :cond_5
    :goto_5
    return p1

    .line 1780
    .restart local p1
    :cond_6
    add-int v0, p2, p1

    if-le v0, p3, :cond_5

    .line 1781
    sub-int p1, p3, p2

    goto :goto_5
.end method

.method private doScrollX(I)V
    .registers 4
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 1225
    if-eqz p1, :cond_a

    .line 1226
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_b

    .line 1227
    invoke-virtual {p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->smoothScrollBy(II)V

    .line 1232
    :cond_a
    :goto_a
    return-void

    .line 1229
    :cond_b
    invoke-virtual {p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollBy(II)V

    goto :goto_a
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .registers 15
    .parameter "leftFocus"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 971
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 972
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 981
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 983
    .local v3, foundFullyContainedFocusable:Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 984
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_c
    if-ge v4, v0, :cond_52

    .line 985
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 986
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 987
    .local v8, viewLeft:I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    .line 989
    .local v9, viewRight:I
    if-ge p2, v9, :cond_29

    if-ge v8, p3, :cond_29

    .line 995
    if-ge p2, v8, :cond_2c

    if-ge v9, p3, :cond_2c

    const/4 v7, 0x1

    .line 998
    .local v7, viewIsFullyContained:Z
    :goto_25
    if-nez v1, :cond_2e

    .line 1000
    move-object v1, v5

    .line 1001
    move v3, v7

    .line 984
    .end local v7           #viewIsFullyContained:Z
    :cond_29
    :goto_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 995
    :cond_2c
    const/4 v7, 0x0

    goto :goto_25

    .line 1003
    .restart local v7       #viewIsFullyContained:Z
    :cond_2e
    if-eqz p1, :cond_36

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v8, v10, :cond_3e

    :cond_36
    if-nez p1, :cond_47

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v10

    if-le v9, v10, :cond_47

    :cond_3e
    const/4 v6, 0x1

    .line 1007
    .local v6, viewIsCloserToBoundary:Z
    :goto_3f
    if-eqz v3, :cond_49

    .line 1008
    if-eqz v7, :cond_29

    if-eqz v6, :cond_29

    .line 1014
    move-object v1, v5

    goto :goto_29

    .line 1003
    .end local v6           #viewIsCloserToBoundary:Z
    :cond_47
    const/4 v6, 0x0

    goto :goto_3f

    .line 1017
    .restart local v6       #viewIsCloserToBoundary:Z
    :cond_49
    if-eqz v7, :cond_4e

    .line 1019
    move-object v1, v5

    .line 1020
    const/4 v3, 0x1

    goto :goto_29

    .line 1021
    :cond_4e
    if-eqz v6, :cond_29

    .line 1026
    move-object v1, v5

    goto :goto_29

    .line 1033
    .end local v5           #view:Landroid/view/View;
    .end local v6           #viewIsCloserToBoundary:Z
    .end local v7           #viewIsFullyContained:Z
    .end local v8           #viewLeft:I
    .end local v9           #viewRight:I
    :cond_52
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .registers 8
    .parameter "leftFocus"
    .parameter "left"
    .parameter "preferredFocusable"

    .prologue
    .line 940
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 941
    .local v0, fadingEdgeLength:I
    add-int v1, p2, v0

    .line 942
    .local v1, leftWithoutFadingEdge:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v2, v3, v0

    .line 944
    .local v2, rightWithoutFadingEdge:I
    if-eqz p3, :cond_1e

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v2, :cond_1e

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v1, :cond_1e

    .line 950
    .end local p3
    :goto_1d
    return-object p3

    .restart local p3
    :cond_1e
    invoke-direct {p0, p1, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_1d
.end method

.method private getScrollRange()I
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 908
    const/4 v1, 0x0

    .line 909
    .local v1, scrollRange:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1f

    .line 910
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 911
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 914
    .end local v0           #child:Landroid/view/View;
    :cond_1f
    return v1
.end method

.method private inChild(II)Z
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 443
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_28

    .line 444
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    .line 445
    .local v1, scrollX:I
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 446
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_28

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_28

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p1, v3, :cond_28

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p1, v3, :cond_28

    const/4 v2, 0x1

    .line 451
    .end local v0           #child:Landroid/view/View;
    .end local v1           #scrollX:I
    :cond_28
    return v2
.end method

.method private initOrResetVelocityTracker()V
    .registers 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 456
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 460
    :goto_a
    return-void

    .line 458
    :cond_b
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_a
.end method

.method private initScrollView()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 226
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->setFocusable(Z)V

    .line 227
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->setDescendantFocusability(I)V

    .line 228
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->setWillNotDraw(Z)V

    .line 229
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 230
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTouchSlop:I

    .line 231
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mMinimumVelocity:I

    .line 232
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mMaximumVelocity:I

    .line 233
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mOverscrollDistance:I

    .line 234
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mOverflingDistance:I

    .line 236
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwBounceController;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    .line 237
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwBounceController;->setOrientation(I)V

    .line 238
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwBounceController;->makeScroller()Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    .line 239
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwBounceController;->getBounceRunnable(I)Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    .line 241
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .registers 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 464
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 466
    :cond_a
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .registers 4
    .parameter "descendant"

    .prologue
    const/4 v0, 0x0

    .line 1204
    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 6
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 1635
    if-ne p1, p2, :cond_4

    .line 1640
    :cond_3
    :goto_3
    return v1

    .line 1639
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1640
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_14

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_14
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;I)Z
    .registers 6
    .parameter "descendant"
    .parameter "delta"

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1213
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1215
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_27

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_27

    const/4 v0, 0x1

    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 7
    .parameter "ev"

    .prologue
    .line 824
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 826
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 827
    .local v1, pointerId:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_2a

    .line 831
    if-nez v2, :cond_2b

    const/4 v0, 0x1

    .line 832
    .local v0, newPointerIndex:I
    :goto_15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastMotionX:F

    .line 833
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    .line 834
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_2a

    .line 835
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 838
    .end local v0           #newPointerIndex:I
    :cond_2a
    return-void

    .line 831
    :cond_2b
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private recycleVelocityTracker()V
    .registers 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 470
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 471
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 473
    :cond_c
    return-void
.end method

.method private scrollAndFocus(III)Z
    .registers 12
    .parameter "direction"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1116
    const/4 v4, 0x1

    .line 1118
    .local v4, handled:Z
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v6

    .line 1119
    .local v6, width:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollX()I

    move-result v0

    .line 1120
    .local v0, containerLeft:I
    add-int v1, v0, v6

    .line 1121
    .local v1, containerRight:I
    const/16 v7, 0x11

    if-ne p1, v7, :cond_26

    const/4 v3, 0x1

    .line 1123
    .local v3, goLeft:Z
    :goto_10
    invoke-direct {p0, v3, p2, p3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1124
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_17

    .line 1125
    move-object v5, p0

    .line 1128
    :cond_17
    if-lt p2, v0, :cond_28

    if-gt p3, v1, :cond_28

    .line 1129
    const/4 v4, 0x0

    .line 1135
    :goto_1c
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_25

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1137
    :cond_25
    return v4

    .line 1121
    .end local v3           #goLeft:Z
    .end local v5           #newFocused:Landroid/view/View;
    :cond_26
    const/4 v3, 0x0

    goto :goto_10

    .line 1131
    .restart local v3       #goLeft:Z
    .restart local v5       #newFocused:Landroid/view/View;
    :cond_28
    if-eqz v3, :cond_30

    sub-int v2, p2, v0

    .line 1132
    .local v2, delta:I
    :goto_2c
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->doScrollX(I)V

    goto :goto_1c

    .line 1131
    .end local v2           #delta:I
    :cond_30
    sub-int v2, p3, v1

    goto :goto_2c
.end method

.method private scrollToChild(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 1437
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1440
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1442
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1444
    .local v0, scrollDelta:I
    if-eqz v0, :cond_16

    .line 1445
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollBy(II)V

    .line 1447
    :cond_16
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .registers 6
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v2, 0x0

    .line 1458
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1459
    .local v0, delta:I
    if-eqz v0, :cond_10

    const/4 v1, 0x1

    .line 1460
    .local v1, scroll:Z
    :goto_8
    if-eqz v1, :cond_f

    .line 1461
    if-eqz p2, :cond_12

    .line 1462
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollBy(II)V

    .line 1467
    :cond_f
    :goto_f
    return v1

    .end local v1           #scroll:Z
    :cond_10
    move v1, v2

    .line 1459
    goto :goto_8

    .line 1464
    .restart local v1       #scroll:Z
    :cond_12
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_f
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 269
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 273
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 5
    .parameter "child"
    .parameter "index"

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 278
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 282
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 296
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 300
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .parameter "child"
    .parameter "params"

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 287
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    return-void
.end method

.method public arrowScroll(I)Z
    .registers 13
    .parameter "direction"

    .prologue
    const/16 v10, 0x42

    const/4 v7, 0x0

    .line 1149
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1150
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_a

    const/4 v0, 0x0

    .line 1152
    :cond_a
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1154
    .local v4, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 1156
    .local v3, maxJump:I
    if-eqz v4, :cond_53

    invoke-direct {p0, v4, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_53

    .line 1157
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1158
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1159
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1160
    .local v6, scrollDelta:I
    invoke-direct {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->doScrollX(I)V

    .line 1161
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1184
    :goto_34
    if-eqz v0, :cond_51

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_51

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 1191
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getDescendantFocusability()I

    move-result v2

    .line 1192
    .local v2, descendantFocusability:I
    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->setDescendantFocusability(I)V

    .line 1193
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->requestFocus()Z

    .line 1194
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->setDescendantFocusability(I)V

    .line 1196
    .end local v2           #descendantFocusability:I
    :cond_51
    const/4 v7, 0x1

    :cond_52
    return v7

    .line 1164
    .end local v6           #scrollDelta:I
    :cond_53
    move v6, v3

    .line 1166
    .restart local v6       #scrollDelta:I
    const/16 v8, 0x11

    if-ne p1, v8, :cond_6b

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollX()I

    move-result v8

    if-ge v8, v6, :cond_6b

    .line 1167
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollX()I

    move-result v6

    .line 1178
    :cond_62
    :goto_62
    if-eqz v6, :cond_52

    .line 1181
    if-ne p1, v10, :cond_8c

    move v7, v6

    :goto_67
    invoke-direct {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->doScrollX(I)V

    goto :goto_34

    .line 1168
    :cond_6b
    if-ne p1, v10, :cond_62

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_62

    .line 1170
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1172
    .local v1, daRight:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollX()I

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v9

    add-int v5, v8, v9

    .line 1174
    .local v5, screenRight:I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_62

    .line 1175
    sub-int v6, v1, v5

    goto :goto_62

    .line 1181
    .end local v1           #daRight:I
    .end local v5           #screenRight:I
    :cond_8c
    neg-int v7, v6

    goto :goto_67
.end method

.method protected computeHorizontalScrollExtent()I
    .registers 5

    .prologue
    .line 1299
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    move-result v0

    .line 1301
    .local v0, extent:I
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceEnabled:Z

    if-eqz v2, :cond_35

    .line 1302
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2f

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->computeHorizontalScrollRange()I

    move-result v2

    if-ge v0, v2, :cond_2f

    .line 1303
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 1305
    .local v1, ratio:F
    int-to-float v2, v0

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 1307
    .end local v1           #ratio:F
    :cond_2f
    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1309
    :goto_34
    return v2

    :cond_35
    move v2, v0

    goto :goto_34
.end method

.method protected computeHorizontalScrollOffset()I
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1315
    const/4 v5, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1317
    .local v2, offset:I
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v5, :cond_31

    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceEnabled:Z

    if-eqz v5, :cond_31

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_31

    .line 1318
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v3, v5, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 1319
    .local v3, savedBounceExtent:F
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->computeHorizontalScrollExtent()I

    move-result v4

    .line 1320
    .local v4, shrinkedScrollExtent:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iput v7, v5, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 1321
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->computeHorizontalScrollExtent()I

    move-result v1

    .line 1322
    .local v1, normalScrollExtent:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iput v3, v5, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 1324
    sub-int v0, v1, v4

    .line 1326
    .local v0, delta:I
    add-int/2addr v2, v0

    .line 1328
    .end local v0           #delta:I
    .end local v1           #normalScrollExtent:I
    .end local v3           #savedBounceExtent:F
    .end local v4           #shrinkedScrollExtent:I
    :cond_31
    return v2
.end method

.method protected computeHorizontalScrollRange()I
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1280
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v1

    .line 1281
    .local v1, count:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingRight:I

    sub-int v0, v5, v6

    .line 1282
    .local v0, contentWidth:I
    if-nez v1, :cond_13

    .line 1295
    .end local v0           #contentWidth:I
    :goto_12
    return v0

    .line 1286
    .restart local v0       #contentWidth:I
    :cond_13
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1287
    .local v3, scrollRange:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    .line 1288
    .local v4, scrollX:I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1289
    .local v2, overscrollRight:I
    if-gez v4, :cond_28

    .line 1290
    sub-int/2addr v3, v4

    :cond_26
    :goto_26
    move v0, v3

    .line 1295
    goto :goto_12

    .line 1291
    :cond_28
    if-le v4, v2, :cond_26

    .line 1292
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_26
.end method

.method public computeScroll()V
    .registers 22

    .prologue
    .line 1362
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_79

    .line 1379
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    .line 1380
    .local v6, oldX:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    .line 1381
    .local v7, oldY:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrX()I

    move-result v19

    .line 1382
    .local v19, x:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrY()I

    move-result v20

    .line 1384
    .local v20, y:I
    move/from16 v0, v19

    if-ne v6, v0, :cond_2a

    move/from16 v0, v20

    if-eq v7, v0, :cond_73

    .line 1385
    :cond_2a
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v8

    .line 1386
    .local v8, range:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getOverScrollMode()I

    move-result v15

    .line 1387
    .local v15, overscrollMode:I
    if-eqz v15, :cond_39

    const/4 v3, 0x1

    if-ne v15, v3, :cond_7a

    if-lez v8, :cond_7a

    :cond_39
    const/4 v13, 0x1

    .line 1390
    .local v13, canOverscroll:Z
    :goto_3a
    sub-int v4, v19, v6

    sub-int v5, v20, v7

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mOverflingDistance:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 1392
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v6, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->onScrollChanged(IIII)V

    .line 1394
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceEnabled:Z

    if-nez v3, :cond_93

    if-eqz v13, :cond_93

    .line 1395
    if-gez v19, :cond_7c

    if-ltz v6, :cond_7c

    .line 1396
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onAbsorb(I)V

    .line 1424
    .end local v8           #range:I
    .end local v13           #canOverscroll:Z
    .end local v15           #overscrollMode:I
    :cond_73
    :goto_73
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->awakenScrollBars()Z

    .line 1427
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->postInvalidate()V

    .line 1429
    .end local v6           #oldX:I
    .end local v7           #oldY:I
    .end local v19           #x:I
    .end local v20           #y:I
    :cond_79
    return-void

    .line 1387
    .restart local v6       #oldX:I
    .restart local v7       #oldY:I
    .restart local v8       #range:I
    .restart local v15       #overscrollMode:I
    .restart local v19       #x:I
    .restart local v20       #y:I
    :cond_7a
    const/4 v13, 0x0

    goto :goto_3a

    .line 1397
    .restart local v13       #canOverscroll:Z
    :cond_7c
    move/from16 v0, v19

    if-le v0, v8, :cond_73

    if-gt v6, v8, :cond_73

    .line 1398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onAbsorb(I)V

    goto :goto_73

    .line 1400
    :cond_93
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceEnabled:Z

    if-eqz v3, :cond_73

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_73

    .line 1401
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1402
    .local v14, child:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->clamp(III)I

    move-result v16

    .line 1404
    .local v16, tempX:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->clamp(III)I

    move-result v17

    .line 1409
    .local v17, tempY:I
    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_e6

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_73

    .line 1411
    :cond_e6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity(Z)F

    move-result v18

    .line 1414
    .local v18, velocity:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->abortAnimation()V

    .line 1415
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollTo(II)V

    .line 1417
    sget-boolean v3, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->DEBUG_BOUNCE:Z

    if-eqz v3, :cond_129

    .line 1418
    const-string v3, "TwHorizontalScrollView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeScroll:: ActualY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ScrollerVal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    :cond_129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    move/from16 v0, v18

    invoke-interface {v3, v0}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->start(F)V

    goto/16 :goto_73
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .registers 12
    .parameter "rect"

    .prologue
    const/4 v7, 0x0

    .line 1479
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_9

    move v5, v7

    .line 1533
    :cond_8
    :goto_8
    return v5

    .line 1481
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v6

    .line 1482
    .local v6, width:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollX()I

    move-result v3

    .line 1483
    .local v3, screenLeft:I
    add-int v4, v3, v6

    .line 1485
    .local v4, screenRight:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v1

    .line 1488
    .local v1, fadingEdge:I
    iget v8, p1, Landroid/graphics/Rect;->left:I

    if-lez v8, :cond_1c

    .line 1489
    add-int/2addr v3, v1

    .line 1493
    :cond_1c
    iget v8, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    if-ge v8, v9, :cond_29

    .line 1494
    sub-int/2addr v4, v1

    .line 1497
    :cond_29
    const/4 v5, 0x0

    .line 1499
    .local v5, scrollXDelta:I
    iget v8, p1, Landroid/graphics/Rect;->right:I

    if-le v8, v4, :cond_50

    iget v8, p1, Landroid/graphics/Rect;->left:I

    if-le v8, v3, :cond_50

    .line 1504
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-le v8, v6, :cond_4b

    .line 1506
    iget v8, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v3

    add-int/2addr v5, v8

    .line 1513
    :goto_3c
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1514
    .local v2, right:I
    sub-int v0, v2, v4

    .line 1515
    .local v0, distanceToRight:I
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1517
    goto :goto_8

    .line 1509
    .end local v0           #distanceToRight:I
    .end local v2           #right:I
    :cond_4b
    iget v8, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v4

    add-int/2addr v5, v8

    goto :goto_3c

    .line 1517
    :cond_50
    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-ge v7, v3, :cond_8

    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-ge v7, v4, :cond_8

    .line 1522
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v6, :cond_6d

    .line 1524
    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int v7, v4, v7

    sub-int/2addr v5, v7

    .line 1531
    :goto_63
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollX()I

    move-result v7

    neg-int v7, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_8

    .line 1527
    :cond_6d
    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int v7, v3, v7

    sub-int/2addr v5, v7

    goto :goto_63
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 390
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 1716
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1718
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceEnabled:Z

    if-eqz v5, :cond_34

    .line 1719
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwBounceController;->adjustBounceExtent()F

    move-result v6

    iput v6, v5, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 1721
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getOverScrollMode()I

    move-result v1

    .line 1722
    .local v1, overscrollMode:I
    if-eqz v1, :cond_21

    const/4 v5, 0x1

    if-ne v1, v5, :cond_34

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v5

    if-lez v5, :cond_34

    .line 1724
    :cond_21
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_c9

    .line 1725
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwBounceController;->getBounceExtentRatio()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull2(F)V

    .line 1732
    .end local v1           #overscrollMode:I
    :cond_34
    :goto_34
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v5, :cond_c8

    .line 1733
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    .line 1734
    .local v3, scrollX:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_7f

    .line 1735
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1736
    .local v2, restoreCount:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingBottom:I

    sub-int v0, v5, v6

    .line 1738
    .local v0, height:I
    const/high16 v5, 0x4387

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1741
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceEnabled:Z

    if-eqz v5, :cond_5a

    .line 1745
    :cond_5a
    neg-int v5, v0

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingTop:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1747
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v6

    invoke-virtual {v5, v0, v6}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setSize(II)V

    .line 1748
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v5, p1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 1749
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->invalidate()V

    .line 1751
    :cond_7c
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1753
    .end local v0           #height:I
    .end local v2           #restoreCount:I
    :cond_7f
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_c8

    .line 1754
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1755
    .restart local v2       #restoreCount:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v4

    .line 1756
    .local v4, width:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingBottom:I

    sub-int v0, v5, v6

    .line 1758
    .restart local v0       #height:I
    const/high16 v5, 0x42b4

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1761
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceEnabled:Z

    if-eqz v5, :cond_a3

    .line 1765
    :cond_a3
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingTop:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v6, v4

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1767
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v5, v0, v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setSize(II)V

    .line 1768
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v5, p1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_c5

    .line 1769
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->invalidate()V

    .line 1771
    :cond_c5
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1774
    .end local v0           #height:I
    .end local v2           #restoreCount:I
    .end local v3           #scrollX:I
    .end local v4           #width:I
    :cond_c8
    return-void

    .line 1726
    .restart local v1       #overscrollMode:I
    :cond_c9
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_34

    .line 1727
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwBounceController;->getBounceExtentRatio()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull2(F)V

    goto/16 :goto_34
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 9
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x11

    const/16 v5, 0x42

    .line 402
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 404
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_31

    .line 405
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 406
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 407
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_1d

    const/4 v0, 0x0

    .line 408
    :cond_1d
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 410
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_30

    if-eq v2, p0, :cond_30

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_30

    const/4 v3, 0x1

    .line 439
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_30
    :goto_30
    return v3

    .line 416
    :cond_31
    const/4 v1, 0x0

    .line 417
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3f

    .line 418
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_6e

    :cond_3f
    :goto_3f
    move v3, v1

    .line 439
    goto :goto_30

    .line 420
    :sswitch_41
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_4c

    .line 421
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_3f

    .line 423
    :cond_4c
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->fullScroll(I)Z

    move-result v1

    .line 425
    goto :goto_3f

    .line 427
    :sswitch_51
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5c

    .line 428
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_3f

    .line 430
    :cond_5c
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->fullScroll(I)Z

    move-result v1

    .line 432
    goto :goto_3f

    .line 434
    :sswitch_61
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6c

    move v3, v4

    :goto_68
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->pageScroll(I)Z

    goto :goto_3f

    :cond_6c
    move v3, v5

    goto :goto_68

    .line 418
    :sswitch_data_6e
    .sparse-switch
        0x15 -> :sswitch_41
        0x16 -> :sswitch_51
        0x3e -> :sswitch_61
    .end sparse-switch
.end method

.method public fling(I)V
    .registers 19
    .parameter "velocityX"

    .prologue
    .line 1651
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_64

    .line 1652
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingLeft:I

    sub-int v16, v1, v2

    .line 1653
    .local v16, width:I
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    .line 1655
    .local v15, right:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    sub-int v7, v15, v16

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    div-int/lit8 v10, v16, 0x2

    const/4 v11, 0x0

    move/from16 v4, p1

    invoke-virtual/range {v1 .. v11}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->fling(IIIIIIIIII)V

    .line 1658
    if-lez p1, :cond_65

    const/4 v13, 0x1

    .line 1660
    .local v13, movingRight:Z
    :goto_42
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v12

    .line 1661
    .local v12, currentFocused:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getFinalX()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v1, v12}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v14

    .line 1664
    .local v14, newFocused:Landroid/view/View;
    if-nez v14, :cond_58

    .line 1665
    move-object/from16 v14, p0

    .line 1668
    :cond_58
    if-eq v14, v12, :cond_61

    .line 1669
    if-eqz v13, :cond_67

    const/16 v1, 0x42

    :goto_5e
    invoke-virtual {v14, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 1672
    :cond_61
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->invalidate()V

    .line 1674
    .end local v12           #currentFocused:Landroid/view/View;
    .end local v13           #movingRight:Z
    .end local v14           #newFocused:Landroid/view/View;
    .end local v15           #right:I
    .end local v16           #width:I
    :cond_64
    return-void

    .line 1658
    .restart local v15       #right:I
    .restart local v16       #width:I
    :cond_65
    const/4 v13, 0x0

    goto :goto_42

    .line 1669
    .restart local v12       #currentFocused:Landroid/view/View;
    .restart local v13       #movingRight:Z
    .restart local v14       #newFocused:Landroid/view/View;
    :cond_67
    const/16 v1, 0x11

    goto :goto_5e
.end method

.method public fullScroll(I)Z
    .registers 8
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 1085
    const/16 v5, 0x42

    if-ne p1, v5, :cond_3c

    const/4 v1, 0x1

    .line 1086
    .local v1, right:Z
    :goto_6
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v3

    .line 1088
    .local v3, width:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    .line 1089
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v3, v5, Landroid/graphics/Rect;->right:I

    .line 1091
    if-eqz v1, :cond_2f

    .line 1092
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v0

    .line 1093
    .local v0, count:I
    if-lez v0, :cond_2f

    .line 1094
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1095
    .local v2, view:Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1096
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1100
    .end local v0           #count:I
    .end local v2           #view:Landroid/view/View;
    :cond_2f
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #right:Z
    .end local v3           #width:I
    :cond_3c
    move v1, v4

    .line 1085
    goto :goto_6
.end method

.method public getBounce()Z
    .registers 2

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceEnabled:Z

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .registers 4

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_8

    .line 188
    const/4 v1, 0x0

    .line 196
    :goto_7
    return v1

    .line 191
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 192
    .local v0, length:I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    if-ge v1, v0, :cond_16

    .line 193
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_7

    .line 196
    :cond_16
    const/high16 v1, 0x3f80

    goto :goto_7
.end method

.method public getMaxScrollAmount()I
    .registers 4

    .prologue
    .line 220
    const/high16 v0, 0x3f00

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mRight:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .registers 6

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_8

    .line 202
    const/4 v3, 0x0

    .line 212
    :goto_7
    return v3

    .line 205
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 206
    .local v0, length:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingRight:I

    sub-int v1, v3, v4

    .line 207
    .local v1, rightEdge:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v1

    .line 208
    .local v2, span:I
    if-ge v2, v0, :cond_28

    .line 209
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    goto :goto_7

    .line 212
    :cond_28
    const/high16 v3, 0x3f80

    goto :goto_7
.end method

.method public isFillViewport()Z
    .registers 2

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .registers 2

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .registers 10
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 1333
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1338
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1341
    .local v0, childHeightMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1343
    .local v1, childWidthMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1344
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 11
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 1349
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1351
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p4, v3, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1354
    .local v0, childHeightMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1357
    .local v1, childWidthMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1358
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "event"

    .prologue
    .line 842
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_f

    .line 843
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_52

    .line 871
    :cond_f
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_13
    return v5

    .line 845
    :pswitch_14
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_f

    .line 847
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_46

    .line 848
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    neg-float v1, v5

    .line 852
    .local v1, hscroll:F
    :goto_27
    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_f

    .line 853
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getHorizontalScrollFactor()F

    move-result v5

    mul-float/2addr v5, v1

    float-to-int v0, v5

    .line 854
    .local v0, delta:I
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v4

    .line 855
    .local v4, range:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    .line 856
    .local v3, oldScrollX:I
    add-int v2, v3, v0

    .line 857
    .local v2, newScrollX:I
    if-gez v2, :cond_4d

    .line 858
    const/4 v2, 0x0

    .line 862
    :cond_3d
    :goto_3d
    if-eq v2, v3, :cond_f

    .line 863
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    invoke-super {p0, v2, v5}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 864
    const/4 v5, 0x1

    goto :goto_13

    .line 850
    .end local v0           #delta:I
    .end local v1           #hscroll:F
    .end local v2           #newScrollX:I
    .end local v3           #oldScrollX:I
    .end local v4           #range:I
    :cond_46
    const/16 v5, 0xa

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .restart local v1       #hscroll:F
    goto :goto_27

    .line 859
    .restart local v0       #delta:I
    .restart local v2       #newScrollX:I
    .restart local v3       #oldScrollX:I
    .restart local v4       #range:I
    :cond_4d
    if-le v2, v4, :cond_3d

    .line 860
    move v2, v4

    goto :goto_3d

    .line 843
    nop

    :pswitch_data_52
    .packed-switch 0x8
        :pswitch_14
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 899
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 900
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_24

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 901
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 902
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 903
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 904
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 905
    return-void

    .line 900
    :cond_24
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 893
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 894
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 895
    return-void

    .line 894
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "ev"

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 496
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 497
    .local v7, action:I
    const/4 v1, 0x2

    if-ne v7, v1, :cond_f

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_f

    .line 589
    :cond_e
    :goto_e
    return v0

    .line 501
    :cond_f
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_b8

    .line 589
    :cond_14
    :goto_14
    :pswitch_14
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_e

    .line 512
    :pswitch_17
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    .line 513
    .local v8, activePointerId:I
    if-eq v8, v2, :cond_14

    .line 518
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 522
    .local v10, pointerIndex:I
    if-ltz v10, :cond_e

    .line 525
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    .line 526
    .local v11, x:F
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastMotionX:F

    sub-float v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v12, v1

    .line 527
    .local v12, xDiff:I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTouchSlop:I

    if-le v12, v1, :cond_14

    .line 528
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    .line 529
    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastMotionX:F

    .line 530
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->initVelocityTrackerIfNotExists()V

    .line 531
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 532
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_14

    .line 538
    .end local v8           #activePointerId:I
    .end local v10           #pointerIndex:I
    .end local v11           #x:F
    .end local v12           #xDiff:I
    :pswitch_48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    .line 539
    .restart local v11       #x:F
    float-to-int v1, v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->inChild(II)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 540
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    .line 541
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->recycleVelocityTracker()V

    goto :goto_14

    .line 549
    :cond_5e
    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastMotionX:F

    .line 550
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    .line 552
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->initOrResetVelocityTracker()V

    .line 553
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 560
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_77

    move v3, v0

    :cond_77
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    goto :goto_14

    .line 567
    .end local v11           #x:F
    :pswitch_7a
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    .line 568
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    .line 569
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v4

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 570
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->invalidate()V

    goto :goto_14

    .line 574
    :pswitch_94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    .line 575
    .local v9, index:I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastMotionX:F

    .line 576
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    goto/16 :goto_14

    .line 580
    .end local v9           #index:I
    :pswitch_a6
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 581
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastMotionX:F

    goto/16 :goto_14

    .line 501
    nop

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_48
        :pswitch_7a
        :pswitch_17
        :pswitch_7a
        :pswitch_14
        :pswitch_94
        :pswitch_a6
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1601
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1602
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsLayoutDirty:Z

    .line 1604
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1605
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1607
    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1610
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollTo(II)V

    .line 1611
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 359
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 361
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mFillViewport:Z

    if-nez v6, :cond_8

    .line 385
    :cond_7
    :goto_7
    return-void

    .line 365
    :cond_8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 366
    .local v5, widthMode:I
    if-eqz v5, :cond_7

    .line 370
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_7

    .line 371
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 372
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getMeasuredWidth()I

    move-result v4

    .line 373
    .local v4, width:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-ge v6, v4, :cond_7

    .line 374
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 376
    .local v3, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingTop:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingBottom:I

    add-int/2addr v6, v7

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v6, v7}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 378
    .local v1, childHeightMeasureSpec:I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v6

    .line 379
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v4, v6

    .line 380
    const/high16 v6, 0x4000

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 382
    .local v2, childWidthMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_7
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 12
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    const/4 v3, 0x0

    .line 878
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_25

    .line 879
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    .line 880
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    .line 881
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->invalidateParentIfNeeded()V

    .line 882
    if-eqz p3, :cond_21

    .line 883
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v4

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    .line 888
    :cond_21
    :goto_21
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->awakenScrollBars()Z

    .line 889
    return-void

    .line 886
    :cond_25
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_21
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 7
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x0

    .line 1561
    const/4 v2, 0x2

    if-ne p1, v2, :cond_14

    .line 1562
    const/16 p1, 0x42

    .line 1567
    :cond_6
    :goto_6
    if-nez p2, :cond_1a

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1572
    .local v0, nextFocus:Landroid/view/View;
    :goto_11
    if-nez v0, :cond_23

    .line 1580
    :cond_13
    :goto_13
    return v1

    .line 1563
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_14
    const/4 v2, 0x1

    if-ne p1, v2, :cond_6

    .line 1564
    const/16 p1, 0x11

    goto :goto_6

    .line 1567
    :cond_1a
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_11

    .line 1576
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_23
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1580
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_13
.end method

.method protected onSizeChanged(IIII)V
    .registers 10
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1615
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1617
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1618
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_b

    if-ne p0, v0, :cond_c

    .line 1629
    :cond_b
    :goto_b
    return-void

    .line 1621
    :cond_c
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mRight:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLeft:I

    sub-int v1, v3, v4

    .line 1623
    .local v1, maxJump:I
    invoke-direct {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1624
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1625
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1626
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 1627
    .local v2, scrollDelta:I
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->doScrollX(I)V

    goto :goto_b
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 34
    .parameter "ev"

    .prologue
    .line 594
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->initVelocityTrackerIfNotExists()V

    .line 595
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 597
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v16

    .line 599
    .local v16, action:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceEnabled:Z

    if-eqz v3, :cond_3c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_3c

    const/4 v3, 0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_2b

    const/4 v3, 0x3

    move/from16 v0, v16

    if-ne v0, v3, :cond_3c

    .line 604
    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->start(F)V

    .line 605
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 606
    const/4 v3, 0x1

    .line 820
    :goto_3b
    return v3

    .line 609
    :cond_3c
    move/from16 v0, v16

    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_396

    .line 820
    :cond_43
    :goto_43
    :pswitch_43
    const/4 v3, 0x1

    goto :goto_3b

    .line 611
    :pswitch_45
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_58

    const/4 v3, 0x1

    :goto_4c
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    .line 612
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    if-nez v3, :cond_5a

    .line 613
    const/4 v3, 0x0

    goto :goto_3b

    .line 611
    :cond_58
    const/4 v3, 0x0

    goto :goto_4c

    .line 620
    :cond_5a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_6b

    .line 621
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->abortAnimation()V

    .line 625
    :cond_6b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastMotionX:F

    .line 626
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    .line 631
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceEnabled:Z

    if-eqz v3, :cond_43

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    if-eqz v3, :cond_43

    .line 632
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    invoke-interface {v3}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->cancel()V

    .line 634
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    const/4 v5, 0x0

    iput v5, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    goto :goto_43

    .line 644
    :pswitch_99
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_43

    .line 646
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v17

    .line 647
    .local v17, activePointerIndex:I
    if-gez v17, :cond_ad

    .line 648
    const/4 v3, 0x1

    goto :goto_3b

    .line 651
    :cond_ad
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceEnabled:Z

    if-eqz v3, :cond_1f1

    .line 652
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    if-eqz v3, :cond_c0

    .line 653
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    invoke-interface {v3}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->cancel()V

    .line 656
    :cond_c0
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v31

    .line 657
    .local v31, x:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastMotionX:F

    sub-float v3, v3, v31

    float-to-int v4, v3

    .line 658
    .local v4, deltaX:I
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastMotionX:F

    .line 660
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    move/from16 v23, v0

    .line 661
    .local v23, oldX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    move/from16 v24, v0

    .line 662
    .local v24, oldY:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v3, v5, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->onScrollChanged(IIII)V

    .line 664
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v0, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v26, v0

    .line 665
    .local v26, prevBounceExtent:F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollX()I

    move-result v29

    .line 666
    .local v29, scrollX:I
    const/16 v21, 0x0

    .line 667
    .local v21, delta:I
    const/16 v28, 0x0

    .line 669
    .local v28, scroll:I
    move/from16 v21, v4

    .line 670
    move/from16 v28, v29

    .line 673
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v0, v21

    int-to-float v5, v0

    mul-float/2addr v3, v5

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_150

    .line 675
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_13c

    .line 676
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v5, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v0, v21

    int-to-float v6, v0

    sub-float/2addr v5, v6

    iput v5, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 677
    const/16 v21, 0x0

    .line 678
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->invalidate()V

    .line 679
    const/4 v3, 0x1

    goto/16 :goto_3b

    .line 681
    :cond_13c
    move/from16 v0, v21

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    sub-float/2addr v3, v5

    float-to-int v0, v3

    move/from16 v21, v0

    .line 682
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    const/4 v5, 0x0

    iput v5, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 687
    :cond_150
    if-gez v21, :cond_16b

    .line 688
    if-lez v28, :cond_1bf

    .line 689
    add-int v3, v28, v21

    if-gez v3, :cond_1b6

    .line 691
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    add-int v5, v28, v21

    neg-int v5, v5

    int-to-float v5, v5

    iput v5, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 692
    move/from16 v0, v28

    neg-int v3, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollBy(II)V

    .line 705
    :cond_16b
    :goto_16b
    if-lez v21, :cond_19a

    .line 706
    const/16 v19, 0x0

    .line 707
    .local v19, bottomEdge:I
    const/16 v18, 0x0

    .line 709
    .local v18, availableToScroll:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getPaddingRight()I

    move-result v5

    sub-int v19, v3, v5

    .line 710
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int v3, v3, v28

    sub-int v18, v3, v19

    .line 712
    if-lez v18, :cond_1e1

    .line 714
    move/from16 v0, v18

    move/from16 v1, v21

    if-le v0, v1, :cond_1cf

    .line 716
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollBy(II)V

    .line 730
    .end local v18           #availableToScroll:I
    .end local v19           #bottomEdge:I
    :cond_19a
    :goto_19a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceEnabled:Z

    if-nez v3, :cond_1a7

    .line 731
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    const/4 v5, 0x0

    iput v5, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 732
    :cond_1a7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    cmpl-float v3, v3, v26

    if-eqz v3, :cond_43

    .line 733
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->awakenScrollBars()Z

    goto/16 :goto_43

    .line 695
    :cond_1b6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollBy(II)V

    goto :goto_16b

    .line 698
    :cond_1bf
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v5, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v0, v21

    int-to-float v6, v0

    sub-float/2addr v5, v6

    iput v5, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 699
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->invalidate()V

    goto :goto_16b

    .line 719
    .restart local v18       #availableToScroll:I
    .restart local v19       #bottomEdge:I
    :cond_1cf
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    sub-int v5, v21, v18

    int-to-float v5, v5

    iput v5, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 721
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollBy(II)V

    goto :goto_19a

    .line 725
    :cond_1e1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v5, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v0, v21

    int-to-float v6, v0

    sub-float/2addr v5, v6

    iput v5, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 727
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->invalidate()V

    goto :goto_19a

    .line 735
    .end local v4           #deltaX:I
    .end local v18           #availableToScroll:I
    .end local v19           #bottomEdge:I
    .end local v21           #delta:I
    .end local v23           #oldX:I
    .end local v24           #oldY:I
    .end local v26           #prevBounceExtent:F
    .end local v28           #scroll:I
    .end local v29           #scrollX:I
    .end local v31           #x:F
    :cond_1f1
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v31

    .line 736
    .restart local v31       #x:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastMotionX:F

    sub-float v3, v3, v31

    float-to-int v4, v3

    .line 737
    .restart local v4       #deltaX:I
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastMotionX:F

    .line 739
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    move/from16 v23, v0

    .line 740
    .restart local v23       #oldX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    move/from16 v24, v0

    .line 741
    .restart local v24       #oldY:I
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v8

    .line 742
    .local v8, range:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getOverScrollMode()I

    move-result v25

    .line 743
    .local v25, overscrollMode:I
    if-eqz v25, :cond_223

    const/4 v3, 0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_296

    if-lez v8, :cond_296

    :cond_223
    const/16 v20, 0x1

    .line 746
    .local v20, canOverscroll:Z
    :goto_225
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mOverscrollDistance:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v3

    if-eqz v3, :cond_241

    .line 749
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 751
    :cond_241
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v3, v5, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->onScrollChanged(IIII)V

    .line 753
    if-eqz v20, :cond_43

    .line 754
    add-int v27, v23, v4

    .line 755
    .local v27, pulledToX:I
    if-gez v27, :cond_299

    .line 756
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v5, v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 757
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_277

    .line 758
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 766
    :cond_277
    :goto_277
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v3, :cond_43

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_291

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_43

    .line 768
    :cond_291
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->invalidate()V

    goto/16 :goto_43

    .line 743
    .end local v20           #canOverscroll:Z
    .end local v27           #pulledToX:I
    :cond_296
    const/16 v20, 0x0

    goto :goto_225

    .line 760
    .restart local v20       #canOverscroll:Z
    .restart local v27       #pulledToX:I
    :cond_299
    move/from16 v0, v27

    if-le v0, v8, :cond_277

    .line 761
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v5, v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 762
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_277

    .line 763
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    goto :goto_277

    .line 775
    .end local v4           #deltaX:I
    .end local v8           #range:I
    .end local v17           #activePointerIndex:I
    .end local v20           #canOverscroll:Z
    .end local v23           #oldX:I
    .end local v24           #oldY:I
    .end local v25           #overscrollMode:I
    .end local v27           #pulledToX:I
    .end local v31           #x:F
    :pswitch_2bd
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_43

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v30, v0

    .line 777
    .local v30, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mMaximumVelocity:I

    int-to-float v5, v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 778
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v22, v0

    .line 780
    .local v22, initialVelocity:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2fa

    .line 781
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mMinimumVelocity:I

    if-le v3, v5, :cond_323

    .line 782
    move/from16 v0, v22

    neg-int v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->fling(I)V

    .line 791
    :cond_2fa
    :goto_2fa
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    .line 792
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    .line 793
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->recycleVelocityTracker()V

    .line 795
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v3, :cond_43

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceEnabled:Z

    if-nez v3, :cond_43

    .line 796
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 797
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    goto/16 :goto_43

    .line 784
    :cond_323
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    const/4 v12, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_2fa

    .line 786
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->invalidate()V

    goto :goto_2fa

    .line 802
    .end local v22           #initialVelocity:I
    .end local v30           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_340
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_43

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_43

    .line 803
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    const/4 v12, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollRange()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_368

    .line 804
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->invalidate()V

    .line 806
    :cond_368
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mActivePointerId:I

    .line 807
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsBeingDragged:Z

    .line 808
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->recycleVelocityTracker()V

    .line 810
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v3, :cond_43

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceEnabled:Z

    if-nez v3, :cond_43

    .line 811
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 812
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    goto/16 :goto_43

    .line 817
    :pswitch_391
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_43

    .line 609
    :pswitch_data_396
    .packed-switch 0x0
        :pswitch_45
        :pswitch_2bd
        :pswitch_99
        :pswitch_340
        :pswitch_43
        :pswitch_43
        :pswitch_391
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .registers 9
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 1049
    const/16 v5, 0x42

    if-ne p1, v5, :cond_49

    const/4 v1, 0x1

    .line 1050
    .local v1, right:Z
    :goto_6
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v3

    .line 1052
    .local v3, width:I
    if-eqz v1, :cond_4b

    .line 1053
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollX()I

    move-result v6

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1054
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v0

    .line 1055
    .local v0, count:I
    if-lez v0, :cond_33

    .line 1056
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1057
    .local v2, view:Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    if-le v4, v5, :cond_33

    .line 1058
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1067
    .end local v0           #count:I
    .end local v2           #view:Landroid/view/View;
    :cond_33
    :goto_33
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1069
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #right:Z
    .end local v3           #width:I
    :cond_49
    move v1, v4

    .line 1049
    goto :goto_6

    .line 1062
    .restart local v1       #right:Z
    .restart local v3       #width:I
    :cond_4b
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getScrollX()I

    move-result v6

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1063
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gez v5, :cond_33

    .line 1064
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    goto :goto_33
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1538
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_b

    .line 1539
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1544
    :goto_7
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1545
    return-void

    .line 1542
    :cond_b
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_7
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 7
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1587
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1590
    invoke-direct {p0, p2, p3}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .parameter "disallowIntercept"

    .prologue
    .line 477
    if-eqz p1, :cond_5

    .line 478
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->recycleVelocityTracker()V

    .line 480
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 481
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 1595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mIsLayoutDirty:Z

    .line 1596
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1597
    return-void
.end method

.method public scrollTo(II)V
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1684
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3a

    .line 1685
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1686
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->clamp(III)I

    move-result p1

    .line 1687
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->clamp(III)I

    move-result p2

    .line 1688
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    if-ne p1, v1, :cond_37

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    if-eq p2, v1, :cond_3a

    .line 1689
    :cond_37
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1692
    .end local v0           #child:Landroid/view/View;
    :cond_3a
    return-void
.end method

.method public setEnableBounce(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceEnabled:Z

    .line 250
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    if-eqz v0, :cond_14

    .line 251
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwBounceController;->setEnableBounce(Z)V

    .line 252
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwBounceController;->setEdgeEffects(Lcom/sec/android/touchwiz/widget/TwEdgeEffect;Lcom/sec/android/touchwiz/widget/TwEdgeEffect;)V

    .line 254
    :cond_14
    return-void
.end method

.method public setFillViewport(Z)V
    .registers 3
    .parameter "fillViewport"

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_9

    .line 337
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mFillViewport:Z

    .line 338
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->requestLayout()V

    .line 340
    :cond_9
    return-void
.end method

.method public setOverScrollMode(I)V
    .registers 5
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 1696
    const/4 v1, 0x2

    if-eq p1, v1, :cond_22

    .line 1697
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-nez v1, :cond_1a

    .line 1698
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1699
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-direct {v1, v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 1700
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-direct {v1, v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 1703
    .end local v0           #context:Landroid/content/Context;
    :cond_1a
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->setEnableBounce(Z)V

    .line 1710
    :goto_1e
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 1711
    return-void

    .line 1705
    :cond_22
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowLeft:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 1706
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mEdgeGlowRight:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 1708
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->setEnableBounce(Z)V

    goto :goto_1e
.end method

.method public setSmoothScrollingEnabled(Z)V
    .registers 2
    .parameter "smoothScrollingEnabled"

    .prologue
    .line 354
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mSmoothScrollingEnabled:Z

    .line 355
    return-void
.end method

.method public final smoothScrollBy(II)V
    .registers 14
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v10, 0x0

    .line 1241
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_8

    .line 1262
    :goto_7
    return-void

    .line 1245
    :cond_8
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastScroll:J

    sub-long v0, v6, v8

    .line 1246
    .local v0, duration:J
    const-wide/16 v6, 0xfa

    cmp-long v6, v0, v6

    if-lez v6, :cond_4e

    .line 1247
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mPaddingLeft:I

    sub-int v5, v6, v7

    .line 1248
    .local v5, width:I
    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1249
    .local v3, right:I
    sub-int v6, v3, v5

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1250
    .local v2, maxX:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    .line 1251
    .local v4, scrollX:I
    add-int v6, v4, p1

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p1, v6, v4

    .line 1253
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    invoke-virtual {v6, v4, v7, p1, v10}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->startScroll(IIII)V

    .line 1254
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->invalidate()V

    .line 1261
    .end local v2           #maxX:I
    .end local v3           #right:I
    .end local v4           #scrollX:I
    .end local v5           #width:I
    :goto_47
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mLastScroll:J

    goto :goto_7

    .line 1256
    :cond_4e
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_5b

    .line 1257
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->abortAnimation()V

    .line 1259
    :cond_5b
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->scrollBy(II)V

    goto :goto_47
.end method

.method public final smoothScrollTo(II)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1271
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwHorizontalScrollView;->smoothScrollBy(II)V

    .line 1272
    return-void
.end method
