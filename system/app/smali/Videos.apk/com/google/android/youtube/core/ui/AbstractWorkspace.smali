.class public abstract Lcom/google/android/youtube/core/ui/AbstractWorkspace;
.super Landroid/view/ViewGroup;
.source "AbstractWorkspace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;,
        Lcom/google/android/youtube/core/ui/AbstractWorkspace$OnTabSelectedListener;,
        Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;
    }
.end annotation


# instance fields
.field private listener:Lcom/google/android/youtube/core/ui/AbstractWorkspace$OnTabSelectedListener;

.field private mActivePointerId:I

.field private mAllowLongPress:Z

.field private mCurrentScreen:I

.field private mDefaultScreen:I

.field private mDownMotionX:F

.field mFilterWindowEnabler:Ljava/lang/Runnable;

.field private mFirstLayout:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMaximumVelocity:I

.field private mNextScreen:I

.field private mPagingTouchSlop:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mTouchSlop:I

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput-boolean v2, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mFirstLayout:Z

    .line 49
    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mNextScreen:I

    .line 60
    iput v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mTouchState:I

    .line 62
    iput-boolean v2, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mAllowLongPress:Z

    .line 70
    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mActivePointerId:I

    .line 680
    new-instance v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$1;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace$1;-><init>(Lcom/google/android/youtube/core/ui/AbstractWorkspace;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mFilterWindowEnabler:Ljava/lang/Runnable;

    .line 93
    iput v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mDefaultScreen:I

    .line 95
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->setHapticFeedbackEnabled(Z)V

    .line 96
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->setHorizontalFadingEdgeEnabled(Z)V

    .line 97
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->initWorkspace()V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/core/ui/AbstractWorkspace;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    return v0
.end method

.method private initWorkspace()V
    .registers 4

    .prologue
    .line 104
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mScroller:Landroid/widget/Scroller;

    .line 105
    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mDefaultScreen:I

    iput v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    .line 107
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 108
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mTouchSlop:I

    .line 111
    const/16 v1, 0x32

    iput v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mPagingTouchSlop:I

    .line 112
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mMaximumVelocity:I

    .line 113
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 7
    .parameter "ev"

    .prologue
    .line 502
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 504
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 505
    .local v1, pointerId:I
    iget v3, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mActivePointerId:I

    if-ne v1, v3, :cond_32

    .line 509
    if-nez v2, :cond_33

    const/4 v0, 0x1

    .line 510
    .local v0, newPointerIndex:I
    :goto_15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mDownMotionX:F

    iput v3, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mLastMotionX:F

    .line 511
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mLastMotionY:F

    .line 512
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mActivePointerId:I

    .line 513
    iget-object v3, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_32

    .line 514
    iget-object v3, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 517
    .end local v0           #newPointerIndex:I
    :cond_32
    return-void

    .line 509
    :cond_33
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private snapToDestination()V
    .registers 5

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScrollWidth()I

    move-result v0

    .line 626
    .local v0, screenWidth:I
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScrollX()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    div-int v1, v2, v0

    .line 628
    .local v1, whichScreen:I
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->snapToScreenByFling(I)V

    .line 629
    return-void
.end method

.method private snapToScreen(ILcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;)V
    .registers 14
    .parameter "whichScreen"
    .parameter "selectionMethod"

    .prologue
    const/4 v2, 0x0

    .line 640
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 642
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 644
    .local v8, screenDelta:I
    iput p1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mNextScreen:I

    .line 646
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    .line 647
    .local v6, focusedChild:Landroid/view/View;
    if-eqz v6, :cond_2c

    if-eqz v8, :cond_2c

    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v6, v0, :cond_2c

    .line 649
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 652
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScrollWidth()I

    move-result v0

    mul-int v7, p1, v0

    .line 653
    .local v7, newX:I
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScrollX()I

    move-result v1

    .line 654
    .local v1, sX:I
    sub-int v3, v7, v1

    .line 655
    .local v3, delta:I
    mul-int/lit16 v5, v8, 0x12c

    .line 656
    .local v5, duration:I
    invoke-virtual {p0, v5}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->awakenScrollBars(I)Z

    .line 657
    if-nez v5, :cond_43

    .line 658
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 661
    :cond_43
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mNextScreen:I

    iget v4, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    if-eq v0, v4, :cond_60

    .line 663
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 667
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mFilterWindowEnabler:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 668
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mFilterWindowEnabler:Ljava/lang/Runnable;

    add-int/lit8 v4, v5, 0xa

    int-to-long v9, v4

    invoke-virtual {p0, v0, v9, v10}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 671
    :cond_60
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_6d

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 672
    :cond_6d
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mScroller:Landroid/widget/Scroller;

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 673
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->selectTab(I)V

    .line 674
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->invalidate()V

    .line 675
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->listener:Lcom/google/android/youtube/core/ui/AbstractWorkspace$OnTabSelectedListener;

    if-eqz v0, :cond_82

    .line 676
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->listener:Lcom/google/android/youtube/core/ui/AbstractWorkspace$OnTabSelectedListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/ui/AbstractWorkspace$OnTabSelectedListener;->onTabSelected(ILcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;)V

    .line 678
    :cond_82
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 6
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
    .line 361
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 362
    const/16 v0, 0x11

    if-ne p2, v0, :cond_1d

    .line 363
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    if-lez v0, :cond_1c

    .line 364
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 371
    :cond_1c
    :goto_1c
    return-void

    .line 366
    :cond_1d
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1c

    .line 367
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1c

    .line 368
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_1c
.end method

.method public addView(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 121
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 122
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 123
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 4
    .parameter "child"
    .parameter "index"

    .prologue
    .line 127
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 128
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 129
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .registers 5
    .parameter "child"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 139
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 140
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 141
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 134
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 135
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .parameter "child"
    .parameter "params"

    .prologue
    .line 145
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 146
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    return-void
.end method

.method public allowLongPress()Z
    .registers 2

    .prologue
    .line 739
    iget-boolean v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mAllowLongPress:Z

    return v0
.end method

.method public computeScroll()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 216
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 217
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->scrollTo(II)V

    .line 218
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->postInvalidate()V

    .line 223
    :cond_1b
    :goto_1b
    return-void

    .line 219
    :cond_1c
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mNextScreen:I

    if-eq v0, v3, :cond_1b

    .line 220
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mNextScreen:I

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    .line 221
    iput v3, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mNextScreen:I

    goto :goto_1b
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter "canvas"

    .prologue
    const/4 v7, 0x1

    .line 227
    const/4 v5, 0x0

    .line 228
    .local v5, restore:Z
    const/4 v6, 0x0

    .line 235
    .local v6, restoreCount:I
    iget v8, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mTouchState:I

    if-eq v8, v7, :cond_22

    iget v8, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mNextScreen:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_22

    move v3, v7

    .line 237
    .local v3, fastDraw:Z
    :goto_d
    if-eqz v3, :cond_24

    .line 238
    iget v7, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    invoke-virtual {p0, v7}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getDrawingTime()J

    move-result-wide v8

    invoke-virtual {p0, p1, v7, v8, v9}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 255
    :cond_1c
    :goto_1c
    if-eqz v5, :cond_21

    .line 256
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 258
    :cond_21
    return-void

    .line 235
    .end local v3           #fastDraw:Z
    :cond_22
    const/4 v3, 0x0

    goto :goto_d

    .line 240
    .restart local v3       #fastDraw:Z
    :cond_24
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getDrawingTime()J

    move-result-wide v1

    .line 242
    .local v1, drawingTime:J
    iget v8, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mNextScreen:I

    if-ltz v8, :cond_52

    iget v8, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mNextScreen:I

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScreenCount()I

    move-result v9

    if-ge v8, v9, :cond_52

    iget v8, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    iget v9, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mNextScreen:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v7, :cond_52

    .line 244
    iget v7, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    invoke-virtual {p0, v7}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v1, v2}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 245
    iget v7, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mNextScreen:I

    invoke-virtual {p0, v7}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v1, v2}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1c

    .line 248
    :cond_52
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildCount()I

    move-result v0

    .line 249
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_57
    if-ge v4, v0, :cond_1c

    .line 250
    invoke-virtual {p0, v4}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v1, v2}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 249
    add-int/lit8 v4, v4, 0x1

    goto :goto_57
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 6
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 345
    const/16 v1, 0x11

    if-ne p2, v1, :cond_11

    .line 346
    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    if-lez v1, :cond_27

    .line 347
    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->snapToScreenByFling(I)V

    .line 356
    :goto_10
    return v0

    .line 350
    :cond_11
    const/16 v1, 0x42

    if-ne p2, v1, :cond_27

    .line 351
    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_27

    .line 352
    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->snapToScreenByFling(I)V

    goto :goto_10

    .line 356
    :cond_27
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_10
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .registers 6
    .parameter "focused"

    .prologue
    .line 382
    iget v3, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    invoke-virtual {p0, v3}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    .line 383
    .local v0, current:Landroid/view/View;
    move-object v2, p1

    .line 385
    .local v2, v:Landroid/view/View;
    :goto_7
    if-ne v2, v0, :cond_d

    .line 386
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 396
    :cond_c
    return-void

    .line 389
    :cond_d
    if-eq v2, p0, :cond_c

    .line 392
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 393
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_c

    .line 394
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #v:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2       #v:Landroid/view/View;
    goto :goto_7
