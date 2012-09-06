.class final Lcom/google/googlenav/ui/wizard/aC;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/am;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/am;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 795
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aC;->a:Lcom/google/googlenav/ui/wizard/am;

    .line 796
    const v0, 0x1020014

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 797
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/am;Landroid/content/Context;Lcom/google/googlenav/ui/wizard/an;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 793
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/aC;-><init>(Lcom/google/googlenav/ui/wizard/am;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 803
    if-nez p2, :cond_5c

    .line 804
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aC;->a:Lcom/google/googlenav/ui/wizard/am;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/am;->g(Lcom/google/googlenav/ui/wizard/am;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 805
    new-instance v1, Lcom/google/googlenav/ui/wizard/aD;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/google/googlenav/ui/wizard/aD;-><init>(Lcom/google/googlenav/ui/wizard/an;)V

    .line 806
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/aD;->a:Landroid/widget/TextView;

    .line 807
    const v0, 0x1020015

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/google/googlenav/ui/wizard/aD;->b:Landroid/widget/TextView;

    .line 809
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 814
    :goto_2f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aC;->a:Lcom/google/googlenav/ui/wizard/am;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/am;->c(Lcom/google/googlenav/ui/wizard/am;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/h;

    .line 815
    iget-object v2, v1, Lcom/google/googlenav/ui/wizard/aD;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/googlenav/h;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 816
    invoke-virtual {v0}, Lcom/google/googlenav/h;->l()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-virtual {v0}, Lcom/google/googlenav/h;->d()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_64

    .line 817
    iget-object v0, v1, Lcom/google/googlenav/ui/wizard/aD;->b:Landroid/widget/TextView;

    const/16 v1, 0x7e

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 823
    :goto_5b
    return-object p2

    .line 811
    :cond_5c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/aD;

    move-object v1, v0

    goto :goto_2f

    .line 819
    :cond_64
    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/aD;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/googlenav/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/googlenav/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/googlenav/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5b
.end method
