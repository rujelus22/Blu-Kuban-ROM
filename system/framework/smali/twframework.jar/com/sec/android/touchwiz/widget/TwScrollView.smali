.class public Lcom/sec/android/touchwiz/widget/TwScrollView;
.super Landroid/widget/FrameLayout;
.source "TwScrollView.java"


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field static DEBUG_BOUNCE:Z = false

.field static DEBUG_SCROLL:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "TwScrollView"


# instance fields
.field private mActivePointerId:I

.field mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

.field private mBounceEnabled:Z

.field mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

.field private mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

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

    .line 72
    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->DEBUG_BOUNCE:Z

    .line 74
    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->DEBUG_SCROLL:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 170
    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 174
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceEnabled:Z

    .line 84
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 101
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsLayoutDirty:Z

    .line 108
    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 115
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    .line 132
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mSmoothScrollingEnabled:Z

    .line 148
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    .line 155
    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 157
    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 175
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->initScrollView()V

    .line 177
    sget-object v2, Lcom/android/internal/R$styleable;->ScrollView:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 180
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setFillViewport(Z)V

    .line 183
    const/16 v2, 0x2d

    const/4 v3, 0x1

    :try_start_31
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setOverScrollMode(I)V
    :try_end_38
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_31 .. :try_end_38} :catch_3c

    .line 190
    :goto_38
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 191
    return-void

    .line 185
    :catch_3c
    move-exception v1

    .line 186
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 187
    const-string v2, "TwScrollView"

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

    goto :goto_38
.end method

.method private canScroll()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 316
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 317
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_18

    .line 318
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 319
    .local v1, childHeight:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_18

    const/4 v2, 0x1

    .line 321
    .end local v1           #childHeight:I
    :cond_18
    return v2
.end method

.method private clamp(III)I
    .registers 5
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 1820
    if-ge p2, p3, :cond_4

    if-gez p1, :cond_6

    .line 1828
    :cond_4
    const/4 p1, 0x0

    .line 1837
    .end local p1
    :cond_5
    :goto_5
    return p1

    .line 1830
    .restart local p1
    :cond_6
    add-int v0, p2, p1

    if-le v0, p3, :cond_5

    .line 1835
    sub-int p1, p3, p2

    goto :goto_5
.end method

