.class public Lcom/google/android/apps/unveil/textinput/AnimationHelper;
.super Ljava/lang/Object;
.source "AnimationHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alpha(Landroid/view/View;FFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .registers 13
    .parameter "view"
    .parameter "from"
    .parameter "to"
    .parameter "durationMillis"
    .parameter "interpolator"
    .parameter "onEnd"

    .prologue
    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_12

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {v0, p3, p4, p5, p6}, Lcom/google/android/apps/unveil/textinput/AnimationHelper;->animatePostHC(Landroid/view/ViewPropertyAnimator;JLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 30
    :cond_11
    :goto_11
    return-void

    .line 26
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_11

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_11

    .line 28
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, p0

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/unveil/textinput/AnimationHelper;->animatePreHCMR1(Landroid/view/View;Landroid/view/animation/Animation;JLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    goto :goto_11
.end method

.method private static animatePostHC(Landroid/view/ViewPropertyAnimator;JLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .registers 6
    .parameter "animation"
    .parameter "durationMillis"
    .parameter "interpolator"
    .parameter "onEnd"

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 48
    if-eqz p3, :cond_8

    .line 49
    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 51
    :cond_8
    if-eqz p4, :cond_13

    .line 52
    new-instance v0, Lcom/google/android/apps/unveil/textinput/AnimationHelper$1;

    invoke-direct {v0, p4}, Lcom/google/android/apps/unveil/textinput/AnimationHelper$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 61
    :goto_12
    return-void

    .line 59
    :cond_13
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_12
.end method

.method private static animatePreHCMR1(Landroid/view/View;Landroid/view/animation/Animation;JLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .registers 7
    .parameter "view"
    .parameter "animation"
    .parameter "durationMillis"
    .parameter "interpolator"
    .parameter "onEnd"

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 66
    invoke-virtual {p1, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 68
    if-eqz p4, :cond_f

    .line 69
    invoke-virtual {p1, p4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 71
    :cond_f
    if-eqz p5, :cond_1d

    .line 72
    new-instance v0, Lcom/google/android/apps/unveil/textinput/AnimationHelper$2;

    invoke-direct {v0, p5}, Lcom/google/android/apps/unveil/textinput/AnimationHelper$2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 85
    :goto_19
    invoke-virtual {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 86
    return-void

    .line 83
    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_19
.end method

.method public static translateY(Landroid/view/View;FFJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .registers 13
    .parameter "view"
    .parameter "from"
    .parameter "to"
    .parameter "durationMillis"
    .parameter "interpolator"
    .parameter "onEnd"

    .prologue
    const/4 v2, 0x0

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_16

    .line 35
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {v0, p3, p4, p5, p6}, Lcom/google/android/apps/unveil/textinput/AnimationHelper;->animatePostHC(Landroid/view/ViewPropertyAnimator;JLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 43
    :cond_15
    :goto_15
    return-void

    .line 38
    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_15

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_15

    .line 40
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v1, v2, v2, p1, p2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v0, p0

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/unveil/textinput/AnimationHelper;->animatePreHCMR1(Landroid/view/View;Landroid/view/animation/Animation;JLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    goto :goto_15
.end method
