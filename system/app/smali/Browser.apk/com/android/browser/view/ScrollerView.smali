.class public Lcom/android/browser/view/ScrollerView;
.super Landroid/widget/FrameLayout;
.source "ScrollerView.java"


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f


# instance fields
.field private mActivePointerId:I

.field protected mChildToScrollTo:Landroid/view/View;

.field private mDownCoords:Landroid/graphics/PointF;

.field private mDownView:Landroid/view/View;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field protected mHorizontal:Z

.field protected mIsBeingDragged:Z

.field private mIsLayoutDirty:Z

.field protected mIsOrthoDragged:Z

.field private mLastMotionY:F

.field private mLastOrthoCoord:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field protected mMinimumVelocity:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field protected mScroller:Landroid/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/browser/view/ScrollerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 161
    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Lcom/android/browser/view/ScrollerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 162
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

    const/4 v2, 0x0

    .line 165
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    .line 84
    iput-boolean v4, p0, Lcom/android/browser/view/ScrollerView;->mIsLayoutDirty:Z

    .line 91
    iput-object v3, p0, Lcom/android/browser/view/ScrollerView;->mChildToScrollTo:Landroid/view/View;

    .line 98
    iput-boolean v2, p0, Lcom/android/browser/view/ScrollerView;->mIsBeingDragged:Z

    .line 115
    iput-boolean v4, p0, Lcom/android/browser/view/ScrollerView;->mSmoothScrollingEnabled:Z

    .line 128
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    .line 136
    iput-object v3, p0, Lcom/android/browser/view/ScrollerView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 137
    iput-object v3, p0, Lcom/android/browser/view/ScrollerView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 166
    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->initScrollView()V

    .line 168
    sget-object v1, Lcom/android/internal/R$styleable;->ScrollView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 171
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/browser/view/ScrollerView;->setFillViewport(Z)V

    .line 173
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 174
    return-void
.end method

.method private canScroll()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 292
    invoke-virtual {p0, v2}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 293
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_31

    .line 294
    iget-boolean v3, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_1f

    .line 295
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/browser/view/ScrollerView;->mPaddingLeft:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/browser/view/ScrollerView;->mPaddingRight:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_1d

    .line 300
    :cond_1c
    :goto_1c
    return v1

    :cond_1d
    move v1, v2

    .line 295
    goto :goto_1c

    .line 297
    :cond_1f
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/browser/view/ScrollerView;->mPaddingTop:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/browser/view/ScrollerView;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-lt v3, v4, :cond_1c

    move v1, v2

    goto :goto_1c

    :cond_31
    move v1, v2

    .line 300
    goto :goto_1c
.end method

.method private clamp(III)I
    .registers 5
    .parameter "n"
    .parameter "my"
    .parameter "child"

    .prologue
    .line 1840
    if-ge p2, p3, :cond_4

    if-gez p1, :cond_6

    .line 1856
    :cond_4
    const/4 p1, 0x0

    .line 1866
    .end local p1
    :cond_5
    :goto_5
    return p1

    .line 1858
    .restart local p1
    :cond_6
    add-int v0, p2, p1

    if-le v0, p3, :cond_5

    .line 1864
    sub-int p1, p3, p2

    goto :goto_5
.end method

.method private computeScrollDeltaToGetChildRectOnScreenHorizontal(Landroid/graphics/Rect;)I
    .registers 12
    .parameter "rect"

    .prologue
    const/4 v7, 0x0

    .line 1592
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_9

    move v5, v7

    .line 1646
    :cond_8
    :goto_8
    return v5

    .line 1594
    :cond_9
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getWidth()I

    move-result v6

    .line 1595
    .local v6, width:I
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getScrollX()I

    move-result v3

    .line 1596
    .local v3, screenLeft:I
    add-int v4, v3, v6

    .line 1598
    .local v4, screenRight:I
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHorizontalFadingEdgeLength()I

    move-result v1

    .line 1601
    .local v1, fadingEdge:I
    iget v8, p1, Landroid/graphics/Rect;->left:I

    if-lez v8, :cond_1c

    .line 1602
    add-int/2addr v3, v1

    .line 1606
    :cond_1c
    iget v8, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v7}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    if-ge v8, v9, :cond_29

    .line 1607
    sub-int/2addr v4, v1

    .line 1610
    :cond_29
    const/4 v5, 0x0

    .line 1612
    .local v5, scrollXDelta:I
    iget v8, p1, Landroid/graphics/Rect;->right:I

    if-le v8, v4, :cond_50

    iget v8, p1, Landroid/graphics/Rect;->left:I

    if-le v8, v3, :cond_50

    .line 1617
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-le v8, v6, :cond_4b

    .line 1619
    iget v8, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v3

    add-int/2addr v5, v8

    .line 1626
    :goto_3c
    invoke-virtual {p0, v7}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v2

    .line 1627
    .local v2, right:I
    sub-int v0, v2, v4

    .line 1628
    .local v0, distanceToRight:I
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1630
    goto :goto_8

    .line 1622
    .end local v0           #distanceToRight:I
    .end local v2           #right:I
    :cond_4b
    iget v8, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v4

    add-int/2addr v5, v8

    goto :goto_3c

    .line 1630
    :cond_50
    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-ge v7, v3, :cond_8

    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-ge v7, v4, :cond_8

    .line 1635
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v6, :cond_6d

    .line 1637
    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int v7, v4, v7

    sub-int/2addr v5, v7

    .line 1644
    :goto_63
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getScrollX()I

    move-result v7

    neg-int v7, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_8

    .line 1640
    :cond_6d
    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int v7, v3, v7

    sub-int/2addr v5, v7

    goto :goto_63
.end method

.method private computeScrollDeltaToGetChildRectOnScreenVertical(Landroid/graphics/Rect;)I
    .registers 12
    .parameter "rect"

    .prologue
    const/4 v7, 0x0

    .line 1534
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_9

    move v6, v7

    .line 1588
    :cond_8
    :goto_8
    return v6

    .line 1536
    :cond_9
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHeight()I

    move-result v3

    .line 1537
    .local v3, height:I
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getScrollY()I

    move-result v5

    .line 1538
    .local v5, screenTop:I
    add-int v4, v5, v3

    .line 1540
    .local v4, screenBottom:I
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 1543
    .local v2, fadingEdge:I
    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-lez v8, :cond_1c

    .line 1544
    add-int/2addr v5, v2

    .line 1548
    :cond_1c
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v7}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_29

    .line 1549
    sub-int/2addr v4, v2

    .line 1552
    :cond_29
    const/4 v6, 0x0

    .line 1554
    .local v6, scrollYDelta:I
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    if-le v8, v4, :cond_50

    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-le v8, v5, :cond_50

    .line 1559
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v8, v3, :cond_4b

    .line 1561
    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v5

    add-int/2addr v6, v8

    .line 1568
    :goto_3c
    invoke-virtual {p0, v7}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1569
    .local v0, bottom:I
    sub-int v1, v0, v4

    .line 1570
    .local v1, distanceToBottom:I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1572
    goto :goto_8

    .line 1564
    .end local v0           #bottom:I
    .end local v1           #distanceToBottom:I
    :cond_4b
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    add-int/2addr v6, v8

    goto :goto_3c

    .line 1572
    :cond_50
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v5, :cond_8

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_8

    .line 1577
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_6d

    .line 1579
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    sub-int/2addr v6, v7

    .line 1586
    :goto_63
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_8

    .line 1582
    :cond_6d
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    sub-int/2addr v6, v7

    goto :goto_63
.end method

.method private doScrollY(I)V
    .registers 4
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 1247
    if-eqz p1, :cond_e

    .line 1248
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_13

    .line 1249
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v0, :cond_f

    .line 1250
    invoke-virtual {p0, v1, p1}, Lcom/android/browser/view/ScrollerView;->smoothScrollBy(II)V

    .line 1262
    :cond_e
    :goto_e
    return-void

    .line 1252
    :cond_f
    invoke-virtual {p0, p1, v1}, Lcom/android/browser/view/ScrollerView;->smoothScrollBy(II)V

    goto :goto_e

    .line 1255
    :cond_13
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v0, :cond_1b

    .line 1256
    invoke-virtual {p0, v1, p1}, Lcom/android/browser/view/ScrollerView;->scrollBy(II)V

    goto :goto_e

    .line 1258
    :cond_1b
    invoke-virtual {p0, p1, v1}, Lcom/android/browser/view/ScrollerView;->scrollBy(II)V

    goto :goto_e
.end method

