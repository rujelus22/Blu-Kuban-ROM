.class final Lcom/google/googlenav/ui/wizard/az;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/aj;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/aj;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/az;->a:Lcom/google/googlenav/ui/wizard/aj;

    const v0, 0x1020014

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/aj;Landroid/content/Context;Lcom/google/googlenav/ui/wizard/ak;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/az;-><init>(Lcom/google/googlenav/ui/wizard/aj;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    if-nez p2, :cond_5c

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/az;->a:Lcom/google/googlenav/ui/wizard/aj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/aj;->g(Lcom/google/googlenav/ui/wizard/aj;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/google/googlenav/ui/wizard/aA;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/google/googlenav/ui/wizard/aA;-><init>(Lcom/google/googlenav/ui/wizard/ak;)V

    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/aA;->a:Landroid/widget/TextView;

    const v0, 0x1020015

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/aA;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_2f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/az;->a:Lcom/google/googlenav/ui/wizard/aj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/aj;->c(Lcom/google/googlenav/ui/wizard/aj;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/h;

    iget-object v2, v1, Lcom/google/googlenav/ui/wizard/aA;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/googlenav/h;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/google/googlenav/h;->l()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-virtual {v0}, Lcom/google/googlenav/h;->d()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_64

    iget-object v0, v1, Lcom/google/googlenav/ui/wizard/aA;->b:Landroid/widget/TextView;

    const/16 v1, 0x74

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5b
    return-object p2

    :cond_5c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/aA;

    move-object v1, v0

    goto :goto_2f

    :cond_64
    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/aA;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/googlenav/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/googlenav/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/googlenav/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5b
.end method
