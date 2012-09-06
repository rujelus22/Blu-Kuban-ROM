.class public Lcom/google/common/collect/ImmutableSortedMap;
.super Lcom/google/common/collect/ImmutableSortedMapFauxverideShim;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedMap;


# static fields
.field private static final NATURAL_EMPTY_MAP:Lcom/google/common/collect/ImmutableSortedMap;

.field private static final NATURAL_ORDER:Ljava/util/Comparator;

.field private static final serialVersionUID:J


# instance fields
.field private final transient comparator:Ljava/util/Comparator;

.field final transient entries:Lcom/google/common/collect/ImmutableList;

.field private transient entrySet:Lcom/google/common/collect/ImmutableSet;

.field private transient keySet:Lcom/google/common/collect/ImmutableSortedSet;

.field private transient values:Lcom/google/common/collect/ImmutableCollection;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 71
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 75
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    sget-object v2, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ImmutableSortedMap;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_EMPTY_MAP:Lcom/google/common/collect/ImmutableSortedMap;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMapFauxverideShim;-><init>()V

    .line 418
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap;->entries:Lcom/google/common/collect/ImmutableList;

    .line 419
    iput-object p2, p0, Lcom/google/common/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    .line 420
    return-void
.end method

.method static synthetic access$000(Ljava/util/List;Ljava/util/Comparator;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->sortEntries(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method static synthetic access$100(Ljava/util/List;Ljava/util/Comparator;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->validateEntries(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 2
    .parameter

    .prologue
    .line 183
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 184
    invoke-static {p0, v0}, Lcom/google/common/collect/ImmutableSortedMap;->copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 201
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p0, v0}, Lcom/google/common/collect/ImmutableSortedMap;->copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method private static copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 229
    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_63

    move-object v0, p0

    .line 230
    check-cast v0, Ljava/util/SortedMap;

    .line 231
    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 232
    if-nez v0, :cond_26

    sget-object v0, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne p1, v0, :cond_24

    const/4 v0, 0x1

    :goto_13
    move v2, v0

    .line 237
    :goto_14
    if-eqz v2, :cond_2b

    instance-of v0, p0, Lcom/google/common/collect/ImmutableSortedMap;

    if-eqz v0, :cond_2b

    move-object v0, p0

    .line 241
    check-cast v0, Lcom/google/common/collect/ImmutableSortedMap;

    .line 242
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMap;->isPartialView()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 265
    :goto_23
    return-object v0

    :cond_24
    move v0, v1

    .line 232
    goto :goto_13

    :cond_26
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_13

    .line 251
    :cond_2b
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-array v3, v1, [Ljava/util/Map$Entry;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    .line 253
    :goto_37
    array-length v3, v0

    if-ge v1, v3, :cond_4d

    .line 254
    aget-object v3, v0, v1

    .line 255
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    aput-object v3, v0, v1

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 258
    :cond_4d
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 260
    if-nez v2, :cond_59

    .line 261
    invoke-static {v1, p1}, Lcom/google/common/collect/ImmutableSortedMap;->sortEntries(Ljava/util/List;Ljava/util/Comparator;)V

    .line 262
    invoke-static {v1, p1}, Lcom/google/common/collect/ImmutableSortedMap;->validateEntries(Ljava/util/List;Ljava/util/Comparator;)V

    .line 265
    :cond_59
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/ImmutableSortedMap;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    goto :goto_23

    :cond_63
    move v2, v1

    goto :goto_14
.end method

.method public static copyOfSorted(Ljava/util/SortedMap;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 2
    .parameter

    .prologue
    .line 217
    invoke-interface {p0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 218
    if-nez v0, :cond_8

    .line 221
    sget-object v0, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 223
    :cond_8
    invoke-static {p0, v0}, Lcom/google/common/collect/ImmutableSortedMap;->copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method private createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;-><init>(Lcom/google/common/collect/ImmutableSortedMap;)V

    goto :goto_a
.end method

.method private createKeySet()Lcom/google/common/collect/ImmutableSortedSet;
    .registers 4

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 534
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    .line 537
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    new-instance v1, Lcom/google/common/collect/ImmutableSortedMap$2;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMap;->entries:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v1, p0, v2}, Lcom/google/common/collect/ImmutableSortedMap$2;-><init>(Lcom/google/common/collect/ImmutableSortedMap;Lcom/google/common/collect/ImmutableList;)V

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    goto :goto_c
.end method

.method private createSubmap(II)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 732
    if-ge p1, p2, :cond_10

    .line 733
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap;->entries:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ImmutableSortedMap;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    .line 736
    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    goto :goto_f
.end method

.method private static emptyMap(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 3
    .parameter

    .prologue
    .line 92
    sget-object v0, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 93
    sget-object v0, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_EMPTY_MAP:Lcom/google/common/collect/ImmutableSortedMap;

    .line 95
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/ImmutableSortedMap;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    goto :goto_a
.end method

.method private index(Ljava/lang/Object;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 726
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMap;->keyList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->unsafeComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v1, v2, p2, p3}, Lcom/google/common/collect/SortedLists;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    return v0
.end method

.method private keyList()Lcom/google/common/collect/ImmutableList;
    .registers 3

    .prologue
    .line 716
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$4;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap;->entries:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ImmutableSortedMap$4;-><init>(Lcom/google/common/collect/ImmutableSortedMap;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method public static naturalOrder()Lcom/google/common/collect/dy;
    .registers 2

    .prologue
    .line 303
    new-instance v0, Lcom/google/common/collect/dy;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/dy;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static of()Lcom/google/common/collect/ImmutableSortedMap;
    .registers 1

    .prologue
    .line 86
    sget-object v0, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_EMPTY_MAP:Lcom/google/common/collect/ImmutableSortedMap;

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 105
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap;

    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ImmutableSortedMap;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    new-instance v0, Lcom/google/common/collect/dy;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/dy;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/dy;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dy;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/dy;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/dy;->b()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    new-instance v0, Lcom/google/common/collect/dy;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/dy;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/dy;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dy;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/dy;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dy;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/dy;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/dy;->b()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    new-instance v0, Lcom/google/common/collect/dy;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/dy;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/dy;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dy;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/dy;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dy;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/dy;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dy;

    move-result-object v0

    invoke-virtual {v0, p6, p7}, Lcom/google/common/collect/dy;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/dy;->b()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    new-instance v0, Lcom/google/common/collect/dy;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/dy;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/dy;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dy;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/dy;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dy;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/dy;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dy;

    move-result-object v0

    invoke-virtual {v0, p6, p7}, Lcom/google/common/collect/dy;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dy;

    move-result-object v0

    invoke-virtual {v0, p8, p9}, Lcom/google/common/collect/dy;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/dy;->b()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static orderedBy(Ljava/util/Comparator;)Lcom/google/common/collect/dy;
    .registers 2
    .parameter

    .prologue
    .line 315
    new-instance v0, Lcom/google/common/collect/dy;

    invoke-direct {v0, p0}, Lcom/google/common/collect/dy;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static reverseOrder()Lcom/google/common/collect/dy;
    .registers 2

    .prologue
    .line 328
    new-instance v0, Lcom/google/common/collect/dy;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/dy;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static sortEntries(Ljava/util/List;Ljava/util/Comparator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 270
    new-instance v0, Lcom/google/common/collect/dw;

    invoke-direct {v0, p1}, Lcom/google/common/collect/dw;-><init>(Ljava/util/Comparator;)V

    .line 277
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 278
    return-void
.end method

.method private static validateEntries(Ljava/util/List;Ljava/util/Comparator;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 282
    const/4 v0, 0x1

    move v1, v0

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_51

    .line 283
    add-int/lit8 v0, v1, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_4d

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Duplicate keys in mappings "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v1, -0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_4d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 290
    :cond_51
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 449
    if-nez p1, :cond_4

    .line 450
    const/4 v0, 0x0

    .line 452
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->valueIterator()Lcom/google/common/collect/mt;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/ee;->a(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public entrySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->entrySet:Lcom/google/common/collect/ImmutableSet;

    .line 467
    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMap;->createEntrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->entrySet:Lcom/google/common/collect/ImmutableSet;

    :cond_a
    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 626
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 628
    :cond_c
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->entries:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 436
    if-nez p1, :cond_4

    .line 445
    :cond_3
    :goto_3
    return-object v0

    .line 441
    :cond_4
    :try_start_4
    sget-object v1, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v2, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->INVERTED_INSERTION_INDEX:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    invoke-direct {p0, p1, v1, v2}, Lcom/google/common/collect/ImmutableSortedMap;->index(Ljava/lang/Object;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_b} :catch_1b

    move-result v1

    .line 445
    if-ltz v1, :cond_3

    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->entries:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    .line 443
    :catch_1b
    move-exception v1

    goto :goto_3
.end method

.method public headMap(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 3
    .parameter

    .prologue
    .line 651
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method headMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 656
    if-eqz p2, :cond_12

    .line 657
    sget-object v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v1, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;->index(Ljava/lang/Object;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 661
    :goto_c
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/common/collect/ImmutableSortedMap;->createSubmap(II)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    .line 659
    :cond_12
    sget-object v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v1, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;->index(Ljava/lang/Object;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    goto :goto_c
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .parameter

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->entries:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic keySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Lcom/google/common/collect/ImmutableSortedSet;
    .registers 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->keySet:Lcom/google/common/collect/ImmutableSortedSet;

    .line 528
    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMap;->createKeySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->keySet:Lcom/google/common/collect/ImmutableSortedSet;

    :cond_a
    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 633
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 634
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 636
    :cond_c
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->entries:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->entries:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 679
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/common/collect/ImmutableSortedMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 684
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    invoke-static {p3}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1b

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 687
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    .line 686
    :cond_1b
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 3
    .parameter

    .prologue
    .line 702
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method tailMap(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 707
    if-eqz p2, :cond_13

    .line 708
    sget-object v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v1, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;->index(Ljava/lang/Object;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    .line 712
    :goto_a
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;->createSubmap(II)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    .line 710
    :cond_13
    sget-object v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v1, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;->index(Ljava/lang/Object;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .parameter

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method unsafeComparator()Ljava/util/Comparator;
    .registers 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method valueIterator()Lcom/google/common/collect/mt;
    .registers 3

    .prologue
    .line 558
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->entries:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/mt;

    move-result-object v0

    .line 559
    new-instance v1, Lcom/google/common/collect/dx;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/dx;-><init>(Lcom/google/common/collect/ImmutableSortedMap;Lcom/google/common/collect/mt;)V

    return-object v1
.end method

.method public values()Lcom/google/common/collect/ImmutableCollection;
    .registers 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->values:Lcom/google/common/collect/ImmutableCollection;

    .line 554
    if-nez v0, :cond_b

    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$Values;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMap$Values;-><init>(Lcom/google/common/collect/ImmutableSortedMap;)V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->values:Lcom/google/common/collect/ImmutableCollection;

    :cond_b
    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 761
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$SerializedForm;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMap$SerializedForm;-><init>(Lcom/google/common/collect/ImmutableSortedMap;)V

    return-object v0
.end method
