.class public Lcom/google/googlenav/ui/view/dialog/aM;
.super Lbd/ai;


# instance fields
.field private d:Landroid/widget/ListView;

.field private k:Landroid/widget/ArrayAdapter;

.field private l:Lcom/google/googlenav/ui/view/dialog/aO;


# direct methods
.method public constructor <init>(LaY/bd;)V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/ui/view/dialog/aM;->b()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lbd/ai;-><init>(LaY/m;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/dialog/aM;)LaY/m;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aM;->b:LaY/m;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/dialog/aM;)LaY/m;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aM;->b:LaY/m;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/dialog/aM;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aM;->d:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/view/dialog/aM;)Landroid/widget/ArrayAdapter;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aM;->k:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/view/dialog/aM;)Lcom/google/googlenav/ui/view/dialog/aO;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aM;->l:Lcom/google/googlenav/ui/view/dialog/aO;

    return-object v0
.end method

.method private i()Landroid/view/View;
    .registers 10

    const v8, 0x1090009

    const v7, 0x1090008

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aM;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0f0218

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    const v1, 0x7f0f0219

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/aM;->b:LaY/m;

    invoke-virtual {v2}, LaY/m;->as()Lcom/google/googlenav/E;

    move-result-object v2

    check-cast v2, Lcom/google/googlenav/bJ;

    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aM;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/googlenav/bJ;->m()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v7, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v4, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v4, Lcom/google/googlenav/ui/view/dialog/aN;

    invoke-direct {v4, p0, v2, v1}, Lcom/google/googlenav/ui/view/dialog/aN;-><init>(Lcom/google/googlenav/ui/view/dialog/aM;Lcom/google/googlenav/bJ;Landroid/widget/Spinner;)V

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-virtual {v2}, Lcom/google/googlenav/bJ;->l()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aM;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aM;->k:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aM;->k:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aM;->k:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v0, Lcom/google/googlenav/ui/view/dialog/aO;

    invoke-virtual {v2}, Lcom/google/googlenav/bJ;->l()I

    move-result v4

    invoke-direct {v0, p0, v4}, Lcom/google/googlenav/ui/view/dialog/aO;-><init>(Lcom/google/googlenav/ui/view/dialog/aM;I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aM;->l:Lcom/google/googlenav/ui/view/dialog/aO;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aM;->l:Lcom/google/googlenav/ui/view/dialog/aO;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-virtual {v2}, Lcom/google/googlenav/bJ;->h()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    return-object v3
.end method


# virtual methods
.method protected N_()V
    .registers 3

    const/4 v0, 0x1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ap()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aM;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setUiOptions(I)V

    :goto_12
    return-void

    :cond_13
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ak()Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x0

    :cond_1e
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/aM;->requestWindowFeature(I)Z

    goto :goto_12
.end method

.method protected a(Lcom/google/googlenav/E;)Ljava/util/List;
    .registers 3

    check-cast p1, Lcom/google/googlenav/bJ;

    invoke-virtual {p1}, Lcom/google/googlenav/bJ;->g()Lcom/google/googlenav/bL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/dialog/aM;->a(Lcom/google/googlenav/bL;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/google/googlenav/bL;)Ljava/util/List;
    .registers 8

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/bL;->c()I

    move-result v2

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p1}, Lcom/google/googlenav/bL;->a()I

    move-result v3

    if-ge v0, v3, :cond_22

    invoke-virtual {p1, v0}, Lcom/google/googlenav/bL;->b(I)Lcom/google/googlenav/bN;

    move-result-object v3

    new-instance v4, Lbd/aG;

    invoke-virtual {p1}, Lcom/google/googlenav/bL;->d()Lcom/google/googlenav/bV;

    move-result-object v5

    invoke-direct {v4, v3, v5, v0, v2}, Lbd/aG;-><init>(Lcom/google/googlenav/bN;Lcom/google/googlenav/bV;II)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_22
    return-object v1
.end method

.method protected a(Landroid/app/ActionBar;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aM;->b:LaY/m;

    invoke-virtual {v0}, LaY/m;->as()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bJ;

    invoke-virtual {v0}, Lcom/google/googlenav/bJ;->j()LaY/bc;

    move-result-object v0

    invoke-virtual {v0}, LaY/bc;->b()Lcom/google/googlenav/bS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/bS;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    return-void
.end method

.method protected a(Landroid/content/Context;I)V
    .registers 6

    new-instance v0, Lcom/google/googlenav/ui/view/android/R;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aM;->b:LaY/m;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/aM;->b:LaY/m;

    invoke-virtual {v2}, LaY/m;->as()Lcom/google/googlenav/E;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/view/dialog/aM;->a(Lcom/google/googlenav/E;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/google/googlenav/ui/view/android/R;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/p;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aM;->c:Lcom/google/googlenav/ui/view/android/R;

    return-void
.end method

.method public aa_()V
    .registers 1

    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 6

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aM;->b:LaY/m;

    invoke-virtual {v0}, LaY/m;->as()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bJ;

    invoke-virtual {v0}, Lcom/google/googlenav/bJ;->j()LaY/bc;

    move-result-object v1

    invoke-virtual {v1}, LaY/bc;->b()Lcom/google/googlenav/bS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bS;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/dialog/aM;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aM;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030087

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f0f005a

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aM;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aM;->d:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/dialog/aM;->i()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/dialog/aM;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lcom/google/googlenav/ui/view/dialog/aM;->a(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aM;->d:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/aM;->c:Lcom/google/googlenav/ui/view/android/R;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aM;->d:Landroid/widget/ListView;

    invoke-virtual {v0}, Lcom/google/googlenav/bJ;->c()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aM;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-object v2
.end method
