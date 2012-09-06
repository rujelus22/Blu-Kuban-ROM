.class final Lcom/google/common/collect/ImmutableSortedAsList;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/kb;


# instance fields
.field private final transient backingList:Lcom/google/common/collect/ImmutableList;

.field private final transient backingSet:Lcom/google/common/collect/ImmutableSortedSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingSet:Lcom/google/common/collect/ImmutableSortedSet;

    .line 37
    iput-object p2, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingList:Lcom/google/common/collect/ImmutableList;

    .line 38
    return-void
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingSet:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingSet:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    return v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingSet:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method final isPartialView()Z
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public final iterator()Lcom/google/common/collect/mt;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedAsList;->iterator()Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingSet:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final listIterator()Lcom/google/common/collect/mu;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->listIterator()Lcom/google/common/collect/mu;

    move-result-object v0

    return-object v0
.end method

.method public final listIterator(I)Lcom/google/common/collect/mu;
    .registers 3
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->listIterator(I)Lcom/google/common/collect/mu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic listIterator()Ljava/util/ListIterator;
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedAsList;->listIterator()Lcom/google/common/collect/mu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .parameter

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedAsList;->listIterator(I)Lcom/google/common/collect/mu;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public final subList(II)Lcom/google/common/collect/ImmutableList;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedAsList;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/ag;->a(III)V

    .line 63
    if-ne p1, p2, :cond_e

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingSet:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_d
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedAsList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method final writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 71
    new-instance v0, Lcom/google/common/collect/ImmutableAsList$SerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingSet:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableAsList$SerializedForm;-><init>(Lcom/google/common/collect/ImmutableCollection;)V

    return-object v0
.end method
