.class public Lcom/google/googlenav/ui/wizard/dD;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dB;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/dB;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dD;->a:Lcom/google/googlenav/ui/wizard/dB;

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x7f0d001c

    :goto_f
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/ap;-><init>(I)V

    return-void

    :cond_13
    const v0, 0x7f0d001a

    goto :goto_f
.end method


# virtual methods
.method protected N_()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dD;->requestWindowFeature(I)Z

    :cond_e
    return-void
.end method

.method protected a(Landroid/app/ActionBar;)V
    .registers 4

    const v0, 0x7f0201cf

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setIcon(I)V

    invoke-static {}, Law/g;->a()Law/g;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/dH;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/dH;-><init>(Lcom/google/googlenav/ui/wizard/dD;)V

    invoke-virtual {v0, p1, v1}, Law/g;->a(Landroid/app/ActionBar;Law/f;)V

    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 11

    const/16 v5, 0x276

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dD;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030154

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    const v0, 0x7f0f01b3

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ao()Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-static {v5}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/dD;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_34
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const v0, 0x7f0f039f

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->setup()V

    const v0, 0x7f0f03a0

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/Workspace;

    move-object v2, v0

    check-cast v2, Lcom/google/googlenav/ui/Workspace;

    new-instance v0, Lcom/google/googlenav/ui/wizard/dF;

    invoke-direct {v0, p0, v6, v2}, Lcom/google/googlenav/ui/wizard/dF;-><init>(Lcom/google/googlenav/ui/wizard/dD;Ljava/util/Map;Lcom/google/googlenav/ui/Workspace;)V

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    new-instance v0, Lcom/google/googlenav/ui/wizard/dG;

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/wizard/dG;-><init>(Lcom/google/googlenav/ui/wizard/dD;Landroid/widget/TabHost;)V

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/Workspace;->a(Lcom/google/googlenav/ui/bM;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dD;->a:Lcom/google/googlenav/ui/wizard/dB;

    const-string v3, "stars"

    const/16 v4, 0x488

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f02021c

    iget-object v7, p0, Lcom/google/googlenav/ui/wizard/dD;->a:Lcom/google/googlenav/ui/wizard/dB;

    const-string v9, "stars"

    invoke-virtual {v7, v9}, Lcom/google/googlenav/ui/wizard/dB;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/dB;->a(Landroid/widget/TabHost;Lcom/google/googlenav/ui/Workspace;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dD;->a:Lcom/google/googlenav/ui/wizard/dB;

    const-string v3, "recent"

    const/16 v4, 0x374

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f020219

    iget-object v7, p0, Lcom/google/googlenav/ui/wizard/dD;->a:Lcom/google/googlenav/ui/wizard/dB;

    const-string v9, "recent"

    invoke-virtual {v7, v9}, Lcom/google/googlenav/ui/wizard/dB;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/dB;->a(Landroid/widget/TabHost;Lcom/google/googlenav/ui/Workspace;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dD;->a:Lcom/google/googlenav/ui/wizard/dB;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dB;->a:Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_a4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :cond_a4
    return-object v8

    :cond_a5
    const v0, 0x7f0f017a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0f017b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f0201cf

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Law/g;->a()Law/g;

    move-result-object v0

    new-instance v3, Lcom/google/googlenav/ui/wizard/dE;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/wizard/dE;-><init>(Lcom/google/googlenav/ui/wizard/dD;)V

    invoke-virtual {v0, v2, v3}, Law/g;->a(Landroid/view/View;Law/f;)V

    const v0, 0x7f0f0006

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v5}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_34
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x48b

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020204

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x2

    const/16 v1, 0x436

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201ff

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x3

    const/16 v1, 0x1ce

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201eb

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dD;->a:Lcom/google/googlenav/ui/wizard/dB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/dB;->o()V

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/ap;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_70

    move v0, v1

    :goto_a
    return v0

    :sswitch_b
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/M;->ap()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dD;->a:Lcom/google/googlenav/ui/wizard/dB;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/dB;->o()V

    goto :goto_a

    :cond_1b
    move v0, v1

    goto :goto_a

    :sswitch_1d
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dD;->a:Lcom/google/googlenav/ui/wizard/dB;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/dB;->g:Lbd/az;

    invoke-virtual {v1}, Lbd/az;->n()V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dD;->a:Lcom/google/googlenav/ui/wizard/dB;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/dB;->h:Lbd/an;

    invoke-virtual {v1}, Lbd/an;->i()V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dD;->a:Lcom/google/googlenav/ui/wizard/dB;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/dB;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->G()Lcom/google/googlenav/L;

    move-result-object v1

    const/16 v2, 0x277

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/googlenav/L;->a(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_3d
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dD;->a:Lcom/google/googlenav/ui/wizard/dB;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/dB;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->F()Lcom/google/googlenav/ay;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/ay;->h()V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dD;->a:Lcom/google/googlenav/ui/wizard/dB;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/dB;->a()V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dD;->a:Lcom/google/googlenav/ui/wizard/dB;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/dB;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->z()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/y;

    const/16 v3, 0x1c

    invoke-direct {v2, v3}, Lcom/google/googlenav/ui/wizard/y;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/wizard/x;->a(Lcom/google/googlenav/ui/wizard/y;)V

    goto :goto_a

    :sswitch_60
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dD;->a:Lcom/google/googlenav/ui/wizard/dB;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/dB;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->F()Lcom/google/googlenav/ay;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/M;->Z()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/googlenav/ay;->a(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_data_70
    .sparse-switch
        0x1 -> :sswitch_1d
        0x2 -> :sswitch_3d
        0x3 -> :sswitch_60
        0x102002c -> :sswitch_b
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method
