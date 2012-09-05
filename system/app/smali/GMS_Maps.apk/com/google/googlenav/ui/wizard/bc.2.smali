.class public Lcom/google/googlenav/ui/wizard/bc;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ba;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ba;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bc;->a:Lcom/google/googlenav/ui/wizard/ba;

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x7f0d001c

    :goto_f
    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;I)V

    return-void

    :cond_13
    invoke-static {}, Lcom/google/googlenav/ui/wizard/bc;->b()I

    move-result v0

    goto :goto_f
.end method


# virtual methods
.method public L_()Z
    .registers 2

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected c()Landroid/view/View;
    .registers 7

    const/16 v4, 0x3a6

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bc;->a:Lcom/google/googlenav/ui/wizard/ba;

    iget v0, v0, Lcom/google/googlenav/ui/wizard/ba;->h:I

    packed-switch v0, :pswitch_data_6e

    move-object v0, v2

    :goto_c
    return-object v0

    :pswitch_d
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bc;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030177

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f0006

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v3

    if-nez v3, :cond_5d

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/bg;->aL:Lcom/google/googlenav/ui/bg;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_36
    const v1, 0x7f0f005a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/bc;->a:Lcom/google/googlenav/ui/wizard/ba;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bc;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/wizard/ba;->a(Landroid/content/Context;)Lcom/google/googlenav/ui/view/android/R;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v3, Lcom/google/googlenav/ui/wizard/bd;

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/bc;->a:Lcom/google/googlenav/ui/wizard/ba;

    invoke-direct {v3, v4, v2}, Lcom/google/googlenav/ui/wizard/bd;-><init>(Lcom/google/googlenav/ui/wizard/ba;Lcom/google/googlenav/ui/wizard/bb;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setEnabled(Z)V

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    goto :goto_c

    :cond_5d
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/bc;->a:Lcom/google/googlenav/ui/wizard/ba;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/ba;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/view/android/bs;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_36

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_d
    .end packed-switch
.end method

.method protected e()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
