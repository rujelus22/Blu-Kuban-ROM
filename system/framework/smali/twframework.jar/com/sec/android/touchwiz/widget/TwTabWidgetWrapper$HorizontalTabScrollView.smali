.class Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;
.super Landroid/widget/FrameLayout;
.source "TwTabWidgetWrapper.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HorizontalTabScrollView"
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final MAX_SCROLL_FACTOR:F = 0.5f

.field static final TAG:Ljava/lang/String; = "HorizontalTabScrollView"


# instance fields
.field private mChildToScrollTo:Landroid/view/View;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsFlinging:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionX:F

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mScrollViewMovedFocus:Z

.field private mScroller:Lcom/sec/android/touchwiz/widget/TwScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;


# direct methods
.method public constructor <init>(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 387
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    .line 388
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 543
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsFlinging:Z

    .line 546
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 566
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsLayoutDirty:Z

    .line 573
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 580
    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsBeingDragged:Z

    .line 596
    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mSmoothScrollingEnabled:Z

    .line 389
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->initScrollView()V

    .line 390
    const/high16 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->setDescendantFocusability(I)V

    .line 391
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->setFocusable(Z)V

    .line 392
    invoke-virtual {p0, p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 393
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollToChild(Landroid/view/View;)V

    return-void
.end method

.method private canScroll()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 692
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 693
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_18

    .line 694
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 695
    .local v1, childWidth:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingLeft:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingRight:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_18

    const/4 v2, 0x1

    .line 697
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
    .line 1711
    if-ge p2, p3, :cond_4

    if-gez p1, :cond_6

    .line 1712
    :cond_4
    const/4 p1, 0x0

    .line 1717
    .end local p1
    :cond_5
    :goto_5
    return p1

    .line 1714
    .restart local p1
    :cond_6
    add-int v0, p2, p1

    if-le v0, p3, :cond_5

    .line 1715
    sub-int p1, p3, p2

    goto :goto_5
.end method

.method private doScrollX(I)V
    .registers 4
    .parameter "delta"

    .prologue
    const/4 v1, 0x0

    .line 1312
    if-eqz p1, :cond_a

    .line 1313
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_b

    .line 1314
    invoke-virtual {p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->smoothScrollBy(II)V

    .line 1319
    :cond_a
    :goto_a
    return-void

    .line 1316
    :cond_b
    invoke-virtual {p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollBy(II)V

    goto :goto_a
.end method

.method private doSelectNewTab()V
    .registers 16

    .prologue
    .line 451
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;
    invoke-static {v12}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->access$200(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;
    invoke-static {v13}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->access$100(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v13

    iget v13, v13, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    invoke-virtual {v12, v13}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    .line 452
    .local v3, indicator:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 453
    .local v4, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v11

    .line 454
    .local v11, width:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getScrollX()I

    move-result v7

    .line 455
    .local v7, screenLeft:I
    add-int v8, v7, v11

    .line 462
    .local v8, screenRight:I
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v12

    iget v13, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v12, v13

    iget v13, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v0, v12, v13

    .line 465
    .local v0, MeasureIndicatorWidth:I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 466
    .local v6, rc:Landroid/graphics/Rect;
    invoke-virtual {v3, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 469
    invoke-virtual {p0, v3, v6}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 471
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v9

    .line 474
    .local v9, scrollDelta:I
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v12

    iget v13, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v12, v13

    if-ge v12, v0, :cond_53

    .line 476
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    iget-object v13, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;
    invoke-static {v13}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->access$100(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v13

    iget v13, v13, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    invoke-virtual {v12, v13}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->scrollToTab(I)V

    .line 530
    :goto_52
    return-void

    .line 480
    :cond_53
    const/high16 v5, -0x8000

    .line 482
    .local v5, newSelectionIndex:I
    if-lez v9, :cond_ad

    .line 485
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;
    invoke-static {v12}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->access$100(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v12

    iget v12, v12, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    add-int/lit8 v2, v12, -0x1

    .local v2, i:I
    :goto_61
    if-ltz v2, :cond_6f

    .line 486
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;
    invoke-static {v12}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->access$200(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v10

    .line 487
    .local v10, v:Landroid/view/View;
    if-nez v10, :cond_95

    .line 523
    .end local v10           #v:Landroid/view/View;
    :cond_6f
    :goto_6f
    const/high16 v12, -0x8000

    if-eq v5, v12, :cond_e7

    .line 524
    const-string v12, "HorizontalTabScrollView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "doSelectNewTab(). new selection:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;
    invoke-static {v12}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->access$100(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTab(I)V

    goto :goto_52

    .line 489
    .restart local v10       #v:Landroid/view/View;
    :cond_95
    invoke-virtual {v10, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 490
    invoke-virtual {p0, v10, v6}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 491
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 494
    .local v1, delta:I
    if-gtz v1, :cond_aa

    .line 495
    iget v12, v6, Landroid/graphics/Rect;->right:I

    if-ne v12, v8, :cond_a7

    .line 496
    move v5, v2

    goto :goto_6f

    .line 498
    :cond_a7
    add-int/lit8 v5, v2, 0x1

    .line 499
    goto :goto_6f

    .line 485
    :cond_aa
    add-int/lit8 v2, v2, -0x1

    goto :goto_61

    .line 505
    .end local v1           #delta:I
    .end local v2           #i:I
    .end local v10           #v:Landroid/view/View;
    :cond_ad
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;
    invoke-static {v12}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->access$100(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v12

    iget v12, v12, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    add-int/lit8 v2, v12, 0x1

    .restart local v2       #i:I
    :goto_b7
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;
    invoke-static {v12}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->access$100(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getTabCount()I

    move-result v12

    if-ge v2, v12, :cond_6f

    .line 506
    iget-object v12, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;
    invoke-static {v12}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->access$200(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v10

    .line 507
    .restart local v10       #v:Landroid/view/View;
    if-eqz v10, :cond_6f

    .line 509
    invoke-virtual {v10, v6}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 510
    invoke-virtual {p0, v10, v6}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 511
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 513
    .restart local v1       #delta:I
    if-ltz v1, :cond_e4

    .line 514
    iget v12, v6, Landroid/graphics/Rect;->left:I

    if-ne v12, v7, :cond_e1

    .line 515
    move v5, v2

    goto :goto_6f

    .line 517
    :cond_e1
    add-int/lit8 v5, v2, -0x1

    .line 518
    goto :goto_6f

    .line 505
    :cond_e4
    add-int/lit8 v2, v2, 0x1

    goto :goto_b7

    .line 527
    .end local v1           #delta:I
    .end local v10           #v:Landroid/view/View;
    :cond_e7
    const-string v12, "HorizontalTabScrollView"

    const-string v13, "doSelectNewTab(). failed to find new selection"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_52
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .registers 15
    .parameter "leftFocus"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 1055
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1056
    .local v2, focusables:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1065
    .local v1, focusCandidate:Landroid/view/View;
    const/4 v3, 0x0

    .line 1067
    .local v3, foundFullyContainedFocusable:Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1068
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_c
    if-ge v4, v0, :cond_52

    .line 1069
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1070
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 1071
    .local v8, viewLeft:I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v9

    .line 1073
    .local v9, viewRight:I
    if-ge p2, v9, :cond_29

    if-ge v8, p3, :cond_29

    .line 1079
    if-ge p2, v8, :cond_2c

    if-ge v9, p3, :cond_2c

    const/4 v7, 0x1

    .line 1082
    .local v7, viewIsFullyContained:Z
    :goto_25
    if-nez v1, :cond_2e

    .line 1084
    move-object v1, v5

    .line 1085
    move v3, v7

    .line 1068
    .end local v7           #viewIsFullyContained:Z
    :cond_29
    :goto_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1079
    :cond_2c
    const/4 v7, 0x0

    goto :goto_25

    .line 1087
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

    .line 1091
    .local v6, viewIsCloserToBoundary:Z
    :goto_3f
    if-eqz v3, :cond_49

    .line 1092
    if-eqz v7, :cond_29

    if-eqz v6, :cond_29

    .line 1098
    move-object v1, v5

    goto :goto_29

    .line 1087
    .end local v6           #viewIsCloserToBoundary:Z
    :cond_47
    const/4 v6, 0x0

    goto :goto_3f

    .line 1101
    .restart local v6       #viewIsCloserToBoundary:Z
    :cond_49
    if-eqz v7, :cond_4e

    .line 1103
    move-object v1, v5

    .line 1104
    const/4 v3, 0x1

    goto :goto_29

    .line 1105
    :cond_4e
    if-eqz v6, :cond_29

    .line 1110
    move-object v1, v5

    goto :goto_29

    .line 1117
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
    .line 1024
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getHorizontalFadingEdgeLength()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 1025
    .local v0, fadingEdgeLength:I
    add-int v1, p2, v0

    .line 1026
    .local v1, leftWithoutFadingEdge:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    sub-int v2, v3, v0

    .line 1028
    .local v2, rightWithoutFadingEdge:I
    if-eqz p3, :cond_1e

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    if-ge v3, v2, :cond_1e

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v3

    if-le v3, v1, :cond_1e

    .line 1034
    .end local p3
    :goto_1d
    return-object p3

    .restart local p3
    :cond_1e
    invoke-direct {p0, p1, v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_1d
.end method

.method private initScrollView()V
    .registers 4

    .prologue
    .line 642
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwScroller;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/touchwiz/widget/TwScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwScroller;

    .line 643
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->setFocusable(Z)V

    .line 644
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->setDescendantFocusability(I)V

    .line 645
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->setWillNotDraw(Z)V

    .line 646
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 647
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTouchSlop:I

    .line 648
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mMinimumVelocity:I

    .line 649
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mMaximumVelocity:I

    .line 650
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .registers 4
    .parameter "descendant"

    .prologue
    const/4 v0, 0x0

    .line 1291
    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

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

    .line 1651
    if-ne p1, p2, :cond_4

    .line 1656
    :cond_3
    :goto_3
    return v1

    .line 1655
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1656
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_14

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-direct {p0, v0, p2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

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
    .line 1299
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1300
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1302
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_27

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

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

.method private onScrollEndDetected()V
    .registers 7

    .prologue
    .line 424
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->access$200(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->access$100(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v5

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwTabHost;->mCurrentTab:I

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 425
    .local v0, indicator:Landroid/view/View;
    if-nez v0, :cond_15

    .line 447
    :cond_14
    :goto_14
    return-void

    .line 431
    :cond_15
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 432
    .local v2, rc:Landroid/graphics/Rect;
    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 435
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 437
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v3

    .line 439
    .local v3, scrollDelta:I
    if-eqz v3, :cond_2d

    const/4 v1, 0x1

    .line 441
    .local v1, newSelectionNeeded:Z
    :goto_27
    if-eqz v1, :cond_14

    .line 442
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->doSelectNewTab()V

    goto :goto_14

    .line 439
    .end local v1           #newSelectionNeeded:Z
    :cond_2d
    const/4 v1, 0x0

    goto :goto_27
.end method

.method private scrollAndFocus(III)Z
    .registers 14
    .parameter "direction"
    .parameter "left"
    .parameter "right"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1200
    const/4 v4, 0x1

    .line 1202
    .local v4, handled:Z
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v6

    .line 1203
    .local v6, width:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getScrollX()I

    move-result v0

    .line 1204
    .local v0, containerLeft:I
    add-int v1, v0, v6

    .line 1205
    .local v1, containerRight:I
    const/16 v9, 0x11

    if-ne p1, v9, :cond_2f

    move v3, v7

    .line 1207
    .local v3, goLeft:Z
    :goto_12
    invoke-direct {p0, v3, p2, p3}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1208
    .local v5, newFocused:Landroid/view/View;
    if-nez v5, :cond_19

    .line 1209
    move-object v5, p0

    .line 1212
    :cond_19
    if-lt p2, v0, :cond_31

    if-gt p3, v1, :cond_31

    .line 1213
    const/4 v4, 0x0

    .line 1219
    :goto_1e
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->findFocus()Landroid/view/View;

    move-result-object v9

    if-eq v5, v9, :cond_2e

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result v9

    if-eqz v9, :cond_2e

    .line 1220
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollViewMovedFocus:Z

    .line 1221
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollViewMovedFocus:Z

    .line 1224
    :cond_2e
    return v4

    .end local v3           #goLeft:Z
    .end local v5           #newFocused:Landroid/view/View;
    :cond_2f
    move v3, v8

    .line 1205
    goto :goto_12

    .line 1215
    .restart local v3       #goLeft:Z
    .restart local v5       #newFocused:Landroid/view/View;
    :cond_31
    if-eqz v3, :cond_39

    sub-int v2, p2, v0

    .line 1216
    .local v2, delta:I
    :goto_35
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->doScrollX(I)V

    goto :goto_1e

    .line 1215
    .end local v2           #delta:I
    :cond_39
    sub-int v2, p3, v1

    goto :goto_35
.end method

.method private scrollToChild(Landroid/view/View;)V
    .registers 6
    .parameter "child"

    .prologue
    .line 1443
    if-nez p1, :cond_3

    .line 1458
    :cond_2
    :goto_2
    return-void

    .line 1446
    :cond_3
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1449
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1451
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1452
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 1453
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1455
    .local v0, scrollDelta:I
    if-eqz v0, :cond_2

    .line 1456
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollBy(II)V

    goto :goto_2
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .registers 6
    .parameter "rect"
    .parameter "immediate"

    .prologue
    const/4 v2, 0x0

    .line 1469
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1470
    .local v0, delta:I
    if-eqz v0, :cond_10

    const/4 v1, 0x1

    .line 1471
    .local v1, scroll:Z
    :goto_8
    if-eqz v1, :cond_f

    .line 1472
    if-eqz p2, :cond_12

    .line 1473
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollBy(II)V

    .line 1478
    :cond_f
    :goto_f
    return v1

    .end local v1           #scroll:Z
    :cond_10
    move v1, v2

    .line 1470
    goto :goto_8

    .line 1475
    .restart local v1       #scroll:Z
    :cond_12
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->smoothScrollBy(II)V

    goto :goto_f
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 655
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 658
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 659
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 5
    .parameter "child"
    .parameter "index"

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 664
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 667
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 668
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 682
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 685
    :cond_e
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 686
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .parameter "child"
    .parameter "params"

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 673
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HorizontalScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 677
    return-void
.end method

.method public arrowScroll(I)Z
    .registers 13
    .parameter "direction"

    .prologue
    const/16 v10, 0x42

    const/4 v7, 0x0

    .line 1236
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1237
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_a

    const/4 v0, 0x0

    .line 1239
    :cond_a
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1241
    .local v4, nextFocused:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 1243
    .local v3, maxJump:I
    if-eqz v4, :cond_53

    invoke-direct {p0, v4, v3}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v8

    if-eqz v8, :cond_53

    .line 1244
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1245
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1246
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1247
    .local v6, scrollDelta:I
    invoke-direct {p0, v6}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->doScrollX(I)V

    .line 1248
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1271
    :goto_34
    if-eqz v0, :cond_51

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_51

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 1278
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getDescendantFocusability()I

    move-result v2

    .line 1279
    .local v2, descendantFocusability:I
    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->setDescendantFocusability(I)V

    .line 1280
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->requestFocus()Z

    .line 1281
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->setDescendantFocusability(I)V

    .line 1283
    .end local v2           #descendantFocusability:I
    :cond_51
    const/4 v7, 0x1

    :cond_52
    return v7

    .line 1251
    .end local v6           #scrollDelta:I
    :cond_53
    move v6, v3

    .line 1253
    .restart local v6       #scrollDelta:I
    const/16 v8, 0x11

    if-ne p1, v8, :cond_6b

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getScrollX()I

    move-result v8

    if-ge v8, v6, :cond_6b

    .line 1254
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getScrollX()I

    move-result v6

    .line 1265
    :cond_62
    :goto_62
    if-eqz v6, :cond_52

    .line 1268
    if-ne p1, v10, :cond_8c

    move v7, v6

    :goto_67
    invoke-direct {p0, v7}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->doScrollX(I)V

    goto :goto_34

    .line 1255
    :cond_6b
    if-ne p1, v10, :cond_62

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_62

    .line 1257
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1259
    .local v1, daRight:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getScrollX()I

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v9

    add-int v5, v8, v9

    .line 1261
    .local v5, screenRight:I
    sub-int v8, v1, v5

    if-ge v8, v3, :cond_62

    .line 1262
    sub-int v6, v1, v5

    goto :goto_62

    .line 1268
    .end local v1           #daRight:I
    .end local v5           #screenRight:I
    :cond_8c
    neg-int v7, v6

    goto :goto_67
.end method

.method protected computeHorizontalScrollRange()I
    .registers 3

    .prologue
    .line 1357
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v0

    .line 1358
    .local v0, count:I
    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    goto :goto_a
.end method

.method public computeScroll()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1394
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwScroller;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwScroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_63

    .line 1411
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    .line 1412
    .local v1, oldX:I
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollY:I

    .line 1413
    .local v2, oldY:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwScroller;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwScroller;->getCurrX()I

    move-result v3

    .line 1414
    .local v3, x:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwScroller;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwScroller;->getCurrY()I

    move-result v4

    .line 1415
    .local v4, y:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_5e

    .line 1416
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1417
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingLeft:I

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-direct {p0, v3, v5, v6}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->clamp(III)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    .line 1418
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingTop:I

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->clamp(III)I

    move-result v5

    iput v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollY:I

    .line 1423
    .end local v0           #child:Landroid/view/View;
    :goto_4b
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    if-ne v1, v5, :cond_53

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollY:I

    if-eq v2, v5, :cond_5a

    .line 1424
    :cond_53
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollY:I

    invoke-virtual {p0, v5, v6, v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->onScrollChanged(IIII)V

    .line 1428
    :cond_5a
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->postInvalidate()V

    .line 1435
    .end local v1           #oldX:I
    .end local v2           #oldY:I
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_5d
    :goto_5d
    return-void

    .line 1420
    .restart local v1       #oldX:I
    .restart local v2       #oldY:I
    .restart local v3       #x:I
    .restart local v4       #y:I
    :cond_5e
    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    .line 1421
    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollY:I

    goto :goto_4b

    .line 1430
    .end local v1           #oldX:I
    .end local v2           #oldY:I
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_63
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsFlinging:Z

    if-eqz v5, :cond_5d

    .line 1431
    iput-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsFlinging:Z

    .line 1432
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->onScrollEndDetected()V

    goto :goto_5d
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .registers 10
    .parameter "rect"

    .prologue
    const/4 v6, 0x0

    .line 1490
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v7

    if-nez v7, :cond_9

    move v4, v6

    .line 1547
    :cond_8
    :goto_8
    return v4

    .line 1492
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v5

    .line 1493
    .local v5, width:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getScrollX()I

    move-result v2

    .line 1494
    .local v2, screenLeft:I
    add-int v3, v2, v5

    .line 1511
    .local v3, screenRight:I
    const/4 v4, 0x0

    .line 1513
    .local v4, scrollXDelta:I
    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-le v7, v3, :cond_3a

    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-le v7, v2, :cond_3a

    .line 1518
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v5, :cond_35

    .line 1520
    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v2

    add-int/2addr v4, v7

    .line 1527
    :goto_26
    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v1

    .line 1528
    .local v1, right:I
    sub-int v0, v1, v3

    .line 1529
    .local v0, distanceToRight:I
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1531
    goto :goto_8

    .line 1523
    .end local v0           #distanceToRight:I
    .end local v1           #right:I
    :cond_35
    iget v7, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v3

    add-int/2addr v4, v7

    goto :goto_26

    .line 1531
    :cond_3a
    iget v6, p1, Landroid/graphics/Rect;->left:I

    if-ge v6, v2, :cond_8

    iget v6, p1, Landroid/graphics/Rect;->right:I

    if-ge v6, v3, :cond_8

    .line 1536
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-le v6, v5, :cond_57

    .line 1538
    iget v6, p1, Landroid/graphics/Rect;->right:I

    sub-int v6, v3, v6

    sub-int/2addr v4, v6

    .line 1545
    :goto_4d
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getScrollX()I

    move-result v6

    neg-int v6, v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_8

    .line 1541
    :cond_57
    iget v6, p1, Landroid/graphics/Rect;->left:I

    sub-int v6, v2, v6

    sub-int/2addr v4, v6

    goto :goto_4d
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 796
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 797
    .local v0, handled:Z
    if-eqz v0, :cond_8

    .line 798
    const/4 v1, 0x1

    .line 800
    :goto_7
    return v1

    :cond_8
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_7
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 9
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x11

    const/16 v5, 0x42

    .line 812
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 814
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_31

    .line 815
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 816
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 817
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_1d

    const/4 v0, 0x0

    .line 818
    :cond_1d
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 820
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_30

    if-eq v2, p0, :cond_30

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_30

    const/4 v3, 0x1

    .line 849
    .end local v0           #currentFocused:Landroid/view/View;
    .end local v2           #nextFocused:Landroid/view/View;
    :cond_30
    :goto_30
    return v3

    .line 826
    :cond_31
    const/4 v1, 0x0

    .line 827
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3f

    .line 828
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_6e

    :cond_3f
    :goto_3f
    move v3, v1

    .line 849
    goto :goto_30

    .line 830
    :sswitch_41
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_4c

    .line 831
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_3f

    .line 833
    :cond_4c
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->fullScroll(I)Z

    move-result v1

    .line 835
    goto :goto_3f

    .line 837
    :sswitch_51
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5c

    .line 838
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_3f

    .line 840
    :cond_5c
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->fullScroll(I)Z

    move-result v1

    .line 842
    goto :goto_3f

    .line 844
    :sswitch_61
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6c

    move v3, v4

    :goto_68
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->pageScroll(I)Z

    goto :goto_3f

    :cond_6c
    move v3, v5

    goto :goto_68

    .line 828
    :sswitch_data_6e
    .sparse-switch
        0x15 -> :sswitch_41
        0x16 -> :sswitch_51
        0x3e -> :sswitch_61
    .end sparse-switch
.end method

.method public fling(I)V
    .registers 16
    .parameter "velocityX"

    .prologue
    const/4 v13, 0x1

    const/4 v4, 0x0

    .line 1667
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_57

    .line 1668
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingRight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingLeft:I

    sub-int v12, v0, v1

    .line 1669
    .local v12, width:I
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v11

    .line 1671
    .local v11, right:I
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwScroller;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollY:I

    sub-int v6, v11, v12

    move v3, p1

    move v5, v4

    move v7, v4

    move v8, v4

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/touchwiz/widget/TwScroller;->fling(IIIIIIII)V

    .line 1672
    iput-boolean v13, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsFlinging:Z

    .line 1674
    if-lez p1, :cond_58

    move v9, v13

    .line 1676
    .local v9, movingRight:Z
    :goto_2f
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwScroller;->getFinalX()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v9, v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->findFocusableViewInMyBounds(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v10

    .line 1679
    .local v10, newFocused:Landroid/view/View;
    if-nez v10, :cond_40

    .line 1680
    move-object v10, p0

    .line 1683
    :cond_40
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eq v10, v0, :cond_54

    if-eqz v9, :cond_5a

    const/16 v0, 0x42

    :goto_4a
    invoke-virtual {v10, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1685
    iput-boolean v13, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollViewMovedFocus:Z

    .line 1686
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollViewMovedFocus:Z

    .line 1689
    :cond_54
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->invalidate()V

    .line 1691
    .end local v9           #movingRight:Z
    .end local v10           #newFocused:Landroid/view/View;
    .end local v11           #right:I
    .end local v12           #width:I
    :cond_57
    return-void

    .restart local v11       #right:I
    .restart local v12       #width:I
    :cond_58
    move v9, v4

    .line 1674
    goto :goto_2f

    .line 1683
    .restart local v9       #movingRight:Z
    .restart local v10       #newFocused:Landroid/view/View;
    :cond_5a
    const/16 v0, 0x11

    goto :goto_4a
.end method

.method public fullScroll(I)Z
    .registers 8
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 1169
    const/16 v5, 0x42

    if-ne p1, v5, :cond_3c

    const/4 v1, 0x1

    .line 1170
    .local v1, right:Z
    :goto_6
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v3

    .line 1172
    .local v3, width:I
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    .line 1173
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v3, v5, Landroid/graphics/Rect;->right:I

    .line 1175
    if-eqz v1, :cond_2f

    .line 1176
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v0

    .line 1177
    .local v0, count:I
    if-lez v0, :cond_2f

    .line 1178
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1179
    .local v2, view:Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1180
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1184
    .end local v0           #count:I
    .end local v2           #view:Landroid/view/View;
    :cond_2f
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #right:Z
    .end local v3           #width:I
    :cond_3c
    move v1, v4

    .line 1169
    goto :goto_6
.end method

.method protected getLeftFadingEdgeStrength()F
    .registers 4

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_8

    .line 605
    const/4 v1, 0x0

    .line 613
    :goto_7
    return v1

    .line 608
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 609
    .local v0, length:I
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    if-ge v1, v0, :cond_16

    .line 610
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_7

    .line 613
    :cond_16
    const/high16 v1, 0x3f80

    goto :goto_7
.end method

.method public getMaxScrollAmount()I
    .registers 4

    .prologue
    .line 637
    const/high16 v0, 0x3f00

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mRight:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .registers 6

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_8

    .line 619
    const/4 v3, 0x0

    .line 629
    :goto_7
    return v3

    .line 622
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 623
    .local v0, length:I
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingRight:I

    sub-int v1, v3, v4

    .line 624
    .local v1, rightEdge:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v1

    .line 625
    .local v2, span:I
    if-ge v2, v0, :cond_28

    .line 626
    int-to-float v3, v2

    int-to-float v4, v0

    div-float/2addr v3, v4

    goto :goto_7

    .line 629
    :cond_28
    const/high16 v3, 0x3f80

    goto :goto_7
.end method

.method public isFillViewport()Z
    .registers 2

    .prologue
    .line 706
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mFillViewport:Z

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .registers 2

    .prologue
    .line 727
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .registers 10
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 1364
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1369
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1372
    .local v0, childHeightMeasureSpec:I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1374
    .local v1, childWidthMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1375
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
    .line 1381
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1383
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingTop:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p4, v3, v4}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 1386
    .local v0, childHeightMeasureSpec:I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1389
    .local v1, childWidthMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1390
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 533
    const-string v0, "HorizontalScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    if-ne p1, p0, :cond_35

    if-eqz p2, :cond_35

    .line 535
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    #getter for: Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->mTabWidget:Lcom/sec/android/touchwiz/widget/TwTabWidget;
    invoke-static {v0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->access$200(Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;)Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->requestFocus()Z

    .line 538
    :cond_35
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 865
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 866
    .local v0, action:I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_e

    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsBeingDragged:Z

    if-eqz v5, :cond_e

    .line 919
    :goto_d
    return v3

    .line 870
    :cond_e
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->canScroll()Z

    move-result v5

    if-nez v5, :cond_18

    .line 871
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsBeingDragged:Z

    move v3, v4

    .line 872
    goto :goto_d

    .line 875
    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 877
    .local v1, x:F
    packed-switch v0, :pswitch_data_50

    .line 919
    :goto_1f
    iget-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsBeingDragged:Z

    goto :goto_d

    .line 888
    :pswitch_22
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mLastMotionX:F

    sub-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v2, v5

    .line 889
    .local v2, xDiff:I
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTouchSlop:I

    if-le v2, v5, :cond_3a

    .line 890
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsBeingDragged:Z

    .line 891
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mParent:Landroid/view/ViewParent;

    if-eqz v5, :cond_3a

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v5, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 893
    :cond_3a
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsFlinging:Z

    goto :goto_1f

    .line 898
    .end local v2           #xDiff:I
    :pswitch_3d
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mLastMotionX:F

    .line 905
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwScroller;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwScroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_4a

    :goto_47
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsBeingDragged:Z

    goto :goto_1f

    :cond_4a
    move v3, v4

    goto :goto_47

    .line 911
    :pswitch_4c
    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsBeingDragged:Z

    goto :goto_1f

    .line 877
    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_4c
        :pswitch_22
        :pswitch_4c
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
    .line 1617
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsLayoutDirty:Z

    .line 1620
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1621
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1623
    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1626
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollTo(II)V

    .line 1627
    return-void
.end method

.method protected onMeasure(II)V
    .registers 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 742
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_11

    .line 743
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 744
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 742
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 747
    .end local v0           #child:Landroid/view/View;
    :cond_11
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 758
    const/4 v3, 0x0

    :goto_15
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_25

    .line 759
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 760
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 758
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 763
    .end local v0           #child:Landroid/view/View;
    :cond_25
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 765
    iget-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mFillViewport:Z

    if-nez v7, :cond_2d

    .line 791
    :cond_2c
    :goto_2c
    return-void

    .line 769
    :cond_2d
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 770
    .local v6, widthMode:I
    if-eqz v6, :cond_2c

    .line 774
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_68

    .line 775
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 776
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getMeasuredWidth()I

    move-result v5

    .line 777
    .local v5, width:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-ge v7, v5, :cond_68

    .line 778
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 780
    .local v4, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingTop:I

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingBottom:I

    add-int/2addr v7, v8

    iget v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v7, v8}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 782
    .local v1, childHeightMeasureSpec:I
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingLeft:I

    sub-int/2addr v5, v7

    .line 783
    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingRight:I

    sub-int/2addr v5, v7

    .line 784
    const/high16 v7, 0x4000

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 786
    .local v2, childWidthMeasureSpec:I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 790
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeightMeasureSpec:I
    .end local v2           #childWidthMeasureSpec:I
    .end local v4           #lp:Landroid/widget/FrameLayout$LayoutParams;
    .end local v5           #width:I
    :cond_68
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->this$0:Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper;->rescheduleSelectCurrentItem()V

    goto :goto_2c
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 7
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x0

    .line 1577
    const/4 v2, 0x2

    if-ne p1, v2, :cond_14

    .line 1578
    const/16 p1, 0x42

    .line 1583
    :cond_6
    :goto_6
    if-nez p2, :cond_1a

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1588
    .local v0, nextFocus:Landroid/view/View;
    :goto_11
    if-nez v0, :cond_23

    .line 1596
    :cond_13
    :goto_13
    return v1

    .line 1579
    .end local v0           #nextFocus:Landroid/view/View;
    :cond_14
    const/4 v2, 0x1

    if-ne p1, v2, :cond_6

    .line 1580
    const/16 p1, 0x11

    goto :goto_6

    .line 1583
    :cond_1a
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_11

    .line 1592
    .restart local v0       #nextFocus:Landroid/view/View;
    :cond_23
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1596
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
    .line 1631
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1633
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1634
    .local v0, currentFocused:Landroid/view/View;
    if-eqz v0, :cond_b

    if-ne p0, v0, :cond_c

    .line 1645
    :cond_b
    :goto_b
    return-void

    .line 1637
    :cond_c
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mRight:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mLeft:I

    sub-int v1, v3, v4

    .line 1639
    .local v1, maxJump:I
    invoke-direct {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->isWithinDeltaOfScreen(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1640
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1641
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1642
    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 1643
    .local v2, scrollDelta:I
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->doScrollX(I)V

    goto :goto_b
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter "ev"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 925
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v9

    if-eqz v9, :cond_f

    .line 998
    :cond_e
    :goto_e
    return v7

    .line 931
    :cond_f
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->canScroll()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 935
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_1f

    .line 936
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 938
    :cond_1f
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 940
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 941
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 943
    .local v6, x:F
    packed-switch v0, :pswitch_data_aa

    :cond_2f
    :goto_2f
    move v7, v8

    .line 998
    goto :goto_e

    .line 949
    :pswitch_31
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwScroller;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwScroller;->isFinished()Z

    move-result v9

    if-nez v9, :cond_3e

    .line 950
    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwScroller;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwScroller;->abortAnimation()V

    .line 953
    :cond_3e
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsFlinging:Z

    .line 956
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mLastMotionX:F

    goto :goto_2f

    .line 960
    :pswitch_43
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mLastMotionX:F

    sub-float/2addr v9, v6

    float-to-int v2, v9

    .line 961
    .local v2, deltaX:I
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mLastMotionX:F

    .line 963
    if-gez v2, :cond_53

    .line 964
    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    if-lez v9, :cond_2f

    .line 965
    invoke-virtual {p0, v2, v7}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollBy(II)V

    goto :goto_2f

    .line 967
    :cond_53
    if-lez v2, :cond_2f

    .line 968
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingRight:I

    sub-int v4, v9, v10

    .line 969
    .local v4, rightEdge:I
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    sub-int/2addr v9, v10

    sub-int v1, v9, v4

    .line 970
    .local v1, availableToScroll:I
    if-lez v1, :cond_2f

    .line 971
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {p0, v9, v7}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollBy(II)V

    goto :goto_2f

    .line 981
    .end local v1           #availableToScroll:I
    .end local v2           #deltaX:I
    .end local v4           #rightEdge:I
    :pswitch_74
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 982
    .local v5, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v9, 0x3e8

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mMaximumVelocity:I

    int-to-float v10, v10

    invoke-virtual {v5, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 983
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v9

    float-to-int v3, v9

    .line 985
    .local v3, initialVelocity:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mMinimumVelocity:I

    if-le v9, v10, :cond_a4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_a4

    .line 986
    neg-int v7, v3

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->fling(I)V

    .line 987
    iput-boolean v8, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsFlinging:Z

    .line 993
    :goto_97
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_2f

    .line 994
    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->recycle()V

    .line 995
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_2f

    .line 989
    :cond_a4
    iput-boolean v7, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsFlinging:Z

    .line 990
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->onScrollEndDetected()V

    goto :goto_97

    .line 943
    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_31
        :pswitch_74
        :pswitch_43
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .registers 9
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 1133
    const/16 v5, 0x42

    if-ne p1, v5, :cond_49

    const/4 v1, 0x1

    .line 1134
    .local v1, right:Z
    :goto_6
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v3

    .line 1136
    .local v3, width:I
    if-eqz v1, :cond_4b

    .line 1137
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getScrollX()I

    move-result v6

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1138
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v0

    .line 1139
    .local v0, count:I
    if-lez v0, :cond_33

    .line 1140
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1141
    .local v2, view:Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    if-le v4, v5, :cond_33

    .line 1142
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1151
    .end local v0           #count:I
    .end local v2           #view:Landroid/view/View;
    :cond_33
    :goto_33
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v3

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 1153
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .end local v1           #right:Z
    .end local v3           #width:I
    :cond_49
    move v1, v4

    .line 1133
    goto :goto_6

    .line 1146
    .restart local v1       #right:Z
    .restart local v3       #width:I
    :cond_4b
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getScrollX()I

    move-result v6

    sub-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1147
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gez v5, :cond_33

    .line 1148
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->left:I

    goto :goto_33
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1552
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollViewMovedFocus:Z

    if-nez v0, :cond_b

    .line 1553
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_f

    .line 1554
    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1560
    :cond_b
    :goto_b
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1561
    return-void

    .line 1557
    :cond_f
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_b
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 7
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 1603
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

    .line 1606
    invoke-direct {p0, p2, p3}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 1611
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mIsLayoutDirty:Z

    .line 1612
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1613
    return-void
.end method

.method public scrollTo(II)V
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1700
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3a

    .line 1701
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1702
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->clamp(III)I

    move-result p1

    .line 1703
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, p2, v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->clamp(III)I

    move-result p2

    .line 1704
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    if-ne p1, v1, :cond_37

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollY:I

    if-eq p2, v1, :cond_3a

    .line 1705
    :cond_37
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1708
    .end local v0           #child:Landroid/view/View;
    :cond_3a
    return-void
.end method

.method public scrollToTabView(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 397
    if-nez p1, :cond_3

    .line 416
    :cond_2
    :goto_2
    return-void

    .line 400
    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 401
    .local v0, rc:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 404
    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 405
    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 406
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 408
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 410
    .local v1, scrollDelta:I
    if-eqz v1, :cond_2

    .line 414
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->smoothScrollBy(II)V

    goto :goto_2
.end method

.method public setFillViewport(Z)V
    .registers 3
    .parameter "fillViewport"

    .prologue
    .line 717
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_9

    .line 718
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mFillViewport:Z

    .line 719
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->requestLayout()V

    .line 721
    :cond_9
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .registers 2
    .parameter "smoothScrollingEnabled"

    .prologue
    .line 735
    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mSmoothScrollingEnabled:Z

    .line 736
    return-void
.end method

.method public final smoothScrollBy(II)V
    .registers 9
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1328
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mLastScroll:J

    sub-long v0, v2, v4

    .line 1329
    .local v0, duration:J
    const-wide/16 v2, 0xfa

    cmp-long v2, v0, v2

    if-lez v2, :cond_21

    .line 1330
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwScroller;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollY:I

    invoke-virtual {v2, v3, v4, p1, p2}, Lcom/sec/android/touchwiz/widget/TwScroller;->startScroll(IIII)V

    .line 1331
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->invalidate()V

    .line 1338
    :goto_1a
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mLastScroll:J

    .line 1339
    return-void

    .line 1333
    :cond_21
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwScroller;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 1334
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwScroller;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwScroller;->abortAnimation()V

    .line 1336
    :cond_2e
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->scrollBy(II)V

    goto :goto_1a
.end method

.method public final smoothScrollTo(II)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1348
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidgetWrapper$HorizontalTabScrollView;->smoothScrollBy(II)V

    .line 1349
    return-void
.end method