.method private endDrag()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1811
    iput-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mIsBeingDragged:Z

    .line 1812
    iput-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mIsOrthoDragged:Z

    .line 1813
    iput-object v1, p0, Lcom/android/browser/view/ScrollerView;->mDownView:Landroid/view/View;

    .line 1814
    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->recycleVelocityTracker()V

    .line 1815
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_16

    .line 1816
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1817
    iput-object v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1819
    :cond_16
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .registers 18
    .parameter "topFocus"
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 977
    const/4 v13, 0x2

    invoke-virtual {p0, v13}, Lcom/android/browser/view/ScrollerView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 978
    .local v5, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v4, 0x0

    .line 987
    .local v4, focusCandidate:Landroid/view/View;
    const/4 v6, 0x0

    .line 989
    .local v6, foundFullyContainedFocusable:Z
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 990
    .local v2, count:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_c
    if-ge v7, v2, :cond_7e

    .line 991
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 992
    .local v8, view:Landroid/view/View;
    iget-boolean v13, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v13, :cond_3c

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 993
    .local v12, viewTop:I
    :goto_1c
    iget-boolean v13, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v13, :cond_41

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v9

    .line 995
    .local v9, viewBottom:I
    :goto_24
    move/from16 v0, p2

    if-ge v0, v9, :cond_39

    move/from16 v0, p3

    if-ge v12, v0, :cond_39

    .line 1001
    move/from16 v0, p2

    if-ge v0, v12, :cond_46

    move/from16 v0, p3

    if-ge v9, v0, :cond_46

    const/4 v11, 0x1

    .line 1004
    .local v11, viewIsFullyContained:Z
    :goto_35
    if-nez v4, :cond_48

    .line 1006
    move-object v4, v8

    .line 1007
    move v6, v11

    .line 990
    .end local v11           #viewIsFullyContained:Z
    :cond_39
    :goto_39
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 992
    .end local v9           #viewBottom:I
    .end local v12           #viewTop:I
    :cond_3c
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v12

    goto :goto_1c

    .line 993
    .restart local v12       #viewTop:I
    :cond_41
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v9

    goto :goto_24

    .line 1001
    .restart local v9       #viewBottom:I
    :cond_46
    const/4 v11, 0x0

    goto :goto_35

    .line 1009
    .restart local v11       #viewIsFullyContained:Z
    :cond_48
    iget-boolean v13, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v13, :cond_69

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1010
    .local v3, ctop:I
    :goto_50
    iget-boolean v13, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v13, :cond_6e

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1011
    .local v1, cbot:I
    :goto_58
    if-eqz p1, :cond_5c

    if-lt v12, v3, :cond_60

    :cond_5c
    if-nez p1, :cond_73

    if-le v9, v1, :cond_73

    :cond_60
    const/4 v10, 0x1

    .line 1015
    .local v10, viewIsCloserToBoundary:Z
    :goto_61
    if-eqz v6, :cond_75

    .line 1016
    if-eqz v11, :cond_39

    if-eqz v10, :cond_39

    .line 1022
    move-object v4, v8

    goto :goto_39

    .line 1009
    .end local v1           #cbot:I
    .end local v3           #ctop:I
    .end local v10           #viewIsCloserToBoundary:Z
    :cond_69
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    goto :goto_50

    .line 1010
    .restart local v3       #ctop:I
    :cond_6e
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_58

    .line 1011
    .restart local v1       #cbot:I
    :cond_73
    const/4 v10, 0x0

    goto :goto_61

    .line 1025
    .restart local v10       #viewIsCloserToBoundary:Z
    :cond_75
    if-eqz v11, :cond_7a

    .line 1027
    move-object v4, v8

    .line 1028
    const/4 v6, 0x1

    goto :goto_39

    .line 1029
    :cond_7a
    if-eqz v10, :cond_39

    .line 1034
    move-object v4, v8

    goto :goto_39

    .line 1041
    .end local v1           #cbot:I
    .end local v3           #ctop:I
    .end local v8           #view:Landroid/view/View;
    .end local v9           #viewBottom:I
    .end local v10           #viewIsCloserToBoundary:Z
    .end local v11           #viewIsFullyContained:Z
    .end local v12           #viewTop:I
    :cond_7e
    return-object v4
.end method

.method private findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;
    .registers 8
    .parameter "topFocus"
    .parameter "top"
    .parameter "preferredFocusable"

    .prologue
    .line 943
    iget-boolean v3, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_2e

    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHorizontalFadingEdgeLength()I

    move-result v3

    :goto_8
    div-int/lit8 v1, v3, 0x2

    .line 946
    .local v1, fadingEdgeLength:I
    add-int v2, p2, v1

    .line 947
    .local v2, topWithoutFadingEdge:I
    iget-boolean v3, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_33

    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getWidth()I

    move-result v3

    :goto_14
    add-int/2addr v3, p2

    sub-int v0, v3, v1

    .line 949
    .local v0, bottomWithoutFadingEdge:I
    if-eqz p3, :cond_42

    iget-boolean v3, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_38

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    :goto_21
    if-ge v3, v0, :cond_42

    iget-boolean v3, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_3d

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v3

    :goto_2b
    if-le v3, v2, :cond_42

    .line 956
    .end local p3
    :goto_2d
    return-object p3

    .line 943
    .end local v0           #bottomWithoutFadingEdge:I
    .end local v1           #fadingEdgeLength:I
    .end local v2           #topWithoutFadingEdge:I
    .restart local p3
    :cond_2e
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getVerticalFadingEdgeLength()I

    move-result v3

    goto :goto_8

    .line 947
    .restart local v1       #fadingEdgeLength:I
    .restart local v2       #topWithoutFadingEdge:I
    :cond_33
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHeight()I

    move-result v3

    goto :goto_14

    .line 949
    .restart local v0       #bottomWithoutFadingEdge:I
    :cond_38
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    goto :goto_21

    :cond_3d
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v3

    goto :goto_2b

    .line 956
    :cond_42
    invoke-direct {p0, p1, v2, v0}, Lcom/android/browser/view/ScrollerView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_2d
.end method

.method private getScrollRange()I
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 907
    const/4 v1, 0x0

    .line 908
    .local v1, scrollRange:I
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_23

    .line 909
    invoke-virtual {p0, v5}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 910
    .local v0, child:Landroid/view/View;
    iget-boolean v2, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v2, :cond_24

    .line 911
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/browser/view/ScrollerView;->mPaddingRight:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/browser/view/ScrollerView;->mPaddingLeft:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 918
    .end local v0           #child:Landroid/view/View;
    :cond_23
    :goto_23
    return v1

    .line 914
    .restart local v0       #child:Landroid/view/View;
    :cond_24
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/browser/view/ScrollerView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/browser/view/ScrollerView;->mPaddingTop:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_23
.end method

.method private inChild(II)Z
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 453
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_28

    .line 454
    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    .line 455
    .local v1, scrollY:I
    invoke-virtual {p0, v2}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 456
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
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 466
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 470
    :goto_a
    return-void

    .line 468
    :cond_b
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_a
.end method

.method private initScrollView()V
    .registers 4

    .prologue
    .line 177
    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    .line 178
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/browser/view/ScrollerView;->setFocusable(Z)V

    .line 179
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/browser/view/ScrollerView;->setDescendantFocusability(I)V

    .line 180
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/browser/view/ScrollerView;->setWillNotDraw(Z)V

    .line 181
    iget-object v1, p0, Lcom/android/browser/view/ScrollerView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 182
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/browser/view/ScrollerView;->mTouchSlop:I

    .line 183
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/browser/view/ScrollerView;->mMinimumVelocity:I

    .line 184
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/browser/view/ScrollerView;->mMaximumVelocity:I

    .line 185
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Lcom/android/browser/view/ScrollerView;->mOverscrollDistance:I

    .line 186
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/android/browser/view/ScrollerView;->mOverflingDistance:I

    .line 187
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/browser/view/ScrollerView;->mDownCoords:Landroid/graphics/PointF;

    .line 188
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .registers 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 474
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 476
    :cond_a
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .registers 5
    .parameter "descendant"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1218
    iget-boolean v2, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v2, :cond_13

    .line 1219
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v2, v1}, Lcom/android/browser/view/ScrollerView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1221
    :cond_10
    :goto_10
    return v0

    :cond_11
    move v0, v1

    .line 1219
    goto :goto_10

    .line 1221
    :cond_13
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHeight()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/browser/view/ScrollerView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_10

    move v0, v1

    goto :goto_10
.end method