.method private doScrollY(I)V
    .registers 4
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 1233
    if-eqz p1, :cond_a

    .line 1234
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_b

    .line 1235
    invoke-virtual {p0, v1, p1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->smoothScrollBy(II)V

    .line 1240
    :cond_a
    :goto_a
    return-void

    .line 1237
    :cond_b
    invoke-virtual {p0, v1, p1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollBy(II)V

    goto :goto_a
.end method

.method private endDrag()V
    .registers 2

    .prologue
    .line 1705
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    .line 1707
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->recycleVelocityTracker()V

    .line 1709
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceEnabled:Z

    if-nez v0, :cond_18

    .line 1710
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 1711
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 1714
    :cond_18
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_24

    .line 1715
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1716
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1718
    :cond_24
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .registers 15
    .parameter "topFocus"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 972
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 973
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 982
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 984
    .local v3, foundFullyContainedFocusable:Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 985
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_c
    if-ge v4, v0, :cond_52

    .line 986
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 987
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 988
    .local v9, viewTop:I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 990
    .local v6, viewBottom:I
    if-ge p2, v6, :cond_29

    if-ge v9, p3, :cond_29

    .line 996
    if-ge p2, v9, :cond_2c

    if-ge v6, p3, :cond_2c

    const/4 v8, 0x1

    .line 998
    .local v8, viewIsFullyContained:Z
    :goto_25
    if-nez v1, :cond_2e

    .line 1000
    move-object v1, v5

    .line 1001
    move v3, v8

    .line 985
    .end local v8           #viewIsFullyContained:Z
    :cond_29
    :goto_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 996
    :cond_2c
    const/4 v8, 0x0

    goto :goto_25

    .line 1003
    .restart local v8       #viewIsFullyContained:Z
    :cond_2e
    if-eqz p1, :cond_36

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v9, v10, :cond_3e

    :cond_36
    if-nez p1, :cond_47

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-le v6, v10, :cond_47

    :cond_3e
    const/4 v7, 0x1

    .line 1007
    .local v7, viewIsCloserToBoundary:Z
    :goto_3f
    if-eqz v3, :cond_49

    .line 1008
    if-eqz v8, :cond_29

    if-eqz v7, :cond_29

    .line 1014
    move-object v1, v5

    goto :goto_29

    .line 1003
    .end local v7           #viewIsCloserToBoundary:Z
    :cond_47
    const/4 v7, 0x0

    goto :goto_3f

    .line 1017
    .restart local v7       #viewIsCloserToBoundary:Z
    :cond_49
    if-eqz v8, :cond_4e

    .line 1022
    move-object v1, v5

    .line 1023
    const/4 v3, 0x1

    goto :goto_29

    .line 1024
    :cond_4e
    if-eqz v7, :cond_29

    .line 1029
    move-object v1, v5

    goto :goto_29

    .line 1036
    .end local v5           #view:Landroid/view/View;
    .end local v6           #viewBottom:I
    .end local v7           #viewIsCloserToBoundary:Z
    .end local v8           #viewIsFullyContained:Z
    .end local v9           #viewTop:I
    :cond_52
    return-object v1
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .registers 8
    .parameter "topFocus"
    .parameter "top"
    .parameter "preferredFocusable"

    .prologue
    .line 943
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getVerticalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 944
    .local v1, fadingEdgeLength:I
    add-int v2, p2, v1

    .line 945
    .local v2, topWithoutFadingEdge:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v0, v3, v1

    .line 947
    .local v0, bottomWithoutFadingEdge:I
    if-eqz p3, :cond_1e

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, v0, :cond_1e

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, v2, :cond_1e

    .line 952
    .end local p3
    :goto_1d
    return-object p3

    .restart local p3
    :cond_1e
    invoke-direct {p0, p1, v2, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_1d
.end method

.method private getScrollRange()I
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 911
    const/4 v1, 0x0

    .line 912
    .local v1, scrollRange:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1f

    .line 913
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 914
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 917
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

    .line 455
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_28

    .line 456
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    .line 457
    .local v1, scrollY:I
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 458
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p2, v3, :cond_28

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p2, v3, :cond_28

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_28

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_28

    const/4 v2, 0x1

    .line 461
    .end local v0           #child:Landroid/view/View;
    .end local v1           #scrollY:I
    :cond_28
    return v2
.end method

.method private initOrResetVelocityTracker()V
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 466
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 470
    :goto_a
    return-void

    .line 468
    :cond_b
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_a
.end method

.method private initScrollView()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 237
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setFocusable(Z)V

    .line 238
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setDescendantFocusability(I)V

    .line 239
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setWillNotDraw(Z)V

    .line 240
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 241
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTouchSlop:I

    .line 242
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mMinimumVelocity:I

    .line 243
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mMaximumVelocity:I

    .line 244
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mOverscrollDistance:I

    .line 245
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mOverflingDistance:I

    .line 247
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-direct {v1, p0}, Lcom/sec/android/touchwiz/widget/TwBounceController;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    .line 248
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwBounceController;->makeScroller()Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    .line 249
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwBounceController;->getBounceRunnable(I)Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    .line 251
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .registers 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 474
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 476
    :cond_a
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .registers 4
    .parameter "descendant"

    .prologue
    const/4 v0, 0x0

    .line 1212
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 6
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 1671
    if-ne p1, p2, :cond_4

    .line 1676
    :cond_3
    :goto_3
    return v1

    .line 1675
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1676
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_14

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_14
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .registers 6
    .parameter "descendant"
    .parameter "delta"
    .parameter "height"

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1221
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1223
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_23

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_23

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 7
    .parameter "ev"

    .prologue
    .line 833
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 834
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 835
    .local v1, pointerId:I
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_2a

    .line 839
    if-nez v2, :cond_2b

    const/4 v0, 0x1

    .line 840
    .local v0, newPointerIndex:I
    :goto_15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    .line 841
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    .line 842
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_2a

    .line 843
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 846
    .end local v0           #newPointerIndex:I
    :cond_2a
    return-void

    .line 839
    :cond_2b
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private recycleVelocityTracker()V
    .registers 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 480
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 483
    :cond_c
    return-void
.end method

.method private scrollAndFocus(III)Z
    .registers 12
    .parameter "direction"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 1123
    const/4 v3, 0x1

    .line 1125
    .local v3, handled:Z
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v4

    .line 1126
    .local v4, height:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v1

    .line 1127
    .local v1, containerTop:I
    add-int v0, v1, v4

    .line 1128
    .local v0, containerBottom:I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_26

    const/4 v6, 0x1

    .line 1130
    .local v6, up:Z
    :goto_10
    invoke-direct {p0, v6, p2, p3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1131
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_17

    .line 1132
    move-object v5, p0

    .line 1135
    :cond_17
    if-lt p2, v1, :cond_28

    if-gt p3, v0, :cond_28

    .line 1136
    const/4 v3, 0x0

    .line 1142
    :goto_1c
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_25

    .line 1143
    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1145
    :cond_25
    return v3

    .line 1128
    .end local v5           #newFocused:Landroid/view/View;
    .end local v6           #up:Z
    :cond_26
    const/4 v6, 0x0

    goto :goto_10

    .line 1138
    .restart local v5       #newFocused:Landroid/view/View;
    .restart local v6       #up:Z
    :cond_28
    if-eqz v6, :cond_30

    sub-int v2, p2, v1

    .line 1139
    .local v2, delta:I
    :goto_2c
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->doScrollY(I)V

    goto :goto_1c

    .line 1138
    .end local v2           #delta:I
    :cond_30
    sub-int v2, p3, v0

    goto :goto_2c
.end method

.method private scrollToChild(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 1459
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1462
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1464
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1466
    .local v0, scrollDelta:I
    if-eqz v0, :cond_16

    .line 1467
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollBy(II)V

    .line 1469
    :cond_16
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .registers 6
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v2, 0x0

    .line 1480
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1481
    .local v0, delta:I
    if-eqz v0, :cond_10

    const/4 v1, 0x1

    .line 1482
    .local v1, scroll:Z
    :goto_8
    if-eqz v1, :cond_f

    .line 1483
    if-eqz p2, :cond_12

    .line 1484
    invoke-virtual {p0, v2, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollBy(II)V

    .line 1489
    :cond_f
    :goto_f
    return v1

    .end local v1           #scroll:Z
    :cond_10
    move v1, v2

    .line 1481
    goto :goto_8

    .line 1486
    .restart local v1       #scroll:Z
    :cond_12
    invoke-virtual {p0, v2, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->smoothScrollBy(II)V

    goto :goto_f
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 279
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 283
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 5
    .parameter "child"
    .parameter "index"

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 288
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 292
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 306
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 310
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .parameter "child"
    .parameter "params"

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 297
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    return-void
.end method

.method public arrowScroll(I)Z
    .registers 13
    .parameter "direction"

    .prologue
    const/16 v10, 0x82

    const/4 v7, 0x0

    .line 1157
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1158
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_a

    .line 1159
    const/4 v0, 0x0

    .line 1161
    :cond_a
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1163
    .local v4, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 1165
    .local v3, maxJump:I
    if-eqz v4, :cond_57

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v8

    invoke-direct {p0, v4, v3, v8}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_57

    .line 1166
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1167
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1168
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1169
    .local v6, scrollDelta:I
    invoke-direct {p0, v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->doScrollY(I)V

    .line 1170
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1192
    :goto_38
    if-eqz v0, :cond_55

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_55

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 1199
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getDescendantFocusability()I

    move-result v2

    .line 1200
    .local v2, descendantFocusability:I
    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setDescendantFocusability(I)V

    .line 1201
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->requestFocus()Z

    .line 1202
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setDescendantFocusability(I)V

    .line 1204
    .end local v2           #descendantFocusability:I
    :cond_55
    const/4 v7, 0x1

    :cond_56
    return v7

    .line 1173
    .end local v6           #scrollDelta:I
    :cond_57
    move v6, v3

    .line 1175
    .restart local v6       #scrollDelta:I
    const/16 v8, 0x21

    if-ne p1, v8, :cond_6f

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v8

    if-ge v8, v6, :cond_6f

    .line 1176
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v6

    .line 1186
    :cond_66
    :goto_66
    if-eqz v6, :cond_56

    .line 1189
    if-ne p1, v10, :cond_93

    move v7, v6

    :goto_6b
    invoke-direct {p0, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->doScrollY(I)V

    goto :goto_38

    .line 1177
    :cond_6f
    if-ne p1, v10, :cond_66

    .line 1178
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_66

    .line 1179
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1180
    .local v1, daBottom:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int v5, v8, v9

    .line 1181
    .local v5, screenBottom:I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_66

    .line 1182
    sub-int v6, v1, v5

    goto :goto_66

    .line 1189
    .end local v1           #daBottom:I
    .end local v5           #screenBottom:I
    :cond_93
    neg-int v7, v6

    goto :goto_6b
.end method

.method public computeScroll()V
    .registers 22

    .prologue
    .line 1375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_134

    .line 1396
    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    .line 1397
    .local v6, oldX:I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    .line 1398
    .local v7, oldY:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrX()I

    move-result v19

    .line 1399
    .local v19, x:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrY()I

    move-result v20

    .line 1401
    .local v20, y:I
    move/from16 v0, v19

    if-ne v6, v0, :cond_2a

    move/from16 v0, v20

    if-eq v7, v0, :cond_73

    .line 1402
    :cond_2a
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v9

    .line 1403
    .local v9, range:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getOverScrollMode()I

    move-result v15

    .line 1404
    .local v15, overscrollMode:I
    if-eqz v15, :cond_39

    const/4 v3, 0x1

    if-ne v15, v3, :cond_7a

    if-lez v9, :cond_7a

    :cond_39
    const/4 v13, 0x1

    .line 1407
    .local v13, canOverscroll:Z
    :goto_3a
    sub-int v4, v19, v6

    sub-int v5, v20, v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mOverflingDistance:I

    const/4 v12, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Lcom/sec/android/touchwiz/widget/TwScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 1408
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v6, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->onScrollChanged(IIII)V

    .line 1410
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceEnabled:Z

    if-nez v3, :cond_93

    if-eqz v13, :cond_93

    .line 1411
    if-gez v20, :cond_7c

    if-ltz v7, :cond_7c

    .line 1412
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onAbsorb(I)V

    .line 1441
    .end local v9           #range:I
    .end local v13           #canOverscroll:Z
    .end local v15           #overscrollMode:I
    :cond_73
    :goto_73
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->awakenScrollBars()Z

    .line 1444
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->postInvalidate()V

    .line 1451
    .end local v6           #oldX:I
    .end local v7           #oldY:I
    .end local v19           #x:I
    .end local v20           #y:I
    :cond_79
    :goto_79
    return-void

    .line 1404
    .restart local v6       #oldX:I
    .restart local v7       #oldY:I
    .restart local v9       #range:I
    .restart local v15       #overscrollMode:I
    .restart local v19       #x:I
    .restart local v20       #y:I
    :cond_7a
    const/4 v13, 0x0

    goto :goto_3a

    .line 1413
    .restart local v13       #canOverscroll:Z
    :cond_7c
    move/from16 v0, v20

    if-le v0, v9, :cond_73

    if-gt v7, v9, :cond_73

    .line 1414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onAbsorb(I)V

    goto :goto_73

    .line 1416
    :cond_93
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceEnabled:Z

    if-eqz v3, :cond_73

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_73

    .line 1417
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1418
    .local v14, child:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->clamp(III)I

    move-result v16

    .line 1420
    .local v16, tempX:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->clamp(III)I

    move-result v17

    .line 1425
    .local v17, tempY:I
    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_e6

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_73

    .line 1427
    :cond_e6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity(Z)F

    move-result v18

    .line 1430
    .local v18, velocity:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->abortAnimation()V

    .line 1431
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollTo(II)V

    .line 1433
    sget-boolean v3, Lcom/sec/android/touchwiz/widget/TwScrollView;->DEBUG_BOUNCE:Z

    if-eqz v3, :cond_129

    .line 1434
    const-string v3, "TwScrollView"

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

    .line 1436
    :cond_129
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    move/from16 v0, v18

    invoke-interface {v3, v0}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->start(F)V

    goto/16 :goto_73

    .line 1446
    .end local v6           #oldX:I
    .end local v7           #oldY:I
    .end local v9           #range:I
    .end local v13           #canOverscroll:Z
    .end local v14           #child:Landroid/view/View;
    .end local v15           #overscrollMode:I
    .end local v16           #tempX:I
    .end local v17           #tempY:I
    .end local v18           #velocity:F
    .end local v19           #x:I
    .end local v20           #y:I
    :cond_134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v3, :cond_79

    .line 1447
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v3}, Landroid/os/StrictMode$Span;->finish()V

    .line 1448
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    goto/16 :goto_79
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .registers 12
    .parameter "rect"

    .prologue
    const/4 v7, 0x0

    .line 1501
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_9

    move v6, v7

    .line 1558
    :cond_8
    :goto_8
    return v6

    .line 1504
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v3

    .line 1505
    .local v3, height:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v5

    .line 1506
    .local v5, screenTop:I
    add-int v4, v5, v3

    .line 1508
    .local v4, screenBottom:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 1511
    .local v2, fadingEdge:I
    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-lez v8, :cond_1c

    .line 1512
    add-int/2addr v5, v2

    .line 1517
    :cond_1c
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_29

    .line 1518
    sub-int/2addr v4, v2

    .line 1521
    :cond_29
    const/4 v6, 0x0

    .line 1523
    .local v6, scrollYDelta:I
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    if-le v8, v4, :cond_50

    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-le v8, v5, :cond_50

    .line 1528
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v8, v3, :cond_4b

    .line 1530
    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v5

    add-int/2addr v6, v8

    .line 1537
    :goto_3c
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1538
    .local v0, bottom:I
    sub-int v1, v0, v4

    .line 1539
    .local v1, distanceToBottom:I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1541
    goto :goto_8

    .line 1533
    .end local v0           #bottom:I
    .end local v1           #distanceToBottom:I
    :cond_4b
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    add-int/2addr v6, v8

    goto :goto_3c

    .line 1541
    :cond_50
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v5, :cond_8

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_8

    .line 1546
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_6d

    .line 1548
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    sub-int/2addr v6, v7

    .line 1556
    :goto_63
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_8

    .line 1551
    :cond_6d
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    sub-int/2addr v6, v7

    goto :goto_63
.end method

.method protected computeVerticalScrollExtent()I
    .registers 5

    .prologue
    .line 1313
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    move-result v0

    .line 1315
    .local v0, extent:I
    iget-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceEnabled:Z

    if-eqz v2, :cond_35

    .line 1316
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v2, v2, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2f

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->computeVerticalScrollRange()I

    move-result v2

    if-ge v0, v2, :cond_2f

    .line 1317
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 1319
    .local v1, ratio:F
    int-to-float v2, v0

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 1321
    .end local v1           #ratio:F
    :cond_2f
    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1323
    :goto_34
    return v2

    :cond_35
    move v2, v0

    goto :goto_34
.end method

.method protected computeVerticalScrollOffset()I
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1329
    const/4 v5, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1331
    .local v2, offset:I
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v5, :cond_31

    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceEnabled:Z

    if-eqz v5, :cond_31

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_31

    .line 1332
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v3, v5, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 1333
    .local v3, savedBounceExtent:F
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->computeVerticalScrollExtent()I

    move-result v4

    .line 1334
    .local v4, shrinkedScrollExtent:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iput v7, v5, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 1335
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->computeVerticalScrollExtent()I

    move-result v1

    .line 1336
    .local v1, normalScrollExtent:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iput v3, v5, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 1338
    sub-int v0, v1, v4

    .line 1340
    .local v0, delta:I
    add-int/2addr v2, v0

    .line 1342
    .end local v0           #delta:I
    .end local v1           #normalScrollExtent:I
    .end local v3           #savedBounceExtent:F
    .end local v4           #shrinkedScrollExtent:I
    :cond_31
    return v2
.end method

.method protected computeVerticalScrollRange()I
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1294
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v1

    .line 1295
    .local v1, count:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    sub-int v0, v5, v6

    .line 1296
    .local v0, contentHeight:I
    if-nez v1, :cond_13

    .line 1309
    .end local v0           #contentHeight:I
    :goto_12
    return v0

    .line 1300
    .restart local v0       #contentHeight:I
    :cond_13
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1301
    .local v3, scrollRange:I
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    .line 1302
    .local v4, scrollY:I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1303
    .local v2, overscrollBottom:I
    if-gez v4, :cond_28

    .line 1304
    sub-int/2addr v3, v4

    :cond_26
    :goto_26
    move v0, v3

    .line 1309
    goto :goto_12

    .line 1305
    :cond_28
    if-le v4, v2, :cond_26

    .line 1306
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_26
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 401
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

    .line 1759
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1761
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceEnabled:Z

    if-eqz v5, :cond_34

    .line 1762
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwBounceController;->adjustBounceExtent()F

    move-result v6

    iput v6, v5, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 1764
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getOverScrollMode()I

    move-result v1

    .line 1765
    .local v1, overscrollMode:I
    if-eqz v1, :cond_21

    const/4 v5, 0x1

    if-ne v1, v5, :cond_34

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v5

    if-lez v5, :cond_34

    .line 1767
    :cond_21
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_c3

    .line 1768
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwBounceController;->getBounceExtentRatio()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull2(F)V

    .line 1775
    .end local v1           #overscrollMode:I
    :cond_34
    :goto_34
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v5, :cond_c2

    .line 1776
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    .line 1777
    .local v3, scrollY:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_78

    .line 1778
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1779
    .local v2, restoreCount:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingRight:I

    sub-int v4, v5, v6

    .line 1782
    .local v4, width:I
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceEnabled:Z

    if-eqz v5, :cond_55

    .line 1786
    :cond_55
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingLeft:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1788
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setSize(II)V

    .line 1789
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v5, p1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 1790
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->invalidate()V

    .line 1792
    :cond_75
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1794
    .end local v2           #restoreCount:I
    .end local v4           #width:I
    :cond_78
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_c2

    .line 1795
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1796
    .restart local v2       #restoreCount:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingRight:I

    sub-int v4, v5, v6

    .line 1797
    .restart local v4       #width:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v0

    .line 1802
    .local v0, height:I
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceEnabled:Z

    if-eqz v5, :cond_97

    .line 1806
    :cond_97
    neg-int v5, v4

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingLeft:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v6, v0

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1809
    const/high16 v5, 0x4334

    int-to-float v6, v4

    invoke-virtual {p1, v5, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1810
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v5, v4, v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setSize(II)V

    .line 1811
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v5, p1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_bf

    .line 1812
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->invalidate()V

    .line 1814
    :cond_bf
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1817
    .end local v0           #height:I
    .end local v2           #restoreCount:I
    .end local v3           #scrollY:I
    .end local v4           #width:I
    :cond_c2
    return-void

    .line 1769
    .restart local v1       #overscrollMode:I
    :cond_c3
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_34

    .line 1770
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

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

    const/16 v4, 0x21

    const/16 v5, 0x82

    .line 413
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 415
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_38

    .line 416
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_37

    .line 417
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 418
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_24

    .line 419
    const/4 v0, 0x0

    .line 420
    :cond_24
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 422
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_37

    if-eq v2, p0, :cond_37

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_37

    const/4 v3, 0x1

    .line 451
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_37
    :goto_37
    return v3

    .line 428
    :cond_38
    const/4 v1, 0x0

    .line 429
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_46

    .line 430
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_76

    :cond_46
    :goto_46
    move v3, v1

    .line 451
    goto :goto_37

    .line 432
    :sswitch_48
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_53

    .line 433
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_46

    .line 435
    :cond_53
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->fullScroll(I)Z

    move-result v1

    .line 437
    goto :goto_46

    .line 439
    :sswitch_58
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_63

    .line 440
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_46

    .line 442
    :cond_63
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->fullScroll(I)Z

    move-result v1

    .line 444
    goto :goto_46

    .line 446
    :sswitch_68
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_73

    move v3, v4

    :goto_6f
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->pageScroll(I)Z

    goto :goto_46

    :cond_73
    move v3, v5

    goto :goto_6f

    .line 430
    nop

    :sswitch_data_76
    .sparse-switch
        0x13 -> :sswitch_48
        0x14 -> :sswitch_58
        0x3e -> :sswitch_68
    .end sparse-switch
.end method

.method public fling(I)V
    .registers 16
    .parameter "velocityY"

    .prologue
    const/4 v3, 0x0

    .line 1687
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_42

    .line 1688
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    sub-int v12, v0, v1

    .line 1689
    .local v12, height:I
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 1691
    .local v11, bottom:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    sub-int v4, v11, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v10, v12, 0x2

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    move v9, v3

    invoke-virtual/range {v0 .. v10}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->fling(IIIIIIIIII)V

    .line 1694
    if-lez p1, :cond_43

    const/4 v13, 0x1

    .line 1696
    .local v13, movingDown:Z
    :goto_33
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_3f

    .line 1697
    const-string v0, "ScrollView-fling"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1700
    :cond_3f
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->invalidate()V

    .line 1702
    .end local v11           #bottom:I
    .end local v12           #height:I
    .end local v13           #movingDown:Z
    :cond_42
    return-void

    .restart local v11       #bottom:I
    .restart local v12       #height:I
    :cond_43
    move v13, v3

    .line 1694
    goto :goto_33
.end method

.method public fullScroll(I)Z
    .registers 9
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 1090
    const/16 v5, 0x82

    if-ne p1, v5, :cond_41

    const/4 v1, 0x1

    .line 1091
    .local v1, down:Z
    :goto_6
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v2

    .line 1093
    .local v2, height:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 1094
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1096
    if-eqz v1, :cond_34

    .line 1097
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v0

    .line 1098
    .local v0, count:I
    if-lez v0, :cond_34

    .line 1099
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1100
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1101
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1105
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_34
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_41
    move v1, v4

    .line 1090
    goto :goto_6
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 6

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_8

    .line 215
    const/4 v3, 0x0

    .line 225
    :goto_7
    return v3

    .line 218
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 219
    .local v1, length:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int v0, v3, v4

    .line 220
    .local v0, bottomEdge:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    .line 221
    .local v2, span:I
    if-ge v2, v1, :cond_28

    .line 222
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_7

    .line 225
    :cond_28
    const/high16 v3, 0x3f80

    goto :goto_7
.end method

.method public getBounce()Z
    .registers 2

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceEnabled:Z

    return v0
.end method

.method public getMaxScrollAmount()I
    .registers 4

    .prologue
    .line 233
    const/high16 v0, 0x3f00

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBottom:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 4

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_8

    .line 201
    const/4 v1, 0x0

    .line 209
    :goto_7
    return v1

    .line 204
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 205
    .local v0, length:I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    if-ge v1, v0, :cond_16

    .line 206
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_7

    .line 209
    :cond_16
    const/high16 v1, 0x3f80

    goto :goto_7
.end method

.method public isFillViewport()Z
    .registers 2

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .registers 2

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .registers 10
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 1347
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1352
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingLeft:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1355
    .local v1, childWidthMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1357
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1358
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
    .line 1363
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1365
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingLeft:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1367
    .local v1, childWidthMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1370
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1371
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1621
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1623
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_f

    .line 1624
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1625
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1627
    :cond_f
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1a

    .line 1628
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1629
    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1631
    :cond_1a
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "event"

    .prologue
    .line 850
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_f

    .line 851
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_42

    .line 874
    :cond_f
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_13
    return v5

    .line 853
    :pswitch_14
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_f

    .line 854
    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    .line 855
    .local v4, vscroll:F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_f

    .line 856
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getVerticalScrollFactor()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v0, v5

    .line 857
    .local v0, delta:I
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v3

    .line 858
    .local v3, range:I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    .line 859
    .local v2, oldScrollY:I
    sub-int v1, v2, v0

    .line 860
    .local v1, newScrollY:I
    if-gez v1, :cond_3d

    .line 861
    const/4 v1, 0x0

    .line 865
    :cond_34
    :goto_34
    if-eq v1, v2, :cond_f

    .line 866
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    invoke-super {p0, v5, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 867
    const/4 v5, 0x1

    goto :goto_13

    .line 862
    :cond_3d
    if-le v1, v3, :cond_34

    .line 863
    move v1, v3

    goto :goto_34

    .line 851
    nop

    :pswitch_data_42
    .packed-switch 0x8
        :pswitch_14
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 901
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 902
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v1

    if-lez v1, :cond_24

    const/4 v0, 0x1

    .line 903
    .local v0, scrollable:Z
    :goto_a
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 904
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 905
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 906
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    .line 907
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 908
    return-void

    .line 902
    .end local v0           #scrollable:Z
    :cond_24
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 895
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 896
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 897
    return-void

    .line 896
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "ev"

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 505
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 506
    .local v7, action:I
    const/4 v1, 0x2

    if-ne v7, v1, :cond_f

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_f

    .line 598
    :cond_e
    :goto_e
    return v0

    .line 510
    :cond_f
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_b0

    .line 598
    :cond_14
    :goto_14
    :pswitch_14
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    goto :goto_e

    .line 522
    :pswitch_17
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    .line 523
    .local v8, activePointerId:I
    if-eq v8, v2, :cond_14

    .line 529
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 533
    .local v9, pointerIndex:I
    if-ltz v9, :cond_e

    .line 536
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 537
    .local v10, y:F
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    sub-float v1, v10, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v11, v1

    .line 538
    .local v11, yDiff:I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTouchSlop:I

    if-le v11, v1, :cond_14

    .line 539
    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    .line 540
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    .line 541
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->initVelocityTrackerIfNotExists()V

    .line 542
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 543
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_14

    .line 544
    const-string v0, "ScrollView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    goto :goto_14

    .line 551
    .end local v8           #activePointerId:I
    .end local v9           #pointerIndex:I
    .end local v10           #y:F
    .end local v11           #yDiff:I
    :pswitch_4b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 552
    .restart local v10       #y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    float-to-int v2, v10

    invoke-direct {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->inChild(II)Z

    move-result v1

    if-nez v1, :cond_61

    .line 553
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    .line 554
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->recycleVelocityTracker()V

    goto :goto_14

    .line 562
    :cond_61
    iput v10, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    .line 563
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    .line 565
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->initOrResetVelocityTracker()V

    .line 566
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 572
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_7a

    move v3, v0

    :cond_7a
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    .line 573
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_14

    .line 574
    const-string v0, "ScrollView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    goto :goto_14

    .line 582
    .end local v10           #y:F
    :pswitch_8d
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    .line 583
    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    .line 584
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->recycleVelocityTracker()V

    .line 585
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 586
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->invalidate()V

    goto/16 :goto_14

    .line 590
    :pswitch_ab
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_14

    .line 510
    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_8d
        :pswitch_17
        :pswitch_8d
        :pswitch_14
        :pswitch_14
        :pswitch_ab
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
    .line 1635
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1636
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsLayoutDirty:Z

    .line 1638
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1639
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1641
    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1644
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollTo(II)V

    .line 1645
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 369
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 371
    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFillViewport:Z

    if-nez v6, :cond_8

    .line 396
    :cond_7
    :goto_7
    return-void

    .line 375
    :cond_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 376
    .local v4, heightMode:I
    if-eqz v4, :cond_7

    .line 380
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_7

    .line 381
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 382
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getMeasuredHeight()I

    move-result v3

    .line 383
    .local v3, height:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ge v6, v3, :cond_7

    .line 384
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 386
    .local v5, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingLeft:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingRight:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v6, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 388
    .local v2, childWidthMeasureSpec:I
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    sub-int/2addr v3, v6

    .line 389
    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v6

    .line 390
    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 393
    .local v1, childHeightMeasureSpec:I
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

    .line 880
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_25

    .line 881
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    .line 882
    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    .line 883
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->invalidateParentIfNeeded()V

    .line 884
    if-eqz p4, :cond_21

    .line 885
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    .line 890
    :cond_21
    :goto_21
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->awakenScrollBars()Z

    .line 891
    return-void

    .line 888
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

    .line 1584
    const/4 v2, 0x2

    if-ne p1, v2, :cond_14

    .line 1585
    const/16 p1, 0x82

    .line 1590
    :cond_6
    :goto_6
    if-nez p2, :cond_1a

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1594
    .local v0, nextFocus:Landroid/view/View;
    :goto_11
    if-nez v0, :cond_23

    .line 1602
    :cond_13
    :goto_13
    return v1

    .line 1586
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_14
    const/4 v2, 0x1

    if-ne p1, v2, :cond_6

    .line 1587
    const/16 p1, 0x21

    goto :goto_6

    .line 1590
    :cond_1a
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_11

    .line 1598
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_23
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1602
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_13
.end method

.method protected onSizeChanged(IIII)V
    .registers 8
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1649
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1651
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1652
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_b

    if-ne p0, v0, :cond_c

    .line 1664
    :cond_b
    :goto_b
    return-void

    .line 1658
    :cond_c
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1659
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1660
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1661
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 1662
    .local v1, scrollDelta:I
    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->doScrollY(I)V

    goto :goto_b
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 36
    .parameter "ev"

    .prologue
    .line 603
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->initVelocityTrackerIfNotExists()V

    .line 604
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 606
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    .line 608
    .local v17, action:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_36

    const/4 v3, 0x1

    move/from16 v0, v17

    if-eq v0, v3, :cond_25

    const/4 v3, 0x3

    move/from16 v0, v17

    if-ne v0, v3, :cond_36

    .line 613
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->start(F)V

    .line 614
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 615
    const/4 v3, 0x1

    .line 829
    :goto_35
    return v3

    .line 618
    :cond_36
    move/from16 v0, v17

    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_3ae

    .line 829
    :cond_3d
    :goto_3d
    :pswitch_3d
    const/4 v3, 0x1

    goto :goto_35

    .line 620
    :pswitch_3f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_52

    const/4 v3, 0x1

    :goto_46
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    .line 621
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-nez v3, :cond_54

    .line 622
    const/4 v3, 0x0

    goto :goto_35

    .line 620
    :cond_52
    const/4 v3, 0x0

    goto :goto_46

    .line 629
    :cond_54
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_77

    .line 630
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->abortAnimation()V

    .line 631
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v3, :cond_77

    .line 632
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v3}, Landroid/os/StrictMode$Span;->finish()V

    .line 633
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 638
    :cond_77
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    .line 639
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    .line 644
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceEnabled:Z

    if-eqz v3, :cond_3d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    if-eqz v3, :cond_3d

    .line 645
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    invoke-interface {v3}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->cancel()V

    .line 647
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    const/4 v4, 0x0

    iput v4, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 649
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v3, :cond_3d

    .line 650
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease2()V

    .line 651
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease2()V

    goto :goto_3d

    .line 657
    :pswitch_b9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_3d

    .line 659
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v18

    .line 661
    .local v18, activePointerIndex:I
    if-gez v18, :cond_ce

    .line 662
    const/4 v3, 0x1

    goto/16 :goto_35

    .line 665
    :cond_ce
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceEnabled:Z

    if-eqz v3, :cond_212

    .line 666
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    if-eqz v3, :cond_e1

    .line 667
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceRunnable:Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;

    invoke-interface {v3}, Lcom/sec/android/touchwiz/widget/TwBounceController$BounceRunnable;->cancel()V

    .line 670
    :cond_e1
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v33

    .line 671
    .local v33, y:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    sub-float v3, v3, v33

    float-to-int v5, v3

    .line 672
    .local v5, deltaY:I
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    .line 674
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    move/from16 v25, v0

    .line 675
    .local v25, oldX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    move/from16 v26, v0

    .line 676
    .local v26, oldY:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->onScrollChanged(IIII)V

    .line 678
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v0, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v28, v0

    .line 679
    .local v28, prevBounceExtent:F
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v31

    .line 680
    .local v31, scrollY:I
    const/16 v22, 0x0

    .line 681
    .local v22, delta:I
    const/16 v30, 0x0

    .line 683
    .local v30, scroll:I
    move/from16 v22, v5

    .line 684
    move/from16 v30, v31

    .line 687
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v0, v22

    int-to-float v4, v0

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_171

    .line 689
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_15d

    .line 690
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v4, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v0, v22

    int-to-float v6, v0

    sub-float/2addr v4, v6

    iput v4, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 691
    const/16 v22, 0x0

    .line 692
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->invalidate()V

    .line 693
    const/4 v3, 0x1

    goto/16 :goto_35

    .line 695
    :cond_15d
    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    sub-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v22, v0

    .line 696
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    const/4 v4, 0x0

    iput v4, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 701
    :cond_171
    if-gez v22, :cond_18c

    .line 702
    if-lez v30, :cond_1e0

    .line 703
    add-int v3, v30, v22

    if-gez v3, :cond_1d7

    .line 705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    add-int v4, v30, v22

    neg-int v4, v4

    int-to-float v4, v4

    iput v4, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 706
    const/4 v3, 0x0

    move/from16 v0, v30

    neg-int v4, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollBy(II)V

    .line 720
    :cond_18c
    :goto_18c
    if-lez v22, :cond_1bb

    .line 721
    const/16 v20, 0x0

    .line 722
    .local v20, bottomEdge:I
    const/16 v19, 0x0

    .line 723
    .local v19, availableToScroll:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getPaddingBottom()I

    move-result v4

    sub-int v20, v3, v4

    .line 724
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v3, v3, v30

    sub-int v19, v3, v20

    .line 726
    if-lez v19, :cond_202

    .line 728
    move/from16 v0, v19

    move/from16 v1, v22

    if-le v0, v1, :cond_1f0

    .line 730
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollBy(II)V

    .line 744
    .end local v19           #availableToScroll:I
    .end local v20           #bottomEdge:I
    :cond_1bb
    :goto_1bb
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceEnabled:Z

    if-nez v3, :cond_1c8

    .line 745
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    const/4 v4, 0x0

    iput v4, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 746
    :cond_1c8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v3, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    cmpl-float v3, v3, v28

    if-eqz v3, :cond_3d

    .line 747
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->awakenScrollBars()Z

    goto/16 :goto_3d

    .line 710
    :cond_1d7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollBy(II)V

    goto :goto_18c

    .line 713
    :cond_1e0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v4, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v0, v22

    int-to-float v6, v0

    sub-float/2addr v4, v6

    iput v4, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 714
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->invalidate()V

    goto :goto_18c

    .line 733
    .restart local v19       #availableToScroll:I
    .restart local v20       #bottomEdge:I
    :cond_1f0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    sub-int v4, v22, v19

    int-to-float v4, v4

    iput v4, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 735
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollBy(II)V

    goto :goto_1bb

    .line 739
    :cond_202
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget v4, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    move/from16 v0, v22

    int-to-float v6, v0

    sub-float/2addr v4, v6

    iput v4, v3, Lcom/sec/android/touchwiz/widget/TwBounceController;->mBounceExtent:F

    .line 741
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->invalidate()V

    goto :goto_1bb

    .line 749
    .end local v5           #deltaY:I
    .end local v19           #availableToScroll:I
    .end local v20           #bottomEdge:I
    .end local v22           #delta:I
    .end local v25           #oldX:I
    .end local v26           #oldY:I
    .end local v28           #prevBounceExtent:F
    .end local v30           #scroll:I
    .end local v31           #scrollY:I
    .end local v33           #y:F
    :cond_212
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v33

    .line 750
    .restart local v33       #y:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    sub-float v3, v3, v33

    float-to-int v5, v3

    .line 751
    .restart local v5       #deltaY:I
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    .line 753
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    move/from16 v25, v0

    .line 754
    .restart local v25       #oldX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    move/from16 v26, v0

    .line 755
    .restart local v26       #oldY:I
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v9

    .line 756
    .local v9, range:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getOverScrollMode()I

    move-result v27

    .line 757
    .local v27, overscrollMode:I
    if-eqz v27, :cond_244

    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_2b7

    if-lez v9, :cond_2b7

    :cond_244
    const/16 v21, 0x1

    .line 760
    .local v21, canOverscroll:Z
    :goto_246
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mOverscrollDistance:I

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Lcom/sec/android/touchwiz/widget/TwScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v3

    if-eqz v3, :cond_262

    .line 763
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 765
    :cond_262
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->onScrollChanged(IIII)V

    .line 767
    if-eqz v21, :cond_3d

    .line 768
    add-int v29, v26, v5

    .line 769
    .local v29, pulledToY:I
    if-gez v29, :cond_2ba

    .line 770
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 771
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_298

    .line 772
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    .line 780
    :cond_298
    :goto_298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v3, :cond_3d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_2b2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3d

    .line 782
    :cond_2b2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->invalidate()V

    goto/16 :goto_3d

    .line 757
    .end local v21           #canOverscroll:Z
    .end local v29           #pulledToY:I
    :cond_2b7
    const/16 v21, 0x0

    goto :goto_246

    .line 774
    .restart local v21       #canOverscroll:Z
    .restart local v29       #pulledToY:I
    :cond_2ba
    move/from16 v0, v29

    if-le v0, v9, :cond_298

    .line 775
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    .line 776
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_298

    .line 777
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    goto :goto_298

    .line 789
    .end local v5           #deltaY:I
    .end local v9           #range:I
    .end local v18           #activePointerIndex:I
    .end local v21           #canOverscroll:Z
    .end local v25           #oldX:I
    .end local v26           #oldY:I
    .end local v27           #overscrollMode:I
    .end local v29           #pulledToY:I
    .end local v33           #y:F
    :pswitch_2de
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_3d

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v32, v0

    .line 791
    .local v32, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mMaximumVelocity:I

    int-to-float v4, v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 792
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v24, v0

    .line 794
    .local v24, initialVelocity:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_31b

    .line 795
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mMinimumVelocity:I

    if-le v3, v4, :cond_325

    .line 796
    move/from16 v0, v24

    neg-int v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->fling(I)V

    .line 804
    :cond_31b
    :goto_31b
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    .line 805
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->endDrag()V

    goto/16 :goto_3d

    .line 798
    :cond_325
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v16

    invoke-virtual/range {v10 .. v16}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_31b

    .line 799
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->invalidate()V

    goto :goto_31b

    .line 809
    .end local v24           #initialVelocity:I
    .end local v32           #velocityTracker:Landroid/view/VelocityTracker;
    :pswitch_342
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_3d

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_3d

    .line 810
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v16

    invoke-virtual/range {v10 .. v16}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_36a

    .line 811
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->invalidate()V

    .line 813
    :cond_36a
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    .line 814
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->endDrag()V

    goto/16 :goto_3d

    .line 818
    :pswitch_374
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v23

    .line 819
    .local v23, index:I
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v33

    .line 820
    .restart local v33       #y:F
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    .line 821
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    goto/16 :goto_3d

    .line 825
    .end local v23           #index:I
    .end local v33           #y:F
    :pswitch_394
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 826
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:F

    goto/16 :goto_3d

    .line 618
    nop

    :pswitch_data_3ae
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_2de
        :pswitch_b9
        :pswitch_342
        :pswitch_3d
        :pswitch_374
        :pswitch_394
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .registers 9
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 1053
    const/16 v5, 0x82

    if-ne p1, v5, :cond_4b

    const/4 v1, 0x1

    .line 1054
    .local v1, down:Z
    :goto_6
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v2

    .line 1056
    .local v2, height:I
    if-eqz v1, :cond_4d

    .line 1057
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1058
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v0

    .line 1059
    .local v0, count:I
    if-lez v0, :cond_35

    .line 1060
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1061
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_35

    .line 1062
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1071
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_35
    :goto_35
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1073
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_4b
    move v1, v4

    .line 1053
    goto :goto_6

    .line 1066
    .restart local v1       #down:Z
    .restart local v2       #height:I
    :cond_4d
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v6

    sub-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1067
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gez v5, :cond_35

    .line 1068
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    goto :goto_35
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1563
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_b

    .line 1564
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1570
    :goto_7
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1571
    return-void

    .line 1568
    :cond_b
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_7
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 7
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1608
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

    .line 1610
    invoke-direct {p0, p2, p3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .parameter "disallowIntercept"

    .prologue
    .line 487
    if-eqz p1, :cond_5

    .line 488
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->recycleVelocityTracker()V

    .line 490
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 491
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 1615
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsLayoutDirty:Z

    .line 1616
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1617
    return-void
.end method

.method public scrollTo(II)V
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1728
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3a

    .line 1729
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1730
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->clamp(III)I

    move-result p1

    .line 1731
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->clamp(III)I

    move-result p2

    .line 1732
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    if-ne p1, v1, :cond_37

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    if-eq p2, v1, :cond_3a

    .line 1733
    :cond_37
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1736
    .end local v0           #child:Landroid/view/View;
    :cond_3a
    return-void
.end method

.method public setEnableBounce(Z)V
    .registers 5
    .parameter "enable"

    .prologue
    .line 269
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceEnabled:Z

    .line 270
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    if-eqz v0, :cond_14

    .line 271
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwBounceController;->setEnableBounce(Z)V

    .line 272
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBounceController:Lcom/sec/android/touchwiz/widget/TwBounceController;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwBounceController;->setEdgeEffects(Lcom/sec/android/touchwiz/widget/TwEdgeEffect;Lcom/sec/android/touchwiz/widget/TwEdgeEffect;)V

    .line 274
    :cond_14
    return-void
.end method

.method public setFillViewport(Z)V
    .registers 3
    .parameter "fillViewport"

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_9

    .line 345
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFillViewport:Z

    .line 346
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->requestLayout()V

    .line 348
    :cond_9
    return-void
.end method

.method public setOverScrollMode(I)V
    .registers 5
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 1740
    const/4 v1, 0x2

    if-eq p1, v1, :cond_22

    .line 1741
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-nez v1, :cond_1a

    .line 1742
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1743
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-direct {v1, v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 1744
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-direct {v1, v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 1747
    .end local v0           #context:Landroid/content/Context;
    :cond_1a
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setEnableBounce(Z)V

    .line 1754
    :goto_1e
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 1755
    return-void

    .line 1749
    :cond_22
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 1750
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    .line 1752
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setEnableBounce(Z)V

    goto :goto_1e
.end method

.method public setSmoothScrollingEnabled(Z)V
    .registers 2
    .parameter "smoothScrollingEnabled"

    .prologue
    .line 364
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mSmoothScrollingEnabled:Z

    .line 365
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .prologue
    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .registers 14
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v10, 0x0

    .line 1249
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_8

    .line 1274
    :goto_7
    return-void

    .line 1253
    :cond_8
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastScroll:J

    sub-long v1, v6, v8

    .line 1254
    .local v1, duration:J
    const-wide/16 v6, 0xfa

    cmp-long v6, v1, v6

    if-lez v6, :cond_4e

    .line 1255
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    sub-int v3, v6, v7

    .line 1256
    .local v3, height:I
    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1257
    .local v0, bottom:I
    sub-int v6, v0, v3

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1258
    .local v4, maxY:I
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    .line 1259
    .local v5, scrollY:I
    add-int v6, v5, p2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p2, v6, v5

    .line 1261
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    invoke-virtual {v6, v7, v5, v10, p2}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->startScroll(IIII)V

    .line 1262
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->invalidate()V

    .line 1273
    .end local v0           #bottom:I
    .end local v3           #height:I
    .end local v4           #maxY:I
    .end local v5           #scrollY:I
    :goto_47
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastScroll:J

    goto :goto_7

    .line 1264
    :cond_4e
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_67

    .line 1265
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->abortAnimation()V

    .line 1266
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v6, :cond_67

    .line 1267
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v6}, Landroid/os/StrictMode$Span;->finish()V

    .line 1268
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1271
    :cond_67
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollBy(II)V

    goto :goto_47
.end method

.method public final smoothScrollTo(II)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1283
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->smoothScrollBy(II)V

    .line 1284
    return-void
.end method
