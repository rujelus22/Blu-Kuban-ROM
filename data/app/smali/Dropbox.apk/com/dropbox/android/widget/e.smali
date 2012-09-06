.class public final Lcom/dropbox/android/widget/e;
.super Ljava/lang/Object;
.source "panda.py"


# direct methods
.method public static a(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/view/ViewGroup;II)Landroid/view/View;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 40
    const v0, 0x7f030007

    invoke-virtual {p0, v0, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/RotatableFrameLayout;

    .line 41
    int-to-float v1, p3

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/RotatableFrameLayout;->setRotationMaxBackport(F)V

    .line 42
    new-instance v3, Lcom/dropbox/android/widget/g;

    invoke-direct {v3, v9}, Lcom/dropbox/android/widget/g;-><init>(Lcom/dropbox/android/widget/f;)V

    .line 43
    iput-object v0, v3, Lcom/dropbox/android/widget/g;->a:Lcom/dropbox/android/widget/RotatableFrameLayout;

    .line 44
    const v1, 0x7f0d0021

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/RotatableFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v3, Lcom/dropbox/android/widget/g;->b:Landroid/widget/ImageView;

    .line 45
    const v1, 0x7f0d0023

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/RotatableFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v3, Lcom/dropbox/android/widget/g;->c:Landroid/view/View;

    .line 46
    const v1, 0x7f0d0022

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/RotatableFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v3, Lcom/dropbox/android/widget/g;->d:Landroid/view/View;

    .line 47
    const v1, 0x7f0d0025

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/RotatableFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v3, Lcom/dropbox/android/widget/g;->e:Landroid/widget/TextView;

    .line 48
    iput p4, v3, Lcom/dropbox/android/widget/g;->f:I

    .line 49
    invoke-virtual {v0, v3}, Lcom/dropbox/android/widget/RotatableFrameLayout;->setTag(Ljava/lang/Object;)V

    .line 52
    iget-object v1, v3, Lcom/dropbox/android/widget/g;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    .line 53
    iget-object v2, v3, Lcom/dropbox/android/widget/g;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 54
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 55
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 56
    iget-object v1, v3, Lcom/dropbox/android/widget/g;->b:Landroid/widget/ImageView;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 57
    iget-object v1, v3, Lcom/dropbox/android/widget/g;->d:Landroid/view/View;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v4, v5, v6, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 61
    invoke-static {}, Lcom/dropbox/android/util/bb;->a()Z

    move-result v1

    if-eqz v1, :cond_8f

    invoke-virtual {p2}, Landroid/view/ViewGroup;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 62
    iget-object v1, v3, Lcom/dropbox/android/widget/g;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v8, v9}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 63
    iget-object v1, v3, Lcom/dropbox/android/widget/g;->c:Landroid/view/View;

    invoke-virtual {v1, v8, v9}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 69
    :cond_8f
    invoke-static {v0, v10}, Lcom/dropbox/android/widget/e;->a(Landroid/view/View;Z)V

    .line 71
    return-object v0
.end method

.method public static a(Landroid/view/View;F)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/g;

    iget-object v0, v0, Lcom/dropbox/android/widget/g;->a:Lcom/dropbox/android/widget/RotatableFrameLayout;

    invoke-virtual {v0, p1}, Lcom/dropbox/android/widget/RotatableFrameLayout;->setRotationBackport(F)V

    .line 76
    return-void
.end method

.method public static a(Landroid/view/View;II)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/g;

    .line 80
    iget v1, v0, Lcom/dropbox/android/widget/g;->f:I

    if-gt p2, v1, :cond_e

    iget v1, v0, Lcom/dropbox/android/widget/g;->f:I

    if-le p1, v1, :cond_16

    .line 81
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid padding offset, bigger than max random padding"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_16
    iget v1, v0, Lcom/dropbox/android/widget/g;->f:I

    sub-int/2addr v1, p1

    .line 84
    iget v2, v0, Lcom/dropbox/android/widget/g;->f:I

    sub-int/2addr v2, v1

    .line 85
    iget v3, v0, Lcom/dropbox/android/widget/g;->f:I

    sub-int/2addr v3, p2

    .line 86
    iget v4, v0, Lcom/dropbox/android/widget/g;->f:I

    sub-int/2addr v4, v3

    .line 87
    iget-object v0, v0, Lcom/dropbox/android/widget/g;->a:Lcom/dropbox/android/widget/RotatableFrameLayout;

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/dropbox/android/widget/RotatableFrameLayout;->setPadding(IIII)V

    .line 88
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/graphics/drawable/Drawable;ZJZ)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 112
    if-nez p1, :cond_c

    .line 113
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 132
    :cond_b
    :goto_b
    return-void

    .line 115
    :cond_c
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/g;

    .line 117
    iget-object v1, v0, Lcom/dropbox/android/widget/g;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    iget-object v4, v0, Lcom/dropbox/android/widget/g;->c:Landroid/view/View;

    if-eqz p2, :cond_4f

    move v1, v2

    :goto_1f
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    if-eqz p2, :cond_3a

    .line 120
    iget-object v1, v0, Lcom/dropbox/android/widget/g;->e:Landroid/widget/TextView;

    cmp-long v4, p3, v5

    if-eqz v4, :cond_51

    :goto_2a
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    cmp-long v1, p3, v5

    if-eqz v1, :cond_3a

    .line 122
    iget-object v1, v0, Lcom/dropbox/android/widget/g;->e:Landroid/widget/TextView;

    invoke-static {p3, p4}, Lcom/dropbox/android/util/aX;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :cond_3a
    if-eqz p5, :cond_b

    .line 127
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 128
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 129
    iget-object v0, v0, Lcom/dropbox/android/widget/g;->a:Lcom/dropbox/android/widget/RotatableFrameLayout;

    invoke-virtual {v0, v1}, Lcom/dropbox/android/widget/RotatableFrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_b

    :cond_4f
    move v1, v3

    .line 118
    goto :goto_1f

    :cond_51
    move v2, v3

    .line 120
    goto :goto_2a
.end method

.method public static a(Landroid/view/View;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/16 v3, 0xff

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/g;

    .line 97
    if-eqz p1, :cond_23

    .line 98
    iget-object v1, v0, Lcom/dropbox/android/widget/g;->b:Landroid/widget/ImageView;

    const/16 v2, 0xb3

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 99
    iget-object v0, v0, Lcom/dropbox/android/widget/g;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 104
    :goto_22
    return-void

    .line 101
    :cond_23
    iget-object v1, v0, Lcom/dropbox/android/widget/g;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 102
    iget-object v0, v0, Lcom/dropbox/android/widget/g;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xaa

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_22
.end method

.method public static a(Landroid/view/View;ZLandroid/view/animation/Animation$AnimationListener;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v1, 0x0

    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    instance-of v0, v0, Lcom/dropbox/android/widget/ap;

    if-eqz v0, :cond_f

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 149
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_47

    .line 150
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f80

    invoke-direct {v7, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 152
    if-eqz p1, :cond_48

    .line 153
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v2, 0x41a0

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 155
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 156
    invoke-virtual {v1, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 157
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 158
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object v0, v1

    .line 163
    :goto_3c
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 164
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 165
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 167
    :cond_47
    return-void

    :cond_48
    move-object v0, v7

    .line 161
    goto :goto_3c
.end method

.method public static a(Landroid/view/View;)[I
    .registers 6
    .parameter

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/widget/g;

    .line 92
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, v0, Lcom/dropbox/android/widget/g;->f:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v0, v0, Lcom/dropbox/android/widget/g;->f:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v0, v3

    aput v0, v1, v2

    return-object v1
.end method
