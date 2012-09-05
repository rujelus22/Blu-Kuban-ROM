.class public Lcom/vlingo/client/scroller/ScrollableContainer;
.super Landroid/widget/FrameLayout;
.source "ScrollableContainer.java"


# static fields
.field private static final ANIMATION_DURATION:I = 0x190

.field private static final INVALID_SCREEN:I = -0x1

.field private static final SNAP_VELOCITY:I = 0x3e8

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private changeListener:Lcom/vlingo/client/scroller/ScrollableItemChangeListener;

.field private lastItem:Lcom/vlingo/client/scroller/ScrollableItem;

.field protected mCurrentScreen:I

.field private mDefaultScreen:I

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLocked:Z

.field private mMaximumVelocity:I

.field private mNextScreen:I

.field private mScrollLock:Z

.field private mScroller:Landroid/widget/Scroller;

.field private mTouchSlop:I

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput v1, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mDefaultScreen:I

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mNextScreen:I

    .line 64
    iput v1, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mTouchState:I

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/vlingo/client/scroller/ScrollableContainer;)Lcom/vlingo/client/scroller/ScrollableItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->lastItem:Lcom/vlingo/client/scroller/ScrollableItem;

    return-object v0
.end method

.method static synthetic access$002(Lcom/vlingo/client/scroller/ScrollableContainer;Lcom/vlingo/client/scroller/ScrollableItem;)Lcom/vlingo/client/scroller/ScrollableItem;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->lastItem:Lcom/vlingo/client/scroller/ScrollableItem;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vlingo/client/scroller/ScrollableContainer;)Lcom/vlingo/client/scroller/ScrollableItemChangeListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->changeListener:Lcom/vlingo/client/scroller/ScrollableItemChangeListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/vlingo/client/scroller/ScrollableContainer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mScrollLock:Z

    return p1
.end method

.method private notifyScreenChanged()V
    .registers 2

    .prologue
    .line 163
    new-instance v0, Lcom/vlingo/client/scroller/ScrollableContainer$1;

    invoke-direct {v0, p0}, Lcom/vlingo/client/scroller/ScrollableContainer$1;-><init>(Lcom/vlingo/client/scroller/ScrollableContainer;)V

    invoke-static {v0}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method private snapToDestination()V
    .registers 5

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getWidth()I

    move-result v0

    .line 561
    .local v0, screenWidth:I
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getScrollX()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    div-int v1, v2, v0

    .line 563
    .local v1, whichScreen:I
    invoke-direct {p0, v1}, Lcom/vlingo/client/scroller/ScrollableContainer;->snapToScreen(I)V

    .line 564
    return-void
.end method

.method private snapToScreen(I)V
    .registers 12
    .parameter "whichScreen"

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 570
    iget-object v0, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_b

    .line 588
    :goto_a
    return-void

    .line 573
    :cond_b
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 574
    iget v0, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mCurrentScreen:I

    if-eq p1, v0, :cond_51

    move v6, v9

    .line 576
    .local v6, changingScreens:Z
    :goto_1e
    iput p1, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mNextScreen:I

    .line 578
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getFocusedChild()Landroid/view/View;

    move-result-object v7

    .line 579
    .local v7, focusedChild:Landroid/view/View;
    if-eqz v7, :cond_33

    if-eqz v6, :cond_33

    iget v0, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v7, v0, :cond_33

    .line 580
    invoke-virtual {v7}, Landroid/view/View;->clearFocus()V

    .line 583
    :cond_33
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getWidth()I

    move-result v0

    mul-int v8, p1, v0

    .line 584
    .local v8, newX:I
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getScrollX()I

    move-result v0

    sub-int v3, v8, v0

    .line 585
    .local v3, delta:I
    iget-object v0, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getScrollX()I

    move-result v1

    const/16 v5, 0x190

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 586
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->invalidate()V

    .line 587
    iput-boolean v9, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mScrollLock:Z

    goto :goto_a

    .end local v3           #delta:I
    .end local v6           #changingScreens:Z
    .end local v7           #focusedChild:Landroid/view/View;
    .end local v8           #newX:I
    :cond_51
    move v6, v2

    .line 574
    goto :goto_1e
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 7
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v1, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 363
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_20

    .line 364
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 365
    const/16 v1, 0x11

    if-ne p2, v1, :cond_21

    .line 366
    iget v1, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mCurrentScreen:I

    if-lez v1, :cond_20

    .line 367
    iget v1, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mCurrentScreen:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 368
    if-eqz v0, :cond_20

    .line 369
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 379
    :cond_20
    :goto_20
    return-void

    .line 371
    :cond_21
    const/16 v1, 0x42

    if-ne p2, v1, :cond_20

    .line 372
    iget v1, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_20

    .line 373
    iget v1, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 374
    if-eqz v0, :cond_20

    .line 375
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_20
.end method

