.class public Lcom/google/googlenav/ui/view/android/aP;
.super Lcom/google/googlenav/ui/view/android/ap;


# instance fields
.field private a:Lay/r;

.field private b:Landroid/widget/ListView;

.field private c:Lcom/google/googlenav/aq;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/p;)V
    .registers 3

    const v0, 0x7f0d001a

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/aP;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method private a(Lcom/google/googlenav/ar;)Lcom/google/googlenav/ui/bG;
    .registers 4

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/google/googlenav/ar;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_c
    invoke-static {}, Lcom/google/googlenav/ui/view/android/aW;->d()Lcom/google/googlenav/ui/view/android/aW;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    new-instance v0, Lcom/google/googlenav/ui/view/android/aW;

    invoke-virtual {p1}, Lcom/google/googlenav/ar;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/view/android/aW;-><init>(Ljava/lang/String;)V

    goto :goto_10
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/aP;Lcom/google/googlenav/ar;)Lcom/google/googlenav/ui/bG;
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/aP;->a(Lcom/google/googlenav/ar;)Lcom/google/googlenav/ui/bG;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V
    .registers 4

    invoke-virtual {p2}, Lcom/google/googlenav/ui/bh;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_f
    return-void

    :cond_10
    invoke-static {p1, p2}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_f
.end method

.method private a(Lcom/google/googlenav/aq;)V
    .registers 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/google/googlenav/aq;->h()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p1}, Lcom/google/googlenav/aq;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ar;

    invoke-virtual {v0}, Lcom/google/googlenav/ar;->a()Lcom/google/googlenav/ap;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/aP;->a(Lcom/google/googlenav/ar;)Lcom/google/googlenav/ui/bG;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_2e
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->a:Lay/r;

    new-instance v2, Lcom/google/googlenav/ui/view/android/aU;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/android/aU;-><init>(Lcom/google/googlenav/ui/view/android/aP;)V

    invoke-virtual {v0, v1, v2}, Lay/r;->a(Ljava/util/List;Lay/q;)V

    goto :goto_b
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/aP;Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/aP;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/aP;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aP;->k()V

    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/android/aP;)Lay/r;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->a:Lay/r;

    return-object v0
.end method

.method private i()V
    .registers 8

    const v6, 0x7f0f03a3

    const v5, 0x7f0201bd

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->c:Lcom/google/googlenav/aq;

    invoke-virtual {v0}, Lcom/google/googlenav/aq;->g()Lcom/google/googlenav/ah;

    move-result-object v2

    const v0, 0x7f0f0165

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/aP;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V

    const v0, 0x7f0f0006

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aP;->c:Lcom/google/googlenav/aq;

    invoke-virtual {v1}, Lcom/google/googlenav/aq;->e()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/bg;->aN:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/aP;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V

    const v0, 0x7f0f0168

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aP;->c:Lcom/google/googlenav/aq;

    invoke-virtual {v1}, Lcom/google/googlenav/aq;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/aP;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V

    const v0, 0x7f0f0169

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aP;->c:Lcom/google/googlenav/aq;

    invoke-virtual {v1}, Lcom/google/googlenav/aq;->f()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/bg;->bP:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/aP;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V

    const v0, 0x7f0f016a

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/google/googlenav/ah;->D()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/aP;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V

    const v0, 0x7f0f016b

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/google/googlenav/ah;->E()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/aP;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V

    const v0, 0x7f0f016e

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aP;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v3, 0x420

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/google/googlenav/ui/view/android/aQ;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/view/android/aQ;-><init>(Lcom/google/googlenav/ui/view/android/aP;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v3

    if-nez v3, :cond_be

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_be
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0f0170

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aP;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v3, 0xe0

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/google/googlenav/ui/view/android/aR;

    invoke-direct {v3, p0}, Lcom/google/googlenav/ui/view/android/aR;-><init>(Lcom/google/googlenav/ui/view/android/aP;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v3

    if-nez v3, :cond_eb

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_eb
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0f0172

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0f0076

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0f0166

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/DistanceView;

    const v1, 0x7f0f0167

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/aP;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/view/android/HeadingView;

    invoke-virtual {v2}, Lcom/google/googlenav/ah;->C()LaJ/g;

    move-result-object v2

    invoke-interface {v2}, LaJ/g;->b()LaJ/B;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/bh;->a(Lcom/google/googlenav/ui/view/android/DistanceView;Lcom/google/googlenav/ui/view/android/HeadingView;LaJ/B;)V

    const v0, 0x7f0f016c

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/aP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->b:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->c:Lcom/google/googlenav/aq;

    invoke-virtual {v0}, Lcom/google/googlenav/aq;->h()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_14d

    new-instance v0, Lcom/google/googlenav/ui/view/android/aV;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aP;->b:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/aP;->c:Lcom/google/googlenav/aq;

    invoke-virtual {v2}, Lcom/google/googlenav/aq;->h()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/googlenav/ui/view/android/aV;-><init>(Lcom/google/googlenav/ui/view/android/aP;Landroid/content/Context;Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aP;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_14d
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/google/googlenav/ui/view/android/aS;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/aS;-><init>(Lcom/google/googlenav/ui/view/android/aP;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->c:Lcom/google/googlenav/aq;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/aP;->a(Lcom/google/googlenav/aq;)V

    return-void
.end method

.method private k()V
    .registers 3

    sget-object v0, Lcom/google/googlenav/ui/view/android/aP;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    new-instance v1, Lcom/google/googlenav/ui/view/android/aT;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/view/android/aT;-><init>(Lcom/google/googlenav/ui/view/android/aP;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/BaseMapsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/aq;Lay/r;)V
    .registers 3

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/aP;->a:Lay/r;

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aP;->c:Lcom/google/googlenav/aq;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aP;->show()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/aP;->i()V

    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/aP;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03005d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/google/googlenav/aq;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->c:Lcom/google/googlenav/aq;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/ap;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