.method private isOrthoMove(FF)Z
    .registers 5
    .parameter "moveX"
    .parameter "moveY"

    .prologue
    .line 1209
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v0, :cond_10

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_20

    :cond_10
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-nez v0, :cond_22

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 6
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 1772
    if-ne p1, p2, :cond_4

    .line 1777
    :cond_3
    :goto_3
    return v1

    .line 1776
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1777
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_14

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/android/browser/view/ScrollerView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_14
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .registers 8
    .parameter "descendant"
    .parameter "delta"
    .parameter "height"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1230
    iget-object v2, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1231
    iget-object v2, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Lcom/android/browser/view/ScrollerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1232
    iget-boolean v2, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v2, :cond_2a

    .line 1233
    iget-object v2, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getScrollX()I

    move-result v3

    if-lt v2, v3, :cond_28

    iget-object v2, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, p2

    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getScrollX()I

    move-result v3

    add-int/2addr v3, p3

    if-gt v2, v3, :cond_28

    .line 1236
    :cond_27
    :goto_27
    return v0

    :cond_28
    move v0, v1

    .line 1233
    goto :goto_27

    .line 1236
    :cond_2a
    iget-object v2, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getScrollY()I

    move-result v3

    if-lt v2, v3, :cond_41

    iget-object v2, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p2

    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getScrollY()I

    move-result v3

    add-int/2addr v3, p3

    if-le v2, v3, :cond_27

    :cond_41
    move v0, v1

    goto :goto_27
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 7
    .parameter "ev"

    .prologue
    .line 788
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 790
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 791
    .local v1, pointerId:I
    iget v3, p0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    if-ne v1, v3, :cond_38

    .line 795
    if-nez v2, :cond_39

    const/4 v0, 0x1

    .line 796
    .local v0, newPointerIndex:I
    :goto_15
    iget-boolean v3, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_3b

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    :goto_1d
    iput v3, p0, Lcom/android/browser/view/ScrollerView;->mLastMotionY:F

    .line 797
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    .line 798
    iget-object v3, p0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_2e

    .line 799
    iget-object v3, p0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 801
    :cond_2e
    iget-boolean v3, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_40

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    :goto_36
    iput v3, p0, Lcom/android/browser/view/ScrollerView;->mLastOrthoCoord:F

    .line 804
    .end local v0           #newPointerIndex:I
    :cond_38
    return-void

    .line 795
    :cond_39
    const/4 v0, 0x0

    goto :goto_15

    .line 796
    .restart local v0       #newPointerIndex:I
    :cond_3b
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    goto :goto_1d

    .line 801
    :cond_40
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    goto :goto_36
.end method

.method private recycleVelocityTracker()V
    .registers 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 480
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 481
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

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
    .line 1126
    const/4 v3, 0x1

    .line 1128
    .local v3, handled:Z
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHeight()I

    move-result v4

    .line 1129
    .local v4, height:I
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getScrollY()I

    move-result v1

    .line 1130
    .local v1, containerTop:I
    add-int v0, v1, v4

    .line 1131
    .local v0, containerBottom:I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_26

    const/4 v6, 0x1

    .line 1133
    .local v6, up:Z
    :goto_10
    invoke-direct {p0, v6, p2, p3}, Lcom/android/browser/view/ScrollerView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1134
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_17

    .line 1135
    move-object v5, p0

    .line 1138
    :cond_17
    if-lt p2, v1, :cond_28

    if-gt p3, v0, :cond_28

    .line 1139
    const/4 v3, 0x0

    .line 1145
    :goto_1c
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_25

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1147
    :cond_25
    return v3

    .line 1131
    .end local v5           #newFocused:Landroid/view/View;
    .end local v6           #up:Z
    :cond_26
    const/4 v6, 0x0

    goto :goto_10

    .line 1141
    .restart local v5       #newFocused:Landroid/view/View;
    .restart local v6       #up:Z
    :cond_28
    if-eqz v6, :cond_30

    sub-int v2, p2, v1

    .line 1142
    .local v2, delta:I
    :goto_2c
    invoke-direct {p0, v2}, Lcom/android/browser/view/ScrollerView;->doScrollY(I)V

    goto :goto_1c

    .line 1141
    .end local v2           #delta:I
    :cond_30
    sub-int v2, p3, v0

    goto :goto_2c
.end method

