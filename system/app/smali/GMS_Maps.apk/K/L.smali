.class LK/L;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Collection;


# instance fields
.field final a:Ljava/util/Collection;

.field final b:Lcom/google/common/base/w;


# direct methods
.method constructor <init>(Ljava/util/Collection;Lcom/google/common/base/w;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK/L;->a:Ljava/util/Collection;

    iput-object p2, p0, LK/L;->b:Lcom/google/common/base/w;

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/base/w;)LK/L;
    .registers 5

    new-instance v0, LK/L;

    iget-object v1, p0, LK/L;->a:Ljava/util/Collection;

    iget-object v2, p0, LK/L;->b:Lcom/google/common/base/w;

    invoke-static {v2, p1}, Lcom/google/common/base/x;->a(Lcom/google/common/base/w;Lcom/google/common/base/w;)Lcom/google/common/base/w;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LK/L;-><init>(Ljava/util/Collection;Lcom/google/common/base/w;)V

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, LK/L;->b:Lcom/google/common/base/w;

    invoke-interface {v0, p1}, Lcom/google/common/base/w;->a(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/v;->a(Z)V

    iget-object v0, p0, LK/L;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 5

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, LK/L;->b:Lcom/google/common/base/w;

    invoke-interface {v2, v1}, Lcom/google/common/base/w;->a(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/v;->a(Z)V

    goto :goto_4

    :cond_18
    iget-object v0, p0, LK/L;->a:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .registers 3

    iget-object v0, p0, LK/L;->a:Ljava/util/Collection;

    iget-object v1, p0, LK/L;->b:Lcom/google/common/base/w;

    invoke-static {v0, v1}, LK/bF;->a(Ljava/lang/Iterable;Lcom/google/common/base/w;)Z

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, LK/L;->b:Lcom/google/common/base/w;

    invoke-interface {v1, p1}, Lcom/google/common/base/w;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, LK/L;->a:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_e} :catch_15
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_e} :catch_13

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    :goto_12
    return v0

    :catch_13
    move-exception v1

    goto :goto_12

    :catch_15
    move-exception v1

    goto :goto_12
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 4

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, LK/L;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x0

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x1

    goto :goto_15
.end method

.method public isEmpty()Z
    .registers 3

    iget-object v0, p0, LK/L;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, LK/L;->b:Lcom/google/common/base/w;

    invoke-static {v0, v1}, LK/bI;->c(Ljava/util/Iterator;Lcom/google/common/base/w;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    iget-object v0, p0, LK/L;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, LK/L;->b:Lcom/google/common/base/w;

    invoke-static {v0, v1}, LK/bI;->b(Ljava/util/Iterator;Lcom/google/common/base/w;)LK/cC;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, LK/L;->b:Lcom/google/common/base/w;

    invoke-interface {v1, p1}, Lcom/google/common/base/w;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, LK/L;->a:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_e} :catch_15
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_e} :catch_13

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    :goto_12
    return v0

    :catch_13
    move-exception v1

    goto :goto_12

    :catch_15
    move-exception v1

    goto :goto_12
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4

    invoke-static {p1}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, LK/M;

    invoke-direct {v0, p0, p1}, LK/M;-><init>(LK/L;Ljava/util/Collection;)V

    iget-object v1, p0, LK/L;->a:Ljava/util/Collection;

    invoke-static {v1, v0}, LK/bF;->a(Ljava/lang/Iterable;Lcom/google/common/base/w;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 4

    invoke-static {p1}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, LK/N;

    invoke-direct {v0, p0, p1}, LK/N;-><init>(LK/L;Ljava/util/Collection;)V

    iget-object v1, p0, LK/L;->a:Ljava/util/Collection;

    invoke-static {v1, v0}, LK/bF;->a(Ljava/lang/Iterable;Lcom/google/common/base/w;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    invoke-virtual {p0}, LK/L;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, LK/bI;->a(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, LK/L;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, LK/bR;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, LK/L;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, LK/bR;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, LK/L;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, LK/bI;->b(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
