.class LK/A;
.super Ljava/util/AbstractCollection;


# instance fields
.field final b:Ljava/lang/Object;

.field c:Ljava/util/Collection;

.field final d:LK/A;

.field final e:Ljava/util/Collection;

.field final synthetic f:LK/r;


# direct methods
.method constructor <init>(LK/r;Ljava/lang/Object;Ljava/util/Collection;LK/A;)V
    .registers 6

    iput-object p1, p0, LK/A;->f:LK/r;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p2, p0, LK/A;->b:Ljava/lang/Object;

    iput-object p3, p0, LK/A;->c:Ljava/util/Collection;

    iput-object p4, p0, LK/A;->d:LK/A;

    if-nez p4, :cond_11

    const/4 v0, 0x0

    :goto_e
    iput-object v0, p0, LK/A;->e:Ljava/util/Collection;

    return-void

    :cond_11
    invoke-virtual {p4}, LK/A;->e()Ljava/util/Collection;

    move-result-object v0

    goto :goto_e
.end method


# virtual methods
.method a()V
    .registers 3

    iget-object v0, p0, LK/A;->d:LK/A;

    if-eqz v0, :cond_19

    iget-object v0, p0, LK/A;->d:LK/A;

    invoke-virtual {v0}, LK/A;->a()V

    iget-object v0, p0, LK/A;->d:LK/A;

    invoke-virtual {v0}, LK/A;->e()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, LK/A;->e:Ljava/util/Collection;

    if-eq v0, v1, :cond_33

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_19
    iget-object v0, p0, LK/A;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, LK/A;->f:LK/r;

    invoke-static {v0}, LK/r;->a(LK/r;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, LK/A;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_33

    iput-object v0, p0, LK/A;->c:Ljava/util/Collection;

    :cond_33
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 5

    invoke-virtual {p0}, LK/A;->a()V

    iget-object v0, p0, LK/A;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    iget-object v1, p0, LK/A;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v2, p0, LK/A;->f:LK/r;

    invoke-static {v2}, LK/r;->c(LK/r;)I

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, LK/A;->d()V

    :cond_1b
    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 6

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, LK/A;->size()I

    move-result v1

    iget-object v0, p0, LK/A;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v2, p0, LK/A;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    iget-object v3, p0, LK/A;->f:LK/r;

    sub-int/2addr v2, v1

    invoke-static {v3, v2}, LK/r;->a(LK/r;I)I

    if-nez v1, :cond_7

    invoke-virtual {p0}, LK/A;->d()V

    goto :goto_7
.end method

.method b()V
    .registers 3

    iget-object v0, p0, LK/A;->d:LK/A;

    if-eqz v0, :cond_a

    iget-object v0, p0, LK/A;->d:LK/A;

    invoke-virtual {v0}, LK/A;->b()V

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, LK/A;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, LK/A;->f:LK/r;

    invoke-static {v0}, LK/r;->a(LK/r;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, LK/A;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method c()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, LK/A;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public clear()V
    .registers 3

    invoke-virtual {p0}, LK/A;->size()I

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v1, p0, LK/A;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    iget-object v1, p0, LK/A;->f:LK/r;

    invoke-static {v1, v0}, LK/r;->b(LK/r;I)I

    invoke-virtual {p0}, LK/A;->b()V

    goto :goto_6
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0}, LK/A;->a()V

    iget-object v0, p0, LK/A;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3

    invoke-virtual {p0}, LK/A;->a()V

    iget-object v0, p0, LK/A;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method d()V
    .registers 4

    iget-object v0, p0, LK/A;->d:LK/A;

    if-eqz v0, :cond_a

    iget-object v0, p0, LK/A;->d:LK/A;

    invoke-virtual {v0}, LK/A;->d()V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, LK/A;->f:LK/r;

    invoke-static {v0}, LK/r;->a(LK/r;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, LK/A;->b:Ljava/lang/Object;

    iget-object v2, p0, LK/A;->c:Ljava/util/Collection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9
.end method

.method e()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, LK/A;->c:Ljava/util/Collection;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, LK/A;->a()V

    iget-object v0, p0, LK/A;->c:Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method f()LK/A;
    .registers 2

    iget-object v0, p0, LK/A;->d:LK/A;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, LK/A;->a()V

    iget-object v0, p0, LK/A;->c:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, LK/A;->a()V

    new-instance v0, LK/B;

    invoke-direct {v0, p0}, LK/B;-><init>(LK/A;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    invoke-virtual {p0}, LK/A;->a()V

    iget-object v0, p0, LK/A;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v1, p0, LK/A;->f:LK/r;

    invoke-static {v1}, LK/r;->b(LK/r;)I

    invoke-virtual {p0}, LK/A;->b()V

    :cond_13
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 6

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, LK/A;->size()I

    move-result v1

    iget-object v0, p0, LK/A;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v2, p0, LK/A;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    iget-object v3, p0, LK/A;->f:LK/r;

    sub-int v1, v2, v1

    invoke-static {v3, v1}, LK/r;->a(LK/r;I)I

    invoke-virtual {p0}, LK/A;->b()V

    goto :goto_7
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 6

    invoke-static {p1}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, LK/A;->size()I

    move-result v0

    iget-object v1, p0, LK/A;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v2, p0, LK/A;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    iget-object v3, p0, LK/A;->f:LK/r;

    sub-int v0, v2, v0

    invoke-static {v3, v0}, LK/r;->a(LK/r;I)I

    invoke-virtual {p0}, LK/A;->b()V

    :cond_1f
    return v1
.end method

.method public size()I
    .registers 2

    invoke-virtual {p0}, LK/A;->a()V

    iget-object v0, p0, LK/A;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, LK/A;->a()V

    iget-object v0, p0, LK/A;->c:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
