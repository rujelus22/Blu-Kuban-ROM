.class public Lcom/google/googlenav/ui/wizard/eu;
.super Lcom/google/googlenav/ui/view/dialog/r;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/eq;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/eq;)V
    .registers 2
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eu;->a:Lcom/google/googlenav/ui/wizard/eq;

    .line 110
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/r;-><init>(Lcom/google/googlenav/ui/g;)V

    .line 111
    return-void
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 115
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eu;->a:Lcom/google/googlenav/ui/wizard/eq;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eu;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/eq;->a(Lcom/google/googlenav/ui/wizard/eq;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    .line 116
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eu;->a:Lcom/google/googlenav/ui/wizard/eq;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eq;->a(Lcom/google/googlenav/ui/wizard/eq;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040107

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 121
    const v0, 0x7f100026

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 122
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eu;->a:Lcom/google/googlenav/ui/wizard/eq;

    new-instance v3, Lcom/google/googlenav/ui/wizard/es;

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/eu;->a:Lcom/google/googlenav/ui/wizard/eq;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eu;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v4, v5, v6}, Lcom/google/googlenav/ui/wizard/es;-><init>(Lcom/google/googlenav/ui/wizard/eq;Landroid/content/Context;Lcom/google/googlenav/ui/wizard/er;)V

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/wizard/eq;->a(Lcom/google/googlenav/ui/wizard/eq;Lcom/google/googlenav/ui/wizard/es;)Lcom/google/googlenav/ui/wizard/es;

    .line 123
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eu;->a:Lcom/google/googlenav/ui/wizard/eq;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/eq;->b(Lcom/google/googlenav/ui/wizard/eq;)V

    .line 124
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eu;->a:Lcom/google/googlenav/ui/wizard/eq;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/eq;->c(Lcom/google/googlenav/ui/wizard/eq;)Lcom/google/googlenav/ui/wizard/es;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    const v0, 0x7f1002ef

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 128
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eu;->a:Lcom/google/googlenav/ui/wizard/eq;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/eq;->c(Lcom/google/googlenav/ui/wizard/eq;)Lcom/google/googlenav/ui/wizard/es;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/es;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 129
    const/16 v2, 0x2e1

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/aV;->v:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    :goto_66
    return-object v1

    .line 133
    :cond_67
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_66
.end method

.method public w_()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    const/16 v0, 0x2e0

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
