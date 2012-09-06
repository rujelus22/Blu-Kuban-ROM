.class public Lcom/google/android/apps/docs/view/TabLayout;
.super Landroid/view/ViewGroup;
.source "TabLayout.java"


# instance fields
.field private a:I

.field private a:Landroid/widget/ImageView;

.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/view/TabLayout;->a:Z

    .line 30
    return-void
.end method

.method private a()V
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/apps/docs/view/TabLayout;->a:Landroid/widget/ImageView;

    if-nez v0, :cond_13

    .line 101
    sget v0, LcS;->quick_actions_tab:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/TabLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/docs/view/TabLayout;->a:Landroid/widget/ImageView;

    .line 102
    iget-object v0, p0, Lcom/google/android/apps/docs/view/TabLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/view/TabLayout;->bringChildToFront(Landroid/view/View;)V

    .line 104
    :cond_13
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, LcQ;->quick_actions_bar_border:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 81
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 82
    iget v2, p0, Lcom/google/android/apps/docs/view/TabLayout;->a:I

    iget-object v3, p0, Lcom/google/android/apps/docs/view/TabLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 83
    iget-boolean v3, p0, Lcom/google/android/apps/docs/view/TabLayout;->a:Z

    if-eqz v3, :cond_31

    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/TabLayout;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/apps/docs/view/TabLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v0, v3, v0

    .line 84
    :cond_31
    iget-object v3, p0, Lcom/google/android/apps/docs/view/TabLayout;->a:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/google/android/apps/docs/view/TabLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/google/android/apps/docs/view/TabLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v3, v2, v0, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 87
    iget-boolean v0, p0, Lcom/google/android/apps/docs/view/TabLayout;->a:Z

    if-eqz v0, :cond_6d

    move v0, v1

    .line 88
    :goto_49
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/TabLayout;->getChildCount()I

    move-result v3

    move v2, v1

    .line 89
    :goto_4e
    if-ge v2, v3, :cond_74

    .line 90
    invoke-virtual {p0, v2}, Lcom/google/android/apps/docs/view/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 91
    iget-object v5, p0, Lcom/google/android/apps/docs/view/TabLayout;->a:Landroid/widget/ImageView;

    if-eq v4, v5, :cond_6a

    .line 92
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v4, v1, v0, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 93
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v1, v4

    .line 89
    :cond_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 87
    :cond_6d
    iget-object v0, p0, Lcom/google/android/apps/docs/view/TabLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    goto :goto_49

    .line 96
    :cond_74
    return-void
.end method

.method protected onMeasure(II)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/TabLayout;->a()V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/TabLayout;->getChildCount()I

    move-result v3

    move v2, v0

    move v1, v0

    .line 61
    :goto_a
    if-ge v2, v3, :cond_27

    .line 62
    invoke-virtual {p0, v2}, Lcom/google/android/apps/docs/view/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 63
    iget-object v5, p0, Lcom/google/android/apps/docs/view/TabLayout;->a:Landroid/widget/ImageView;

    if-eq v4, v5, :cond_24

    .line 64
    invoke-virtual {p0, v4, p1, p2}, Lcom/google/android/apps/docs/view/TabLayout;->measureChild(Landroid/view/View;II)V

    .line 65
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 66
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v1, v4

    .line 61
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 70
    :cond_27
    iget-object v2, p0, Lcom/google/android/apps/docs/view/TabLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, p1, p2}, Lcom/google/android/apps/docs/view/TabLayout;->measureChild(Landroid/view/View;II)V

    .line 71
    iget-object v2, p0, Lcom/google/android/apps/docs/view/TabLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v2

    .line 73
    invoke-static {v1, p1}, Lcom/google/android/apps/docs/view/TabLayout;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Lcom/google/android/apps/docs/view/TabLayout;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/docs/view/TabLayout;->setMeasuredDimension(II)V

    .line 75
    return-void
.end method

.method public setTabOnBottom(Z)V
    .registers 4
    .parameter

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/google/android/apps/docs/view/TabLayout;->a:Z

    if-eq p1, v0, :cond_18

    .line 47
    iput-boolean p1, p0, Lcom/google/android/apps/docs/view/TabLayout;->a:Z

    .line 48
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/TabLayout;->a()V

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/docs/view/TabLayout;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RotateDrawable;

    .line 50
    if-eqz p1, :cond_19

    const/16 v1, 0x2710

    :goto_15
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RotateDrawable;->setLevel(I)Z

    .line 52
    :cond_18
    return-void

    .line 50
    :cond_19
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public setTabX(I)V
    .registers 2
    .parameter

    .prologue
    .line 37
    iput p1, p0, Lcom/google/android/apps/docs/view/TabLayout;->a:I

    .line 38
    invoke-virtual {p0}, Lcom/google/android/apps/docs/view/TabLayout;->requestLayout()V

    .line 39
    return-void
.end method
