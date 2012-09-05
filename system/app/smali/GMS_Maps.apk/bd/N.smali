.class public Lbd/N;
.super Ljava/lang/Object;

# interfaces
.implements Lbd/k;


# instance fields
.field private final a:I

.field private final b:Lcom/google/googlenav/ah;

.field private c:Lcom/google/googlenav/ui/p;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ah;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lbd/N;->a:I

    iput-object p1, p0, Lbd/N;->b:Lcom/google/googlenav/ah;

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/p;ILjava/lang/Object;)Landroid/view/View$OnClickListener;
    .registers 5

    new-instance v0, Lbd/O;

    invoke-direct {v0, p0, p1, p2, p3}, Lbd/O;-><init>(Lbd/N;Lcom/google/googlenav/ui/p;ILjava/lang/Object;)V

    return-object v0
.end method

.method private a(Landroid/view/View;Z)V
    .registers 4

    if-eqz p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_7
    const/16 v0, 0x8

    goto :goto_3
.end method

.method private a(Lbd/Q;Lcom/google/googlenav/aq;)Z
    .registers 6

    invoke-virtual {p2}, Lcom/google/googlenav/aq;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p2}, Lcom/google/googlenav/aq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    :goto_15
    return v0

    :cond_16
    iget-object v0, p1, Lbd/Q;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/google/googlenav/aq;->e()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->aV:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V

    iget-object v0, p1, Lbd/Q;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lbd/N;->c:Lcom/google/googlenav/ui/p;

    const/16 v2, 0x90b

    invoke-direct {p0, v1, v2, p2}, Lbd/N;->a(Lcom/google/googlenav/ui/p;ILjava/lang/Object;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/google/googlenav/aq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "--"

    :goto_3e
    iget-object v1, p1, Lbd/Q;->e:Landroid/widget/TextView;

    sget-object v2, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V

    const/4 v0, 0x1

    goto :goto_15

    :cond_4b
    invoke-virtual {p2}, Lcom/google/googlenav/aq;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_3e
.end method

.method private a(Lbd/R;)Z
    .registers 10

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lbd/N;->b:Lcom/google/googlenav/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/ah;->bU()Ljava/util/Vector;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_12

    :cond_10
    move v3, v0

    :cond_11
    return v3

    :cond_12
    iget-object v1, p1, Lbd/R;->h:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    move v1, v0

    move v2, v0

    :goto_19
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_11

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ap;

    invoke-virtual {v0}, Lcom/google/googlenav/ap;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Las/b;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-virtual {v0}, Lcom/google/googlenav/ap;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Las/b;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    :goto_39
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_19

    :cond_3d
    if-eqz v2, :cond_56

    new-instance v2, Landroid/widget/TextView;

    iget-object v5, p1, Lbd/R;->h:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v5, ", "

    sget-object v6, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v5, v6}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    iget-object v5, p1, Lbd/R;->h:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_56
    invoke-virtual {v0}, Lcom/google/googlenav/ap;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8e

    invoke-virtual {v0}, Lcom/google/googlenav/ap;->b()Ljava/lang/String;

    move-result-object v2

    :goto_64
    new-instance v5, Lbd/P;

    iget-object v6, p1, Lbd/R;->h:Landroid/view/ViewGroup;

    invoke-direct {v5, v6}, Lbd/P;-><init>(Landroid/view/ViewGroup;)V

    iget-object v6, v5, Lbd/P;->b:Landroid/widget/TextView;

    sget-object v7, Lcom/google/googlenav/ui/bg;->ba:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v7}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V

    invoke-virtual {v0}, Lcom/google/googlenav/ap;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8c

    iget-object v2, v5, Lbd/P;->a:Landroid/view/ViewGroup;

    iget-object v5, p0, Lbd/N;->c:Lcom/google/googlenav/ui/p;

    const/4 v6, 0x5

    invoke-virtual {v0}, Lcom/google/googlenav/ap;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v6, v0}, Lbd/N;->a(Lcom/google/googlenav/ui/p;ILjava/lang/Object;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8c
    move v2, v3

    goto :goto_39

    :cond_8e
    invoke-virtual {v0}, Lcom/google/googlenav/ap;->c()Ljava/lang/String;

    move-result-object v2

    goto :goto_64
.end method

.method private b(Lbd/R;)Z
    .registers 5

    iget-object v0, p0, Lbd/N;->b:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bT()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lbd/N;->b:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lbd/R;->b:Landroid/widget/TextView;

    sget-object v2, Lcom/google/googlenav/ui/bg;->aX:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v0, v2}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)V

    const/4 v0, 0x1

    goto :goto_d
