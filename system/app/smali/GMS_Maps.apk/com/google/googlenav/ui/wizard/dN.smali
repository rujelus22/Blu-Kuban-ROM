.class public Lcom/google/googlenav/ui/wizard/dN;
.super Lcom/google/googlenav/ui/view/dialog/c;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dI;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/dI;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dN;->a:Lcom/google/googlenav/ui/wizard/dI;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/c;-><init>(Lcom/google/googlenav/ui/p;)V

    return-void
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 7

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dN;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0f0163

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x29c

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/bg;->E:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f0285

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const/16 v1, 0x29e

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/bg;->Y:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dN;->a:Lcom/google/googlenav/ui/wizard/dI;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/dI;->a(Lcom/google/googlenav/ui/wizard/dI;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0f0286

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    const/16 v3, 0x29d

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/bg;->Y:Lcom/google/googlenav/ui/bg;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/dN;->a:Lcom/google/googlenav/ui/wizard/dI;

    invoke-static {v3}, Lcom/google/googlenav/ui/wizard/dI;->b(Lcom/google/googlenav/ui/wizard/dI;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/dN;->a:Lcom/google/googlenav/ui/wizard/dI;

    invoke-static {v3}, Lcom/google/googlenav/ui/wizard/dI;->c(Lcom/google/googlenav/ui/wizard/dI;)I

    move-result v3

    if-ne v3, v5, :cond_78

    :goto_6f
    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dN;->a:Lcom/google/googlenav/ui/wizard/dI;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/wizard/dI;->a(Landroid/view/View;)V

    return-object v2

    :cond_78
    move-object v0, v1

    goto :goto_6f
.end method

.method public f()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x29b

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
