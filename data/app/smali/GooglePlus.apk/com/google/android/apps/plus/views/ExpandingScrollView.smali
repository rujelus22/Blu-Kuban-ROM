.class public Lcom/google/android/apps/plus/views/ExpandingScrollView;
.super Lcom/google/android/apps/plus/views/ScrollableViewGroup;
.source "ExpandingScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/ExpandingScrollView$SavedState;
    }
.end annotation


# static fields
.field private static final sBounceInterpolator:Landroid/view/animation/Interpolator;

.field private static sInitialized:Z

.field private static sMinExposureLand:I

.field private static sMinExposurePort:I


# instance fields
.field private mAlwaysExpanded:Z

.field private mAnimateInRunnable:Ljava/lang/Runnable;

.field private mCanAnimate:Z

.field private mHasPlayedAnimation:Z

.field private mLastTouchEvent:Landroid/view/MotionEvent;

.field private mLastTouchY:I

.field private mMaxScroll:I

.field private mMinExposure:I

.field private mOriginalTranslationY:I

.field private mRestoreExpandedScrollPosition:Ljava/lang/Boolean;

.field private mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->sBounceInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 99
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;-><init>(Landroid/content/Context;)V

    .line 80
    iput-boolean v3, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mAlwaysExpanded:Z

    .line 111
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 112
    sget-boolean v2, Lcom/google/android/apps/plus/views/ExpandingScrollView;->sInitialized:Z

    if-nez v2, :cond_26

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 114
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0d01d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sput v2, Lcom/google/android/apps/plus/views/ExpandingScrollView;->sMinExposureLand:I

    .line 116
    const v2, 0x7f0d01d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sput v2, Lcom/google/android/apps/plus/views/ExpandingScrollView;->sMinExposurePort:I

    .line 118
    sput-boolean v3, Lcom/google/android/apps/plus/views/ExpandingScrollView;->sInitialized:Z

    .line 121
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_26
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 122
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mTouchSlop:I

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    iput-boolean v3, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mAlwaysExpanded:Z

    .line 111
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 112
    sget-boolean v2, Lcom/google/android/apps/plus/views/ExpandingScrollView;->sInitialized:Z

    if-nez v2, :cond_26

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 114
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0d01d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sput v2, Lcom/google/android/apps/plus/views/ExpandingScrollView;->sMinExposureLand:I

    .line 116
    const v2, 0x7f0d01d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sput v2, Lcom/google/android/apps/plus/views/ExpandingScrollView;->sMinExposurePort:I

    .line 118
    sput-boolean v3, Lcom/google/android/apps/plus/views/ExpandingScrollView;->sInitialized:Z

    .line 121
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_26
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 122
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mTouchSlop:I

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x1

    .line 107
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    iput-boolean v3, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mAlwaysExpanded:Z

    .line 111
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 112
    sget-boolean v2, Lcom/google/android/apps/plus/views/ExpandingScrollView;->sInitialized:Z

    if-nez v2, :cond_26

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 114
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0d01d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sput v2, Lcom/google/android/apps/plus/views/ExpandingScrollView;->sMinExposureLand:I

    .line 116
    const v2, 0x7f0d01d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sput v2, Lcom/google/android/apps/plus/views/ExpandingScrollView;->sMinExposurePort:I

    .line 118
    sput-boolean v3, Lcom/google/android/apps/plus/views/ExpandingScrollView;->sInitialized:Z

    .line 121
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_26
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 122
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mTouchSlop:I

    .line 108
    return-void
.end method

.method static synthetic access$100()Landroid/view/animation/Interpolator;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->sBounceInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/views/ExpandingScrollView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mOriginalTranslationY:I

    return v0
.end method

