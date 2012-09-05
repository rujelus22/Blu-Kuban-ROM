.class public Lcom/sprint/w/installer/widget/Workspace;
.super Landroid/view/ViewGroup;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/w/installer/widget/Workspace$1;,
        Lcom/sprint/w/installer/widget/Workspace$SavedState;,
        Lcom/sprint/w/installer/widget/Workspace$OnScrollListener;,
        Lcom/sprint/w/installer/widget/Workspace$OnScreenChangeListener;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1

.field private static final INVALID_SCREEN:I = -0x1

.field private static final MIN_LENGTH_FOR_FLING:I = 0x64

.field private static final SNAP_VELOCITY:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "Workspace"

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private log:Lcom/sprint/id/logger/Logger;

.field private mActivePointerId:I

.field private mAllowLongPress:Z

.field private mCurrentScreen:I

.field private mDefaultScreen:I

.field private mDeferredNotify:Z

.field private mDeferredScreenChange:I

.field private mDeferredScreenChangeFast:Z

.field private mDownMotionX:F

.field private mDownMotionY:F

.field private mDownScrollX:I

.field private mFirstLayout:Z

.field private mHasLaidOut:Z

.field private mIgnoreChildFocusRequests:Z

.field private mLocked:Z

.field private mMaximumVelocity:I

.field private mNextScreen:I

.field private mOnScreenChangeListener:Lcom/sprint/w/installer/widget/Workspace$OnScreenChangeListener;

.field private mOnScrollListener:Lcom/sprint/w/installer/widget/Workspace$OnScrollListener;

.field private mPagingTouchSlop:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mTouchSlop:I

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 153
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    const-class v0, Lcom/sprint/w/installer/widget/Workspace;

    invoke-static {v0}, Lcom/sprint/id/logger/Logger;->getLogger(Ljava/lang/Class;)Lcom/sprint/id/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/widget/Workspace;->log:Lcom/sprint/id/logger/Logger;

    .line 80
    iput-boolean v3, p0, Lcom/sprint/w/installer/widget/Workspace;->mFirstLayout:Z

    .line 81
    iput-boolean v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mHasLaidOut:Z

    .line 84
    iput v2, p0, Lcom/sprint/w/installer/widget/Workspace;->mNextScreen:I

    .line 107
    iput v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mTouchState:I

    .line 111
    iput-boolean v3, p0, Lcom/sprint/w/installer/widget/Workspace;->mAllowLongPress:Z

    .line 119
    iput v2, p0, Lcom/sprint/w/installer/widget/Workspace;->mActivePointerId:I

    .line 128
    iput v2, p0, Lcom/sprint/w/installer/widget/Workspace;->mDeferredScreenChange:I

    .line 129
    iput-boolean v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mDeferredScreenChangeFast:Z

    .line 130
    iput-boolean v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mDeferredNotify:Z

    .line 155
    iput v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mDefaultScreen:I

    .line 156
    iput-boolean v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mLocked:Z

    .line 158
    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/widget/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 159
    invoke-direct {p0}, Lcom/sprint/w/installer/widget/Workspace;->initWorkspace()V

    .line 160
    return-void
.end method

.method private initWorkspace()V
    .registers 4

    .prologue
    .line 166
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mScroller:Landroid/widget/Scroller;

    .line 167
    iget v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mDefaultScreen:I

    iput v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    .line 169
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 170
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mTouchSlop:I

    .line 171
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mMaximumVelocity:I

    .line 173
    const-string v1, "getScaledPagingTouchSlop"

    iget v2, p0, Lcom/sprint/w/installer/widget/Workspace;->mTouchSlop:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sprint/w/installer/util/ReflectionUtils;->callWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mPagingTouchSlop:I

    .line 174
    return-void
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
    .line 399
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 400
    .local v0, focusableSourceScreen:Landroid/view/View;
    iget v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    if-ltz v1, :cond_13

    iget v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_13

    .line 401
    iget v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    .line 403
    :cond_13
    const/16 v1, 0x11

    if-ne p2, v1, :cond_29

    .line 404
    iget v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    if-lez v1, :cond_23

    .line 405
    iget v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    .line 413
    :cond_23
    :goto_23
    if-eqz v0, :cond_28

    .line 414
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 416
    :cond_28
    return-void

    .line 407
    :cond_29
    const/16 v1, 0x42

    if-ne p2, v1, :cond_23

    .line 408
    iget v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_23

    .line 409
    iget v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_23
.end method

