.class public LB/a;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field private final a:Lad/w;

.field private final b:Lay/a;

.field private final c:LaP/d;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/g;)V
    .registers 3
    .parameter

    .prologue
    .line 51
    invoke-static {}, LB/a;->b()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 52
    invoke-static {}, Lcom/google/android/maps/rideabout/app/q;->z()Lay/a;

    move-result-object v0

    iput-object v0, p0, LB/a;->b:Lay/a;

    .line 53
    iget-object v0, p0, LB/a;->b:Lay/a;

    invoke-virtual {v0}, Lay/a;->o()Lad/w;

    move-result-object v0

    iput-object v0, p0, LB/a;->a:Lad/w;

    .line 54
    iget-object v0, p0, LB/a;->b:Lay/a;

    invoke-virtual {v0}, Lay/a;->p()LaP/d;

    move-result-object v0

    iput-object v0, p0, LB/a;->c:LaP/d;

    .line 55
    return-void
.end method

.method private a(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 101
    invoke-virtual {p0}, LB/a;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    .line 102
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 103
    invoke-virtual {p0}, LB/a;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 105
    invoke-static {}, Lcom/google/googlenav/ui/view/android/cc;->a()Lcom/google/googlenav/ui/view/android/cc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/cc;->k()Lcom/google/android/maps/rideabout/view/j;

    move-result-object v1

    new-instance v2, LB/b;

    invoke-direct {v2, p0}, LB/b;-><init>(LB/a;)V

    invoke-interface {v1, v0, v2}, Lcom/google/android/maps/rideabout/view/j;->setActionBarCustomHeader(Landroid/widget/ViewSwitcher;Lcom/google/android/maps/rideabout/view/l;)V

    .line 115
    return-void
.end method

.method public static b()I
    .registers 1

    .prologue
    .line 66
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x7f0f0136

    :goto_d
    return v0

    :cond_e
    const v0, 0x7f0f0018

    goto :goto_d
.end method


# virtual methods
.method protected N_()V
    .registers 2

    .prologue
    .line 60
    invoke-virtual {p0}, LB/a;->O_()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-nez v0, :cond_14

    .line 61
    :cond_10
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LB/a;->requestWindowFeature(I)Z

    .line 63
    :cond_14
    return-void
.end method

.method protected a(Landroid/app/ActionBar;)V
    .registers 3
    .parameter

    .prologue
    .line 94
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 95
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 96
    const v0, 0x7f0401d1

    invoke-direct {p0, v0}, LB/a;->a(I)V

    .line 98
    :cond_15
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter

    .prologue
    .line 209
    iget-object v0, p0, LB/a;->i:Landroid/view/View;

    check-cast v0, Lcom/google/android/maps/rideabout/view/NavigationView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/rideabout/view/NavigationView;->a(Landroid/content/res/Configuration;)V

    .line 210
    return-void
.end method

.method protected a(ILandroid/view/MenuItem;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x61

    const/4 v1, -0x1

    .line 170
    .line 171
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_34

    move v0, v1

    .line 186
    :goto_b
    iget-object v2, p0, LB/a;->g:Lcom/google/googlenav/ui/g;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v1, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    move-result v1

    .line 188
    if-eqz v1, :cond_17

    .line 189
    packed-switch v0, :pswitch_data_40

    .line 202
    :cond_17
    :goto_17
    :pswitch_17
    return v1

    .line 173
    :pswitch_18
    const/16 v0, 0xb55

    .line 174
    goto :goto_b

    .line 176
    :pswitch_1b
    const/16 v0, 0xb58

    .line 177
    goto :goto_b

    .line 179
    :pswitch_1e
    const/16 v0, 0xb56

    .line 180
    goto :goto_b

    .line 182
    :pswitch_21
    const/16 v0, 0xb57

    goto :goto_b

    .line 191
    :pswitch_24
    const-string v0, "e"

    const-string v2, "m"

    invoke-static {v4, v0, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 196
    :pswitch_2c
    const-string v0, "f"

    const-string v2, "m"

    invoke-static {v4, v0, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 171
    :pswitch_data_34
    .packed-switch 0x7f1004e7
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
    .end packed-switch

    .line 189
    :pswitch_data_40
    .packed-switch 0xb55
        :pswitch_24
        :pswitch_17
        :pswitch_17
        :pswitch_2c
    .end packed-switch
.end method

.method protected c()Landroid/view/View;
    .registers 8

    .prologue
    .line 72
    .line 74
    invoke-static {}, Lcom/google/googlenav/ui/view/android/cc;->a()Lcom/google/googlenav/ui/view/android/cc;

    move-result-object v6

    .line 75
    invoke-virtual {v6}, Lcom/google/googlenav/ui/view/android/cc;->k()Lcom/google/android/maps/rideabout/view/j;

    move-result-object v0

    .line 76
    instance-of v1, v0, Lcom/google/android/maps/rideabout/view/NavigationView;

    if-eqz v1, :cond_1e

    .line 77
    check-cast v0, Landroid/view/View;

    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 89
    :cond_1d
    :goto_1d
    return-object v0

    .line 82
    :cond_1e
    new-instance v0, Lcom/google/android/maps/rideabout/view/NavigationView;

    invoke-virtual {p0}, LB/a;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, LB/a;->a:Lad/w;

    iget-object v3, p0, LB/a;->c:LaP/d;

    iget-object v4, p0, LB/a;->g:Lcom/google/googlenav/ui/g;

    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/ui/bn;->S()Lcom/google/googlenav/ui/p;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/rideabout/view/NavigationView;-><init>(Landroid/content/Context;Lad/w;LaP/d;Lcom/google/googlenav/ui/g;Lcom/google/googlenav/ui/p;)V

    .line 84
    invoke-virtual {v6, v0}, Lcom/google/googlenav/ui/view/android/cc;->a(Lcom/google/android/maps/rideabout/view/j;)V

    .line 85
    invoke-virtual {v6}, Lcom/google/googlenav/ui/view/android/cc;->b()V

    goto :goto_1d
.end method

.method protected d()V
    .registers 2

    .prologue
    .line 119
    invoke-super {p0}, Lcom/google/googlenav/ui/view/android/V;->d()V

    .line 120
    invoke-virtual {p0}, LB/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, LB/a;->a(Landroid/content/res/Configuration;)V

    .line 121
    return-void
.end method

.method protected e()Z
    .registers 2

    .prologue
    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 144
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_38

    .line 145
    sget-object v0, LB/a;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110021

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 147
    const v0, 0x7f1004e7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 148
    const/16 v1, 0x49f

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 150
    const v0, 0x7f1004e8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 151
    const/16 v1, 0x4b5

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 162
    const/4 v0, 0x1

    .line 165
    :goto_37
    return v0

    :cond_38
    const/4 v0, 0x0

    goto :goto_37
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-static {}, Lay/a;->z()Lay/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lay/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 131
    const/4 v0, 0x1

    .line 138
    :goto_b
    return v0

    .line 133
    :cond_c
    const/4 v0, 0x4

    if-ne p1, v0, :cond_18

    .line 134
    const/16 v0, 0x61

    const-string v1, "e"

    const-string v2, "b"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_18
    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/V;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b
.end method