.method static synthetic access$302(Lcom/google/android/apps/plus/views/ExpandingScrollView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mAnimateInRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/android/apps/plus/views/ExpandingScrollView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mHasPlayedAnimation:Z

    return p1
.end method


# virtual methods
.method public getLastTouchEvent()Landroid/view/MotionEvent;
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mLastTouchEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mAnimateInRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mAnimateInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mAnimateInRunnable:Ljava/lang/Runnable;

    .line 139
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->clearAnimation()V

    .line 141
    invoke-super {p0}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->onDetachedFromWindow()V

    .line 142
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "event"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 229
    iget-boolean v9, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mAlwaysExpanded:Z

    if-eqz v9, :cond_7

    .line 272
    :cond_6
    :goto_6
    return v11

    .line 234
    :cond_7
    iget-object v9, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v9}, Landroid/widget/Scroller;->isFinished()Z

    move-result v9

    if-nez v9, :cond_11

    move v11, v10

    .line 235
    goto :goto_6

    .line 238
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 239
    .local v8, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_94

    :pswitch_1d
    goto :goto_6

    .line 241
    :pswitch_1e
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->updatePosition(Landroid/view/MotionEvent;)V

    .line 242
    iput v8, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mLastTouchY:I

    goto :goto_6

    .line 247
    :pswitch_24
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->getScrollY()I

    move-result v5

    .line 248
    .local v5, scrollY:I
    iget v9, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mMaxScroll:I

    if-ne v5, v9, :cond_8a

    move v9, v10

    :goto_2d
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mRestoreExpandedScrollPosition:Ljava/lang/Boolean;

    .line 249
    iget v9, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mLastTouchY:I

    sub-int v0, v8, v9

    .line 250
    .local v0, deltaY:I
    if-gez v0, :cond_8c

    move v4, v10

    .line 251
    .local v4, scrollUp:Z
    :goto_3a
    invoke-virtual {p0, v11}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsListView;

    .line 252
    .local v2, list:Landroid/widget/AbsListView;
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v9

    if-eqz v9, :cond_5c

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v9

    if-nez v9, :cond_8e

    invoke-virtual {v2, v11}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    if-nez v9, :cond_8e

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getScrollY()I

    move-result v9

    if-nez v9, :cond_8e

    :cond_5c
    move v3, v10

    .line 255
    .local v3, listAtTop:Z
    :goto_5d
    if-eqz v5, :cond_67

    if-nez v4, :cond_6

    if-eqz v3, :cond_6

    iget v9, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mMaxScroll:I

    if-ne v5, v9, :cond_6

    .line 256
    :cond_67
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 257
    iget v9, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mTouchSlop:I

    if-gt v0, v9, :cond_73

    iget v9, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mTouchSlop:I

    neg-int v9, v9

    if-ge v0, v9, :cond_6

    .line 258
    :cond_73
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    .local v6, size:I
    :goto_78
    if-ge v1, v6, :cond_90

    .line 259
    invoke-virtual {v2, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 260
    .local v7, v:Landroid/view/View;
    instance-of v9, v7, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;

    if-eqz v9, :cond_87

    .line 261
    check-cast v7, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;

    .end local v7           #v:Landroid/view/View;
    invoke-virtual {v7}, Lcom/google/android/apps/plus/views/StreamOneUpCommentView;->cancelPressedState()V

    .line 258
    :cond_87
    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    .end local v0           #deltaY:I
    .end local v1           #i:I
    .end local v2           #list:Landroid/widget/AbsListView;
    .end local v3           #listAtTop:Z
    .end local v4           #scrollUp:Z
    .end local v6           #size:I
    :cond_8a
    move v9, v11

    .line 248
    goto :goto_2d

    .restart local v0       #deltaY:I
    :cond_8c
    move v4, v11

    .line 250
    goto :goto_3a

    .restart local v2       #list:Landroid/widget/AbsListView;
    .restart local v4       #scrollUp:Z
    :cond_8e
    move v3, v11

    .line 252
    goto :goto_5d

    .restart local v1       #i:I
    .restart local v3       #listAtTop:Z
    .restart local v6       #size:I
    :cond_90
    move v11, v10

    .line 264
    goto/16 :goto_6

    .line 239
    nop

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_24
    .end packed-switch
.end method

.method public onLayout(ZIIII)V
    .registers 11
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v2, 0x0

    .line 168
    iget-boolean v3, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mAlwaysExpanded:Z

    if-eqz v3, :cond_1e

    move p3, v2

    .line 170
    :goto_6
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_21

    .line 171
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 173
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int p5, p3, v3

    .line 174
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 175
    move p3, p5

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 168
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    :cond_1e
    iget p3, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mMaxScroll:I

    goto :goto_6

    .line 177
    .restart local v1       #i:I
    :cond_21
    iget-boolean v3, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mAlwaysExpanded:Z

    if-eqz v3, :cond_7b

    move v3, v2

    :goto_26
    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->setScrollLimits(II)V

    .line 179
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mRestoreExpandedScrollPosition:Ljava/lang/Boolean;

    if-eqz v3, :cond_3d

    iget-object v3, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mRestoreExpandedScrollPosition:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 180
    iget-boolean v3, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mAlwaysExpanded:Z

    if-eqz v3, :cond_7e

    move v3, v2

    :goto_3a
    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->scrollTo(II)V

    .line 183
    :cond_3d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_7a

    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mHasPlayedAnimation:Z

    if-nez v2, :cond_7a

    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mCanAnimate:Z

    if-eqz v2, :cond_7a

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mRestoreExpandedScrollPosition:Ljava/lang/Boolean;

    if-nez v2, :cond_7a

    .line 185
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mAnimateInRunnable:Ljava/lang/Runnable;

    if-nez v2, :cond_6e

    .line 186
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mOriginalTranslationY:I

    .line 187
    iget v3, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mOriginalTranslationY:I

    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mAlwaysExpanded:Z

    if-eqz v2, :cond_81

    iget v2, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mMaxScroll:I

    :goto_62
    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->setTranslationY(F)V

    .line 190
    new-instance v2, Lcom/google/android/apps/plus/views/ExpandingScrollView$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/views/ExpandingScrollView$1;-><init>(Lcom/google/android/apps/plus/views/ExpandingScrollView;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mAnimateInRunnable:Ljava/lang/Runnable;

    .line 215
    :cond_6e
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mAnimateInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 216
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mAnimateInRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xfa

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 218
    :cond_7a
    return-void

    .line 177
    :cond_7b
    iget v3, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mMaxScroll:I

    goto :goto_26

    .line 180
    :cond_7e
    iget v3, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mMaxScroll:I

    goto :goto_3a

    .line 187
    :cond_81
    iget v2, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mMinExposure:I

    goto :goto_62
.end method

.method public onMeasure(II)V
    .registers 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 146
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 148
    .local v0, height:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_43

    .line 150
    sget v4, Lcom/google/android/apps/plus/views/ExpandingScrollView;->sMinExposureLand:I

    iput v4, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mMinExposure:I

    .line 155
    :goto_19
    iget v4, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mMinExposure:I

    sub-int v4, v0, v4

    iput v4, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mMaxScroll:I

    .line 156
    const/4 v3, 0x0

    .line 157
    .local v3, myWidth:I
    const/high16 v4, 0x4000

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 158
    .local v2, maximumHeight:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_27
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_48

    .line 159
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Landroid/view/View;->measure(II)V

    .line 160
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 152
    .end local v1           #i:I
    .end local v2           #maximumHeight:I
    .end local v3           #myWidth:I
    :cond_43
    sget v4, Lcom/google/android/apps/plus/views/ExpandingScrollView;->sMinExposurePort:I

    iput v4, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mMinExposure:I

    goto :goto_19

    .line 163
    .restart local v1       #i:I
    .restart local v2       #maximumHeight:I
    .restart local v3       #myWidth:I
    :cond_48
    iget v4, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mMaxScroll:I

    add-int/2addr v4, v0

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->setMeasuredDimension(II)V

    .line 164
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 291
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/plus/views/ExpandingScrollView$SavedState;

    .line 292
    .local v0, ss:Lcom/google/android/apps/plus/views/ExpandingScrollView$SavedState;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ExpandingScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 293
    #getter for: Lcom/google/android/apps/plus/views/ExpandingScrollView$SavedState;->mExpanded:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/views/ExpandingScrollView$SavedState;->access$500(Lcom/google/android/apps/plus/views/ExpandingScrollView$SavedState;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mRestoreExpandedScrollPosition:Ljava/lang/Boolean;

    .line 294
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .prologue
    .line 285
    invoke-super {p0}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 286
    .local v0, state:Landroid/os/Parcelable;
    new-instance v2, Lcom/google/android/apps/plus/views/ExpandingScrollView$SavedState;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->getScrollY()I

    move-result v1

    iget v3, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mMaxScroll:I

    if-ne v1, v3, :cond_13

    const/4 v1, 0x1

    :goto_f
    invoke-direct {v2, v0, v1}, Lcom/google/android/apps/plus/views/ExpandingScrollView$SavedState;-><init>(Landroid/os/Parcelable;Z)V

    return-object v2

    :cond_13
    const/4 v1, 0x0

    goto :goto_f
.end method

.method protected onScrollFinished(I)V
    .registers 3
    .parameter "direction"

    .prologue
    .line 277
    if-gez p1, :cond_10

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->smoothScrollTo(I)V

    .line 278
    if-ltz p1, :cond_f

    .line 279
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mRestoreExpandedScrollPosition:Ljava/lang/Boolean;

    .line 281
    :cond_f
    return-void

    .line 277
    :cond_10
    iget v0, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mMaxScroll:I

    goto :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mLastTouchEvent:Landroid/view/MotionEvent;

    .line 223
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/ScrollableViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setAlwaysExpanded(Z)V
    .registers 2
    .parameter "alwaysExpanded"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mAlwaysExpanded:Z

    .line 130
    return-void
.end method

.method public setCanAnimate(Z)V
    .registers 3
    .parameter "canAnimate"

    .prologue
    .line 316
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mCanAnimate:Z

    .line 317
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mCanAnimate:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView;->mHasPlayedAnimation:Z

    if-nez v0, :cond_d

    .line 318
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->requestLayout()V

    .line 320
    :cond_d
    return-void
.end method
