.class public Lcom/google/googlenav/ui/wizard/ga;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fX;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/fX;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ga;->a:Lcom/google/googlenav/ui/wizard/fX;

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
    invoke-static {}, Lcom/google/googlenav/ui/wizard/ga;->b()I

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
    .registers 15

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/ga;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_190

    const v0, 0x7f030132

    :goto_11
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f0006

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0f0163

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const v3, 0x7f0f0226

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v3, 0x7f0f0359

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0f022a

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v4, 0x7f0f035a

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v5, 0x7f0f035b

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    const v6, 0x7f0f035c

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0f035d

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const v7, 0x7f0f035e

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v11, 0x7f0f035f

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v12

    if-nez v12, :cond_195

    const/16 v12, 0x384

    invoke-static {v12}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/google/googlenav/ui/bg;->aL:Lcom/google/googlenav/ui/bg;

    invoke-static {v12, v13}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_88
    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setLines(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ga;->a:Lcom/google/googlenav/ui/wizard/fX;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gg;->i:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ga;->a:Lcom/google/googlenav/ui/wizard/fX;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget v1, v1, Lcom/google/googlenav/ui/wizard/gg;->g:I

    const/4 v12, 0x4

    if-ne v1, v12, :cond_1b1

    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/16 v1, 0x390

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v9, Lcom/google/googlenav/ui/bg;->w:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v9}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v8, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ga;->a:Lcom/google/googlenav/ui/wizard/fX;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gg;->k:LaJ/B;

    if-eqz v1, :cond_1a9

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ga;->a:Lcom/google/googlenav/ui/wizard/fX;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gg;->k:LaJ/B;

    invoke-virtual {v1}, LaJ/B;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_c9
    sget-object v9, Lcom/google/googlenav/ui/bg;->bq:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v9}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/googlenav/ui/wizard/gb;

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/wizard/gb;-><init>(Lcom/google/googlenav/ui/wizard/ga;Landroid/widget/EditText;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ga;->a:Lcom/google/googlenav/ui/wizard/fX;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gg;->l:Lcom/google/googlenav/ui/e;

    if-nez v1, :cond_f1

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ga;->a:Lcom/google/googlenav/ui/wizard/fX;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    new-instance v3, Lcom/google/googlenav/ui/e;

    const/4 v9, 0x0

    invoke-direct {v3, v9}, Lcom/google/googlenav/ui/e;-><init>(Z)V

    iput-object v3, v1, Lcom/google/googlenav/ui/wizard/gg;->l:Lcom/google/googlenav/ui/e;

    :cond_f1
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ga;->a:Lcom/google/googlenav/ui/wizard/fX;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gg;->l:Lcom/google/googlenav/ui/e;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/e;->a()Z

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v1, Lcom/google/googlenav/ui/wizard/gc;

    invoke-direct {v1, p0, v5}, Lcom/google/googlenav/ui/wizard/gc;-><init>(Lcom/google/googlenav/ui/wizard/ga;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x389

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/bg;->w:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->clear()V

    const/16 v1, 0x392

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/bg;->aa:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v8, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    const/16 v1, 0x393

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/bg;->ab:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/googlenav/ui/wizard/gd;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/gd;-><init>(Lcom/google/googlenav/ui/wizard/ga;)V

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_146
    const v1, 0x7f0f000f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f0f0011

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v3, 0xcd

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/google/googlenav/ui/wizard/ge;

    invoke-direct {v3, p0, v2}, Lcom/google/googlenav/ui/wizard/ge;-><init>(Lcom/google/googlenav/ui/wizard/ga;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0f0012

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    const/16 v2, 0x63

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/google/googlenav/ui/wizard/gf;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/gf;-><init>(Lcom/google/googlenav/ui/wizard/ga;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    :cond_190
    const v0, 0x7f030131

    goto/16 :goto_11

    :cond_195
    iget-object v12, p0, Lcom/google/googlenav/ui/wizard/ga;->a:Lcom/google/googlenav/ui/wizard/fX;

    iget-object v12, v12, Lcom/google/googlenav/ui/wizard/fX;->f:Lcom/google/googlenav/ui/view/android/bs;

    const/16 v13, 0x384

    invoke-static {v13}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/googlenav/ui/view/android/bs;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v12, 0x8

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_88

    :cond_1a9
    const/16 v1, 0x38f

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_c9

    :cond_1b1
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_146
.end method

.method protected e()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
