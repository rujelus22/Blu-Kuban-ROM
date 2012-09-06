.class Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;
.super Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/km;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lcom/google/common/collect/km;)V
    .registers 2
    .parameter

    .prologue
    .line 709
    invoke-direct {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;-><init>(Lcom/google/common/collect/jv;)V

    .line 710
    return-void
.end method


# virtual methods
.method public bridge synthetic delegate()Lcom/google/common/collect/hu;
    .registers 2

    .prologue
    .line 706
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->delegate()Lcom/google/common/collect/km;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic delegate()Lcom/google/common/collect/jv;
    .registers 2

    .prologue
    .line 706
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->delegate()Lcom/google/common/collect/km;

    move-result-object v0

    return-object v0
.end method

.method public delegate()Lcom/google/common/collect/km;
    .registers 2

    .prologue
    .line 712
    invoke-super {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSetMultimap;->delegate()Lcom/google/common/collect/jv;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/km;

    return-object v0
.end method

.method public bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 706
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->delegate()Lcom/google/common/collect/km;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 706
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .parameter

    .prologue
    .line 706
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3
    .parameter

    .prologue
    .line 715
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->delegate()Lcom/google/common/collect/km;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/km;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 706
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .parameter

    .prologue
    .line 706
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3
    .parameter

    .prologue
    .line 718
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 706
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 706
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 722
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public valueComparator()Ljava/util/Comparator;
    .registers 2

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->delegate()Lcom/google/common/collect/km;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/km;->valueComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method
