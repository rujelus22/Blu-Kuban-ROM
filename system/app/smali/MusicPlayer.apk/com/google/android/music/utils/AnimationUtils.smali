.class public Lcom/google/android/music/utils/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animateErrorTextAnimation(Landroid/widget/TextView;ZLjava/lang/CharSequence;J)V
    .registers 13
    .parameter "errorTextView"
    .parameter "show"
    .parameter "errorText"
    .parameter "animationDuration"

    .prologue
    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    .line 18
    if-eqz p1, :cond_14

    move v4, v6

    .line 19
    .local v4, from:F
    :goto_6
    if-eqz p1, :cond_16

    .line 21
    .local v5, to:F
    :goto_8
    if-eqz p1, :cond_18

    if-nez p2, :cond_18

    .line 22
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "When switching to error state, errorText is required"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v4           #from:F
    .end local v5           #to:F
    :cond_14
    move v4, v5

    .line 18
    goto :goto_6

    .restart local v4       #from:F
    :cond_16
    move v5, v6

    .line 19
    goto :goto_8

    .line 26
    .restart local v5       #to:F
    :cond_18
    monitor-enter p0

    .line 27
    :try_start_19
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    invoke-virtual {p0}, Landroid/widget/TextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v3

    .line 29
    .local v3, currentAnimation:Landroid/view/animation/Animation;
    if-eqz v3, :cond_34

    instance-of v6, v3, Lcom/google/android/music/utils/RetrievableAlphaAnimation;

    if-eqz v6, :cond_34

    .line 30
    move-object v0, v3

    check-cast v0, Lcom/google/android/music/utils/RetrievableAlphaAnimation;

    move-object v1, v0

    .line 31
    .local v1, alphaAnim:Lcom/google/android/music/utils/RetrievableAlphaAnimation;
    invoke-virtual {v1}, Lcom/google/android/music/utils/RetrievableAlphaAnimation;->getToAlpha()F

    move-result v6

    cmpl-float v6, v6, v5

    if-nez v6, :cond_34

    .line 33
    monitor-exit p0

    .line 72
    .end local v1           #alphaAnim:Lcom/google/android/music/utils/RetrievableAlphaAnimation;
    :goto_33
    return-void

    .line 37
    :cond_34
    invoke-virtual {p0}, Landroid/widget/TextView;->clearAnimation()V

    .line 39
    new-instance v2, Lcom/google/android/music/utils/RetrievableAlphaAnimation;

    invoke-direct {v2, v4, v5}, Lcom/google/android/music/utils/RetrievableAlphaAnimation;-><init>(FF)V

    .line 40
    .local v2, alphaAnimation:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v2, p3, p4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 41
    new-instance v6, Lcom/google/android/music/utils/AnimationUtils$1;

    invoke-direct {v6, p1, p0, v2, p2}, Lcom/google/android/music/utils/AnimationUtils$1;-><init>(ZLandroid/widget/TextView;Landroid/view/animation/AlphaAnimation;Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v6}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 70
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 71
    monitor-exit p0

    goto :goto_33

    .end local v2           #alphaAnimation:Landroid/view/animation/AlphaAnimation;
    .end local v3           #currentAnimation:Landroid/view/animation/Animation;
    :catchall_4c
    move-exception v6

    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_19 .. :try_end_4e} :catchall_4c

    throw v6
.end method