.method private scrollToChild(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1484
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/view/ScrollerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1485
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/browser/view/ScrollerView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    .line 1486
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .registers 7
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v2, 0x0

    .line 1497
    invoke-virtual {p0, p1}, Lcom/android/browser/view/ScrollerView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1498
    .local v0, delta:I
    if-eqz v0, :cond_14

    const/4 v1, 0x1

    .line 1499
    .local v1, scroll:Z
    :goto_8
    if-eqz v1, :cond_13

    .line 1500
    if-eqz p2, :cond_1a

    .line 1501
    iget-boolean v3, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_16

    .line 1502
    invoke-virtual {p0, v0, v2}, Lcom/android/browser/view/ScrollerView;->scrollBy(II)V

    .line 1514
    :cond_13
    :goto_13
    return v1

    .end local v1           #scroll:Z
    :cond_14
    move v1, v2

    .line 1498
    goto :goto_8

    .line 1504
    .restart local v1       #scroll:Z
    :cond_16
    invoke-virtual {p0, v2, v0}, Lcom/android/browser/view/ScrollerView;->scrollBy(II)V

    goto :goto_13

    .line 1507
    :cond_1a
    iget-boolean v3, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_22

    .line 1508
    invoke-virtual {p0, v0, v2}, Lcom/android/browser/view/ScrollerView;->smoothScrollBy(II)V

    goto :goto_13

    .line 1510
    :cond_22
    invoke-virtual {p0, v2, v0}, Lcom/android/browser/view/ScrollerView;->smoothScrollBy(II)V

    goto :goto_13
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 255
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 259
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 5
    .parameter "child"
    .parameter "index"

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 264
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 268
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 282
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 286
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .parameter "child"
    .parameter "params"

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 273
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    return-void
.end method

.method public arrowScroll(I)Z
    .registers 13
    .parameter "direction"

    .prologue
    const/16 v10, 0x82

    const/4 v7, 0x0

    .line 1159
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1160
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_a

    const/4 v0, 0x0

    .line 1162
    :cond_a
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1164
    .local v4, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getMaxScrollAmount()I

    move-result v3

    .line 1166
    .local v3, maxJump:I
    if-eqz v4, :cond_57

    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHeight()I

    move-result v8

    invoke-direct {p0, v4, v3, v8}, Lcom/android/browser/view/ScrollerView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_57

    .line 1167
    iget-object v7, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1168
    iget-object v7, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Lcom/android/browser/view/ScrollerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1169
    iget-object v7, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/android/browser/view/ScrollerView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1170
    .local v6, scrollDelta:I
    invoke-direct {p0, v6}, Lcom/android/browser/view/ScrollerView;->doScrollY(I)V

    .line 1171
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1193
    :goto_38
    if-eqz v0, :cond_55

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_55

    invoke-direct {p0, v0}, Lcom/android/browser/view/ScrollerView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 1200
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getDescendantFocusability()I

    move-result v2

    .line 1201
    .local v2, descendantFocusability:I
    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/android/browser/view/ScrollerView;->setDescendantFocusability(I)V

    .line 1202
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->requestFocus()Z

    .line 1203
    invoke-virtual {p0, v2}, Lcom/android/browser/view/ScrollerView;->setDescendantFocusability(I)V

    .line 1205
    .end local v2           #descendantFocusability:I
    :cond_55
    const/4 v7, 0x1

    :cond_56
    return v7

    .line 1174
    .end local v6           #scrollDelta:I
    :cond_57
    move v6, v3

    .line 1176
    .restart local v6       #scrollDelta:I
    const/16 v8, 0x21

    if-ne p1, v8, :cond_6f

    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getScrollY()I

    move-result v8

    if-ge v8, v6, :cond_6f

    .line 1177
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getScrollY()I

    move-result v6

    .line 1187
    :cond_66
    :goto_66
    if-eqz v6, :cond_56

    .line 1190
    if-ne p1, v10, :cond_93

    move v7, v6

    :goto_6b
    invoke-direct {p0, v7}, Lcom/android/browser/view/ScrollerView;->doScrollY(I)V

    goto :goto_38

    .line 1178
    :cond_6f
    if-ne p1, v10, :cond_66

    .line 1179
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_66

    .line 1180
    invoke-virtual {p0, v7}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1181
    .local v1, daBottom:I
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/browser/view/ScrollerView;->mPaddingBottom:I

    sub-int v5, v8, v9

    .line 1182
    .local v5, screenBottom:I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_66

    .line 1183
    sub-int v6, v1, v5

    goto :goto_66

    .line 1190
    .end local v1           #daBottom:I
    .end local v5           #screenBottom:I
    :cond_93
    neg-int v7, v6

    goto :goto_6b
.end method

.method protected computeHorizontalScrollOffset()I
    .registers 3

    .prologue
    .line 1381
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1353
    iget-boolean v5, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-nez v5, :cond_a

    .line 1354
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollRange()I

    move-result v0

    .line 1371
    :cond_9
    :goto_9
    return v0

    .line 1356
    :cond_a
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v1

    .line 1357
    .local v1, count:I
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/browser/view/ScrollerView;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/browser/view/ScrollerView;->mPaddingLeft:I

    sub-int v0, v5, v6

    .line 1358
    .local v0, contentWidth:I
    if-eqz v1, :cond_9

    .line 1362
    invoke-virtual {p0, v7}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1363
    .local v3, scrollRange:I
    iget v4, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    .line 1364
    .local v4, scrollX:I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1365
    .local v2, overscrollBottom:I
    if-gez v4, :cond_30

    .line 1366
    sub-int/2addr v3, v4

    :cond_2e
    :goto_2e
    move v0, v3

    .line 1371
    goto :goto_9

    .line 1367
    :cond_30
    if-le v4, v2, :cond_2e

    .line 1368
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_2e
.end method

.method public computeScroll()V
    .registers 13

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1448
    iget v3, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    .line 1449
    .local v3, oldX:I
    iget v4, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    .line 1450
    .local v4, oldY:I
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v10

    .line 1451
    .local v10, x:I
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v11

    .line 1453
    .local v11, y:I
    if-ne v3, v10, :cond_1c

    if-eq v4, v11, :cond_38

    .line 1454
    :cond_1c
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v0, :cond_3f

    .line 1455
    sub-int v1, v10, v3

    sub-int v2, v11, v4

    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->getScrollRange()I

    move-result v5

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/browser/view/ScrollerView;->mOverflingDistance:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/browser/view/ScrollerView;->overScrollBy(IIIIIIIIZ)Z

    .line 1461
    :goto_31
    iget v0, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/android/browser/view/ScrollerView;->onScrollChanged(IIII)V

    .line 1463
    :cond_38
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->awakenScrollBars()Z

    .line 1466
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->postInvalidate()V

    .line 1473
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_3e
    :goto_3e
    return-void

    .line 1458
    .restart local v3       #oldX:I
    .restart local v4       #oldY:I
    .restart local v10       #x:I
    .restart local v11       #y:I
    :cond_3f
    sub-int v1, v10, v3

    sub-int v2, v11, v4

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->getScrollRange()I

    move-result v6

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/browser/view/ScrollerView;->mOverflingDistance:I

    const/4 v9, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/browser/view/ScrollerView;->overScrollBy(IIIIIIIIZ)Z

    goto :goto_31

    .line 1468
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_51
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_3e

    .line 1469
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/view/ScrollerView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    goto :goto_3e
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .registers 3
    .parameter "rect"

    .prologue
    .line 1526
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v0, :cond_9

    .line 1527
    invoke-direct {p0, p1}, Lcom/android/browser/view/ScrollerView;->computeScrollDeltaToGetChildRectOnScreenHorizontal(Landroid/graphics/Rect;)I

    move-result v0

    .line 1529
    :goto_8
    return v0

    :cond_9
    invoke-direct {p0, p1}, Lcom/android/browser/view/ScrollerView;->computeScrollDeltaToGetChildRectOnScreenVertical(Landroid/graphics/Rect;)I

    move-result v0

    goto :goto_8
.end method

.method protected computeVerticalScrollOffset()I
    .registers 3

    .prologue
    .line 1376
    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1324
    iget-boolean v5, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v5, :cond_a

    .line 1325
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollRange()I

    move-result v0

    .line 1342
    :cond_9
    :goto_9
    return v0

    .line 1327
    :cond_a
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v1

    .line 1328
    .local v1, count:I
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/browser/view/ScrollerView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/browser/view/ScrollerView;->mPaddingTop:I

    sub-int v0, v5, v6

    .line 1329
    .local v0, contentHeight:I
    if-eqz v1, :cond_9

    .line 1333
    invoke-virtual {p0, v7}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1334
    .local v3, scrollRange:I
    iget v4, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    .line 1335
    .local v4, scrollY:I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1336
    .local v2, overscrollBottom:I
    if-gez v4, :cond_30

    .line 1337
    sub-int/2addr v3, v4

    :cond_2e
    :goto_2e
    move v0, v3

    .line 1342
    goto :goto_9

    .line 1338
    :cond_30
    if-le v4, v2, :cond_2e

    .line 1339
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_2e
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 399
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/android/browser/view/ScrollerView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 900
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_b

    .line 901
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 903
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 9
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x21

    const/16 v5, 0x82

    .line 411
    iget-object v6, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 413
    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_38

    .line 414
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_37

    .line 415
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 416
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_24

    const/4 v0, 0x0

    .line 417
    :cond_24
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 419
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_37

    if-eq v2, p0, :cond_37

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_37

    const/4 v3, 0x1

    .line 449
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_37
    :goto_37
    return v3

    .line 426
    :cond_38
    const/4 v1, 0x0

    .line 427
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_46

    .line 428
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_76

    :cond_46
    :goto_46
    move v3, v1

    .line 449
    goto :goto_37

    .line 430
    :sswitch_48
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_53

    .line 431
    invoke-virtual {p0, v4}, Lcom/android/browser/view/ScrollerView;->arrowScroll(I)Z

    move-result v1

    goto :goto_46

    .line 433
    :cond_53
    invoke-virtual {p0, v4}, Lcom/android/browser/view/ScrollerView;->fullScroll(I)Z

    move-result v1

    .line 435
    goto :goto_46

    .line 437
    :sswitch_58
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_63

    .line 438
    invoke-virtual {p0, v5}, Lcom/android/browser/view/ScrollerView;->arrowScroll(I)Z

    move-result v1

    goto :goto_46

    .line 440
    :cond_63
    invoke-virtual {p0, v5}, Lcom/android/browser/view/ScrollerView;->fullScroll(I)Z

    move-result v1

    .line 442
    goto :goto_46

    .line 444
    :sswitch_68
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_73

    move v3, v4

    :goto_6f
    invoke-virtual {p0, v3}, Lcom/android/browser/view/ScrollerView;->pageScroll(I)Z

    goto :goto_46

    :cond_73
    move v3, v5

    goto :goto_6f

    .line 428
    nop

    :sswitch_data_76
    .sparse-switch
        0x13 -> :sswitch_48
        0x14 -> :sswitch_58
        0x3e -> :sswitch_68
    .end sparse-switch
.end method

.method protected findViewAt(II)Landroid/view/View;
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 781
    const/4 v0, 0x0

    return-object v0
.end method

.method public fling(I)V
    .registers 17
    .parameter "velocityY"

    .prologue
    .line 1788
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_46

    .line 1789
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v0, :cond_47

    .line 1790
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mPaddingRight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mPaddingLeft:I

    sub-int v14, v0, v1

    .line 1791
    .local v14, width:I
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v13

    .line 1793
    .local v13, right:I
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    iget v2, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    sub-int v6, v13, v14

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    div-int/lit8 v9, v14, 0x2

    const/4 v10, 0x0

    move/from16 v3, p1

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1802
    .end local v13           #right:I
    .end local v14           #width:I
    :goto_37
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_43

    .line 1803
    const-string v0, "ScrollView-fling"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/view/ScrollerView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1806
    :cond_43
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->invalidate()V

    .line 1808
    :cond_46
    return-void

    .line 1796
    :cond_47
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mPaddingTop:I

    sub-int v12, v0, v1

    .line 1797
    .local v12, height:I
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 1799
    .local v11, bottom:I
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    iget v2, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    sub-int v8, v11, v12

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/4 v9, 0x0

    div-int/lit8 v10, v12, 0x2

    move/from16 v4, p1

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    goto :goto_37
.end method

.method public fullScroll(I)Z
    .registers 9
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 1095
    const/16 v5, 0x82

    if-ne p1, v5, :cond_41

    const/4 v1, 0x1

    .line 1096
    .local v1, down:Z
    :goto_6
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHeight()I

    move-result v2

    .line 1098
    .local v2, height:I
    iget-object v5, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    .line 1099
    iget-object v4, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1101
    if-eqz v1, :cond_34

    .line 1102
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v0

    .line 1103
    .local v0, count:I
    if-lez v0, :cond_34

    .line 1104
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1105
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Lcom/android/browser/view/ScrollerView;->mPaddingBottom:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1106
    iget-object v4, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1110
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_34
    iget-object v4, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/android/browser/view/ScrollerView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_41
    move v1, v4

    .line 1095
    goto :goto_6
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 221
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_9

    .line 222
    const/4 v3, 0x0

    .line 239
    :goto_8
    return v3

    .line 224
    :cond_9
    iget-boolean v3, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_2c

    .line 225
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHorizontalFadingEdgeLength()I

    move-result v1

    .line 226
    .local v1, length:I
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/browser/view/ScrollerView;->mPaddingRight:I

    sub-int v0, v3, v4

    .line 227
    .local v0, bottomEdge:I
    invoke-virtual {p0, v5}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    .line 228
    .local v2, span:I
    if-ge v2, v1, :cond_4b

    .line 229
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_8

    .line 232
    .end local v0           #bottomEdge:I
    .end local v1           #length:I
    .end local v2           #span:I
    :cond_2c
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 233
    .restart local v1       #length:I
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/browser/view/ScrollerView;->mPaddingBottom:I

    sub-int v0, v3, v4

    .line 234
    .restart local v0       #bottomEdge:I
    invoke-virtual {p0, v5}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    .line 235
    .restart local v2       #span:I
    if-ge v2, v1, :cond_4b

    .line 236
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_8

    .line 239
    :cond_4b
    const/high16 v3, 0x3f80

    goto :goto_8
.end method

.method public getMaxScrollAmount()I
    .registers 4

    .prologue
    .line 247
    const/high16 v1, 0x3f00

    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/browser/view/ScrollerView;->mRight:I

    iget v2, p0, Lcom/android/browser/view/ScrollerView;->mLeft:I

    sub-int/2addr v0, v2

    :goto_b
    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_f
    iget v0, p0, Lcom/android/browser/view/ScrollerView;->mBottom:I

    iget v2, p0, Lcom/android/browser/view/ScrollerView;->mTop:I

    sub-int/2addr v0, v2

    goto :goto_b
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 4

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_8

    .line 203
    const/4 v1, 0x0

    .line 216
    :goto_7
    return v1

    .line 205
    :cond_8
    iget-boolean v1, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v1, :cond_1a

    .line 206
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 207
    .local v0, length:I
    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    if-ge v1, v0, :cond_28

    .line 208
    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_7

    .line 211
    .end local v0           #length:I
    :cond_1a
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 212
    .restart local v0       #length:I
    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    if-ge v1, v0, :cond_28

    .line 213
    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_7

    .line 216
    :cond_28
    const/high16 v1, 0x3f80

    goto :goto_7
.end method

.method public isFillViewport()Z
    .registers 2

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .registers 2

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .registers 10
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 1386
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1391
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v3, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_1c

    .line 1392
    iget v3, p0, Lcom/android/browser/view/ScrollerView;->mPaddingTop:I

    iget v4, p0, Lcom/android/browser/view/ScrollerView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Lcom/android/browser/view/ScrollerView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1395
    .local v0, childHeightMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1403
    .local v1, childWidthMeasureSpec:I
    :goto_18
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1404
    return-void

    .line 1397
    .end local v0           #childHeightMeasureSpec:I
    .end local v1           #childWidthMeasureSpec:I
    :cond_1c
    iget v3, p0, Lcom/android/browser/view/ScrollerView;->mPaddingLeft:I

    iget v4, p0, Lcom/android/browser/view/ScrollerView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/android/browser/view/ScrollerView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1400
    .restart local v1       #childWidthMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightMeasureSpec:I
    goto :goto_18
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 12
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    const/4 v5, 0x0

    .line 1409
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1413
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget-boolean v3, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_2a

    .line 1414
    iget v3, p0, Lcom/android/browser/view/ScrollerView;->mPaddingTop:I

    iget v4, p0, Lcom/android/browser/view/ScrollerView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v3, v4}, Lcom/android/browser/view/ScrollerView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1417
    .local v0, childHeightMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1426
    .local v1, childWidthMeasureSpec:I
    :goto_26
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1427
    return-void

    .line 1420
    .end local v0           #childHeightMeasureSpec:I
    .end local v1           #childWidthMeasureSpec:I
    :cond_2a
    iget v3, p0, Lcom/android/browser/view/ScrollerView;->mPaddingLeft:I

    iget v4, p0, Lcom/android/browser/view/ScrollerView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/android/browser/view/ScrollerView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1423
    .restart local v1       #childWidthMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightMeasureSpec:I
    goto :goto_26
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1723
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1725
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_f

    .line 1726
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1727
    iput-object v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 1729
    :cond_f
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1a

    .line 1730
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 1731
    iput-object v1, p0, Lcom/android/browser/view/ScrollerView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1733
    :cond_1a
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 808
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v9

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_11

    .line 809
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_6c

    .line 853
    :cond_11
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    :goto_15
    return v8

    .line 811
    :pswitch_16
    iget-boolean v9, p0, Lcom/android/browser/view/ScrollerView;->mIsBeingDragged:Z

    if-nez v9, :cond_11

    .line 812
    iget-boolean v9, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v9, :cond_45

    .line 813
    const/16 v9, 0xa

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 815
    .local v1, hscroll:F
    cmpl-float v9, v1, v10

    if-eqz v9, :cond_11

    .line 816
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHorizontalScrollFactor()F

    move-result v9

    mul-float/2addr v9, v1

    float-to-int v0, v9

    .line 817
    .local v0, delta:I
    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->getScrollRange()I

    move-result v6

    .line 818
    .local v6, range:I
    iget v4, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    .line 819
    .local v4, oldScrollX:I
    sub-int v2, v4, v0

    .line 820
    .local v2, newScrollX:I
    if-gez v2, :cond_41

    .line 821
    const/4 v2, 0x0

    .line 825
    :cond_39
    :goto_39
    if-eq v2, v4, :cond_11

    .line 826
    iget v9, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    invoke-super {p0, v2, v9}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_15

    .line 822
    :cond_41
    if-le v2, v6, :cond_39

    .line 823
    move v2, v6

    goto :goto_39

    .line 831
    .end local v0           #delta:I
    .end local v1           #hscroll:F
    .end local v2           #newScrollX:I
    .end local v4           #oldScrollX:I
    .end local v6           #range:I
    :cond_45
    const/16 v9, 0x9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v7

    .line 833
    .local v7, vscroll:F
    cmpl-float v9, v7, v10

    if-eqz v9, :cond_11

    .line 834
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getVerticalScrollFactor()F

    move-result v9

    mul-float/2addr v9, v7

    float-to-int v0, v9

    .line 835
    .restart local v0       #delta:I
    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->getScrollRange()I

    move-result v6

    .line 836
    .restart local v6       #range:I
    iget v5, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    .line 837
    .local v5, oldScrollY:I
    sub-int v3, v5, v0

    .line 838
    .local v3, newScrollY:I
    if-gez v3, :cond_68

    .line 839
    const/4 v3, 0x0

    .line 843
    :cond_60
    :goto_60
    if-eq v3, v5, :cond_11

    .line 844
    iget v9, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    invoke-super {p0, v9, v3}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_15

    .line 840
    :cond_68
    if-le v3, v6, :cond_60

    .line 841
    move v3, v6

    goto :goto_60

    .line 809
    :pswitch_data_6c
    .packed-switch 0x8
        :pswitch_16
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 892
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 893
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 894
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 886
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 887
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 888
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .parameter "ev"

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x1

    const/4 v13, 0x1

    const/4 v3, 0x0

    .line 505
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 506
    .local v7, action:I
    if-ne v7, v2, :cond_f

    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mIsBeingDragged:Z

    if-eqz v0, :cond_f

    .line 614
    :cond_e
    :goto_e
    return v13

    .line 509
    :cond_f
    if-ne v7, v2, :cond_15

    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mIsOrthoDragged:Z

    if-nez v0, :cond_e

    .line 512
    :cond_15
    and-int/lit16 v0, v7, 0xff

    packed-switch v0, :pswitch_data_132

    .line 614
    :cond_1a
    :goto_1a
    :pswitch_1a
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mIsBeingDragged:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mIsOrthoDragged:Z

    if-eqz v0, :cond_23

    :cond_22
    move v3, v13

    :cond_23
    move v13, v3

    goto :goto_e

    .line 524
    :pswitch_25
    iget v8, p0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    .line 525
    .local v8, activePointerId:I
    if-eq v8, v1, :cond_1a

    .line 531
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 532
    .local v10, pointerIndex:I
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v0, :cond_5b

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    .line 534
    .local v11, y:F
    :goto_35
    iget v0, p0, Lcom/android/browser/view/ScrollerView;->mLastMotionY:F

    sub-float v0, v11, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v12, v0

    .line 535
    .local v12, yDiff:I
    iget v0, p0, Lcom/android/browser/view/ScrollerView;->mTouchSlop:I

    if-le v12, v0, :cond_60

    .line 536
    iput-boolean v13, p0, Lcom/android/browser/view/ScrollerView;->mIsBeingDragged:Z

    .line 537
    iput v11, p0, Lcom/android/browser/view/ScrollerView;->mLastMotionY:F

    .line 538
    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->initVelocityTrackerIfNotExists()V

    .line 539
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 540
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_1a

    .line 541
    const-string v0, "ScrollView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    goto :goto_1a

    .line 532
    .end local v11           #y:F
    .end local v12           #yDiff:I
    :cond_5b
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    goto :goto_35

    .line 545
    .restart local v11       #y:F
    .restart local v12       #yDiff:I
    :cond_60
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v0, :cond_84

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 547
    .local v9, ocoord:F
    :goto_68
    iget v0, p0, Lcom/android/browser/view/ScrollerView;->mLastOrthoCoord:F

    sub-float v0, v9, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1a

    .line 548
    iput-boolean v13, p0, Lcom/android/browser/view/ScrollerView;->mIsOrthoDragged:Z

    .line 549
    iput v9, p0, Lcom/android/browser/view/ScrollerView;->mLastOrthoCoord:F

    .line 550
    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->initVelocityTrackerIfNotExists()V

    .line 551
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_1a

    .line 545
    .end local v9           #ocoord:F
    :cond_84
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    goto :goto_68

    .line 558
    .end local v8           #activePointerId:I
    .end local v10           #pointerIndex:I
    .end local v11           #y:F
    .end local v12           #yDiff:I
    :pswitch_89
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v0, :cond_b8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    .line 559
    .restart local v11       #y:F
    :goto_91
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mDownCoords:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 560
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mDownCoords:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 561
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/browser/view/ScrollerView;->inChild(II)Z

    move-result v0

    if-nez v0, :cond_bd

    .line 562
    iput-boolean v3, p0, Lcom/android/browser/view/ScrollerView;->mIsBeingDragged:Z

    .line 563
    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->recycleVelocityTracker()V

    goto/16 :goto_1a

    .line 558
    .end local v11           #y:F
    :cond_b8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    goto :goto_91

    .line 571
    .restart local v11       #y:F
    :cond_bd
    iput v11, p0, Lcom/android/browser/view/ScrollerView;->mLastMotionY:F

    .line 572
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    .line 574
    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->initOrResetVelocityTracker()V

    .line 575
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 581
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_106

    move v0, v13

    :goto_d6
    iput-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mIsBeingDragged:Z

    .line 582
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mIsBeingDragged:Z

    if-eqz v0, :cond_e8

    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_e8

    .line 583
    const-string v0, "ScrollView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 586
    :cond_e8
    iput-boolean v3, p0, Lcom/android/browser/view/ScrollerView;->mIsOrthoDragged:Z

    .line 587
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v0, :cond_108

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 588
    .restart local v9       #ocoord:F
    :goto_f2
    iput v9, p0, Lcom/android/browser/view/ScrollerView;->mLastOrthoCoord:F

    .line 589
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/view/ScrollerView;->findViewAt(II)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/view/ScrollerView;->mDownView:Landroid/view/View;

    goto/16 :goto_1a

    .end local v9           #ocoord:F
    :cond_106
    move v0, v3

    .line 581
    goto :goto_d6

    .line 587
    :cond_108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    goto :goto_f2

    .line 596
    .end local v11           #y:F
    :pswitch_10d
    iput-boolean v3, p0, Lcom/android/browser/view/ScrollerView;->mIsBeingDragged:Z

    .line 597
    iput-boolean v3, p0, Lcom/android/browser/view/ScrollerView;->mIsOrthoDragged:Z

    .line 598
    iput v1, p0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    .line 599
    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->recycleVelocityTracker()V

    .line 600
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    iget v2, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 602
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->invalidate()V

    goto/16 :goto_1a

    .line 606
    :pswitch_12d
    invoke-direct {p0, p1}, Lcom/android/browser/view/ScrollerView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1a

    .line 512
    :pswitch_data_132
    .packed-switch 0x0
        :pswitch_89
        :pswitch_10d
        :pswitch_25
        :pswitch_10d
        :pswitch_1a
        :pswitch_1a
        :pswitch_12d
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
    .line 1737
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1738
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mIsLayoutDirty:Z

    .line 1740
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/android/browser/view/ScrollerView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1741
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/browser/view/ScrollerView;->scrollToChild(Landroid/view/View;)V

    .line 1743
    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/view/ScrollerView;->mChildToScrollTo:Landroid/view/View;

    .line 1746
    iget v0, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/view/ScrollerView;->scrollTo(II)V

    .line 1747
    return-void
