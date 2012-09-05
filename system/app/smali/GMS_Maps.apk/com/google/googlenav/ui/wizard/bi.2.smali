.class public Lcom/google/googlenav/ui/wizard/bi;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/bf;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/bf;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bi;->a:Lcom/google/googlenav/ui/wizard/bf;

    invoke-static {}, Lcom/google/googlenav/ui/wizard/bi;->b()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;I)V

    return-void
.end method

.method private h()Lcom/google/googlenav/ui/view/android/R;
    .registers 9

    new-instance v1, Lcom/google/googlenav/ui/view/android/R;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bi;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/ui/view/android/R;-><init>(Landroid/content/Context;I)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    :goto_10
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/bi;->a:Lcom/google/googlenav/ui/wizard/bf;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/bf;->g:Lcom/google/googlenav/bN;

    invoke-virtual {v3}, Lcom/google/googlenav/bN;->i()I

    move-result v3

    if-ge v0, v3, :cond_84

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/bi;->a:Lcom/google/googlenav/ui/wizard/bf;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/bf;->g:Lcom/google/googlenav/bN;

    invoke-virtual {v3, v0}, Lcom/google/googlenav/bN;->b(I)Lcom/google/googlenav/bS;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/bS;->i()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_81

    new-instance v4, Lcom/google/googlenav/ui/wizard/bo;

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/bi;->a:Lcom/google/googlenav/ui/wizard/bf;

    invoke-virtual {v3}, Lcom/google/googlenav/bS;->i()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/googlenav/ui/wizard/bo;-><init>(Lcom/google/googlenav/ui/wizard/bf;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/view/android/R;->add(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/google/googlenav/bS;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Las/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5b

    new-instance v4, Lcom/google/googlenav/ui/wizard/bg;

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/bi;->a:Lcom/google/googlenav/ui/wizard/bf;

    invoke-virtual {v3}, Lcom/google/googlenav/bS;->j()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Las/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/google/googlenav/ui/wizard/bk;

    invoke-direct {v7, p0, v3}, Lcom/google/googlenav/ui/wizard/bk;-><init>(Lcom/google/googlenav/ui/wizard/bi;Lcom/google/googlenav/bS;)V

    invoke-direct {v4, v5, v6, v7}, Lcom/google/googlenav/ui/wizard/bg;-><init>(Lcom/google/googlenav/ui/wizard/bf;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/view/android/R;->add(Ljava/lang/Object;)V

    :cond_5b
    invoke-virtual {v3}, Lcom/google/googlenav/bS;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Las/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7a

    new-instance v4, Lcom/google/googlenav/ui/wizard/bg;

    iget-object v5, p0, Lcom/google/googlenav/ui/wizard/bi;->a:Lcom/google/googlenav/ui/wizard/bf;

    const/16 v6, 0x4cf

    invoke-static {v6}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/google/googlenav/ui/wizard/bl;

    invoke-direct {v7, p0, v3}, Lcom/google/googlenav/ui/wizard/bl;-><init>(Lcom/google/googlenav/ui/wizard/bi;Lcom/google/googlenav/bS;)V

    invoke-direct {v4, v5, v6, v7}, Lcom/google/googlenav/ui/wizard/bg;-><init>(Lcom/google/googlenav/ui/wizard/bf;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/view/android/R;->add(Ljava/lang/Object;)V

    :cond_7a
    invoke-virtual {v3}, Lcom/google/googlenav/bS;->i()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_81
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_84
    return-object v1
.end method

.method private i()Lcom/google/googlenav/ui/view/android/R;
    .registers 12

    const/4 v2, 0x0

    new-instance v3, Lcom/google/googlenav/ui/view/android/R;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bi;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {v3, v0, v1}, Lcom/google/googlenav/ui/view/android/R;-><init>(Landroid/content/Context;I)V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move v1, v2

    :goto_11
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bi;->a:Lcom/google/googlenav/ui/wizard/bf;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bf;->a:Lau/b;

    invoke-virtual {v0}, Lau/b;->ag()I

    move-result v0

    if-ge v1, v0, :cond_e5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bi;->a:Lcom/google/googlenav/ui/wizard/bf;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bf;->a:Lau/b;

    invoke-virtual {v0, v1}, Lau/b;->n(I)Lau/s;

    move-result-object v0

    invoke-virtual {v0}, Lau/s;->D()I

    move-result v5

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bi;->a:Lcom/google/googlenav/ui/wizard/bf;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bf;->a:Lau/b;

    invoke-virtual {v0, v5}, Lau/b;->j(I)Lau/d;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca

    if-eqz v6, :cond_ca

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bi;->a:Lcom/google/googlenav/ui/wizard/bf;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bf;->c:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->aa()Lcom/google/googlenav/ui/x;

    move-result-object v0

    iget-object v7, p0, Lcom/google/googlenav/ui/wizard/bi;->a:Lcom/google/googlenav/ui/wizard/bf;

    iget-object v7, v7, Lcom/google/googlenav/ui/wizard/bf;->c:Lcom/google/googlenav/ui/bw;

    invoke-virtual {v7}, Lcom/google/googlenav/ui/bw;->aa()Lcom/google/googlenav/ui/x;

    move-result-object v7

    iget-object v8, p0, Lcom/google/googlenav/ui/wizard/bi;->a:Lcom/google/googlenav/ui/wizard/bf;

    iget-object v8, v8, Lcom/google/googlenav/ui/wizard/bf;->a:Lau/b;

    invoke-virtual {v8, v1}, Lau/b;->n(I)Lau/s;

    move-result-object v8

    invoke-virtual {v8}, Lau/s;->w()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/googlenav/ui/x;->a(J)C

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/googlenav/ui/x;->e(C)Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    new-instance v7, Lcom/google/googlenav/ui/wizard/bo;

    iget-object v8, p0, Lcom/google/googlenav/ui/wizard/bi;->a:Lcom/google/googlenav/ui/wizard/bf;

    invoke-virtual {v6}, Lau/d;->a()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v0}, Lcom/google/googlenav/ui/wizard/bo;-><init>(Lcom/google/googlenav/ui/wizard/bf;Ljava/lang/String;Lai/f;)V

    invoke-virtual {v3, v7}, Lcom/google/googlenav/ui/view/android/R;->add(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lau/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a9

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bi;->a:Lcom/google/googlenav/ui/wizard/bf;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bf;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->F()Lcom/google/googlenav/ay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ay;->e()Z

    move-result v0

    if-eqz v0, :cond_d6

    new-instance v0, Lcom/google/googlenav/ui/wizard/bg;

    iget-object v7, p0, Lcom/google/googlenav/ui/wizard/bi;->a:Lcom/google/googlenav/ui/wizard/bf;

    const/16 v8, 0x60

    invoke-static {v8}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v6}, Lau/d;->c()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v8, v9}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/google/googlenav/ui/wizard/bm;

    invoke-direct {v9, p0, v6}, Lcom/google/googlenav/ui/wizard/bm;-><init>(Lcom/google/googlenav/ui/wizard/bi;Lau/d;)V

    invoke-direct {v0, v7, v8, v9}, Lcom/google/googlenav/ui/wizard/bg;-><init>(Lcom/google/googlenav/ui/wizard/bf;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v0}, Lcom/google/googlenav/ui/view/android/R;->add(Ljava/lang/Object;)V

    :cond_a9
    :goto_a9
    invoke-virtual {v6}, Lau/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ca

    new-instance v0, Lcom/google/googlenav/ui/wizard/bg;

    iget-object v7, p0, Lcom/google/googlenav/ui/wizard/bi;->a:Lcom/google/googlenav/ui/wizard/bf;

    invoke-virtual {v6}, Lau/d;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Las/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/google/googlenav/ui/wizard/bn;

    invoke-direct {v9, p0, v6}, Lcom/google/googlenav/ui/wizard/bn;-><init>(Lcom/google/googlenav/ui/wizard/bi;Lau/d;)V

    invoke-direct {v0, v7, v8, v9}, Lcom/google/googlenav/ui/wizard/bg;-><init>(Lcom/google/googlenav/ui/wizard/bf;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v0}, Lcom/google/googlenav/ui/view/android/R;->add(Ljava/lang/Object;)V

    :cond_ca
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_11

    :cond_d6
    new-instance v0, Lcom/google/googlenav/ui/wizard/bg;

    iget-object v7, p0, Lcom/google/googlenav/ui/wizard/bi;->a:Lcom/google/googlenav/ui/wizard/bf;

    invoke-virtual {v6}, Lau/d;->c()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Lcom/google/googlenav/ui/wizard/bg;-><init>(Lcom/google/googlenav/ui/wizard/bf;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/google/googlenav/ui/view/android/R;->add(Ljava/lang/Object;)V

    goto :goto_a9

    :cond_e5
    return-object v3
.end method


# virtual methods
.method protected c()Landroid/view/View;
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bi;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f005a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bi;->a:Lcom/google/googlenav/ui/wizard/bf;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/bf;->a:Lau/b;

    if-eqz v2, :cond_33

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bi;->i()Lcom/google/googlenav/ui/view/android/R;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_22
    new-instance v2, Lcom/google/googlenav/ui/wizard/bj;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/bj;-><init>(Lcom/google/googlenav/ui/wizard/bi;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    return-object v1

    :cond_33
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bi;->h()Lcom/google/googlenav/ui/view/android/R;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_22
.end method
