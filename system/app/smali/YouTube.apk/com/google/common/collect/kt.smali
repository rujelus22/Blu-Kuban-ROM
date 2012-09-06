.class final Lcom/google/common/collect/kt;
.super Lcom/google/common/collect/hf;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Object;

.field b:Lcom/google/common/collect/kz;

.field c:Lcom/google/common/collect/kx;

.field final synthetic d:Lcom/google/common/collect/StandardTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/google/common/collect/kt;->d:Lcom/google/common/collect/StandardTable;

    invoke-direct {p0}, Lcom/google/common/collect/hf;-><init>()V

    .line 507
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/kt;->a:Ljava/lang/Object;

    .line 508
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .registers 2

    .prologue
    .line 527
    new-instance v0, Lcom/google/common/collect/ku;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ku;-><init>(Lcom/google/common/collect/kt;)V

    return-object v0
.end method

.method final a(Lcom/google/common/base/ah;)Z
    .registers 8
    .parameter

    .prologue
    .line 542
    const/4 v0, 0x0

    .line 543
    iget-object v1, p0, Lcom/google/common/collect/kt;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    .line 545
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 546
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 547
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 548
    iget-object v4, p0, Lcom/google/common/collect/kt;->a:Ljava/lang/Object;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 549
    if-eqz v4, :cond_46

    new-instance v5, Lcom/google/common/collect/ImmutableEntry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v5, v0, v4}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v5}, Lcom/google/common/base/ah;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 552
    iget-object v0, p0, Lcom/google/common/collect/kt;->a:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    const/4 v2, 0x1

    .line 554
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 555
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :cond_46
    move v0, v2

    move v2, v0

    .line 558
    goto :goto_e

    .line 559
    :cond_49
    return v2
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/common/collect/kt;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/kt;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/StandardTable;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/common/collect/kt;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/kt;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/StandardTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 642
    iget-object v0, p0, Lcom/google/common/collect/kt;->c:Lcom/google/common/collect/kx;

    .line 643
    if-nez v0, :cond_b

    new-instance v0, Lcom/google/common/collect/kx;

    invoke-direct {v0, p0}, Lcom/google/common/collect/kx;-><init>(Lcom/google/common/collect/kt;)V

    iput-object v0, p0, Lcom/google/common/collect/kt;->c:Lcom/google/common/collect/kx;

    :cond_b
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 511
    iget-object v0, p0, Lcom/google/common/collect/kt;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/kt;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/common/collect/StandardTable;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 523
    iget-object v0, p0, Lcom/google/common/collect/kt;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/kt;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/StandardTable;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/google/common/collect/kt;->b:Lcom/google/common/collect/kz;

    .line 534
    if-nez v0, :cond_b

    new-instance v0, Lcom/google/common/collect/kz;

    invoke-direct {v0, p0}, Lcom/google/common/collect/kz;-><init>(Lcom/google/common/collect/kt;)V

    iput-object v0, p0, Lcom/google/common/collect/kt;->b:Lcom/google/common/collect/kz;

    :cond_b
    return-object v0
.end method
