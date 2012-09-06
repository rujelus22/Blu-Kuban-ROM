.class public Lcom/google/android/apps/plus/views/PlusOneAnimatorView;
.super Landroid/view/View;
.source "PlusOneAnimatorView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/PlusOneAnimatorView$PlusOneAnimListener;
    }
.end annotation


# static fields
.field private static final sAccelerateInterpolator:Landroid/view/animation/Interpolator;

.field private static final sDecelerateInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimStage:I

.field private mCurrentButton:Lcom/google/android/apps/plus/views/ClickableButton;

.field private mNextButton:Lcom/google/android/apps/plus/views/ClickableButton;

.field private mOriginalTranslateY:I

.field private mPlusOneAnimListener:Lcom/google/android/apps/plus/views/PlusOneAnimatorView$PlusOneAnimListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const v1, 0x3f99999a

    .line 36
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->sAccelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 37
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->sDecelerateInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 5
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 139
    iget v0, p0, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->mAnimStage:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_f

    .line 140
    iput-object v2, p0, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->mCurrentButton:Lcom/google/android/apps/plus/views/ClickableButton;

    .line 141
    iput-object v2, p0, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->mNextButton:Lcom/google/android/apps/plus/views/ClickableButton;

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->mPlusOneAnimListener:Lcom/google/android/apps/plus/views/PlusOneAnimatorView$PlusOneAnimListener;

    invoke-interface {v0}, Lcom/google/android/apps/plus/views/PlusOneAnimatorView$PlusOneAnimListener;->onPlusOneAnimFinished()V

    .line 144
    :cond_f
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    const/high16 v3, 0x3f80

    .line 107
    iget v0, p0, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->mAnimStage:I

    packed-switch v0, :pswitch_data_66

    .line 135
    :goto_8
    return-void

    .line 109
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->mNextButton:Lcom/google/android/apps/plus/views/ClickableButton;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->mCurrentButton:Lcom/google/android/apps/plus/views/ClickableButton;

    .line 110
    iput-object v1, p0, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->mNextButton:Lcom/google/android/apps/plus/views/ClickableButton;

    .line 112
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->sDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 114
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->invalidate()V

    .line 116
    iget v0, p0, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->mAnimStage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->mAnimStage:I

    goto :goto_8

    .line 121
    :pswitch_32
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x10e

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->mOriginalTranslateY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->sDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 124
    iget v0, p0, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->mAnimStage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->mAnimStage:I

    goto :goto_8

    .line 129
    :pswitch_5b
    iput-object v1, p0, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->mCurrentButton:Lcom/google/android/apps/plus/views/ClickableButton;

    .line 130
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->mPlusOneAnimListener:Lcom/google/android/apps/plus/views/PlusOneAnimatorView$PlusOneAnimListener;

    invoke-interface {v0}, Lcom/google/android/apps/plus/views/PlusOneAnimatorView$PlusOneAnimListener;->onPlusOneAnimFinished()V

    .line 131
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->invalidate()V

    goto :goto_8

    .line 107
    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_9
        :pswitch_32
        :pswitch_5b
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 148
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 103
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 96
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->mCurrentButton:Lcom/google/android/apps/plus/views/ClickableButton;

    if-eqz v0, :cond_c

    .line 97
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->mCurrentButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/ClickableButton;->draw(Landroid/graphics/Canvas;)V

    .line 99
    :cond_c
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v2, 0x0

    .line 84
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->mCurrentButton:Lcom/google/android/apps/plus/views/ClickableButton;

    if-eqz v1, :cond_17

    .line 85
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->mCurrentButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 86
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->setMeasuredDimension(II)V

    .line 90
    .end local v0           #rect:Landroid/graphics/Rect;
    :goto_16
    return-void

    .line 88
    :cond_17
    invoke-virtual {p0, v2, v2}, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->setMeasuredDimension(II)V

    goto :goto_16
.end method

.method public startPlusOneAnim(Lcom/google/android/apps/plus/views/PlusOneAnimatorView$PlusOneAnimListener;Lcom/google/android/apps/plus/views/ClickableButton;Lcom/google/android/apps/plus/views/ClickableButton;)V
    .registers 10
    .parameter "listener"
    .parameter "originalButton"
    .parameter "plusOnedButton"

    .prologue
    const/high16 v5, 0x4000

    const/4 v3, 0x0

    .line 59
    iput v3, p0, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->mAnimStage:I

    .line 61
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->mPlusOneAnimListener:Lcom/google/android/apps/plus/views/PlusOneAnimatorView$PlusOneAnimListener;

    .line 62
    iput-object p2, p0, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->mCurrentButton:Lcom/google/android/apps/plus/views/ClickableButton;

    .line 63
    iput-object p3, p0, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->mNextButton:Lcom/google/android/apps/plus/views/ClickableButton;

    .line 65
    invoke-virtual {p2}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 66
    .local v1, originalRect:Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->setX(F)V

    .line 67
    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->setY(F)V

    .line 68
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 69
    invoke-virtual {p3}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 71
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_61

    .line 72
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->mOriginalTranslateY:I

    .line 73
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->mCurrentButton:Lcom/google/android/apps/plus/views/ClickableButton;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/lit8 v0, v2, 0x2

    .line 74
    .local v0, offsetDelta:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x10e

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->mOriginalTranslateY:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->sAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 79
    .end local v0           #offsetDelta:I
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PlusOneAnimatorView;->requestLayout()V

    .line 80
    return-void
.end method
