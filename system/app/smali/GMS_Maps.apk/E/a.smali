.class public LE/a;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field private final a:Lau/v;

.field private final b:LaN/b;

.field private final c:Lbc/d;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/p;[Laq/a;)V
    .registers 4

    invoke-static {}, LE/a;->b()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;[Laq/a;I)V

    invoke-static {}, Lcom/google/android/maps/rideabout/app/s;->z()LaN/b;

    move-result-object v0

    iput-object v0, p0, LE/a;->b:LaN/b;

    iget-object v0, p0, LE/a;->b:LaN/b;

    invoke-virtual {v0}, LaN/b;->o()Lau/v;

    move-result-object v0

    iput-object v0, p0, LE/a;->a:Lau/v;

    iget-object v0, p0, LE/a;->b:LaN/b;

    invoke-virtual {v0}, LaN/b;->p()Lbc/d;

    move-result-object v0

    iput-object v0, p0, LE/a;->c:Lbc/d;

    return-void
.end method

.method private a(I)V
    .registers 6

    const/4 v3, -0x1

    invoke-virtual {p0}, LE/a;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    invoke-virtual {p0}, LE/a;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-static {}, Lcom/google/googlenav/ui/view/android/ce;->a()Lcom/google/googlenav/ui/view/android/ce;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/ce;->k()Lcom/google/android/maps/rideabout/view/j;

    move-result-object v1

    new-instance v2, LE/b;

    invoke-direct {v2, p0}, LE/b;-><init>(LE/a;)V

    invoke-interface {v1, v0, v2}, Lcom/google/android/maps/rideabout/view/j;->a(Landroid/widget/ViewSwitcher;Lcom/google/android/maps/rideabout/view/l;)V

    return-void
.end method

.method public static b()I
    .registers 1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x7f0d00fc

    :goto_d
    return v0

    :cond_e
    const v0, 0x7f0d001a

    goto :goto_d
.end method


# virtual methods
.method protected N_()V
    .registers 2

    invoke-virtual {p0}, LE/a;->L_()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_10
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LE/a;->requestWindowFeature(I)Z

    :cond_14
    return-void
.end method

.method protected a(Landroid/app/ActionBar;)V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const v0, 0x7f030181

    invoke-direct {p0, v0}, LE/a;->a(I)V

    :cond_15
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p0, LE/a;->h:Landroid/view/View;

    check-cast v0, Lcom/google/android/maps/rideabout/view/NavigationView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/rideabout/view/NavigationView;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected a(ILandroid/view/MenuItem;)Z
    .registers 9

    const/16 v5, 0x61

    const/4 v1, 0x0

    invoke-virtual {p0}, LE/a;->q()[Laq/a;

    move-result-object v0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {p0, v0, v2}, LE/a;->a([Laq/a;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    move v0, v1

    :goto_12
    return v0

    :cond_13
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, LE/a;->f:Lcom/google/googlenav/ui/p;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {v2, v0, v3, v4}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    packed-switch v0, :pswitch_data_3a

    :goto_26
    :pswitch_26
    const/4 v0, 0x1

    goto :goto_12

    :pswitch_28
    const-string v0, "e"

    const-string v1, "m"

    invoke-static {v5, v0, v1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_26

    :pswitch_30
    const-string v0, "f"

    const-string v1, "m"

    invoke-static {v5, v0, v1}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_26

    :cond_38
    move v0, v1

    goto :goto_12

    :pswitch_data_3a
    .packed-switch 0xb55
        :pswitch_28
        :pswitch_26
        :pswitch_26
        :pswitch_30
    .end packed-switch
.end method

.method protected c()Landroid/view/View;
    .registers 8

    invoke-static {}, Lcom/google/googlenav/ui/view/android/ce;->a()Lcom/google/googlenav/ui/view/android/ce;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/googlenav/ui/view/android/ce;->k()Lcom/google/android/maps/rideabout/view/j;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/maps/rideabout/view/NavigationView;

    if-eqz v1, :cond_1e

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1d
    :goto_1d
    return-object v0

    :cond_1e
    new-instance v0, Lcom/google/android/maps/rideabout/view/NavigationView;

    invoke-virtual {p0}, LE/a;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, LE/a;->a:Lau/v;

    iget-object v3, p0, LE/a;->c:Lbc/d;

    iget-object v4, p0, LE/a;->f:Lcom/google/googlenav/ui/p;

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/ui/bw;->aa()Lcom/google/googlenav/ui/x;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/rideabout/view/NavigationView;-><init>(Landroid/content/Context;Lau/v;Lbc/d;Lcom/google/googlenav/ui/p;Lcom/google/googlenav/ui/x;)V

    invoke-virtual {v6, v0}, Lcom/google/googlenav/ui/view/android/ce;->a(Lcom/google/android/maps/rideabout/view/j;)V

    invoke-virtual {v6}, Lcom/google/googlenav/ui/view/android/ce;->b()V

    goto :goto_1d
.end method

.method protected d()V
    .registers 2

    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/ap;->d()V

    invoke-virtual {p0}, LE/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, LE/a;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected e()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    invoke-static {}, LaN/b;->z()LaN/b;

    move-result-object v0

    invoke-virtual {v0, p1}, LaN/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x4

    if-ne p1, v0, :cond_18

    const/16 v0, 0x61

    const-string v1, "e"

    const-string v2, "b"

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_18
    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/ap;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b
.end method
