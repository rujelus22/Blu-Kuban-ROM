.class final Lcom/google/common/collect/ku;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/kt;


# direct methods
.method constructor <init>(Lcom/google/common/collect/kt;)V
    .registers 2
    .parameter

    .prologue
    .line 562
    iput-object p1, p0, Lcom/google/common/collect/ku;->a:Lcom/google/common/collect/kt;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 3

    .prologue
    .line 582
    invoke-static {}, Lcom/google/common/base/Predicates;->a()Lcom/google/common/base/ah;

    move-result-object v0

    .line 583
    iget-object v1, p0, Lcom/google/common/collect/ku;->a:Lcom/google/common/collect/kt;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/kt;->a(Lcom/google/common/base/ah;)Z

    .line 584
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    .line 587
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_1b

    .line 588
    check-cast p1, Ljava/util/Map$Entry;

    .line 589
    iget-object v0, p0, Lcom/google/common/collect/ku;->a:Lcom/google/common/collect/kt;

    iget-object v0, v0, Lcom/google/common/collect/kt;->d:Lcom/google/common/collect/StandardTable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/ku;->a:Lcom/google/common/collect/kt;

    iget-object v2, v2, Lcom/google/common/collect/kt;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    #calls: Lcom/google/common/collect/StandardTable;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/StandardTable;->access$300(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 591
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public final isEmpty()Z
    .registers 3

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/common/collect/ku;->a:Lcom/google/common/collect/kt;

    iget-object v0, v0, Lcom/google/common/collect/kt;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/ku;->a:Lcom/google/common/collect/kt;

    iget-object v1, v1, Lcom/google/common/collect/kt;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/StandardTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 564
    new-instance v0, Lcom/google/common/collect/kv;

    iget-object v1, p0, Lcom/google/common/collect/ku;->a:Lcom/google/common/collect/kt;

    invoke-direct {v0, v1}, Lcom/google/common/collect/kv;-><init>(Lcom/google/common/collect/kt;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    .line 595
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_1b

    .line 596
    check-cast p1, Ljava/util/Map$Entry;

    .line 597
    iget-object v0, p0, Lcom/google/common/collect/ku;->a:Lcom/google/common/collect/kt;

    iget-object v0, v0, Lcom/google/common/collect/kt;->d:Lcom/google/common/collect/StandardTable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/ku;->a:Lcom/google/common/collect/kt;

    iget-object v2, v2, Lcom/google/common/collect/kt;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    #calls: Lcom/google/common/collect/StandardTable;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/StandardTable;->access$400(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 599
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 5
    .parameter

    .prologue
    .line 603
    const/4 v0, 0x0

    .line 604
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 605
    invoke-virtual {p0, v2}, Lcom/google/common/collect/ku;->remove(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_5

    .line 607
    :cond_15
    return v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 4
    .parameter

    .prologue
    .line 611
    iget-object v0, p0, Lcom/google/common/collect/ku;->a:Lcom/google/common/collect/kt;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->a(Ljava/util/Collection;)Lcom/google/common/base/ah;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Predicates;->a(Lcom/google/common/base/ah;)Lcom/google/common/base/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/kt;->a(Lcom/google/common/base/ah;)Z

    move-result v0

    return v0
.end method

.method public final size()I
    .registers 5

    .prologue
    .line 568
    const/4 v0, 0x0

    .line 569
    iget-object v1, p0, Lcom/google/common/collect/ku;->a:Lcom/google/common/collect/kt;

    iget-object v1, v1, Lcom/google/common/collect/kt;->d:Lcom/google/common/collect/StandardTable;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 570
    iget-object v3, p0, Lcom/google/common/collect/ku;->a:Lcom/google/common/collect/kt;

    iget-object v3, v3, Lcom/google/common/collect/kt;->a:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 571
    add-int/lit8 v0, v1, 0x1

    :goto_28
    move v1, v0

    goto :goto_10

    .line 574
    :cond_2a
    return v1

    :cond_2b
    move v0, v1

    goto :goto_28
.end method
