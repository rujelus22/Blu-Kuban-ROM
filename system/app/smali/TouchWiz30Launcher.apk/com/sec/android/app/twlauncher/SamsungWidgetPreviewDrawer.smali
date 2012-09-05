.class public Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;
.super Landroid/view/ViewGroup;
.source "SamsungWidgetPreviewDrawer.java"


# instance fields
.field private SNAP_VELOCITY:I

.field private mCurrentScreen:I

.field private mDownX:F

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMaximumVelocity:I

.field private mNextScreen:I

.field private mOrientation:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSnapToScreenDuration:I

.field private mTouchSlop:I

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mOrientation:I

    .line 31
    const/16 v0, 0x190

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mSnapToScreenDuration:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    .line 53
    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->SNAP_VELOCITY:I

    .line 62
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->init(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 66
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScroller:Landroid/widget/Scroller;

    if-nez v1, :cond_b

    .line 67
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScroller:Landroid/widget/Scroller;

    .line 69
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 70
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchSlop:I

    .line 71
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mMaximumVelocity:I

    .line 72
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    iput v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->SNAP_VELOCITY:I

    .line 78
    iget v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_31

    .line 79
    const/16 v1, 0x190

    iput v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mSnapToScreenDuration:I

    .line 83
    :goto_30
    return-void

    .line 81
    :cond_31
    const/16 v1, 0x258

    iput v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mSnapToScreenDuration:I

    goto :goto_30
.end method

.method private snapToDestination()V
    .registers 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getWhichScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->snapToScreen(I)V

    .line 132
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 97
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 98
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScrollX:I

    .line 99
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScrollY:I

    .line 100
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->postInvalidate()V

    .line 107
    :cond_1c
    :goto_1c
    return-void

    .line 101
    :cond_1d
    iget v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    if-eq v1, v4, :cond_1c

    .line 102
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v0

    .line 103
    .local v0, count:I
    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    .line 104
    iput v4, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    .line 105
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->postInvalidate()V

    goto :goto_1c
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 403
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v0

    .line 404
    .local v0, childCount:I
    if-gtz v0, :cond_9

    .line 445
    :cond_8
    :goto_8
    return-void

    .line 407
    :cond_9
    if-le v0, v7, :cond_13

    .line 408
    iget v8, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    if-gez v8, :cond_31

    .line 409
    add-int/lit8 v8, v0, -0x1

    iput v8, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    .line 415
    :cond_13
    :goto_13
    iget v8, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    if-eq v8, v7, :cond_1d

    iget v8, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1d

    move v5, v7

    .line 417
    .local v5, fastDraw:Z
    :cond_1d
    if-eqz v5, :cond_38

    .line 418
    iget v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    if-ge v7, v0, :cond_8

    .line 419
    iget v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getDrawingTime()J

    move-result-wide v8

    invoke-virtual {p0, p1, v7, v8, v9}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_8

    .line 410
    .end local v5           #fastDraw:Z
    :cond_31
    iget v8, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    if-lt v8, v0, :cond_13

    .line 411
    iput v5, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    goto :goto_13

    .line 422
    .restart local v5       #fastDraw:Z
    :cond_38
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getDrawingTime()J

    move-result-wide v3

    .line 426
    .local v3, drawingTime:J
    iget v8, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    iget v9, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    sub-int v2, v8, v9

    .line 427
    .local v2, diff:I
    iget v8, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    if-ltz v8, :cond_86

    iget v8, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    if-ge v8, v0, :cond_86

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v7, :cond_86

    .line 428
    if-lez v2, :cond_76

    .line 429
    iget v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    add-int/lit8 v8, v0, -0x1

    if-ge v7, v8, :cond_63

    .line 430
    iget v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v3, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 435
    :cond_63
    :goto_63
    iget v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v3, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 436
    iget v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v3, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_8

    .line 432
    :cond_76
    iget v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    if-lez v7, :cond_63

    .line 433
    iget v7, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v3, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_63

    .line 439
    :cond_86
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v1

    .line 440
    .local v1, count:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_8b
    if-ge v6, v1, :cond_8

    .line 441
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v3, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 440
    add-int/lit8 v6, v6, 0x1

    goto :goto_8b
.end method

.method getCurrentScreen()I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    return v0
.end method

.method public getWhichScreen()I
    .registers 8

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getMeasuredWidth()I

    move-result v2

    .line 111
    .local v2, screenWidth:I
    const/4 v4, 0x0

    .line 112
    .local v4, whichScreen:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v1

    .line 113
    .local v1, count:I
    iget v3, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScrollX:I

    .line 114
    .local v3, scrollX:I
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getWidth()I

    move-result v6

    sub-int v0, v5, v6

    .line 115
    .local v0, availableToScroll:I
    if-gez v3, :cond_20

    .line 116
    const/4 v4, 0x0

    .line 127
    :goto_1f
    return v4

    .line 117
    :cond_20
    if-gtz v0, :cond_25

    .line 118
    add-int/lit8 v4, v1, -0x1

    goto :goto_1f

    .line 120
    :cond_25
    if-lez v2, :cond_2d

    .line 121
    div-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v3

    div-int v4, v5, v2

    goto :goto_1f

    .line 123
    :cond_2d
    const/4 v4, 0x0

    goto :goto_1f
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter "ev"

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x1

    .line 191
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_c

    .line 192
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 194
    :cond_c
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 197
    .local v0, action:I
    const/4 v10, 0x2

    if-ne v0, v10, :cond_1d

    iget v10, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    if-eqz v10, :cond_1d

    .line 255
    :goto_1c
    return v1

    .line 201
    :cond_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 202
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 204
    .local v6, y:F
    packed-switch v0, :pswitch_data_62

    .line 254
    :cond_28
    :goto_28
    iget v10, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    if-eqz v10, :cond_60

    .line 255
    .local v1, ret:Z
    :goto_2c
    goto :goto_1c

    .line 216
    .end local v1           #ret:Z
    :pswitch_2d
    iget v10, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mLastMotionX:F

    sub-float v10, v3, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v4, v10

    .line 217
    .local v4, xDiff:I
    iget v10, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mLastMotionY:F

    sub-float v10, v6, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v7, v10

    .line 219
    .local v7, yDiff:I
    iget v2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchSlop:I

    .line 220
    .local v2, touchSlop:I
    if-le v4, v2, :cond_50

    move v5, v1

    .line 221
    .local v5, xMoved:Z
    :goto_44
    if-le v7, v2, :cond_52

    move v8, v1

    .line 223
    .local v8, yMoved:Z
    :goto_47
    if-nez v5, :cond_4b

    if-eqz v8, :cond_28

    .line 225
    :cond_4b
    if-eqz v5, :cond_28

    .line 227
    iput v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    goto :goto_28

    .end local v5           #xMoved:Z
    .end local v8           #yMoved:Z
    :cond_50
    move v5, v9

    .line 220
    goto :goto_44

    .restart local v5       #xMoved:Z
    :cond_52
    move v8, v9

    .line 221
    goto :goto_47

    .line 236
    .end local v2           #touchSlop:I
    .end local v4           #xDiff:I
    .end local v5           #xMoved:Z
    .end local v7           #yDiff:I
    :pswitch_54
    iput v3, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mLastMotionX:F

    iput v3, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mDownX:F

    .line 237
    iput v6, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mLastMotionY:F

    .line 244
    iput v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    goto :goto_28

    .line 250
    :pswitch_5d
    iput v9, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    goto :goto_28

    :cond_60
    move v1, v9

    .line 254
    goto :goto_2c

    .line 204
    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_54
        :pswitch_5d
        :pswitch_2d
        :pswitch_5d
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 15
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"

    .prologue
    .line 383
    const/4 v1, 0x0

    .line 384
    .local v1, childLeft:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v3

    .line 385
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_6
    if-ge v4, v3, :cond_30

    .line 386
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 387
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2d

    .line 388
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 389
    .local v2, childWidth:I
    const/4 v5, 0x0

    add-int v6, v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 391
    add-int/2addr v1, v2

    .line 385
    .end local v2           #childWidth:I
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 394
    .end local v0           #child:Landroid/view/View;
    :cond_30
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v4, 0x4000

    .line 362
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 364
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 365
    .local v3, widthMode:I
    if-eq v3, v4, :cond_13

    .line 366
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Menulayout can only be used in EXACTLY mode."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 369
    :cond_13
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 370
    .local v1, heightMode:I
    if-eq v1, v4, :cond_21

    .line 371
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Menulayout can only be used in EXACTLY mode."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 375
    :cond_21
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v0

    .line 376
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_26
    if-ge v2, v0, :cond_32

    .line 377
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 379
    :cond_32
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 21
    .parameter "ev"

    .prologue
    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-nez v17, :cond_12

    .line 261
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 263
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 266
    .local v3, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    .line 267
    .local v11, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    .line 269
    .local v14, y:F
    packed-switch v3, :pswitch_data_1f2

    .line 357
    :cond_2e
    :goto_2e
    const/16 v17, 0x1

    return v17

    .line 275
    :pswitch_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->isFinished()Z

    move-result v17

    if-nez v17, :cond_46

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->abortAnimation()V

    .line 280
    :cond_46
    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mLastMotionX:F

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mDownX:F

    .line 281
    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mLastMotionY:F

    goto :goto_2e

    .line 285
    :pswitch_53
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_105

    .line 286
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mLastMotionX:F

    move/from16 v17, v0

    sub-float v17, v17, v11

    move/from16 v0, v17

    float-to-int v5, v0

    .line 287
    .local v5, deltaX:I
    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mLastMotionX:F

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v4

    .line 290
    .local v4, childCount:I
    add-int/lit8 v17, v4, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getWidth()I

    move-result v18

    mul-int v6, v17, v18

    .line 291
    .local v6, maxScrollX:I
    if-gez v5, :cond_be

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getWidth()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    neg-int v7, v0

    .line 293
    .local v7, minScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScrollX:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v0, v7, :cond_2e

    .line 294
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScrollX:I

    move/from16 v17, v0

    if-lez v17, :cond_a3

    .line 295
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->scrollBy(II)V

    goto :goto_2e

    .line 297
    :cond_a3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScrollX:I

    move/from16 v17, v0

    sub-int v17, v7, v17

    move/from16 v0, v17

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->scrollBy(II)V

    goto/16 :goto_2e

    .line 300
    .end local v7           #minScrollX:I
    :cond_be
    if-lez v5, :cond_2e

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getWidth()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v6, v17, v18

    .line 303
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScrollX:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v0, v6, :cond_2e

    .line 304
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScrollX:I

    move/from16 v17, v0

    sub-int v17, v6, v17

    move/from16 v0, v17

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->scrollBy(II)V

    goto/16 :goto_2e

    .line 308
    .end local v4           #childCount:I
    .end local v5           #deltaX:I
    .end local v6           #maxScrollX:I
    :cond_105
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mLastMotionX:F

    move/from16 v17, v0

    sub-float v17, v11, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-int v12, v0

    .line 309
    .local v12, xDiff:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mLastMotionY:F

    move/from16 v17, v0

    sub-float v17, v14, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-int v15, v0

    .line 311
    .local v15, yDiff:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchSlop:I

    .line 312
    .local v8, touchSlop:I
    if-le v12, v8, :cond_144

    const/4 v13, 0x1

    .line 313
    .local v13, xMoved:Z
    :goto_12a
    if-le v15, v8, :cond_146

    const/16 v16, 0x1

    .line 315
    .local v16, yMoved:Z
    :goto_12e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v17

    if-lez v17, :cond_2e

    if-nez v13, :cond_138

    if-eqz v16, :cond_2e

    .line 317
    :cond_138
    if-eqz v13, :cond_2e

    .line 320
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    goto/16 :goto_2e

    .line 312
    .end local v13           #xMoved:Z
    .end local v16           #yMoved:Z
    :cond_144
    const/4 v13, 0x0

    goto :goto_12a

    .line 313
    .restart local v13       #xMoved:Z
    :cond_146
    const/16 v16, 0x0

    goto :goto_12e

    .line 328
    .end local v8           #touchSlop:I
    .end local v12           #xDiff:I
    .end local v13           #xMoved:Z
    .end local v15           #yDiff:I
    :pswitch_149
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1ac

    .line 329
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 333
    .local v9, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/view/VelocityTracker;->computeMonomialCurrentVelocity(IF)V

    .line 334
    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getMonomialXVelocity()F

    move-result v17

    move/from16 v0, v17

    float-to-int v10, v0

    .line 337
    .local v10, velocityX:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v4

    .line 338
    .restart local v4       #childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->SNAP_VELOCITY:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v10, v0, :cond_1b6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    move/from16 v17, v0

    if-ltz v17, :cond_1b6

    .line 340
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->snapToScreen(I)V

    .line 348
    :goto_19b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/VelocityTracker;->recycle()V

    .line 349
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 351
    .end local v4           #childCount:I
    .end local v9           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v10           #velocityX:I
    :cond_1ac
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    goto/16 :goto_2e

    .line 341
    .restart local v4       #childCount:I
    .restart local v9       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v10       #velocityX:I
    :cond_1b6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->SNAP_VELOCITY:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_1e3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    move/from16 v17, v0

    add-int/lit8 v18, v4, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_1e3

    .line 343
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->snapToScreen(I)V

    goto :goto_19b

    .line 345
    :cond_1e3
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->snapToDestination()V

    goto :goto_19b

    .line 354
    .end local v4           #childCount:I
    .end local v9           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v10           #velocityX:I
    :pswitch_1e7
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mTouchState:I

    goto/16 :goto_2e

    .line 269
    nop

    :pswitch_data_1f2
    .packed-switch 0x0
        :pswitch_31
        :pswitch_149
        :pswitch_53
        :pswitch_1e7
    .end packed-switch
.end method

.method public removeAllViews()V
    .registers 2

    .prologue
    .line 173
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    .line 176
    return-void
.end method

.method snapToScreen(I)V
    .registers 3
    .parameter "whichScreen"

    .prologue
    .line 135
    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mSnapToScreenDuration:I

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->snapToScreen(II)V

    .line 136
    return-void
.end method

.method snapToScreen(II)V
    .registers 13
    .parameter "whichScreen"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildCount()I

    move-result v7

    .line 141
    .local v7, childCount:I
    add-int/lit8 v0, v7, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 143
    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    if-eq p1, v0, :cond_4c

    const/4 v6, 0x1

    .line 145
    .local v6, changingScreens:Z
    :goto_14
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    .line 146
    .local v8, focusedChild:Landroid/view/View;
    if-eqz v8, :cond_27

    if-eqz v6, :cond_27

    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v8, v0, :cond_27

    .line 147
    invoke-virtual {v8}, Landroid/view/View;->clearFocus()V

    .line 150
    :cond_27
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->getWidth()I

    move-result v0

    mul-int v9, p1, v0

    .line 151
    .local v9, newX:I
    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScrollX:I

    sub-int v3, v9, v0

    .line 153
    .local v3, delta:I
    if-gez p1, :cond_4e

    .line 154
    add-int/lit8 p1, v7, -0x1

    .line 159
    :cond_35
    :goto_35
    iput p1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    .line 161
    if-gez p2, :cond_3b

    .line 162
    iget p2, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mSnapToScreenDuration:I

    .line 165
    :cond_3b
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mScrollX:I

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 166
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->invalidate()V

    .line 168
    iget v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mNextScreen:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/SamsungWidgetPreviewDrawer;->mCurrentScreen:I

    .line 169
    return-void

    .end local v3           #delta:I
    .end local v6           #changingScreens:Z
    .end local v8           #focusedChild:Landroid/view/View;
    .end local v9           #newX:I
    :cond_4c
    move v6, v2

    .line 143
    goto :goto_14

    .line 155
    .restart local v3       #delta:I
    .restart local v6       #changingScreens:Z
    .restart local v8       #focusedChild:Landroid/view/View;
    .restart local v9       #newX:I
    :cond_4e
    if-lt p1, v7, :cond_35

    .line 156
    const/4 p1, 0x0

    goto :goto_35
.end method
