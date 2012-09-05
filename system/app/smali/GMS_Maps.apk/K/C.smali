.class LK/C;
.super LK/A;

# interfaces
.implements Ljava/util/List;


# instance fields
.field final synthetic g:LK/r;


# direct methods
.method constructor <init>(LK/r;Ljava/lang/Object;Ljava/util/List;LK/A;)V
    .registers 5

    iput-object p1, p0, LK/C;->g:LK/r;

    invoke-direct {p0, p1, p2, p3, p4}, LK/A;-><init>(LK/r;Ljava/lang/Object;Ljava/util/Collection;LK/A;)V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5

    invoke-virtual {p0}, LK/C;->a()V

    invoke-virtual {p0}, LK/C;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    invoke-virtual {p0}, LK/C;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, LK/C;->g:LK/r;

    invoke-static {v1}, LK/r;->c(LK/r;)I

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, LK/C;->d()V

    :cond_1c
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 7

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, LK/C;->size()I

    move-result v1

    invoke-virtual {p0}, LK/C;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, LK/C;->e()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    iget-object v3, p0, LK/C;->g:LK/r;

    sub-int/2addr v2, v1

    invoke-static {v3, v2}, LK/r;->a(LK/r;I)I

    if-nez v1, :cond_7

    invoke-virtual {p0}, LK/C;->d()V

    goto :goto_7
.end method

.method g()Ljava/util/List;
    .registers 2

    invoke-virtual {p0}, LK/C;->e()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, LK/C;->a()V

    invoke-virtual {p0}, LK/C;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3

    invoke-virtual {p0}, LK/C;->a()V

    invoke-virtual {p0}, LK/C;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3

    invoke-virtual {p0}, LK/C;->a()V

    invoke-virtual {p0}, LK/C;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2

    invoke-virtual {p0}, LK/C;->a()V

    new-instance v0, LK/D;

    invoke-direct {v0, p0}, LK/D;-><init>(LK/C;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3

    invoke-virtual {p0}, LK/C;->a()V

    new-instance v0, LK/D;

    invoke-direct {v0, p0, p1}, LK/D;-><init>(LK/C;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, LK/C;->a()V

    invoke-virtual {p0}, LK/C;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, LK/C;->g:LK/r;

    invoke-static {v1}, LK/r;->b(LK/r;)I

    invoke-virtual {p0}, LK/C;->b()V

    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, LK/C;->a()V

    invoke-virtual {p0}, LK/C;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 7

    invoke-virtual {p0}, LK/C;->a()V

    iget-object v0, p0, LK/C;->g:LK/r;

    invoke-virtual {p0}, LK/C;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, LK/C;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, LK/C;->f()LK/A;

    move-result-object v3

    if-nez v3, :cond_1c

    :goto_17
    invoke-static {v0, v1, v2, p0}, LK/r;->a(LK/r;Ljava/lang/Object;Ljava/util/List;LK/A;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1c
    invoke-virtual {p0}, LK/C;->f()LK/A;

    move-result-object p0

    goto :goto_17
.end method
