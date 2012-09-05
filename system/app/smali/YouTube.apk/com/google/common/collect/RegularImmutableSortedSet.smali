.class final Lcom/google/common/collect/RegularImmutableSortedSet;
.super Lcom/google/common/collect/ImmutableSortedSet;
.source "SourceFile"


# instance fields
.field private final elements:[Ljava/lang/Object;

.field private final fromIndex:I

.field private final toIndex:I


# direct methods
.method constructor <init>([Ljava/lang/Object;Ljava/util/Comparator;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 54
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
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
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
    .registers 6
    .parameter

    .prologue
    .line 131
    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    .line 132
    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    move v1, v0

    .line 134
    :goto_8
    if-gt v2, v1, :cond_23

    .line 135
    sub-int v0, v1, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    .line 136
    iget-object v3, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {p0, p1, v3}, Lcom/google/common/collect/RegularImmutableSortedSet;->unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 137
    if-gez v3, :cond_1d

    .line 138
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    goto :goto_8

    .line 139
    :cond_1d
    if-lez v3, :cond_26

    .line 140
    add-int/lit8 v0, v0, 0x1

    move v2, v0

    goto :goto_8

    .line 144
    :cond_23
    neg-int v0, v2

    add-int/lit8 v0, v0, -0x1

    :cond_26
    return v0
.end method

.method private createSubset(II)Lcom/google/common/collect/ImmutableSortedSet;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 242
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
    .registers 3
    .parameter

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->binarySearch(Ljava/lang/Object;)I

    move-result v0

    .line 237
    if-ltz v0, :cond_7

    :goto_6
    return v0

    :cond_7
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_6
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 84
    if-nez p1, :cond_4

    .line 90
    :cond_3
    :goto_3
    return v0

    .line 88
    :cond_4
    :try_start_4
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->binarySearch(Ljava/lang/Object;)I
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_7} :catch_c

    move-result v1

    if-ltz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    .line 90
    :catch_c
    move-exception v1

    goto :goto_3
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->hasSameComparator(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-gt v0, v3, :cond_17

    .line 98
    :cond_12
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    .line 125
    :goto_16
    return v0

    .line 105
    :cond_17
    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    .line 106
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 107
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 110
    :cond_21
    :goto_21
    iget v5, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    if-lt v1, v5, :cond_27

    move v0, v2

    .line 111
    goto :goto_16

    .line 114
    :cond_27
    iget-object v5, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    aget-object v5, v5, v1

    invoke-virtual {p0, v5, v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    .line 116
    if-gez v5, :cond_34

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 118
    :cond_34
    if-nez v5, :cond_45

    .line 119
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3e

    move v0, v3

    .line 120
    goto :goto_16

    .line 122
    :cond_3e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 124
    :cond_45
    if-lez v5, :cond_21

    move v0, v2

    .line 125
    goto :goto_16
.end method

.method final createAsList()Lcom/google/common/collect/ImmutableList;
    .registers 5

    .prologue
    .line 271
    new-instance v0, Lcom/google/common/collect/ImmutableSortedAsList;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/common/collect/ImmutableSortedAsList;-><init>([Ljava/lang/Object;IILcom/google/common/collect/ImmutableSortedSet;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 168
    if-ne p1, p0, :cond_5

    .line 197
    :cond_4
    :goto_4
    return v0

    .line 171
    :cond_5
    instance-of v2, p1, Ljava/util/Set;

    if-nez v2, :cond_b

    move v0, v1

    .line 172
    goto :goto_4

    .line 175
    :cond_b
    check-cast p1, Ljava/util/Set;

    .line 176
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_19

    move v0, v1

    .line 177
    goto :goto_4

    .line 180
    :cond_19
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {p1, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;->hasSameComparator(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 181
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 183
    :try_start_25
    iget v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    :goto_27
    iget v4, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    if-ge v2, v4, :cond_4

    .line 184
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 185
    if-eqz v4, :cond_3b

    iget-object v5, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    aget-object v5, v5, v2

    invoke-virtual {p0, v5, v4}, Lcom/google/common/collect/RegularImmutableSortedSet;->unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_38
    .catch Ljava/lang/ClassCastException; {:try_start_25 .. :try_end_38} :catch_40
    .catch Ljava/util/NoSuchElementException; {:try_start_25 .. :try_end_38} :catch_43

    move-result v4

    if-eqz v4, :cond_3d

    :cond_3b
    move v0, v1

    .line 187
    goto :goto_4

    .line 183
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 192
    :catch_40
    move-exception v0

    move v0, v1

    goto :goto_4

    .line 194
    :catch_43
    move-exception v0

    move v0, v1

    goto :goto_4

    .line 197
    :cond_46
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_4
.end method

.method public final first()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method final hasPartialArray()Z
    .registers 3

    .prologue
    .line 251
    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    if-nez v0, :cond_b

    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    array-length v1, v1

    if-eq v0, v1, :cond_d

    :cond_b
    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    .line 203
    const/4 v1, 0x0

    .line 204
    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    :goto_3
    iget v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    if-ge v0, v2, :cond_13

    .line 205
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 207
    :cond_13
    return v1
.end method

.method final headSetImpl(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .registers 4
    .parameter

    .prologue
    .line 223
    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->findSubsetIndex(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/RegularImmutableSortedSet;->createSubset(II)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method final indexOf(Ljava/lang/Object;)I
    .registers 5
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 255
    if-nez p1, :cond_4

    .line 266
    :cond_3
    :goto_3
    return v0

    .line 260
    :cond_4
    :try_start_4
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->binarySearch(Ljava/lang/Object;)I
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_7} :catch_19

    move-result v1

    .line 266
    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    sub-int v0, v1, v0

    goto :goto_3

    .line 262
    :catch_19
    move-exception v1

    goto :goto_3
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Lcom/google/common/collect/gf;
    .registers 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/cr;->a([Ljava/lang/Object;II)Lcom/google/common/collect/gf;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->iterator()Lcom/google/common/collect/gf;

    move-result-object v0

    return-object v0
.end method

.method public final last()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final size()I
    .registers 3

    .prologue
    .line 80
    iget v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method final subSetImpl(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->findSubsetIndex(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->findSubsetIndex(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/RegularImmutableSortedSet;->createSubset(II)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method final tailSetImpl(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .registers 4
    .parameter

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->findSubsetIndex(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->toIndex:I

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/RegularImmutableSortedSet;->createSubset(II)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 6

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 151
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/common/collect/fu;->a([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 152
    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .parameter

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v0

    .line 158
    array-length v1, p1

    if-ge v1, v0, :cond_14

    .line 159
    invoke-static {p1, v0}, Lcom/google/common/collect/fq;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 163
    :cond_b
    :goto_b
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->fromIndex:I

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3, v0}, Lcom/google/common/collect/fu;->a([Ljava/lang/Object;I[Ljava/lang/Object;II)V

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