.end method

.method getScreenAt(I)Landroid/view/View;
    .registers 3
    .parameter "index"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_9

    .line 180
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 182
    :goto_8
    return-object v0

    :cond_9
    mul-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_8
.end method

.method getScreenCount()I
    .registers 3

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildCount()I

    move-result v0

    .line 172
    .local v0, numchildren:I
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_c

    .line 173
    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v0, v1, 0x2

    .line 175
    .end local v0           #numchildren:I
    :cond_c
    return v0
.end method

.method public getScreenForView(Landroid/view/View;)I
    .registers 7
    .parameter "v"

    .prologue
    .line 722
    const/4 v2, -0x1

    .line 723
    .local v2, result:I
    if-eqz p1, :cond_18

    .line 724
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 725
    .local v3, vp:Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildCount()I

    move-result v0

    .line 726
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v0, :cond_18

    .line 727
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_15

    .line 732
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :goto_14
    return v1

    .line 726
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v3       #vp:Landroid/view/ViewParent;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :cond_18
    move v1, v2

    .line 732
    goto :goto_14
.end method

.method getScrollWidth()I
    .registers 3

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getWidth()I

    move-result v0

    .line 187
    .local v0, w:I
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_f

    .line 188
    iget-object v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 190
    :cond_f
    return v0
