.class public Lcom/google/googlenav/ui/wizard/iJ;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/iG;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/iG;)V
    .registers 3
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/iJ;->a:Lcom/google/googlenav/ui/wizard/iG;

    .line 399
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x7f0f001b

    :goto_f
    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 401
    return-void

    .line 399
    :cond_13
    invoke-static {}, Lcom/google/googlenav/ui/wizard/iJ;->p()I

    move-result v0

    goto :goto_f
.end method

.method private a(Landroid/widget/TextView;)V
    .registers 4
    .parameter

    .prologue
    const/16 v1, 0x523

    .line 441
    const-string v0, ""

    .line 442
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iJ;->a:Lcom/google/googlenav/ui/wizard/iG;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/iG;->c(Lcom/google/googlenav/ui/wizard/iG;)I

    move-result v0

    packed-switch v0, :pswitch_data_38

    .line 456
    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 460
    :goto_11
    if-eqz v0, :cond_1c

    .line 461
    sget-object v1, Lcom/google/googlenav/ui/aV;->aN:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    :cond_1c
    return-void

    .line 444
    :pswitch_1d
    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 447
    :pswitch_22
    const/16 v0, 0x518

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 450
    :pswitch_29
    const/16 v0, 0x525

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 453
    :pswitch_30
    const/16 v0, 0x515

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 442
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_29
        :pswitch_22
        :pswitch_30
    .end packed-switch
.end method


# virtual methods
.method public O_()Z
    .registers 2

    .prologue
    .line 411
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

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

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 421
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/iJ;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401c3

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 425
    const v1, 0x7f10001e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 426
    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/wizard/iJ;->a(Landroid/widget/TextView;)V

    .line 427
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 430
    const v1, 0x7f100026

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 431
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/iJ;->a:Lcom/google/googlenav/ui/wizard/iG;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/iJ;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/wizard/iG;->a(Landroid/content/Context;)Lcom/google/googlenav/ui/view/android/L;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 433
    new-instance v2, Lcom/google/googlenav/ui/wizard/iI;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/iJ;->a:Lcom/google/googlenav/ui/wizard/iG;

    invoke-direct {v2, v3, v5}, Lcom/google/googlenav/ui/wizard/iI;-><init>(Lcom/google/googlenav/ui/wizard/iG;Lcom/google/googlenav/ui/wizard/iH;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 434
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 435
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 437
    return-object v0
.end method

.method protected e()Z
    .registers 2

    .prologue
    .line 405
    const/4 v0, 0x0

    return v0
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iJ;->a:Lcom/google/googlenav/ui/wizard/iG;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/iG;->b(Lcom/google/googlenav/ui/wizard/iG;)Lcom/google/googlenav/ai;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iJ;->a:Lcom/google/googlenav/ui/wizard/iG;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/iG;->b(Lcom/google/googlenav/ui/wizard/iG;)Lcom/google/googlenav/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
