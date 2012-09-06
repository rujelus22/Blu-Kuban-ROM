.class final Lcom/google/common/collect/Multisets$UnmodifiableSortedMultiset;
.super Lcom/google/common/collect/Multisets$UnmodifiableMultiset;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/kg;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient descendingMultiset:Lcom/google/common/collect/Multisets$UnmodifiableSortedMultiset;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/kg;)V
    .registers 2
    .parameter

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;-><init>(Lcom/google/common/collect/iq;)V

    .line 203
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/kg;Lcom/google/common/collect/is;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/google/common/collect/Multisets$UnmodifiableSortedMultiset;-><init>(Lcom/google/common/collect/kg;)V

    return-void
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .registers 2

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/kg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kg;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method final bridge synthetic createElementSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$UnmodifiableSortedMultiset;->createElementSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method final createElementSet()Ljava/util/SortedSet;
    .registers 2

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/kg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kg;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic delegate()Lcom/google/common/collect/iq;
    .registers 2

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/kg;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Lcom/google/common/collect/kg;
    .registers 2

    .prologue
    .line 207
    invoke-super {p0}, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->delegate()Lcom/google/common/collect/iq;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/kg;

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/kg;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/kg;

    move-result-object v0

    return-object v0
.end method

.method public final descendingMultiset()Lcom/google/common/collect/kg;
    .registers 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableSortedMultiset;->descendingMultiset:Lcom/google/common/collect/Multisets$UnmodifiableSortedMultiset;

    .line 230
    if-nez v0, :cond_15

    .line 231
    new-instance v0, Lcom/google/common/collect/Multisets$UnmodifiableSortedMultiset;

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/kg;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/kg;->descendingMultiset()Lcom/google/common/collect/kg;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/Multisets$UnmodifiableSortedMultiset;-><init>(Lcom/google/common/collect/kg;)V

    .line 233
    iput-object p0, v0, Lcom/google/common/collect/Multisets$UnmodifiableSortedMultiset;->descendingMultiset:Lcom/google/common/collect/Multisets$UnmodifiableSortedMultiset;

    .line 234
    iput-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableSortedMultiset;->descendingMultiset:Lcom/google/common/collect/Multisets$UnmodifiableSortedMultiset;

    .line 236
    :cond_15
    return-object v0
.end method

.method public final bridge synthetic elementSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$UnmodifiableSortedMultiset;->elementSet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final elementSet()Ljava/util/SortedSet;
    .registers 2

    .prologue
    .line 222
    invoke-super {p0}, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public final firstEntry()Lcom/google/common/collect/ir;
    .registers 2

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/kg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kg;->firstEntry()Lcom/google/common/collect/ir;

    move-result-object v0

    return-object v0
.end method

.method public final headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kg;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/kg;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/kg;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Multisets;->a(Lcom/google/common/collect/kg;)Lcom/google/common/collect/kg;

    move-result-object v0

    return-object v0
.end method

.method public final lastEntry()Lcom/google/common/collect/ir;
    .registers 2

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/kg;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/kg;->lastEntry()Lcom/google/common/collect/ir;

    move-result-object v0

    return-object v0
.end method

.method public final pollFirstEntry()Lcom/google/common/collect/ir;
    .registers 2

    .prologue
    .line 251
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLastEntry()Lcom/google/common/collect/ir;
    .registers 2

    .prologue
    .line 256
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kg;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/kg;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/common/collect/kg;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Multisets;->a(Lcom/google/common/collect/kg;)Lcom/google/common/collect/kg;

    move-result-object v0

    return-object v0
.end method

.method public final tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kg;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$UnmodifiableSortedMultiset;->delegate()Lcom/google/common/collect/kg;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/kg;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kg;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Multisets;->a(Lcom/google/common/collect/kg;)Lcom/google/common/collect/kg;

    move-result-object v0

    return-object v0
.end method