.end method

.method public getSelectedTabIndex()I
    .registers 2

    .prologue
    .line 157
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    return v0
.end method

.method public getTabIndex(I)I
    .registers 4
    .parameter "tabViewId"

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 162
    .local v0, selectedView:Landroid/view/View;
    if-eqz v0, :cond_b

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    :goto_a
    return v1

    :cond_b
    const/4 v1, -0x1

    goto :goto_a
.end method

.method public getTabViewId(I)I
    .registers 4
    .parameter "tabIndex"

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, tabView:Landroid/view/View;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .parameter "ev"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 414
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 415
    .local v0, action:I
    const/4 v11, 0x2

    if-ne v0, v11, :cond_e

    iget v11, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mTouchState:I

    if-eqz v11, :cond_e

    .line 498
    :cond_d
    :goto_d
    return v13

    .line 419
    :cond_e
    and-int/lit16 v11, v0, 0xff

    packed-switch v11, :pswitch_data_98

    .line 498
    :cond_13
    :goto_13
    :pswitch_13
    iget v11, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mTouchState:I

    if-nez v11, :cond_d

    move v13, v12

    goto :goto_d

    .line 430
    :pswitch_19
    iget v11, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mActivePointerId:I

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 431
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 432
    .local v4, x:F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 433
    .local v8, y:F
    iget v11, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mLastMotionX:F

    sub-float v11, v4, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v5, v11

    .line 434
    .local v5, xDiff:I
    iget v11, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mLastMotionY:F

    sub-float v11, v8, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v9, v11

    .line 436
    .local v9, yDiff:I
    iget v3, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mTouchSlop:I

    .line 437
    .local v3, touchSlop:I
    iget v11, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mPagingTouchSlop:I

    if-le v5, v11, :cond_60

    move v7, v13

    .line 438
    .local v7, xPaged:Z
    :goto_40
    if-le v5, v3, :cond_62

    move v6, v13

    .line 439
    .local v6, xMoved:Z
    :goto_43
    if-le v9, v3, :cond_64

    move v10, v13

    .line 441
    .local v10, yMoved:Z
    :goto_46
    if-nez v6, :cond_4a

    if-eqz v10, :cond_13

    .line 443
    :cond_4a
    if-eqz v7, :cond_50

    .line 445
    iput v13, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mTouchState:I

    .line 446
    iput v4, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mLastMotionX:F

    .line 449
    :cond_50
    iget-boolean v11, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mAllowLongPress:Z

    if-eqz v11, :cond_13

    .line 450
    iput-boolean v12, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mAllowLongPress:Z

    .line 454
    iget v11, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    invoke-virtual {p0, v11}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v1

    .line 455
    .local v1, currentScreen:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->cancelLongPress()V

    goto :goto_13

    .end local v1           #currentScreen:Landroid/view/View;
    .end local v6           #xMoved:Z
    .end local v7           #xPaged:Z
    .end local v10           #yMoved:Z
    :cond_60
    move v7, v12

    .line 437
    goto :goto_40

    .restart local v7       #xPaged:Z
    :cond_62
    move v6, v12

    .line 438
    goto :goto_43

    .restart local v6       #xMoved:Z
    :cond_64
    move v10, v12

    .line 439
    goto :goto_46

    .line 462
    .end local v2           #pointerIndex:I
    .end local v3           #touchSlop:I
    .end local v4           #x:F
    .end local v5           #xDiff:I
    .end local v6           #xMoved:Z
    .end local v7           #xPaged:Z
    .end local v8           #y:F
    .end local v9           #yDiff:I
    :pswitch_66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 463
    .restart local v4       #x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 465
    .restart local v8       #y:F
    iput v4, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mDownMotionX:F

    .line 466
    iput v4, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mLastMotionX:F

    .line 467
    iput v8, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mLastMotionY:F

    .line 468
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    iput v11, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mActivePointerId:I

    .line 469
    iput-boolean v13, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mAllowLongPress:Z

    .line 476
    iget-object v11, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->isFinished()Z

    move-result v11

    if-eqz v11, :cond_88

    move v11, v12

    :goto_85
    iput v11, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mTouchState:I

    goto :goto_13

    :cond_88
    move v11, v13

    goto :goto_85

    .line 483
    .end local v4           #x:F
    .end local v8           #y:F
    :pswitch_8a
    iput v12, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mTouchState:I

    .line 484
    iput-boolean v12, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mAllowLongPress:Z

    .line 485
    const/4 v11, -0x1

    iput v11, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mActivePointerId:I

    goto :goto_13

    .line 490
    :pswitch_92
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_13

    .line 419
    nop

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_66
        :pswitch_8a
        :pswitch_19
        :pswitch_8a
        :pswitch_13
        :pswitch_13
        :pswitch_92
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
    .line 306
    const/4 v1, 0x0

    .line 307
    .local v1, childLeft:I
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildCount()I

    move-result v3

    .line 308
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_6
    if-ge v4, v3, :cond_26

    .line 309
    invoke-virtual {p0, v4}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 310
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_23

    .line 311
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 312
    .local v2, childWidth:I
    const/4 v5, 0x0

    add-int v6, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 313
    add-int/2addr v1, v2

    .line 308
    .end local v2           #childWidth:I
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 316
    .end local v0           #child:Landroid/view/View;
    :cond_26
    return-void