.end method

.method protected onMeasure(II)V
    .registers 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, 0x4000

    .line 347
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 349
    iget-boolean v7, p0, Lcom/android/browser/view/ScrollerView;->mFillViewport:Z

    if-nez v7, :cond_a

    .line 394
    :cond_9
    :goto_9
    return-void

    .line 353
    :cond_a
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 354
    .local v4, heightMode:I
    if-eqz v4, :cond_9

    .line 358
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_9

    .line 359
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 360
    .local v0, child:Landroid/view/View;
    iget-boolean v7, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v7, :cond_48

    .line 361
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getMeasuredWidth()I

    move-result v6

    .line 362
    .local v6, width:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-ge v7, v6, :cond_9

    .line 363
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 366
    .local v5, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v7, p0, Lcom/android/browser/view/ScrollerView;->mPaddingTop:I

    iget v8, p0, Lcom/android/browser/view/ScrollerView;->mPaddingBottom:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p2, v7, v8}, Lcom/android/browser/view/ScrollerView;->getChildMeasureSpec(III)I

    move-result v1

    .line 369
    .local v1, childHeightMeasureSpec:I
    iget v7, p0, Lcom/android/browser/view/ScrollerView;->mPaddingLeft:I

    sub-int/2addr v6, v7

    .line 370
    iget v7, p0, Lcom/android/browser/view/ScrollerView;->mPaddingRight:I

    sub-int/2addr v6, v7

    .line 371
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 374
    .local v2, childWidthMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_9

    .line 377
    .end local v1           #childHeightMeasureSpec:I
    .end local v2           #childWidthMeasureSpec:I
    .end local v5           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v6           #width:I
    :cond_48
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getMeasuredHeight()I

    move-result v3

    .line 378
    .local v3, height:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    if-ge v7, v3, :cond_9

    .line 379
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 382
    .restart local v5       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v7, p0, Lcom/android/browser/view/ScrollerView;->mPaddingLeft:I

    iget v8, p0, Lcom/android/browser/view/ScrollerView;->mPaddingRight:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v7, v8}, Lcom/android/browser/view/ScrollerView;->getChildMeasureSpec(III)I

    move-result v2

    .line 385
    .restart local v2       #childWidthMeasureSpec:I
    iget v7, p0, Lcom/android/browser/view/ScrollerView;->mPaddingTop:I

    sub-int/2addr v3, v7

    .line 386
    iget v7, p0, Lcom/android/browser/view/ScrollerView;->mPaddingBottom:I

    sub-int/2addr v3, v7

    .line 387
    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 390
    .restart local v1       #childHeightMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_9
