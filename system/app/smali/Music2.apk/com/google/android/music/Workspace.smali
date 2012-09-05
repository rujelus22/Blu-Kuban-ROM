.class public Lcom/google/android/music/Workspace;
.super Landroid/view/ViewGroup;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/Workspace$SavedState;,
        Lcom/google/android/music/Workspace$ScreenSwitchListener;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mAllowLongPress:Z

.field private mCurrentScreen:I

.field private mDefaultScreen:I

.field private mDownMotionX:F

.field mFilterWindowEnabler:Ljava/lang/Runnable;

.field private mFirstLayout:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLocked:Z

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMaximumVelocity:I

.field private mNextScreen:I

.field private mPagingTouchSlop:I

.field private mScreenSwitchListener:Lcom/google/android/music/Workspace$ScreenSwitchListener;

.field private mScroller:Landroid/widget/Scroller;

.field private mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mTabRow:Lcom/google/android/music/TabRow;

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

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-boolean v2, p0, Lcom/google/android/music/Workspace;->mFirstLayout:Z

    .line 52
    iput v0, p0, Lcom/google/android/music/Workspace;->mNextScreen:I

    .line 63
    iput v1, p0, Lcom/google/android/music/Workspace;->mTouchState:I

    .line 67
    iput-boolean v2, p0, Lcom/google/android/music/Workspace;->mAllowLongPress:Z

    .line 75
    iput v0, p0, Lcom/google/android/music/Workspace;->mActivePointerId:I

    .line 701
    new-instance v0, Lcom/google/android/music/Workspace$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/Workspace$2;-><init>(Lcom/google/android/music/Workspace;)V

    iput-object v0, p0, Lcom/google/android/music/Workspace;->mFilterWindowEnabler:Ljava/lang/Runnable;

    .line 98
    iput v1, p0, Lcom/google/android/music/Workspace;->mDefaultScreen:I

    .line 99
    iput-boolean v1, p0, Lcom/google/android/music/Workspace;->mLocked:Z

    .line 101
    invoke-virtual {p0, v1}, Lcom/google/android/music/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 102
    invoke-direct {p0}, Lcom/google/android/music/Workspace;->initWorkspace()V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/Workspace;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    return v0
.end method

.method private initWorkspace()V
    .registers 4

    .prologue
    .line 109
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/music/Workspace;->mScroller:Landroid/widget/Scroller;

    .line 110
    iget v1, p0, Lcom/google/android/music/Workspace;->mDefaultScreen:I

    iput v1, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    .line 112
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 113
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/android/music/Workspace;->mTouchSlop:I

    .line 114
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/android/music/Workspace;->mPagingTouchSlop:I

    .line 115
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/google/android/music/Workspace;->mMaximumVelocity:I

    .line 116
    return-void
.end method

.method private notifyScreenSwitchListener()V
    .registers 4

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mScreenSwitchListener:Lcom/google/android/music/Workspace$ScreenSwitchListener;

    if-eqz v0, :cond_11

    .line 197
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mScreenSwitchListener:Lcom/google/android/music/Workspace$ScreenSwitchListener;

    iget v1, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/google/android/music/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/music/Workspace$ScreenSwitchListener;->onScreenSwitch(Landroid/view/View;I)V

    .line 199
    :cond_11
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 7
    .parameter "ev"

    .prologue
    .line 507
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 509
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 510
    .local v1, pointerId:I
    iget v3, p0, Lcom/google/android/music/Workspace;->mActivePointerId:I

    if-ne v1, v3, :cond_32

    .line 514
    if-nez v2, :cond_33

    const/4 v0, 0x1

    .line 515
    .local v0, newPointerIndex:I
    :goto_15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/google/android/music/Workspace;->mDownMotionX:F

    iput v3, p0, Lcom/google/android/music/Workspace;->mLastMotionX:F

    .line 516
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/google/android/music/Workspace;->mLastMotionY:F

    .line 517
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/music/Workspace;->mActivePointerId:I

    .line 518
    iget-object v3, p0, Lcom/google/android/music/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_32

    .line 519
    iget-object v3, p0, Lcom/google/android/music/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 522
    .end local v0           #newPointerIndex:I
    :cond_32
    return-void

    .line 514
    :cond_33
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private snapToDestination()V
    .registers 5

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getScrollWidth()I

    move-result v0

    .line 646
    .local v0, screenWidth:I
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getScrollX()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    div-int v1, v2, v0

    .line 648
    .local v1, whichScreen:I
    invoke-virtual {p0, v1}, Lcom/google/android/music/Workspace;->snapToScreen(I)V

    .line 649
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
    .line 360
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    if-ltz v0, :cond_15

    iget v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 361
    iget v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/google/android/music/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 363
    :cond_15
    const/16 v0, 0x11

    if-ne p2, v0, :cond_29

    .line 364
    iget v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    if-lez v0, :cond_28

    .line 365
    iget v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/music/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 372
    :cond_28
    :goto_28
    return-void

    .line 367
    :cond_29
    const/16 v0, 0x42

    if-ne p2, v0, :cond_28

    .line 368
    iget v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_28

    .line 369
    iget v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/music/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_28
