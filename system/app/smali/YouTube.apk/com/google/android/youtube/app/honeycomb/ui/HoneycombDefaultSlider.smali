.class public Lcom/google/android/youtube/app/honeycomb/ui/HoneycombDefaultSlider;
.super Lcom/google/android/youtube/app/ui/DefaultSlider;
.source "SourceFile"


# instance fields
.field private c:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/DefaultSlider;-><init>(Landroid/app/Activity;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/HoneycombDefaultSlider;->c:Z

    .line 37
    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/ui/HoneycombDefaultSlider;->a(Z)V

    .line 61
    return-void
.end method

.method protected final a(I)V
    .registers 9
    .parameter

    .prologue
    .line 78
    iget v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/HoneycombDefaultSlider;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/HoneycombDefaultSlider;->b:I

    .line 79
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/ui/HoneycombDefaultSlider;->g()V

    .line 80
    iget-boolean v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/HoneycombDefaultSlider;->c:Z

    if-eqz v0, :cond_46

    .line 81
    invoke-static {}, Lcom/google/android/youtube/app/ui/Slider$Order;->values()[Lcom/google/android/youtube/app/ui/Slider$Order;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v2, :cond_49

    aget-object v3, v1, v0

    invoke-virtual {p0, v3}, Lcom/google/android/youtube/app/honeycomb/ui/HoneycombDefaultSlider;->a(Lcom/google/android/youtube/app/ui/Slider$Order;)Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    move-result-object v4

    sget-object v5, Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;->DISPLACE:Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    if-ne v4, v5, :cond_3a

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/ui/HoneycombDefaultSlider;->e()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/ui/HoneycombDefaultSlider;->f()I

    move-result v5

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/google/android/youtube/app/honeycomb/ui/HoneycombDefaultSlider;->b:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/ui/HoneycombDefaultSlider;->b()Lcom/google/android/youtube/app/ui/Slider$Orientation;

    move-result-object v5

    sget-object v6, Lcom/google/android/youtube/app/ui/Slider$Orientation;->VERTICAL:Lcom/google/android/youtube/app/ui/Slider$Orientation;

    if-ne v5, v6, :cond_3d

    invoke-virtual {p0, v3}, Lcom/google/android/youtube/app/honeycomb/ui/HoneycombDefaultSlider;->b(Lcom/google/android/youtube/app/ui/Slider$Order;)Landroid/view/View;

    move-result-object v3

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    :cond_3a
    :goto_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_3d
    invoke-virtual {p0, v3}, Lcom/google/android/youtube/app/honeycomb/ui/HoneycombDefaultSlider;->b(Lcom/google/android/youtube/app/ui/Slider$Order;)Landroid/view/View;

    move-result-object v3

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_3a

    .line 83
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/ui/HoneycombDefaultSlider;->requestLayout()V

    .line 85
    :cond_49
    return-void
.end method

.method protected final a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 65
    sget-object v0, Lcom/google/android/youtube/app/ui/Slider$Order;->FIRST:Lcom/google/android/youtube/app/ui/Slider$Order;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/ui/HoneycombDefaultSlider;->a(Lcom/google/android/youtube/app/ui/Slider$Order;)Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;->RESIZE:Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    if-eq v0, v1, :cond_18

    sget-object v0, Lcom/google/android/youtube/app/ui/Slider$Order;->SECOND:Lcom/google/android/youtube/app/ui/Slider$Order;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/ui/HoneycombDefaultSlider;->a(Lcom/google/android/youtube/app/ui/Slider$Order;)Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;->RESIZE:Lcom/google/android/youtube/app/ui/Slider$CollapseStrategy;

    if-eq v0, v1, :cond_18

    const/4 v0, 0x1

    :goto_15
    if-nez v0, :cond_1a

    .line 74
    :goto_17
    return-void

    .line 65
    :cond_18
    const/4 v0, 0x0

    goto :goto_15

    .line 68
    :cond_1a
    iput-boolean p1, p0, Lcom/google/android/youtube/app/honeycomb/ui/HoneycombDefaultSlider;->c:Z

    goto :goto_17
.end method

.method protected onLayout(ZIIII)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/ui/HoneycombDefaultSlider;->b()Lcom/google/android/youtube/app/ui/Slider$Orientation;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/ui/Slider$Orientation;->VERTICAL:Lcom/google/android/youtube/app/ui/Slider$Orientation;

    if-ne v0, v1, :cond_23

    .line 48
    sget-object v0, Lcom/google/android/youtube/app/ui/Slider$Order;->FIRST:Lcom/google/android/youtube/app/ui/Slider$Order;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/ui/HoneycombDefaultSlider;->b(Lcom/google/android/youtube/app/ui/Slider$Order;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 49
    sget-object v0, Lcom/google/android/youtube/app/ui/Slider$Order;->SECOND:Lcom/google/android/youtube/app/ui/Slider$Order;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/ui/HoneycombDefaultSlider;->b(Lcom/google/android/youtube/app/ui/Slider$Order;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 54
    :goto_1b
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/ui/HoneycombDefaultSlider;->a(Z)V

    .line 55
    invoke-super/range {p0 .. p5}, Lcom/google/android/youtube/app/ui/DefaultSlider;->onLayout(ZIIII)V

    .line 56
    return-void

    .line 51
    :cond_23
    sget-object v0, Lcom/google/android/youtube/app/ui/Slider$Order;->FIRST:Lcom/google/android/youtube/app/ui/Slider$Order;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/ui/HoneycombDefaultSlider;->b(Lcom/google/android/youtube/app/ui/Slider$Order;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 52
    sget-object v0, Lcom/google/android/youtube/app/ui/Slider$Order;->SECOND:Lcom/google/android/youtube/app/ui/Slider$Order;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/honeycomb/ui/HoneycombDefaultSlider;->b(Lcom/google/android/youtube/app/ui/Slider$Order;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1b
.end method

.method public setLayer(Lcom/google/android/youtube/app/ui/Slider$Order;Lcom/google/android/youtube/app/ui/aw;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/ui/DefaultSlider;->setLayer(Lcom/google/android/youtube/app/ui/Slider$Order;Lcom/google/android/youtube/app/ui/aw;)V

    .line 42
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/ui/HoneycombDefaultSlider;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 43
    return-void
.end method