.method public addItem(Lcom/vlingo/client/scroller/ScrollableItem;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 700
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 701
    invoke-interface {p1, p0}, Lcom/vlingo/client/scroller/ScrollableItem;->setScrollableContainer(Lcom/vlingo/client/scroller/ScrollableContainer;)V

    .line 702
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .registers 2
    .parameter "child"

    .prologue
    .line 726
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 727
    check-cast p1, Lcom/vlingo/client/scroller/ScrollableItem;

    .end local p1
    invoke-interface {p1, p0}, Lcom/vlingo/client/scroller/ScrollableItem;->setScrollableContainer(Lcom/vlingo/client/scroller/ScrollableContainer;)V

    .line 728
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 3
    .parameter "child"
    .parameter "index"

    .prologue
    .line 731
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 732
    check-cast p1, Lcom/vlingo/client/scroller/ScrollableItem;

    .end local p1
    invoke-interface {p1, p0}, Lcom/vlingo/client/scroller/ScrollableItem;->setScrollableContainer(Lcom/vlingo/client/scroller/ScrollableContainer;)V

    .line 733
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .registers 4
    .parameter "child"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 741
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 742
    check-cast p1, Lcom/vlingo/client/scroller/ScrollableItem;

    .end local p1
    invoke-interface {p1, p0}, Lcom/vlingo/client/scroller/ScrollableItem;->setScrollableContainer(Lcom/vlingo/client/scroller/ScrollableContainer;)V

    .line 743
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 736
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 737
    check-cast p1, Lcom/vlingo/client/scroller/ScrollableItem;

    .end local p1
    invoke-interface {p1, p0}, Lcom/vlingo/client/scroller/ScrollableItem;->setScrollableContainer(Lcom/vlingo/client/scroller/ScrollableContainer;)V

    .line 738
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .parameter "child"
    .parameter "params"

    .prologue
    .line 746
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 747
    check-cast p1, Lcom/vlingo/client/scroller/ScrollableItem;

    .end local p1
    invoke-interface {p1, p0}, Lcom/vlingo/client/scroller/ScrollableItem;->setScrollableContainer(Lcom/vlingo/client/scroller/ScrollableContainer;)V

    .line 748
    return-void
.end method

.method public computeScroll()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 213
    iget-object v0, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 214
    iget-object v0, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/scroller/ScrollableContainer;->scrollTo(II)V

    .line 215
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->postInvalidate()V

    .line 241
    :cond_1b
    :goto_1b
    return-void

    .line 216
    :cond_1c
    iget v0, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mNextScreen:I

    if-eq v0, v3, :cond_1b

    .line 218
    const/4 v0, 0x0

    iget v1, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mNextScreen:I

    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mCurrentScreen:I

    .line 222
    invoke-direct {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->notifyScreenChanged()V

    .line 239
    iput v3, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mNextScreen:I

    goto :goto_1b
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "canvas"

    .prologue
    const/4 v5, 0x1

    .line 250
    iget v6, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mTouchState:I

    if-eq v6, v5, :cond_1b

    iget v6, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mNextScreen:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1b

    move v3, v5

    .line 252
    .local v3, fastDraw:Z
    :goto_b
    if-eqz v3, :cond_1d

    .line 253
    iget v5, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mCurrentScreen:I

    invoke-virtual {p0, v5}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getDrawingTime()J

    move-result-wide v6

    invoke-virtual {p0, p1, v5, v6, v7}, Lcom/vlingo/client/scroller/ScrollableContainer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 269
    :cond_1a
    :goto_1a
    return-void

    .line 250
    .end local v3           #fastDraw:Z
    :cond_1b
    const/4 v3, 0x0

    goto :goto_b

    .line 255
    .restart local v3       #fastDraw:Z
    :cond_1d
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getDrawingTime()J

    move-result-wide v1

    .line 257
    .local v1, drawingTime:J
    iget v6, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mNextScreen:I

    if-ltz v6, :cond_4b

    iget v6, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mNextScreen:I

    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_4b

    iget v6, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mCurrentScreen:I

    iget v7, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mNextScreen:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ne v6, v5, :cond_4b

    .line 259
    iget v5, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mCurrentScreen:I

    invoke-virtual {p0, v5}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/vlingo/client/scroller/ScrollableContainer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 260
    iget v5, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mNextScreen:I

    invoke-virtual {p0, v5}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/vlingo/client/scroller/ScrollableContainer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1a

    .line 263
    :cond_4b
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildCount()I

    move-result v0

    .line 264
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_50
    if-ge v4, v0, :cond_1a

    .line 265
    invoke-virtual {p0, v4}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/vlingo/client/scroller/ScrollableContainer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 264
    add-int/lit8 v4, v4, 0x1

    goto :goto_50
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 792
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 793
    .local v0, handled:Z
    if-eqz v0, :cond_8

    .line 794
    const/4 v1, 0x1

    .line 796
    :goto_7
    return v1

    :cond_8
    invoke-virtual {p0, p1}, Lcom/vlingo/client/scroller/ScrollableContainer;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_7
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 6
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 329
    const/16 v1, 0x11

    if-ne p2, v1, :cond_15

    .line 330
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getCurrentScreenIndex()I

    move-result v1

    if-lez v1, :cond_2f

    .line 331
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getCurrentScreenIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/vlingo/client/scroller/ScrollableContainer;->snapToScreen(I)V

    .line 340
    :goto_14
    return v0

    .line 334
    :cond_15
    const/16 v1, 0x42

    if-ne p2, v1, :cond_2f

    .line 335
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getCurrentScreenIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2f

    .line 336
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getCurrentScreenIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/vlingo/client/scroller/ScrollableContainer;->snapToScreen(I)V

    goto :goto_14

    .line 340
    :cond_2f
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_14
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 800
    const/4 v0, 0x0

    .line 801
    .local v0, bHandled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_12

    .line 815
    :goto_8
    return v0

    .line 806
    :pswitch_9
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->scrollLeft()V

    goto :goto_8

    .line 811
    :pswitch_d
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->scrollRight()V

    goto :goto_8

    .line 801
    nop

    :pswitch_data_12
    .packed-switch 0x15
        :pswitch_9
        :pswitch_d
    .end packed-switch
.end method

.method public getAllScrollableItems()[Lcom/vlingo/client/scroller/ScrollableItem;
    .registers 4

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildCount()I

    move-result v2

    new-array v1, v2, [Lcom/vlingo/client/scroller/ScrollableItem;

    .line 156
    .local v1, items:[Lcom/vlingo/client/scroller/ScrollableItem;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_18

    .line 157
    invoke-virtual {p0, v0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/scroller/ScrollableItem;

    aput-object v2, v1, v0

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 159
    :cond_18
    return-object v1
.end method

.method public getChangeListener()Lcom/vlingo/client/scroller/ScrollableItemChangeListener;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->changeListener:Lcom/vlingo/client/scroller/ScrollableItemChangeListener;

    return-object v0
.end method

.method public getCurrentItem()Lcom/vlingo/client/scroller/ScrollableItem;
    .registers 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/scroller/ScrollableItem;

    return-object v0
.end method

.method public getCurrentScreen()Landroid/view/View;
    .registers 2

    .prologue
    .line 147
    iget v0, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentScreenIndex()I
    .registers 2

    .prologue
    .line 143
    iget v0, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mCurrentScreen:I

    return v0
.end method

.method public getItemAtIndex(I)Lcom/vlingo/client/scroller/ScrollableItem;
    .registers 3
    .parameter "index"

    .prologue
    .line 651
    invoke-virtual {p0, p1}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/scroller/ScrollableItem;

    return-object v0
.end method

.method public getScreenStack()Ljava/util/Stack;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack",
            "<",
            "Lcom/vlingo/client/scroller/ScrollableItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    const/4 v1, 0x0

    .line 114
    .local v1, itemStack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/vlingo/client/scroller/ScrollableItem;>;"
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1d

    .line 115
    new-instance v1, Ljava/util/Stack;

    .end local v1           #itemStack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/vlingo/client/scroller/ScrollableItem;>;"
    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 116
    .restart local v1       #itemStack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/vlingo/client/scroller/ScrollableItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 117
    invoke-virtual {p0, v0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getItemAtIndex(I)Lcom/vlingo/client/scroller/ScrollableItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 120
    .end local v0           #i:I
    :cond_1d
    return-object v1
.end method

.method public indexOfItem(Lcom/vlingo/client/scroller/ScrollableItem;)I
    .registers 3
    .parameter "item"

    .prologue
    .line 673
    check-cast p1, Landroid/view/View;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/vlingo/client/scroller/ScrollableContainer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public init()V
    .registers 8

    .prologue
    .line 95
    new-instance v5, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mScroller:Landroid/widget/Scroller;

    .line 96
    iget v5, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mDefaultScreen:I

    iput v5, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mCurrentScreen:I

    .line 98
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 99
    .local v1, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mTouchSlop:I

    .line 100
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v5

    iput v5, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mMaximumVelocity:I

    .line 102
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildCount()I

    move-result v2

    .line 103
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_28
    if-ge v3, v2, :cond_37

    .line 104
    invoke-virtual {p0, v3}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, child:Landroid/view/View;
    move-object v4, v0

    .line 105
    check-cast v4, Lcom/vlingo/client/scroller/ScrollableItem;

    .line 106
    .local v4, item:Lcom/vlingo/client/scroller/ScrollableItem;
    invoke-interface {v4, p0}, Lcom/vlingo/client/scroller/ScrollableItem;->setScrollableContainer(Lcom/vlingo/client/scroller/ScrollableContainer;)V

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 109
    .end local v0           #child:Landroid/view/View;
    .end local v4           #item:Lcom/vlingo/client/scroller/ScrollableItem;
    :cond_37
    invoke-direct {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->notifyScreenChanged()V

    .line 110
    return-void
.end method

.method public isDefaultScreenShowing()Z
    .registers 3

    .prologue
    .line 134
    iget v0, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mCurrentScreen:I

    iget v1, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mDefaultScreen:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public lock()V
    .registers 2

    .prologue
    .line 669
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mLocked:Z

    .line 670
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter "ev"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 387
    iget-boolean v8, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mLocked:Z

    if-eqz v8, :cond_7

    .line 455
    :cond_6
    :goto_6
    return v10

    .line 400
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 401
    .local v0, action:I
    const/4 v8, 0x2

    if-ne v0, v8, :cond_12

    iget v8, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mTouchState:I

    if-nez v8, :cond_6

    .line 405
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 406
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 408
    .local v5, y:F
    packed-switch v0, :pswitch_data_60

    .line 455
    :cond_1d
    :goto_1d
    iget v8, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mTouchState:I

    if-nez v8, :cond_6

    move v10, v9

    goto :goto_6

    .line 417
    :pswitch_23
    iget v8, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mLastMotionX:F

    sub-float v8, v2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v3, v8

    .line 418
    .local v3, xDiff:I
    iget v8, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mLastMotionY:F

    sub-float v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v6, v8

    .line 420
    .local v6, yDiff:I
    iget v1, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mTouchSlop:I

    .line 421
    .local v1, touchSlop:I
    if-le v3, v1, :cond_46

    move v4, v10

    .line 422
    .local v4, xMoved:Z
    :goto_3a
    if-le v6, v1, :cond_48

    move v7, v10

    .line 424
    .local v7, yMoved:Z
    :goto_3d
    if-nez v4, :cond_41

    if-eqz v7, :cond_1d

    .line 426
    :cond_41
    if-eqz v4, :cond_1d

    .line 428
    iput v10, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mTouchState:I

    goto :goto_1d

    .end local v4           #xMoved:Z
    .end local v7           #yMoved:Z
    :cond_46
    move v4, v9

    .line 421
    goto :goto_3a

    .restart local v4       #xMoved:Z
    :cond_48
    move v7, v9

    .line 422
    goto :goto_3d

    .line 435
    .end local v1           #touchSlop:I
    .end local v3           #xDiff:I
    .end local v4           #xMoved:Z
    .end local v6           #yDiff:I
    :pswitch_4a
    iput v2, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mLastMotionX:F

    .line 436
    iput v5, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mLastMotionY:F

    .line 442
    iget-object v8, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-eqz v8, :cond_5a

    move v8, v9

    :goto_57
    iput v8, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mTouchState:I

    goto :goto_1d

    :cond_5a
    move v8, v10

    goto :goto_57

    .line 448
    :pswitch_5c
    iput v9, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mTouchState:I

    goto :goto_1d

    .line 408
    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_5c
        :pswitch_23
        :pswitch_5c
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v7, 0x0

    .line 298
    const/4 v1, 0x0

    .line 300
    .local v1, childLeft:I
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildCount()I

    move-result v3

    .line 301
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_7
    if-ge v4, v3, :cond_26

    .line 302
    invoke-virtual {p0, v4}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 303
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_23

    .line 304
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 305
    .local v2, childWidth:I
    add-int v5, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v0, v1, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 306
    add-int/2addr v1, v2

    .line 301
    .end local v2           #childWidth:I
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 312
    .end local v0           #child:Landroid/view/View;
    :cond_26
    iget v5, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mCurrentScreen:I

    sub-int v6, p4, p2

    mul-int/2addr v5, v6

    invoke-virtual {p0, v5, v7}, Lcom/vlingo/client/scroller/ScrollableContainer;->scrollTo(II)V

    .line 315
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v4, 0x4000

    .line 272
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 275
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 276
    .local v3, widthMode:I
    if-eq v3, v4, :cond_13

    .line 277
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 280
    :cond_13
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 281
    .local v1, heightMode:I
    if-eq v1, v4, :cond_21

    .line 282
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 286
    :cond_21
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildCount()I

    move-result v0

    .line 287
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_26
    if-ge v2, v0, :cond_32

    .line 288
    invoke-virtual {p0, v2}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    .line 287
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 295
    :cond_32
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 7
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 345
    iget v2, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mNextScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    .line 346
    iget v1, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mNextScreen:I

    .line 351
    .local v1, focusableScreen:I
    :goto_7
    invoke-virtual {p0, v1}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 352
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_10

    .line 353
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 358
    :cond_10
    const/4 v2, 0x0

    return v2

    .line 348
    .end local v0           #child:Landroid/view/View;
    .end local v1           #focusableScreen:I
    :cond_12
    iget v1, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mCurrentScreen:I

    .restart local v1       #focusableScreen:I
    goto :goto_7
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .parameter "ev"

    .prologue
    .line 464
    iget-object v12, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v12}, Landroid/widget/Scroller;->isFinished()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 465
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mScrollLock:Z

    .line 467
    :cond_b
    iget-boolean v12, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mLocked:Z

    if-nez v12, :cond_13

    iget-boolean v12, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mScrollLock:Z

    if-eqz v12, :cond_15

    .line 468
    :cond_13
    const/4 v12, 0x1

    .line 556
    :goto_14
    return v12

    .line 471
    :cond_15
    iget-object v12, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v12, :cond_1f

    .line 472
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v12

    iput-object v12, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 474
    :cond_1f
    iget-object v12, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 476
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 477
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 478
    .local v6, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 480
    .local v9, y:F
    packed-switch v0, :pswitch_data_108

    .line 556
    :cond_33
    :goto_33
    const/4 v12, 0x1

    goto :goto_14

    .line 486
    :pswitch_35
    iget-object v12, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v12}, Landroid/widget/Scroller;->isFinished()Z

    move-result v12

    if-nez v12, :cond_42

    .line 487
    iget-object v12, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v12}, Landroid/widget/Scroller;->abortAnimation()V

    .line 491
    :cond_42
    iput v6, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mLastMotionX:F

    goto :goto_33

    .line 494
    :pswitch_45
    iget v12, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mTouchState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_8c

    .line 496
    iget v12, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mLastMotionX:F

    sub-float/2addr v12, v6

    float-to-int v2, v12

    .line 497
    .local v2, deltaX:I
    iput v6, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mLastMotionX:F

    .line 499
    if-gez v2, :cond_66

    .line 500
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getScrollX()I

    move-result v12

    if-lez v12, :cond_33

    .line 501
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getScrollX()I

    move-result v12

    neg-int v12, v12

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Lcom/vlingo/client/scroller/ScrollableContainer;->scrollBy(II)V

    goto :goto_33

    .line 503
    :cond_66
    if-lez v2, :cond_33

    .line 504
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {p0, v12}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getScrollX()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getWidth()I

    move-result v13

    sub-int v1, v12, v13

    .line 506
    .local v1, availableToScroll:I
    if-lez v1, :cond_33

    .line 507
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Lcom/vlingo/client/scroller/ScrollableContainer;->scrollBy(II)V

    goto :goto_33

    .line 513
    .end local v1           #availableToScroll:I
    .end local v2           #deltaX:I
    :cond_8c
    iget v12, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mLastMotionX:F

    sub-float v12, v6, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    float-to-int v7, v12

    .line 514
    .local v7, xDiff:I
    iget v12, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mLastMotionY:F

    sub-float v12, v9, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    float-to-int v10, v12

    .line 516
    .local v10, yDiff:I
    iget v3, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mTouchSlop:I

    .line 517
    .local v3, touchSlop:I
    if-le v7, v3, :cond_b0

    const/4 v8, 0x1

    .line 518
    .local v8, xMoved:Z
    :goto_a3
    if-le v10, v3, :cond_b2

    const/4 v11, 0x1

    .line 520
    .local v11, yMoved:Z
    :goto_a6
    if-nez v8, :cond_aa

    if-eqz v11, :cond_33

    .line 522
    :cond_aa
    if-eqz v8, :cond_33

    .line 524
    const/4 v12, 0x1

    iput v12, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mTouchState:I

    goto :goto_33

    .line 517
    .end local v8           #xMoved:Z
    .end local v11           #yMoved:Z
    :cond_b0
    const/4 v8, 0x0

    goto :goto_a3

    .line 518
    .restart local v8       #xMoved:Z
    :cond_b2
    const/4 v11, 0x0

    goto :goto_a6

    .line 530
    .end local v3           #touchSlop:I
    .end local v7           #xDiff:I
    .end local v8           #xMoved:Z
    .end local v10           #yDiff:I
    :pswitch_b4
    iget v12, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mTouchState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e3

    .line 531
    iget-object v4, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 532
    .local v4, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v12, 0x3e8

    iget v13, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mMaximumVelocity:I

    int-to-float v13, v13

    invoke-virtual {v4, v12, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 533
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v12

    float-to-int v5, v12

    .line 535
    .local v5, velocityX:I
    const/16 v12, 0x3e8

    if-le v5, v12, :cond_e8

    iget v12, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mCurrentScreen:I

    if-lez v12, :cond_e8

    .line 537
    iget v12, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mCurrentScreen:I

    add-int/lit8 v12, v12, -0x1

    invoke-direct {p0, v12}, Lcom/vlingo/client/scroller/ScrollableContainer;->snapToScreen(I)V

    .line 545
    :goto_d7
    iget-object v12, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v12, :cond_e3

    .line 546
    iget-object v12, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12}, Landroid/view/VelocityTracker;->recycle()V

    .line 547
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 550
    .end local v4           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v5           #velocityX:I
    :cond_e3
    const/4 v12, 0x0

    iput v12, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mTouchState:I

    goto/16 :goto_33

    .line 538
    .restart local v4       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v5       #velocityX:I
    :cond_e8
    const/16 v12, -0x3e8

    if-ge v5, v12, :cond_fe

    iget v12, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ge v12, v13, :cond_fe

    .line 540
    iget v12, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mCurrentScreen:I

    add-int/lit8 v12, v12, 0x1

    invoke-direct {p0, v12}, Lcom/vlingo/client/scroller/ScrollableContainer;->snapToScreen(I)V

    goto :goto_d7

    .line 542
    :cond_fe
    invoke-direct {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->snapToDestination()V

    goto :goto_d7

    .line 553
    .end local v4           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v5           #velocityX:I
    :pswitch_102
    const/4 v12, 0x0

    iput v12, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mTouchState:I

    goto/16 :goto_33

    .line 480
    nop

    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_35
        :pswitch_b4
        :pswitch_45
        :pswitch_102
    .end packed-switch
.end method

.method public removeAllViews()V
    .registers 3

    .prologue
    .line 784
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildCount()I

    move-result v0

    if-lez v0, :cond_e

    .line 785
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/scroller/ScrollableContainer;->removeViews(II)V

    .line 787
    :cond_e
    return-void
.end method

.method public removeItem(Lcom/vlingo/client/scroller/ScrollableItem;)V
    .registers 6
    .parameter "item"

    .prologue
    .line 688
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildCount()I

    move-result v2

    .line 689
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5
    if-ge v3, v2, :cond_13

    .line 690
    invoke-virtual {p0, v3}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, child:Landroid/view/View;
    move-object v1, v0

    .line 691
    check-cast v1, Lcom/vlingo/client/scroller/ScrollableItem;

    .line 692
    .local v1, childItem:Lcom/vlingo/client/scroller/ScrollableItem;
    if-ne p1, v1, :cond_14

    .line 693
    invoke-virtual {p0, v0}, Lcom/vlingo/client/scroller/ScrollableContainer;->removeView(Landroid/view/View;)V

    .line 697
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childItem:Lcom/vlingo/client/scroller/ScrollableItem;
    :cond_13
    return-void

    .line 689
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #childItem:Lcom/vlingo/client/scroller/ScrollableItem;
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_5
.end method

.method public removeItemsStartingAtIndex(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildCount()I

    move-result v1

    sub-int v0, v1, p1

    .line 678
    .local v0, count:I
    if-lez v0, :cond_b

    .line 679
    invoke-virtual {p0, p1, v0}, Lcom/vlingo/client/scroller/ScrollableContainer;->removeViews(II)V

    .line 680
    :cond_b
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 751
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    move-object v0, p1

    .line 752
    check-cast v0, Lcom/vlingo/client/scroller/ScrollableItem;

    invoke-interface {v0, v1}, Lcom/vlingo/client/scroller/ScrollableItem;->setScrollableContainer(Lcom/vlingo/client/scroller/ScrollableContainer;)V

    move-object v0, p1

    .line 753
    check-cast v0, Lcom/vlingo/client/scroller/ScrollableItem;

    invoke-interface {v0}, Lcom/vlingo/client/scroller/ScrollableItem;->onRemoved()V

    .line 754
    iget-object v0, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->lastItem:Lcom/vlingo/client/scroller/ScrollableItem;

    check-cast p1, Lcom/vlingo/client/scroller/ScrollableItem;

    .end local p1
    if-ne v0, p1, :cond_18

    .line 755
    iput-object v1, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->lastItem:Lcom/vlingo/client/scroller/ScrollableItem;

    .line 756
    :cond_18
    return-void
.end method

.method public removeViewAt(I)V
    .registers 5
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 759
    invoke-virtual {p0, p1}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 760
    .local v0, view:Landroid/view/View;
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    move-object v1, v0

    .line 761
    check-cast v1, Lcom/vlingo/client/scroller/ScrollableItem;

    invoke-interface {v1, v2}, Lcom/vlingo/client/scroller/ScrollableItem;->setScrollableContainer(Lcom/vlingo/client/scroller/ScrollableContainer;)V

    move-object v1, v0

    .line 762
    check-cast v1, Lcom/vlingo/client/scroller/ScrollableItem;

    invoke-interface {v1}, Lcom/vlingo/client/scroller/ScrollableItem;->onRemoved()V

    .line 763
    iget-object v1, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->lastItem:Lcom/vlingo/client/scroller/ScrollableItem;

    check-cast v0, Lcom/vlingo/client/scroller/ScrollableItem;

    .end local v0           #view:Landroid/view/View;
    if-ne v1, v0, :cond_1c

    .line 764
    iput-object v2, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->lastItem:Lcom/vlingo/client/scroller/ScrollableItem;

    .line 765
    :cond_1c
    return-void
.end method

.method public removeViews(II)V
    .registers 10
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v6, 0x0

    .line 768
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 769
    .local v4, items:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/scroller/ScrollableItem;>;"
    move v0, p1

    .local v0, i:I
    move v1, v0

    .line 770
    .end local v0           #i:I
    .local v1, i:I
    :goto_8
    add-int v5, p1, p2

    if-ge v1, v5, :cond_19

    .line 771
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {p0, v1}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vlingo/client/scroller/ScrollableItem;

    .line 772
    .local v3, item:Lcom/vlingo/client/scroller/ScrollableItem;
    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move v1, v0

    .line 773
    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_8

    .line 774
    .end local v3           #item:Lcom/vlingo/client/scroller/ScrollableItem;
    :cond_19
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->removeViews(II)V

    .line 775
    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vlingo/client/scroller/ScrollableItem;

    .line 776
    .restart local v3       #item:Lcom/vlingo/client/scroller/ScrollableItem;
    invoke-interface {v3, v6}, Lcom/vlingo/client/scroller/ScrollableItem;->setScrollableContainer(Lcom/vlingo/client/scroller/ScrollableContainer;)V

    .line 777
    invoke-interface {v3}, Lcom/vlingo/client/scroller/ScrollableItem;->onRemoved()V

    .line 778
    iget-object v5, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->lastItem:Lcom/vlingo/client/scroller/ScrollableItem;

    if-ne v5, v3, :cond_20

    .line 779
    iput-object v6, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->lastItem:Lcom/vlingo/client/scroller/ScrollableItem;

    goto :goto_20

    .line 781
    .end local v3           #item:Lcom/vlingo/client/scroller/ScrollableItem;
    :cond_39
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 318
    invoke-virtual {p0, p1}, Lcom/vlingo/client/scroller/ScrollableContainer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 319
    .local v0, screen:I
    iget v1, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mCurrentScreen:I

    if-ne v0, v1, :cond_10

    iget-object v1, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_12

    .line 323
    :cond_10
    const/4 v1, 0x1

    .line 325
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public scrollLeft()V
    .registers 3

    .prologue
    .line 591
    iget v0, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mNextScreen:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    iget v0, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mCurrentScreen:I

    if-lez v0, :cond_18

    iget-object v0, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 592
    iget v0, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mCurrentScreen:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/vlingo/client/scroller/ScrollableContainer;->snapToScreen(I)V

    .line 594
    :cond_18
    return-void
.end method

.method public scrollRight()V
    .registers 3

    .prologue
    .line 597
    iget v0, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mNextScreen:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    iget v0, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1e

    iget-object v0, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 599
    iget v0, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/vlingo/client/scroller/ScrollableContainer;->snapToScreen(I)V

    .line 601
    :cond_1e
    return-void
.end method

.method public scrollToItem(Lcom/vlingo/client/scroller/ScrollableItem;)V
    .registers 6
    .parameter "screen"

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildCount()I

    move-result v1

    .line 611
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_13

    .line 612
    invoke-virtual {p0, v2}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, child:Landroid/view/View;
    move-object v3, v0

    .line 613
    check-cast v3, Lcom/vlingo/client/scroller/ScrollableItem;

    .line 614
    .local v3, item:Lcom/vlingo/client/scroller/ScrollableItem;
    if-ne p1, v3, :cond_14

    .line 615
    invoke-virtual {p0, v2}, Lcom/vlingo/client/scroller/ScrollableContainer;->scrollToScreenAtIndex(I)V

    .line 619
    .end local v0           #child:Landroid/view/View;
    .end local v3           #item:Lcom/vlingo/client/scroller/ScrollableItem;
    :cond_13
    return-void

    .line 611
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #item:Lcom/vlingo/client/scroller/ScrollableItem;
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method public scrollToScreenAtIndex(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_11

    iget-object v0, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 605
    invoke-direct {p0, p1}, Lcom/vlingo/client/scroller/ScrollableContainer;->snapToScreen(I)V

    .line 607
    :cond_11
    return-void
.end method

.method public setChangeListener(Lcom/vlingo/client/scroller/ScrollableItemChangeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->changeListener:Lcom/vlingo/client/scroller/ScrollableItemChangeListener;

    .line 87
    return-void
.end method

.method public setCurrentItem(Lcom/vlingo/client/scroller/ScrollableItem;)V
    .registers 6
    .parameter "item"

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildCount()I

    move-result v2

    .line 202
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5
    if-ge v3, v2, :cond_13

    .line 203
    invoke-virtual {p0, v3}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, child:Landroid/view/View;
    move-object v1, v0

    .line 204
    check-cast v1, Lcom/vlingo/client/scroller/ScrollableItem;

    .line 205
    .local v1, childItem:Lcom/vlingo/client/scroller/ScrollableItem;
    if-ne p1, v1, :cond_14

    .line 206
    invoke-virtual {p0, v3}, Lcom/vlingo/client/scroller/ScrollableContainer;->setCurrentScreenIndex(I)V

    .line 210
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childItem:Lcom/vlingo/client/scroller/ScrollableItem;
    :cond_13
    return-void

    .line 202
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #childItem:Lcom/vlingo/client/scroller/ScrollableItem;
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_5
.end method

.method public setCurrentScreenIndex(I)V
    .registers 5
    .parameter "currentScreen"

    .prologue
    const/4 v2, 0x0

    .line 194
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mCurrentScreen:I

    .line 195
    iget v0, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/vlingo/client/scroller/ScrollableContainer;->scrollTo(II)V

    .line 196
    invoke-virtual {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->invalidate()V

    .line 197
    invoke-direct {p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->notifyScreenChanged()V

    .line 198
    return-void
.end method

.method public unlock()V
    .registers 2

    .prologue
    .line 660
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/scroller/ScrollableContainer;->mLocked:Z

    .line 661
    return-void
.end method
