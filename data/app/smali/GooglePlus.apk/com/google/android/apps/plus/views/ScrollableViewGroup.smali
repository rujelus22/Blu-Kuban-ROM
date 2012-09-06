.class public abstract Lcom/google/android/apps/plus/views/ScrollableViewGroup;
.super Landroid/view/ViewGroup;
.source "ScrollableViewGroup.java"


# static fields
.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mFlingVelocity:F

.field private mFlingable:Z

.field private mIsBeingDragged:Z

.field private mLastPosition:[F

.field private final mLimits:[I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mReceivedDown:Z

.field private mScrollDirection:I

.field private mScrollEnabled:Z

.field protected mScroller:Landroid/widget/Scroller;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVertical:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    new-instance v0, Lcom/google/android/apps/plus/views/ScrollableViewGroup$1;

    invoke-direct {v0}, Lcom/google/android/apps/plus/views/ScrollableViewGroup$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 33
    new-array v1, v4, [F

    fill-array-data v1, :array_4a

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mLastPosition:[F

    .line 34
    new-array v1, v4, [I

    fill-array-data v1, :array_52

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mLimits:[I

    .line 38
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mFlingVelocity:F

    .line 39
    iput v2, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mScrollDirection:I

    .line 41
    iput-boolean v3, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mVertical:Z

    .line 42
    iput-boolean v3, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mFlingable:Z

    .line 43
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mIsBeingDragged:Z

    .line 44
    iput-boolean v3, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mScrollEnabled:Z

    .line 45
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mReceivedDown:Z

    .line 74
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 75
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->setFocusable(Z)V

    .line 77
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 78
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mTouchSlop:I

    .line 79
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mMinimumVelocity:I

    .line 80
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mMaximumVelocity:I

    .line 81
    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v1, p1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mScroller:Landroid/widget/Scroller;

    .line 63
    return-void

    .line 33
    :array_4a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 34
    :array_52
    .array-data 0x4
        0x1t 0x0t 0x0t 0x80t
        0xfft 0xfft 0xfft 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-array v1, v4, [F

    fill-array-data v1, :array_4a

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mLastPosition:[F

    .line 34
    new-array v1, v4, [I

    fill-array-data v1, :array_52

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mLimits:[I

    .line 38
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mFlingVelocity:F

    .line 39
    iput v2, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mScrollDirection:I

    .line 41
    iput-boolean v3, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mVertical:Z

    .line 42
    iput-boolean v3, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mFlingable:Z

    .line 43
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mIsBeingDragged:Z

    .line 44
    iput-boolean v3, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mScrollEnabled:Z

    .line 45
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mReceivedDown:Z

    .line 74
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 75
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->setFocusable(Z)V

    .line 77
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 78
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mTouchSlop:I

    .line 79
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mMinimumVelocity:I

    .line 80
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mMaximumVelocity:I

    .line 81
    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v1, p1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mScroller:Landroid/widget/Scroller;

    .line 67
    return-void

    .line 33
    :array_4a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 34
    :array_52
    .array-data 0x4
        0x1t 0x0t 0x0t 0x80t
        0xfft 0xfft 0xfft 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defState"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-array v1, v4, [F

    fill-array-data v1, :array_4a

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mLastPosition:[F

    .line 34
    new-array v1, v4, [I

    fill-array-data v1, :array_52

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mLimits:[I

    .line 38
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mFlingVelocity:F

    .line 39
    iput v2, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mScrollDirection:I

    .line 41
    iput-boolean v3, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mVertical:Z

    .line 42
    iput-boolean v3, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mFlingable:Z

    .line 43
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mIsBeingDragged:Z

    .line 44
    iput-boolean v3, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mScrollEnabled:Z

    .line 45
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mReceivedDown:Z

    .line 74
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 75
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->setFocusable(Z)V

    .line 77
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 78
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mTouchSlop:I

    .line 79
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mMinimumVelocity:I

    .line 80
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mMaximumVelocity:I

    .line 81
    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v1, p1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mScroller:Landroid/widget/Scroller;

    .line 71
    return-void

    .line 33
    :array_4a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 34
    :array_52
    .array-data 0x4
        0x1t 0x0t 0x0t 0x80t
        0xfft 0xfft 0xfft 0x7ft
    .end array-data
.end method

.method private clampToScrollLimits(I)I
    .registers 5
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 319
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mLimits:[I

    aget v0, v0, v1

    if-ge p1, v0, :cond_d

    .line 320
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mLimits:[I

    aget p1, v0, v1

    .line 325
    .end local p1
    :cond_c
    :goto_c
    return p1

    .line 322
    .restart local p1
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mLimits:[I

    aget v0, v0, v2

    if-le p1, v0, :cond_c

    .line 323
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mLimits:[I

    aget p1, v0, v2

    goto :goto_c
.end method

.method private fling(F)V
    .registers 15
    .parameter "velocity"

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 307
    iput p1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mFlingVelocity:F

    .line 308
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->getScrollX()I

    move-result v1

    .line 309
    .local v1, x:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->getScrollY()I

    move-result v2

    .line 310
    .local v2, y:I
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mVertical:Z

    if-eqz v0, :cond_24

    .line 311
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mScroller:Landroid/widget/Scroller;

    float-to-int v4, p1

    iget-object v5, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mLimits:[I

    aget v7, v5, v3

    iget-object v5, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mLimits:[I

    aget v8, v5, v6

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 315
    :goto_20
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->invalidate()V

    .line 316
    return-void

    .line 313
    :cond_24
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mScroller:Landroid/widget/Scroller;

    float-to-int v7, p1

    iget-object v0, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mLimits:[I

    aget v9, v0, v3

    iget-object v0, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mLimits:[I

    aget v10, v0, v6

    move v5, v1

    move v6, v2

    move v8, v3

    move v11, v3

    move v12, v3

    invoke-virtual/range {v4 .. v12}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_20
.end method

.method private getCurrentVelocity()F
    .registers 4

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 300
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mVertical:Z

    if-eqz v0, :cond_15

    .line 301
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 303
    :goto_14
    return v0

    :cond_15
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_14
.end method

.method private motionShouldStartDrag(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mLastPosition:[F

    aget v7, v7, v4

    sub-float v0, v6, v7

    .line 237
    .local v0, deltaX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mLastPosition:[F

    aget v7, v7, v5

    sub-float v1, v6, v7

    .line 238
    .local v1, deltaY:F
    iget v6, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-gtz v6, :cond_25

    iget v6, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mTouchSlop:I

    neg-int v6, v6

    int-to-float v6, v6

    cmpg-float v6, v0, v6

    if-gez v6, :cond_3f

    :cond_25
    move v2, v5

    .line 239
    .local v2, draggedX:Z
    :goto_26
    iget v6, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v1, v6

    if-gtz v6, :cond_35

    iget v6, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mTouchSlop:I

    neg-int v6, v6

    int-to-float v6, v6

    cmpg-float v6, v1, v6

    if-gez v6, :cond_41

    :cond_35
    move v3, v5

    .line 240
    .local v3, draggedY:Z
    :goto_36
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mVertical:Z

    if-eqz v6, :cond_45

    .line 241
    if-eqz v3, :cond_43

    if-nez v2, :cond_43

    .line 243
    :cond_3e
    :goto_3e
    return v5

    .end local v2           #draggedX:Z
    .end local v3           #draggedY:Z
    :cond_3f
    move v2, v4

    .line 238
    goto :goto_26

    .restart local v2       #draggedX:Z
    :cond_41
    move v3, v4

    .line 239
    goto :goto_36

    .restart local v3       #draggedY:Z
    :cond_43
    move v5, v4

    .line 241
    goto :goto_3e

    .line 243
    :cond_45
    if-eqz v2, :cond_49

    if-eqz v3, :cond_3e

    :cond_49
    move v5, v4

    goto :goto_3e
.end method

.method private shouldStartDrag(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 109
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mScrollEnabled:Z

    if-nez v2, :cond_7

    .line 142
    :cond_6
    :goto_6
    return v0

    .line 113
    :cond_7
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mIsBeingDragged:Z

    if-eqz v2, :cond_e

    .line 114
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mIsBeingDragged:Z

    goto :goto_6

    .line 118
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_38

    :pswitch_15
    goto :goto_6

    .line 122
    :pswitch_16
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->updatePosition(Landroid/view/MotionEvent;)V

    .line 123
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_26

    .line 124
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->startDrag()V

    move v0, v1

    .line 125
    goto :goto_6

    .line 127
    :cond_26
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mReceivedDown:Z

    goto :goto_6

    .line 134
    :pswitch_29
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->motionShouldStartDrag(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 135
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->updatePosition(Landroid/view/MotionEvent;)V

    .line 136
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->startDrag()V

    move v0, v1

    .line 137
    goto :goto_6

    .line 118
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_29
    .end packed-switch
.end method

.method private startDrag()V
    .registers 2

    .prologue
    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mIsBeingDragged:Z

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mFlingVelocity:F

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mScrollDirection:I

    .line 213
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 214
    return-void
.end method

.method private stopDrag(Z)V
    .registers 4
    .parameter "cancelled"

    .prologue
    .line 217
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mIsBeingDragged:Z

    .line 218
    if-nez p1, :cond_3d

    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mFlingable:Z

    if-eqz v1, :cond_3d

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3d

    .line 219
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->getCurrentVelocity()F

    move-result v0

    .line 220
    .local v0, velocity:F
    iget v1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mMinimumVelocity:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_22

    iget v1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mMinimumVelocity:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_37

    .line 221
    :cond_22
    neg-float v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->fling(F)V

    .line 229
    .end local v0           #velocity:F
    :goto_26
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mFlingable:Z

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_36

    .line 230
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 231
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 233
    :cond_36
    return-void

    .line 223
    .restart local v0       #velocity:F
    :cond_37
    iget v1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mScrollDirection:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->onScrollFinished(I)V

    goto :goto_26

    .line 226
    .end local v0           #velocity:F
    :cond_3d
    iget v1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mScrollDirection:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->onScrollFinished(I)V

    goto :goto_26
.end method

.method private updatePositionAndComputeDelta(Landroid/view/MotionEvent;)F
    .registers 5
    .parameter "event"

    .prologue
    .line 247
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mVertical:Z

    if-eqz v2, :cond_13

    const/4 v0, 0x1

    .line 248
    .local v0, i:I
    :goto_5
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mLastPosition:[F

    aget v1, v2, v0

    .line 249
    .local v1, position:F
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->updatePosition(Landroid/view/MotionEvent;)V

    .line 250
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mLastPosition:[F

    aget v2, v2, v0

    sub-float v2, v1, v2

    return v2

    .line 247
    .end local v0           #i:I
    .end local v1           #position:F
    :cond_13
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 11
    .parameter "child"

    .prologue
    const v8, 0x7f090066

    .line 344
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 345
    .local v6, panel:Landroid/view/View;
    if-eqz v6, :cond_3c

    .line 346
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 347
    .local v5, index:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->getChildCount()I

    move-result v3

    .line 349
    .local v3, childrenCount:I
    const/4 v0, 0x0

    .line 350
    .local v0, added:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_19
    if-ge v4, v3, :cond_33

    .line 351
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 352
    .local v2, childPanel:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 353
    .local v1, childIndex:I
    if-le v1, v5, :cond_39

    .line 354
    invoke-virtual {p0, p1, v4}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->addView(Landroid/view/View;I)V

    .line 355
    const/4 v0, 0x1

    .line 360
    .end local v1           #childIndex:I
    .end local v2           #childPanel:Landroid/view/View;
    :cond_33
    if-nez v0, :cond_38

    .line 361
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 366
    .end local v0           #added:Z
    .end local v3           #childrenCount:I
    .end local v4           #i:I
    .end local v5           #index:I
    :cond_38
    :goto_38
    return-void

    .line 350
    .restart local v0       #added:Z
    .restart local v1       #childIndex:I
    .restart local v2       #childPanel:Landroid/view/View;
    .restart local v3       #childrenCount:I
    .restart local v4       #i:I
    .restart local v5       #index:I
    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 364
    .end local v0           #added:Z
    .end local v1           #childIndex:I
    .end local v2           #childPanel:Landroid/view/View;
    .end local v3           #childrenCount:I
    .end local v4           #i:I
    .end local v5           #index:I
    :cond_3c
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_38
.end method

.method public computeScroll()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 280
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 281
    iget-boolean v3, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mVertical:Z

    if-eqz v3, :cond_3d

    iget-object v3, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 282
    .local v0, current:I
    :goto_13
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->scrollTo(I)V

    .line 283
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->invalidate()V

    .line 285
    iget-boolean v3, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mVertical:Z

    if-eqz v3, :cond_44

    iget-object v3, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalY()I

    move-result v2

    .line 286
    .local v2, target:I
    :goto_23
    if-ne v0, v2, :cond_2a

    .line 287
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 290
    :cond_2a
    iget v3, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mFlingVelocity:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3c

    .line 291
    iget v3, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mFlingVelocity:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4b

    const/4 v1, 0x1

    .line 292
    .local v1, direction:I
    :goto_37
    iput v4, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mFlingVelocity:F

    .line 293
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->onScrollFinished(I)V

    .line 296
    .end local v0           #current:I
    .end local v1           #direction:I
    .end local v2           #target:I
    :cond_3c
    return-void

    .line 281
    :cond_3d
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    goto :goto_13

    .line 285
    .restart local v0       #current:I
    :cond_44
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    goto :goto_23

    .line 291
    .restart local v2       #target:I
    :cond_4b
    const/4 v1, -0x1

    goto :goto_37
.end method

.method public getScroll()I
    .registers 2

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mVertical:Z

    if-eqz v0, :cond_9

    .line 255
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->getScrollY()I

    move-result v0

    .line 257
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->getScrollX()I

    move-result v0

    goto :goto_8
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->shouldStartDrag(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onScrollFinished(I)V
    .registers 2
    .parameter "direction"

    .prologue
    .line 268
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 152
    .local v0, action:I
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mFlingable:Z

    if-eqz v2, :cond_19

    .line 153
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_14

    .line 154
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 156
    :cond_14
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 159
    :cond_19
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mIsBeingDragged:Z

    if-nez v2, :cond_31

    .line 160
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->shouldStartDrag(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 191
    :cond_23
    :goto_23
    return v3

    .line 164
    :cond_24
    if-ne v0, v3, :cond_23

    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mReceivedDown:Z

    if-eqz v2, :cond_23

    .line 165
    iput-boolean v4, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mReceivedDown:Z

    .line 166
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->performClick()Z

    move-result v3

    goto :goto_23

    .line 171
    :cond_31
    packed-switch v0, :pswitch_data_64

    goto :goto_23

    .line 186
    :pswitch_35
    const/4 v2, 0x3

    if-ne v0, v2, :cond_61

    move v2, v3

    :goto_39
    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->stopDrag(Z)V

    .line 187
    iput-boolean v4, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mReceivedDown:Z

    goto :goto_23

    .line 173
    :pswitch_3f
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->updatePositionAndComputeDelta(Landroid/view/MotionEvent;)F

    move-result v1

    .line 174
    .local v1, delta:F
    const/high16 v2, -0x4080

    cmpg-float v2, v1, v2

    if-gez v2, :cond_58

    .line 175
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mScrollDirection:I

    .line 180
    :cond_4c
    :goto_4c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->getScroll()I

    move-result v2

    float-to-int v5, v1

    add-int/2addr v2, v5

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->scrollTo(I)V

    .line 181
    iput-boolean v4, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mReceivedDown:Z

    goto :goto_23

    .line 176
    :cond_58
    const/high16 v2, 0x3f80

    cmpl-float v2, v1, v2

    if-lez v2, :cond_4c

    .line 177
    iput v3, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mScrollDirection:I

    goto :goto_4c

    .end local v1           #delta:F
    :cond_61
    move v2, v4

    .line 186
    goto :goto_39

    .line 171
    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_35
        :pswitch_3f
        :pswitch_35
    .end packed-switch
.end method

.method protected scrollTo(I)V
    .registers 4
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 261
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mVertical:Z

    if-eqz v0, :cond_d

    .line 262
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->clampToScrollLimits(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->scrollTo(II)V

    .line 266
    :goto_c
    return-void

    .line 264
    :cond_d
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->clampToScrollLimits(I)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->scrollTo(II)V

    goto :goto_c
.end method

.method public setFlingable(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mFlingable:Z

    .line 94
    return-void
.end method

.method public setScrollEnabled(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mScrollEnabled:Z

    .line 98
    return-void
.end method

.method public setScrollLimits(II)V
    .registers 5
    .parameter "start"
    .parameter "end"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mLimits:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 272
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mLimits:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 273
    return-void
.end method

.method public setVertical(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mVertical:Z

    .line 86
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 3
    .parameter "originalView"

    .prologue
    .line 200
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 201
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public smoothScrollTo(I)V
    .registers 14
    .parameter "position"

    .prologue
    const/16 v5, 0x1f4

    const/4 v1, 0x0

    .line 329
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->clampToScrollLimits(I)I

    move-result p1

    .line 330
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->getScroll()I

    move-result v0

    sub-int v4, p1, v0

    .line 331
    .local v4, delta:I
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mVertical:Z

    if-eqz v0, :cond_1f

    .line 332
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->getScrollY()I

    move-result v2

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 336
    :goto_1b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->invalidate()V

    .line 337
    return-void

    .line 334
    :cond_1f
    iget-object v6, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->getScrollX()I

    move-result v7

    move v8, v1

    move v9, v4

    move v10, v1

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_1b
.end method

.method protected updatePosition(Landroid/view/MotionEvent;)V
    .registers 5
    .parameter "event"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mLastPosition:[F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    aput v2, v0, v1

    .line 206
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->mLastPosition:[F

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    aput v2, v0, v1

    .line 207
    return-void
.end method
