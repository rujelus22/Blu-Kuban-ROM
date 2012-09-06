.class public abstract Lcom/google/common/collect/bg;
.super Lcom/google/common/collect/bj;
.source "SourceFile"

# interfaces
.implements Ljava/util/Collection;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/common/collect/bj;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/util/Collection;)Z
    .registers 4
    .parameter

    .prologue
    .line 142
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 143
    invoke-virtual {p0, v1}, Lcom/google/common/collect/bg;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 144
    const/4 v0, 0x0

    .line 147
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x1

    goto :goto_15
.end method

.method protected a([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 263
    invoke-static {p0, p1}, Lcom/google/common/collect/cU;->a(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/common/collect/bg;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/google/common/collect/bg;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected abstract b()Ljava/util/Collection;
.end method

.method protected b(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/google/common/collect/bg;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/bZ;->a(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 240
    invoke-static {p0}, Lcom/google/common/collect/R;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/google/common/collect/bg;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/bZ;->b(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/common/collect/bg;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 111
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/google/common/collect/bg;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/google/common/collect/bg;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected synthetic d()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/common/collect/bg;->b()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected e()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/google/common/collect/bg;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 252
    invoke-virtual {p0, v0}, Lcom/google/common/collect/bg;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/common/collect/bg;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/common/collect/bg;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/common/collect/bg;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/common/collect/bg;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/google/common/collect/bg;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/common/collect/bg;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/common/collect/bg;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/google/common/collect/bg;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
