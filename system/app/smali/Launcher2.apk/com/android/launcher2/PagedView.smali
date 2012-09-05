.class public abstract Lcom/android/launcher2/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PagedView$SavedState;,
        Lcom/android/launcher2/PagedView$ScrollInterpolator;,
        Lcom/android/launcher2/PagedView$PageSwitchListener;
    }
.end annotation


# static fields
.field protected static final ALPHA_QUANTIZE_LEVEL:F = 1.0E-4f

.field protected static final CHOICE_MODE_MULTIPLE:I = 0x2

.field protected static final CHOICE_MODE_NONE:I = 0x0

.field protected static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final DEBUG:Z = false

.field protected static final INVALID_PAGE:I = -0x1

.field protected static final INVALID_POINTER:I = -0x1

.field private static final MINIMUM_SNAP_VELOCITY:I = 0x898

.field private static final MIN_FLING_VELOCITY:I = 0xfa

.field private static final MIN_LENGTH_FOR_FLING:I = 0x19

.field protected static final NANOTIME_DIV:F = 1.0E9f

.field private static final OVERSCROLL_ACCELERATE_FACTOR:F = 2.0f

.field private static final OVERSCROLL_DAMP_FACTOR:F = 0.14f

.field private static final PAGE_SNAP_ANIMATION_DURATION:I = 0x226

.field private static final RETURN_TO_ORIGINAL_PAGE_THRESHOLD:F = 0.33f

.field private static final SIGNIFICANT_MOVE_THRESHOLD:F = 0.4f

.field private static final TAG:Ljava/lang/String; = "PagedView"

.field protected static final TOUCH_STATE_NEXT_PAGE:I = 0x3

.field protected static final TOUCH_STATE_PREV_PAGE:I = 0x2

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field protected static final sScrollIndicatorFadeInDuration:I = 0x96

.field protected static final sScrollIndicatorFadeOutDuration:I = 0x28a

.field protected static final sScrollIndicatorFlashDuration:I = 0x28a


# instance fields
.field hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

.field private mActionMode:Landroid/view/ActionMode;

.field protected mActivePointerId:I

.field protected mAllowLongPress:Z

.field protected mAllowOverScroll:Z

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mCenterPagesVertically:Z

