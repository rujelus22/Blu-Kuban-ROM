.class Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ReaderFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReaderGestureListener"
.end annotation


# instance fields
.field mActiveScaleAnimator:Landroid/animation/ObjectAnimator;

.field private mHorizontallyLocked:Z

.field private mInitialSpan:F

.field private mInitialZoomCenterX:F

.field private mInitialZoomCenterY:F

.field mLastZoomCenterScrolledTo:Landroid/graphics/Point;

.field private final mMinimumInitialFlingVelocity:F

.field private mPreviousZoomFocusX:F

.field private mPreviousZoomFocusY:F

.field private mRestoreZoom:Z

.field private mRestoreZoomScale:F

.field private mScale:F

.field mScaleAnimationsPending:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private final mScroller:Landroid/widget/Scroller;

.field private final mScrollerHandler:Landroid/os/Handler;

.field private mTurning:Z

.field private mTurningDirection:I

.field private mZoomCenterX:F

.field private mZoomCenterY:F

.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/view/View;)V
    .registers 6
    .parameter
    .parameter "view"

    .prologue
    .line 3010
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 3113
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mTurning:Z

    .line 3292
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    .line 3303
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mLastZoomCenterScrolledTo:Landroid/graphics/Point;

    .line 3305
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mActiveScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 3306
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScaleAnimationsPending:Ljava/util/Queue;

    .line 3011
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3012
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 3014
    .local v0, config:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mMinimumInitialFlingVelocity:F

    .line 3016
    new-instance v2, Landroid/widget/Scroller;

    invoke-direct {v2, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScroller:Landroid/widget/Scroller;

    .line 3017
    new-instance v2, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener$1;

    invoke-direct {v2, p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener$1;-><init>(Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;Lcom/google/android/apps/books/app/ReaderFragment;)V

    iput-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScrollerHandler:Landroid/os/Handler;

    .line 3025
    return-void
.end method

.method static synthetic access$7300(Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 3006
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->updateZoomCenterFromScroller()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7400(Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 3006
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->scheduleScrollerUpdate()V

    return-void
.end method

.method private declared-synchronized animateScale(FF)V
    .registers 7
    .parameter "from"
    .parameter "to"

    .prologue
    .line 3421
    monitor-enter p0

    :try_start_1
    const-string v1, "scale"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p2, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3422
    .local v0, animator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3424
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mActiveScaleAnimator:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_47

    .line 3425
    const-string v1, "ReaderFragment"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 3426
    const-string v1, "ReaderFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animator: immediately starting animation to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3428
    :cond_38
    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mActiveScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 3429
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3430
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_76

    .line 3438
    :goto_45
    monitor-exit p0

    return-void

    .line 3432
    :cond_47
    :try_start_47
    const-string v1, "ReaderFragment"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 3433
    const-string v1, "ReaderFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animator: adding deferred animation to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3435
    :cond_68
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3436
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScaleAnimationsPending:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_75
    .catchall {:try_start_47 .. :try_end_75} :catchall_76

    goto :goto_45

    .line 3421
    .end local v0           #animator:Landroid/animation/ObjectAnimator;
    :catchall_76
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private animateToZoomCenter(FF)V
    .registers 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3441
    const-string v0, "zoomCenterX"

    new-array v1, v5, [F

    iget v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    aput v2, v1, v3

    aput p1, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 3442
    const-string v0, "zoomCenterY"

    new-array v1, v5, [F

    iget v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterY:F

    aput v2, v1, v3

    aput p2, v1, v4

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 3443
    return-void
.end method

.method private clampZoomCenterForScale(F)V
    .registers 5
    .parameter "scale"

    .prologue
    .line 3446
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->minZoomCenterX(F)F

    move-result v1

    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->maxZoomCenterX(F)F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/util/MathUtils;->constrain(FFF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    .line 3448
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterY:F

    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->minZoomCenterY(F)F

    move-result v1

    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->maxZoomCenterY(F)F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/util/MathUtils;->constrain(FFF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterY:F

    .line 3450
    return-void
.end method

.method private dxToFraction(F)F
    .registers 10
    .parameter "dx"

    .prologue
    const/high16 v7, 0x3f00

    .line 3127
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;
    invoke-static {v3}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->getWidth()I

    move-result v2

    .line 3128
    .local v2, width:I
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->shouldDisplayTwoPages()Z
    invoke-static {v3}, Lcom/google/android/apps/books/app/ReaderFragment;->access$7600(Lcom/google/android/apps/books/app/ReaderFragment;)Z

    move-result v3

    if-eqz v3, :cond_2c

    const/high16 v3, 0x3f80

    int-to-float v4, v2

    div-float v1, v3, v4

    .line 3129
    .local v1, sensitivity:F
    :goto_19
    neg-float v3, p1

    mul-float v0, v3, v1

    .line 3133
    .local v0, fraction:F
    float-to-double v3, v0

    const-wide/high16 v5, 0x3fe0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_2b

    sub-float v3, v0, v7

    const v4, 0x3f4ccccd

    mul-float/2addr v3, v4

    add-float v0, v7, v3

    .line 3135
    :cond_2b
    return v0

    .line 3128
    .end local v0           #fraction:F
    .end local v1           #sensitivity:F
    :cond_2c
    const v3, 0x3f19999a

    int-to-float v4, v2

    div-float v1, v3, v4

    goto :goto_19
.end method

.method private maxZoomCenterX(F)F
    .registers 10
    .parameter "scale"

    .prologue
    .line 3480
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;
    invoke-static {v4}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/books/widget/PageTurnView;->getWidth()I

    move-result v4

    int-to-float v3, v4

    .line 3481
    .local v3, vw:F
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;
    invoke-static {v4}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/books/widget/PageTurnView;->widestCurrentBitmap()I

    move-result v4

    int-to-float v1, v4

    .line 3482
    .local v1, pw:F
    float-to-double v4, p1

    const-wide/high16 v6, 0x3ff0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_1e

    .line 3502
    .end local v1           #pw:F
    :cond_1d
    :goto_1d
    return v1

    .line 3484
    .restart local v1       #pw:F
    :cond_1e
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->shouldDisplayTwoPages()Z
    invoke-static {v4}, Lcom/google/android/apps/books/app/ReaderFragment;->access$7600(Lcom/google/android/apps/books/app/ReaderFragment;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 3485
    const/high16 v4, 0x4000

    div-float v0, v3, v4

    .line 3486
    .local v0, hw:F
    add-float v2, v0, v1

    .line 3491
    .local v2, rightEdge:F
    sub-float v4, v2, v0

    mul-float/2addr v4, p1

    cmpg-float v4, v4, v0

    if-gtz v4, :cond_35

    move v1, v0

    goto :goto_1d

    .line 3500
    :cond_35
    mul-float v4, p1, v2

    sub-float/2addr v4, v3

    const/high16 v5, 0x3f80

    sub-float v5, p1, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_1d
.end method

.method private maxZoomCenterY(F)F
    .registers 6
    .parameter "scale"

    .prologue
    .line 3513
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->getHeight()I

    move-result v1

    .line 3514
    .local v1, vh:I
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->tallestCurrentBitmap()I

    move-result v0

    .line 3515
    .local v0, ph:I
    div-int/lit8 v2, v1, 0x2

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    return v2
.end method

.method private minZoomCenterX(F)F
    .registers 11
    .parameter "scale"

    .prologue
    const/4 v4, 0x0

    .line 3453
    float-to-double v5, p1

    const-wide/high16 v7, 0x3ff0

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_a

    move v0, v4

    .line 3475
    :cond_9
    :goto_9
    return v0

    .line 3455
    :cond_a
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->shouldDisplayTwoPages()Z
    invoke-static {v5}, Lcom/google/android/apps/books/app/ReaderFragment;->access$7600(Lcom/google/android/apps/books/app/ReaderFragment;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 3456
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;
    invoke-static {v5}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/books/widget/PageTurnView;->getWidth()I

    move-result v5

    int-to-float v3, v5

    .line 3457
    .local v3, vw:F
    const/high16 v5, 0x4000

    div-float v0, v3, v5

    .line 3458
    .local v0, hw:F
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;
    invoke-static {v5}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/books/widget/PageTurnView;->widestCurrentBitmap()I

    move-result v5

    int-to-float v2, v5

    .line 3459
    .local v2, pw:F
    sub-float v1, v0, v2

    .line 3464
    .local v1, leftEdge:F
    sub-float v5, v0, v1

    mul-float/2addr v5, p1

    cmpg-float v5, v5, v0

    if-lez v5, :cond_9

    .line 3473
    mul-float v5, p1, v1

    const/high16 v6, 0x3f80

    sub-float v6, p1, v6

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_9

    .end local v0           #hw:F
    .end local v1           #leftEdge:F
    .end local v2           #pw:F
    .end local v3           #vw:F
    :cond_41
    move v0, v4

    .line 3475
    goto :goto_9
.end method

.method private minZoomCenterY(F)F
    .registers 7
    .parameter "scale"

    .prologue
    .line 3507
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->getHeight()I

    move-result v1

    .line 3508
    .local v1, vh:I
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->tallestCurrentBitmap()I

    move-result v0

    .line 3509
    .local v0, ph:I
    const/4 v2, 0x0

    div-int/lit8 v3, v1, 0x2

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    return v2
.end method

.method private onZoomChanged()V
    .registers 5

    .prologue
    .line 3519
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3520
    const-string v0, "ReaderFragment"

    const-string v1, "NaN scale observed in onZoomChanged(); resetting it"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3522
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->setScale(F)V

    .line 3524
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    iget v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    iget v3, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterY:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/books/widget/PageTurnView;->setZoom(FFF)V

    .line 3525
    return-void
.end method

.method private restoreZoomIfNeeded(I)V
    .registers 8
    .parameter "direction"

    .prologue
    .line 3540
    iget-boolean v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mRestoreZoom:Z

    if-nez v2, :cond_5

    .line 3557
    :goto_4
    return-void

    .line 3543
    :cond_5
    if-gez p1, :cond_2c

    iget v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mRestoreZoomScale:F

    invoke-direct {p0, v2}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->maxZoomCenterX(F)F

    move-result v0

    .line 3546
    .local v0, x:F
    :goto_d
    if-gez p1, :cond_33

    iget v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mRestoreZoomScale:F

    invoke-direct {p0, v2}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->maxZoomCenterY(F)F

    move-result v1

    .line 3549
    .local v1, y:F
    :goto_15
    iget v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3a

    .line 3550
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->animateToZoomCenter(FF)V

    .line 3555
    :goto_21
    const/high16 v2, 0x3f80

    iget v3, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mRestoreZoomScale:F

    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->animateScale(FF)V

    .line 3556
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mRestoreZoom:Z

    goto :goto_4

    .line 3543
    .end local v0           #x:F
    .end local v1           #y:F
    :cond_2c
    iget v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mRestoreZoomScale:F

    invoke-direct {p0, v2}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->minZoomCenterX(F)F

    move-result v0

    goto :goto_d

    .line 3546
    .restart local v0       #x:F
    :cond_33
    iget v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mRestoreZoomScale:F

    invoke-direct {p0, v2}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->minZoomCenterY(F)F

    move-result v1

    goto :goto_15

    .line 3552
    .restart local v1       #y:F
    :cond_3a
    iput v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    .line 3553
    iput v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterY:F

    goto :goto_21
.end method

.method private restoreZoomIfNeeded(Z)V
    .registers 5
    .parameter "continueCurrent"

    .prologue
    .line 3564
    iget-boolean v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mRestoreZoom:Z

    if-nez v1, :cond_5

    .line 3577
    :goto_4
    return-void

    .line 3567
    :cond_5
    if-nez p1, :cond_19

    .line 3569
    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mInitialZoomCenterX:F

    iget v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mInitialZoomCenterY:F

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->animateToZoomCenter(FF)V

    .line 3570
    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mRestoreZoomScale:F

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->animateScale(FF)V

    .line 3571
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mRestoreZoom:Z

    goto :goto_4

    .line 3574
    :cond_19
    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_31

    const/4 v0, 0x1

    .line 3575
    .local v0, direction:I
    :goto_2d
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->restoreZoomIfNeeded(I)V

    goto :goto_4

    .line 3574
    .end local v0           #direction:I
    :cond_31
    const/4 v0, -0x1

    goto :goto_2d
.end method

.method private scheduleScrollerUpdate()V
    .registers 5

    .prologue
    .line 3252
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScrollerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3253
    return-void
.end method

.method private temporarilySuppressZoom()V
    .registers 3

    .prologue
    .line 3528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mRestoreZoom:Z

    .line 3529
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    iput v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mRestoreZoomScale:F

    .line 3530
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    const/high16 v1, 0x3f80

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->animateScale(FF)V

    .line 3531
    return-void
.end method

.method private updateZoomCenterFromScroller()Z
    .registers 10

    .prologue
    const/high16 v8, 0x3f80

    .line 3228
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    .line 3230
    .local v0, continuing:Z
    iget v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    cmpg-float v5, v5, v8

    if-gtz v5, :cond_10

    .line 3231
    const/4 v0, 0x0

    .line 3248
    .end local v0           #continuing:Z
    :goto_f
    return v0

    .line 3235
    .restart local v0       #continuing:Z
    :cond_10
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 3236
    .local v3, x:I
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    .line 3237
    .local v4, y:I
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mLastZoomCenterScrolledTo:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int v1, v3, v5

    .line 3238
    .local v1, dx:I
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mLastZoomCenterScrolledTo:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int v2, v4, v5

    .line 3239
    .local v2, dy:I
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mLastZoomCenterScrolledTo:Landroid/graphics/Point;

    iput v3, v5, Landroid/graphics/Point;->x:I

    .line 3240
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mLastZoomCenterScrolledTo:Landroid/graphics/Point;

    iput v4, v5, Landroid/graphics/Point;->y:I

    .line 3243
    iget v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    int-to-float v6, v1

    iget v7, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    sub-float/2addr v7, v8

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    .line 3244
    iget v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterY:F

    int-to-float v6, v2

    iget v7, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    sub-float/2addr v7, v8

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterY:F

    .line 3245
    iget v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    invoke-direct {p0, v5}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->clampZoomCenterForScale(F)V

    .line 3246
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->onZoomChanged()V

    goto :goto_f
.end method


# virtual methods
.method public onActionCancel(Landroid/view/MotionEvent;)V
    .registers 7
    .parameter "e"

    .prologue
    const/4 v4, 0x0

    .line 3205
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_b

    .line 3213
    :cond_a
    :goto_a
    return-void

    .line 3208
    :cond_b
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mTurning:Z

    if-eqz v0, :cond_a

    .line 3209
    iput-boolean v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mTurning:Z

    .line 3210
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;
    invoke-static {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->endTurn(Z)Z

    .line 3211
    invoke-direct {p0, v4}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->restoreZoomIfNeeded(Z)V

    goto :goto_a
.end method

.method public onActionUp(Landroid/view/MotionEvent;)V
    .registers 8
    .parameter "e"

    .prologue
    const/4 v5, 0x0

    .line 3194
    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_f

    iget-boolean v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mRestoreZoom:Z

    if-nez v1, :cond_f

    .line 3202
    :cond_e
    :goto_e
    return-void

    .line 3197
    :cond_f
    iget-boolean v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mTurning:Z

    if-eqz v1, :cond_e

    .line 3198
    iput-boolean v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mTurning:Z

    .line 3199
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/android/apps/books/widget/PageTurnView;->endTurn(Z)Z

    move-result v0

    .line 3200
    .local v0, continueCurrent:Z
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->restoreZoomIfNeeded(Z)V

    goto :goto_e
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 3415
    return-void
.end method

.method public declared-synchronized onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5
    .parameter "animation"

    .prologue
    .line 3404
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScaleAnimationsPending:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mActiveScaleAnimator:Landroid/animation/ObjectAnimator;

    .line 3405
    const-string v0, "ReaderFragment"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3406
    const-string v0, "ReaderFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animator: polled deferred animations and found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mActiveScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3409
    :cond_2e
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mActiveScaleAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_37

    .line 3410
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mActiveScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    .line 3412
    :cond_37
    monitor-exit p0

    return-void

    .line 3404
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 3418
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 3401
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "e"

    .prologue
    const/4 v4, 0x0

    const/high16 v6, 0x3f80

    .line 3068
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mZoomEnabled:Z
    invoke-static {v5}, Lcom/google/android/apps/books/app/ReaderFragment;->access$5800(Lcom/google/android/apps/books/app/ReaderFragment;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 3104
    :cond_b
    :goto_b
    return v4

    .line 3072
    :cond_c
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->isEdgeTouch(Landroid/view/MotionEvent;)Z
    invoke-static {v5, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$7500(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 3073
    const-string v5, "ReaderFragment"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 3074
    const-string v5, "ReaderFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dropping double-tap because it\'s on the horizontal edge: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 3080
    :cond_36
    iget v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_43

    .line 3081
    iget v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    invoke-direct {p0, v4, v6}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->animateScale(FF)V

    .line 3104
    :goto_41
    const/4 v4, 0x1

    goto :goto_b

    .line 3083
    :cond_43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    .line 3084
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterY:F

    .line 3087
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;
    invoke-static {v4}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/books/widget/PageTurnView;->getWidth()I

    move-result v3

    .line 3088
    .local v3, viewWidth:I
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;
    invoke-static {v4}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/books/widget/PageTurnView;->widestCurrentBitmap()I

    move-result v0

    .line 3089
    .local v0, bitmapWidth:I
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->shouldDisplayTwoPages()Z
    invoke-static {v4}, Lcom/google/android/apps/books/app/ReaderFragment;->access$7600(Lcom/google/android/apps/books/app/ReaderFragment;)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 3090
    int-to-float v4, v3

    int-to-float v5, v0

    div-float v2, v4, v5

    .line 3091
    .local v2, endScale:F
    div-int/lit8 v1, v3, 0x2

    .line 3093
    .local v1, centerX:I
    iget v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    int-to-float v5, v1

    cmpg-float v4, v4, v5

    if-gez v4, :cond_85

    invoke-direct {p0, v2}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->minZoomCenterX(F)F

    move-result v4

    :goto_7c
    iput v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    .line 3096
    invoke-direct {p0, v2}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->clampZoomCenterForScale(F)V

    .line 3101
    .end local v1           #centerX:I
    :goto_81
    invoke-direct {p0, v6, v2}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->animateScale(FF)V

    goto :goto_41

    .line 3093
    .restart local v1       #centerX:I
    :cond_85
    invoke-direct {p0, v2}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->maxZoomCenterX(F)F

    move-result v4

    goto :goto_7c

    .line 3098
    .end local v1           #centerX:I
    .end local v2           #endScale:F
    :cond_8a
    const/high16 v2, 0x4000

    .line 3099
    .restart local v2       #endScale:F
    invoke-direct {p0, v2}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->clampZoomCenterForScale(F)V

    goto :goto_81
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 3217
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_11

    .line 3218
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 3219
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->updateZoomCenterFromScroller()Z

    .line 3221
    :cond_11
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    iput v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mInitialZoomCenterX:F

    .line 3222
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterY:F

    iput v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mInitialZoomCenterY:F

    .line 3223
    iput-boolean v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mHorizontallyLocked:Z

    .line 3224
    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 22
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 3258
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_111

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mRestoreZoom:Z

    if-nez v1, :cond_111

    .line 3260
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v15, v1

    .line 3261
    .local v15, x:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v0, v1

    move/from16 v16, v0

    .line 3262
    .local v16, y:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mLastZoomCenterScrolledTo:Landroid/graphics/Point;

    iput v15, v1, Landroid/graphics/Point;->x:I

    .line 3263
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mLastZoomCenterScrolledTo:Landroid/graphics/Point;

    move/from16 v0, v16

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 3264
    int-to-float v1, v15

    int-to-float v2, v15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    mul-float/2addr v2, v3

    sub-float v13, v1, v2

    .line 3265
    .local v13, minX:F
    int-to-float v1, v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v15

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    mul-float/2addr v2, v3

    add-float v11, v1, v2

    .line 3266
    .local v11, maxX:F
    move/from16 v0, v16

    int-to-float v1, v0

    move/from16 v0, v16

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    mul-float/2addr v2, v3

    sub-float v14, v1, v2

    .line 3267
    .local v14, minY:F
    move/from16 v0, v16

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->getHeight()I

    move-result v2

    sub-int v2, v2, v16

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    mul-float/2addr v2, v3

    add-float v12, v1, v2

    .line 3268
    .local v12, maxY:F
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mHorizontallyLocked:Z

    if-eqz v1, :cond_78

    .line 3269
    const/16 p3, 0x0

    .line 3271
    :cond_78
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mLastZoomCenterScrolledTo:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mLastZoomCenterScrolledTo:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    move/from16 v0, p3

    float-to-int v4, v0

    neg-int v4, v4

    move/from16 v0, p4

    float-to-int v5, v0

    neg-int v5, v5

    float-to-int v6, v13

    float-to-int v7, v11

    float-to-int v8, v14

    float-to-int v9, v12

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 3274
    const-string v1, "ReaderFragment"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10c

    .line 3275
    const-string v1, "ReaderFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flung from ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", velocity("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    neg-float v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    neg-float v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), min("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), max("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3280
    :cond_10c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->scheduleScrollerUpdate()V

    .line 3289
    .end local v11           #maxX:F
    .end local v12           #maxY:F
    .end local v13           #minX:F
    .end local v14           #minY:F
    .end local v15           #x:I
    .end local v16           #y:I
    :cond_10f
    :goto_10f
    const/4 v1, 0x1

    return v1

    .line 3281
    :cond_111
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mTurning:Z

    if-eqz v1, :cond_10f

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mMinimumInitialFlingVelocity:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_10f

    .line 3283
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->signum(F)F

    move-result v1

    neg-float v1, v1

    float-to-int v10, v1

    .line 3284
    .local v10, direction:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/google/android/apps/books/widget/PageTurnView;->enqueueEndTurn(I)V

    .line 3285
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->restoreZoomIfNeeded(I)V

    .line 3286
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mTurning:Z

    goto :goto_10f
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 12
    .parameter "detector"

    .prologue
    const/high16 v9, 0x3f80

    .line 3310
    iget v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v6

    mul-float v4, v5, v6

    .line 3311
    .local v4, scale:F
    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 3312
    const-string v5, "ReaderFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NaN scale seen in onScale as product of scale "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and detector scale "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5, v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3315
    :cond_3e
    invoke-virtual {p0, v4}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->setScale(F)V

    .line 3317
    iget v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    float-to-double v5, v5

    const-wide/high16 v7, 0x3ff0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_77

    .line 3318
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    .line 3319
    .local v2, focusX:F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    .line 3320
    .local v3, focusY:F
    iget v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mPreviousZoomFocusX:F

    sub-float v0, v2, v5

    .line 3321
    .local v0, dx:F
    iget v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mPreviousZoomFocusY:F

    sub-float v1, v3, v5

    .line 3322
    .local v1, dy:F
    iput v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mPreviousZoomFocusX:F

    .line 3323
    iput v3, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mPreviousZoomFocusY:F

    .line 3324
    iget v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    iget v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    sub-float/2addr v6, v9

    div-float v6, v0, v6

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    .line 3325
    iget v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterY:F

    iget v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    sub-float/2addr v6, v9

    div-float v6, v1, v6

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterY:F

    .line 3326
    iget v5, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    invoke-direct {p0, v5}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->clampZoomCenterForScale(F)V

    .line 3329
    .end local v0           #dx:F
    .end local v1           #dy:F
    .end local v2           #focusX:F
    .end local v3           #focusY:F
    :cond_77
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->onZoomChanged()V

    .line 3330
    const/4 v5, 0x1

    return v5
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 8
    .parameter "detector"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3336
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mZoomMaxSpan:I
    invoke-static {v3}, Lcom/google/android/apps/books/app/ReaderFragment;->access$7900(Lcom/google/android/apps/books/app/ReaderFragment;)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_12

    .line 3354
    :goto_11
    return v0

    .line 3341
    :cond_12
    iget-boolean v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mTurning:Z

    if-eqz v2, :cond_21

    .line 3342
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->endTurn(Z)Z

    .line 3343
    iput-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mTurning:Z

    .line 3346
    :cond_21
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    float-to-double v2, v0

    const-wide/high16 v4, 0x3ff0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_47

    .line 3347
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    .line 3348
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterY:F

    .line 3349
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    iput v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mPreviousZoomFocusX:F

    .line 3350
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterY:F

    iput v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mPreviousZoomFocusY:F

    .line 3351
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mInitialSpan:F

    .line 3352
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->onZoomChanged()V

    :cond_47
    move v0, v1

    .line 3354
    goto :goto_11
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 7
    .parameter "detector"

    .prologue
    const/high16 v2, 0x40c0

    const/high16 v4, 0x3f80

    .line 3363
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    .line 3365
    .local v0, currentSpan:F
    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_12

    .line 3366
    invoke-virtual {p0, v4}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->setScale(F)V

    .line 3379
    :goto_11
    return-void

    .line 3367
    :cond_12
    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1e

    .line 3368
    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->animateScale(FF)V

    goto :goto_11

    .line 3369
    :cond_1e
    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mInitialSpan:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2d

    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    const v2, 0x3fa66666

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_3b

    :cond_2d
    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mInitialSpan:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_41

    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    const/high16 v2, 0x3fc0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_41

    .line 3371
    :cond_3b
    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    invoke-direct {p0, v1, v4}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->animateScale(FF)V

    goto :goto_11

    .line 3372
    :cond_41
    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 3373
    const-string v1, "ReaderFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NaN mScale seen in onScaleEnd(); current span "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3375
    invoke-virtual {p0, v4}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->setScale(F)V

    goto :goto_11

    .line 3377
    :cond_6b
    iget v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->setScale(F)V

    goto :goto_11
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 15
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 3141
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    :cond_4
    const/4 v6, 0x0

    .line 3188
    :goto_5
    return v6

    .line 3142
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float v0, v6, v7

    .line 3143
    .local v0, dx:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float v1, v6, v7

    .line 3144
    .local v1, dy:F
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->dxToFraction(F)F

    move-result v2

    .line 3145
    .local v2, fraction:F
    iget v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    invoke-direct {p0, v6}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->minZoomCenterX(F)F

    move-result v3

    .line 3146
    .local v3, leftEdge:F
    iget v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    invoke-direct {p0, v6}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->maxZoomCenterX(F)F

    move-result v4

    .line 3147
    .local v4, rightEdge:F
    iget v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    float-to-double v6, v6

    const-wide/high16 v8, 0x3ff0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_6f

    const/4 v5, 0x1

    .line 3149
    .local v5, zoomed:Z
    :goto_34
    if-eqz v5, :cond_62

    .line 3150
    iget-boolean v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mRestoreZoom:Z

    if-nez v6, :cond_71

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-object v7, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mMinimumZoomPastEdge:I
    invoke-static {v7}, Lcom/google/android/apps/books/app/ReaderFragment;->access$7700(Lcom/google/android/apps/books/app/ReaderFragment;)I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_71

    iget v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mInitialZoomCenterX:F

    cmpg-float v6, v6, v3

    if-gtz v6, :cond_54

    const/4 v6, 0x0

    cmpl-float v6, v0, v6

    if-gtz v6, :cond_5f

    :cond_54
    iget v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mInitialZoomCenterX:F

    cmpl-float v6, v6, v4

    if-ltz v6, :cond_71

    const/4 v6, 0x0

    cmpg-float v6, v0, v6

    if-gez v6, :cond_71

    .line 3154
    :cond_5f
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->temporarilySuppressZoom()V

    .line 3169
    :cond_62
    :goto_62
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_ad

    .line 3171
    const/4 v6, 0x0

    goto :goto_5

    .line 3147
    .end local v5           #zoomed:Z
    :cond_6f
    const/4 v5, 0x0

    goto :goto_34

    .line 3156
    .restart local v5       #zoomed:Z
    :cond_71
    iget-boolean v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mHorizontallyLocked:Z

    if-eqz v6, :cond_88

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-object v7, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mVerticalRut:I
    invoke-static {v7}, Lcom/google/android/apps/books/app/ReaderFragment;->access$7800(Lcom/google/android/apps/books/app/ReaderFragment;)I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_88

    .line 3158
    neg-float p3, v0

    .line 3159
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mHorizontallyLocked:Z

    .line 3161
    :cond_88
    iget-boolean v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mHorizontallyLocked:Z

    if-nez v6, :cond_98

    .line 3162
    iget v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    iget v7, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    const/high16 v8, 0x3f80

    sub-float/2addr v7, v8

    div-float v7, p3, v7

    add-float/2addr v6, v7

    iput v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    .line 3164
    :cond_98
    iget v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterY:F

    iget v7, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    const/high16 v8, 0x3f80

    sub-float/2addr v7, v8

    div-float v7, p4, v7

    add-float/2addr v6, v7

    iput v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterY:F

    .line 3165
    iget v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    invoke-direct {p0, v6}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->clampZoomCenterForScale(F)V

    .line 3166
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->onZoomChanged()V

    goto :goto_62

    .line 3173
    :cond_ad
    if-eqz v5, :cond_b3

    iget-boolean v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mRestoreZoom:Z

    if-eqz v6, :cond_e2

    .line 3174
    :cond_b3
    iget-boolean v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mTurning:Z

    if-nez v6, :cond_d3

    .line 3175
    iget-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    const/4 v7, 0x0

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->setChromeVisible(Z)V
    invoke-static {v6, v7}, Lcom/google/android/apps/books/app/ReaderFragment;->access$700(Lcom/google/android/apps/books/app/ReaderFragment;Z)V

    .line 3176
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mTurningDirection:I

    .line 3177
    iget-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;
    invoke-static {v6}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v6

    iget v7, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mTurningDirection:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/google/android/apps/books/widget/PageTurnView;->enqueueStartTurn(IZ)V

    .line 3178
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mTurning:Z

    .line 3181
    :cond_d3
    iget v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mTurningDirection:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_d9

    .line 3182
    neg-float v2, v2

    .line 3185
    :cond_d9
    iget-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;
    invoke-static {v6}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/android/apps/books/widget/PageTurnView;->enqueueUpdateTurn(F)V

    .line 3188
    :cond_e2
    const/4 v6, 0x1

    goto/16 :goto_5
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "e"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3031
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->isEdgeTouch(Landroid/view/MotionEvent;)Z
    invoke-static {v4, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$7500(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 3032
    const-string v3, "ReaderFragment"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 3033
    const-string v3, "ReaderFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping single tap because it\'s on the horizontal edge: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    :cond_2b
    :goto_2b
    return v2

    .line 3038
    :cond_2c
    iget v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_2b

    .line 3043
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-virtual {v4}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_5b

    move v0, v3

    .line 3044
    .local v0, fragmentAttached:Z
    :goto_3e
    if-eqz v0, :cond_2b

    .line 3046
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;
    invoke-static {v4}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/apps/books/widget/PageTurnView;->getZone(F)Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;

    move-result-object v1

    .line 3047
    .local v1, zone:Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;
    sget-object v4, Lcom/google/android/apps/books/app/ReaderFragment$25;->$SwitchMap$com$google$android$apps$books$widget$PageTurnView$TouchZone:[I

    invoke-virtual {v1}, Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_82

    :goto_59
    move v2, v3

    .line 3063
    goto :goto_2b

    .end local v0           #fragmentAttached:Z
    .end local v1           #zone:Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;
    :cond_5b
    move v0, v2

    .line 3043
    goto :goto_3e

    .line 3050
    .restart local v0       #fragmentAttached:Z
    .restart local v1       #zone:Lcom/google/android/apps/books/widget/PageTurnView$TouchZone;
    :pswitch_5d
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->setChromeVisible(Z)V
    invoke-static {v4, v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$700(Lcom/google/android/apps/books/app/ReaderFragment;Z)V

    .line 3051
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v2, v4, v3}, Lcom/google/android/apps/books/widget/PageTurnView;->enqueueStartTurn(IZ)V

    goto :goto_59

    .line 3055
    :pswitch_6d
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->setChromeVisible(Z)V
    invoke-static {v4, v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$700(Lcom/google/android/apps/books/app/ReaderFragment;Z)V

    .line 3056
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Lcom/google/android/apps/books/widget/PageTurnView;->enqueueStartTurn(IZ)V

    goto :goto_59

    .line 3060
    :pswitch_7c
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->toggleChrome()V

    goto :goto_59

    .line 3047
    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_6d
        :pswitch_7c
    .end packed-switch
.end method

.method public setScale(F)V
    .registers 5
    .parameter "scale"

    .prologue
    .line 3382
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3383
    const-string v0, "ReaderFragment"

    const-string v1, "NaN scale seen in setScale; resetting it"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3384
    const/high16 p1, 0x3f80

    .line 3386
    :cond_15
    iput p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mScale:F

    .line 3387
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->onZoomChanged()V

    .line 3388
    return-void
.end method

.method public setZoomCenterX(F)V
    .registers 2
    .parameter "x"

    .prologue
    .line 3391
    iput p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterX:F

    .line 3392
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->onZoomChanged()V

    .line 3393
    return-void
.end method

.method public setZoomCenterY(F)V
    .registers 2
    .parameter "y"

    .prologue
    .line 3396
    iput p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->mZoomCenterY:F

    .line 3397
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;->onZoomChanged()V

    .line 3398
    return-void
.end method
