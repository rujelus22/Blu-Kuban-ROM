.class public Lcom/google/googlenav/ui/wizard/gX;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gU;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/gU;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gX;->a:Lcom/google/googlenav/ui/wizard/gU;

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
    invoke-static {}, Lcom/google/googlenav/ui/wizard/gX;->b()I

    move-result v0

    goto :goto_f
.end method

.method private a(Landroid/widget/TextView;)V
    .registers 4

    const/16 v1, 0x433

    const-string v0, ""

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gX;->a:Lcom/google/googlenav/ui/wizard/gU;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gU;->c(Lcom/google/googlenav/ui/wizard/gU;)I

    move-result v0

    packed-switch v0, :pswitch_data_30

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_11
    if-eqz v0, :cond_1c

    sget-object v1, Lcom/google/googlenav/ui/bg;->aL:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1c
    return-void

    :pswitch_1d
    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :pswitch_22
    const/16 v0, 0x42a

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :pswitch_29
    const/16 v0, 0x435

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_29
        :pswitch_22
    .end packed-switch
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

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gX;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030177

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f0006

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/wizard/gX;->a(Landroid/widget/TextView;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f0f005a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gX;->a:Lcom/google/googlenav/ui/wizard/gU;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gX;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/gU;->a(Landroid/content/Context;)Lcom/google/googlenav/ui/view/android/R;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/google/googlenav/ui/wizard/gW;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/gX;->a:Lcom/google/googlenav/ui/wizard/gU;

    invoke-direct {v2, v3, v5}, Lcom/google/googlenav/ui/wizard/gW;-><init>(Lcom/google/googlenav/ui/wizard/gU;Lcom/google/googlenav/ui/wizard/gV;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setEnabled(Z)V

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-object v0
.end method

.method protected e()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gX;->a:Lcom/google/googlenav/ui/wizard/gU;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gU;->b(Lcom/google/googlenav/ui/wizard/gU;)Lcom/google/googlenav/ah;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gX;->a:Lcom/google/googlenav/ui/wizard/gU;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gU;->b(Lcom/google/googlenav/ui/wizard/gU;)Lcom/google/googlenav/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
