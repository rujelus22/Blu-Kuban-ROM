.class public Lcom/google/googlenav/ui/wizard/fm;
.super Lcom/google/googlenav/ui/view/dialog/r;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fh;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/fh;)V
    .registers 2
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fm;->a:Lcom/google/googlenav/ui/wizard/fh;

    .line 99
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/r;-><init>(Lcom/google/googlenav/ui/g;)V

    .line 100
    return-void
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 104
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fm;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04011c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 106
    const v0, 0x7f100191

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 107
    const/16 v1, 0x32b

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/aV;->C:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const v0, 0x7f10030d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 111
    const/16 v1, 0x32d

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/aV;->W:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fm;->a:Lcom/google/googlenav/ui/wizard/fh;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/fh;->a(Lcom/google/googlenav/ui/wizard/fh;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v1, 0x7f10030e

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 117
    const/16 v3, 0x32c

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/aV;->W:Lcom/google/googlenav/ui/aV;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/fm;->a:Lcom/google/googlenav/ui/wizard/fh;

    invoke-static {v3}, Lcom/google/googlenav/ui/wizard/fh;->b(Lcom/google/googlenav/ui/wizard/fh;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/fm;->a:Lcom/google/googlenav/ui/wizard/fh;

    invoke-static {v3}, Lcom/google/googlenav/ui/wizard/fh;->c(Lcom/google/googlenav/ui/wizard/fh;)I

    move-result v3

    if-ne v3, v5, :cond_78

    .line 123
    :goto_6f
    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 125
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fm;->a:Lcom/google/googlenav/ui/wizard/fh;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/wizard/fh;->a(Landroid/view/View;)V

    .line 126
    return-object v2

    :cond_78
    move-object v0, v1

    .line 121
    goto :goto_6f
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    const/16 v0, 0x32a

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