.end method

.method public computeScroll()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 217
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 218
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/music/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/music/Workspace;->scrollTo(II)V

    .line 219
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->postInvalidate()V

    .line 225
    :cond_1b
    :goto_1b
    return-void

    .line 220
    :cond_1c
    iget v0, p0, Lcom/google/android/music/Workspace;->mNextScreen:I

    if-eq v0, v3, :cond_1b

    .line 221
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/music/Workspace;->mNextScreen:I

    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    .line 222
    invoke-direct {p0}, Lcom/google/android/music/Workspace;->notifyScreenSwitchListener()V

    .line 223
    iput v3, p0, Lcom/google/android/music/Workspace;->mNextScreen:I

    goto :goto_1b
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter "canvas"

    .prologue
    const/4 v7, 0x1

    .line 229
    const/4 v5, 0x0

    .line 230
    .local v5, restore:Z
    const/4 v6, 0x0

    .line 237
    .local v6, restoreCount:I
    iget v8, p0, Lcom/google/android/music/Workspace;->mTouchState:I

    if-eq v8, v7, :cond_22

    iget v8, p0, Lcom/google/android/music/Workspace;->mNextScreen:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_22

    move v3, v7

    .line 239
    .local v3, fastDraw:Z
    :goto_d
    if-eqz v3, :cond_24

    .line 240
    iget v7, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v7}, Lcom/google/android/music/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getDrawingTime()J

    move-result-wide v8

    invoke-virtual {p0, p1, v7, v8, v9}, Lcom/google/android/music/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 257
    :cond_1c
    :goto_1c
    if-eqz v5, :cond_21

    .line 258
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 260
    :cond_21
    return-void

    .line 237
    .end local v3           #fastDraw:Z
    :cond_22
    const/4 v3, 0x0

    goto :goto_d

    .line 242
    .restart local v3       #fastDraw:Z
    :cond_24
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getDrawingTime()J

    move-result-wide v1

    .line 244
    .local v1, drawingTime:J
    iget v8, p0, Lcom/google/android/music/Workspace;->mNextScreen:I

    if-ltz v8, :cond_52

    iget v8, p0, Lcom/google/android/music/Workspace;->mNextScreen:I

    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getScreenCount()I

    move-result v9

    if-ge v8, v9, :cond_52

    iget v8, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    iget v9, p0, Lcom/google/android/music/Workspace;->mNextScreen:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v7, :cond_52

    .line 246
    iget v7, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v7}, Lcom/google/android/music/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v1, v2}, Lcom/google/android/music/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 247
    iget v7, p0, Lcom/google/android/music/Workspace;->mNextScreen:I

    invoke-virtual {p0, v7}, Lcom/google/android/music/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v1, v2}, Lcom/google/android/music/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1c

    .line 250
    :cond_52
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getChildCount()I

    move-result v0

    .line 251
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_57
    if-ge v4, v0, :cond_1c

    .line 252
    invoke-virtual {p0, v4}, Lcom/google/android/music/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v1, v2}, Lcom/google/android/music/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 251
    add-int/lit8 v4, v4, 0x1

    goto :goto_57
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 6
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 342
    const/16 v1, 0x11

    if-ne p2, v1, :cond_15

    .line 343
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getCurrentScreen()I

    move-result v1

    if-lez v1, :cond_38

    .line 344
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getCurrentScreen()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/android/music/Workspace;->snapToScreen(I)V

    .line 355
    :goto_14
    return v0

    .line 347
    :cond_15
    const/16 v1, 0x42

    if-ne p2, v1, :cond_2f

    .line 348
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getCurrentScreen()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_38

    .line 349
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getCurrentScreen()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/music/Workspace;->snapToScreen(I)V

    goto :goto_14

    .line 352
    :cond_2f
    const/16 v0, 0x21

    if-ne p2, v0, :cond_38

    .line 353
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mTabRow:Lcom/google/android/music/TabRow;

    invoke-virtual {v0}, Lcom/google/android/music/TabRow;->focusCurrentTab()V

    .line 355
    :cond_38
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_14
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .registers 6
    .parameter "focused"

    .prologue
    .line 383
    iget v3, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v3}, Lcom/google/android/music/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    .line 384
    .local v0, current:Landroid/view/View;
    move-object v2, p1

    .line 386
    .local v2, v:Landroid/view/View;
    :goto_7
    if-ne v2, v0, :cond_d

    .line 387
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 397
    :cond_c
    return-void

    .line 390
    :cond_d
    if-eq v2, p0, :cond_c

    .line 393
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 394
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_c

    .line 395
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #v:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2       #v:Landroid/view/View;
    goto :goto_7
