.class public Lcom/google/googlenav/ui/wizard/hm;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field a:Ljava/util/List;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/hi;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hi;Ljava/util/List;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hm;->b:Lcom/google/googlenav/ui/wizard/hi;

    const v0, 0x7f0d001c

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;I)V

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/hm;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected N_()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/hm;->requestWindowFeature(I)Z

    :cond_a
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 9

    const/4 v7, 0x0

    const/16 v3, 0x43e

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hm;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03013b

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-nez v0, :cond_5b

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hm;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f020171

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const v0, 0x7f0f00d2

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_33
    const v0, 0x7f0f005a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v3, Lcom/google/googlenav/ui/view/android/R;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1, v6}, Lcom/google/googlenav/ui/view/android/R;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hm;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbd/k;

    invoke-virtual {v3, v1}, Lcom/google/googlenav/ui/view/android/R;->add(Ljava/lang/Object;)V

    goto :goto_4b

    :cond_5b
    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/hm;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_33

    :cond_63
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/google/googlenav/ui/wizard/hl;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hm;->b:Lcom/google/googlenav/ui/wizard/hi;

    invoke-direct {v1, v3, v7}, Lcom/google/googlenav/ui/wizard/hl;-><init>(Lcom/google/googlenav/ui/wizard/hi;Lcom/google/googlenav/ui/wizard/hj;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    return-object v2
.end method
