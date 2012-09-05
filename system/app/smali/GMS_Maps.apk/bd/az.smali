.class public Lbd/az;
.super Lbd/ai;

# interfaces
.implements LaM/C;


# instance fields
.field d:Ljava/util/List;

.field k:Landroid/view/View;

.field l:Landroid/widget/TextView;

.field m:Landroid/widget/ImageView;

.field volatile n:Z

.field private final o:LaY/aT;

.field private p:Landroid/widget/ListView;

.field private q:Lcom/google/googlenav/ui/android/LoadingFooterView;

.field private r:I


# direct methods
.method public constructor <init>(LaY/aT;)V
    .registers 3

    const v0, 0x7f0d001a

    invoke-direct {p0, p1, v0}, Lbd/ai;-><init>(LaY/m;I)V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lbd/az;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbd/az;->n:Z

    iput-object p1, p0, Lbd/az;->o:LaY/aT;

    invoke-static {}, LaM/e;->a()LaM/e;

    move-result-object v0

    invoke-virtual {v0}, LaM/e;->b()LaM/B;

    move-result-object v0

    invoke-interface {v0, p0}, LaM/B;->a(LaM/C;)V

    return-void
.end method

.method static synthetic a(Lbd/az;)Lcom/google/googlenav/ui/android/LoadingFooterView;
    .registers 2

    iget-object v0, p0, Lbd/az;->q:Lcom/google/googlenav/ui/android/LoadingFooterView;

    return-object v0
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/widget/ListView;)V
    .registers 7

    const/4 v3, -0x1

    const v0, 0x7f03008a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/LoadingFooterView;

    iput-object v0, p0, Lbd/az;->q:Lcom/google/googlenav/ui/android/LoadingFooterView;

    iget-object v0, p0, Lbd/az;->q:Lcom/google/googlenav/ui/android/LoadingFooterView;

    new-instance v1, Lbd/aB;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lbd/aB;-><init>(Lbd/az;Lbd/aA;)V

    new-instance v2, Lbb/a;

    invoke-direct {v2, v3, v3}, Lbb/a;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/android/LoadingFooterView;->a(Lbb/F;Lbb/a;)V

    iget-object v0, p0, Lbd/az;->q:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    return-void
.end method

.method private c(I)Ljava/util/List;
    .registers 10

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lbd/az;->o:LaY/aT;

    invoke-virtual {v0}, LaY/aT;->bJ()LaM/f;

    move-result-object v0

    invoke-interface {v0}, LaM/f;->g()LaM/i;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget v0, p0, Lbd/az;->r:I

    add-int/2addr v0, p1

    iget-object v4, p0, Lbd/az;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    :cond_1f
    :goto_1f
    iget v0, p0, Lbd/az;->r:I

    iget-object v4, p0, Lbd/az;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_7e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_7e

    iget v4, p0, Lbd/az;->r:I

    iget-object v0, p0, Lbd/az;->d:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v5, p0, Lbd/az;->r:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lbd/az;->r:I

    invoke-interface {v2, v0}, LaM/i;->a(Ljava/lang/String;)LaM/m;

    move-result-object v5

    if-eqz v5, :cond_1f

    invoke-virtual {v5}, LaM/m;->h()Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-interface {v2, v0}, LaM/i;->b(Ljava/lang/String;)LaM/n;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbd/az;->a(LaM/n;)Lcom/google/googlenav/ah;

    move-result-object v0

    if-eqz v0, :cond_1f

    const/4 v6, 0x1

    const/16 v7, 0x57a

    invoke-virtual {p0, v0, v4, v6, v7}, Lbd/az;->a(Lcom/google/googlenav/ah;IZI)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v4

    invoke-virtual {v5}, LaM/m;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Las/b;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6d

    invoke-virtual {v5}, LaM/m;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/googlenav/ui/view/android/bO;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;

    :cond_6d
    invoke-virtual {v4}, Lcom/google/googlenav/ui/view/android/bO;->b()Lcom/google/googlenav/ui/view/android/bN;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->ax()Lcom/google/googlenav/an;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_7e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_89

    iget-object v0, p0, Lbd/az;->o:LaY/aT;

    invoke-virtual {v0, v3, p0}, LaY/aT;->a(Ljava/util/List;Lay/q;)V

    :cond_89
    return-object v1
.end method


# virtual methods
.method public O_()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lbd/az;->n:Z

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lbd/az;->h()V

    iput-boolean v1, p0, Lbd/az;->n:Z

    iget-object v0, p0, Lbd/az;->p:Landroid/widget/ListView;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lbd/az;->p:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_13
    iget-object v0, p0, Lbd/az;->q:Lcom/google/googlenav/ui/android/LoadingFooterView;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lbd/az;->q:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/LoadingFooterView;->requestLayout()V

    :cond_1c
    return-void
.end method

