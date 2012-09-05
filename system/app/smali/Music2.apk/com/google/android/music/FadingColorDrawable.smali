.class public Lcom/google/android/music/FadingColorDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source "FadingColorDrawable.java"

# interfaces
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
    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/res/Resources;)V

    .line 34
    if-nez p2, :cond_11

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Containing view must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_11
    iput-object p2, p0, Lcom/google/android/music/FadingColorDrawable;->mContainingView:Landroid/view/View;

    .line 38
    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;)V
    .registers 8
    .parameter "res"

    .prologue
    const/4 v5, 0x0

    .line 41
    const v0, 0x7f0a0003

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 20
    iput-boolean v5, p0, Lcom/google/android/music/FadingColorDrawable;->inPressed:Z

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/FadingColorDrawable;->mContainingView:Landroid/view/View;

    .line 42
    invoke-virtual {p0}, Lcom/google/android/music/FadingColorDrawable;->getAlpha()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/FadingColorDrawable;->mMaxAlpha:I

    .line 43
    invoke-virtual {p0, v5}, Lcom/google/android/music/FadingColorDrawable;->setAlpha(I)V

    .line 44
    const v0, 0x10e0001

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 45
    .local v1, duration:I
    new-instance v0, Lcom/google/android/music/animator/PropertyAnimator;

    const-string v3, "alpha"

    iget v4, p0, Lcom/google/android/music/FadingColorDrawable;->mMaxAlpha:I

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/animator/PropertyAnimator;-><init>(ILjava/lang/Object;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/google/android/music/FadingColorDrawable;->mAnimator:Lcom/google/android/music/animator/PropertyAnimator;

    .line 46
    iget-object v0, p0, Lcom/google/android/music/FadingColorDrawable;->mAnimator:Lcom/google/android/music/animator/PropertyAnimator;

    invoke-virtual {v0, p0}, Lcom/google/android/music/animator/PropertyAnimator;->addUpdateListener(Lcom/google/android/music/animator/AnimatorUpdateListener;)V

    .line 47
    return-void
.end method

.method public static containsPressed([I)Z
    .registers 6
    .parameter "stateSet"

    .prologue
    .line 80
    move-object v0, p0

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v3, :cond_11

    aget v1, v0, v2

    .line 81
    .local v1, i:I
    const v4, 0x10100a7

    if-ne v1, v4, :cond_e

    .line 82
    const/4 v4, 0x1

    .line 85
    .end local v1           #i:I
    :goto_d
    return v4

    .line 80
    .restart local v1       #i:I
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 85
    .end local v1           #i:I
    :cond_11
    const/4 v4, 0x0

    goto :goto_d
.end method


# virtual methods
.method public isStateful()Z
    .registers 2

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public onAnimationUpdate(Lcom/google/android/music/animator/Animator;)V
    .registers 3
    .parameter "animation"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/music/FadingColorDrawable;->mContainingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 51
    return-void
.end method

.method protected onStateChange([I)Z
    .registers 5
    .parameter "stateSet"

    .prologue
    const/4 v2, 0x0

    .line 56
    iget-object v1, p0, Lcom/google/android/music/FadingColorDrawable;->mContainingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_a

    .line 76
    :cond_9
    :goto_9
    return v2

    .line 63
    :cond_a
    iget-object v1, p0, Lcom/google/android/music/FadingColorDrawable;->mContainingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 64
    .local v0, parent:Landroid/view/View;
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/FadingColorDrawable;->containsPressed([I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 68
    :cond_1e
    invoke-static {p1}, Lcom/google/android/music/FadingColorDrawable;->containsPressed([I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/FadingColorDrawable;->inPressed:Z

    .line 70
    iget v1, p0, Lcom/google/android/music/FadingColorDrawable;->mMaxAlpha:I

    invoke-virtual {p0, v1}, Lcom/google/android/music/FadingColorDrawable;->setAlpha(I)V

    .line 71
    iget-object v1, p0, Lcom/google/android/music/FadingColorDrawable;->mContainingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_9

    .line 72
    :cond_32
    iget-boolean v1, p0, Lcom/google/android/music/FadingColorDrawable;->inPressed:Z

    if-eqz v1, :cond_9

    .line 73
    iput-boolean v2, p0, Lcom/google/android/music/FadingColorDrawable;->inPressed:Z

    .line 74
    iget-object v1, p0, Lcom/google/android/music/FadingColorDrawable;->mAnimator:Lcom/google/android/music/animator/PropertyAnimator;

    invoke-virtual {v1}, Lcom/google/android/music/animator/PropertyAnimator;->start()V

    goto :goto_9
.end method
