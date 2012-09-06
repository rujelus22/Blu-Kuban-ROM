.class public Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

.field private b:Landroid/widget/LinearLayout;

.field private c:Lcom/google/googlenav/ui/view/android/rideabout/f;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method private a(I)I
    .registers 5
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->a()I

    move-result v0

    sub-int v0, p1, v0

    .line 63
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->c()I

    move-result v1

    .line 64
    rem-int/2addr v0, v1

    .line 65
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->d()I

    move-result v2

    sub-int v0, v2, v0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->e()I

    move-result v2

    add-int/2addr v0, v2

    .line 67
    if-gez v0, :cond_21

    .line 68
    add-int/2addr v0, v1

    .line 70
    :cond_21
    add-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    .line 40
    invoke-virtual {p0, v2, v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;->setMeasuredDimension(II)V

    .line 54
    :goto_c
    return-void

    .line 45
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->b()V

    .line 46
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 47
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;->getMeasuredHeight()I

    move-result v0

    .line 48
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->f()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 49
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->setMinimumHeight(I)V

    .line 53
    :goto_2a
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_c

    .line 51
    :cond_2e
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->setMinimumHeight(I)V

    goto :goto_2a
.end method

.method public setContent(Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;Landroid/widget/LinearLayout;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 80
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    .line 81
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;->b:Landroid/widget/LinearLayout;

    .line 82
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    return-void
.end method

.method public setExpandCommandView(Lcom/google/googlenav/ui/view/android/rideabout/f;)V
    .registers 2
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;->c:Lcom/google/googlenav/ui/view/android/rideabout/f;

    .line 90
    return-void
.end method

.method public setIntermediateStop(Z)V
    .registers 2
    .parameter

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;->d:Z

    .line 98
    return-void
.end method
