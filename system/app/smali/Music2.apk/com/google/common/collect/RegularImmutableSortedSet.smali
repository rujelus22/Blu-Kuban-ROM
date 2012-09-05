.class final Lcom/google/common/collect/RegularImmutableSortedSet;
.super Lcom/google/common/collect/ImmutableSortedSet;
.source "RegularImmutableSortedSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSortedSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final elements:[Ljava/lang/Object;

.field private final fromIndex:I

.field private final toIndex:I


# direct methods
.method constructor <init>([Ljava/lang/Object;Ljava/util/Comparator;)V
    .registers 4
    .parameter "elements"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedSet;,"Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p2, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0, p2}, Lcom/google/common/collect/ImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    .line 55
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    .line 57
    array-length v0, p1

    iput v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    .line 58
    return-void
.end method

.method constructor <init>([Ljava/lang/Object;Ljava/util/Comparator;II)V
    .registers 5
    .parameter "elements"
    .parameter
    .parameter "fromIndex"
    .parameter "toIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<-TE;>;II)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedSet;,"Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p2, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0, p2}, Lcom/google/common/collect/ImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    .line 63
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    .line 64
    iput p3, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    .line 65
    iput p4, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    .line 66
    return-void
.end method

.method private binarySearch(Ljava/lang/Object;)I
    .registers 7
    .parameter "key"

    .prologue
    .line 131
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedSet;,"Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    .line 132
    .local v1, lower:I
    iget v4, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    add-int/lit8 v3, v4, -0x1

    .line 134
    .local v3, upper:I
    :goto_6
    if-gt v1, v3, :cond_20

    .line 135
    sub-int v4, v3, v1

    div-int/lit8 v4, v4, 0x2

    add-int v2, v1, v4

    .line 136
    .local v2, middle:I
    iget-object v4, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    aget-object v4, v4, v2

    invoke-virtual {p0, p1, v4}, Lcom/google/common/collect/RegularImmutableSortedSet;->unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 137
    .local v0, c:I
    if-gez v0, :cond_1b

    .line 138
    add-int/lit8 v3, v2, -0x1

    goto :goto_6

    .line 139
    :cond_1b
    if-lez v0, :cond_23

    .line 140
    add-int/lit8 v1, v2, 0x1

    goto :goto_6

    .line 146
    .end local v0           #c:I
    .end local v2           #middle:I
    :cond_20
    neg-int v4, v1

    add-int/lit8 v2, v4, -0x1

    :cond_23
    return v2
.end method

.method private createSubset(II)Lcom/google/common/collect/ImmutableSortedSet;
    .registers 6
    .parameter "newFromIndex"
    .parameter "newToIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedSet;,"Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    if-ge p1, p2, :cond_c

    .line 243
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>([Ljava/lang/Object;Ljava/util/Comparator;II)V

    .line 246
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    goto :goto_b
.end method

.method private findSubsetIndex(Ljava/lang/Object;)I
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedSet;,"Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->binarySearch(Ljava/lang/Object;)I

    move-result v0

    .line 237
    .local v0, index:I
    if-ltz v0, :cond_7

    .end local v0           #index:I
    :goto_6
    return v0

    .restart local v0       #index:I
    :cond_7
    neg-int v1, v0

    add-int/lit8 v0, v1, -0x1

    goto :goto_6
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedSet;,"Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    const/4 v1, 0x0

    .line 84
    if-nez p1, :cond_4

    .line 90
    :cond_3
    :goto_3
    return v1

    .line 88
    :cond_4
    :try_start_4
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->binarySearch(Ljava/lang/Object;)I
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_7} :catch_c

    move-result v2

    if-ltz v2, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    .line 89
    :catch_c
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/ClassCastException;
    goto :goto_3
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedSet;,"Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, targets:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/google/common/collect/RegularImmutableSortedSet;->hasSameComparator(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    if-gt v6, v5, :cond_17

    .line 98
    :cond_12
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    .line 125
    :cond_16
    :goto_16
    return v4

    .line 105
    :cond_17
    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    .line 106
    .local v1, i:I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 107
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 110
    .local v3, target:Ljava/lang/Object;
    :cond_21
    :goto_21
    iget v6, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    if-ge v1, v6, :cond_16

    .line 114
    iget-object v6, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    aget-object v6, v6, v1

    invoke-virtual {p0, v6, v3}, Lcom/google/common/collect/RegularImmutableSortedSet;->unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 116
    .local v0, cmp:I
    if-gez v0, :cond_32

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 118
    :cond_32
    if-nez v0, :cond_43

    .line 119
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3c

    move v4, v5

    .line 120
    goto :goto_16

    .line 122
    :cond_3c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 124
    :cond_43
    if-lez v0, :cond_21

    goto :goto_16
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .parameter "object"

    .prologue
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedSet;,"Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 168
    if-ne p1, p0, :cond_5

    .line 197
    :cond_4
    :goto_4
    return v5

    .line 171
    :cond_5
    instance-of v7, p1, Ljava/util/Set;

    if-nez v7, :cond_b

    move v5, v6

    .line 172
    goto :goto_4

    :cond_b
    move-object v4, p1

    .line 175
    check-cast v4, Ljava/util/Set;

    .line 176
    .local v4, that:Ljava/util/Set;,"Ljava/util/Set<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v7

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v8

    if-eq v7, v8, :cond_1a

    move v5, v6

    .line 177
    goto :goto_4

    .line 180
    :cond_1a
    iget-object v7, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {v4, v7}, Lcom/google/common/collect/RegularImmutableSortedSet;->hasSameComparator(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 181
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 183
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :try_start_26
    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    .local v1, i:I
    :goto_28
    iget v7, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    if-ge v1, v7, :cond_4

    .line 184
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 185
    .local v3, otherElement:Ljava/lang/Object;
    if-eqz v3, :cond_3c

    iget-object v7, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    aget-object v7, v7, v1

    invoke-virtual {p0, v7, v3}, Lcom/google/common/collect/RegularImmutableSortedSet;->unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_39
    .catch Ljava/lang/ClassCastException; {:try_start_26 .. :try_end_39} :catch_41
    .catch Ljava/util/NoSuchElementException; {:try_start_26 .. :try_end_39} :catch_44

    move-result v7

    if-eqz v7, :cond_3e

    :cond_3c
    move v5, v6

    .line 187
    goto :goto_4

    .line 183
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 191
    .end local v1           #i:I
    .end local v3           #otherElement:Ljava/lang/Object;
    :catch_41
    move-exception v0

    .local v0, e:Ljava/lang/ClassCastException;
    move v5, v6

    .line 192
    goto :goto_4

    .line 193
    .end local v0           #e:Ljava/lang/ClassCastException;
    :catch_44
    move-exception v0

    .local v0, e:Ljava/util/NoSuchElementException;
    move v5, v6

    .line 194
    goto :goto_4

    .line 197
    .end local v0           #e:Ljava/util/NoSuchElementException;
    .end local v2           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_47
    invoke-virtual {p0, v4}, Lcom/google/common/collect/RegularImmutableSortedSet;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    goto :goto_4
.end method

.method public first()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedSet;,"Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 203
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedSet;,"Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    const/4 v0, 0x0

    .line 204
    .local v0, hash:I
    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    .local v1, i:I
    :goto_3
    iget v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    if-ge v1, v2, :cond_13

    .line 205
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 207
    :cond_13
    return v0
.end method

.method headSetImpl(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedSet;,"Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, toElement:Ljava/lang/Object;,"TE;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->findSubsetIndex(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/RegularImmutableSortedSet;->createSubset(II)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 76
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedSet;,"Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedSet;,"Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/Iterators;->forArray([Ljava/lang/Object;II)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 35
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedSet;,"Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedSet;,"Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public size()I
    .registers 3

    .prologue
    .line 80
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedSet;,"Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method subSetImpl(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedSet;,"Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, fromElement:Ljava/lang/Object;,"TE;"
    .local p2, toElement:Ljava/lang/Object;,"TE;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->findSubsetIndex(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->findSubsetIndex(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/RegularImmutableSortedSet;->createSubset(II)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method tailSetImpl(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedSet;,"Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, fromElement:Ljava/lang/Object;,"TE;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->findSubsetIndex(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/RegularImmutableSortedSet;->createSubset(II)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 6

    .prologue
    .line 150
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedSet;,"Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/Object;

    .line 151
    .local v0, array:[Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/common/collect/Platform;->unsafeArrayCopy([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 152
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, this:Lcom/google/common/collect/RegularImmutableSortedSet;,"Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v0

    .line 158
    .local v0, size:I
    array-length v1, p1

    if-ge v1, v0, :cond_14

    .line 159
    invoke-static {p1, v0}, Lcom/google/common/collect/ObjectArrays;->newArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 163
    :cond_b
    :goto_b
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3, v0}, Lcom/google/common/collect/Platform;->unsafeArrayCopy([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 164
    return-object p1

    .line 160
    :cond_14
    array-length v1, p1

    if-le v1, v0, :cond_b

    .line 161
    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_b
.end method
