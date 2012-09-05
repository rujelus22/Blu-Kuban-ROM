.class public Lcom/google/googlenav/ui/wizard/dz;
.super Lcom/google/googlenav/ui/view/dialog/c;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dv;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/dv;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dz;->a:Lcom/google/googlenav/ui/wizard/dv;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/c;-><init>(Lcom/google/googlenav/ui/p;)V

    return-void
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dz;->a:Lcom/google/googlenav/ui/wizard/dv;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dz;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/dv;->a(Lcom/google/googlenav/ui/wizard/dv;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dz;->a:Lcom/google/googlenav/ui/wizard/dv;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dv;->a(Lcom/google/googlenav/ui/wizard/dv;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d5

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f005a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/dz;->a:Lcom/google/googlenav/ui/wizard/dv;

    new-instance v3, Lcom/google/googlenav/ui/wizard/dx;

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/dz;->a:Lcom/google/googlenav/ui/wizard/dv;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/dz;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v4, v5, v6}, Lcom/google/googlenav/ui/wizard/dx;-><init>(Lcom/google/googlenav/ui/wizard/dv;Landroid/content/Context;Lcom/google/googlenav/ui/wizard/dw;)V

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/wizard/dv;->a(Lcom/google/googlenav/ui/wizard/dv;Lcom/google/googlenav/ui/wizard/dx;)Lcom/google/googlenav/ui/wizard/dx;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/dz;->a:Lcom/google/googlenav/ui/wizard/dv;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/dv;->b(Lcom/google/googlenav/ui/wizard/dv;)V

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/dz;->a:Lcom/google/googlenav/ui/wizard/dv;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/dv;->c(Lcom/google/googlenav/ui/wizard/dv;)Lcom/google/googlenav/ui/wizard/dx;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0f0277

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/dz;->a:Lcom/google/googlenav/ui/wizard/dv;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/dv;->c(Lcom/google/googlenav/ui/wizard/dv;)Lcom/google/googlenav/ui/wizard/dx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/dx;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_67

    const/16 v2, 0x273

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/bg;->y:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_66
    return-object v1

    :cond_67
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_66
.end method

.method public f()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x272

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