.method a(LaM/n;)Lcom/google/googlenav/ah;
    .registers 4

    if-eqz p1, :cond_16

    invoke-virtual {p1}, LaM/n;->b()Lam/b;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, LaM/n;->b()Lam/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ah;->a(Lam/b;)Lcom/google/googlenav/ah;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method protected a(Lcom/google/googlenav/E;)Ljava/util/List;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lbd/az;->k()V

    iput v0, p0, Lbd/az;->r:I

    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lbd/az;->c(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    :goto_12
    invoke-virtual {p0, v0}, Lbd/az;->a(I)V

    return-object v1

    :cond_16
    const/16 v0, 0x8

    goto :goto_12
.end method

.method protected a(I)V
    .registers 3

    iget-object v0, p0, Lbd/az;->k:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lbd/az;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lbd/az;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public a(LaM/s;)V
    .registers 2

    return-void
.end method

.method public a(Lam/b;)V
    .registers 2

    return-void
.end method

.method protected a(Landroid/view/LayoutInflater;)V
    .registers 5

    const v0, 0x7f03005a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbd/az;->k:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lbd/az;->o:LaY/aT;

    invoke-virtual {v0}, LaY/aT;->bJ()LaM/f;

    move-result-object v0

    invoke-interface {v0}, LaM/f;->f()Z

    move-result v0

    if-eqz v0, :cond_5e

    const/16 v0, 0x492

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    :goto_24
    iget-object v0, p0, Lbd/az;->k:Landroid/view/View;

    const v2, 0x7f0f015e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbd/az;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lbd/az;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbd/az;->k:Landroid/view/View;

    const v1, 0x7f0f0061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbd/az;->m:Landroid/widget/ImageView;

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    const v1, 0x7f02033e

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/bw;->a(I)Lah/f;

    move-result-object v0

    check-cast v0, Lai/f;

    iget-object v1, p0, Lbd/az;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_5e
    const/16 v0, 0x48a

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->k()Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x48e

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24
.end method

.method protected a(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x0

    const v0, 0x7f0f0011

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/16 v1, 0x48b

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lbd/aA;

    invoke-direct {v1, p0}, Lbd/aA;-><init>(Lbd/az;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f0f000f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public aa_()V
    .registers 2

    iget-object v0, p0, Lbd/az;->c:Lcom/google/googlenav/ui/view/android/R;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lbd/az;->c:Lcom/google/googlenav/ui/view/android/R;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/R;->a()V

    :cond_9
    return-void
.end method

.method public b(I)Ljava/lang/String;
    .registers 3

    if-ltz p1, :cond_a

    iget-object v0, p0, Lbd/az;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lbd/az;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_b
.end method

.method public c()Landroid/view/View;
    .registers 8

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lbd/az;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030087

    invoke-virtual {v0, v1, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->aw()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/login/g;->k()Z

    move-result v1

    if-nez v1, :cond_2f

    iget-object v1, p0, Lbd/az;->o:LaY/aT;

    invoke-virtual {v1}, LaY/aT;->bM()V

    :cond_2f
    const v1, 0x7f0f005a

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lbd/az;->p:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lbd/az;->a(Landroid/view/LayoutInflater;)V

    iget-object v1, p0, Lbd/az;->p:Landroid/widget/ListView;

    iget-object v3, p0, Lbd/az;->k:Landroid/view/View;

    invoke-virtual {v1, v3, v6, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v1, p0, Lbd/az;->p:Landroid/widget/ListView;

    invoke-direct {p0, v0, v1}, Lbd/az;->a(Landroid/view/LayoutInflater;Landroid/widget/ListView;)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p0, v2}, Lbd/az;->a(Landroid/view/View;)V

    :cond_56
    invoke-virtual {p0}, Lbd/az;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lbd/az;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lbd/az;->p:Landroid/widget/ListView;

    iget-object v1, p0, Lbd/az;->c:Lcom/google/googlenav/ui/view/android/R;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lbd/az;->p:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Lbd/az;->p:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    return-object v2
.end method

.method i()Lcom/google/googlenav/ui/at;
    .registers 2

    iget-object v0, p0, Lbd/az;->o:LaY/aT;

    invoke-virtual {v0}, LaY/aT;->bK()Lcom/google/googlenav/ui/at;

    move-result-object v0

    return-object v0
.end method

.method protected k()V
    .registers 4

    iget-object v0, p0, Lbd/az;->o:LaY/aT;

    invoke-virtual {v0}, LaY/aT;->bJ()LaM/f;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v1, p0, Lbd/az;->o:LaY/aT;

    invoke-virtual {v1}, LaY/aT;->bI()Lcom/google/googlenav/bu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/bu;->b()Z

    invoke-virtual {p0}, Lbd/az;->i()Lcom/google/googlenav/ui/at;

    move-result-object v1

    invoke-interface {v0}, LaM/f;->g()LaM/i;

    move-result-object v0

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Lcom/google/googlenav/ui/at;->j()LaJ/B;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-virtual {v1}, Lcom/google/googlenav/ui/at;->j()LaJ/B;

    move-result-object v1

    invoke-interface {v0, v1}, LaM/i;->a(LaJ/B;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbd/az;->d:Ljava/util/List;

    goto :goto_8

    :cond_2d
    invoke-interface {v0}, LaM/i;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbd/az;->d:Ljava/util/List;

    goto :goto_8
.end method

.method public m()Z
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lbd/az;->c:Lcom/google/googlenav/ui/view/android/R;

    if-eqz v0, :cond_3f

    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lbd/az;->c(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbd/k;

    iget-object v4, p0, Lbd/az;->c:Lcom/google/googlenav/ui/view/android/R;

    invoke-virtual {v4, v0}, Lcom/google/googlenav/ui/view/android/R;->add(Ljava/lang/Object;)V

    goto :goto_f

    :cond_21
    iget v0, p0, Lbd/az;->r:I

    iget-object v3, p0, Lbd/az;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_30

    iget-object v0, p0, Lbd/az;->q:Lcom/google/googlenav/ui/android/LoadingFooterView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/LoadingFooterView;->requestLayout()V

    :cond_30
    iget-object v0, p0, Lbd/az;->c:Lcom/google/googlenav/ui/view/android/R;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/R;->notifyDataSetChanged()V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    :goto_3c
    return v0

    :cond_3d
    move v0, v1

    goto :goto_3c

    :cond_3f
    move v0, v1

    goto :goto_3c
.end method

.method public n()V
    .registers 5

    iget-object v0, p0, Lbd/az;->o:LaY/aT;

    const/16 v1, 0x579

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, LaY/aT;->a(IILjava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbd/az;->n:Z

    return-void
.end method
