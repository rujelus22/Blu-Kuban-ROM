.class final Lcom/google/common/collect/DescendingImmutableSortedMultiset;
.super Lcom/google/common/collect/ImmutableSortedMultiset;
.source "SourceFile"


# instance fields
.field private final transient forward:Lcom/google/common/collect/ImmutableSortedMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMultiset;)V
    .registers 3
    .parameter

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSortedMultiset;->reverseComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableSortedMultiset;-><init>(Ljava/util/Comparator;)V

    .line 29
    iput-object p1, p0, Lcom/google/common/collect/DescendingImmutableSortedMultiset;->forward:Lcom/google/common/collect/ImmutableSortedMultiset;

    .line 30
    return-void
.end method


# virtual methods
.method public final count(Ljava/lang/Object;)I
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/common/collect/DescendingImmutableSortedMultiset;->forward:Lcom/google/common/collect/ImmutableSortedMultiset;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSortedMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method final createDescendingElementSet()Lcom/google/common/collect/ImmutableSortedSet;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/common/collect/DescendingImmutableSortedMultiset;->forward:Lcom/google/common/collect/ImmutableSortedMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method final createElementSet()Lcom/google/common/collect/ImmutableSortedSet;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/common/collect/DescendingImmutableSortedMultiset;->forward:Lcom/google/common/collect/ImmutableSortedMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->createDescendingElementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method final descendingEntryIterator()Lcom/google/common/collect/mt;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/common/collect/DescendingImmutableSortedMultiset;->forward:Lcom/google/common/collect/ImmutableSortedMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->entryIterator()Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method public final descendingMultiset()Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/common/collect/DescendingImmutableSortedMultiset;->forward:Lcom/google/common/collect/ImmutableSortedMultiset;

    return-object v0
.end method

.method public final bridge synthetic descendingMultiset()Lcom/google/common/collect/kg;
    .registers 2

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/google/common/collect/DescendingImmutableSortedMultiset;->descendingMultiset()Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method final distinctElements()I
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/common/collect/DescendingImmutableSortedMultiset;->forward:Lcom/google/common/collect/ImmutableSortedMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->distinctElements()I

    move-result v0

    return v0
.end method

.method final entryIterator()Lcom/google/common/collect/mt;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/common/collect/DescendingImmutableSortedMultiset;->forward:Lcom/google/common/collect/ImmutableSortedMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->descendingEntryIterator()Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method public final firstEntry()Lcom/google/common/collect/ir;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/common/collect/DescendingImmutableSortedMultiset;->forward:Lcom/google/common/collect/ImmutableSortedMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->lastEntry()Lcom/google/common/collect/ir;

    move-result-object v0

    return-object v0
.end method

.method public final headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/common/collect/DescendingImmutableSortedMultiset;->forward:Lcom/google/common/collect/ImmutableSortedMultiset;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMultiset;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->descendingMultiset()Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kg;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/DescendingImmutableSortedMultiset;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method final isPartialView()Z
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/common/collect/DescendingImmutableSortedMultiset;->forward:Lcom/google/common/collect/ImmutableSortedMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public final lastEntry()Lcom/google/common/collect/ir;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/common/collect/DescendingImmutableSortedMultiset;->forward:Lcom/google/common/collect/ImmutableSortedMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->firstEntry()Lcom/google/common/collect/ir;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/common/collect/DescendingImmutableSortedMultiset;->forward:Lcom/google/common/collect/ImmutableSortedMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->size()I

    move-result v0

    return v0
.end method

.method public final tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/common/collect/DescendingImmutableSortedMultiset;->forward:Lcom/google/common/collect/ImmutableSortedMultiset;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMultiset;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->descendingMultiset()Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kg;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/DescendingImmutableSortedMultiset;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method
