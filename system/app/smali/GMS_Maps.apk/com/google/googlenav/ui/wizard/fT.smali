.class final Lcom/google/googlenav/ui/wizard/fT;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fO;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/fO;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fT;->a:Lcom/google/googlenav/ui/wizard/fO;

    const v0, 0x1020014

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/fO;Landroid/content/Context;Lcom/google/googlenav/ui/wizard/fP;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/fT;-><init>(Lcom/google/googlenav/ui/wizard/fO;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    if-nez p2, :cond_39

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fT;->a:Lcom/google/googlenav/ui/wizard/fO;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fO;->a(Lcom/google/googlenav/ui/wizard/fO;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/google/googlenav/ui/wizard/fU;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/google/googlenav/ui/wizard/fU;-><init>(Lcom/google/googlenav/ui/wizard/fP;)V

    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/fU;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_25
    iget-object v1, v0, Lcom/google/googlenav/ui/wizard/fU;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fT;->a:Lcom/google/googlenav/ui/wizard/fO;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fO;->c(Lcom/google/googlenav/ui/wizard/fO;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/fQ;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/fQ;->a:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_39
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/fU;

    goto :goto_25
.end method
