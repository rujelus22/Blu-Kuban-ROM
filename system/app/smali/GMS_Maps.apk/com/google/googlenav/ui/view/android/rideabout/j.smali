.class public Lcom/google/googlenav/ui/view/android/rideabout/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

.field private b:Landroid/widget/LinearLayout;

.field private c:Lcom/google/googlenav/ui/view/android/rideabout/f;

.field private final d:Z

.field private e:I

.field private f:Z


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 6
    .parameter

    .prologue
    .line 122
    new-instance v1, Lcom/google/googlenav/ui/view/android/rideabout/l;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/google/googlenav/ui/view/android/rideabout/l;-><init>(Lcom/google/googlenav/ui/view/android/rideabout/k;)V

    move-object v0, p1

    .line 123
    check-cast v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/view/android/rideabout/l;->a(Lcom/google/googlenav/ui/view/android/rideabout/l;Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;)Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;

    .line 124
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/j;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 125
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/j;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 127
    :cond_1f
    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/rideabout/l;->a(Lcom/google/googlenav/ui/view/android/rideabout/l;)Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/j;->a:Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/j;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;->setContent(Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;Landroid/widget/LinearLayout;)V

    .line 128
    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/rideabout/l;->a(Lcom/google/googlenav/ui/view/android/rideabout/l;)Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/j;->c:Lcom/google/googlenav/ui/view/android/rideabout/f;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;->setExpandCommandView(Lcom/google/googlenav/ui/view/android/rideabout/f;)V

    .line 129
    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/rideabout/l;->a(Lcom/google/googlenav/ui/view/android/rideabout/l;)Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/j;->d:Z

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;->setIntermediateStop(Z)V

    .line 130
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/j;->f:Z

    if-eqz v0, :cond_45

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :goto_44
    return-object v1

    .line 133
    :cond_45
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_44
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 141
    check-cast p2, Lcom/google/googlenav/ui/view/android/rideabout/l;

    .line 142
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/j;->f:Z

    if-eqz v0, :cond_f

    .line 143
    invoke-static {p2}, Lcom/google/googlenav/ui/view/android/rideabout/l;->a(Lcom/google/googlenav/ui/view/android/rideabout/l;)Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;->setVisibility(I)V

    .line 147
    :goto_e
    return-void

    .line 145
    :cond_f
    invoke-static {p2}, Lcom/google/googlenav/ui/view/android/rideabout/l;->a(Lcom/google/googlenav/ui/view/android/rideabout/l;)Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteItemView;->setVisibility(I)V

    goto :goto_e
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/j;->f:Z

    .line 163
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 117
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/j;->e:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 107
    const v0, 0x7f040176

    return v0
.end method