.field private mChildOffsets:[I

.field private mChildOffsetsWithLayoutScale:[I

.field private mChildRelativeOffsets:[I

.field protected mChoiceMode:I

.field protected mContentIsRefreshable:Z

.field protected mCurrentPage:I

.field private mDeferLoadAssociatedPagesUntilScrollCompletes:Z

.field protected mDeferScrollUpdate:Z

.field protected mDensity:F

.field protected mDirtyPageContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownMotionX:F

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field protected mForceScreenScrolled:Z

.field private mHasScrollIndicator:Z

.field protected mIsDataReady:Z

.field protected mIsPageMoving:Z

.field protected mLastMotionX:F

.field protected mLastMotionXRemainder:F

.field protected mLastMotionY:F

.field private mLastScreenCenter:I

.field protected mLayoutScale:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field private mMinimumWidth:I

.field protected mNextPage:I

.field protected mOverScrollX:I

.field protected mPageLayoutHeightGap:I

.field protected mPageLayoutPaddingBottom:I

.field protected mPageLayoutPaddingLeft:I

.field protected mPageLayoutPaddingRight:I

.field protected mPageLayoutPaddingTop:I

.field protected mPageLayoutWidthGap:I

.field protected mPageSpacing:I

.field private mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

.field private mPagingTouchSlop:I

.field private mScrollIndicator:Landroid/widget/ImageView;

.field private mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private mScrollIndicatorPaddingLeft:I

.field private mScrollIndicatorPaddingRight:I

.field protected mScroller:Landroid/widget/Scroller;

.field protected mSmoothingTime:F

.field protected mSnapVelocity:I

.field protected mTempVisiblePagesRange:[I

.field protected mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchX:F

.field protected mUnboundedScrollX:I

.field protected mUsePagingTouchSlop:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 202
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    const/16 v1, 0x1f4

    iput v1, p0, Lcom/android/launcher2/PagedView;->mSnapVelocity:I

    .line 83
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    .line 86
    iput v4, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 96
    iput v4, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    .line 107
    iput v2, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 108
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mForceScreenScrolled:Z

    .line 112
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 125
    iput v2, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    .line 126
    iput v2, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    .line 128
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mAllowOverScroll:Z

    .line 130
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/android/launcher2/PagedView;->mTempVisiblePagesRange:[I

    .line 138
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    .line 142
    iput v4, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 158
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    .line 161
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mFadeInAdjacentScreens:Z

    .line 165
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mUsePagingTouchSlop:Z

    .line 169
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    .line 171
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    .line 174
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    .line 181
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mHasScrollIndicator:Z

    .line 1764
    new-instance v1, Lcom/android/launcher2/PagedView$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/PagedView$2;-><init>(Lcom/android/launcher2/PagedView;)V

    iput-object v1, p0, Lcom/android/launcher2/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    .line 203
    iput v2, p0, Lcom/android/launcher2/PagedView;->mChoiceMode:I

    .line 205
    sget-object v1, Lcom/android/launcher/R$styleable;->PagedView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 207
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->setPageSpacing(I)V

    .line 208
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingTop:I

    .line 210
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingBottom:I

    .line 212
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingLeft:I

    .line 214
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingRight:I

    .line 216
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutWidthGap:I

    .line 218
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPageLayoutHeightGap:I

    .line 220
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorPaddingLeft:I

    .line 222
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorPaddingRight:I

    .line 224
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 226
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 227
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->init()V

    .line 228
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/PagedView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter "ev"

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 1319
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1321
    :cond_a
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1322
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 7
    .parameter "ev"

    .prologue
    .line 1332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1334
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1335
    .local v1, pointerId:I
    iget v3, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    if-ne v1, v3, :cond_35

    .line 1339
    if-nez v2, :cond_36

    const/4 v0, 0x1

    .line 1340
    .local v0, newPointerIndex:I
    :goto_15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    iput v3, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 1341
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    .line 1342
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 1343
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1344
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_35

    .line 1345
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1348
    .end local v0           #newPointerIndex:I
    :cond_35
    return-void

    .line 1339
    :cond_36
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private overScrollInfluenceCurve(F)F
    .registers 4
    .parameter "f"

    .prologue
    const/high16 v1, 0x3f80

    .line 1074
    sub-float/2addr p1, v1

    .line 1075
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private releaseVelocityTracker()V
    .registers 2

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 1326
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1329
    :cond_c
    return-void
.end method

.method private updateScrollingIndicator()V
    .registers 3

    .prologue
    .line 1844
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_8

    .line 1851
    :cond_7
    :goto_7
    return-void

    .line 1845
    :cond_8
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1847
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollingIndicator()Landroid/widget/ImageView;

    .line 1848
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 1849
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->updateScrollingIndicatorPosition()V

    goto :goto_7
.end method

.method private updateScrollingIndicatorPosition()V
    .registers 15

    .prologue
    .line 1854
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v10

    if-nez v10, :cond_7

    .line 1878
    :cond_6
    :goto_6
    return-void

    .line 1855
    :cond_7
    iget-object v10, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    if-eqz v10, :cond_6

    .line 1856
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v6

    .line 1857
    .local v6, numPages:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v8

    .line 1858
    .local v8, pageWidth:I
    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1859
    .local v4, lastChildIndex:I
    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v10

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v11

    sub-int v5, v10, v11

    .line 1860
    .local v5, maxScrollX:I
    iget v10, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorPaddingLeft:I

    sub-int v10, v8, v10

    iget v11, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorPaddingRight:I

    sub-int v9, v10, v11

    .line 1861
    .local v9, trackWidth:I
    iget-object v10, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v10

    iget-object v11, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v11

    sub-int v3, v10, v11

    .line 1864
    .local v3, indicatorWidth:I
    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollX()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v5

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 1865
    .local v7, offset:F
    div-int v2, v9, v6

    .line 1866
    .local v2, indicatorSpace:I
    sub-int v10, v9, v2

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iget v11, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorPaddingLeft:I

    add-int v1, v10, v11

    .line 1867
    .local v1, indicatorPos:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->hasElasticScrollIndicator()Z

    move-result v10

    if-eqz v10, :cond_8a

    .line 1868
    iget-object v10, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v10

    if-eq v10, v2, :cond_7d

    .line 1869
    iget-object v10, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iput v2, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1870
    iget-object v10, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->requestLayout()V

    .line 1876
    :cond_7d
    :goto_7d
    iget-object v10, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    int-to-float v11, v1

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1877
    iget-object v10, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->invalidate()V

    goto/16 :goto_6

    .line 1873
    :cond_8a
    div-int/lit8 v10, v2, 0x2

    div-int/lit8 v11, v3, 0x2

    sub-int v0, v10, v11

    .line 1874
    .local v0, indicatorCenterOffset:I
    add-int/2addr v1, v0

    goto :goto_7d
.end method


# virtual methods
.method protected acceleratedOverScroll(F)V
    .registers 8
    .parameter "amount"

    .prologue
    const/4 v5, 0x0

    .line 1079
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    .line 1083
    .local v2, screenSize:I
    const/high16 v3, 0x4000

    int-to-float v4, v2

    div-float v4, p1, v4

    mul-float v0, v3, v4

    .line 1085
    .local v0, f:F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_11

    .line 1101
    :goto_10
    return-void

    .line 1088
    :cond_11
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_20

    .line 1089
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1092
    :cond_20
    int-to-float v3, v2

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1093
    .local v1, overScrollAmount:I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_33

    .line 1094
    iput v1, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    .line 1095
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    .line 1100
    :goto_2f
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_10

    .line 1097
    :cond_33
    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    .line 1098
    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    iput v3, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    goto :goto_2f
.end method

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
    .line 818
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_15

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 819
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 821
    :cond_15
    const/16 v0, 0x11

    if-ne p2, v0, :cond_29

    .line 822
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-lez v0, :cond_28

    .line 823
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 830
    :cond_28
    :goto_28
    return-void

    .line 825
    :cond_29
    const/16 v0, 0x42

    if-ne p2, v0, :cond_28

    .line 826
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_28

    .line 827
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_28
.end method

.method public allowLongPress()Z
    .registers 2

    .prologue
    .line 1542
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    return v0
.end method

.method protected animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 6
    .parameter "v"
    .parameter "r"

    .prologue
    .line 991
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 993
    .local v0, anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 994
    new-instance v1, Lcom/android/launcher2/PagedView$1;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher2/PagedView$1;-><init>(Lcom/android/launcher2/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 999
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1000
    return-void
.end method

.method protected cancelCurrentPageLongPress()V
    .registers 3

    .prologue
    .line 1046
    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    if-eqz v1, :cond_12

    .line 1047
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 1051
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1052
    .local v0, currentPage:Landroid/view/View;
    if-eqz v0, :cond_12

    .line 1053
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1056
    .end local v0           #currentPage:Landroid/view/View;
    :cond_12
    return-void
.end method

.method protected cancelScrollingIndicatorAnimations()V
    .registers 2

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    .line 1798
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1800
    :cond_9
    return-void
.end method

.method public computeScroll()V
    .registers 1

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->computeScrollHelper()Z

    .line 434
    return-void
.end method

.method protected computeScrollHelper()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 395
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 397
    iget v2, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    if-ne v2, v3, :cond_1f

    iget v2, p0, Lcom/android/launcher2/PagedView;->mScrollY:I

    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-eq v2, v3, :cond_2e

    .line 398
    :cond_1f
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 400
    :cond_2e
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 428
    :cond_31
    :goto_31
    return v1

    .line 402
    :cond_32
    iget v3, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-eq v3, v5, :cond_82

    .line 403
    iget v3, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 404
    iput v5, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 405
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener()V

    .line 408
    iget-boolean v3, p0, Lcom/android/launcher2/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    if-eqz v3, :cond_58

    .line 409
    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    .line 410
    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    .line 415
    :cond_58
    iget v2, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-nez v2, :cond_5f

    .line 416
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageEndMoving()V

    .line 420
    :cond_5f
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 421
    const/16 v2, 0x1000

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 423
    .local v0, ev:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_31

    .end local v0           #ev:Landroid/view/accessibility/AccessibilityEvent;
    :cond_82
    move v1, v2

    .line 428
    goto :goto_31
.end method

.method protected dampedOverScroll(F)V
    .registers 8
    .parameter "amount"

    .prologue
    const/4 v5, 0x0

    .line 1104
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    .line 1106
    .local v2, screenSize:I
    int-to-float v3, v2

    div-float v0, p1, v3

    .line 1108
    .local v0, f:F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_d

    .line 1125
    :goto_c
    return-void

    .line 1109
    :cond_d
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/launcher2/PagedView;->overScrollInfluenceCurve(F)F

    move-result v4

    mul-float v0, v3, v4

    .line 1112
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2c

    .line 1113
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1116
    :cond_2c
    const v3, 0x3e0f5c29

    mul-float/2addr v3, v0

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1117
    .local v1, overScrollAmount:I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_43

    .line 1118
    iput v1, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    .line 1119
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    .line 1124
    :goto_3f
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_c

    .line 1121
    :cond_43
    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    .line 1122
    iget v3, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    iput v3, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    goto :goto_3f
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter "ev"

    .prologue
    .line 1003
    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 1004
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .registers 14
    .parameter "ev"
    .parameter "touchSlopScale"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1015
    iget v10, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1016
    .local v0, pointerIndex:I
    const/4 v10, -0x1

    if-ne v0, v10, :cond_c

    .line 1043
    :cond_b
    :goto_b
    return-void

    .line 1019
    :cond_c
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1020
    .local v2, x:F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 1021
    .local v6, y:F
    iget v10, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    sub-float v10, v2, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 1022
    .local v3, xDiff:I
    iget v10, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    sub-float v10, v6, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v7, v10

    .line 1024
    .local v7, yDiff:I
    iget v10, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    int-to-float v10, v10

    mul-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1025
    .local v1, touchSlop:I
    iget v10, p0, Lcom/android/launcher2/PagedView;->mPagingTouchSlop:I

    if-le v3, v10, :cond_6f

    move v5, v9

    .line 1026
    .local v5, xPaged:Z
    :goto_33
    if-le v3, v1, :cond_71

    move v4, v9

    .line 1027
    .local v4, xMoved:Z
    :goto_36
    if-le v7, v1, :cond_39

    move v8, v9

    .line 1029
    .local v8, yMoved:Z
    :cond_39
    if-nez v4, :cond_3f

    if-nez v5, :cond_3f

    if-eqz v8, :cond_b

    .line 1030
    :cond_3f
    iget-boolean v10, p0, Lcom/android/launcher2/PagedView;->mUsePagingTouchSlop:Z

    if-eqz v10, :cond_73

    if-eqz v5, :cond_6b

    .line 1032
    :goto_45
    iput v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1033
    iget v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    iget v10, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    sub-float/2addr v10, v2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1034
    iput v2, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 1035
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 1036
    iget v9, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    int-to-float v9, v9

    iput v9, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 1037
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    long-to-float v9, v9

    const v10, 0x4e6e6b28

    div-float/2addr v9, v10

    iput v9, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 1038
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    .line 1041
    :cond_6b
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->cancelCurrentPageLongPress()V

    goto :goto_b

    .end local v4           #xMoved:Z
    .end local v5           #xPaged:Z
    .end local v8           #yMoved:Z
    :cond_6f
    move v5, v8

    .line 1025
    goto :goto_33

    .restart local v5       #xPaged:Z
    :cond_71
    move v4, v8

    .line 1026
    goto :goto_36

    .line 1030
    .restart local v4       #xMoved:Z
    .restart local v8       #yMoved:Z
    :cond_73
    if-eqz v4, :cond_6b

    goto :goto_45
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 15
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    const/4 v10, -0x1

    .line 743
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v2, v8, 0x2

    .line 746
    .local v2, halfScreenSize:I
    iget v8, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    add-int v7, v8, v2

    .line 748
    .local v7, screenCenter:I
    iget v8, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    if-ne v7, v8, :cond_14

    iget-boolean v8, p0, Lcom/android/launcher2/PagedView;->mForceScreenScrolled:Z

    if-eqz v8, :cond_1b

    .line 749
    :cond_14
    invoke-virtual {p0, v7}, Lcom/android/launcher2/PagedView;->screenScrolled(I)V

    .line 750
    iput v7, p0, Lcom/android/launcher2/PagedView;->mLastScreenCenter:I

    .line 751
    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mForceScreenScrolled:Z

    .line 755
    :cond_1b
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v5

    .line 756
    .local v5, pageCount:I
    if-lez v5, :cond_61

    .line 757
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v8}, Lcom/android/launcher2/PagedView;->getVisiblePages([I)V

    .line 758
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mTempVisiblePagesRange:[I

    aget v4, v8, v9

    .line 759
    .local v4, leftScreen:I
    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mTempVisiblePagesRange:[I

    const/4 v9, 0x1

    aget v6, v8, v9

    .line 760
    .local v6, rightScreen:I
    if-eq v4, v10, :cond_61

    if-eq v6, v10, :cond_61

    .line 761
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getDrawingTime()J

    move-result-wide v0

    .line 763
    .local v0, drawingTime:J
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 764
    iget v8, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    iget v9, p0, Lcom/android/launcher2/PagedView;->mScrollY:I

    iget v10, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    iget v11, p0, Lcom/android/launcher2/PagedView;->mRight:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/launcher2/PagedView;->mLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/launcher2/PagedView;->mScrollY:I

    iget v12, p0, Lcom/android/launcher2/PagedView;->mBottom:I

    add-int/2addr v11, v12

    iget v12, p0, Lcom/android/launcher2/PagedView;->mTop:I

    sub-int/2addr v11, v12

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 767
    move v3, v6

    .local v3, i:I
    :goto_52
    if-lt v3, v4, :cond_5e

    .line 768
    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v0, v1}, Lcom/android/launcher2/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 767
    add-int/lit8 v3, v3, -0x1

    goto :goto_52

    .line 770
    :cond_5e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 773
    .end local v0           #drawingTime:J
    .end local v3           #i:I
    .end local v4           #leftScreen:I
    .end local v6           #rightScreen:I
    :cond_61
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 6
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v0, 0x1

    .line 802
    const/16 v1, 0x11

    if-ne p2, v1, :cond_15

    .line 803
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_2f

    .line 804
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 813
    :goto_14
    return v0

    .line 807
    :cond_15
    const/16 v1, 0x42

    if-ne p2, v1, :cond_2f

    .line 808
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2f

    .line 809
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto :goto_14

    .line 813
    :cond_2f
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_14
.end method

.method distanceInfluenceForSnapDuration(F)F
    .registers 6
    .parameter "f"

    .prologue
    .line 1421
    const/high16 v0, 0x3f00

    sub-float/2addr p1, v0

    .line 1422
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 1423
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public endChoiceMode()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1632
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->isChoiceMode(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1633
    iput v1, p0, Lcom/android/launcher2/PagedView;->mChoiceMode:I

    .line 1634
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->resetCheckedGrandchildren()V

    .line 1635
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1636
    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mActionMode:Landroid/view/ActionMode;

    .line 1638
    :cond_18
    return-void
.end method

.method protected flashScrollingIndicator(Z)V
    .registers 5
    .parameter "animated"

    .prologue
    .line 1771
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1772
    if-nez p1, :cond_13

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->showScrollingIndicator(Z)V

    .line 1773
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x28a

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1774
    return-void

    .line 1772
    :cond_13
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .registers 6
    .parameter "focused"

    .prologue
    .line 841
    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 842
    .local v0, current:Landroid/view/View;
    move-object v2, p1

    .line 844
    .local v2, v:Landroid/view/View;
    :goto_7
    if-ne v2, v0, :cond_d

    .line 845
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 855
    :cond_c
    return-void

    .line 848
    :cond_d
    if-eq v2, p0, :cond_c

    .line 851
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 852
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_c

    .line 853
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #v:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2       #v:Landroid/view/View;
    goto :goto_7
.end method

.method protected getAssociatedLowerPageBound(I)I
    .registers 4
    .parameter "page"

    .prologue
    .line 1617
    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getAssociatedUpperPageBound(I)I
    .registers 5
    .parameter "page"

    .prologue
    .line 1620
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 1621
    .local v0, count:I
    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method protected getCheckedGrandchildren()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/Checkable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1645
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1646
    .local v0, checked:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/Checkable;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    .line 1647
    .local v1, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_a
    if-ge v3, v1, :cond_35

    .line 1648
    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Page;

    .line 1649
    .local v5, layout:Lcom/android/launcher2/Page;
    invoke-interface {v5}, Lcom/android/launcher2/Page;->getPageChildCount()I

    move-result v2

    .line 1650
    .local v2, grandChildCount:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_17
    if-ge v4, v2, :cond_32

    .line 1651
    invoke-interface {v5, v4}, Lcom/android/launcher2/Page;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v6

    .line 1652
    .local v6, v:Landroid/view/View;
    instance-of v7, v6, Landroid/widget/Checkable;

    if-eqz v7, :cond_2f

    move-object v7, v6

    check-cast v7, Landroid/widget/Checkable;

    invoke-interface {v7}, Landroid/widget/Checkable;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2f

    .line 1653
    check-cast v6, Landroid/widget/Checkable;

    .end local v6           #v:Landroid/view/View;
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1650
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 1647
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1657
    .end local v2           #grandChildCount:I
    .end local v4           #j:I
    .end local v5           #layout:Lcom/android/launcher2/Page;
    :cond_35
    return-object v0
.end method

.method protected getChildIndexForRelativeOffset(I)I
    .registers 7
    .parameter "relativeOffset"

    .prologue
    .line 1362
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 1365
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_1d

    .line 1366
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 1367
    .local v2, left:I
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    add-int v3, v2, v4

    .line 1368
    .local v3, right:I
    if-gt v2, p1, :cond_1a

    if-gt p1, v3, :cond_1a

    .line 1372
    .end local v1           #i:I
    .end local v2           #left:I
    .end local v3           #right:I
    :goto_19
    return v1

    .line 1365
    .restart local v1       #i:I
    .restart local v2       #left:I
    .restart local v3       #right:I
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1372
    .end local v2           #left:I
    .end local v3           #right:I
    :cond_1d
    const/4 v1, -0x1

    goto :goto_19
.end method

.method protected getChildOffset(I)I
    .registers 7
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 666
    iget v3, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    const/high16 v4, 0x3f80

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_17

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mChildOffsets:[I

    .line 669
    .local v0, childOffsets:[I
    :goto_d
    if-eqz v0, :cond_1a

    aget v3, v0, p1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1a

    .line 670
    aget v2, v0, p1

    .line 682
    :cond_16
    :goto_16
    return v2

    .line 666
    .end local v0           #childOffsets:[I
    :cond_17
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mChildOffsetsWithLayoutScale:[I

    goto :goto_d

    .line 672
    .restart local v0       #childOffsets:[I
    :cond_1a
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_16

    .line 675
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 676
    .local v2, offset:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_25
    if-ge v1, p1, :cond_36

    .line 677
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 676
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 679
    :cond_36
    if-eqz v0, :cond_16

    .line 680
    aput v2, v0, p1

    goto :goto_16
.end method

.method protected getChildWidth(I)I
    .registers 5
    .parameter "index"

    .prologue
    .line 1378
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1379
    .local v0, measuredWidth:I
    iget v1, p0, Lcom/android/launcher2/PagedView;->mMinimumWidth:I

    .line 1380
    .local v1, minWidth:I
    if-le v1, v0, :cond_d

    .end local v1           #minWidth:I
    :goto_c
    return v1

    .restart local v1       #minWidth:I
    :cond_d
    move v1, v0

    goto :goto_c
.end method

.method getCurrentPage()I
    .registers 2

    .prologue
    .line 271
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1905
    iget v1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2c

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 1906
    .local v0, page:I
    :goto_7
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0044

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1905
    .end local v0           #page:I
    :cond_2c
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    goto :goto_7
.end method

.method getPageAt(I)Landroid/view/View;
    .registers 3
    .parameter "index"

    .prologue
    .line 279
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getPageCount()I
    .registers 2

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageForView(Landroid/view/View;)I
    .registers 7
    .parameter "v"

    .prologue
    .line 1525
    const/4 v2, -0x1

    .line 1526
    .local v2, result:I
    if-eqz p1, :cond_18

    .line 1527
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1528
    .local v3, vp:Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 1529
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v0, :cond_18

    .line 1530
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_15

    .line 1535
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #vp:Landroid/view/ViewParent;
    :goto_14
    return v1

    .line 1529
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

    .line 1535
    goto :goto_14
.end method

.method getPageNearestToCenterOfScreen()I
    .registers 13

    .prologue
    .line 1384
    const v7, 0x7fffffff

    .line 1385
    .local v7, minDistanceFromScreenCenter:I
    const/4 v8, -0x1

    .line 1386
    .local v8, minDistanceFromScreenCenterIndex:I
    iget v10, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int v9, v10, v11

    .line 1387
    .local v9, screenCenter:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    .line 1388
    .local v1, childCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_13
    if-ge v5, v1, :cond_32

    .line 1389
    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    .line 1390
    .local v6, layout:Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v2

    .line 1391
    .local v2, childWidth:I
    div-int/lit8 v4, v2, 0x2

    .line 1392
    .local v4, halfChildWidth:I
    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v10

    add-int v0, v10, v4

    .line 1393
    .local v0, childCenter:I
    sub-int v10, v0, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1394
    .local v3, distanceFromScreenCenter:I
    if-ge v3, v7, :cond_2f

    .line 1395
    move v7, v3

    .line 1396
    move v8, v5

    .line 1388
    :cond_2f
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 1399
    .end local v0           #childCenter:I
    .end local v2           #childWidth:I
    .end local v3           #distanceFromScreenCenter:I
    .end local v4           #halfChildWidth:I
    .end local v6           #layout:Landroid/view/View;
    :cond_32
    return v8
.end method

.method protected getRelativeChildOffset(I)I
    .registers 7
    .parameter "index"

    .prologue
    .line 687
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    aget v2, v2, p1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    .line 688
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    aget v0, v2, p1

    .line 696
    :cond_f
    :goto_f
    return v0

    .line 690
    :cond_10
    iget v2, p0, Lcom/android/launcher2/PagedView;->mPaddingLeft:I

    iget v3, p0, Lcom/android/launcher2/PagedView;->mPaddingRight:I

    add-int v1, v2, v3

    .line 691
    .local v1, padding:I
    iget v2, p0, Lcom/android/launcher2/PagedView;->mPaddingLeft:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildWidth(I)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 693
    .local v0, offset:I
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_f

    .line 694
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    aput v0, v2, p1

    goto :goto_f
.end method

.method protected getScaledMeasuredWidth(Landroid/view/View;)I
    .registers 7
    .parameter "child"

    .prologue
    .line 710
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 711
    .local v1, measuredWidth:I
    iget v2, p0, Lcom/android/launcher2/PagedView;->mMinimumWidth:I

    .line 712
    .local v2, minWidth:I
    if-le v2, v1, :cond_12

    move v0, v2

    .line 713
    .local v0, maxWidth:I
    :goto_9
    int-to-float v3, v0

    iget v4, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    return v3

    .end local v0           #maxWidth:I
    :cond_12
    move v0, v1

    .line 712
    goto :goto_9
.end method

.method protected getScaledRelativeChildOffset(I)I
    .registers 7
    .parameter "index"

    .prologue
    .line 701
    iget v2, p0, Lcom/android/launcher2/PagedView;->mPaddingLeft:I

    iget v3, p0, Lcom/android/launcher2/PagedView;->mPaddingRight:I

    add-int v1, v2, v3

    .line 702
    .local v1, padding:I
    iget v2, p0, Lcom/android/launcher2/PagedView;->mPaddingLeft:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 704
    .local v0, offset:I
    return v0
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .registers 11
    .parameter "screenCenter"
    .parameter "v"
    .parameter "page"

    .prologue
    const/high16 v6, 0x3f80

    .line 1059
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 1061
    .local v1, halfScreenSize:I
    invoke-virtual {p0, p2}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    iget v5, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int v3, v4, v5

    .line 1062
    .local v3, totalDistance:I
    invoke-virtual {p0, p3}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v4

    invoke-virtual {p0, p3}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    sub-int v0, p1, v4

    .line 1065
    .local v0, delta:I
    int-to-float v4, v0

    int-to-float v5, v3

    mul-float/2addr v5, v6

    div-float v2, v4, v5

    .line 1066
    .local v2, scrollProgress:F
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1067
    const/high16 v4, -0x4080

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1068
    return v2
.end method

.method protected getScrollingIndicator()Landroid/widget/ImageView;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1749
    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mHasScrollIndicator:Z

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    if-nez v1, :cond_2c

    .line 1750
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1751
    .local v0, parent:Landroid/view/ViewGroup;
    const v1, 0x7f06000b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    .line 1752
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    if-eqz v1, :cond_2f

    const/4 v1, 0x1

    :goto_21
    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mHasScrollIndicator:Z

    .line 1753
    iget-boolean v1, p0, Lcom/android/launcher2/PagedView;->mHasScrollIndicator:Z

    if-eqz v1, :cond_2c

    .line 1754
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1757
    .end local v0           #parent:Landroid/view/ViewGroup;
    :cond_2c
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    return-object v1

    .restart local v0       #parent:Landroid/view/ViewGroup;
    :cond_2f
    move v1, v2

    .line 1752
    goto :goto_21
.end method

.method protected getSingleCheckedGrandchild()Landroid/widget/Checkable;
    .registers 9

    .prologue
    .line 1665
    iget v6, p0, Lcom/android/launcher2/PagedView;->mChoiceMode:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_33

    .line 1666
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 1667
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v0, :cond_33

    .line 1668
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Page;

    .line 1669
    .local v4, layout:Lcom/android/launcher2/Page;
    invoke-interface {v4}, Lcom/android/launcher2/Page;->getPageChildCount()I

    move-result v1

    .line 1670
    .local v1, grandChildCount:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_17
    if-ge v3, v1, :cond_30

    .line 1671
    invoke-interface {v4, v3}, Lcom/android/launcher2/Page;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v5

    .line 1672
    .local v5, v:Landroid/view/View;
    instance-of v6, v5, Landroid/widget/Checkable;

    if-eqz v6, :cond_2d

    move-object v6, v5

    check-cast v6, Landroid/widget/Checkable;

    invoke-interface {v6}, Landroid/widget/Checkable;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 1673
    check-cast v5, Landroid/widget/Checkable;

    .line 1678
    .end local v0           #childCount:I
    .end local v1           #grandChildCount:I
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #layout:Lcom/android/launcher2/Page;
    .end local v5           #v:Landroid/view/View;
    :goto_2c
    return-object v5

    .line 1670
    .restart local v0       #childCount:I
    .restart local v1       #grandChildCount:I
    .restart local v2       #i:I
    .restart local v3       #j:I
    .restart local v4       #layout:Lcom/android/launcher2/Page;
    .restart local v5       #v:Landroid/view/View;
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 1667
    .end local v5           #v:Landroid/view/View;
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1678
    .end local v0           #childCount:I
    .end local v1           #grandChildCount:I
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #layout:Lcom/android/launcher2/Page;
    :cond_33
    const/4 v5, 0x0

    goto :goto_2c
.end method

.method protected getVisiblePages([I)V
    .registers 12
    .parameter "range"

    .prologue
    const/4 v9, 0x1

    const/4 v6, -0x1

    const/4 v8, 0x0

    .line 717
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    .line 718
    .local v1, pageCount:I
    if-lez v1, :cond_52

    .line 719
    invoke-virtual {p0, v8}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v2

    .line 720
    .local v2, pageWidth:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v4

    .line 721
    .local v4, screenWidth:I
    invoke-virtual {p0, v8}, Lcom/android/launcher2/PagedView;->getScaledRelativeChildOffset(I)I

    move-result v6

    add-int v5, v6, v2

    .line 722
    .local v5, x:I
    const/4 v0, 0x0

    .line 723
    .local v0, leftScreen:I
    const/4 v3, 0x0

    .line 724
    .local v3, rightScreen:I
    :goto_1d
    iget v6, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    if-gt v5, v6, :cond_34

    add-int/lit8 v6, v1, -0x1

    if-ge v0, v6, :cond_34

    .line 725
    add-int/lit8 v0, v0, 0x1

    .line 726
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v6

    iget v7, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    goto :goto_1d

    .line 728
    :cond_34
    move v3, v0

    .line 729
    :goto_35
    iget v6, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    add-int/2addr v6, v4

    if-ge v5, v6, :cond_4d

    add-int/lit8 v6, v1, -0x1

    if-ge v3, v6, :cond_4d

    .line 730
    add-int/lit8 v3, v3, 0x1

    .line 731
    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v6

    iget v7, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    goto :goto_35

    .line 733
    :cond_4d
    aput v0, p1, v8

    .line 734
    aput v3, p1, v9

    .line 739
    .end local v0           #leftScreen:I
    .end local v2           #pageWidth:I
    .end local v3           #rightScreen:I
    .end local v4           #screenWidth:I
    .end local v5           #x:I
    :goto_51
    return-void

    .line 736
    :cond_52
    aput v6, p1, v8

    .line 737
    aput v6, p1, v9

    goto :goto_51
.end method

.method protected hasElasticScrollIndicator()Z
    .registers 2

    .prologue
    .line 1840
    const/4 v0, 0x1

    return v0
.end method

.method public hideScrollIndicatorTrack()V
    .registers 1

    .prologue
    .line 1884
    return-void
.end method

.method protected hideScrollingIndicator(Z)V
    .registers 7
    .parameter "immediately"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1803
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_9

    .line 1833
    :cond_8
    :goto_8
    return-void

    .line 1804
    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1806
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollingIndicator()Landroid/widget/ImageView;

    .line 1807
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 1809
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->updateScrollingIndicatorPosition()V

    .line 1810
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 1811
    if-eqz p1, :cond_2a

    .line 1812
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1813
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_8

    .line 1815
    :cond_2a
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 1816
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x28a

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1817
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher2/PagedView$3;

    invoke-direct {v1, p0}, Lcom/android/launcher2/PagedView$3;-><init>(Lcom/android/launcher2/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1830
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_8
.end method

.method protected hitsNextPage(FF)Z
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 885
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method protected hitsPreviousPage(FF)Z
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 878
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected indexToPage(I)I
    .registers 2
    .parameter "index"

    .prologue
    .line 283
    return p1
.end method

.method protected init()V
    .registers 5

    .prologue
    .line 234
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    .line 235
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 236
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/PagedView$ScrollInterpolator;

    invoke-direct {v3}, Lcom/android/launcher2/PagedView$ScrollInterpolator;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 237
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 238
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/PagedView;->mCenterPagesVertically:Z

    .line 240
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 241
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    .line 242
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mPagingTouchSlop:I

    .line 243
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/PagedView;->mMaximumVelocity:I

    .line 244
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/launcher2/PagedView;->mDensity:F

    .line 245
    return-void
.end method

.method protected invalidateCachedOffsets()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 647
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 648
    .local v0, count:I
    if-nez v0, :cond_f

    .line 649
    iput-object v2, p0, Lcom/android/launcher2/PagedView;->mChildOffsets:[I

    .line 650
    iput-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    .line 651
    iput-object v2, p0, Lcom/android/launcher2/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 663
    :cond_e
    return-void

    .line 655
    :cond_f
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/launcher2/PagedView;->mChildOffsets:[I

    .line 656
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    .line 657
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/launcher2/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 658
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1c
    if-ge v1, v0, :cond_e

    .line 659
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildOffsets:[I

    aput v3, v2, v1

    .line 660
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildRelativeOffsets:[I

    aput v3, v2, v1

    .line 661
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mChildOffsetsWithLayoutScale:[I

    aput v3, v2, v1

    .line 658
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c
.end method

.method protected invalidatePageData()V
    .registers 3

    .prologue
    .line 1705
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->invalidatePageData(IZ)V

    .line 1706
    return-void
.end method

.method protected invalidatePageData(I)V
    .registers 3
    .parameter "currentPage"

    .prologue
    .line 1708
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->invalidatePageData(IZ)V

    .line 1709
    return-void
.end method

.method protected invalidatePageData(IZ)V
    .registers 10
    .parameter "currentPage"
    .parameter "immediateAndOnly"

    .prologue
    const/high16 v6, 0x4000

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 1711
    iget-boolean v2, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    if-nez v2, :cond_9

    .line 1744
    :cond_8
    :goto_8
    return-void

    .line 1715
    :cond_9
    iget-boolean v2, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-eqz v2, :cond_8

    .line 1717
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v5}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1718
    iput v4, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 1721
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->syncPages()V

    .line 1725
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/PagedView;->measure(II)V

    .line 1729
    if-le p1, v4, :cond_39

    .line 1730
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    .line 1734
    :cond_39
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    .line 1735
    .local v0, count:I
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1736
    const/4 v1, 0x0

    .local v1, i:I
    :goto_43
    if-ge v1, v0, :cond_51

    .line 1737
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1736
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 1741
    :cond_51
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2, p2}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(IZ)V

    .line 1742
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->requestLayout()V

    goto :goto_8
.end method

.method protected isChoiceMode(I)Z
    .registers 3
    .parameter "mode"

    .prologue
    .line 1641
    iget v0, p0, Lcom/android/launcher2/PagedView;->mChoiceMode:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected isDataReady()Z
    .registers 2

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    return v0
.end method

.method protected isPageMoving()Z
    .registers 2

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    return v0
.end method

.method protected isScrollingIndicatorEnabled()Z
    .registers 2

    .prologue
    .line 1761
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected loadAssociatedPages(I)V
    .registers 3
    .parameter "page"

    .prologue
    .line 1584
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(IZ)V

    .line 1585
    return-void
.end method

.method protected loadAssociatedPages(IZ)V
    .registers 13
    .parameter "page"
    .parameter "immediateAndOnly"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1587
    iget-boolean v6, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    if-eqz v6, :cond_5d

    .line 1588
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    .line 1589
    .local v1, count:I
    if-ge p1, v1, :cond_5d

    .line 1590
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getAssociatedLowerPageBound(I)I

    move-result v4

    .line 1591
    .local v4, lowerPageBound:I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getAssociatedUpperPageBound(I)I

    move-result v5

    .line 1594
    .local v5, upperPageBound:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_15
    if-ge v2, v1, :cond_5d

    .line 1595
    if-eq v2, p1, :cond_1e

    if-eqz p2, :cond_1e

    .line 1594
    :cond_1b
    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1598
    :cond_1e
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Page;

    .line 1599
    .local v3, layout:Lcom/android/launcher2/Page;
    invoke-interface {v3}, Lcom/android/launcher2/Page;->getPageChildCount()I

    move-result v0

    .line 1600
    .local v0, childCount:I
    if-gt v4, v2, :cond_4e

    if-gt v2, v5, :cond_4e

    .line 1601
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1602
    if-ne v2, p1, :cond_4c

    if-eqz p2, :cond_4c

    move v6, v7

    :goto_3f
    invoke-virtual {p0, v2, v6}, Lcom/android/launcher2/PagedView;->syncPageItems(IZ)V

    .line 1603
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v2, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :cond_4c
    move v6, v8

    .line 1602
    goto :goto_3f

    .line 1606
    :cond_4e
    if-lez v0, :cond_53

    .line 1607
    invoke-interface {v3}, Lcom/android/launcher2/Page;->removeAllViewsOnPage()V

    .line 1609
    :cond_53
    iget-object v6, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v2, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 1614
    .end local v0           #childCount:I
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #layout:Lcom/android/launcher2/Page;
    .end local v4           #lowerPageBound:I
    .end local v5           #upperPageBound:I
    :cond_5d
    return-void
.end method

.method protected maxOverScroll()F
    .registers 4

    .prologue
    .line 1134
    const/high16 v0, 0x3f80

    .line 1135
    .local v0, f:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v1, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher2/PagedView;->overScrollInfluenceCurve(F)F

    move-result v2

    mul-float v0, v1, v2

    .line 1136
    const v1, 0x3e0f5c29

    mul-float/2addr v1, v0

    return v1
.end method

.method protected notifyPageSwitchListener()V
    .registers 4

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    if-eqz v0, :cond_11

    .line 319
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/launcher2/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    .line 321
    :cond_11
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 1290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_12

    .line 1291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_4a

    .line 1314
    :cond_12
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_16
    return v2

    .line 1296
    :pswitch_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_39

    .line 1297
    const/4 v1, 0x0

    .line 1298
    .local v1, vscroll:F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 1303
    .local v0, hscroll:F
    :goto_24
    cmpl-float v2, v0, v3

    if-nez v2, :cond_2c

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_12

    .line 1304
    :cond_2c
    cmpl-float v2, v0, v3

    if-gtz v2, :cond_34

    cmpl-float v2, v1, v3

    if-lez v2, :cond_45

    .line 1305
    :cond_34
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->scrollRight()V

    .line 1309
    :goto_37
    const/4 v2, 0x1

    goto :goto_16

    .line 1300
    .end local v0           #hscroll:F
    .end local v1           #vscroll:F
    :cond_39
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v1, v2

    .line 1301
    .restart local v1       #vscroll:F
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .restart local v0       #hscroll:F
    goto :goto_24

    .line 1307
    :cond_45
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->scrollLeft()V

    goto :goto_37

    .line 1291
    nop

    :pswitch_data_4a
    .packed-switch 0x8
        :pswitch_17
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 1912
    const/4 v0, 0x1

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 1895
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1896
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1897
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_20

    .line 1898
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1899
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 1900
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1902
    :cond_20
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .parameter "info"

    .prologue
    .line 1889
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1890
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1891
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .parameter "ev"

    .prologue
    const/4 v10, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 895
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 898
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_13

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 986
    :cond_12
    :goto_12
    return v5

    .line 905
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 906
    .local v0, action:I
    if-ne v0, v9, :cond_1d

    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eq v7, v5, :cond_12

    .line 911
    :cond_1d
    and-int/lit16 v7, v0, 0xff

    packed-switch v7, :pswitch_data_aa

    .line 986
    :cond_22
    :goto_22
    :pswitch_22
    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-nez v7, :cond_12

    move v5, v6

    goto :goto_12

    .line 917
    :pswitch_28
    iget v7, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    if-eq v7, v10, :cond_30

    .line 918
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_22

    .line 929
    :cond_30
    :pswitch_30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 930
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 932
    .local v4, y:F
    iput v2, p0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    .line 933
    iput v2, p0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 934
    iput v4, p0, Lcom/android/launcher2/PagedView;->mLastMotionY:F

    .line 935
    iput v8, p0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 936
    iput v8, p0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 937
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 938
    iput-boolean v5, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 945
    iget-object v7, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getFinalX()I

    move-result v7

    iget-object v8, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 946
    .local v3, xDist:I
    iget-object v7, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_67

    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    if-ge v3, v7, :cond_89

    :cond_67
    move v1, v5

    .line 947
    .local v1, finishedScrolling:Z
    :goto_68
    if-eqz v1, :cond_8b

    .line 948
    iput v6, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 949
    iget-object v7, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 956
    :goto_71
    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eq v7, v9, :cond_22

    iget v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_22

    .line 957
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_22

    .line 958
    invoke-virtual {p0, v2, v4}, Lcom/android/launcher2/PagedView;->hitsPreviousPage(FF)Z

    move-result v7

    if-eqz v7, :cond_8e

    .line 959
    iput v9, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    goto :goto_22

    .end local v1           #finishedScrolling:Z
    :cond_89
    move v1, v6

    .line 946
    goto :goto_68

    .line 951
    .restart local v1       #finishedScrolling:Z
    :cond_8b
    iput v5, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    goto :goto_71

    .line 960
    :cond_8e
    invoke-virtual {p0, v2, v4}, Lcom/android/launcher2/PagedView;->hitsNextPage(FF)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 961
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    goto :goto_22

    .line 970
    .end local v1           #finishedScrolling:Z
    .end local v2           #x:F
    .end local v3           #xDist:I
    .end local v4           #y:F
    :pswitch_98
    iput v6, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 971
    iput-boolean v6, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 972
    iput v10, p0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 973
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    goto :goto_22

    .line 977
    :pswitch_a2
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 978
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_22

    .line 911
    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_30
        :pswitch_98
        :pswitch_28
        :pswitch_98
        :pswitch_22
        :pswitch_22
        :pswitch_a2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 17
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 567
    iget-boolean v9, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    if-nez v9, :cond_5

    .line 615
    :cond_4
    :goto_4
    return-void

    .line 572
    :cond_5
    iget v9, p0, Lcom/android/launcher2/PagedView;->mPaddingTop:I

    iget v10, p0, Lcom/android/launcher2/PagedView;->mPaddingBottom:I

    add-int v8, v9, v10

    .line 573
    .local v8, verticalPadding:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    .line 574
    .local v1, childCount:I
    const/4 v3, 0x0

    .line 575
    .local v3, childLeft:I
    if-lez v1, :cond_2c

    .line 578
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v3

    .line 581
    iget v9, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    if-gez v9, :cond_2c

    .line 582
    sub-int v9, p4, p2

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0, v9}, Lcom/android/launcher2/PagedView;->setPageSpacing(I)V

    .line 586
    :cond_2c
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2d
    if-ge v6, v1, :cond_63

    .line 587
    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 588
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_60

    .line 589
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v5

    .line 590
    .local v5, childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 591
    .local v2, childHeight:I
    iget v4, p0, Lcom/android/launcher2/PagedView;->mPaddingTop:I

    .line 592
    .local v4, childTop:I
    iget-boolean v9, p0, Lcom/android/launcher2/PagedView;->mCenterPagesVertically:Z

    if-eqz v9, :cond_52

    .line 593
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredHeight()I

    move-result v9

    sub-int/2addr v9, v8

    sub-int/2addr v9, v2

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v4, v9

    .line 597
    :cond_52
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v3

    add-int v10, v4, v2

    invoke-virtual {v0, v3, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 599
    iget v9, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    add-int/2addr v9, v5

    add-int/2addr v3, v9

    .line 586
    .end local v2           #childHeight:I
    .end local v4           #childTop:I
    .end local v5           #childWidth:I
    :cond_60
    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    .line 603
    .end local v0           #child:Landroid/view/View;
    :cond_63
    iget-boolean v9, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    if-eqz v9, :cond_95

    iget v9, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ltz v9, :cond_95

    iget v9, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_95

    .line 604
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/launcher2/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 605
    iget v9, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v9}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v9

    iget v10, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v10}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v10

    sub-int v7, v9, v10

    .line 606
    .local v7, newX:I
    const/4 v9, 0x0

    invoke-virtual {p0, v7, v9}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 607
    iget-object v9, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9, v7}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 608
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/launcher2/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 609
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    .line 612
    .end local v7           #newX:I
    :cond_95
    iget-boolean v9, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    if-eqz v9, :cond_4

    iget v9, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ltz v9, :cond_4

    iget v9, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 613
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    goto/16 :goto_4
.end method

.method protected onMeasure(II)V
    .registers 22
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 438
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    move/from16 v17, v0

    if-nez v17, :cond_c

    .line 439
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 513
    :goto_b
    return-void

    .line 443
    :cond_c
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 444
    .local v15, widthMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 445
    .local v16, widthSize:I
    const/high16 v17, 0x4000

    move/from16 v0, v17

    if-eq v15, v0, :cond_22

    .line 446
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "Workspace can only be used in EXACTLY mode."

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 454
    :cond_22
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 455
    .local v8, heightMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 456
    .local v9, heightSize:I
    const/4 v13, 0x0

    .line 458
    .local v13, maxChildHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingTop:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingBottom:I

    move/from16 v18, v0

    add-int v14, v17, v18

    .line 459
    .local v14, verticalPadding:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingLeft:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mPaddingRight:I

    move/from16 v18, v0

    add-int v10, v17, v18

    .line 465
    .local v10, horizontalPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v3

    .line 466
    .local v3, childCount:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_4c
    if-ge v11, v3, :cond_9a

    .line 468
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 469
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 472
    .local v12, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v17, v0

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_94

    .line 473
    const/high16 v7, -0x8000

    .line 479
    .local v7, childWidthMode:I
    :goto_66
    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_97

    .line 480
    const/high16 v5, -0x8000

    .line 485
    .local v5, childHeightMode:I
    :goto_74
    sub-int v17, v16, v10

    move/from16 v0, v17

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 487
    .local v6, childWidthMeasureSpec:I
    sub-int v17, v9, v14

    move/from16 v0, v17

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 490
    .local v4, childHeightMeasureSpec:I
    invoke-virtual {v2, v6, v4}, Landroid/view/View;->measure(II)V

    .line 491
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 466
    add-int/lit8 v11, v11, 0x1

    goto :goto_4c

    .line 475
    .end local v4           #childHeightMeasureSpec:I
    .end local v5           #childHeightMode:I
    .end local v6           #childWidthMeasureSpec:I
    .end local v7           #childWidthMode:I
    :cond_94
    const/high16 v7, 0x4000

    .restart local v7       #childWidthMode:I
    goto :goto_66

    .line 482
    :cond_97
    const/high16 v5, 0x4000

    .restart local v5       #childHeightMode:I
    goto :goto_74

    .line 496
    .end local v2           #child:Landroid/view/View;
    .end local v5           #childHeightMode:I
    .end local v7           #childWidthMode:I
    .end local v12           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_9a
    const/high16 v17, -0x8000

    move/from16 v0, v17

    if-ne v8, v0, :cond_a2

    .line 497
    add-int v9, v13, v14

    .line 500
    :cond_a2
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Lcom/android/launcher2/PagedView;->setMeasuredDimension(II)V

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->invalidateCachedOffsets()V

    .line 506
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->updateScrollingIndicatorPosition()V

    .line 508
    if-lez v3, :cond_cf

    .line 509
    add-int/lit8 v17, v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v17

    add-int/lit8 v18, v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    goto/16 :goto_b

    .line 511
    :cond_cf
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    goto/16 :goto_b
.end method

.method protected onPageBeginMoving()V
    .registers 2

    .prologue
    .line 343
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->showScrollingIndicator(Z)V

    .line 344
    return-void
.end method

.method protected onPageEndMoving()V
    .registers 2

    .prologue
    .line 348
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->hideScrollingIndicator(Z)V

    .line 349
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 7
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 788
    iget v2, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    .line 789
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 793
    .local v0, focusablePage:I
    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 794
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_15

    .line 795
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 797
    :goto_11
    return v2

    .line 791
    .end local v0           #focusablePage:I
    .end local v1           #v:Landroid/view/View;
    :cond_12
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .restart local v0       #focusablePage:I
    goto :goto_7

    .line 797
    .restart local v1       #v:Landroid/view/View;
    :cond_15
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 22
    .parameter "ev"

    .prologue
    .line 1142
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v17

    if-gtz v17, :cond_b

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    .line 1285
    :goto_a
    return v17

    .line 1144
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1146
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 1148
    .local v3, action:I
    and-int/lit16 v0, v3, 0xff

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_306

    .line 1285
    :cond_19
    :goto_19
    :pswitch_19
    const/16 v17, 0x1

    goto :goto_a

    .line 1154
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->isFinished()Z

    move-result v17

    if-nez v17, :cond_31

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1159
    :cond_31
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    .line 1160
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    .line 1161
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1162
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1163
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    .line 1164
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    goto :goto_19

    .line 1169
    :pswitch_73
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_11a

    .line 1171
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 1172
    .local v11, pointerIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    .line 1173
    .local v16, x:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    move/from16 v18, v0

    add-float v17, v17, v18

    sub-float v5, v17, v16

    .line 1175
    .local v5, deltaX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    move/from16 v17, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v18

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1180
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const/high16 v18, 0x3f80

    cmpl-float v17, v17, v18

    if-ltz v17, :cond_115

    .line 1181
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchX:F

    move/from16 v17, v0

    add-float v17, v17, v5

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 1182
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x4e6e6b28

    div-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 1183
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    move/from16 v17, v0

    if-nez v17, :cond_111

    .line 1184
    float-to-int v0, v5

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedView;->scrollBy(II)V

    .line 1189
    :goto_f9
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    .line 1190
    float-to-int v0, v5

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v17, v5, v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_19

    .line 1187
    :cond_111
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_f9

    .line 1192
    :cond_115
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->awakenScrollBars()Z

    goto/16 :goto_19

    .line 1195
    .end local v5           #deltaX:F
    .end local v11           #pointerIndex:I
    .end local v16           #x:F
    :cond_11a
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_19

    .line 1200
    :pswitch_11f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_26e

    .line 1201
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1202
    .local v4, activePointerId:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 1203
    .restart local v11       #pointerIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    .line 1204
    .restart local v16       #x:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1205
    .local v14, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1206
    invoke-virtual {v14, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v15, v0

    .line 1207
    .local v15, velocityX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mDownMotionX:F

    move/from16 v17, v0

    sub-float v17, v16, v17

    move/from16 v0, v17

    float-to-int v5, v0

    .line 1208
    .local v5, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v10

    .line 1209
    .local v10, pageWidth:I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v10

    move/from16 v18, v0

    const v19, 0x3ecccccd

    mul-float v18, v18, v19

    cmpl-float v17, v17, v18

    if-lez v17, :cond_22b

    const/4 v8, 0x1

    .line 1211
    .local v8, isSignificantMove:Z
    :goto_193
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mSnapVelocity:I

    .line 1213
    .local v13, snapVelocity:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mLastMotionX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mLastMotionXRemainder:F

    move/from16 v19, v0

    add-float v18, v18, v19

    sub-float v18, v18, v16

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    .line 1215
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTotalMotionX:F

    move/from16 v17, v0

    const/high16 v18, 0x41c8

    cmpl-float v17, v17, v18

    if-lez v17, :cond_22e

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    if-le v0, v13, :cond_22e

    const/4 v7, 0x1

    .line 1221
    .local v7, isFling:Z
    :goto_1ce
    const/4 v12, 0x0

    .line 1222
    .local v12, returnToOriginalPage:Z
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    int-to-float v0, v10

    move/from16 v18, v0

    const v19, 0x3ea8f5c3

    mul-float v18, v18, v19

    cmpl-float v17, v17, v18

    if-lez v17, :cond_1f9

    int-to-float v0, v15

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->signum(F)F

    move-result v17

    int-to-float v0, v5

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->signum(F)F

    move-result v18

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_1f9

    if-eqz v7, :cond_1f9

    .line 1224
    const/4 v12, 0x1

    .line 1231
    :cond_1f9
    if-eqz v8, :cond_1ff

    if-lez v5, :cond_1ff

    if-eqz v7, :cond_203

    :cond_1ff
    if-eqz v7, :cond_239

    if-lez v15, :cond_239

    :cond_203
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    if-lez v17, :cond_239

    .line 1233
    if-eqz v12, :cond_230

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 1234
    .local v6, finalPage:I
    :goto_211
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v15}, Lcom/android/launcher2/PagedView;->snapToPageWithVelocity(II)V

    .line 1266
    .end local v4           #activePointerId:I
    .end local v5           #deltaX:I
    .end local v6           #finalPage:I
    .end local v7           #isFling:Z
    .end local v8           #isSignificantMove:Z
    .end local v10           #pageWidth:I
    .end local v11           #pointerIndex:I
    .end local v12           #returnToOriginalPage:Z
    .end local v13           #snapVelocity:I
    .end local v14           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v15           #velocityX:I
    .end local v16           #x:F
    :goto_216
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1267
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1268
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_19

    .line 1209
    .restart local v4       #activePointerId:I
    .restart local v5       #deltaX:I
    .restart local v10       #pageWidth:I
    .restart local v11       #pointerIndex:I
    .restart local v14       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v15       #velocityX:I
    .restart local v16       #x:F
    :cond_22b
    const/4 v8, 0x0

    goto/16 :goto_193

    .line 1215
    .restart local v8       #isSignificantMove:Z
    .restart local v13       #snapVelocity:I
    :cond_22e
    const/4 v7, 0x0

    goto :goto_1ce

    .line 1233
    .restart local v7       #isFling:Z
    .restart local v12       #returnToOriginalPage:Z
    :cond_230
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    add-int/lit8 v6, v17, -0x1

    goto :goto_211

    .line 1235
    :cond_239
    if-eqz v8, :cond_23f

    if-gez v5, :cond_23f

    if-eqz v7, :cond_243

    :cond_23f
    if-eqz v7, :cond_26a

    if-gez v15, :cond_26a

    :cond_243
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_26a

    .line 1238
    if-eqz v12, :cond_261

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 1239
    .restart local v6       #finalPage:I
    :goto_25b
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v15}, Lcom/android/launcher2/PagedView;->snapToPageWithVelocity(II)V

    goto :goto_216

    .line 1238
    .end local v6           #finalPage:I
    :cond_261
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    add-int/lit8 v6, v17, 0x1

    goto :goto_25b

    .line 1241
    :cond_26a
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    goto :goto_216

    .line 1243
    .end local v4           #activePointerId:I
    .end local v5           #deltaX:I
    .end local v7           #isFling:Z
    .end local v8           #isSignificantMove:Z
    .end local v10           #pageWidth:I
    .end local v11           #pointerIndex:I
    .end local v12           #returnToOriginalPage:Z
    .end local v13           #snapVelocity:I
    .end local v14           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v15           #velocityX:I
    .end local v16           #x:F
    :cond_26e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2a0

    .line 1247
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1248
    .local v9, nextPage:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v9, v0, :cond_29b

    .line 1249
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto/16 :goto_216

    .line 1251
    :cond_29b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    goto/16 :goto_216

    .line 1253
    .end local v9           #nextPage:I
    :cond_2a0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2d6

    .line 1257
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1258
    .restart local v9       #nextPage:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v9, v0, :cond_2d1

    .line 1259
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto/16 :goto_216

    .line 1261
    :cond_2d1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    goto/16 :goto_216

    .line 1264
    .end local v9           #nextPage:I
    :cond_2d6
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_216

    .line 1272
    :pswitch_2db
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mTouchState:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2ec

    .line 1273
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->snapToDestination()V

    .line 1275
    :cond_2ec
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mTouchState:I

    .line 1276
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/PagedView;->mActivePointerId:I

    .line 1277
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_19

    .line 1281
    :pswitch_301
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_19

    .line 1148
    :pswitch_data_306
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_11f
        :pswitch_73
        :pswitch_2db
        :pswitch_19
        :pswitch_19
        :pswitch_301
    .end packed-switch
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "ev"

    .prologue
    .line 1350
    return-void
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 637
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 641
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mForceScreenScrolled:Z

    .line 642
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 643
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidateCachedOffsets()V

    .line 644
    return-void
.end method

.method protected overScroll(F)V
    .registers 2
    .parameter "amount"

    .prologue
    .line 1128
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->dampedOverScroll(F)V

    .line 1129
    return-void
.end method

.method protected pageBeginMoving()V
    .registers 2

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_a

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    .line 326
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->onPageBeginMoving()V

    .line 328
    :cond_a
    return-void
.end method

.method protected pageEndMoving()V
    .registers 2

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_a

    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    .line 333
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->onPageEndMoving()V

    .line 335
    :cond_a
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 1354
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1355
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v0

    .line 1356
    .local v0, page:I
    if-ltz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_1c

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1357
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 1359
    :cond_1c
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 777
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->indexToPage(I)I

    move-result v0

    .line 778
    .local v0, page:I
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_14

    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_19

    .line 779
    :cond_14
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 780
    const/4 v1, 0x1

    .line 782
    :goto_18
    return v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 4
    .parameter "disallowIntercept"

    .prologue
    .line 865
    if-eqz p1, :cond_b

    .line 868
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 869
    .local v0, currentPage:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 871
    .end local v0           #currentPage:Landroid/view/View;
    :cond_b
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 872
    return-void
.end method

.method protected resetCheckedGrandchildren()V
    .registers 5

    .prologue
    .line 1683
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCheckedGrandchildren()Ljava/util/ArrayList;

    move-result-object v1

    .line 1684
    .local v1, checked:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/Checkable;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_18

    .line 1685
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Checkable;

    .line 1686
    .local v0, c:Landroid/widget/Checkable;
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1684
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1688
    .end local v0           #c:Landroid/widget/Checkable;
    :cond_18
    return-void
.end method

.method protected screenScrolled(I)V
    .registers 8
    .parameter "screenCenter"

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 619
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->updateScrollingIndicator()V

    .line 621
    :cond_9
    iget-boolean v4, p0, Lcom/android/launcher2/PagedView;->mFadeInAdjacentScreens:Z

    if-eqz v4, :cond_32

    .line 622
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2f

    .line 623
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 624
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_2c

    .line 625
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/launcher2/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    .line 626
    .local v3, scrollProgress:F
    const/high16 v4, 0x3f80

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v0, v4, v5

    .line 627
    .local v0, alpha:F
    invoke-virtual {v1, v0}, Landroid/view/View;->setFastAlpha(F)V

    .line 628
    invoke-virtual {v1}, Landroid/view/View;->fastInvalidate()V

    .line 622
    .end local v0           #alpha:F
    .end local v3           #scrollProgress:F
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 631
    .end local v1           #child:Landroid/view/View;
    :cond_2f
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 633
    .end local v2           #i:I
    :cond_32
    return-void
.end method

.method public scrollBy(II)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 367
    iget v0, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher2/PagedView;->mScrollY:I

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 368
    return-void
.end method

.method public scrollLeft()V
    .registers 2

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1510
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-lez v0, :cond_13

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 1514
    :cond_13
    :goto_13
    return-void

    .line 1512
    :cond_14
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-lez v0, :cond_13

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto :goto_13
.end method

.method public scrollRight()V
    .registers 3

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1518
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_19

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 1522
    :cond_19
    :goto_19
    return-void

    .line 1520
    :cond_1a
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_19

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    goto :goto_19
.end method

.method public scrollTo(II)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 372
    iput p1, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    .line 374
    if-gez p1, :cond_1f

    .line 375
    const/4 v0, 0x0

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 376
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_10

    .line 377
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->overScroll(F)V

    .line 389
    :cond_10
    :goto_10
    int-to-float v0, p1

    iput v0, p0, Lcom/android/launcher2/PagedView;->mTouchX:F

    .line 390
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/PagedView;->mSmoothingTime:F

    .line 391
    return-void

    .line 379
    :cond_1f
    iget v0, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    if-le p1, v0, :cond_35

    .line 380
    iget v0, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 381
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_10

    .line 382
    iget v0, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->overScroll(F)V

    goto :goto_10

    .line 385
    :cond_35
    iput p1, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    .line 386
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_10
.end method

.method protected scrollToNewPageWithoutMovingPages(I)V
    .registers 9
    .parameter "newCurrentPage"

    .prologue
    .line 516
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v5

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v6

    sub-int v2, v5, v6

    .line 517
    .local v2, newX:I
    iget v5, p0, Lcom/android/launcher2/PagedView;->mScrollX:I

    sub-int v0, v2, v5

    .line 519
    .local v0, delta:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v4

    .line 520
    .local v4, pageCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    if-ge v1, v4, :cond_25

    .line 521
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    .line 522
    .local v3, page:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v5

    int-to-float v6, v0

    add-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/view/View;->setX(F)V

    .line 520
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 524
    .end local v3           #page:Landroid/view/View;
    :cond_25
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    .line 525
    return-void
.end method

.method public setAllowLongPress(Z)V
    .registers 2
    .parameter "allowLongPress"

    .prologue
    .line 1550
    iput-boolean p1, p0, Lcom/android/launcher2/PagedView;->mAllowLongPress:Z

    .line 1551
    return-void
.end method

.method setCurrentPage(I)V
    .registers 4
    .parameter "currentPage"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_d

    .line 302
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 306
    :cond_d
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_14

    .line 315
    :goto_13
    return-void

    .line 310
    :cond_14
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 311
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->updateCurrentPageScroll()V

    .line 312
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->updateScrollingIndicator()V

    .line 313
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener()V

    .line 314
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    goto :goto_13
.end method

.method protected setDataIsReady()V
    .registers 2

    .prologue
    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsDataReady:Z

    .line 260
    return-void
.end method

.method public setLayoutScale(F)V
    .registers 13
    .parameter "childrenScale"

    .prologue
    const/high16 v8, 0x4000

    .line 531
    iput p1, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    .line 532
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidateCachedOffsets()V

    .line 535
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v1

    .line 536
    .local v1, childCount:I
    new-array v2, v1, [F

    .line 537
    .local v2, childrenX:[F
    new-array v3, v1, [F

    .line 538
    .local v3, childrenY:[F
    const/4 v5, 0x0

    .local v5, i:I
    :goto_10
    if-ge v5, v1, :cond_25

    .line 539
    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 540
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v7

    aput v7, v2, v5

    .line 541
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v7

    aput v7, v3, v5

    .line 538
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 544
    .end local v0           #child:Landroid/view/View;
    :cond_25
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v7

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 545
    .local v6, widthSpec:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredHeight()I

    move-result v7

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 546
    .local v4, heightSpec:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->requestLayout()V

    .line 547
    invoke-virtual {p0, v6, v4}, Lcom/android/launcher2/PagedView;->measure(II)V

    .line 548
    iget v7, p0, Lcom/android/launcher2/PagedView;->mLeft:I

    iget v8, p0, Lcom/android/launcher2/PagedView;->mTop:I

    iget v9, p0, Lcom/android/launcher2/PagedView;->mRight:I

    iget v10, p0, Lcom/android/launcher2/PagedView;->mBottom:I

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/android/launcher2/PagedView;->layout(IIII)V

    .line 549
    const/4 v5, 0x0

    :goto_47
    if-ge v5, v1, :cond_5a

    .line 550
    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 551
    .restart local v0       #child:Landroid/view/View;
    aget v7, v2, v5

    invoke-virtual {v0, v7}, Landroid/view/View;->setX(F)V

    .line 552
    aget v7, v3, v5

    invoke-virtual {v0, v7}, Landroid/view/View;->setY(F)V

    .line 549
    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    .line 557
    .end local v0           #child:Landroid/view/View;
    :cond_5a
    iget v7, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v7}, Lcom/android/launcher2/PagedView;->scrollToNewPageWithoutMovingPages(I)V

    .line 558
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 5
    .parameter "l"

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/launcher2/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 359
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v0

    .line 360
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_13

    .line 361
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 363
    :cond_13
    return-void
.end method

.method public setPageSpacing(I)V
    .registers 2
    .parameter "pageSpacing"

    .prologue
    .line 561
    iput p1, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    .line 562
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidateCachedOffsets()V

    .line 563
    return-void
.end method

.method public setPageSwitchListener(Lcom/android/launcher2/PagedView$PageSwitchListener;)V
    .registers 5
    .parameter "pageSwitchListener"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    .line 249
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    if-eqz v0, :cond_13

    .line 250
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mPageSwitchListener:Lcom/android/launcher2/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/launcher2/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    .line 252
    :cond_13
    return-void
.end method

.method public showScrollIndicatorTrack()V
    .registers 1

    .prologue
    .line 1881
    return-void
.end method

.method protected showScrollingIndicator(Z)V
    .registers 7
    .parameter "immediately"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 1777
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_b

    .line 1794
    :cond_a
    :goto_a
    return-void

    .line 1778
    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1780
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollingIndicator()Landroid/widget/ImageView;

    .line 1781
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 1783
    invoke-direct {p0}, Lcom/android/launcher2/PagedView;->updateScrollingIndicatorPosition()V

    .line 1784
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1785
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 1786
    if-eqz p1, :cond_2b

    .line 1787
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_a

    .line 1789
    :cond_2b
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicator:Landroid/widget/ImageView;

    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    .line 1790
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1791
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_a
.end method

.method protected snapToDestination()V
    .registers 3

    .prologue
    .line 1403
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    const/16 v1, 0x226

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->snapToPage(II)V

    .line 1404
    return-void
.end method

.method protected snapToPage(I)V
    .registers 3
    .parameter "whichPage"

    .prologue
    .line 1464
    const/16 v0, 0x226

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedView;->snapToPage(II)V

    .line 1465
    return-void
.end method

.method protected snapToPage(II)V
    .registers 8
    .parameter "whichPage"
    .parameter "duration"

    .prologue
    .line 1468
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1473
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v4

    sub-int v1, v3, v4

    .line 1474
    .local v1, newX:I
    iget v2, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    .line 1475
    .local v2, sX:I
    sub-int v0, v1, v2

    .line 1476
    .local v0, delta:I
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    .line 1477
    return-void
.end method

.method protected snapToPage(III)V
    .registers 11
    .parameter "whichPage"
    .parameter "delta"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 1480
    iput p1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 1482
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    .line 1483
    .local v6, focusedChild:Landroid/view/View;
    if-eqz v6, :cond_18

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_18

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v6, v0, :cond_18

    .line 1485
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 1488
    :cond_18
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->pageBeginMoving()V

    .line 1489
    invoke-virtual {p0, p3}, Lcom/android/launcher2/PagedView;->awakenScrollBars(I)Z

    .line 1490
    if-nez p3, :cond_24

    .line 1491
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 1494
    :cond_24
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1495
    :cond_31
    iget-object v0, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    move v3, p2

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1499
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mDeferScrollUpdate:Z

    if-eqz v0, :cond_4b

    .line 1500
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->loadAssociatedPages(I)V

    .line 1504
    :goto_44
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener()V

    .line 1505
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidate()V

    .line 1506
    return-void

    .line 1502
    :cond_4b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    goto :goto_44
.end method

.method protected snapToPageWithVelocity(II)V
    .registers 12
    .parameter "whichPage"
    .parameter "velocity"

    .prologue
    const/high16 v8, 0x3f80

    .line 1427
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1428
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v4, v6, 0x2

    .line 1433
    .local v4, halfScreenSize:I
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v6

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v7

    sub-int v5, v6, v7

    .line 1434
    .local v5, newX:I
    iget v6, p0, Lcom/android/launcher2/PagedView;->mUnboundedScrollX:I

    sub-int v0, v5, v6

    .line 1435
    .local v0, delta:I
    const/4 v3, 0x0

    .line 1437
    .local v3, duration:I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0xfa

    if-ge v6, v7, :cond_34

    .line 1440
    const/16 v6, 0x226

    invoke-virtual {p0, p1, v6}, Lcom/android/launcher2/PagedView;->snapToPage(II)V

    .line 1461
    :goto_33
    return-void

    .line 1448
    :cond_34
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    mul-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1449
    .local v2, distanceRatio:F
    int-to-float v6, v4

    int-to-float v7, v4

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v1, v6, v7

    .line 1452
    .local v1, distance:F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1453
    const/16 v6, 0x898

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1458
    const/high16 v6, 0x447a

    int-to-float v7, p2

    div-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v3, v6, 0x4

    .line 1460
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    goto :goto_33
.end method

.method protected startChoiceMode(ILandroid/view/ActionMode$Callback;)V
    .registers 4
    .parameter "mode"
    .parameter "callback"

    .prologue
    .line 1625
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->isChoiceMode(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1626
    iput p1, p0, Lcom/android/launcher2/PagedView;->mChoiceMode:I

    .line 1627
    invoke-virtual {p0, p2}, Lcom/android/launcher2/PagedView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/PagedView;->mActionMode:Landroid/view/ActionMode;

    .line 1629
    :cond_f
    return-void
.end method

.method public abstract syncPageItems(IZ)V
.end method

.method public abstract syncPages()V
.end method

.method protected updateCurrentPageScroll()V
    .registers 4

    .prologue
    .line 292
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    sub-int v0, v1, v2

    .line 293
    .local v0, newX:I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/PagedView;->scrollTo(II)V

    .line 294
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 295
    return-void
.end method
