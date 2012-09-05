.class public LaM/x;
.super Ljava/lang/Object;

# interfaces
.implements LaM/w;


# instance fields
.field private a:Ljava/util/Map;

.field private b:Ljava/util/List;

.field private c:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaM/x;->b:Ljava/util/List;

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, LaM/x;->a:Ljava/util/Map;

    iput p1, p0, LaM/x;->c:I

    return-void
.end method

.method private c(ILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, LaM/x;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_19

    iget-object v0, p0, LaM/x;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/y;

    invoke-interface {v0, p1, p2}, LaM/y;->a_(ILjava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_19
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)Lam/b;
    .registers 4

    iget v0, p0, LaM/x;->c:I

    if-ne p1, v0, :cond_6

    if-nez p2, :cond_8

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, LaM/x;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    goto :goto_7
.end method

.method public a()V
    .registers 2

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, LaM/x;->a:Ljava/util/Map;

    return-void
.end method

.method public a(LaM/y;)V
    .registers 3

    iget-object v0, p0, LaM/x;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lam/b;)V
    .registers 8

    const/4 v5, 0x2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, LaM/x;->c:I

    invoke-virtual {p1, v5}, Lam/b;->l(I)I

    move-result v1

    invoke-static {v1}, LK/cb;->a(I)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, LaM/x;->a:Ljava/util/Map;

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v1, :cond_25

    invoke-virtual {p1, v5, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    invoke-virtual {v2, v5}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LaM/x;->a:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_25
    return-void
.end method

.method public a(ILam/b;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v3, 0x2

    iget v1, p0, LaM/x;->c:I

    if-eq p1, v1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    invoke-virtual {p2, v3}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2, v3}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    invoke-virtual {v1, v3}, Lam/b;->k(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, LaM/x;->a:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, LaM/x;->c(ILjava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_6
.end method

.method public b()Lam/b;
    .registers 5

    new-instance v1, Lam/b;

    sget-object v0, LbC/j;->a:Lam/e;

    invoke-direct {v1, v0}, Lam/b;-><init>(Lam/e;)V

    const/4 v0, 0x1

    iget v2, p0, LaM/x;->c:I

    invoke-virtual {v1, v0, v2}, Lam/b;->h(II)V

    iget-object v0, p0, LaM/x;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0}, Lam/b;->a(ILam/b;)V

    goto :goto_17

    :cond_28
    return-object v1
.end method

.method public b(I)Ljava/util/List;
    .registers 5

    iget v0, p0, LaM/x;->c:I

    if-eq p1, v0, :cond_9

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, LaM/x;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_27
    move-object v0, v1

    goto :goto_8
.end method

.method public b(ILjava/lang/String;)V
    .registers 4

    iget v0, p0, LaM/x;->c:I

    if-eq p1, v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, LaM/x;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, LaM/x;->c(ILjava/lang/String;)V

    goto :goto_4
.end method

.method public b(ILam/b;)Z
    .registers 4

    invoke-virtual {p0, p1, p2}, LaM/x;->a(ILam/b;)Z

    move-result v0

    return v0
.end method

.method public c(I)V
    .registers 3

    iget v0, p0, LaM/x;->c:I

    if-ne p1, v0, :cond_7

    invoke-virtual {p0}, LaM/x;->a()V

    :cond_7
    return-void
.end method
