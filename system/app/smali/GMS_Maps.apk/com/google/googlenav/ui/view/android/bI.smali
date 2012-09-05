.class public Lcom/google/googlenav/ui/view/android/bI;
.super Lcom/google/googlenav/ui/view/android/ap;

# interfaces
.implements Lay/q;


# static fields
.field private static final o:Ljava/lang/CharSequence;


# instance fields
.field a:Lcom/google/googlenav/ah;

.field final b:LaY/m;

.field final c:Lcom/google/googlenav/ui/bF;

.field d:Z

.field k:Lcom/google/googlenav/ui/view/android/R;

.field l:Landroid/view/View;

.field m:Landroid/widget/ListView;

.field n:Lcom/google/googlenav/ui/view/android/R;

.field private p:Lcom/google/googlenav/ui/bl;

.field private final q:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x4f7

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/view/android/bI;->o:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ah;LaY/m;)V
    .registers 5

    invoke-virtual {p2}, LaY/m;->al()[Laq/a;

    move-result-object v0

    const v1, 0x7f0d001a

    invoke-direct {p0, p2, v0, v1}, Lcom/google/googlenav/ui/view/android/ap;-><init>(Lcom/google/googlenav/ui/p;[Laq/a;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bI;->d:Z

    new-instance v0, Lcom/google/googlenav/ui/view/android/bJ;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/bJ;-><init>(Lcom/google/googlenav/ui/view/android/bI;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->q:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bI;->b:LaY/m;

    invoke-virtual {p2}, LaY/m;->bg()Lcom/google/googlenav/ui/bF;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->c:Lcom/google/googlenav/ui/bF;

    return-void
.end method

.method private A()Z
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-static {v0}, LaY/ap;->a(Lcom/google/googlenav/ah;)I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-static {v1}, LaY/ap;->b(Lcom/google/googlenav/ah;)I

    move-result v1

    add-int/2addr v0, v1

    if-lez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private a(LaY/ao;)Lbd/k;
    .registers 11

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->aa()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-static {v0}, LaY/ap;->c(Lcom/google/googlenav/ah;)Lam/b;

    move-result-object v2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-static {v0}, LaY/ap;->d(Lcom/google/googlenav/ah;)Lam/b;

    move-result-object v3

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v2, v5, v4}, LaY/ap;->a(Lam/b;Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    const/16 v6, 0x22

    invoke-virtual {v0, v6}, Lcom/google/googlenav/ah;->n(I)V

    new-instance v0, Lbd/x;

    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/bI;->c:Lcom/google/googlenav/ui/bF;

    const/4 v8, 0x3

    move-object v7, p1

    invoke-direct/range {v0 .. v8}, Lbd/x;-><init>(Ljava/lang/String;Lam/b;Lam/b;Ljava/util/List;Ljava/util/List;Lcom/google/googlenav/ui/ai;LaY/ao;I)V

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_41

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->c:Lcom/google/googlenav/ui/bF;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bF;->a()Lay/r;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/view/android/bL;

    invoke-direct {v2, p0, v0}, Lcom/google/googlenav/ui/view/android/bL;-><init>(Lcom/google/googlenav/ui/view/android/bI;Lbd/x;)V

    invoke-virtual {v1, v4, v2}, Lay/r;->a(Ljava/lang/Iterable;Lay/q;)V

    :cond_41
    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/bI;Lcom/google/googlenav/ui/bl;)Lcom/google/googlenav/ui/bl;
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bI;->p:Lcom/google/googlenav/ui/bl;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/bI;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->q:Ljava/lang/Runnable;

    return-object v0
.end method

.method private a(LaY/ao;Ljava/util/List;)V
    .registers 6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bW()Z

    move-result v0

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bX()Lbe/c;

    move-result-object v0

    invoke-virtual {v0}, Lbe/c;->g()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bX()Lbe/c;

    move-result-object v0

    sget-object v1, Lbe/f;->c:Lbe/f;

    invoke-virtual {v0, v1}, Lbe/c;->a(Lbe/f;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bX()Lbe/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0, v1, v2}, Lbe/c;->a(Lcom/google/googlenav/ah;Z)V

    :cond_2e
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bX()Lbe/c;

    move-result-object v0

    invoke-virtual {v0}, Lbe/c;->g()Z

    move-result v0

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bX()Lbe/c;

    move-result-object v0

    sget-object v1, Lbe/f;->f:Lbe/f;

    invoke-virtual {v0, v1}, Lbe/c;->a(Lbe/f;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bX()Lbe/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0, v1, v2}, Lbe/c;->b(Lcom/google/googlenav/ah;Z)V

    :cond_53
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bX()Lbe/c;

    move-result-object v0

    invoke-virtual {v0}, Lbe/c;->g()Z

    move-result v0

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bX()Lbe/c;

    move-result-object v0

    sget-object v1, Lbe/f;->d:Lbe/f;

    invoke-virtual {v0, v1}, Lbe/c;->a(Lbe/f;)Z

    move-result v0

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bX()Lbe/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0, v1}, Lbe/c;->b(Lcom/google/googlenav/ah;)V

    :cond_78
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bX()Lbe/c;

    move-result-object v0

    invoke-virtual {v0}, Lbe/c;->g()Z

    move-result v0

    if-eqz v0, :cond_a3

    new-instance v0, Lbd/s;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    const/16 v2, 0xe

    invoke-direct {v0, v1, p1, v2}, Lbd/s;-><init>(Lcom/google/googlenav/ah;LaY/ao;I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/ah;->bX()Lbe/c;

    move-result-object v1

    invoke-virtual {v1}, Lbe/c;->h()Lbe/i;

    move-result-object v1

    invoke-virtual {v1}, Lbe/i;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ah;->n(I)V

    :cond_a3
    return-void
.end method

.method private a(Landroid/widget/ListView;Lcom/google/googlenav/ui/view/android/R;Ljava/util/List;)V
    .registers 8

    new-instance v0, Lcom/google/googlenav/ui/view/android/R;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bI;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bI;->b:LaY/m;

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, p3, v3}, Lcom/google/googlenav/ui/view/android/R;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/p;Ljava/util/List;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/google/googlenav/ui/view/android/bM;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/bM;-><init>(Lcom/google/googlenav/ui/view/android/bI;Lcom/google/googlenav/ui/view/android/bJ;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method private a(Ljava/util/List;LaY/ao;)V
    .registers 10

    const/4 v6, 0x0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bI;->b:LaY/m;

    invoke-virtual {v2}, LaY/m;->bh()Lcom/google/googlenav/ui/a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bI;->b:LaY/m;

    invoke-virtual {v3}, LaY/m;->bg()Lcom/google/googlenav/ui/bF;

    move-result-object v4

    move-object v3, p2

    move-object v5, p0

    invoke-static/range {v0 .. v5}, LaY/aq;->a(Lcom/google/googlenav/ah;Ljava/util/Vector;Lbb/c;LaY/ao;Lcom/google/googlenav/ui/bF;Lay/q;)V

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5d

    invoke-virtual {v1, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bl;

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->H:[Lcom/google/googlenav/ui/bl;

    if-eqz v0, :cond_4d

    invoke-virtual {v1, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bl;

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->H:[Lcom/google/googlenav/ui/bl;

    aget-object v0, v0, v6

    iget-object v0, v0, Lcom/google/googlenav/ui/bl;->i:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bh;

    iget-object v0, v0, Lcom/google/googlenav/ui/bh;->a:Ljava/lang/String;

    new-instance v2, Lbd/ac;

    const/4 v3, 0x7

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/google/googlenav/ui/bg;->aX:Lcom/google/googlenav/ui/bg;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v0, v4, v5}, Lbd/ac;-><init>(ILjava/lang/String;Lcom/google/googlenav/ui/bg;Z)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4d
    new-instance v2, Lbd/aD;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bl;

    const/16 v1, 0x9

    invoke-direct {v2, v0, v1}, Lbd/aD;-><init>(Lcom/google/googlenav/ui/bl;I)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5d
    return-void
.end method

.method private b(Lcom/google/googlenav/ah;)V
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->b:LaY/m;

    invoke-virtual {v0}, LaY/m;->bC()LaY/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->Z()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_11

    :goto_10
    return-void

    :cond_11
    invoke-virtual {p1}, Lcom/google/googlenav/ah;->aa()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    new-instance v4, Lcom/google/googlenav/ui/view/android/bK;

    invoke-direct {v4, p0, p1, v1}, Lcom/google/googlenav/ui/view/android/bK;-><init>(Lcom/google/googlenav/ui/view/android/bI;Lcom/google/googlenav/ah;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3, v4}, LaY/a;->a(ILcom/google/googlenav/android/ac;LaY/f;)V

    goto :goto_10
.end method

.method private b(Ljava/util/List;LaY/ao;)V
    .registers 9

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-static {v0}, LaY/m;->c(Lcom/google/googlenav/ah;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->c:Lcom/google/googlenav/ui/bF;

    invoke-virtual {p2}, LaY/ao;->c()Z

    move-result v2

    invoke-static {v0, v1, p0, v2}, LaY/aq;->a(Lcom/google/googlenav/ah;Lcom/google/googlenav/ui/bF;Lay/q;Z)Lbd/S;

    move-result-object v0

    invoke-virtual {v0}, Lbd/S;->a()Z

    move-result v1

    if-eqz v1, :cond_33

    new-instance v1, Lbd/ac;

    const/4 v2, 0x7

    const/16 v3, 0x298

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/bg;->aX:Lcom/google/googlenav/ui/bg;

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lbd/ac;-><init>(ILjava/lang/String;Lcom/google/googlenav/ui/bg;Z)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_33
    return-void
.end method

.method private c(Ljava/util/List;)V
    .registers 6

    new-instance v0, Lbd/I;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bI;->b:LaY/m;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lbd/I;-><init>(Lcom/google/googlenav/ah;LaY/i;I)V

    invoke-virtual {v0}, Lbd/I;->a()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    return-void
.end method

.method private d(Ljava/util/List;)V
    .registers 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->b:LaY/m;

    invoke-virtual {v0}, LaY/m;->bl()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-static {v0, v4}, LaY/aq;->a(Lcom/google/googlenav/ah;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    new-instance v1, Lbd/ac;

    const/4 v2, 0x7

    sget-object v3, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-direct {v1, v2, v0, v3, v4}, Lbd/ac;-><init>(ILjava/lang/String;Lcom/google/googlenav/ui/bg;Z)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ah;->n(I)V

    :cond_27
    return-void
.end method

.method private e(Ljava/util/List;)V
    .registers 12

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->az()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    sget-object v0, Lcom/google/googlenav/ui/bg;->aR:Lcom/google/googlenav/ui/bg;

    invoke-static {v5, v0}, LaY/aq;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    sget-object v2, Lcom/google/googlenav/ui/view/android/bI;->o:Ljava/lang/CharSequence;

    new-instance v6, Lbb/a;

    const/16 v7, 0x19

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8, v5}, Lbb/a;-><init>(IILjava/lang/Object;)V

    sget-object v7, Lcom/google/googlenav/ui/bg;->O:Lcom/google/googlenav/ui/bg;

    sget-object v8, Lcom/google/googlenav/ui/bg;->aW:Lcom/google/googlenav/ui/bg;

    move-object v5, v4

    invoke-direct/range {v0 .. v8}, Lcom/google/googlenav/ui/view/android/a;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lai/f;Lai/f;Lbb/a;Lcom/google/googlenav/ui/bg;Lcom/google/googlenav/ui/bg;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    const/16 v2, 0x1c

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ah;->n(I)V

    :cond_3d
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bn()Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bc()Lcom/google/googlenav/ab;

    move-result-object v0

    if-eqz v0, :cond_5a

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-static {v2, v1, v9}, LaY/aq;->a(Lcom/google/googlenav/ah;ZZ)Ljava/util/Vector;

    move-result-object v2

    invoke-static {v0}, LaY/aq;->a(Lcom/google/googlenav/ab;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2}, Lcom/google/googlenav/ui/view/android/bI;->a(Ljava/util/List;Ljava/lang/CharSequence;Ljava/util/Vector;)V

    :cond_5a
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-static {v2, v0, v9}, LaY/aq;->b(Lcom/google/googlenav/ah;Ljava/util/Vector;Z)V

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_68
    :goto_68
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/ar;

    invoke-static {v0, v1}, LaY/aq;->a(LaY/ar;I)Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    if-eqz v0, :cond_68

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_68

    :cond_7e
    return-void
.end method

.method private f(Ljava/util/List;)Z
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->av()Lcom/google/googlenav/bN;

    move-result-object v0

    if-eqz v0, :cond_18

    new-instance v0, Lbd/ak;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/ah;->av()Lcom/google/googlenav/bN;

    move-result-object v1

    invoke-direct {v0, v1}, Lbd/ak;-><init>(Lcom/google/googlenav/bN;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private g(Ljava/util/List;)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->Z()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    :goto_c
    return-void

    :cond_d
    new-instance v0, Lbd/g;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bI;->b:LaY/m;

    invoke-virtual {v2}, LaY/m;->bh()Lcom/google/googlenav/ui/a;

    move-result-object v2

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lbd/g;-><init>(Lcom/google/googlenav/ah;Lbb/c;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ah;->n(I)V

    goto :goto_c
.end method

.method private y()Lbd/k;
    .registers 16

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->D()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bI;->b:LaY/m;

    invoke-virtual {v3}, LaY/m;->bn()Z

    move-result v3

    if-nez v3, :cond_1cd

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ao()Z

    move-result v0

    if-eqz v0, :cond_185

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16e

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->E()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v3}, Lcom/google/googlenav/ah;->G()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    :goto_37
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v2}, Lcom/google/googlenav/ah;->H()Ljava/lang/String;

    move-result-object v8

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bI;->b:LaY/m;

    invoke-virtual {v2}, LaY/m;->bc()Lcom/google/googlenav/ui/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/D;->af()Lcom/google/googlenav/ay;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/ay;->e()Z

    move-result v9

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-static {v2}, LaY/m;->f(Lcom/google/googlenav/ah;)Z

    move-result v10

    if-eqz v10, :cond_5a

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ah;->n(I)V

    :cond_5a
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v3}, Lcom/google/googlenav/ah;->bm()Z

    move-result v3

    if-eqz v3, :cond_69

    const/16 v2, 0x4e7

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    :cond_69
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v3}, Lcom/google/googlenav/ah;->bn()Z

    move-result v11

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-nez v11, :cond_8d

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ah;->c(Z)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v3}, Lcom/google/googlenav/ah;->bd()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Las/b;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8d

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    const/16 v6, 0x1f

    invoke-virtual {v5, v6}, Lcom/google/googlenav/ah;->n(I)V

    :cond_8d
    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v5}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v12

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v6}, Lcom/google/googlenav/ah;->A()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b7

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/bI;->b:LaY/m;

    invoke-virtual {v5}, LaY/m;->bc()Lcom/google/googlenav/ui/D;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/ui/D;->as()LaM/f;

    move-result-object v5

    invoke-interface {v5}, LaM/f;->g()LaM/i;

    move-result-object v5

    invoke-interface {v5, v6}, LaM/i;->a(Ljava/lang/String;)LaM/m;

    move-result-object v5

    if-eqz v5, :cond_1c4

    invoke-virtual {v5}, LaM/m;->h()Z

    move-result v5

    if-eqz v5, :cond_1c4

    const/4 v5, 0x1

    :cond_b7
    :goto_b7
    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v13, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v13}, Lcom/google/googlenav/ah;->am()Z

    move-result v13

    if-eqz v13, :cond_cd

    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v6}, Lcom/google/googlenav/ah;->aN()Ljava/lang/String;

    move-result-object v7

    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v6}, Lcom/google/googlenav/ah;->aO()Ljava/lang/String;

    move-result-object v6

    :cond_cd
    new-instance v13, Lcom/google/googlenav/ui/view/android/bO;

    invoke-direct {v13}, Lcom/google/googlenav/ui/view/android/bO;-><init>()V

    sget-object v14, Lcom/google/googlenav/ui/bg;->aN:Lcom/google/googlenav/ui/bg;

    invoke-virtual {v13, v1, v14}, Lcom/google/googlenav/ui/view/android/bO;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/bO;->a([Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lcom/google/googlenav/ui/view/android/bO;->a(Ljava/lang/String;Z)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->aI()Z

    move-result v0

    if-eqz v0, :cond_1c7

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->aJ()Lab/e;

    move-result-object v0

    :goto_ee
    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/bO;->a(Lab/e;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/googlenav/ui/view/android/bO;->b(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/googlenav/ui/view/android/bO;->c(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/bO;->d(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/google/googlenav/ui/view/android/bO;->a(LaJ/B;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/googlenav/ui/view/android/bO;->a(Z)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bO;->a(Lcom/google/googlenav/ah;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/view/android/bO;->b(Z)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/google/googlenav/ui/view/android/bO;->c(Z)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->b:LaY/m;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bO;->a(Lcom/google/googlenav/ui/p;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->b:LaY/m;

    invoke-virtual {v1}, LaY/m;->bg()Lcom/google/googlenav/ui/bF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bO;->a(Lcom/google/googlenav/ui/bF;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v0

    const v1, 0x7f0300b4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bO;->d(I)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bO;->d(Z)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bO;->e(I)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->ax()Lcom/google/googlenav/an;

    move-result-object v2

    if-eqz v2, :cond_162

    invoke-virtual {v2}, Lcom/google/googlenav/an;->b()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_1ca

    const/4 v0, 0x1

    :goto_145
    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    const/4 v6, 0x1

    invoke-static {v5, v0, v6}, LaY/aq;->b(Lcom/google/googlenav/ah;ZZ)Lbb/a;

    move-result-object v5

    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-static {v6, v0}, LaY/aq;->b(Lcom/google/googlenav/ah;Z)V

    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v6}, Lcom/google/googlenav/ah;->K()Z

    move-result v6

    if-nez v6, :cond_15b

    if-nez v0, :cond_162

    :cond_15b
    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/bO;->a(Lcom/google/googlenav/an;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/view/android/bO;->a(Lbb/a;)Lcom/google/googlenav/ui/view/android/bO;

    :cond_162
    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/view/android/bO;->e(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/view/android/bO;->f(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/bO;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/bO;->b()Lcom/google/googlenav/ui/view/android/bN;

    move-result-object v0

    return-object v0

    :cond_16e
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v3}, Lcom/google/googlenav/ah;->E()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v3}, Lcom/google/googlenav/ah;->G()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto/16 :goto_37

    :cond_185
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v3}, Lcom/google/googlenav/ah;->E()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v3}, Lcom/google/googlenav/ah;->G()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    move-object v1, v2

    goto/16 :goto_37

    :cond_1a3
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v3}, Lcom/google/googlenav/ah;->D()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v3}, Lcom/google/googlenav/ah;->E()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v3}, Lcom/google/googlenav/ah;->G()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    move-object v1, v2

    goto/16 :goto_37

    :cond_1c4
    const/4 v5, 0x0

    goto/16 :goto_b7

    :cond_1c7
    const/4 v0, 0x0

    goto/16 :goto_ee

    :cond_1ca
    const/4 v0, 0x0

    goto/16 :goto_145

    :cond_1cd
    move-object v1, v2

    goto/16 :goto_37
.end method

.method private z()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bQ()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a(Landroid/app/ActionBar;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ah;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->p:Lcom/google/googlenav/ui/bl;

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .registers 7

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->bG()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-static {v0}, LaY/aW;->a(Lcom/google/googlenav/ah;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, LaY/ar;

    const/4 v2, 0x0

    const/16 v3, 0x2c4

    invoke-direct {v1, v0, v2, v3, v4}, LaY/ar;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-static {v1, v4}, LaY/aq;->a(LaY/ar;I)Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/CharSequence;Ljava/util/Vector;)V
    .registers 13

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ah;->n(I)V

    move v0, v1

    :cond_11
    if-nez p2, :cond_33

    const/16 v2, 0x4f6

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    :goto_19
    if-eqz v0, :cond_32

    new-instance v0, Lcom/google/googlenav/ui/view/android/a;

    new-instance v6, Lbb/a;

    const/16 v3, 0xf

    const/16 v5, 0x14

    invoke-direct {v6, v3, v5, v4}, Lbb/a;-><init>(IILjava/lang/Object;)V

    sget-object v7, Lcom/google/googlenav/ui/bg;->O:Lcom/google/googlenav/ui/bg;

    sget-object v8, Lcom/google/googlenav/ui/bg;->aW:Lcom/google/googlenav/ui/bg;

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v8}, Lcom/google/googlenav/ui/view/android/a;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lai/f;Lai/f;Lbb/a;Lcom/google/googlenav/ui/bg;Lcom/google/googlenav/ui/bg;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    return-void

    :cond_33
    const/16 v2, 0x1d3

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_19
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ui/view/android/bI;->d:Z

    return-void
.end method

.method public aa_()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->b:LaY/m;

    invoke-virtual {v1}, LaY/m;->bv()Lcom/google/googlenav/ah;

    move-result-object v1

    if-ne v0, v1, :cond_d

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bI;->x()V

    :cond_d
    return-void
.end method

.method b(Ljava/util/List;)V
    .registers 8

    const/4 v5, 0x1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->b:LaY/m;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v1, v2}, LaY/m;->d(Lcom/google/googlenav/ah;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-static {v1, v0, v5}, LaY/aq;->a(Lcom/google/googlenav/ah;Ljava/util/Vector;Z)V

    :cond_15
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-static {v1, v0, v5}, LaY/aq;->f(Lcom/google/googlenav/ah;Ljava/util/Vector;Z)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bI;->b:LaY/m;

    invoke-virtual {v2}, LaY/m;->bo()Z

    move-result v2

    invoke-static {v1, v0, v5, v2, v5}, LaY/aq;->a(Lcom/google/googlenav/ah;Ljava/util/Vector;ZZZ)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-static {v1, v0, v5}, LaY/aq;->c(Lcom/google/googlenav/ah;Ljava/util/Vector;Z)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-static {v1, v0, v5}, LaY/aq;->d(Lcom/google/googlenav/ah;Ljava/util/Vector;Z)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-static {v1, v0, v5}, LaY/aq;->e(Lcom/google/googlenav/ah;Ljava/util/Vector;Z)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-static {v1, v0, v5}, LaY/aq;->g(Lcom/google/googlenav/ah;Ljava/util/Vector;Z)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bI;->b:LaY/m;

    invoke-static {v1, v0, v2, v5}, LaY/aq;->a(Lcom/google/googlenav/ah;Ljava/util/Vector;LaY/i;Z)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-static {v1, v0, v5}, LaY/aq;->h(Lcom/google/googlenav/ah;Ljava/util/Vector;Z)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/ah;->bG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_62

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-static {v1}, LaY/aW;->a(Lcom/google/googlenav/ah;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, LaY/ar;

    const/4 v3, 0x0

    const/16 v4, 0x2c4

    invoke-direct {v2, v1, v3, v4, v5}, LaY/ar;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_62
    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7d

    new-instance v1, Lbd/ac;

    const/4 v2, 0x7

    const/16 v3, 0x265

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/bg;->aX:Lcom/google/googlenav/ui/bg;

    invoke-direct {v1, v2, v3, v4, v5}, Lbd/ac;-><init>(ILjava/lang/String;Lcom/google/googlenav/ui/bg;Z)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7d
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_81
    :goto_81
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/ar;

    invoke-static {v0, v5}, LaY/aq;->a(LaY/ar;I)Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    if-eqz v0, :cond_81

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_81

    :cond_97
    return-void
.end method

.method public c()Landroid/view/View;
    .registers 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    if-nez v0, :cond_7

    move-object v0, v1

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bI;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f0300e1

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0f02e1

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->l:Landroid/view/View;

    const v0, 0x7f0f028b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->m:Landroid/widget/ListView;

    invoke-static {}, Lcom/google/googlenav/aA;->a()Lcom/google/googlenav/aA;

    move-result-object v0

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0, v3}, Lcom/google/googlenav/aA;->a(Lcom/google/googlenav/ah;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-static {v0}, LaY/aq;->g(Lcom/google/googlenav/ah;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-static {v0}, LaY/aq;->h(Lcom/google/googlenav/ah;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bI;->h()Ljava/util/List;

    move-result-object v3

    const v0, 0x7f0f005a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v4, Lcom/google/googlenav/ui/view/android/R;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bI;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/bI;->b:LaY/m;

    const/16 v7, 0x14

    invoke-direct {v4, v5, v6, v3, v7}, Lcom/google/googlenav/ui/view/android/R;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/p;Ljava/util/List;I)V

    iput-object v4, p0, Lcom/google/googlenav/ui/view/android/bI;->k:Lcom/google/googlenav/ui/view/android/R;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bI;->k:Lcom/google/googlenav/ui/view/android/R;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v3, Lcom/google/googlenav/ui/view/android/bM;

    invoke-direct {v3, p0, v1}, Lcom/google/googlenav/ui/view/android/bM;-><init>(Lcom/google/googlenav/ui/view/android/bI;Lcom/google/googlenav/ui/view/android/bJ;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-static {v0}, LaY/m;->e(Lcom/google/googlenav/ah;)Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/bI;->b(Lcom/google/googlenav/ah;)V

    :cond_7f
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bI;->v()Z

    move-result v0

    if-eqz v0, :cond_a3

    new-instance v0, Lbd/L;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-direct {v0, v1}, Lbd/L;-><init>(Lcom/google/googlenav/ah;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->l:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bI;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lbd/L;->a(Landroid/view/View;Landroid/content/Context;)V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bI;->b(Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->m:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bI;->n:Lcom/google/googlenav/ui/view/android/R;

    invoke-direct {p0, v1, v3, v0}, Lcom/google/googlenav/ui/view/android/bI;->a(Landroid/widget/ListView;Lcom/google/googlenav/ui/view/android/R;Ljava/util/List;)V

    :cond_a3
    move-object v0, v2

    goto/16 :goto_6
.end method

.method protected e()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .registers 3

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bI;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    :cond_17
    return-void
.end method

.method protected h()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->af()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bI;->k()Ljava/util/List;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bI;->v()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bI;->n()Ljava/util/List;

    move-result-object v0

    goto :goto_c

    :cond_18
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/bI;->d:Z

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bI;->w()Ljava/util/List;

    move-result-object v0

    goto :goto_c

    :cond_21
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bI;->i()Ljava/util/List;

    move-result-object v0

    goto :goto_c
.end method

.method protected i()Ljava/util/List;
    .registers 8

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->f()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bI;->b:LaY/m;

    invoke-virtual {v2}, LaY/m;->bt()Ljava/util/Hashtable;

    move-result-object v2

    invoke-static {v1, v2, v0}, LaY/aq;->a(Lcom/google/googlenav/ah;Ljava/util/Hashtable;Ljava/lang/Object;)LaY/ao;

    move-result-object v0

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bI;->y()Lbd/k;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/view/android/bI;->c(Ljava/util/List;)V

    invoke-direct {p0, v0, v2}, Lcom/google/googlenav/ui/view/android/bI;->a(LaY/ao;Ljava/util/List;)V

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/view/android/bI;->f(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/view/android/bI;->b(Ljava/util/List;)V

    move-object v0, v2

    :goto_2d
    return-object v0

    :cond_2e
    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/view/android/bI;->d(Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v1}, Lcom/google/googlenav/ah;->aw()Z

    move-result v1

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bI;->b:LaY/m;

    invoke-virtual {v3}, LaY/m;->bg()Lcom/google/googlenav/ui/bF;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v1, v3, v4}, LaY/as;->a(Lcom/google/googlenav/ah;Lcom/google/googlenav/ui/bF;I)Lbd/k;

    move-result-object v1

    if-eqz v1, :cond_4c

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4c
    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/view/android/bI;->e(Ljava/util/List;)V

    invoke-direct {p0, v2, v0}, Lcom/google/googlenav/ui/view/android/bI;->b(Ljava/util/List;LaY/ao;)V

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/view/android/bI;->g(Ljava/util/List;)V

    invoke-direct {p0, v2, v0}, Lcom/google/googlenav/ui/view/android/bI;->a(Ljava/util/List;LaY/ao;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->p:Lcom/google/googlenav/ui/bl;

    if-eqz v1, :cond_7e

    new-instance v1, Lbd/ac;

    const/4 v3, 0x7

    const/16 v4, 0x207

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/ui/bg;->aX:Lcom/google/googlenav/ui/bg;

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Lbd/ac;-><init>(ILjava/lang/String;Lcom/google/googlenav/ui/bg;Z)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lbd/aD;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bI;->p:Lcom/google/googlenav/ui/bl;

    const/16 v4, 0x11

    invoke-direct {v1, v3, v4}, Lbd/aD;-><init>(Lcom/google/googlenav/ui/bl;I)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7e
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bI;->z()Z

    move-result v1

    if-eqz v1, :cond_90

    new-instance v1, Lbd/N;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    const/16 v4, 0xb

    invoke-direct {v1, v3, v4}, Lbd/N;-><init>(Lcom/google/googlenav/ah;I)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_90
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bI;->A()Z

    move-result v1

    if-eqz v1, :cond_9d

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/bI;->a(LaY/ao;)Lbd/k;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9d
    new-instance v0, Lbd/ae;

    const/4 v1, 0x6

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bI;->c:Lcom/google/googlenav/ui/bF;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/bI;->b:LaY/m;

    iget-object v6, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v5, v6}, LaY/m;->d(Lcom/google/googlenav/ah;)Z

    move-result v5

    invoke-direct {v0, v1, v3, v4, v5}, Lbd/ae;-><init>(ILcom/google/googlenav/ui/bF;Lcom/google/googlenav/ah;Z)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lbd/Y;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    const/16 v3, 0xd

    invoke-direct {v0, v1, v3}, Lbd/Y;-><init>(Lcom/google/googlenav/ah;I)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/view/android/bI;->b(Ljava/util/List;)V

    new-instance v0, Lbd/p;

    const/16 v1, 0xa

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-direct {v0, v1, v3}, Lbd/p;-><init>(ILcom/google/googlenav/ah;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->b:LaY/m;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0, v1}, LaY/m;->b(Lcom/google/googlenav/ah;)Z

    move-result v0

    if-eqz v0, :cond_fc

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->b:LaY/m;

    check-cast v0, LaY/aG;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0, v1}, LaY/aG;->h(Lcom/google/googlenav/ah;)I

    move-result v3

    invoke-virtual {v0}, LaY/aG;->as()Lcom/google/googlenav/E;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ah;

    const/16 v4, 0x483

    invoke-static {v4}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x13

    invoke-static {v1, v4, v3, v0, v5}, Lcom/google/googlenav/ui/view/android/c;->a(Lcom/google/googlenav/ah;Ljava/lang/String;ILaY/aG;I)Lcom/google/googlenav/ui/view/android/c;

    move-result-object v0

    if-eqz v0, :cond_fc

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_fc
    move-object v0, v2

    goto/16 :goto_2d
.end method

.method protected k()Ljava/util/List;
    .registers 4

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bI;->m()Lbd/k;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bI;->y()Lbd/k;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/bI;->c(Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bI;->b:LaY/m;

    invoke-static {v1, v2, v0}, LaY/aq;->a(Lcom/google/googlenav/ah;Lcom/google/googlenav/ui/p;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bI;->a(Ljava/util/List;)V

    return-object v0
.end method

.method protected m()Lbd/k;
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->aH()Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v0, 0x486

    :goto_a
    new-instance v1, Lbd/ac;

    const/4 v2, 0x7

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/google/googlenav/ui/bg;->ae:Lcom/google/googlenav/ui/bg;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Lbd/ac;-><init>(ILjava/lang/String;Lcom/google/googlenav/ui/bg;Z)V

    return-object v1

    :cond_18
    const/16 v0, 0x483

    goto :goto_a
.end method

.method protected n()Ljava/util/List;
    .registers 3

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bI;->y()Lbd/k;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/bI;->c(Ljava/util/List;)V

    return-object v0
.end method

.method v()Z
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->am()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->af()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->J()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method protected w()Ljava/util/List;
    .registers 3

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/bI;->y()Lbd/k;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public x()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->k:Lcom/google/googlenav/ui/view/android/R;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->b:LaY/m;

    invoke-virtual {v0}, LaY/m;->af()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->f()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bI;->b:LaY/m;

    invoke-virtual {v2}, LaY/m;->bt()Ljava/util/Hashtable;

    move-result-object v2

    invoke-static {v1, v2, v0}, LaY/aq;->a(Lcom/google/googlenav/ah;Ljava/util/Hashtable;Ljava/lang/Object;)LaY/ao;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bI;->k:Lcom/google/googlenav/ui/view/android/R;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bI;->h()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/R;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bI;->v()Z

    move-result v0

    if-eqz v0, :cond_4c

    new-instance v0, Lbd/L;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->a:Lcom/google/googlenav/ah;

    invoke-direct {v0, v1}, Lbd/L;-><init>(Lcom/google/googlenav/ah;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->l:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/bI;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbd/L;->a(Landroid/view/View;Landroid/content/Context;)V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/bI;->b(Ljava/util/List;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->n:Lcom/google/googlenav/ui/view/android/R;

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->n:Lcom/google/googlenav/ui/view/android/R;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/android/R;->a(Ljava/util/List;)V

    :cond_4c
    :goto_4c
    return-void

    :cond_4d
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bI;->m:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bI;->n:Lcom/google/googlenav/ui/view/android/R;

    invoke-direct {p0, v1, v2, v0}, Lcom/google/googlenav/ui/view/android/bI;->a(Landroid/widget/ListView;Lcom/google/googlenav/ui/view/android/R;Ljava/util/List;)V

    goto :goto_4c
.end method
