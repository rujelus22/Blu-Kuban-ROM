.class final LK/ag;
.super Ljava/util/AbstractSet;


# instance fields
.field final synthetic a:LK/P;


# direct methods
.method constructor <init>(LK/P;)V
    .registers 2

    iput-object p1, p0, LK/ag;->a:LK/P;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, LK/ag;->a:LK/P;

    invoke-virtual {v0}, LK/P;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, p0, LK/ag;->a:LK/P;

    invoke-virtual {v2, v1}, LK/P;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, p0, LK/ag;->a:LK/P;

    iget-object v2, v2, LK/P;->f:Lcom/google/common/base/b;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/google/common/base/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, LK/ag;->a:LK/P;

    invoke-virtual {v0}, LK/P;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    new-instance v0, LK/af;

    iget-object v1, p0, LK/ag;->a:LK/P;

    invoke-direct {v0, v1}, LK/af;-><init>(LK/P;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, p0, LK/ag;->a:LK/P;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, LK/P;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, LK/ag;->a:LK/P;

    invoke-virtual {v0}, LK/P;->size()I

    move-result v0

    return v0
.end method
