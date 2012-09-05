.class public Lbd/an;
.super Lcom/google/googlenav/ui/view/android/ap;

# interfaces
.implements LaM/C;


# instance fields
.field protected a:Lcom/google/googlenav/ui/view/android/R;

.field private final b:LaM/f;

.field private final c:Lcom/google/googlenav/ui/wizard/hM;

.field private final d:Lcom/google/googlenav/L;

.field private final k:Lcom/google/googlenav/ui/wizard/cR;

.field private final l:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(LaM/f;Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/L;Lcom/google/googlenav/ui/wizard/cR;Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 7

    const v0, 0x7f0d001a

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/ap;-><init>(I)V

    iput-object p1, p0, Lbd/an;->b:LaM/f;

    iput-object p2, p0, Lbd/an;->c:Lcom/google/googlenav/ui/wizard/hM;

    iput-object p3, p0, Lbd/an;->d:Lcom/google/googlenav/L;

    iput-object p4, p0, Lbd/an;->k:Lcom/google/googlenav/ui/wizard/cR;

    iput-object p5, p0, Lbd/an;->l:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-static {}, LaM/e;->a()LaM/e;

    move-result-object v0

    invoke-virtual {v0}, LaM/e;->b()LaM/B;

    move-result-object v0

    invoke-interface {v0, p0}, LaM/B;->a(LaM/C;)V

    return-void
.end method

.method static synthetic a(Lbd/an;)Lcom/google/googlenav/L;
    .registers 2

    iget-object v0, p0, Lbd/an;->d:Lcom/google/googlenav/L;

    return-object v0
.end method

.method static synthetic a(Lbd/an;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lbd/an;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lbd/an;)Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    iget-object v0, p0, Lbd/an;->l:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lbd/an;->k:Lcom/google/googlenav/ui/wizard/cR;

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lbd/an;->c(Ljava/lang/String;)V

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0, p1}, Lbd/an;->a(Ljava/lang/String;)V

    goto :goto_7
.end method