.end method

.method protected onOrthoDrag(Landroid/view/View;F)V
    .registers 3
    .parameter "draggedView"
    .parameter "distance"

    .prologue
    .line 857
    return-void
.end method

.method protected onOrthoDragFinished(Landroid/view/View;)V
    .registers 2
    .parameter "draggedView"

    .prologue
    .line 860
    return-void
.end method

.method protected onOrthoFling(Landroid/view/View;F)V
    .registers 3
    .parameter "draggedView"
    .parameter "velocity"

    .prologue
    .line 863
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 12
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    const/4 v3, 0x0

    .line 869
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 870
    iput p1, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    .line 871
    iput p2, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    .line 872
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->invalidateParentIfNeeded()V

    .line 873
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v0, :cond_29

    if-eqz p3, :cond_29

    .line 874
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    iget v2, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->getScrollRange()I

    move-result v4

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 881
    :cond_25
    :goto_25
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->awakenScrollBars()Z

    .line 882
    return-void

    .line 875
    :cond_29
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-nez v0, :cond_25

    if-eqz p4, :cond_25

    .line 876
    iget-object v0, p0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    iget v2, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    goto :goto_25

    .line 879
    :cond_3f
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_25
.end method

.method protected onPull(I)V
    .registers 2
    .parameter "delta"

    .prologue
    .line 785
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 8
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1675
    iget-boolean v2, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v2, :cond_1e

    .line 1676
    if-ne p1, v4, :cond_19

    .line 1677
    const/16 p1, 0x42

    .line 1689
    :cond_b
    :goto_b
    if-nez p2, :cond_28

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1694
    .local v0, nextFocus:Landroid/view/View;
    :goto_16
    if-nez v0, :cond_31

    .line 1702
    :cond_18
    :goto_18
    return v1

    .line 1678
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_19
    if-ne p1, v3, :cond_b

    .line 1679
    const/16 p1, 0x11

    goto :goto_b

    .line 1682
    :cond_1e
    if-ne p1, v4, :cond_23

    .line 1683
    const/16 p1, 0x82

    goto :goto_b

    .line 1684
    :cond_23
    if-ne p1, v3, :cond_b

    .line 1685
    const/16 p1, 0x21

    goto :goto_b

    .line 1689
    :cond_28
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_16

    .line 1698
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_31
    invoke-direct {p0, v0}, Lcom/android/browser/view/ScrollerView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 1702
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_18
.end method

