.class public LaM/r;
.super LaM/j;


# instance fields
.field private a:Ljava/util/List;


# direct methods
.method constructor <init>(LaM/w;LaM/o;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, LaM/j;-><init>(LaM/w;LaM/o;IZ)V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaM/r;->a:Ljava/util/List;

    return-void
.end method

.method private d(Lam/b;)Lam/b;
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(LaM/m;Lam/b;)V
    .registers 5

    invoke-virtual {p1}, LaM/m;->i()Lam/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Lam/b;->b(ILam/b;)V

    return-void
.end method

.method public a(Lam/b;)V
    .registers 7

    const/4 v4, 0x3

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v4}, Lam/b;->l(I)I

    move-result v1

    if-ge v0, v1, :cond_19

    invoke-virtual {p1, v4, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v1

    iget-object v2, p0, LaM/r;->a:Ljava/util/List;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_19
    return-void
.end method

.method protected a(Lam/b;Lam/b;)V
    .registers 11

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x7

    invoke-direct {p0, p1}, LaM/r;->d(Lam/b;)Lam/b;

    move-result-object v1

    invoke-direct {p0, p2}, LaM/r;->d(Lam/b;)Lam/b;

    move-result-object v2

    invoke-virtual {v2, v3}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v2, v3}, Lam/b;->b(I)Z

    move-result v0

    invoke-virtual {v1, v3, v0}, Lam/b;->b(IZ)V

    :cond_1a
    invoke-virtual {v2, v4}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {v2, v4}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lam/b;->b(ILjava/lang/String;)V

    :cond_27
    invoke-virtual {v2, v6}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {v2, v6}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lam/b;->b(ILjava/lang/String;)V

    :cond_34
    invoke-virtual {v2, v7}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {v2, v7}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lam/b;->b(ILam/b;)V

    :cond_41
    invoke-virtual {v2, v5}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-virtual {v1, v5}, Lam/b;->l(I)I

    move-result v0

    :goto_4b
    if-lez v0, :cond_53

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v5, v0}, Lam/b;->g(II)V

    goto :goto_4b

    :cond_53
    invoke-virtual {v2, v5}, Lam/b;->l(I)I

    move-result v3

    const/4 v0, 0x0

    :goto_58
    if-ge v0, v3, :cond_64

    invoke-virtual {v2, v5, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lam/b;->a(ILam/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    :cond_64
    return-void
.end method

.method public b()Ljava/util/List;
    .registers 6

    invoke-virtual {p0}, LaM/r;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, LaM/r;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v0}, LK/bR;->b(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v3

    iget-object v0, p0, LaM/r;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1f
    if-ltz v0, :cond_36

    iget-object v4, p0, LaM/r;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, LaM/r;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_1f

    :cond_36
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3a
    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/m;

    invoke-virtual {v0}, LaM/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_54
    return-object v2
.end method

.method public b(Lam/b;)V
    .registers 6

    iget-object v0, p0, LaM/r;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, LaM/r;->a(Ljava/lang/String;)LaM/m;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, LaM/m;->h()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lam/b;

    sget-object v3, LbC/a;->e:Lam/e;

    invoke-direct {v2, v3}, Lam/b;-><init>(Lam/e;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lam/b;->b(ILjava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lam/b;->a(ILam/b;)V

    goto :goto_6

    :cond_2e
    return-void
.end method

.method protected c(Lam/b;)LaM/m;
    .registers 4

    new-instance v0, LaM/m;

    invoke-direct {p0, p1}, LaM/r;->d(Lam/b;)Lam/b;

    move-result-object v1

    invoke-direct {v0, v1}, LaM/m;-><init>(Lam/b;)V

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, LaM/r;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, LaM/r;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method