.method public addViewToBack(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 1069
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/widget/Workspace;->addView(Landroid/view/View;)V

    .line 1070
    return-void
.end method

.method public addViewToFront(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 1059
    iget v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    .line 1060
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sprint/w/installer/widget/Workspace;->addView(Landroid/view/View;I)V

    .line 1061
    return-void
.end method

.method allowLongPress()Z
    .registers 2

    .prologue
    .line 858
    iget-boolean v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mAllowLongPress:Z

    return v0
.end method

.method public computeScroll()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 253
    iget-object v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 254
    iget-object v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sprint/w/installer/widget/Workspace;->scrollTo(II)V

    .line 255
    iget-object v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mOnScrollListener:Lcom/sprint/w/installer/widget/Workspace$OnScrollListener;

    if-eqz v0, :cond_25

    .line 256
    iget-object v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mOnScrollListener:Lcom/sprint/w/installer/widget/Workspace$OnScrollListener;

    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getCurrentScreenFraction()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/sprint/w/installer/widget/Workspace$OnScrollListener;->onScroll(F)V

    .line 258
    :cond_25
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->postInvalidate()V

    .line 264
    :cond_28
    :goto_28
    return-void

    .line 259
    :cond_29
    iget v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mNextScreen:I

    if-eq v0, v3, :cond_28

    .line 261
    const/4 v0, 0x0

    iget v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mNextScreen:I

    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/widget/Workspace;->handleScreenChangeCompletion(I)V

    .line 262
    iput v3, p0, Lcom/sprint/w/installer/widget/Workspace;->mNextScreen:I

    goto :goto_28
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter "canvas"

    .prologue
    const/4 v7, 0x1

    .line 268
    const/4 v5, 0x0

    .line 269
    .local v5, restore:Z
    const/4 v6, 0x0

    .line 276
    .local v6, restoreCount:I
    iget v8, p0, Lcom/sprint/w/installer/widget/Workspace;->mTouchState:I

    if-eq v8, v7, :cond_2a

    iget v8, p0, Lcom/sprint/w/installer/widget/Workspace;->mNextScreen:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2a

    move v3, v7

    .line 278
    .local v3, fastDraw:Z
    :goto_d
    if-eqz v3, :cond_2c

    .line 279
    iget v7, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v7}, Lcom/sprint/w/installer/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_24

    .line 280
    iget v7, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v7}, Lcom/sprint/w/installer/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getDrawingTime()J

    move-result-wide v8

    invoke-virtual {p0, p1, v7, v8, v9}, Lcom/sprint/w/installer/widget/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 298
    :cond_24
    :goto_24
    if-eqz v5, :cond_29

    .line 299
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 301
    :cond_29
    return-void

    .line 276
    .end local v3           #fastDraw:Z
    :cond_2a
    const/4 v3, 0x0

    goto :goto_d

    .line 283
    .restart local v3       #fastDraw:Z
    :cond_2c
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getDrawingTime()J

    move-result-wide v1

    .line 286
    .local v1, drawingTime:J
    iget v8, p0, Lcom/sprint/w/installer/widget/Workspace;->mNextScreen:I

    if-ltz v8, :cond_5a

    iget v8, p0, Lcom/sprint/w/installer/widget/Workspace;->mNextScreen:I

    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getScreenCount()I

    move-result v9

    if-ge v8, v9, :cond_5a

    iget v8, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    iget v9, p0, Lcom/sprint/w/installer/widget/Workspace;->mNextScreen:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v7, :cond_5a

    .line 287
    iget v7, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v7}, Lcom/sprint/w/installer/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v1, v2}, Lcom/sprint/w/installer/widget/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 288
    iget v7, p0, Lcom/sprint/w/installer/widget/Workspace;->mNextScreen:I

    invoke-virtual {p0, v7}, Lcom/sprint/w/installer/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v1, v2}, Lcom/sprint/w/installer/widget/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_24

    .line 291
    :cond_5a
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getChildCount()I

    move-result v0

    .line 292
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_5f
    if-ge v4, v0, :cond_24

    .line 293
    invoke-virtual {p0, v4}, Lcom/sprint/w/installer/widget/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v1, v2}, Lcom/sprint/w/installer/widget/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 292
    add-int/lit8 v4, v4, 0x1

    goto :goto_5f
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 6
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 383
    const/16 v1, 0x11

    if-ne p2, v1, :cond_15

    .line 384
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getCurrentScreen()I

    move-result v1

    if-lez v1, :cond_2f

    .line 385
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getCurrentScreen()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/widget/Workspace;->snapToScreen(I)V

    .line 394
    :goto_14
    return v0

    .line 388
    :cond_15
    const/16 v1, 0x42

    if-ne p2, v1, :cond_2f

    .line 389
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getCurrentScreen()I

    move-result v1

    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2f

    .line 390
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getCurrentScreen()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/widget/Workspace;->snapToScreen(I)V

    goto :goto_14

    .line 394
    :cond_2f
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_14
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .registers 6
    .parameter "focused"

    .prologue
    .line 426
    iget v3, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v3}, Lcom/sprint/w/installer/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v0

    .line 427
    .local v0, current:Landroid/view/View;
    move-object v2, p1

    .line 430
    .local v2, v:Landroid/view/View;
    :goto_7
    if-ne v2, v0, :cond_d

    .line 431
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 441
    :cond_c
    return-void

    .line 434
    :cond_d
    if-eq v2, p0, :cond_c

    .line 437
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 438
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_c

    .line 439
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
    .line 180
    iget v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    return v0
.end method

.method getCurrentScreenFraction()F
    .registers 5

    .prologue
    .line 740
    iget-boolean v2, p0, Lcom/sprint/w/installer/widget/Workspace;->mHasLaidOut:Z

    if-nez v2, :cond_8

    .line 741
    iget v2, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    int-to-float v2, v2

    .line 745
    :goto_7
    return v2

    .line 743
    :cond_8
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getScrollX()I

    move-result v1

    .line 744
    .local v1, scrollX:I
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getWidth()I

    move-result v0

    .line 745
    .local v0, screenWidth:I
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_7
.end method

.method getScreenAt(I)Landroid/view/View;
    .registers 3
    .parameter "index"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_9

    .line 196
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/widget/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 198
    :goto_8
    return-object v0

    :cond_9
    mul-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/widget/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_8
.end method

.method getScreenCount()I
    .registers 3

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getChildCount()I

    move-result v0

    .line 188
    .local v0, childCount:I
    iget-object v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_c

    .line 189
    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v0, v1, 0x2

    .line 191
    .end local v0           #childCount:I
    :cond_c
    return v0
.end method

.method getScrollWidth()I
    .registers 3

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getWidth()I

    move-result v0

    .line 203
    .local v0, w:I
    iget-object v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_f

    .line 204
    iget-object v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    .line 206
    :cond_f
    return v0
.end method

.method handleScreenChangeCompletion(I)V
    .registers 10
    .parameter "currentScreen"

    .prologue
    const/4 v7, 0x1

    .line 210
    iput p1, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    .line 211
    iget v2, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v2}, Lcom/sprint/w/installer/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v1

    .line 214
    .local v1, screen:Landroid/view/View;
    :try_start_9
    const-string v2, "dispatchDisplayHint"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/sprint/w/installer/util/ReflectionUtils;->tryInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->invalidate()V
    :try_end_24
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_24} :catch_2a

    .line 221
    :goto_24
    iget v2, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v2, v7}, Lcom/sprint/w/installer/widget/Workspace;->notifyScreenChangeListener(IZ)V

    .line 222
    return-void

    .line 218
    :catch_2a
    move-exception v0

    .line 219
    .local v0, e:Ljava/lang/NullPointerException;
    iget-object v2, p0, Lcom/sprint/w/installer/widget/Workspace;->log:Lcom/sprint/id/logger/Logger;

    const-string v3, "Caught NullPointerException"

    invoke-virtual {v2, v3, v0}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_24
.end method

.method public lockCurrentScreen()V
    .registers 2

    .prologue
    .line 976
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mLocked:Z

    .line 977
    return-void
.end method

