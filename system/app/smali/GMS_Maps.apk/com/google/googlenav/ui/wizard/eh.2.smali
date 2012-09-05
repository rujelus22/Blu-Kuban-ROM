.class public Lcom/google/googlenav/ui/wizard/eh;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dY;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/dY;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eh;->a:Lcom/google/googlenav/ui/wizard/dY;

    invoke-static {}, Lcom/google/googlenav/ui/wizard/eh;->b()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;I)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/n;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eh;->a:Lcom/google/googlenav/ui/wizard/dY;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/dY;->c(Lcom/google/googlenav/ui/wizard/dY;)Lcom/google/googlenav/ui/wizard/ed;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/wizard/ed;->add(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1a
    return-void
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 9

    const/4 v7, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/eh;->a:Lcom/google/googlenav/ui/wizard/dY;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eh;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/wizard/dY;->a(Lcom/google/googlenav/ui/wizard/dY;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eh;->a:Lcom/google/googlenav/ui/wizard/dY;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dY;->a(Lcom/google/googlenav/ui/wizard/dY;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300da

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f0006

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v2

    if-nez v2, :cond_72

    const/16 v2, 0x2a1

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/bg;->aL:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_45
    const v1, 0x7f0f0277

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eh;->a:Lcom/google/googlenav/ui/wizard/dY;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/dY;->b(Lcom/google/googlenav/ui/wizard/dY;)LaR/i;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, LaR/i;->c(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_76

    const/16 v2, 0x2a4

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/bg;->E:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_71
    return-object v0

    :cond_72
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_45

    :cond_76
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f0f005a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/eh;->a:Lcom/google/googlenav/ui/wizard/dY;

    new-instance v4, Lcom/google/googlenav/ui/wizard/ed;

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/eh;->a:Lcom/google/googlenav/ui/wizard/dY;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eh;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v5, v6, v7}, Lcom/google/googlenav/ui/wizard/ed;-><init>(Lcom/google/googlenav/ui/wizard/dY;Landroid/content/Context;Lcom/google/googlenav/ui/wizard/dZ;)V

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/wizard/dY;->a(Lcom/google/googlenav/ui/wizard/dY;Lcom/google/googlenav/ui/wizard/ed;)Lcom/google/googlenav/ui/wizard/ed;

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/wizard/eh;->a(Ljava/util/List;)V

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/eh;->a:Lcom/google/googlenav/ui/wizard/dY;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/dY;->c(Lcom/google/googlenav/ui/wizard/dY;)Lcom/google/googlenav/ui/wizard/ed;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_71
.end method

.method protected e()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public g()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/eh;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2a1

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    :cond_13
    return-void
.end method