.end method

.method getCurrentScreen()I
    .registers 2

    .prologue
    .line 156
    iget v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    return v0
.end method

.method getScreenAt(I)Landroid/view/View;
    .registers 3
    .parameter "index"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_9

    .line 169
    invoke-virtual {p0, p1}, Lcom/google/android/music/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 171
    :goto_8
    return-object v0

    :cond_9
    mul-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/music/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_8
.end method

.method getScreenCount()I
    .registers 3

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getChildCount()I

    move-result v0

    .line 161
    .local v0, numchildren:I
    iget-object v1, p0, Lcom/google/android/music/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_c

    .line 162
    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v0, v1, 0x2

    .line 164
    .end local v0           #numchildren:I
    :cond_c
    return v0
.end method

.method getScrollWidth()I
    .registers 3

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getWidth()I

    move-result v0

    .line 176
    .local v0, w:I
    iget-object v1, p0, Lcom/google/android/music/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_f

    .line 177
    iget-object v1, p0, Lcom/google/android/music/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 179
    :cond_f
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .parameter "ev"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 415
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 416
    .local v0, action:I
    const/4 v11, 0x2

    if-ne v0, v11, :cond_e

    iget v11, p0, Lcom/google/android/music/Workspace;->mTouchState:I

    if-eqz v11, :cond_e

    .line 503
    :cond_d
    :goto_d
    return v13

    .line 420
    :cond_e
    and-int/lit16 v11, v0, 0xff

    packed-switch v11, :pswitch_data_9c

    .line 503
    :cond_13
    :goto_13
    :pswitch_13
    iget v11, p0, Lcom/google/android/music/Workspace;->mTouchState:I

    if-nez v11, :cond_d

    move v13, v12

    goto :goto_d

    .line 422
    :pswitch_19
    iget-boolean v11, p0, Lcom/google/android/music/Workspace;->mLocked:Z

    if-nez v11, :cond_13

    .line 435
    iget v11, p0, Lcom/google/android/music/Workspace;->mActivePointerId:I

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 436
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 437
    .local v4, x:F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 438
    .local v8, y:F
    iget v11, p0, Lcom/google/android/music/Workspace;->mLastMotionX:F

    sub-float v11, v4, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v5, v11

    .line 439
    .local v5, xDiff:I
    iget v11, p0, Lcom/google/android/music/Workspace;->mLastMotionY:F

    sub-float v11, v8, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v9, v11

    .line 441
    .local v9, yDiff:I
    iget v3, p0, Lcom/google/android/music/Workspace;->mTouchSlop:I

    .line 442
    .local v3, touchSlop:I
    iget v11, p0, Lcom/google/android/music/Workspace;->mPagingTouchSlop:I

    if-le v5, v11, :cond_64

    move v7, v13

    .line 443
    .local v7, xPaged:Z
    :goto_44
    if-le v5, v3, :cond_66

    move v6, v13

    .line 444
    .local v6, xMoved:Z
    :goto_47
    if-le v9, v3, :cond_68

    move v10, v13

    .line 446
    .local v10, yMoved:Z
    :goto_4a
    if-nez v6, :cond_4e

    if-eqz v10, :cond_13

    .line 448
    :cond_4e
    if-eqz v7, :cond_54

    .line 450
    iput v13, p0, Lcom/google/android/music/Workspace;->mTouchState:I

    .line 451
    iput v4, p0, Lcom/google/android/music/Workspace;->mLastMotionX:F

    .line 454
    :cond_54
    iget-boolean v11, p0, Lcom/google/android/music/Workspace;->mAllowLongPress:Z

    if-eqz v11, :cond_13

    .line 455
    iput-boolean v12, p0, Lcom/google/android/music/Workspace;->mAllowLongPress:Z

    .line 459
    iget v11, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v11}, Lcom/google/android/music/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v1

    .line 460
    .local v1, currentScreen:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->cancelLongPress()V

    goto :goto_13

    .end local v1           #currentScreen:Landroid/view/View;
    .end local v6           #xMoved:Z
    .end local v7           #xPaged:Z
    .end local v10           #yMoved:Z
    :cond_64
    move v7, v12

    .line 442
    goto :goto_44

    .restart local v7       #xPaged:Z
    :cond_66
    move v6, v12

    .line 443
    goto :goto_47

    .restart local v6       #xMoved:Z
    :cond_68
    move v10, v12

    .line 444
    goto :goto_4a

    .line 467
    .end local v2           #pointerIndex:I
    .end local v3           #touchSlop:I
    .end local v4           #x:F
    .end local v5           #xDiff:I
    .end local v6           #xMoved:Z
    .end local v7           #xPaged:Z
    .end local v8           #y:F
    .end local v9           #yDiff:I
    :pswitch_6a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 468
    .restart local v4       #x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 470
    .restart local v8       #y:F
    iput v4, p0, Lcom/google/android/music/Workspace;->mDownMotionX:F

    .line 471
    iput v4, p0, Lcom/google/android/music/Workspace;->mLastMotionX:F

    .line 472
    iput v8, p0, Lcom/google/android/music/Workspace;->mLastMotionY:F

    .line 473
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    iput v11, p0, Lcom/google/android/music/Workspace;->mActivePointerId:I

    .line 474
    iput-boolean v13, p0, Lcom/google/android/music/Workspace;->mAllowLongPress:Z

    .line 481
    iget-object v11, p0, Lcom/google/android/music/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->isFinished()Z

    move-result v11

    if-eqz v11, :cond_8c

    move v11, v12

    :goto_89
    iput v11, p0, Lcom/google/android/music/Workspace;->mTouchState:I

    goto :goto_13

    :cond_8c
    move v11, v13

    goto :goto_89

    .line 488
    .end local v4           #x:F
    .end local v8           #y:F
    :pswitch_8e
    iput v12, p0, Lcom/google/android/music/Workspace;->mTouchState:I

    .line 489
    iput-boolean v12, p0, Lcom/google/android/music/Workspace;->mAllowLongPress:Z

    .line 490
    const/4 v11, -0x1

    iput v11, p0, Lcom/google/android/music/Workspace;->mActivePointerId:I

    goto/16 :goto_13

    .line 495
    :pswitch_97
    invoke-direct {p0, p1}, Lcom/google/android/music/Workspace;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_13

    .line 420
    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_8e
        :pswitch_19
        :pswitch_8e
        :pswitch_13
        :pswitch_13
        :pswitch_97
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
    .line 302
    const/4 v1, 0x0

    .line 304
    .local v1, childLeft:I
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getChildCount()I

    move-result v3

    .line 305
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_6
    if-ge v4, v3, :cond_26

    .line 306
    invoke-virtual {p0, v4}, Lcom/google/android/music/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 307
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_23

    .line 308
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 309
    .local v2, childWidth:I
    const/4 v5, 0x0

    add-int v6, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 310
    add-int/2addr v1, v2

    .line 305
    .end local v2           #childWidth:I
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 313
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

    .line 264
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 266
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 267
    .local v4, widthMode:I
    if-eq v4, v5, :cond_15

    .line 268
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 271
    :cond_15
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 272
    .local v1, heightMode:I
    if-eq v1, v5, :cond_23

    .line 273
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Workspace can only be used in EXACTLY mode."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 277
    :cond_23
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getChildCount()I

    move-result v0

    .line 278
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_28
    if-ge v2, v0, :cond_4a

    .line 279
    iget-object v5, p0, Lcom/google/android/music/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_42

    and-int/lit8 v5, v2, 0x1

    if-ne v5, v8, :cond_42

    .line 281
    invoke-virtual {p0, v2}, Lcom/google/android/music/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v5, v6, p2}, Landroid/view/View;->measure(II)V

    .line 278
    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 283
    :cond_42
    invoke-virtual {p0, v2}, Lcom/google/android/music/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    goto :goto_3f

    .line 288
    :cond_4a
    iget-boolean v5, p0, Lcom/google/android/music/Workspace;->mFirstLayout:Z

    if-eqz v5, :cond_6b

    .line 289
    invoke-virtual {p0, v7}, Lcom/google/android/music/Workspace;->setHorizontalScrollBarEnabled(Z)V

    .line 290
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 291
    .local v3, width:I
    iget-object v5, p0, Lcom/google/android/music/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_60

    .line 292
    iget-object v5, p0, Lcom/google/android/music/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v3, v5

    .line 294
    :cond_60
    iget v5, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    mul-int/2addr v5, v3

    invoke-virtual {p0, v5, v7}, Lcom/google/android/music/Workspace;->scrollTo(II)V

    .line 295
    invoke-virtual {p0, v8}, Lcom/google/android/music/Workspace;->setHorizontalScrollBarEnabled(Z)V

    .line 296
    iput-boolean v7, p0, Lcom/google/android/music/Workspace;->mFirstLayout:Z

    .line 298
    .end local v3           #width:I
    :cond_6b
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 7
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 328
    iget v2, p0, Lcom/google/android/music/Workspace;->mNextScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    .line 329
    iget v0, p0, Lcom/google/android/music/Workspace;->mNextScreen:I

    .line 333
    .local v0, focusableScreen:I
    :goto_7
    invoke-virtual {p0, v0}, Lcom/google/android/music/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v1

    .line 334
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_10

    .line 335
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 337
    :cond_10
    const/4 v2, 0x0

    return v2

    .line 331
    .end local v0           #focusableScreen:I
    .end local v1           #v:Landroid/view/View;
    :cond_12
    iget v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    .restart local v0       #focusableScreen:I
    goto :goto_7
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 717
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/Workspace$SavedState;

    .line 718
    .local v0, savedState:Lcom/google/android/music/Workspace$SavedState;
    invoke-virtual {v0}, Lcom/google/android/music/Workspace$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 719
    iget v1, v0, Lcom/google/android/music/Workspace$SavedState;->currentScreen:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    .line 720
    iget v1, v0, Lcom/google/android/music/Workspace$SavedState;->currentScreen:I

    iput v1, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    .line 722
    :cond_13
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 710
    new-instance v0, Lcom/google/android/music/Workspace$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/music/Workspace$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 711
    .local v0, state:Lcom/google/android/music/Workspace$SavedState;
    iget v1, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    iput v1, v0, Lcom/google/android/music/Workspace$SavedState;->currentScreen:I

    .line 712
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 22
    .parameter "ev"

    .prologue
    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-nez v18, :cond_12

    .line 540
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 542
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 544
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 546
    .local v3, action:I
    and-int/lit16 v0, v3, 0xff

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_210

    .line 641
    :cond_2a
    :goto_2a
    :pswitch_2a
    const/16 v18, 0x1

    return v18

    .line 552
    :pswitch_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->isFinished()Z

    move-result v18

    if-nez v18, :cond_42

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->abortAnimation()V

    .line 557
    :cond_42
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/Workspace;->mLastMotionX:F

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/Workspace;->mDownMotionX:F

    .line 558
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/Workspace;->mActivePointerId:I

    goto :goto_2a

    .line 562
    :pswitch_63
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/Workspace;->mLocked:Z

    move/from16 v18, v0

    if-nez v18, :cond_2a

    .line 566
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/Workspace;->mTouchState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2a

    .line 568
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/Workspace;->mActivePointerId:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 569
    .local v9, pointerIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 570
    .local v17, x:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/Workspace;->mLastMotionX:F

    move/from16 v18, v0

    sub-float v18, v18, v17

    move/from16 v0, v18

    float-to-int v7, v0

    .line 571
    .local v7, deltaX:I
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/Workspace;->mLastMotionX:F

    .line 573
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/Workspace;->getScrollX()I

    move-result v13

    .line 574
    .local v13, sx:I
    if-gez v7, :cond_bc

    .line 575
    if-lez v13, :cond_2a

    .line 576
    neg-int v0, v13

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/Workspace;->scrollBy(II)V

    goto/16 :goto_2a

    .line 578
    :cond_bc
    if-lez v7, :cond_eb

    .line 579
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/Workspace;->getChildCount()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/music/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRight()I

    move-result v18

    sub-int v18, v18, v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/Workspace;->getWidth()I

    move-result v19

    sub-int v5, v18, v19

    .line 581
    .local v5, availableToScroll:I
    if-lez v5, :cond_2a

    .line 582
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/Workspace;->scrollBy(II)V

    goto/16 :goto_2a

    .line 585
    .end local v5           #availableToScroll:I
    :cond_eb
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/Workspace;->awakenScrollBars()Z

    goto/16 :goto_2a

    .line 591
    .end local v7           #deltaX:I
    .end local v9           #pointerIndex:I
    .end local v13           #sx:I
    .end local v17           #x:F
    :pswitch_f0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/Workspace;->mTouchState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_19d

    .line 592
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/music/Workspace;->mActivePointerId:I

    .line 593
    .local v4, activePointerId:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 594
    .restart local v9       #pointerIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 595
    .restart local v17       #x:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/music/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 596
    .local v14, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v18, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/Workspace;->mMaximumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 597
    invoke-virtual {v14, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v15, v0

    .line 598
    .local v15, velocityX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/Workspace;->mDownMotionX:F

    move/from16 v18, v0

    sub-float v18, v18, v17

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    const/high16 v19, 0x42c8

    cmpl-float v18, v18, v19

    if-lez v18, :cond_1af

    const/4 v8, 0x1

    .line 600
    .local v8, isfling:Z
    :goto_140
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/Workspace;->getScrollX()I

    move-result v11

    .line 601
    .local v11, scrollX:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/Workspace;->getWidth()I

    move-result v10

    .line 602
    .local v10, screenWidth:I
    div-int/lit8 v18, v10, 0x2

    add-int v18, v18, v11

    div-int v16, v18, v10

    .line 603
    .local v16, whichScreen:I
    int-to-float v0, v11

    move/from16 v18, v0

    int-to-float v0, v10

    move/from16 v19, v0

    div-float v12, v18, v19

    .line 605
    .local v12, scrolledPos:F
    if-eqz v8, :cond_1b6

    const/16 v18, 0x1f4

    move/from16 v0, v18

    if-le v15, v0, :cond_1b6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    move/from16 v18, v0

    if-lez v18, :cond_1b6

    .line 608
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v12, v18

    if-gez v18, :cond_1b1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    move/from16 v18, v0

    add-int/lit8 v6, v18, -0x1

    .line 610
    .local v6, bound:I
    :goto_177
    move/from16 v0, v16

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/music/Workspace;->snapToScreen(I)V

    .line 622
    .end local v6           #bound:I
    :goto_184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-eqz v18, :cond_19d

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/VelocityTracker;->recycle()V

    .line 624
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 627
    .end local v4           #activePointerId:I
    .end local v8           #isfling:Z
    .end local v9           #pointerIndex:I
    .end local v10           #screenWidth:I
    .end local v11           #scrollX:I
    .end local v12           #scrolledPos:F
    .end local v14           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v15           #velocityX:I
    .end local v16           #whichScreen:I
    .end local v17           #x:F
    :cond_19d
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/Workspace;->mTouchState:I

    .line 628
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/Workspace;->mActivePointerId:I

    goto/16 :goto_2a

    .line 598
    .restart local v4       #activePointerId:I
    .restart local v9       #pointerIndex:I
    .restart local v14       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v15       #velocityX:I
    .restart local v17       #x:F
    :cond_1af
    const/4 v8, 0x0

    goto :goto_140

    .line 608
    .restart local v8       #isfling:Z
    .restart local v10       #screenWidth:I
    .restart local v11       #scrollX:I
    .restart local v12       #scrolledPos:F
    .restart local v16       #whichScreen:I
    :cond_1b1
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    goto :goto_177

    .line 611
    :cond_1b6
    if-eqz v8, :cond_1f4

    const/16 v18, -0x1f4

    move/from16 v0, v18

    if-ge v15, v0, :cond_1f4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/Workspace;->getChildCount()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1f4

    .line 615
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v18, v12, v18

    if-lez v18, :cond_1ef

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    move/from16 v18, v0

    add-int/lit8 v6, v18, 0x1

    .line 617
    .restart local v6       #bound:I
    :goto_1e1
    move/from16 v0, v16

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/music/Workspace;->snapToScreen(I)V

    goto :goto_184

    .line 615
    .end local v6           #bound:I
    :cond_1ef
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    goto :goto_1e1

    .line 619
    :cond_1f4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/Workspace;->snapToDestination()V

    goto :goto_184

    .line 632
    .end local v4           #activePointerId:I
    .end local v8           #isfling:Z
    .end local v9           #pointerIndex:I
    .end local v10           #screenWidth:I
    .end local v11           #scrollX:I
    .end local v12           #scrolledPos:F
    .end local v14           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v15           #velocityX:I
    .end local v16           #whichScreen:I
    .end local v17           #x:F
    :pswitch_1f8
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/Workspace;->mTouchState:I

    .line 633
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/Workspace;->mActivePointerId:I

    goto/16 :goto_2a

    .line 637
    :pswitch_20a
    invoke-direct/range {p0 .. p1}, Lcom/google/android/music/Workspace;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2a

    .line 546
    nop

    :pswitch_data_210
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_f0
        :pswitch_63
        :pswitch_1f8
        :pswitch_2a
        :pswitch_2a
        :pswitch_20a
    .end packed-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 526
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 527
    invoke-virtual {p0, p1}, Lcom/google/android/music/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 528
    .local v0, screen:I
    iget-object v1, p0, Lcom/google/android/music/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_d

    .line 529
    div-int/lit8 v0, v0, 0x2

    .line 531
    :cond_d
    if-ltz v0, :cond_18

    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_18

    .line 532
    invoke-virtual {p0, v0}, Lcom/google/android/music/Workspace;->snapToScreen(I)V

    .line 534
    :cond_18
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 317
    invoke-virtual {p0, p1}, Lcom/google/android/music/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 318
    .local v0, screen:I
    iget v1, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    if-ne v0, v1, :cond_10

    iget-object v1, p0, Lcom/google/android/music/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_15

    .line 319
    :cond_10
    invoke-virtual {p0, v0}, Lcom/google/android/music/Workspace;->snapToScreen(I)V

    .line 320
    const/4 v1, 0x1

    .line 322
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method setCurrentScreen(I)V
    .registers 5
    .parameter "currentScreen"

    .prologue
    const/4 v2, 0x0

    .line 188
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/music/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 189
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    .line 190
    iget v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getScrollWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/google/android/music/Workspace;->scrollTo(II)V

    .line 191
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->invalidate()V

    .line 192
    invoke-direct {p0}, Lcom/google/android/music/Workspace;->notifyScreenSwitchListener()V

    .line 193
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 5
    .parameter "l"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/google/android/music/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 209
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getScreenCount()I

    move-result v0

    .line 210
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_13

    .line 211
    invoke-virtual {p0, v1}, Lcom/google/android/music/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 213
    :cond_13
    return-void
.end method

.method public setScreenSwitchListener(Lcom/google/android/music/Workspace$ScreenSwitchListener;)V
    .registers 5
    .parameter "screenSwitchListener"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mScreenSwitchListener:Lcom/google/android/music/Workspace$ScreenSwitchListener;

    if-eqz v0, :cond_1f

    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A screen switch listener is already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/Workspace;->mScreenSwitchListener:Lcom/google/android/music/Workspace$ScreenSwitchListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_1f
    iput-object p1, p0, Lcom/google/android/music/Workspace;->mScreenSwitchListener:Lcom/google/android/music/Workspace$ScreenSwitchListener;

    .line 145
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mScreenSwitchListener:Lcom/google/android/music/Workspace$ScreenSwitchListener;

    if-eqz v0, :cond_32

    .line 146
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mScreenSwitchListener:Lcom/google/android/music/Workspace$ScreenSwitchListener;

    iget v1, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/google/android/music/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/music/Workspace$ScreenSwitchListener;->onScreenSwitch(Landroid/view/View;I)V

    .line 148
    :cond_32
    return-void
.end method

.method public setSeparator(I)V
    .registers 10
    .parameter "resid"

    .prologue
    .line 801
    iget-object v6, p0, Lcom/google/android/music/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1b

    if-nez p1, :cond_1b

    .line 803
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/google/android/music/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 804
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getChildCount()I

    move-result v3

    .line 805
    .local v3, num:I
    add-int/lit8 v0, v3, -0x2

    .local v0, i:I
    :goto_f
    if-lez v0, :cond_17

    .line 806
    invoke-virtual {p0, v0}, Lcom/google/android/music/Workspace;->removeViewAt(I)V

    .line 805
    add-int/lit8 v0, v0, -0x2

    goto :goto_f

    .line 808
    :cond_17
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->requestLayout()V

    .line 836
    .end local v0           #i:I
    .end local v3           #num:I
    :cond_1a
    :goto_1a
    return-void

    .line 809
    :cond_1b
    if-eqz p1, :cond_1a

    .line 811
    iget-object v6, p0, Lcom/google/android/music/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_57

    .line 813
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getChildCount()I

    move-result v4

    .line 814
    .local v4, numsep:I
    const/4 v1, 0x1

    .line 815
    .local v1, insertindex:I
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/music/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 816
    const/4 v0, 0x1

    .restart local v0       #i:I
    :goto_31
    if-ge v0, v4, :cond_53

    .line 817
    new-instance v5, Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 818
    .local v5, v:Landroid/view/View;
    iget-object v6, p0, Lcom/google/android/music/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 819
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v2, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 821
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 822
    invoke-virtual {p0, v5, v1}, Lcom/google/android/music/Workspace;->addView(Landroid/view/View;I)V

    .line 823
    add-int/lit8 v1, v1, 0x2

    .line 816
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 825
    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v5           #v:Landroid/view/View;
    :cond_53
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->requestLayout()V

    goto :goto_1a

    .line 828
    .end local v0           #i:I
    .end local v1           #insertindex:I
    .end local v4           #numsep:I
    :cond_57
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/music/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 829
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getChildCount()I

    move-result v3

    .line 830
    .restart local v3       #num:I
    add-int/lit8 v0, v3, -0x2

    .restart local v0       #i:I
    :goto_67
    if-lez v0, :cond_75

    .line 831
    invoke-virtual {p0, v0}, Lcom/google/android/music/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/music/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 830
    add-int/lit8 v0, v0, -0x2

    goto :goto_67

    .line 833
    :cond_75
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->requestLayout()V

    goto :goto_1a
.end method

.method public setTabHolder(Lcom/google/android/music/TabRow;)V
    .registers 3
    .parameter "th"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/android/music/Workspace;->mTabRow:Lcom/google/android/music/TabRow;

    .line 131
    new-instance v0, Lcom/google/android/music/Workspace$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/Workspace$1;-><init>(Lcom/google/android/music/Workspace;)V

    invoke-virtual {p1, v0}, Lcom/google/android/music/TabRow;->setOnTabClickListener(Lcom/google/android/music/TabRow$OnTabClickListener;)V

    .line 137
    return-void
.end method

.method snapToScreen(I)V
    .registers 14
    .parameter "whichScreen"

    .prologue
    const/4 v2, 0x0

    .line 654
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 656
    iget v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 658
    .local v8, screenDelta:I
    iput p1, p0, Lcom/google/android/music/Workspace;->mNextScreen:I

    .line 660
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    .line 661
    .local v6, focusedChild:Landroid/view/View;
    const/4 v9, 0x0

    .line 662
    .local v9, setTabFocus:Z
    if-eqz v6, :cond_39

    if-eqz v8, :cond_39

    iget v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/google/android/music/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v6, v0, :cond_39

    .line 666
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mTabRow:Lcom/google/android/music/TabRow;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/google/android/music/TabRow;->setOnTabClickListener(Lcom/google/android/music/TabRow$OnTabClickListener;)V

    .line 667
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 668
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mTabRow:Lcom/google/android/music/TabRow;

    invoke-virtual {p0, v0}, Lcom/google/android/music/Workspace;->setTabHolder(Lcom/google/android/music/TabRow;)V

    .line 669
    const/4 v9, 0x1

    .line 672
    :cond_39
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getScrollWidth()I

    move-result v0

    mul-int v7, p1, v0

    .line 673
    .local v7, newX:I
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->getScrollX()I

    move-result v1

    .line 674
    .local v1, sX:I
    sub-int v3, v7, v1

    .line 675
    .local v3, delta:I
    mul-int/lit16 v5, v8, 0x12c

    .line 676
    .local v5, duration:I
    invoke-virtual {p0, v5}, Lcom/google/android/music/Workspace;->awakenScrollBars(I)Z

    .line 677
    if-nez v5, :cond_50

    .line 678
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 681
    :cond_50
    iget v0, p0, Lcom/google/android/music/Workspace;->mNextScreen:I

    iget v4, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    if-eq v0, v4, :cond_6d

    .line 683
    iget v0, p0, Lcom/google/android/music/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/google/android/music/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 687
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mFilterWindowEnabler:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/music/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 688
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mFilterWindowEnabler:Ljava/lang/Runnable;

    add-int/lit8 v4, v5, 0xa

    int-to-long v10, v4

    invoke-virtual {p0, v0, v10, v11}, Lcom/google/android/music/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 691
    :cond_6d
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_7a

    iget-object v0, p0, Lcom/google/android/music/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 693
    :cond_7a
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mScroller:Landroid/widget/Scroller;

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 694
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mTabRow:Lcom/google/android/music/TabRow;

    invoke-virtual {v0, p1}, Lcom/google/android/music/TabRow;->setCurrentTab(I)V

    .line 695
    if-eqz v9, :cond_8c

    .line 696
    iget-object v0, p0, Lcom/google/android/music/Workspace;->mTabRow:Lcom/google/android/music/TabRow;

    invoke-virtual {v0}, Lcom/google/android/music/TabRow;->focusCurrentTab()V

    .line 698
    :cond_8c
    invoke-virtual {p0}, Lcom/google/android/music/Workspace;->invalidate()V

    .line 699
    return-void
.end method
