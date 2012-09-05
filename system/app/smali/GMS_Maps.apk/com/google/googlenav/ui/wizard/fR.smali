.class public Lcom/google/googlenav/ui/wizard/fR;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fO;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/fO;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fR;->a:Lcom/google/googlenav/ui/wizard/fO;

    const v0, 0x7f0d001c

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;I)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .registers 8

    const v0, 0x7f0f005a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fR;->a:Lcom/google/googlenav/ui/wizard/fO;

    new-instance v2, Lcom/google/googlenav/ui/wizard/fT;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/fR;->a:Lcom/google/googlenav/ui/wizard/fO;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fR;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/google/googlenav/ui/wizard/fT;-><init>(Lcom/google/googlenav/ui/wizard/fO;Landroid/content/Context;Lcom/google/googlenav/ui/wizard/fP;)V

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/wizard/fO;->a(Lcom/google/googlenav/ui/wizard/fO;Landroid/widget/ArrayAdapter;)Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fR;->a:Lcom/google/googlenav/ui/wizard/fO;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/fO;->b(Lcom/google/googlenav/ui/wizard/fO;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fR;->a:Lcom/google/googlenav/ui/wizard/fO;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/fO;->c(Lcom/google/googlenav/ui/wizard/fO;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/google/googlenav/ui/wizard/fS;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/fS;-><init>(Lcom/google/googlenav/ui/wizard/fR;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-void
.end method


# virtual methods
.method public N_()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/fR;->requestWindowFeature(I)Z

    :cond_a
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 4

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fR;->a:Lcom/google/googlenav/ui/wizard/fO;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fR;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/wizard/fO;->a(Lcom/google/googlenav/ui/wizard/fO;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fR;->a:Lcom/google/googlenav/ui/wizard/fO;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fO;->a(Lcom/google/googlenav/ui/wizard/fO;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03012d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_51

    const v0, 0x7f0f00d2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x37b

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_51

    const v0, 0x7f0f0014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_51
    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/wizard/fR;->a(Landroid/view/View;)V

    return-object v1
.end method

.method public g()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fR;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x37b

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    :goto_13
    return-void

    :cond_14
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/fR;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f020171

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_13
.end method
