.class final Lcom/google/common/collect/EmptyImmutableSortedMultiset;
.super Lcom/google/common/collect/ImmutableSortedMultiset;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .registers 2
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSortedMultiset;-><init>(Ljava/util/Comparator;)V

    .line 31
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
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method final createDescendingElementSet()Lcom/google/common/collect/ImmutableSortedSet;
    .registers 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableSortedMultiset;->reverseComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method final createElementSet()Lcom/google/common/collect/ImmutableSortedSet;
    .registers 2

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyImmutableSortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method final descendingEntryIterator()Lcom/google/common/collect/mt;
    .registers 2

    .prologue
    .line 65
    invoke-static {}, Lcom/google/common/collect/ee;->a()Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method final distinctElements()I
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method final entryIterator()Lcom/google/common/collect/mt;
    .registers 2

    .prologue
    .line 70
    invoke-static {}, Lcom/google/common/collect/ee;->a()Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method public final firstEntry()Lcom/google/common/collect/ir;
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public final headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-object p0
.end method

.method public final bridge synthetic headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kg;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/EmptyImmutableSortedMultiset;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method final isPartialView()Z
    .registers 2

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public final lastEntry()Lcom/google/common/collect/ir;
    .registers 2

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public final tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-object p0
.end method

.method public final bridge synthetic tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kg;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/EmptyImmutableSortedMultiset;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method