.method protected onSizeChanged(IIII)V
    .registers 8
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1751
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1753
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1754
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_b

    if-ne p0, v0, :cond_c

    .line 1766
    :cond_b
    :goto_b
    return-void

    .line 1760
    :cond_c
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p4}, Lcom/android/browser/view/ScrollerView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1761
    iget-object v2, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1762
    iget-object v2, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lcom/android/browser/view/ScrollerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1763
    iget-object v2, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/browser/view/ScrollerView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 1764
    .local v1, scrollDelta:I
    invoke-direct {p0, v1}, Lcom/android/browser/view/ScrollerView;->doScrollY(I)V

    goto :goto_b
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 35
    .parameter "ev"

    .prologue
    .line 619
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->initVelocityTrackerIfNotExists()V

    .line 620
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 622
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v21

    .line 623
    .local v21, action:I
    move/from16 v0, v21

    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_3b0

    .line 776
    :cond_17
    :goto_17
    :pswitch_17
    const/4 v3, 0x1

    :goto_18
    return v3

    .line 625
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_2c

    const/4 v3, 0x1

    :goto_20
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mIsBeingDragged:Z

    .line 626
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mIsBeingDragged:Z

    if-nez v3, :cond_2e

    .line 627
    const/4 v3, 0x0

    goto :goto_18

    .line 625
    :cond_2c
    const/4 v3, 0x0

    goto :goto_20

    .line 634
    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_51

    .line 635
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 636
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/view/ScrollerView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v3, :cond_51

    .line 637
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/view/ScrollerView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v3}, Landroid/os/StrictMode$Span;->finish()V

    .line 638
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/browser/view/ScrollerView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 643
    :cond_51
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_6b

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    :goto_5b
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/browser/view/ScrollerView;->mLastMotionY:F

    .line 644
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    goto :goto_17

    .line 643
    :cond_6b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    goto :goto_5b

    .line 648
    :pswitch_70
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mIsOrthoDragged:Z

    if-eqz v3, :cond_ca

    .line 650
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v22

    .line 651
    .local v22, activePointerIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v31

    .line 652
    .local v31, x:F
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v32

    .line 653
    .local v32, y:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/view/ScrollerView;->mDownCoords:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v3, v31, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/browser/view/ScrollerView;->mDownCoords:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float v5, v32, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/browser/view/ScrollerView;->isOrthoMove(FF)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 654
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/browser/view/ScrollerView;->mDownView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_c1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/view/ScrollerView;->mDownCoords:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, v32, v3

    :goto_ba
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3}, Lcom/android/browser/view/ScrollerView;->onOrthoDrag(Landroid/view/View;F)V

    goto/16 :goto_17

    :cond_c1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/view/ScrollerView;->mDownCoords:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v3, v31, v3

    goto :goto_ba

    .line 658
    .end local v22           #activePointerIndex:I
    .end local v31           #x:F
    .end local v32           #y:F
    :cond_ca
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mIsBeingDragged:Z

    if-eqz v3, :cond_17

    .line 660
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v22

    .line 661
    .restart local v22       #activePointerIndex:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_158

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v32

    .line 663
    .restart local v32       #y:F
    :goto_e8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/browser/view/ScrollerView;->mLastMotionY:F

    sub-float v3, v3, v32

    float-to-int v4, v3

    .line 664
    .local v4, deltaY:I
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/view/ScrollerView;->mLastMotionY:F

    .line 666
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    move/from16 v25, v0

    .line 667
    .local v25, oldX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    move/from16 v26, v0

    .line 668
    .local v26, oldY:I
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->getScrollRange()I

    move-result v8

    .line 669
    .local v8, range:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_161

    .line 670
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/browser/view/ScrollerView;->mOverscrollDistance:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Lcom/android/browser/view/ScrollerView;->overScrollBy(IIIIIIIIZ)Z

    move-result v3

    if-eqz v3, :cond_127

    .line 673
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 682
    :cond_127
    :goto_127
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v3, v5, v1, v2}, Lcom/android/browser/view/ScrollerView;->onScrollChanged(IIII)V

    .line 684
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->getOverScrollMode()I

    move-result v27

    .line 685
    .local v27, overscrollMode:I
    if-eqz v27, :cond_145

    const/4 v3, 0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_17

    if-lez v8, :cond_17

    .line 687
    :cond_145
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_184

    add-int v28, v25, v4

    .line 688
    .local v28, pulledToY:I
    :goto_14d
    if-gez v28, :cond_187

    .line 689
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/browser/view/ScrollerView;->onPull(I)V

    goto/16 :goto_17

    .line 661
    .end local v4           #deltaY:I
    .end local v8           #range:I
    .end local v25           #oldX:I
    .end local v26           #oldY:I
    .end local v27           #overscrollMode:I
    .end local v28           #pulledToY:I
    .end local v32           #y:F
    :cond_158
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v32

    goto :goto_e8

    .line 676
    .restart local v4       #deltaY:I
    .restart local v8       #range:I
    .restart local v25       #oldX:I
    .restart local v26       #oldY:I
    .restart local v32       #y:F
    :cond_161
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/view/ScrollerView;->mOverscrollDistance:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v9, p0

    move v11, v4

    move v15, v8

    invoke-virtual/range {v9 .. v18}, Lcom/android/browser/view/ScrollerView;->overScrollBy(IIIIIIIIZ)Z

    move-result v3

    if-eqz v3, :cond_127

    .line 679
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_127

    .line 687
    .restart local v27       #overscrollMode:I
    :cond_184
    add-int v28, v26, v4

    goto :goto_14d

    .line 690
    .restart local v28       #pulledToY:I
    :cond_187
    move/from16 v0, v28

    if-le v0, v8, :cond_194

    .line 691
    sub-int v3, v28, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/browser/view/ScrollerView;->onPull(I)V

    goto/16 :goto_17

    .line 693
    :cond_194
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/browser/view/ScrollerView;->onPull(I)V

    goto/16 :goto_17

    .line 699
    .end local v4           #deltaY:I
    .end local v8           #range:I
    .end local v22           #activePointerIndex:I
    .end local v25           #oldX:I
    .end local v26           #oldY:I
    .end local v27           #overscrollMode:I
    .end local v28           #pulledToY:I
    .end local v32           #y:F
    :pswitch_19c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v30, v0

    .line 700
    .local v30, vtracker:Landroid/view/VelocityTracker;
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/browser/view/ScrollerView;->mMaximumVelocity:I

    int-to-float v5, v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 701
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/browser/view/ScrollerView;->isOrthoMove(FF)Z

    move-result v3

    if-eqz v3, :cond_200

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/browser/view/ScrollerView;->mMinimumVelocity:I

    int-to-float v5, v3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_1f6

    invoke-virtual/range {v30 .. v30}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    :goto_1d9
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v5, v3

    if-gez v3, :cond_200

    .line 705
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/browser/view/ScrollerView;->mDownView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_1fb

    invoke-virtual/range {v30 .. v30}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    :goto_1ef
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3}, Lcom/android/browser/view/ScrollerView;->onOrthoFling(Landroid/view/View;F)V

    goto/16 :goto_17

    .line 701
    :cond_1f6
    invoke-virtual/range {v30 .. v30}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    goto :goto_1d9

    .line 705
    :cond_1fb
    invoke-virtual/range {v30 .. v30}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    goto :goto_1ef

    .line 709
    :cond_200
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mIsOrthoDragged:Z

    if-eqz v3, :cond_219

    .line 710
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/view/ScrollerView;->mDownView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/browser/view/ScrollerView;->onOrthoDragFinished(Landroid/view/View;)V

    .line 711
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    .line 712
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->endDrag()V

    goto/16 :goto_17

    .line 713
    :cond_219
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mIsBeingDragged:Z

    if-eqz v3, :cond_17

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/view/ScrollerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v29, v0

    .line 715
    .local v29, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/browser/view/ScrollerView;->mMaximumVelocity:I

    int-to-float v5, v5

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 716
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_26c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v24, v0

    .line 720
    .local v24, initialVelocity:I
    :goto_244
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_262

    .line 721
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/browser/view/ScrollerView;->mMinimumVelocity:I

    if-le v3, v5, :cond_27a

    .line 722
    move/from16 v0, v24

    neg-int v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/browser/view/ScrollerView;->fling(I)V

    .line 735
    :cond_25c
    :goto_25c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/browser/view/ScrollerView;->onPull(I)V

    .line 738
    :cond_262
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    .line 739
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->endDrag()V

    goto/16 :goto_17

    .line 716
    .end local v24           #initialVelocity:I
    :cond_26c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v24, v0

    goto :goto_244

    .line 724
    .restart local v24       #initialVelocity:I
    :cond_27a
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->getScrollRange()I

    move-result v13

    .line 725
    .local v13, bottom:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_29d

    .line 726
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_25c

    .line 727
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->invalidate()V

    goto :goto_25c

    .line 730
    :cond_29d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v20, v13

    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_25c

    .line 731
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->invalidate()V

    goto :goto_25c

    .line 743
    .end local v13           #bottom:I
    .end local v24           #initialVelocity:I
    .end local v29           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v30           #vtracker:Landroid/view/VelocityTracker;
    :pswitch_2bd
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mIsOrthoDragged:Z

    if-eqz v3, :cond_2d6

    .line 744
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/browser/view/ScrollerView;->mDownView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/browser/view/ScrollerView;->onOrthoDragFinished(Landroid/view/View;)V

    .line 745
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    .line 746
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->endDrag()V

    goto/16 :goto_17

    .line 747
    :cond_2d6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mIsBeingDragged:Z

    if-eqz v3, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_17

    .line 748
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_313

    .line 749
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->getScrollRange()I

    move-result v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_309

    .line 750
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->invalidate()V

    .line 757
    :cond_309
    :goto_309
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    .line 758
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->endDrag()V

    goto/16 :goto_17

    .line 753
    :cond_313
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->getScrollRange()I

    move-result v20

    invoke-virtual/range {v14 .. v20}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_309

    .line 754
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/view/ScrollerView;->invalidate()V

    goto :goto_309

    .line 762
    :pswitch_335
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v23

    .line 763
    .local v23, index:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_36d

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v32

    .line 764
    .restart local v32       #y:F
    :goto_347
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/view/ScrollerView;->mLastMotionY:F

    .line 765
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_376

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    :goto_35b
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/browser/view/ScrollerView;->mLastOrthoCoord:F

    .line 766
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    goto/16 :goto_17

    .line 763
    .end local v32           #y:F
    :cond_36d
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v32

    goto :goto_347

    .line 765
    .restart local v32       #y:F
    :cond_376
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    goto :goto_35b

    .line 770
    .end local v23           #index:I
    .end local v32           #y:F
    :pswitch_37f
    invoke-direct/range {p0 .. p1}, Lcom/android/browser/view/ScrollerView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 771
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v3, :cond_39e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    :goto_398
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/browser/view/ScrollerView;->mLastMotionY:F

    goto/16 :goto_17

    :cond_39e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/browser/view/ScrollerView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    goto :goto_398

    .line 623
    nop

    :pswitch_data_3b0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_19c
        :pswitch_70
        :pswitch_2bd
        :pswitch_17
        :pswitch_335
        :pswitch_37f
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .registers 9
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 1059
    const/16 v5, 0x82

    if-ne p1, v5, :cond_4b

    const/4 v1, 0x1

    .line 1060
    .local v1, down:Z
    :goto_6
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHeight()I

    move-result v2

    .line 1062
    .local v2, height:I
    if-eqz v1, :cond_4d

    .line 1063
    iget-object v4, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1064
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v0

    .line 1065
    .local v0, count:I
    if-lez v0, :cond_35

    .line 1066
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1067
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_35

    .line 1068
    iget-object v4, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1077
    .end local v0           #count:I
    .end local v3           #view:Landroid/view/View;
    :cond_35
    :goto_35
    iget-object v4, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1079
    iget-object v4, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/android/browser/view/ScrollerView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #down:Z
    .end local v2           #height:I
    :cond_4b
    move v1, v4

    .line 1059
    goto :goto_6

    .line 1072
    .restart local v1       #down:Z
    .restart local v2       #height:I
    :cond_4d
    iget-object v5, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getScrollY()I

    move-result v6

    sub-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1073
    iget-object v5, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gez v5, :cond_35

    .line 1074
    iget-object v5, p0, Lcom/android/browser/view/ScrollerView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    goto :goto_35
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1652
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mIsLayoutDirty:Z

    if-nez v0, :cond_b

    .line 1653
    invoke-direct {p0, p2}, Lcom/android/browser/view/ScrollerView;->scrollToChild(Landroid/view/View;)V

    .line 1658
    :goto_7
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1659
    return-void

    .line 1656
    :cond_b
    iput-object p2, p0, Lcom/android/browser/view/ScrollerView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_7
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 7
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1709
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

    .line 1712
    invoke-direct {p0, p2, p3}, Lcom/android/browser/view/ScrollerView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

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
    invoke-direct {p0}, Lcom/android/browser/view/ScrollerView;->recycleVelocityTracker()V

    .line 490
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 491
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 1717
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mIsLayoutDirty:Z

    .line 1718
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1719
    return-void
