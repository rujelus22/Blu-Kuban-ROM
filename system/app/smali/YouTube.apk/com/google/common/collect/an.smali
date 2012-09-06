.class abstract Lcom/google/common/collect/an;
.super Lcom/google/common/collect/ak;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/kg;


# instance fields
.field final comparator:Ljava/util/Comparator;

.field private transient descendingMultiset:Lcom/google/common/collect/kg;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/an;-><init>(Ljava/util/Comparator;)V

    .line 42
    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/common/collect/ak;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/an;->comparator:Ljava/util/Comparator;

    .line 46
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/common/collect/an;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method createDescendingMultiset()Lcom/google/common/collect/kg;
    .registers 2

    .prologue
    .line 125
    new-instance v0, Lcom/google/common/collect/ap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ap;-><init>(Lcom/google/common/collect/an;)V

    return-object v0
.end method

.method bridge synthetic createElementSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/common/collect/an;->createElementSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method createElementSet()Ljava/util/SortedSet;
    .registers 2

    .prologue
    .line 55
    new-instance v0, Lcom/google/common/collect/ao;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ao;-><init>(Lcom/google/common/collect/an;)V

    return-object v0
.end method

.method abstract descendingEntryIterator()Ljava/util/Iterator;
.end method

.method descendingIterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/common/collect/an;->descendingMultiset()Lcom/google/common/collect/kg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Multisets;->b(Lcom/google/common/collect/iq;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingMultiset()Lcom/google/common/collect/kg;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/common/collect/an;->descendingMultiset:Lcom/google/common/collect/kg;

    .line 121
    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/common/collect/an;->createDescendingMultiset()Lcom/google/common/collect/kg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/an;->descendingMultiset:Lcom/google/common/collect/kg;

    :cond_a
    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/common/collect/an;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Ljava/util/SortedSet;
    .registers 2

    .prologue
    .line 50
    invoke-super {p0}, Lcom/google/common/collect/ak;->elementSet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public firstEntry()Lcom/google/common/collect/ir;
    .registers 3

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/common/collect/an;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ir;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public lastEntry()Lcom/google/common/collect/ir;
    .registers 3

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/common/collect/an;->descendingEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ir;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public pollFirstEntry()Lcom/google/common/collect/ir;
    .registers 4

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/common/collect/an;->entryIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ir;

    .line 85
    invoke-interface {v0}, Lcom/google/common/collect/ir;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/ir;->getCount()I

    move-result v0

    invoke-static {v2, v0}, Lcom/google/common/collect/Multisets;->a(Ljava/lang/Object;I)Lcom/google/common/collect/ir;

    move-result-object v0

    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 89
    :goto_1f
    return-object v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public pollLastEntry()Lcom/google/common/collect/ir;
    .registers 4

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/google/common/collect/an;->descendingEntryIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 95
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 96
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ir;

    .line 97
    invoke-interface {v0}, Lcom/google/common/collect/ir;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/ir;->getCount()I

    move-result v0

    invoke-static {v2, v0}, Lcom/google/common/collect/Multisets;->a(Ljava/lang/Object;I)Lcom/google/common/collect/ir;

    move-result-object v0

    .line 98
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 101
    :goto_1f
    return-object v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kg;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/an;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kg;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lcom/google/common/collect/kg;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kg;

    move-result-object v0

    return-object v0
.end method
