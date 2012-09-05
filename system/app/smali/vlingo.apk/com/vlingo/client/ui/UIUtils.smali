.class public abstract Lcom/vlingo/client/ui/UIUtils;
.super Ljava/lang/Object;
.source "UIUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDipsToPixels(Landroid/content/res/Resources;I)I
    .registers 5
    .parameter "res"
    .parameter "dips"

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 34
    .local v0, scale:F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static convertSPToPixels(Landroid/content/res/Resources;I)F
    .registers 5
    .parameter "res"
    .parameter "sps"

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 39
    .local v0, scale:F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    return v1
.end method

.method public static copyLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 7
    .parameter "origLP"

    .prologue
    .line 76
    const/4 v2, 0x0

    .line 77
    .local v2, copyLP:Landroid/view/ViewGroup$LayoutParams;
    instance-of v5, p0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v5, :cond_28

    .line 78
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2           #copyLP:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .restart local v2       #copyLP:Landroid/view/ViewGroup$LayoutParams;
    move-object v1, p0

    .line 79
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .local v1, _origLP:Landroid/widget/RelativeLayout$LayoutParams;
    move-object v0, v2

    .line 80
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 81
    .local v0, _copyLP:Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    iput-boolean v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 82
    iget-object v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    iput-object v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 83
    invoke-virtual {v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v4

    .line 84
    .local v4, rules:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1d
    array-length v5, v4

    if-ge v3, v5, :cond_43

    .line 85
    aget v5, v4, v3

    invoke-virtual {v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 84
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 88
    .end local v0           #_copyLP:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #_origLP:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #i:I
    .end local v4           #rules:[I
    :cond_28
    instance-of v5, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v5, :cond_5e

    .line 89
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .end local v2           #copyLP:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v2, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .restart local v2       #copyLP:Landroid/view/ViewGroup$LayoutParams;
    move-object v1, p0

    .line 90
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .local v1, _origLP:Landroid/widget/LinearLayout$LayoutParams;
    move-object v0, v2

    .line 91
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 92
    .local v0, _copyLP:Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 93
    iget-object v5, v1, Landroid/widget/LinearLayout$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    iput-object v5, v0, Landroid/widget/LinearLayout$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 94
    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 106
    .end local v0           #_copyLP:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #_origLP:Landroid/widget/LinearLayout$LayoutParams;
    :cond_43
    :goto_43
    instance-of v5, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_5d

    move-object v1, p0

    .line 107
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .local v1, _origLP:Landroid/view/ViewGroup$MarginLayoutParams;
    move-object v0, v2

    .line 108
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 109
    .local v0, _copyLP:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 110
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 111
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 112
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 114
    .end local v0           #_copyLP:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1           #_origLP:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_5d
    return-object v2

    .line 96
    :cond_5e
    instance-of v5, p0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v5, :cond_79

    .line 97
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2           #copyLP:Landroid/view/ViewGroup$LayoutParams;
    move-object v5, p0

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .restart local v2       #copyLP:Landroid/view/ViewGroup$LayoutParams;
    move-object v1, p0

    .line 98
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .local v1, _origLP:Landroid/widget/FrameLayout$LayoutParams;
    move-object v0, v2

    .line 99
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 100
    .local v0, _copyLP:Landroid/widget/FrameLayout$LayoutParams;
    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 101
    iget-object v5, v1, Landroid/widget/FrameLayout$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    iput-object v5, v0, Landroid/widget/FrameLayout$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    goto :goto_43

    .line 104
    .end local v0           #_copyLP:Landroid/widget/FrameLayout$LayoutParams;
    .end local v1           #_origLP:Landroid/widget/FrameLayout$LayoutParams;
    :cond_79
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2           #copyLP:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v2, p0}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .restart local v2       #copyLP:Landroid/view/ViewGroup$LayoutParams;
    goto :goto_43
.end method

.method public static copyLayoutParamsFromView(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .parameter "v"

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0}, Lcom/vlingo/client/ui/UIUtils;->copyLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public static getBlankTextStringWithMinWidth(ILandroid/widget/TextView;)Ljava/lang/String;
    .registers 7
    .parameter "minWidth"
    .parameter "tv"

    .prologue
    const/4 v4, 0x0

    .line 59
    const-string v0, " "

    .line 60
    .local v0, temp:Ljava/lang/String;
    const/4 v1, 0x0

    .line 62
    .local v1, w:I
    :goto_4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p1, v4, v4}, Landroid/widget/TextView;->measure(II)V

    .line 64
    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    .line 65
    if-gt v1, p0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2c

    .line 72
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 69
    :cond_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static getWidthOfPromptInTextView(Landroid/widget/TextView;)I
    .registers 2
    .parameter "tv"

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0, v0}, Landroid/widget/TextView;->measure(II)V

    .line 55
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public static setActivityBackgroundToDrawable(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "activity"
    .parameter "drawable"

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    return-void
.end method

.method public static setActivityBackgroundToSystemWallpaper(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 43
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 44
    .local v0, wallpaper:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_11

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    :cond_11
    return-void
.end method
