.class public Lcom/google/googlenav/ui/android/NearbyTransitStationView;
.super Lcom/google/googlenav/ui/android/TransitStationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TransitStationView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TransitStationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected G_()V
    .registers 3

    const v0, 0x7f0f027a

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/NearbyTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x3b8

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public a(Lcom/google/googlenav/Y;Lcom/google/googlenav/ui/p;)V
    .registers 7

    const v0, 0x7f0f0062

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3d

    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ui/android/NearbyTransitStationView;->a(Lcom/google/googlenav/bN;Lcom/google/googlenav/ui/p;)V

    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/android/NearbyTransitStationView;->setClickable(Z)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/NearbyTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/googlenav/Y;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0f0166

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/NearbyTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/DistanceView;

    const v1, 0x7f0f0167

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/android/NearbyTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/view/android/HeadingView;

    invoke-virtual {p1}, Lcom/google/googlenav/Y;->h()LaJ/B;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/bh;->a(Lcom/google/googlenav/ui/view/android/DistanceView;Lcom/google/googlenav/ui/view/android/HeadingView;LaJ/B;)V

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/NearbyTransitStationView;->a(Lcom/google/googlenav/bN;)V

    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/android/NearbyTransitStationView;->setWillNotDraw(Z)V

    :goto_3c
    return-void

    :cond_3d
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/NearbyTransitStationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x3d9

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3c
.end method

.method protected a(Lcom/google/googlenav/bS;)Z
    .registers 3

    invoke-virtual {p1}, Lcom/google/googlenav/bS;->l()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