.method private c(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lbd/an;->b:LaM/f;

    invoke-interface {v0}, LaM/f;->g()LaM/i;

    move-result-object v0

    invoke-interface {v0, p1}, LaM/i;->b(Ljava/lang/String;)LaM/n;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, LaM/n;->b()Lam/b;

    move-result-object v1

    if-eqz v1, :cond_2f

    invoke-virtual {v0}, LaM/n;->b()Lam/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ah;->a(Lam/b;)Lcom/google/googlenav/ah;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lbd/an;->k:Lcom/google/googlenav/ui/wizard/cR;

    invoke-static {v0}, Lau/x;->c(Lcom/google/googlenav/ah;)Lau/x;

    move-result-object v0

    invoke-interface {v2, v0, v1, v3, v3}, Lcom/google/googlenav/ui/wizard/cR;->a(Lau/x;Ljava/lang/Long;Lam/b;Lcom/google/googlenav/aV;)V

    :cond_2f
    iget-object v0, p0, Lbd/an;->c:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->i()Lcom/google/googlenav/ui/wizard/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bu;->l()V

    return-void
.end method

.method private k()Lcom/google/googlenav/ui/view/android/R;
    .registers 4

    new-instance v1, Lcom/google/googlenav/ui/view/android/R;

    invoke-virtual {p0}, Lbd/an;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/ui/view/android/R;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lbd/an;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbd/k;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/R;->add(Ljava/lang/Object;)V

    goto :goto_12

    :cond_22
    return-object v1
.end method


# virtual methods
.method public O_()V
    .registers 3

    iget-object v0, p0, Lbd/an;->a:Lcom/google/googlenav/ui/view/android/R;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lbd/an;->a:Lcom/google/googlenav/ui/view/android/R;

    invoke-virtual {p0}, Lbd/an;->h()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/R;->a(Ljava/util/List;)V

    :cond_d
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

    new-instance v1, Lbd/ao;

    invoke-direct {v1, p0}, Lbd/ao;-><init>(Lbd/an;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f0f000f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 7

    const/16 v4, 0x1c

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lbd/an;->b:LaM/f;

    invoke-interface {v0}, LaM/f;->g()LaM/i;

    move-result-object v0

    invoke-interface {v0, p1}, LaM/i;->b(Ljava/lang/String;)LaM/n;

    move-result-object v0

    if-eqz v0, :cond_54

    invoke-virtual {v0}, LaM/n;->b()Lam/b;

    move-result-object v1

    if-eqz v1, :cond_54

    invoke-virtual {v0}, LaM/n;->b()Lam/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ah;->a(Lam/b;)Lcom/google/googlenav/ah;

    move-result-object v0

    iget-object v1, p0, Lbd/an;->d:Lcom/google/googlenav/L;

    invoke-interface {v1, v0, v4}, Lcom/google/googlenav/L;->a(Lcom/google/googlenav/ah;I)V

    :goto_27
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "a=o"

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "i="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "t=rp"

    aput-object v2, v0, v1

    invoke-static {v0}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    const-string v2, "f"

    invoke-static {v1, v2, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_54
    iget-object v0, p0, Lbd/an;->d:Lcom/google/googlenav/L;

    invoke-interface {v0, p1, v2, v4}, Lcom/google/googlenav/L;->a(Ljava/lang/String;ZI)V

    goto :goto_27
.end method

.method public c()Landroid/view/View;
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lbd/an;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030087

    invoke-virtual {v0, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f005a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-direct {p0}, Lbd/an;->k()Lcom/google/googlenav/ui/view/android/R;

    move-result-object v2

    iput-object v2, p0, Lbd/an;->a:Lcom/google/googlenav/ui/view/android/R;

    iget-object v2, p0, Lbd/an;->a:Lcom/google/googlenav/ui/view/android/R;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lbd/ap;

    invoke-direct {v2, p0, v4}, Lbd/ap;-><init>(Lbd/an;Lbd/ao;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p0, v1}, Lbd/an;->a(Landroid/view/View;)V

    :cond_45
    return-object v1
.end method

.method protected h()Ljava/util/List;
    .registers 16

    const/4 v1, 0x1

    const/4 v11, 0x0

    const/4 v14, 0x4

    const/4 v2, 0x0

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v9

    iget-object v0, p0, Lbd/an;->b:LaM/f;

    invoke-interface {v0}, LaM/f;->g()LaM/i;

    move-result-object v0

    invoke-interface {v0}, LaM/i;->b()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/16 v3, 0x19

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v13

    if-nez v13, :cond_31

    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    const/16 v1, 0xff

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lai/f;Lai/f;Lbb/a;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v9

    :goto_30
    return-object v0

    :cond_31
    move v10, v11

    :goto_32
    if-ge v10, v13, :cond_be

    iget-object v0, p0, Lbd/an;->b:LaM/f;

    invoke-interface {v0}, LaM/f;->g()LaM/i;

    move-result-object v3

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, LaM/i;->a(Ljava/lang/String;)LaM/m;

    move-result-object v6

    if-eqz v6, :cond_50

    invoke-virtual {v6}, LaM/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    :cond_50
    :goto_50
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_32

    :cond_54
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lbd/an;->b:LaM/f;

    invoke-interface {v0}, LaM/f;->g()LaM/i;

    move-result-object v3

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, LaM/i;->b(Ljava/lang/String;)LaM/n;

    move-result-object v0

    if-eqz v0, :cond_98

    invoke-virtual {v0}, LaM/n;->b()Lam/b;

    move-result-object v0

    if-eqz v0, :cond_98

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v3

    invoke-virtual {v3, v14}, Lam/b;->l(I)I

    move-result v0

    if-lez v0, :cond_82

    invoke-virtual {v3, v14, v11}, Lam/b;->f(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_82
    move v0, v1

    :goto_83
    invoke-virtual {v3, v14}, Lam/b;->l(I)I

    move-result v4

    if-ge v0, v4, :cond_98

    const-string v4, ", "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v0}, Lam/b;->f(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_83

    :cond_98
    new-instance v3, Lcom/google/googlenav/ui/view/android/a;

    invoke-virtual {v6}, LaM/m;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_bc

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_a8
    new-instance v8, Lbb/a;

    const/16 v0, 0xaf0

    invoke-virtual {v6}, LaM/m;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v0, v10, v6}, Lbb/a;-><init>(IILjava/lang/Object;)V

    move-object v6, v2

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/googlenav/ui/view/android/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lai/f;Lai/f;Lbb/a;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_50

    :cond_bc
    move-object v5, v2

    goto :goto_a8

    :cond_be
    move-object v0, v9

    goto/16 :goto_30
.end method

.method public i()V
    .registers 2

    iget-object v0, p0, Lbd/an;->b:LaM/f;

    invoke-interface {v0}, LaM/f;->d()V

    return-void
.end method
