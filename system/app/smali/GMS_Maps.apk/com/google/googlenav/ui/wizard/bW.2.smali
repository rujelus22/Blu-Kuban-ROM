.class public Lcom/google/googlenav/ui/wizard/bW;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/bU;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/bU;)V
    .registers 3
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bW;->a:Lcom/google/googlenav/ui/wizard/bU;

    .line 309
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x7f0f001b

    :goto_f
    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 311
    return-void

    .line 309
    :cond_13
    invoke-static {}, Lcom/google/googlenav/ui/wizard/bW;->p()I

    move-result v0

    goto :goto_f
.end method


# virtual methods
.method public O_()Z
    .registers 2

    .prologue
    .line 321
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
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 326
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bW;->a:Lcom/google/googlenav/ui/wizard/bU;

    iget v0, v0, Lcom/google/googlenav/ui/wizard/bU;->c:I

    packed-switch v0, :pswitch_data_74

    move-object v0, v2

    .line 350
    :goto_a
    return-object v0

    .line 328
    :pswitch_b
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bW;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0401c3

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 331
    const/16 v1, 0x448

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 332
    const v1, 0x7f10001e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 333
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/K;->an()Z

    move-result v4

    if-eqz v4, :cond_67

    .line 334
    :cond_37
    sget-object v4, Lcom/google/googlenav/ui/aV;->aN:Lcom/google/googlenav/ui/aV;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    :goto_40
    const v1, 0x7f100026

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 342
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/bW;->a:Lcom/google/googlenav/ui/wizard/bU;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bW;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/wizard/bU;->a(Landroid/content/Context;)Lcom/google/googlenav/ui/view/android/L;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 344
    new-instance v3, Lcom/google/googlenav/ui/wizard/bY;

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/bW;->a:Lcom/google/googlenav/ui/wizard/bU;

    invoke-direct {v3, v4, v2}, Lcom/google/googlenav/ui/wizard/bY;-><init>(Lcom/google/googlenav/ui/wizard/bU;Lcom/google/googlenav/ui/wizard/bV;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 345
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 346
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    goto :goto_a

    .line 336
    :cond_67
    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/bW;->a:Lcom/google/googlenav/ui/wizard/bU;

    iget-object v4, v4, Lcom/google/googlenav/ui/wizard/bU;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v4, v3}, Lcom/google/googlenav/ui/view/android/bb;->setTitle(Ljava/lang/CharSequence;)V

    .line 337
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_40

    .line 326
    :pswitch_data_74
    .packed-switch 0x5
        :pswitch_b
    .end packed-switch
.end method

.method protected e()Z
    .registers 2

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method