.end method

.method protected onMeasure(II)V
    .registers 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 269
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 271
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 272
    .local v4, widthMode:I
    if-eq v4, v5, :cond_15

    .line 273
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 276
    :cond_15
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 277
    .local v1, heightMode:I
    if-eq v1, v5, :cond_23

    .line 278
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 282
    :cond_23
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildCount()I

    move-result v0

    .line 283
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_28
    if-ge v2, v0, :cond_4a

    .line 284
    iget-object v5, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_42

    and-int/lit8 v5, v2, 0x1

    if-ne v5, v8, :cond_42

    .line 286
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v5, v6, p2}, Landroid/view/View;->measure(II)V

    .line 283
    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 288
    :cond_42
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    goto :goto_3f

    .line 292
    :cond_4a
    iget-boolean v5, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mFirstLayout:Z

    if-eqz v5, :cond_6b

    .line 293
    invoke-virtual {p0, v7}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->setHorizontalScrollBarEnabled(Z)V

    .line 294
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 295
    .local v3, width:I
    iget-object v5, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_60

    .line 296
    iget-object v5, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v3, v5

    .line 298
    :cond_60
    iget v5, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    mul-int/2addr v5, v3

    invoke-virtual {p0, v5, v7}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->scrollTo(II)V

    .line 299
    invoke-virtual {p0, v8}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->setHorizontalScrollBarEnabled(Z)V

    .line 300
    iput-boolean v7, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mFirstLayout:Z

    .line 302
    .end local v3           #width:I
    :cond_6b
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 7
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 331
    iget v2, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mNextScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    .line 332
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mNextScreen:I

    .line 336
    .local v0, focusableScreen:I
    :goto_7
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v1

    .line 337
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_10

    .line 338
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 340
    :cond_10
    const/4 v2, 0x0

    return v2

    .line 334
    .end local v0           #focusableScreen:I
    .end local v1           #v:Landroid/view/View;
    :cond_12
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    .restart local v0       #focusableScreen:I
    goto :goto_7
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 696
    move-object v0, p1

    check-cast v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;

    .line 697
    .local v0, savedState:Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;
    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 698
    iget v1, v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;->currentScreen:I

    iput v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    .line 699
    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    if-ltz v1, :cond_1a

    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildCount()I

    move-result v2

    if-le v1, v2, :cond_1d

    .line 700
    :cond_1a
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    .line 702
    :cond_1d
    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->selectTab(I)V

    .line 703
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 689
    new-instance v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 690
    .local v0, state:Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;
    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    iput v1, v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SavedState;->currentScreen:I

    .line 691
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 262
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 263
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->setCurrentScreen(I)V

    .line 264
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->selectTab(I)V

    .line 265
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .parameter "ev"

    .prologue
    .line 531
    iget-object v12, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v12, :cond_a

    .line 532
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v12

    iput-object v12, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 534
    :cond_a
    iget-object v12, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 536
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 538
    .local v0, action:I
    and-int/lit16 v12, v0, 0xff

    packed-switch v12, :pswitch_data_116

    .line 621
    :cond_18
    :goto_18
    :pswitch_18
    const/4 v12, 0x1

    return v12

    .line 544
    :pswitch_1a
    iget-object v12, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v12}, Landroid/widget/Scroller;->isFinished()Z

    move-result v12

    if-nez v12, :cond_27

    .line 545
    iget-object v12, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v12}, Landroid/widget/Scroller;->abortAnimation()V

    .line 549
    :cond_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    iput v12, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mLastMotionX:F

    iput v12, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mDownMotionX:F

    .line 550
    const/4 v12, 0x0

    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    iput v12, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mActivePointerId:I

    goto :goto_18

    .line 554
    :pswitch_37
    iget v12, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mTouchState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_18

    .line 556
    iget v12, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mActivePointerId:I

    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 557
    .local v5, pointerIndex:I
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    .line 558
    .local v11, x:F
    iget v12, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mLastMotionX:F

    sub-float/2addr v12, v11

    float-to-int v3, v12

    .line 559
    .local v3, deltaX:I
    iput v11, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mLastMotionX:F

    .line 561
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScrollX()I

    move-result v7

    .line 562
    .local v7, sx:I
    if-gez v3, :cond_5e

    .line 563
    if-lez v7, :cond_18

    .line 564
    neg-int v12, v7

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->scrollBy(II)V

    goto :goto_18

    .line 566
    :cond_5e
    if-lez v3, :cond_80

    .line 567
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {p0, v12}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v12

    sub-int/2addr v12, v7

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getWidth()I

    move-result v13

    sub-int v2, v12, v13

    .line 569
    .local v2, availableToScroll:I
    if-lez v2, :cond_18

    .line 570
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->scrollBy(II)V

    goto :goto_18

    .line 573
    .end local v2           #availableToScroll:I
    :cond_80
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->awakenScrollBars()Z

    goto :goto_18

    .line 579
    .end local v3           #deltaX:I
    .end local v5           #pointerIndex:I
    .end local v7           #sx:I
    .end local v11           #x:F
    :pswitch_84
    iget v12, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mTouchState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_de

    .line 580
    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mActivePointerId:I

    .line 581
    .local v1, activePointerId:I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 582
    .restart local v5       #pointerIndex:I
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    .line 583
    .restart local v11       #x:F
    iget-object v8, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 584
    .local v8, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v12, 0x3e8

    iget v13, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mMaximumVelocity:I

    int-to-float v13, v13

    invoke-virtual {v8, v12, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 585
    invoke-virtual {v8, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v12

    float-to-int v9, v12

    .line 586
    .local v9, velocityX:I
    iget v12, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mDownMotionX:F

    sub-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const/high16 v13, 0x42c8

    cmpl-float v12, v12, v13

    if-lez v12, :cond_e6

    const/4 v4, 0x1

    .line 588
    .local v4, isfling:Z
    :goto_b0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getWidth()I

    move-result v6

    .line 589
    .local v6, screenWidth:I
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScrollX()I

    move-result v12

    div-int/lit8 v13, v6, 0x2

    add-int/2addr v12, v13

    div-int v10, v12, v6

    .line 591
    .local v10, whichScreen:I
    if-eqz v4, :cond_e8

    const/16 v12, 0x1f4

    if-le v9, v12, :cond_e8

    iget v12, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    if-lez v12, :cond_e8

    .line 593
    iget v12, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    add-int/lit8 v12, v12, -0x1

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->snapToScreenByFling(I)V

    .line 602
    :goto_d2
    iget-object v12, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v12, :cond_de

    .line 603
    iget-object v12, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12}, Landroid/view/VelocityTracker;->recycle()V

    .line 604
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 607
    .end local v1           #activePointerId:I
    .end local v4           #isfling:Z
    .end local v5           #pointerIndex:I
    .end local v6           #screenWidth:I
    .end local v8           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v9           #velocityX:I
    .end local v10           #whichScreen:I
    .end local v11           #x:F
    :cond_de
    const/4 v12, 0x0

    iput v12, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mTouchState:I

    .line 608
    const/4 v12, -0x1

    iput v12, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mActivePointerId:I

    goto/16 :goto_18

    .line 586
    .restart local v1       #activePointerId:I
    .restart local v5       #pointerIndex:I
    .restart local v8       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v9       #velocityX:I
    .restart local v11       #x:F
    :cond_e6
    const/4 v4, 0x0

    goto :goto_b0

    .line 594
    .restart local v4       #isfling:Z
    .restart local v6       #screenWidth:I
    .restart local v10       #whichScreen:I
    :cond_e8
    if-eqz v4, :cond_104

    const/16 v12, -0x1f4

    if-ge v9, v12, :cond_104

    iget v12, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ge v12, v13, :cond_104

    .line 597
    iget v12, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    add-int/lit8 v12, v12, 0x1

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->snapToScreenByFling(I)V

    goto :goto_d2

    .line 599
    :cond_104
    invoke-direct {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->snapToDestination()V

    goto :goto_d2

    .line 612
    .end local v1           #activePointerId:I
    .end local v4           #isfling:Z
    .end local v5           #pointerIndex:I
    .end local v6           #screenWidth:I
    .end local v8           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v9           #velocityX:I
    .end local v10           #whichScreen:I
    .end local v11           #x:F
    :pswitch_108
    const/4 v12, 0x0

    iput v12, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mTouchState:I

    .line 613
    const/4 v12, -0x1

    iput v12, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mActivePointerId:I

    goto/16 :goto_18

    .line 617
    :pswitch_110
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_18

    .line 538
    nop

    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_84
        :pswitch_37
        :pswitch_108
        :pswitch_18
        :pswitch_18
        :pswitch_110
    .end packed-switch
.end method

.method protected abstract recreate()V
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 521
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 522
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 523
    .local v0, screen:I
    if-ltz v0, :cond_12

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_12

    .line 524
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->snapToScreenByFling(I)V

    .line 526
    :cond_12
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 320
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 321
    .local v0, screen:I
    iget v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    if-ne v0, v1, :cond_10

    iget-object v1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_15

    .line 322
    :cond_10
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->snapToScreenByFling(I)V

    .line 323
    const/4 v1, 0x1

    .line 325
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public scrollLeft()V
    .registers 2

    .prologue
    .line 706
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 707
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    if-lez v0, :cond_13

    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->snapToScreenByFling(I)V

    .line 711
    :cond_13
    :goto_13
    return-void

    .line 709
    :cond_14
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mNextScreen:I

    if-lez v0, :cond_13

    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mNextScreen:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->snapToScreenByFling(I)V

    goto :goto_13
.end method

.method public scrollRight()V
    .registers 3

    .prologue
    .line 714
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 715
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_19

    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->snapToScreenByFling(I)V

    .line 719
    :cond_19
    :goto_19
    return-void

    .line 717
    :cond_1a
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mNextScreen:I

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_19

    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mNextScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->snapToScreenByFling(I)V

    goto :goto_19
.end method

.method protected abstract selectTab(I)V
.end method

.method public setCurrentScreen(I)V
    .registers 5
    .parameter "currentScreen"

    .prologue
    const/4 v2, 0x0

    .line 194
    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 195
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    .line 196
    iget v0, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScrollWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->scrollTo(II)V

    .line 197
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->selectTab(I)V

    .line 198
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->invalidate()V

    .line 199
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 5
    .parameter "l"

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScreenCount()I

    move-result v0

    .line 209
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 210
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 212
    :cond_11
    return-void
.end method

.method public setOnTabSelectedListener(Lcom/google/android/youtube/core/ui/AbstractWorkspace$OnTabSelectedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->listener:Lcom/google/android/youtube/core/ui/AbstractWorkspace$OnTabSelectedListener;

    .line 151
    return-void
.end method

.method public setSeparator(I)V
    .registers 10
    .parameter "resid"

    .prologue
    .line 774
    iget-object v6, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1b

    if-nez p1, :cond_1b

    .line 776
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 777
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildCount()I

    move-result v3

    .line 778
    .local v3, num:I
    add-int/lit8 v0, v3, -0x2

    .local v0, i:I
    :goto_f
    if-lez v0, :cond_17

    .line 779
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->removeViewAt(I)V

    .line 778
    add-int/lit8 v0, v0, -0x2

    goto :goto_f

    .line 781
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->requestLayout()V

    .line 809
    .end local v0           #i:I
    .end local v3           #num:I
    :cond_1a
    :goto_1a
    return-void

    .line 782
    :cond_1b
    if-eqz p1, :cond_1a

    .line 784
    iget-object v6, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_57

    .line 786
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildCount()I

    move-result v4

    .line 787
    .local v4, numsep:I
    const/4 v1, 0x1

    .line 788
    .local v1, insertindex:I
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 789
    const/4 v0, 0x1

    .restart local v0       #i:I
    :goto_31
    if-ge v0, v4, :cond_53

    .line 790
    new-instance v5, Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 791
    .local v5, v:Landroid/view/View;
    iget-object v6, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 792
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v2, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 794
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 795
    invoke-virtual {p0, v5, v1}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->addView(Landroid/view/View;I)V

    .line 796
    add-int/lit8 v1, v1, 0x2

    .line 789
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 798
    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v5           #v:Landroid/view/View;
    :cond_53
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->requestLayout()V

    goto :goto_1a

    .line 801
    .end local v0           #i:I
    .end local v1           #insertindex:I
    .end local v4           #numsep:I
    :cond_57
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 802
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildCount()I

    move-result v3

    .line 803
    .restart local v3       #num:I
    add-int/lit8 v0, v3, -0x2

    .restart local v0       #i:I
    :goto_67
    if-lez v0, :cond_75

    .line 804
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 803
    add-int/lit8 v0, v0, -0x2

    goto :goto_67

    .line 806
    :cond_75
    invoke-virtual {p0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->requestLayout()V

    goto :goto_1a
.end method

.method protected snapToScreenByFling(I)V
    .registers 3
    .parameter "whichScreen"

    .prologue
    .line 632
    sget-object v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;->FLING:Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->snapToScreen(ILcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;)V

    .line 633
    return-void
.end method

.method protected snapToScreenByTap(I)V
    .registers 3
    .parameter "whichScreen"

    .prologue
    .line 636
    sget-object v0, Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;->TAP:Lcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/ui/AbstractWorkspace;->snapToScreen(ILcom/google/android/youtube/core/ui/AbstractWorkspace$SelectionMethod;)V

    .line 637
    return-void
.end method