.method public markViewSelected(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 968
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/widget/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    .line 969
    return-void
.end method

.method notifyScreenChangeListener(IZ)V
    .registers 5
    .parameter "whichScreen"
    .parameter "changeComplete"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mOnScreenChangeListener:Lcom/sprint/w/installer/widget/Workspace$OnScreenChangeListener;

    if-eqz v0, :cond_f

    .line 226
    if-eqz p2, :cond_1d

    .line 227
    iget-object v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mOnScreenChangeListener:Lcom/sprint/w/installer/widget/Workspace$OnScreenChangeListener;

    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/sprint/w/installer/widget/Workspace$OnScreenChangeListener;->onScreenChanged(Landroid/view/View;I)V

    .line 231
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mOnScrollListener:Lcom/sprint/w/installer/widget/Workspace$OnScrollListener;

    if-eqz v0, :cond_1c

    .line 232
    iget-object v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mOnScrollListener:Lcom/sprint/w/installer/widget/Workspace$OnScrollListener;

    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getCurrentScreenFraction()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/sprint/w/installer/widget/Workspace$OnScrollListener;->onScroll(F)V

    .line 234
    :cond_1c
    return-void

    .line 229
    :cond_1d
    iget-object v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mOnScreenChangeListener:Lcom/sprint/w/installer/widget/Workspace$OnScreenChangeListener;

    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/sprint/w/installer/widget/Workspace$OnScreenChangeListener;->onScreenChanging(Landroid/view/View;I)V

    goto :goto_f
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .parameter "ev"

    .prologue
    .line 455
    iget-object v11, p0, Lcom/sprint/w/installer/widget/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v11, :cond_a

    .line 456
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v11

    iput-object v11, p0, Lcom/sprint/w/installer/widget/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 458
    :cond_a
    iget-object v11, p0, Lcom/sprint/w/installer/widget/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 464
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 466
    .local v0, action:I
    iget-object v11, p0, Lcom/sprint/w/installer/widget/Workspace;->log:Lcom/sprint/id/logger/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onInterceptTouchEvent: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    and-int/lit16 v13, v13, 0xff

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 468
    and-int/lit16 v11, v0, 0xff

    const/4 v12, 0x2

    if-ne v11, v12, :cond_44

    iget v11, p0, Lcom/sprint/w/installer/widget/Workspace;->mTouchState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_44

    .line 469
    iget-object v11, p0, Lcom/sprint/w/installer/widget/Workspace;->log:Lcom/sprint/id/logger/Logger;

    const-string v12, "Intercepting touch events"

    invoke-virtual {v11, v12}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 471
    const/4 v2, 0x1

    .line 559
    :goto_43
    return v2

    .line 474
    :cond_44
    and-int/lit16 v11, v0, 0xff

    packed-switch v11, :pswitch_data_10a

    .line 557
    :cond_49
    :goto_49
    :pswitch_49
    iget v11, p0, Lcom/sprint/w/installer/widget/Workspace;->mTouchState:I

    if-eqz v11, :cond_107

    const/4 v2, 0x1

    .line 558
    .local v2, intercept:Z
    :goto_4e
    iget-object v11, p0, Lcom/sprint/w/installer/widget/Workspace;->log:Lcom/sprint/id/logger/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Intercepting touch events: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    goto :goto_43

    .line 476
    .end local v2           #intercept:Z
    :pswitch_6b
    iget-boolean v11, p0, Lcom/sprint/w/installer/widget/Workspace;->mLocked:Z

    if-nez v11, :cond_49

    .line 485
    iget v11, p0, Lcom/sprint/w/installer/widget/Workspace;->mActivePointerId:I

    invoke-static {p1, v11}, Lcom/sprint/w/installer/util/MotionEventUtils;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 486
    .local v3, pointerIndex:I
    invoke-static {p1, v3}, Lcom/sprint/w/installer/util/MotionEventUtils;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 487
    .local v4, x:F
    invoke-static {p1, v3}, Lcom/sprint/w/installer/util/MotionEventUtils;->getY(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 488
    .local v8, y:F
    iget v11, p0, Lcom/sprint/w/installer/widget/Workspace;->mDownMotionX:F

    sub-float v11, v4, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v5, v11

    .line 489
    .local v5, xDiff:I
    iget v11, p0, Lcom/sprint/w/installer/widget/Workspace;->mDownMotionY:F

    sub-float v11, v8, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v9, v11

    .line 491
    .local v9, yDiff:I
    iget v11, p0, Lcom/sprint/w/installer/widget/Workspace;->mPagingTouchSlop:I

    if-le v5, v11, :cond_ba

    const/4 v7, 0x1

    .line 492
    .local v7, xPaged:Z
    :goto_94
    iget v11, p0, Lcom/sprint/w/installer/widget/Workspace;->mTouchSlop:I

    if-le v5, v11, :cond_bc

    const/4 v6, 0x1

    .line 493
    .local v6, xMoved:Z
    :goto_99
    iget v11, p0, Lcom/sprint/w/installer/widget/Workspace;->mTouchSlop:I

    if-le v9, v11, :cond_be

    const/4 v10, 0x1

    .line 495
    .local v10, yMoved:Z
    :goto_9e
    if-nez v6, :cond_a2

    if-eqz v10, :cond_49

    .line 496
    :cond_a2
    if-eqz v7, :cond_a7

    .line 498
    const/4 v11, 0x1

    iput v11, p0, Lcom/sprint/w/installer/widget/Workspace;->mTouchState:I

    .line 501
    :cond_a7
    iget-boolean v11, p0, Lcom/sprint/w/installer/widget/Workspace;->mAllowLongPress:Z

    if-eqz v11, :cond_49

    .line 502
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sprint/w/installer/widget/Workspace;->mAllowLongPress:Z

    .line 508
    iget v11, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v11}, Lcom/sprint/w/installer/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v1

    .line 509
    .local v1, currentScreen:Landroid/view/View;
    if-eqz v1, :cond_49

    .line 510
    invoke-virtual {v1}, Landroid/view/View;->cancelLongPress()V

    goto :goto_49

    .line 491
    .end local v1           #currentScreen:Landroid/view/View;
    .end local v6           #xMoved:Z
    .end local v7           #xPaged:Z
    .end local v10           #yMoved:Z
    :cond_ba
    const/4 v7, 0x0

    goto :goto_94

    .line 492
    .restart local v7       #xPaged:Z
    :cond_bc
    const/4 v6, 0x0

    goto :goto_99

    .line 493
    .restart local v6       #xMoved:Z
    :cond_be
    const/4 v10, 0x0

    goto :goto_9e

    .line 518
    .end local v3           #pointerIndex:I
    .end local v4           #x:F
    .end local v5           #xDiff:I
    .end local v6           #xMoved:Z
    .end local v7           #xPaged:Z
    .end local v8           #y:F
    .end local v9           #yDiff:I
    :pswitch_c0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 519
    .restart local v4       #x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 521
    .restart local v8       #y:F
    iput v4, p0, Lcom/sprint/w/installer/widget/Workspace;->mDownMotionX:F

    .line 522
    iput v8, p0, Lcom/sprint/w/installer/widget/Workspace;->mDownMotionY:F

    .line 523
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getScrollX()I

    move-result v11

    iput v11, p0, Lcom/sprint/w/installer/widget/Workspace;->mDownScrollX:I

    .line 524
    const/4 v11, 0x0

    invoke-static {p1, v11}, Lcom/sprint/w/installer/util/MotionEventUtils;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v11

    iput v11, p0, Lcom/sprint/w/installer/widget/Workspace;->mActivePointerId:I

    .line 525
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/sprint/w/installer/widget/Workspace;->mAllowLongPress:Z

    .line 532
    iget-object v11, p0, Lcom/sprint/w/installer/widget/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->isFinished()Z

    move-result v11

    if-eqz v11, :cond_e9

    const/4 v11, 0x0

    :goto_e5
    iput v11, p0, Lcom/sprint/w/installer/widget/Workspace;->mTouchState:I

    goto/16 :goto_49

    :cond_e9
    const/4 v11, 0x1

    goto :goto_e5

    .line 539
    .end local v4           #x:F
    .end local v8           #y:F
    :pswitch_eb
    const/4 v11, 0x0

    iput v11, p0, Lcom/sprint/w/installer/widget/Workspace;->mTouchState:I

    .line 540
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sprint/w/installer/widget/Workspace;->mAllowLongPress:Z

    .line 541
    const/4 v11, -0x1

    iput v11, p0, Lcom/sprint/w/installer/widget/Workspace;->mActivePointerId:I

    .line 542
    iget-object v11, p0, Lcom/sprint/w/installer/widget/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v11, :cond_49

    .line 543
    iget-object v11, p0, Lcom/sprint/w/installer/widget/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->recycle()V

    .line 544
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/sprint/w/installer/widget/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_49

    .line 549
    :pswitch_102
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/widget/Workspace;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_49

    .line 557
    :cond_107
    const/4 v2, 0x0

    goto/16 :goto_4e

    .line 474
    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_eb
        :pswitch_6b
        :pswitch_eb
        :pswitch_49
        :pswitch_49
        :pswitch_102
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 15
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v8, 0x0

    .line 332
    const/4 v1, 0x0

    .line 334
    .local v1, childLeft:I
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getChildCount()I

    move-result v3

    .line 335
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_7
    if-ge v4, v3, :cond_26

    .line 336
    invoke-virtual {p0, v4}, Lcom/sprint/w/installer/widget/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 337
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_23

    .line 338
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 339
    .local v2, childWidth:I
    add-int v5, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v0, v1, v8, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 340
    add-int/2addr v1, v2

    .line 335
    .end local v2           #childWidth:I
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 344
    .end local v0           #child:Landroid/view/View;
    :cond_26
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sprint/w/installer/widget/Workspace;->mHasLaidOut:Z

    .line 345
    iget v5, p0, Lcom/sprint/w/installer/widget/Workspace;->mDeferredScreenChange:I

    if-ltz v5, :cond_3b

    .line 346
    iget v5, p0, Lcom/sprint/w/installer/widget/Workspace;->mDeferredScreenChange:I

    iget-boolean v6, p0, Lcom/sprint/w/installer/widget/Workspace;->mDeferredScreenChangeFast:Z

    iget-boolean v7, p0, Lcom/sprint/w/installer/widget/Workspace;->mDeferredNotify:Z

    invoke-virtual {p0, v5, v6, v7}, Lcom/sprint/w/installer/widget/Workspace;->snapToScreen(IZZ)V

    .line 347
    const/4 v5, -0x1

    iput v5, p0, Lcom/sprint/w/installer/widget/Workspace;->mDeferredScreenChange:I

    .line 348
    iput-boolean v8, p0, Lcom/sprint/w/installer/widget/Workspace;->mDeferredScreenChangeFast:Z

    .line 350
    :cond_3b
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 305
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 308
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getChildCount()I

    move-result v0

    .line 309
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v0, :cond_2c

    .line 310
    iget-object v3, p0, Lcom/sprint/w/installer/widget/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_24

    and-int/lit8 v3, v1, 0x1

    if-ne v3, v6, :cond_24

    .line 312
    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/widget/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sprint/w/installer/widget/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3, v4, p2}, Landroid/view/View;->measure(II)V

    .line 309
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 314
    :cond_24
    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/widget/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    goto :goto_21

    .line 318
    :cond_2c
    iget-boolean v3, p0, Lcom/sprint/w/installer/widget/Workspace;->mFirstLayout:Z

    if-eqz v3, :cond_4d

    .line 319
    invoke-virtual {p0, v5}, Lcom/sprint/w/installer/widget/Workspace;->setHorizontalScrollBarEnabled(Z)V

    .line 320
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 321
    .local v2, width:I
    iget-object v3, p0, Lcom/sprint/w/installer/widget/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_42

    .line 322
    iget-object v3, p0, Lcom/sprint/w/installer/widget/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 324
    :cond_42
    iget v3, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    mul-int/2addr v3, v2

    invoke-virtual {p0, v3, v5}, Lcom/sprint/w/installer/widget/Workspace;->scrollTo(II)V

    .line 325
    invoke-virtual {p0, v6}, Lcom/sprint/w/installer/widget/Workspace;->setHorizontalScrollBarEnabled(Z)V

    .line 326
    iput-boolean v5, p0, Lcom/sprint/w/installer/widget/Workspace;->mFirstLayout:Z

    .line 328
    .end local v2           #width:I
    :cond_4d
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 7
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 369
    iget v2, p0, Lcom/sprint/w/installer/widget/Workspace;->mNextScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    .line 370
    iget v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mNextScreen:I

    .line 374
    .local v0, focusableScreen:I
    :goto_7
    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v1

    .line 375
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_15

    .line 376
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 378
    :goto_11
    return v2

    .line 372
    .end local v0           #focusableScreen:I
    .end local v1           #v:Landroid/view/View;
    :cond_12
    iget v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    .restart local v0       #focusableScreen:I
    goto :goto_7

    .line 378
    .restart local v1       #v:Landroid/view/View;
    :cond_15
    const/4 v2, 0x0

    goto :goto_11
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 847
    move-object v0, p1

    check-cast v0, Lcom/sprint/w/installer/widget/Workspace$SavedState;

    .line 848
    .local v0, savedState:Lcom/sprint/w/installer/widget/Workspace$SavedState;
    invoke-virtual {v0}, Lcom/sprint/w/installer/widget/Workspace$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 849
    iget v1, v0, Lcom/sprint/w/installer/widget/Workspace$SavedState;->currentScreen:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_15

    .line 850
    iget v1, v0, Lcom/sprint/w/installer/widget/Workspace$SavedState;->currentScreen:I

    invoke-virtual {p0, v1, v3, v3}, Lcom/sprint/w/installer/widget/Workspace;->snapToScreen(IZZ)V

    .line 852
    :cond_15
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 840
    new-instance v0, Lcom/sprint/w/installer/widget/Workspace$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sprint/w/installer/widget/Workspace$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 841
    .local v0, state:Lcom/sprint/w/installer/widget/Workspace$SavedState;
    iget v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    iput v1, v0, Lcom/sprint/w/installer/widget/Workspace$SavedState;->currentScreen:I

    .line 842
    return-object v0
