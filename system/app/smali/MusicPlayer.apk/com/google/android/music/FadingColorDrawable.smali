.class public Lcom/google/android/music/FadingColorDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source "FadingColorDrawable.java"

# interfaces
.implements Lcom/google/android/music/animator/AnimatorListener;
.implements Lcom/google/android/music/animator/AnimatorUpdateListener;


# instance fields
.field private inPressed:Z

.field private final mAnimator:Lcom/google/android/music/animator/PropertyAnimator;

.field private mContainingView:Landroid/view/View;

.field private final mMaxAlpha:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 5
    .parameter "context"
    .parameter "v"

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/res/Resources;)V

    .line 36
    if-nez p2, :cond_11

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Containing view must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_11
    iput-object p2, p0, Lcom/google/android/music/FadingColorDrawable;->mContainingView:Landroid/view/View;

    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;)V
    .registers 8
    .parameter "res"

    .prologue
    const/4 v5, 0x0

    .line 43
    const v0, 0x7f0a0006

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 22
    iput-boolean v5, p0, Lcom/google/android/music/FadingColorDrawable;->inPressed:Z

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/FadingColorDrawable;->mContainingView:Landroid/view/View;

    .line 44
    invoke-virtual {p0}, Lcom/google/android/music/FadingColorDrawable;->getAlpha()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/FadingColorDrawable;->mMaxAlpha:I

    .line 45
    invoke-virtual {p0, v5}, Lcom/google/android/music/FadingColorDrawable;->setAlpha(I)V

    .line 46
    const v0, 0x10e0001

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 47
    .local v1, duration:I
    new-instance v0, Lcom/google/android/music/animator/PropertyAnimator;

    const-string v3, "alpha"

    iget v4, p0, Lcom/google/android/music/FadingColorDrawable;->mMaxAlpha:I

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/animator/PropertyAnimator;-><init>(ILjava/lang/Object;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/google/android/music/FadingColorDrawable;->mAnimator:Lcom/google/android/music/animator/PropertyAnimator;

    .line 48
    iget-object v0, p0, Lcom/google/android/music/FadingColorDrawable;->mAnimator:Lcom/google/android/music/animator/PropertyAnimator;

    invoke-virtual {v0, p0}, Lcom/google/android/music/animator/PropertyAnimator;->addUpdateListener(Lcom/google/android/music/animator/AnimatorUpdateListener;)V

    .line 49
    iget-object v0, p0, Lcom/google/android/music/FadingColorDrawable;->mAnimator:Lcom/google/android/music/animator/PropertyAnimator;

    invoke-virtual {v0, p0}, Lcom/google/android/music/animator/PropertyAnimator;->addListener(Lcom/google/android/music/animator/AnimatorListener;)V

    .line 50
    return-void
.end method

.method public static containsFocused([I)Z
    .registers 6
    .parameter "stateSet"

    .prologue
    .line 115
    move-object v0, p0

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v3, :cond_11

    aget v1, v0, v2

    .line 116
    .local v1, i:I
    const v4, 0x101009c

    if-ne v1, v4, :cond_e

    .line 117
    const/4 v4, 0x1

    .line 120
    .end local v1           #i:I
    :goto_d
    return v4

    .line 115
    .restart local v1       #i:I
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 120
    .end local v1           #i:I
    :cond_11
    const/4 v4, 0x0

    goto :goto_d
.end method

.method public static containsPressed([I)Z
    .registers 6
    .parameter "stateSet"

    .prologue
    .line 106
    move-object v0, p0

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v3, :cond_11

    aget v1, v0, v2

    .line 107
    .local v1, i:I
    const v4, 0x10100a7

    if-ne v1, v4, :cond_e

    .line 108
    const/4 v4, 0x1

    .line 111
    .end local v1           #i:I
    :goto_d
    return v4

    .line 106
    .restart local v1       #i:I
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 111
    .end local v1           #i:I
    :cond_11
    const/4 v4, 0x0

    goto :goto_d
.end method

.method private updateAlpha(Z)V
    .registers 3
    .parameter "focused"

    .prologue
    .line 71
    if-eqz p1, :cond_8

    .line 72
    iget v0, p0, Lcom/google/android/music/FadingColorDrawable;->mMaxAlpha:I

    invoke-virtual {p0, v0}, Lcom/google/android/music/FadingColorDrawable;->setAlpha(I)V

    .line 76
    :goto_7
    return-void

    .line 74
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/music/FadingColorDrawable;->setAlpha(I)V

    goto :goto_7
.end method


# virtual methods
.method public isStateful()Z
    .registers 2

    .prologue
    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public onAnimationEnd(Lcom/google/android/music/animator/Animator;)V
    .registers 3
    .parameter "animation"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/FadingColorDrawable;->mContainingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/music/FadingColorDrawable;->updateAlpha(Z)V

    .line 64
    return-void
.end method

.method public onAnimationRepeat(Lcom/google/android/music/animator/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 60
    return-void
.end method

.method public onAnimationStart(Lcom/google/android/music/animator/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 57
    return-void
.end method

.method public onAnimationUpdate(Lcom/google/android/music/animator/Animator;)V
    .registers 3
    .parameter "animation"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/music/FadingColorDrawable;->mContainingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 54
    return-void
.end method

.method protected onStateChange([I)Z
    .registers 5
    .parameter "stateSet"

    .prologue
    const/4 v2, 0x0

    .line 81
    iget-object v1, p0, Lcom/google/android/music/FadingColorDrawable;->mContainingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_a

    .line 102
    :cond_9
    :goto_9
    return v2

    .line 84
    :cond_a
    invoke-static {p1}, Lcom/google/android/music/FadingColorDrawable;->containsFocused([I)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/music/FadingColorDrawable;->updateAlpha(Z)V

    .line 89
    iget-object v1, p0, Lcom/google/android/music/FadingColorDrawable;->mContainingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 90
    .local v0, parent:Landroid/view/View;
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/FadingColorDrawable;->containsPressed([I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 94
    :cond_25
    invoke-static {p1}, Lcom/google/android/music/FadingColorDrawable;->containsPressed([I)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 95
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/FadingColorDrawable;->inPressed:Z

    .line 96
    iget v1, p0, Lcom/google/android/music/FadingColorDrawable;->mMaxAlpha:I

    invoke-virtual {p0, v1}, Lcom/google/android/music/FadingColorDrawable;->setAlpha(I)V

    .line 97
    iget-object v1, p0, Lcom/google/android/music/FadingColorDrawable;->mContainingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_9

    .line 98
    :cond_39
    iget-boolean v1, p0, Lcom/google/android/music/FadingColorDrawable;->inPressed:Z

    if-eqz v1, :cond_9

    .line 99
    iput-boolean v2, p0, Lcom/google/android/music/FadingColorDrawable;->inPressed:Z

    .line 100
    iget-object v1, p0, Lcom/google/android/music/FadingColorDrawable;->mAnimator:Lcom/google/android/music/animator/PropertyAnimator;

    invoke-virtual {v1}, Lcom/google/android/music/animator/PropertyAnimator;->start()V

    goto :goto_9
.end method
