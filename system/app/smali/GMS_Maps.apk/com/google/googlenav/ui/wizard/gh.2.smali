.class public Lcom/google/googlenav/ui/wizard/gh;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fX;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/fX;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gh;->a:Lcom/google/googlenav/ui/wizard/fX;

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
    invoke-static {}, Lcom/google/googlenav/ui/wizard/gh;->b()I

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
    .registers 8

    const/16 v3, 0x394

    const/16 v6, 0x8

    const/16 v5, 0xa

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gh;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030133

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f0006

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v2

    if-nez v2, :cond_16c

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/bg;->aL:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_31
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/16 v1, 0x3a6

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/bg;->w:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gh;->a:Lcom/google/googlenav/ui/wizard/fX;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gg;->h:Ljava/lang/String;

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_63

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gh;->a:Lcom/google/googlenav/ui/wizard/fX;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gg;->h:Ljava/lang/String;

    sget-object v3, Lcom/google/googlenav/ui/bg;->L:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_63
    const v1, 0x7f0f0360

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/google/googlenav/ui/wizard/gi;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/wizard/gi;-><init>(Lcom/google/googlenav/ui/wizard/gh;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gh;->a:Lcom/google/googlenav/ui/wizard/fX;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gg;->i:Ljava/lang/String;

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17c

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gh;->a:Lcom/google/googlenav/ui/wizard/fX;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gg;->k:LaJ/B;

    if-nez v1, :cond_17c

    const/16 v1, 0x383

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/bg;->w:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_9d
    :goto_9d
    const v1, 0x7f0f0163

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/google/googlenav/ui/wizard/gj;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/gj;-><init>(Lcom/google/googlenav/ui/wizard/gh;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0f0361

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/google/googlenav/ui/wizard/gk;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/gk;-><init>(Lcom/google/googlenav/ui/wizard/gh;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0f035b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gh;->a:Lcom/google/googlenav/ui/wizard/fX;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/gg;->j:Lcom/google/googlenav/ui/e;

    if-nez v2, :cond_de

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gh;->a:Lcom/google/googlenav/ui/wizard/fX;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    new-instance v3, Lcom/google/googlenav/ui/e;

    invoke-direct {v3, v4}, Lcom/google/googlenav/ui/e;-><init>(Z)V

    iput-object v3, v2, Lcom/google/googlenav/ui/wizard/gg;->j:Lcom/google/googlenav/ui/e;

    :cond_de
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gh;->a:Lcom/google/googlenav/ui/wizard/fX;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/gg;->j:Lcom/google/googlenav/ui/e;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/e;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v1, 0x7f0f0362

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/google/googlenav/ui/wizard/fX;->h()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/bg;->w:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0f035e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gh;->a:Lcom/google/googlenav/ui/wizard/fX;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/gg;->j:Lcom/google/googlenav/ui/e;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/e;->a()Z

    move-result v2

    if-eqz v2, :cond_1c9

    const/16 v2, 0x38b

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/bg;->aa:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_125
    const v1, 0x7f0f000f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f0f0011

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v2, 0x395

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/google/googlenav/ui/wizard/gl;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/gl;-><init>(Lcom/google/googlenav/ui/wizard/gh;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0f0012

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v2, 0x63

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/google/googlenav/ui/wizard/gm;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/gm;-><init>(Lcom/google/googlenav/ui/wizard/gh;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    :cond_16c
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gh;->a:Lcom/google/googlenav/ui/wizard/fX;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/fX;->f:Lcom/google/googlenav/ui/view/android/bs;

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/view/android/bs;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_31

    :cond_17c
    const/16 v1, 0x382

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/bg;->w:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gh;->a:Lcom/google/googlenav/ui/wizard/fX;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gg;->i:Ljava/lang/String;

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a9

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gh;->a:Lcom/google/googlenav/ui/wizard/fX;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gg;->i:Ljava/lang/String;

    sget-object v3, Lcom/google/googlenav/ui/bg;->L:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1a9
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gh;->a:Lcom/google/googlenav/ui/wizard/fX;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gg;->k:LaJ/B;

    if-eqz v1, :cond_9d

    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gh;->a:Lcom/google/googlenav/ui/wizard/fX;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gg;->k:LaJ/B;

    invoke-virtual {v1}, LaJ/B;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/bg;->L:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_9d

    :cond_1c9
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_125
.end method

.method protected e()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
