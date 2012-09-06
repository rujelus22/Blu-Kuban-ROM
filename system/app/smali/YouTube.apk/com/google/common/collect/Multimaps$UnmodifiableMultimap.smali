.class Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;
.super Lcom/google/common/collect/cz;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Lcom/google/common/collect/hu;

.field transient entries:Ljava/util/Collection;

.field transient keySet:Ljava/util/Set;

.field transient keys:Lcom/google/common/collect/iq;

.field transient map:Ljava/util/Map;

.field transient values:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/google/common/collect/hu;)V
    .registers 3
    .parameter

    .prologue
    .line 496
    invoke-direct {p0}, Lcom/google/common/collect/cz;-><init>()V

    .line 497
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/hu;

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lcom/google/common/collect/hu;

    .line 498
    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .registers 3

    .prologue
    .line 509
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->map:Ljava/util/Map;

    .line 510
    if-nez v0, :cond_15

    .line 511
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lcom/google/common/collect/hu;

    invoke-interface {v0}, Lcom/google/common/collect/hu;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 513
    new-instance v0, Lcom/google/common/collect/in;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/in;-><init>(Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->map:Ljava/util/Map;

    .line 549
    :cond_15
    return-object v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 505
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected delegate()Lcom/google/common/collect/hu;
    .registers 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lcom/google/common/collect/hu;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate()Lcom/google/common/collect/hu;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->entries:Ljava/util/Collection;

    .line 554
    if-nez v0, :cond_10

    .line 555
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lcom/google/common/collect/hu;

    invoke-interface {v0}, Lcom/google/common/collect/hu;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Multimaps;->b(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->entries:Ljava/util/Collection;

    .line 557
    :cond_10
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lcom/google/common/collect/hu;

    invoke-interface {v0, p1}, Lcom/google/common/collect/hu;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Multimaps;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->keySet:Ljava/util/Set;

    .line 574
    if-nez v0, :cond_10

    .line 575
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lcom/google/common/collect/hu;

    invoke-interface {v0}, Lcom/google/common/collect/hu;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->keySet:Ljava/util/Set;

    .line 577
    :cond_10
    return-object v0
.end method

.method public keys()Lcom/google/common/collect/iq;
    .registers 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->keys:Lcom/google/common/collect/iq;

    .line 566
    if-nez v0, :cond_10

    .line 567
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lcom/google/common/collect/hu;

    invoke-interface {v0}, Lcom/google/common/collect/hu;->keys()Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Multisets;->a(Lcom/google/common/collect/iq;)Lcom/google/common/collect/iq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->keys:Lcom/google/common/collect/iq;

    .line 569
    :cond_10
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 581
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Lcom/google/common/collect/hu;)Z
    .registers 3
    .parameter

    .prologue
    .line 590
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 585
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 594
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 598
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 603
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->values:Ljava/util/Collection;

    .line 608
    if-nez v0, :cond_10

    .line 609
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lcom/google/common/collect/hu;

    invoke-interface {v0}, Lcom/google/common/collect/hu;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableMultimap;->values:Ljava/util/Collection;

    .line 611
    :cond_10
    return-object v0
.end method
