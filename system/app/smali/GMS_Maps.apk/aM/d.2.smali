.class public LaM/d;
.super Ljava/lang/Object;

# interfaces
.implements LaM/w;


# instance fields
.field private a:Ljava/util/Map;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, LaM/d;->a:Ljava/util/Map;

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaM/d;->b:Ljava/util/List;

    return-void
.end method

.method private b(Lam/b;)LaM/w;
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    invoke-direct {p0, v0}, LaM/d;->d(I)LaM/x;

    move-result-object v0

    invoke-virtual {v0, p1}, LaM/x;->a(Lam/b;)V

    return-object v0
.end method

.method private d(I)LaM/x;
    .registers 5

    new-instance v1, LaM/x;

    invoke-direct {v1, p1}, LaM/x;-><init>(I)V

    iget-object v0, p0, LaM/d;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LaM/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/y;

    invoke-virtual {v1, v0}, LaM/x;->a(LaM/y;)V

    goto :goto_14

    :cond_24
    return-object v1
.end method

.method private e(I)LaM/w;
    .registers 4

    iget-object v0, p0, LaM/d;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/w;

    return-object v0
.end method


# virtual methods
.method public a(I)LaM/w;
    .registers 3

    invoke-direct {p0, p1}, LaM/d;->e(I)LaM/w;

    move-result-object v0

    if-eqz v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    invoke-direct {p0, p1}, LaM/d;->d(I)LaM/x;

    move-result-object v0

    goto :goto_6
.end method

.method public a(ILjava/lang/String;)Lam/b;
    .registers 4

    invoke-direct {p0, p1}, LaM/d;->e(I)LaM/w;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1, p2}, LaM/w;->a(ILjava/lang/String;)Lam/b;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, LaM/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a(LaM/y;)V
    .registers 4

    iget-object v0, p0, LaM/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LaM/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/x;

    invoke-virtual {v0, p1}, LaM/x;->a(LaM/y;)V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public a(Lam/b;)V
    .registers 6

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lam/b;->l(I)I

    move-result v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v1, :cond_12

    invoke-virtual {p1, v3, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    invoke-direct {p0, v2}, LaM/d;->b(Lam/b;)LaM/w;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_12
    return-void
.end method

.method public a(ILam/b;)Z
    .registers 4

    invoke-virtual {p0, p1}, LaM/d;->a(I)LaM/w;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LaM/w;->a(ILam/b;)Z

    move-result v0

    return v0
.end method

.method public b(I)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1}, LaM/d;->e(I)LaM/w;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, LaM/w;->b(I)Ljava/util/List;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_a
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, LaM/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/x;

    invoke-virtual {v0}, LaM/x;->a()V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public b(ILjava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1}, LaM/d;->a(I)LaM/w;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LaM/w;->b(ILjava/lang/String;)V

    return-void
.end method

.method public b(ILam/b;)Z
    .registers 4

    invoke-virtual {p0, p1, p2}, LaM/d;->a(ILam/b;)Z

    move-result v0

    return v0
.end method

.method public c()Lam/b;
    .registers 5

    new-instance v1, Lam/b;

    sget-object v0, LbC/j;->b:Lam/e;

    invoke-direct {v1, v0}, Lam/b;-><init>(Lam/e;)V

    iget-object v0, p0, LaM/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/x;

    const/4 v3, 0x1

    invoke-virtual {v0}, LaM/x;->b()Lam/b;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lam/b;->a(ILam/b;)V

    goto :goto_11

    :cond_26
    return-object v1
.end method

.method public c(I)V
    .registers 3

    invoke-direct {p0, p1}, LaM/d;->e(I)LaM/w;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, LaM/w;->c(I)V

    :cond_9
    return-void
.end method
