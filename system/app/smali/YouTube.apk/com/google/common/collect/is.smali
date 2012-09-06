.class final Lcom/google/common/collect/is;
.super Lcom/google/common/collect/ak;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/iq;

.field final synthetic b:Lcom/google/common/collect/iq;


# virtual methods
.method public final count(Ljava/lang/Object;)I
    .registers 4
    .parameter

    .prologue
    .line 501
    iget-object v0, p0, Lcom/google/common/collect/is;->a:Lcom/google/common/collect/iq;

    invoke-interface {v0, p1}, Lcom/google/common/collect/iq;->count(Ljava/lang/Object;)I

    move-result v0

    .line 502
    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lcom/google/common/collect/is;->b:Lcom/google/common/collect/iq;

    invoke-interface {v1, p1}, Lcom/google/common/collect/iq;->count(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_9
.end method

.method final createElementSet()Ljava/util/Set;
    .registers 5

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/common/collect/is;->a:Lcom/google/common/collect/iq;

    invoke-interface {v0}, Lcom/google/common/collect/iq;->elementSet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/is;->b:Lcom/google/common/collect/iq;

    invoke-interface {v1}, Lcom/google/common/collect/iq;->elementSet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "set1"

    invoke-static {v0, v2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "set2"

    invoke-static {v1, v2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/common/base/Predicates;->a(Ljava/util/Collection;)Lcom/google/common/base/ah;

    move-result-object v2

    new-instance v3, Lcom/google/common/collect/jw;

    invoke-direct {v3, v0, v2, v1}, Lcom/google/common/collect/jw;-><init>(Ljava/util/Set;Lcom/google/common/base/ah;Ljava/util/Set;)V

    return-object v3
.end method

.method final distinctElements()I
    .registers 2

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/google/common/collect/is;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method final entryIterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 513
    iget-object v0, p0, Lcom/google/common/collect/is;->a:Lcom/google/common/collect/iq;

    invoke-interface {v0}, Lcom/google/common/collect/iq;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 514
    new-instance v1, Lcom/google/common/collect/it;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/it;-><init>(Lcom/google/common/collect/is;Ljava/util/Iterator;)V

    return-object v1
.end method