.end method

.method onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 7
    .parameter "ev"

    .prologue
    .line 563
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 564
    .local v2, pointerIndex:I
    invoke-static {p1, v2}, Lcom/sprint/w/installer/util/MotionEventUtils;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 565
    .local v1, pointerId:I
    iget v3, p0, Lcom/sprint/w/installer/widget/Workspace;->mActivePointerId:I

    if-ne v1, v3, :cond_36

    .line 569
    if-nez v2, :cond_37

    const/4 v0, 0x1

    .line 570
    .local v0, newPointerIndex:I
    :goto_15
    invoke-static {p1, v0}, Lcom/sprint/w/installer/util/MotionEventUtils;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Lcom/sprint/w/installer/widget/Workspace;->mDownMotionX:F

    .line 571
    invoke-static {p1, v0}, Lcom/sprint/w/installer/util/MotionEventUtils;->getY(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Lcom/sprint/w/installer/widget/Workspace;->mDownMotionX:F

    .line 572
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getScrollX()I

    move-result v3

    iput v3, p0, Lcom/sprint/w/installer/widget/Workspace;->mDownScrollX:I

    .line 573
    invoke-static {p1, v0}, Lcom/sprint/w/installer/util/MotionEventUtils;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Lcom/sprint/w/installer/widget/Workspace;->mActivePointerId:I

    .line 574
    iget-object v3, p0, Lcom/sprint/w/installer/widget/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_36

    .line 575
    iget-object v3, p0, Lcom/sprint/w/installer/widget/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 578
    .end local v0           #newPointerIndex:I
    :cond_36
    return-void

    .line 569
    :cond_37
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 27
    .parameter "ev"

    .prologue
    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/widget/Workspace;->log:Lcom/sprint/id/logger/Logger;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onTouchEvent: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/widget/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    if-nez v22, :cond_38

    .line 597
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/w/installer/widget/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 599
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/widget/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 601
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 603
    .local v3, action:I
    and-int/lit16 v0, v3, 0xff

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_342

    .line 730
    :cond_50
    :goto_50
    :pswitch_50
    const/16 v22, 0x1

    return v22

    .line 607
    :pswitch_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/widget/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Scroller;->isFinished()Z

    move-result v22

    if-nez v22, :cond_68

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/widget/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Scroller;->abortAnimation()V

    .line 612
    :cond_68
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sprint/w/installer/widget/Workspace;->mDownMotionX:F

    .line 613
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sprint/w/installer/widget/Workspace;->mDownMotionY:F

    .line 614
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/widget/Workspace;->getScrollX()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sprint/w/installer/widget/Workspace;->mDownScrollX:I

    .line 615
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/sprint/w/installer/util/MotionEventUtils;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sprint/w/installer/widget/Workspace;->mActivePointerId:I

    goto :goto_50

    .line 619
    :pswitch_97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/widget/Workspace;->log:Lcom/sprint/id/logger/Logger;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "mTouchState="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sprint/w/installer/widget/Workspace;->mTouchState:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 621
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sprint/w/installer/widget/Workspace;->mTouchState:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_13b

    .line 623
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sprint/w/installer/widget/Workspace;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/sprint/w/installer/util/MotionEventUtils;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v10

    .line 624
    .local v10, pointerIndex:I
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lcom/sprint/w/installer/util/MotionEventUtils;->getX(Landroid/view/MotionEvent;I)F

    move-result v15

    .line 626
    .local v15, x:F
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/widget/Workspace;->getChildCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/widget/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 627
    .local v8, lastChild:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/widget/Workspace;->getWidth()I

    move-result v23

    sub-int v9, v22, v23

    .line 628
    .local v9, maxScrollX:I
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sprint/w/installer/widget/Workspace;->mDownScrollX:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sprint/w/installer/widget/Workspace;->mDownMotionX:F

    move/from16 v24, v0

    add-float v23, v23, v24

    sub-float v23, v23, v15

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/sprint/w/installer/widget/Workspace;->scrollTo(II)V

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/widget/Workspace;->mOnScrollListener:Lcom/sprint/w/installer/widget/Workspace$OnScrollListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_50

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/widget/Workspace;->mOnScrollListener:Lcom/sprint/w/installer/widget/Workspace$OnScrollListener;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/widget/Workspace;->getCurrentScreenFraction()F

    move-result v23

    invoke-interface/range {v22 .. v23}, Lcom/sprint/w/installer/widget/Workspace$OnScrollListener;->onScroll(F)V

    goto/16 :goto_50

    .line 633
    .end local v8           #lastChild:Landroid/view/View;
    .end local v9           #maxScrollX:I
    .end local v10           #pointerIndex:I
    .end local v15           #x:F
    :cond_13b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sprint/w/installer/widget/Workspace;->mTouchState:I

    move/from16 v22, v0

    if-nez v22, :cond_50

    .line 634
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sprint/w/installer/widget/Workspace;->mLocked:Z

    move/from16 v22, v0

    if-nez v22, :cond_50

    .line 644
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sprint/w/installer/widget/Workspace;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/sprint/w/installer/util/MotionEventUtils;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v10

    .line 645
    .restart local v10       #pointerIndex:I
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lcom/sprint/w/installer/util/MotionEventUtils;->getX(Landroid/view/MotionEvent;I)F

    move-result v15

    .line 646
    .restart local v15       #x:F
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lcom/sprint/w/installer/util/MotionEventUtils;->getY(Landroid/view/MotionEvent;I)F

    move-result v19

    .line 647
    .local v19, y:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sprint/w/installer/widget/Workspace;->mDownMotionX:F

    move/from16 v22, v0

    sub-float v22, v15, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v16, v0

    .line 648
    .local v16, xDiff:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sprint/w/installer/widget/Workspace;->mDownMotionY:F

    move/from16 v22, v0

    sub-float v22, v19, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 650
    .local v20, yDiff:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sprint/w/installer/widget/Workspace;->mPagingTouchSlop:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-le v0, v1, :cond_1e4

    const/16 v18, 0x1

    .line 651
    .local v18, xPaged:Z
    :goto_195
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sprint/w/installer/widget/Workspace;->mTouchSlop:I

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-le v0, v1, :cond_1e7

    const/16 v17, 0x1

    .line 652
    .local v17, xMoved:Z
    :goto_1a3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sprint/w/installer/widget/Workspace;->mTouchSlop:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_1ea

    const/16 v21, 0x1

    .line 654
    .local v21, yMoved:Z
    :goto_1b1
    if-nez v17, :cond_1b5

    if-eqz v21, :cond_50

    .line 655
    :cond_1b5
    if-eqz v18, :cond_1bf

    .line 658
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sprint/w/installer/widget/Workspace;->mTouchState:I

    .line 661
    :cond_1bf
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sprint/w/installer/widget/Workspace;->mAllowLongPress:Z

    move/from16 v22, v0

    if-eqz v22, :cond_50

    .line 662
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sprint/w/installer/widget/Workspace;->mAllowLongPress:Z

    .line 668
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v6

    .line 669
    .local v6, currentScreen:Landroid/view/View;
    if-eqz v6, :cond_50

    .line 670
    invoke-virtual {v6}, Landroid/view/View;->cancelLongPress()V

    goto/16 :goto_50

    .line 650
    .end local v6           #currentScreen:Landroid/view/View;
    .end local v17           #xMoved:Z
    .end local v18           #xPaged:Z
    .end local v21           #yMoved:Z
    :cond_1e4
    const/16 v18, 0x0

    goto :goto_195

    .line 651
    .restart local v18       #xPaged:Z
    :cond_1e7
    const/16 v17, 0x0

    goto :goto_1a3

    .line 652
    .restart local v17       #xMoved:Z
    :cond_1ea
    const/16 v21, 0x0

    goto :goto_1b1

    .line 678
    .end local v10           #pointerIndex:I
    .end local v15           #x:F
    .end local v16           #xDiff:I
    .end local v17           #xMoved:Z
    .end local v18           #xPaged:Z
    .end local v19           #y:F
    .end local v20           #yDiff:I
    :pswitch_1ed
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sprint/w/installer/widget/Workspace;->mTouchState:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_338

    .line 679
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sprint/w/installer/widget/Workspace;->mActivePointerId:I

    .line 680
    .local v4, activePointerId:I
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/sprint/w/installer/util/MotionEventUtils;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v10

    .line 681
    .restart local v10       #pointerIndex:I
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lcom/sprint/w/installer/util/MotionEventUtils;->getX(Landroid/view/MotionEvent;I)F

    move-result v15

    .line 682
    .restart local v15       #x:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sprint/w/installer/widget/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 683
    .local v12, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v22, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sprint/w/installer/widget/Workspace;->mMaximumVelocity:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 687
    invoke-virtual {v12}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v22

    move/from16 v0, v22

    float-to-int v13, v0

    .line 688
    .local v13, velocityX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sprint/w/installer/widget/Workspace;->mDownMotionX:F

    move/from16 v22, v0

    sub-float v22, v22, v15

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    const/high16 v23, 0x42c8

    cmpl-float v22, v22, v23

    if-lez v22, :cond_2f2

    const/4 v7, 0x1

    .line 690
    .local v7, isFling:Z
    :goto_23d
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/widget/Workspace;->getCurrentScreenFraction()F

    move-result v11

    .line 691
    .local v11, scrolledPos:F
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 693
    .local v14, whichScreen:I
    if-eqz v7, :cond_28d

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/widget/Workspace;->log:Lcom/sprint/id/logger/Logger;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "isFling, whichScreen="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " scrolledPos="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " mCurrentScreen="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " velocityX="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 696
    :cond_28d
    if-eqz v7, :cond_2fa

    const/16 v22, 0x1f4

    move/from16 v0, v22

    if-le v13, v0, :cond_2fa

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    move/from16 v22, v0

    if-lez v22, :cond_2fa

    .line 699
    int-to-float v0, v14

    move/from16 v22, v0

    cmpg-float v22, v11, v22

    if-gtz v22, :cond_2f5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    move/from16 v22, v0

    add-int/lit8 v5, v22, -0x1

    .line 700
    .local v5, bound:I
    :goto_2ac
    invoke-static {v14, v5}, Ljava/lang/Math;->min(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/widget/Workspace;->snapToScreen(I)V

    .line 712
    .end local v4           #activePointerId:I
    .end local v5           #bound:I
    .end local v7           #isFling:Z
    .end local v10           #pointerIndex:I
    .end local v11           #scrolledPos:F
    .end local v12           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v13           #velocityX:I
    .end local v14           #whichScreen:I
    .end local v15           #x:F
    :goto_2b7
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sprint/w/installer/widget/Workspace;->mTouchState:I

    .line 713
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sprint/w/installer/widget/Workspace;->mActivePointerId:I

    .line 717
    :pswitch_2c7
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sprint/w/installer/widget/Workspace;->mTouchState:I

    .line 718
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sprint/w/installer/widget/Workspace;->mActivePointerId:I

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/widget/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    if-eqz v22, :cond_50

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/w/installer/widget/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/VelocityTracker;->recycle()V

    .line 721
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/w/installer/widget/Workspace;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_50

    .line 688
    .restart local v4       #activePointerId:I
    .restart local v10       #pointerIndex:I
    .restart local v12       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v13       #velocityX:I
    .restart local v15       #x:F
    :cond_2f2
    const/4 v7, 0x0

    goto/16 :goto_23d

    .line 699
    .restart local v7       #isFling:Z
    .restart local v11       #scrolledPos:F
    .restart local v14       #whichScreen:I
    :cond_2f5
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    goto :goto_2ac

    .line 701
    :cond_2fa
    if-eqz v7, :cond_334

    const/16 v22, -0x1f4

    move/from16 v0, v22

    if-ge v13, v0, :cond_334

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/widget/Workspace;->getChildCount()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_334

    .line 704
    int-to-float v0, v14

    move/from16 v22, v0

    cmpl-float v22, v11, v22

    if-ltz v22, :cond_32f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    move/from16 v22, v0

    add-int/lit8 v5, v22, 0x1

    .line 705
    .restart local v5       #bound:I
    :goto_323
    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/widget/Workspace;->snapToScreen(I)V

    goto :goto_2b7

    .line 704
    .end local v5           #bound:I
    :cond_32f
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    goto :goto_323

    .line 707
    :cond_334
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/widget/Workspace;->snapToDestination()V

    goto :goto_2b7

    .line 710
    .end local v4           #activePointerId:I
    .end local v7           #isFling:Z
    .end local v10           #pointerIndex:I
    .end local v11           #scrolledPos:F
    .end local v12           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v13           #velocityX:I
    .end local v14           #whichScreen:I
    .end local v15           #x:F
    :cond_338
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/w/installer/widget/Workspace;->performClick()Z

    goto/16 :goto_2b7

    .line 726
    :pswitch_33d
    invoke-virtual/range {p0 .. p1}, Lcom/sprint/w/installer/widget/Workspace;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_50

    .line 603
    :pswitch_data_342
    .packed-switch 0x0
        :pswitch_53
        :pswitch_1ed
        :pswitch_97
        :pswitch_2c7
        :pswitch_50
        :pswitch_50
        :pswitch_33d
    .end packed-switch
.end method

.method public removeViewFromBack()V
    .registers 2

    .prologue
    .line 1073
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/widget/Workspace;->removeViewAt(I)V

    .line 1074
    return-void
.end method

.method public removeViewFromFront()V
    .registers 2

    .prologue
    .line 1064
    iget v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    .line 1065
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/widget/Workspace;->removeViewAt(I)V

    .line 1066
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 582
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 583
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/widget/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 584
    .local v0, screen:I
    iget-object v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_d

    .line 585
    div-int/lit8 v0, v0, 0x2

    .line 587
    :cond_d
    if-ltz v0, :cond_18

    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_18

    .line 588
    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/widget/Workspace;->snapToScreen(I)V

    .line 590
    :cond_18
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 9
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    const/4 v1, 0x0

    .line 354
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/widget/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 355
    .local v0, screen:I
    iget-boolean v2, p0, Lcom/sprint/w/installer/widget/Workspace;->mIgnoreChildFocusRequests:Z

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/sprint/w/installer/widget/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_36

    .line 356
    iget-object v2, p0, Lcom/sprint/w/installer/widget/Workspace;->log:Lcom/sprint/id/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring child focus request: request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sprint/id/logger/Logger;->w(Ljava/lang/String;)V

    .line 363
    :cond_35
    :goto_35
    return v1

    .line 359
    :cond_36
    iget v2, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    if-ne v0, v2, :cond_42

    iget-object v2, p0, Lcom/sprint/w/installer/widget/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_35

    .line 360
    :cond_42
    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/widget/Workspace;->snapToScreen(I)V

    .line 361
    const/4 v1, 0x1

    goto :goto_35
.end method

.method public scrollLeft()V
    .registers 2

    .prologue
    .line 927
    iget-boolean v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mLocked:Z

    if-eqz v0, :cond_5

    .line 939
    :cond_4
    :goto_4
    return-void

    .line 930
    :cond_5
    iget-object v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 931
    iget v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    if-lez v0, :cond_4

    .line 932
    iget v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/widget/Workspace;->snapToScreen(I)V

    goto :goto_4

    .line 935
    :cond_19
    iget v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mNextScreen:I

    if-lez v0, :cond_4

    .line 936
    iget v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mNextScreen:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/widget/Workspace;->snapToScreen(I)V

    goto :goto_4
.end method

.method public scrollRight()V
    .registers 3

    .prologue
    .line 946
    iget-boolean v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mLocked:Z

    if-eqz v0, :cond_5

    .line 958
    :cond_4
    :goto_4
    return-void

    .line 949
    :cond_5
    iget-object v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 950
    iget v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4

    .line 951
    iget v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/widget/Workspace;->snapToScreen(I)V

    goto :goto_4

    .line 954
    :cond_1f
    iget v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mNextScreen:I

    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_4

    .line 955
    iget v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mNextScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/widget/Workspace;->snapToScreen(I)V

    goto :goto_4
.end method

.method public setCurrentScreen(I)V
    .registers 4
    .parameter "screenIndex"

    .prologue
    .line 905
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/widget/Workspace;->snapToScreen(I)V

    .line 906
    return-void
.end method

.method public setCurrentScreenNow(I)V
    .registers 3
    .parameter "screenIndex"

    .prologue
    .line 915
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sprint/w/installer/widget/Workspace;->setCurrentScreenNow(IZ)V

    .line 916
    return-void
.end method

.method public setCurrentScreenNow(IZ)V
    .registers 5
    .parameter "screenIndex"
    .parameter "notify"

    .prologue
    .line 919
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getScreenCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p2}, Lcom/sprint/w/installer/widget/Workspace;->snapToScreen(IZZ)V

    .line 920
    return-void
.end method

.method public setIgnoreChildFocusRequests(Z)V
    .registers 2
    .parameter "mIgnoreChildFocusRequests"

    .prologue
    .line 964
    iput-boolean p1, p0, Lcom/sprint/w/installer/widget/Workspace;->mIgnoreChildFocusRequests:Z

    .line 965
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getScreenCount()I

    move-result v0

    .line 246
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 247
    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 249
    :cond_11
    return-void
.end method

.method public setOnScreenChangeListener(Lcom/sprint/w/installer/widget/Workspace$OnScreenChangeListener;)V
    .registers 3
    .parameter "screenChangeListener"

    .prologue
    .line 869
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sprint/w/installer/widget/Workspace;->setOnScreenChangeListener(Lcom/sprint/w/installer/widget/Workspace$OnScreenChangeListener;Z)V

    .line 870
    return-void
.end method

.method public setOnScreenChangeListener(Lcom/sprint/w/installer/widget/Workspace$OnScreenChangeListener;Z)V
    .registers 6
    .parameter "screenChangeListener"
    .parameter "notifyImmediately"

    .prologue
    .line 880
    iput-object p1, p0, Lcom/sprint/w/installer/widget/Workspace;->mOnScreenChangeListener:Lcom/sprint/w/installer/widget/Workspace$OnScreenChangeListener;

    .line 881
    iget-object v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mOnScreenChangeListener:Lcom/sprint/w/installer/widget/Workspace$OnScreenChangeListener;

    if-eqz v0, :cond_15

    if-eqz p2, :cond_15

    .line 882
    iget-object v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mOnScreenChangeListener:Lcom/sprint/w/installer/widget/Workspace$OnScreenChangeListener;

    iget v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    invoke-interface {v0, v1, v2}, Lcom/sprint/w/installer/widget/Workspace$OnScreenChangeListener;->onScreenChanged(Landroid/view/View;I)V

    .line 884
    :cond_15
    return-void
.end method

.method public setOnScrollListener(Lcom/sprint/w/installer/widget/Workspace$OnScrollListener;Z)V
    .registers 5
    .parameter "scrollListener"
    .parameter "notifyImmediately"

    .prologue
    .line 895
    iput-object p1, p0, Lcom/sprint/w/installer/widget/Workspace;->mOnScrollListener:Lcom/sprint/w/installer/widget/Workspace$OnScrollListener;

    .line 896
    iget-object v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mOnScrollListener:Lcom/sprint/w/installer/widget/Workspace$OnScrollListener;

    if-eqz v0, :cond_11

    if-eqz p2, :cond_11

    .line 897
    iget-object v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mOnScrollListener:Lcom/sprint/w/installer/widget/Workspace$OnScrollListener;

    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getCurrentScreenFraction()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/sprint/w/installer/widget/Workspace$OnScrollListener;->onScroll(F)V

    .line 899
    :cond_11
    return-void
.end method

.method public setSeparator(I)V
    .registers 10
    .parameter "resId"

    .prologue
    .line 992
    iget-object v6, p0, Lcom/sprint/w/installer/widget/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1b

    if-nez p1, :cond_1b

    .line 994
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sprint/w/installer/widget/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 995
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getChildCount()I

    move-result v3

    .line 996
    .local v3, num:I
    add-int/lit8 v0, v3, -0x2

    .local v0, i:I
    :goto_f
    if-lez v0, :cond_17

    .line 997
    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/widget/Workspace;->removeViewAt(I)V

    .line 996
    add-int/lit8 v0, v0, -0x2

    goto :goto_f

    .line 999
    :cond_17
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->requestLayout()V

    .line 1026
    .end local v0           #i:I
    .end local v3           #num:I
    :cond_1a
    :goto_1a
    return-void

    .line 1000
    :cond_1b
    if-eqz p1, :cond_1a

    .line 1002
    iget-object v6, p0, Lcom/sprint/w/installer/widget/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_57

    .line 1004
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getChildCount()I

    move-result v4

    .line 1005
    .local v4, numsep:I
    const/4 v1, 0x1

    .line 1006
    .local v1, insertIndex:I
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/sprint/w/installer/widget/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 1007
    const/4 v0, 0x1

    .restart local v0       #i:I
    :goto_31
    if-ge v0, v4, :cond_53

    .line 1008
    new-instance v5, Landroid/view/View;

    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1009
    .local v5, v:Landroid/view/View;
    iget-object v6, p0, Lcom/sprint/w/installer/widget/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1010
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v2, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1011
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1012
    invoke-virtual {p0, v5, v1}, Lcom/sprint/w/installer/widget/Workspace;->addView(Landroid/view/View;I)V

    .line 1013
    add-int/lit8 v1, v1, 0x2

    .line 1007
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 1015
    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v5           #v:Landroid/view/View;
    :cond_53
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->requestLayout()V

    goto :goto_1a

    .line 1018
    .end local v0           #i:I
    .end local v1           #insertIndex:I
    .end local v4           #numsep:I
    :cond_57
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/sprint/w/installer/widget/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 1019
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getChildCount()I

    move-result v3

    .line 1020
    .restart local v3       #num:I
    add-int/lit8 v0, v3, -0x2

    .restart local v0       #i:I
    :goto_67
    if-lez v0, :cond_75

    .line 1021
    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/widget/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/sprint/w/installer/widget/Workspace;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1020
    add-int/lit8 v0, v0, -0x2

    goto :goto_67

    .line 1023
    :cond_75
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->requestLayout()V

    goto :goto_1a
.end method

.method snapToDestination()V
    .registers 5

    .prologue
    .line 749
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getScrollWidth()I

    move-result v0

    .line 750
    .local v0, screenWidth:I
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getScrollX()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    div-int v1, v2, v0

    .line 752
    .local v1, whichScreen:I
    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/widget/Workspace;->snapToScreen(I)V

    .line 753
    return-void
.end method

.method snapToScreen(I)V
    .registers 4
    .parameter "whichScreen"

    .prologue
    .line 756
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sprint/w/installer/widget/Workspace;->snapToScreen(IZZ)V

    .line 757
    return-void
.end method

.method snapToScreen(IZZ)V
    .registers 18
    .parameter "whichScreen"
    .parameter "fast"
    .parameter "notify"

    .prologue
    .line 760
    iget-boolean v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mHasLaidOut:Z

    if-nez v1, :cond_f

    .line 761
    iput p1, p0, Lcom/sprint/w/installer/widget/Workspace;->mDeferredScreenChange:I

    .line 762
    move/from16 v0, p2

    iput-boolean v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mDeferredScreenChangeFast:Z

    .line 763
    move/from16 v0, p3

    iput-boolean v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mDeferredNotify:Z

    .line 836
    :goto_e
    return-void

    .line 767
    :cond_f
    iget-object v1, p0, Lcom/sprint/w/installer/widget/Workspace;->log:Lcom/sprint/id/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Snapping to screen: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sprint/id/logger/Logger;->v(Ljava/lang/String;)V

    .line 769
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getScreenCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 771
    iget v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 773
    .local v11, screenDelta:I
    iget v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mNextScreen:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_47

    iget v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mNextScreen:I

    if-ne v1, p1, :cond_4b

    :cond_47
    iget v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    if-eq v1, p1, :cond_c1

    :cond_4b
    const/4 v10, 0x1

    .line 775
    .local v10, screenChanging:Z
    :goto_4c
    iput p1, p0, Lcom/sprint/w/installer/widget/Workspace;->mNextScreen:I

    .line 777
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getFocusedChild()Landroid/view/View;

    move-result-object v7

    .line 779
    .local v7, focusedChild:Landroid/view/View;
    if-eqz v7, :cond_5e

    if-eqz v11, :cond_5e

    iget v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v7, v1, :cond_5e

    .line 794
    :cond_5e
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getScrollWidth()I

    move-result v1

    mul-int v8, p1, v1

    .line 795
    .local v8, newX:I
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->getScrollX()I

    move-result v2

    .line 796
    .local v2, sX:I
    sub-int v4, v8, v2

    .line 797
    .local v4, delta:I
    mul-int/lit16 v6, v11, 0x12c

    .line 798
    .local v6, duration:I
    invoke-virtual {p0, v6}, Lcom/sprint/w/installer/widget/Workspace;->awakenScrollBars(I)Z

    .line 799
    if-nez v6, :cond_75

    .line 800
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 802
    :cond_75
    if-eqz p2, :cond_78

    .line 803
    const/4 v6, 0x0

    .line 806
    :cond_78
    iget v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mNextScreen:I

    iget v3, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    if-eq v1, v3, :cond_9e

    .line 808
    iget v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/widget/Workspace;->getScreenAt(I)Landroid/view/View;

    move-result-object v9

    .line 809
    .local v9, screenAt:Landroid/view/View;
    if-eqz v9, :cond_c3

    .line 810
    const-string v1, "dispatchDisplayHint"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v3, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v5, v12

    invoke-static {v9, v1, v3, v5}, Lcom/sprint/w/installer/util/ReflectionUtils;->tryInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    .end local v9           #screenAt:Landroid/view/View;
    :cond_9e
    iget-object v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_ab

    .line 829
    iget-object v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 831
    :cond_ab
    iget-object v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 832
    if-eqz v10, :cond_bc

    if-eqz p3, :cond_bc

    .line 833
    iget v1, p0, Lcom/sprint/w/installer/widget/Workspace;->mNextScreen:I

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/sprint/w/installer/widget/Workspace;->notifyScreenChangeListener(IZ)V

    .line 835
    :cond_bc
    invoke-virtual {p0}, Lcom/sprint/w/installer/widget/Workspace;->invalidate()V

    goto/16 :goto_e

    .line 773
    .end local v2           #sX:I
    .end local v4           #delta:I
    .end local v6           #duration:I
    .end local v7           #focusedChild:Landroid/view/View;
    .end local v8           #newX:I
    .end local v10           #screenChanging:Z
    :cond_c1
    const/4 v10, 0x0

    goto :goto_4c

    .line 814
    .restart local v2       #sX:I
    .restart local v4       #delta:I
    .restart local v6       #duration:I
    .restart local v7       #focusedChild:Landroid/view/View;
    .restart local v8       #newX:I
    .restart local v9       #screenAt:Landroid/view/View;
    .restart local v10       #screenChanging:Z
    :cond_c3
    const-string v1, "Workspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Screen at index was null. mCurrentScreen = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/sprint/w/installer/widget/Workspace;->mCurrentScreen:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e
.end method

.method public unlockCurrentScreen()V
    .registers 2

    .prologue
    .line 984
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/w/installer/widget/Workspace;->mLocked:Z

    .line 985
    return-void
.end method