.end method

.method private c(Lbd/R;)Z
    .registers 6

    iget-object v0, p0, Lbd/N;->b:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bS()Lcom/google/googlenav/ap;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-object v0, p1, Lbd/R;->g:Lbd/P;

    iget-object v0, v0, Lbd/P;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lbd/N;->b:Lcom/google/googlenav/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/ah;->bS()Lcom/google/googlenav/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ap;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->aT:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V

    iget-object v0, p1, Lbd/R;->g:Lbd/P;

    iget-object v0, v0, Lbd/P;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lbd/N;->c:Lcom/google/googlenav/ui/p;

    const/4 v2, 0x5

    iget-object v3, p0, Lbd/N;->b:Lcom/google/googlenav/ah;

    invoke-virtual {v3}, Lcom/google/googlenav/ah;->bS()Lcom/google/googlenav/ap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ap;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lbd/N;->a(Lcom/google/googlenav/ui/p;ILjava/lang/Object;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    goto :goto_9
.end method

.method private d(Lbd/R;)Z
    .registers 12

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lbd/N;->b:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bV()Ljava/util/Vector;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_e
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3f

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aq;

    iget-object v4, p1, Lbd/R;->e:[Lbd/Q;

    aget-object v4, v4, v1

    invoke-direct {p0, v4, v0}, Lbd/N;->a(Lbd/Q;Lcom/google/googlenav/aq;)Z

    move-result v0

    iget-object v7, v4, Lbd/Q;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, v7, v0}, Lbd/N;->a(Landroid/view/View;Z)V

    if-eqz v0, :cond_34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_30
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_34
    iget-object v0, v4, Lbd/Q;->c:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lbd/N;->a(Landroid/view/View;Z)V

    iget-object v0, v4, Lbd/Q;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2}, Lbd/N;->a(Landroid/view/View;Z)V

    goto :goto_30

    :cond_3f
    const/4 v1, 0x0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_44
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/aq;

    iget-object v8, p1, Lbd/R;->e:[Lbd/Q;

    aget-object v4, v8, v4

    iget-object v8, v4, Lbd/Q;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/googlenav/aq;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Las/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_83

    move v4, v3

    :goto_6b
    if-eqz v4, :cond_a5

    invoke-virtual {v0}, Lcom/google/googlenav/aq;->d()Ljava/lang/String;

    move-result-object v1

    sget-object v9, Lcom/google/googlenav/ui/bg;->aS:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v9}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/google/googlenav/ui/bw;->a(Landroid/widget/TextView;Lcom/google/googlenav/ui/bh;)V

    invoke-virtual {v0}, Lcom/google/googlenav/aq;->d()Ljava/lang/String;

    move-result-object v0

    :goto_7e
    invoke-direct {p0, v8, v4}, Lbd/N;->a(Landroid/view/View;Z)V

    move-object v1, v0

    goto :goto_44

    :cond_83
    move v4, v2

    goto :goto_6b

    :cond_85
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    :goto_89
    const/4 v1, 0x5

    if-ge v0, v1, :cond_9d

    iget-object v1, p1, Lbd/R;->e:[Lbd/Q;

    aget-object v1, v1, v0

    iget-object v4, v1, Lbd/Q;->c:Landroid/widget/TextView;

    invoke-direct {p0, v4, v2}, Lbd/N;->a(Landroid/view/View;Z)V

    iget-object v1, v1, Lbd/Q;->a:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v2}, Lbd/N;->a(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_89

    :cond_9d
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a4

    move v2, v3

    :cond_a4
    return v2

    :cond_a5
    move-object v0, v1

    goto :goto_7e
.end method


# virtual methods
.method public a(Landroid/view/View;)Lbd/aJ;
    .registers 7

    new-instance v1, Lbd/R;

    invoke-direct {v1}, Lbd/R;-><init>()V

    const v0, 0x7f0f023d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lbd/R;->a:Landroid/view/ViewGroup;

    iget-object v0, v1, Lbd/R;->a:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lbd/R;->a:Landroid/view/ViewGroup;

    const v2, 0x7f0f0225

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lbd/R;->b:Landroid/widget/TextView;

    iget-object v0, v1, Lbd/R;->a:Landroid/view/ViewGroup;

    const v2, 0x7f0f014d

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lbd/R;->c:Landroid/view/View;

    iget-object v0, v1, Lbd/R;->a:Landroid/view/ViewGroup;

    const v2, 0x7f0f023e

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lbd/R;->d:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_3c
    const/4 v2, 0x5

    if-ge v0, v2, :cond_4d

    iget-object v2, v1, Lbd/R;->e:[Lbd/Q;

    new-instance v3, Lbd/Q;

    iget-object v4, v1, Lbd/R;->d:Landroid/view/ViewGroup;

    invoke-direct {v3, v4}, Lbd/Q;-><init>(Landroid/view/ViewGroup;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    :cond_4d
    iget-object v0, v1, Lbd/R;->a:Landroid/view/ViewGroup;

    const v2, 0x7f0f023f

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lbd/R;->f:Landroid/view/ViewGroup;

    new-instance v0, Lbd/P;

    iget-object v2, v1, Lbd/R;->f:Landroid/view/ViewGroup;

    invoke-direct {v0, v2}, Lbd/P;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, v1, Lbd/R;->g:Lbd/P;

    iget-object v0, v1, Lbd/R;->a:Landroid/view/ViewGroup;

    const v2, 0x7f0f0240

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lbd/R;->h:Landroid/view/ViewGroup;

    return-object v1
.end method

.method public a(Lcom/google/googlenav/ui/p;Lbd/aJ;)V
    .registers 5

    check-cast p2, Lbd/R;

    iput-object p1, p0, Lbd/N;->c:Lcom/google/googlenav/ui/p;

    iget-object v0, p0, Lbd/N;->b:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bQ()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p2, Lbd/R;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lbd/N;->a(Landroid/view/View;Z)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lbd/N;->b:Lcom/google/googlenav/ah;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ah;->n(I)V

    invoke-direct {p0, p2}, Lbd/N;->b(Lbd/R;)Z

    move-result v0

    iget-object v1, p2, Lbd/R;->b:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lbd/N;->a(Landroid/view/View;Z)V

    iget-object v1, p2, Lbd/R;->c:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lbd/N;->a(Landroid/view/View;Z)V

    iget-object v0, p2, Lbd/R;->d:Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, Lbd/N;->d(Lbd/R;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lbd/N;->a(Landroid/view/View;Z)V

    iget-object v0, p2, Lbd/R;->f:Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, Lbd/N;->c(Lbd/R;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lbd/N;->a(Landroid/view/View;Z)V

    iget-object v0, p2, Lbd/R;->h:Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, Lbd/N;->a(Lbd/R;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lbd/N;->a(Landroid/view/View;Z)V

    goto :goto_12
.end method

.method public b()I
    .registers 2

    const v0, 0x7f0300b1

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lbd/N;->a:I

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