.end method

.method public scrollTo(II)V
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1829
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3a

    .line 1830
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1831
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/browser/view/ScrollerView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/browser/view/ScrollerView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/browser/view/ScrollerView;->clamp(III)I

    move-result p1

    .line 1832
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/browser/view/ScrollerView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/browser/view/ScrollerView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/android/browser/view/ScrollerView;->clamp(III)I

    move-result p2

    .line 1833
    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    if-ne p1, v1, :cond_37

    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    if-eq p2, v1, :cond_3a

    .line 1834
    :cond_37
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1837
    .end local v0           #child:Landroid/view/View;
    :cond_3a
    return-void
.end method

.method public setFillViewport(Z)V
    .registers 3
    .parameter "fillViewport"

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mFillViewport:Z

    if-eq p1, v0, :cond_9

    .line 325
    iput-boolean p1, p0, Lcom/android/browser/view/ScrollerView;->mFillViewport:Z

    .line 326
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->requestLayout()V

    .line 328
    :cond_9
    return-void
.end method

.method public setOrientation(I)V
    .registers 3
    .parameter "orientation"

    .prologue
    .line 191
    if-nez p1, :cond_9

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    .line 192
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->requestLayout()V

    .line 193
    return-void

    .line 191
    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setSmoothScrollingEnabled(Z)V
    .registers 2
    .parameter "smoothScrollingEnabled"

    .prologue
    .line 342
    iput-boolean p1, p0, Lcom/android/browser/view/ScrollerView;->mSmoothScrollingEnabled:Z

    .line 343
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .prologue
    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .registers 18
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1271
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getChildCount()I

    move-result v11

    if-nez v11, :cond_7

    .line 1304
    :goto_6
    return-void

    .line 1275
    :cond_7
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v11

    iget-wide v13, p0, Lcom/android/browser/view/ScrollerView;->mLastScroll:J

    sub-long v2, v11, v13

    .line 1276
    .local v2, duration:J
    const-wide/16 v11, 0xfa

    cmp-long v11, v2, v11

    if-lez v11, :cond_8c

    .line 1277
    iget-boolean v11, p0, Lcom/android/browser/view/ScrollerView;->mHorizontal:Z

    if-eqz v11, :cond_57

    .line 1278
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getWidth()I

    move-result v11

    iget v12, p0, Lcom/android/browser/view/ScrollerView;->mPaddingRight:I

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/android/browser/view/ScrollerView;->mPaddingLeft:I

    sub-int v10, v11, v12

    .line 1279
    .local v10, width:I
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 1280
    .local v7, right:I
    const/4 v11, 0x0

    sub-int v12, v7, v10

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1281
    .local v5, maxX:I
    iget v8, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    .line 1282
    .local v8, scrollX:I
    const/4 v11, 0x0

    add-int v12, v8, p1

    invoke-static {v12, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    sub-int p1, v11, v8

    .line 1283
    iget-object v11, p0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    iget v12, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    const/4 v13, 0x0

    move/from16 v0, p1

    invoke-virtual {v11, v8, v12, v0, v13}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1292
    .end local v5           #maxX:I
    .end local v7           #right:I
    .end local v8           #scrollX:I
    .end local v10           #width:I
    :goto_4d
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->invalidate()V

    .line 1303
    :goto_50
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/browser/view/ScrollerView;->mLastScroll:J

    goto :goto_6

    .line 1285
    :cond_57
    invoke-virtual {p0}, Lcom/android/browser/view/ScrollerView;->getHeight()I

    move-result v11

    iget v12, p0, Lcom/android/browser/view/ScrollerView;->mPaddingBottom:I

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/android/browser/view/ScrollerView;->mPaddingTop:I

    sub-int v4, v11, v12

    .line 1286
    .local v4, height:I
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/browser/view/ScrollerView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1287
    .local v1, bottom:I
    const/4 v11, 0x0

    sub-int v12, v1, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1288
    .local v6, maxY:I
    iget v9, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    .line 1289
    .local v9, scrollY:I
    const/4 v11, 0x0

    add-int v12, v9, p2

    invoke-static {v12, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    sub-int p2, v11, v9

    .line 1290
    iget-object v11, p0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    iget v12, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    const/4 v13, 0x0

    move/from16 v0, p2

    invoke-virtual {v11, v12, v9, v13, v0}, Landroid/widget/OverScroller;->startScroll(IIII)V

    goto :goto_4d

    .line 1294
    .end local v1           #bottom:I
    .end local v4           #height:I
    .end local v6           #maxY:I
    .end local v9           #scrollY:I
    :cond_8c
    iget-object v11, p0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v11}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v11

    if-nez v11, :cond_a5

    .line 1295
    iget-object v11, p0, Lcom/android/browser/view/ScrollerView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v11}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1296
    iget-object v11, p0, Lcom/android/browser/view/ScrollerView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v11, :cond_a5

    .line 1297
    iget-object v11, p0, Lcom/android/browser/view/ScrollerView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v11}, Landroid/os/StrictMode$Span;->finish()V

    .line 1298
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/browser/view/ScrollerView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 1301
    :cond_a5
    invoke-virtual/range {p0 .. p2}, Lcom/android/browser/view/ScrollerView;->scrollBy(II)V

    goto :goto_50
.end method

.method public final smoothScrollTo(II)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1313
    iget v0, p0, Lcom/android/browser/view/ScrollerView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/browser/view/ScrollerView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/view/ScrollerView;->smoothScrollBy(II)V

    .line 1314
    return-void
.end method
