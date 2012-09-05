.class public Lcom/google/common/collect/ImmutableSortedMap;
.super Lcom/google/common/collect/ImmutableSortedMapFauxverideShim;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedMap;


# static fields
.field private static final EMPTY_ARRAY:[Ljava/util/Map$Entry;

.field private static final NATURAL_EMPTY_MAP:Lcom/google/common/collect/ImmutableMap;

.field private static final NATURAL_ORDER:Ljava/util/Comparator;

.field private static final serialVersionUID:J


# instance fields
.field private final transient comparator:Ljava/util/Comparator;

.field private final transient entries:[Ljava/util/Map$Entry;

.field private transient entrySet:Lcom/google/common/collect/ImmutableSet;

.field private final transient fromIndex:I

.field private transient keySet:Lcom/google/common/collect/ImmutableSortedSet;

.field private final transient toIndex:I

.field private transient values:Lcom/google/common/collect/ImmutableCollection;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 64
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 65
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map$Entry;

    sput-object v0, Lcom/google/common/collect/ImmutableSortedMap;->EMPTY_ARRAY:[Ljava/util/Map$Entry;

    .line 68
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap;

    sget-object v1, Lcom/google/common/collect/ImmutableSortedMap;->EMPTY_ARRAY:[Ljava/util/Map$Entry;

    sget-object v2, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ImmutableSortedMap;-><init>([Ljava/util/Map$Entry;Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_EMPTY_MAP:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method constructor <init>([Ljava/util/Map$Entry;Ljava/util/Comparator;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 392
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;-><init>([Ljava/util/Map$Entry;Ljava/util/Comparator;II)V

    .line 393
    return-void
.end method

.method private constructor <init>([Ljava/util/Map$Entry;Ljava/util/Comparator;II)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMapFauxverideShim;-><init>()V

    .line 383
    check-cast p1, [Ljava/util/Map$Entry;

    .line 384
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap;->entries:[Ljava/util/Map$Entry;

    .line 385
    iput-object p2, p0, Lcom/google/common/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    .line 386
    iput p3, p0, Lcom/google/common/collect/ImmutableSortedMap;->fromIndex:I

    .line 387
    iput p4, p0, Lcom/google/common/collect/ImmutableSortedMap;->toIndex:I

    .line 388
    return-void
.end method

.method static synthetic access$000([Ljava/util/Map$Entry;Ljava/util/Comparator;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->sortEntries([Ljava/util/Map$Entry;Ljava/util/Comparator;)V

    return-void
.end method

.method static synthetic access$100([Ljava/util/Map$Entry;Ljava/util/Comparator;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->validateEntries([Ljava/util/Map$Entry;Ljava/util/Comparator;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/common/collect/ImmutableSortedMap;)[Ljava/util/Map$Entry;
    .registers 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->entries:[Ljava/util/Map$Entry;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/common/collect/ImmutableSortedMap;)I
    .registers 2
    .parameter

    .prologue
    .line 54
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->fromIndex:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/common/collect/ImmutableSortedMap;)I
    .registers 2
    .parameter

    .prologue
    .line 54
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->toIndex:I

    return v0
.end method

.method private binarySearch(Ljava/lang/Object;)I
    .registers 7
    .parameter

    .prologue
    .line 413
    iget v1, p0, Lcom/google/common/collect/ImmutableSortedMap;->fromIndex:I

    .line 414
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->toIndex:I

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    move v1, v0

    .line 416
    :goto_8
    if-gt v2, v1, :cond_29

    .line 417
    sub-int v0, v1, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    .line 418
    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    iget-object v4, p0, Lcom/google/common/collect/ImmutableSortedMap;->entries:[Ljava/util/Map$Entry;

    aget-object v4, v4, v0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, p1, v4}, Lcom/google/common/collect/ImmutableSortedSet;->unsafeCompare(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 420
    if-gez v3, :cond_23

    .line 421
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    goto :goto_8

    .line 422
    :cond_23
    if-lez v3, :cond_2c

    .line 423
    add-int/lit8 v0, v0, 0x1

    move v2, v0

    goto :goto_8

    .line 427
    :cond_29
    neg-int v0, v2

    add-int/lit8 v0, v0, -0x1

    :cond_2c
    return v0
.end method

.method public static copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 2
    .parameter

    .prologue
    .line 171
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 172
    invoke-static {p0, v0}, Lcom/google/common/collect/ImmutableSortedMap;->copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 188
    invoke-static {p1}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 213
    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_14

    move-object v0, p0

    .line 214
    check-cast v0, Ljava/util/SortedMap;

    .line 215
    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 216
    if-nez v0, :cond_1f

    sget-object v0, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne p1, v0, :cond_1d

    const/4 v0, 0x1

    :goto_13
    move v1, v0

    .line 221
    :cond_14
    if-eqz v1, :cond_24

    instance-of v0, p0, Lcom/google/common/collect/ImmutableSortedMap;

    if-eqz v0, :cond_24

    .line 225
    check-cast p0, Lcom/google/common/collect/ImmutableSortedMap;

    .line 241
    :goto_1c
    return-object p0

    :cond_1d
    move v0, v1

    .line 216
    goto :goto_13

    :cond_1f
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_13

    .line 230
    :cond_24
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 231
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 232
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 234
    :cond_51
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Map$Entry;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    .line 236
    if-nez v1, :cond_65

    .line 237
    invoke-static {v0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->sortEntries([Ljava/util/Map$Entry;Ljava/util/Comparator;)V

    .line 238
    invoke-static {v0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->validateEntries([Ljava/util/Map$Entry;Ljava/util/Comparator;)V

    .line 241
    :cond_65
    new-instance p0, Lcom/google/common/collect/ImmutableSortedMap;

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/ImmutableSortedMap;-><init>([Ljava/util/Map$Entry;Ljava/util/Comparator;)V

    goto :goto_1c
.end method

.method public static copyOfSorted(Ljava/util/SortedMap;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 2
    .parameter

    .prologue
    .line 205
    invoke-interface {p0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 207
    :goto_8
    invoke-static {p0, v0}, Lcom/google/common/collect/ImmutableSortedMap;->copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    .line 205
    :cond_d
    invoke-interface {p0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    goto :goto_8
.end method

.method private createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    .prologue
    .line 456
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
    .registers 5

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 513
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    .line 521
    :goto_c
    return-object v0

    .line 517
    :cond_d
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    .line 518
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->fromIndex:I

    :goto_15
    iget v2, p0, Lcom/google/common/collect/ImmutableSortedMap;->toIndex:I

    if-ge v0, v2, :cond_2a

    .line 519
    iget v2, p0, Lcom/google/common/collect/ImmutableSortedMap;->fromIndex:I

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedMap;->entries:[Ljava/util/Map$Entry;

    aget-object v3, v3, v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 518
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 521
    :cond_2a
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_c
.end method

.method private createSubmap(II)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 661
    if-ge p1, p2, :cond_c

    .line 662
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap;->entries:[Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/common/collect/ImmutableSortedMap;-><init>([Ljava/util/Map$Entry;Ljava/util/Comparator;II)V

    .line 665
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    goto :goto_b
.end method

.method private static emptyMap(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 3
    .parameter

    .prologue
    .line 82
    sget-object v0, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 83
    invoke-static {}, Lcom/google/common/collect/ImmutableSortedMap;->of()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    .line 85
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap;

    sget-object v1, Lcom/google/common/collect/ImmutableSortedMap;->EMPTY_ARRAY:[Ljava/util/Map$Entry;

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/ImmutableSortedMap;-><init>([Ljava/util/Map$Entry;Ljava/util/Comparator;)V

    goto :goto_c
.end method

.method private findSubmapIndex(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 655
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->binarySearch(Ljava/lang/Object;)I

    move-result v0

    .line 656
    if-ltz v0, :cond_7

    :goto_6
    return v0

    :cond_7
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_6
.end method

.method public static naturalOrder()Lcom/google/common/collect/cn;
    .registers 2

    .prologue
    .line 278
    new-instance v0, Lcom/google/common/collect/cn;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/cn;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static of()Lcom/google/common/collect/ImmutableSortedMap;
    .registers 1

    .prologue
    .line 77
    sget-object v0, Lcom/google/common/collect/ImmutableSortedMap;->NATURAL_EMPTY_MAP:Lcom/google/common/collect/ImmutableMap;

    check-cast v0, Lcom/google/common/collect/ImmutableSortedMap;

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 94
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Map$Entry;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v0, v1

    .line 95
    new-instance v1, Lcom/google/common/collect/ImmutableSortedMap;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/ImmutableSortedMap;-><init>([Ljava/util/Map$Entry;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    new-instance v0, Lcom/google/common/collect/cn;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/cn;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/cn;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cn;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/cn;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/cn;->b()Lcom/google/common/collect/ImmutableSortedMap;

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
    .line 120
    new-instance v0, Lcom/google/common/collect/cn;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/cn;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/cn;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cn;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/cn;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cn;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/cn;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/cn;->b()Lcom/google/common/collect/ImmutableSortedMap;

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
    .line 133
    new-instance v0, Lcom/google/common/collect/cn;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/cn;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/cn;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cn;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/cn;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cn;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/cn;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cn;

    move-result-object v0

    invoke-virtual {v0, p6, p7}, Lcom/google/common/collect/cn;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/cn;->b()Lcom/google/common/collect/ImmutableSortedMap;

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
    .line 146
    new-instance v0, Lcom/google/common/collect/cn;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/cn;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/cn;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cn;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/cn;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cn;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/cn;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cn;

    move-result-object v0

    invoke-virtual {v0, p6, p7}, Lcom/google/common/collect/cn;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cn;

    move-result-object v0

    invoke-virtual {v0, p8, p9}, Lcom/google/common/collect/cn;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/cn;->b()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static orderedBy(Ljava/util/Comparator;)Lcom/google/common/collect/cn;
    .registers 2
    .parameter

    .prologue
    .line 290
    new-instance v0, Lcom/google/common/collect/cn;

    invoke-direct {v0, p0}, Lcom/google/common/collect/cn;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static reverseOrder()Lcom/google/common/collect/cn;
    .registers 2

    .prologue
    .line 303
    new-instance v0, Lcom/google/common/collect/cn;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/cn;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static sortEntries([Ljava/util/Map$Entry;Ljava/util/Comparator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 246
    new-instance v0, Lcom/google/common/collect/cm;

    invoke-direct {v0, p1}, Lcom/google/common/collect/cm;-><init>(Ljava/util/Comparator;)V

    .line 252
    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 253
    return-void
.end method

.method private static validateEntries([Ljava/util/Map$Entry;Ljava/util/Comparator;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 257
    const/4 v0, 0x1

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_44

    .line 258
    add-int/lit8 v1, v0, -0x1

    aget-object v1, p0, v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    aget-object v2, p0, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/common/collect/ImmutableSortedSet;->unsafeCompare(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_41

    .line 260
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate keys in mappings "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, p0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 265
    :cond_44
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 433
    if-nez p1, :cond_5

    move v0, v1

    .line 441
    :goto_4
    return v0

    .line 436
    :cond_5
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->fromIndex:I

    :goto_7
    iget v2, p0, Lcom/google/common/collect/ImmutableSortedMap;->toIndex:I

    if-ge v0, v2, :cond_1e

    .line 437
    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMap;->entries:[Ljava/util/Map$Entry;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 438
    const/4 v0, 0x1

    goto :goto_4

    .line 436
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1e
    move v0, v1

    .line 441
    goto :goto_4
.end method

.method public entrySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->entrySet:Lcom/google/common/collect/ImmutableSet;

    .line 452
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
    .line 53
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 590
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 592
    :cond_c
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->entries:[Ljava/util/Map$Entry;

    iget v1, p0, Lcom/google/common/collect/ImmutableSortedMap;->fromIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 400
    if-nez p1, :cond_4

    .line 409
    :cond_3
    :goto_3
    return-object v0

    .line 405
    :cond_4
    :try_start_4
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->binarySearch(Ljava/lang/Object;)I
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_7} :catch_13

    move-result v1

    .line 409
    if-ltz v1, :cond_3

    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->entries:[Ljava/util/Map$Entry;

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    .line 407
    :catch_13
    move-exception v1

    goto :goto_3
.end method

.method public headMap(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 4
    .parameter

    .prologue
    .line 613
    invoke-static {p1}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableSortedMap;->findSubmapIndex(Ljava/lang/Object;)I

    move-result v0

    .line 614
    iget v1, p0, Lcom/google/common/collect/ImmutableSortedMap;->fromIndex:I

    invoke-direct {p0, v1, v0}, Lcom/google/common/collect/ImmutableSortedMap;->createSubmap(II)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .parameter

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Lcom/google/common/collect/ImmutableSortedSet;
    .registers 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->keySet:Lcom/google/common/collect/ImmutableSortedSet;

    .line 508
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
    .line 53
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->keySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 597
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 599
    :cond_c
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->entries:[Ljava/util/Map$Entry;

    iget v1, p0, Lcom/google/common/collect/ImmutableSortedMap;->toIndex:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 3

    .prologue
    .line 396
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->toIndex:I

    iget v1, p0, Lcom/google/common/collect/ImmutableSortedMap;->fromIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 631
    invoke-static {p1}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    invoke-static {p2}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1f

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Lcom/google/common/base/t;->a(Z)V

    .line 634
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->findSubmapIndex(Ljava/lang/Object;)I

    move-result v0

    .line 635
    invoke-direct {p0, p2}, Lcom/google/common/collect/ImmutableSortedMap;->findSubmapIndex(Ljava/lang/Object;)I

    move-result v1

    .line 636
    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;->createSubmap(II)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    .line 633
    :cond_1f
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;
    .registers 4
    .parameter

    .prologue
    .line 650
    invoke-static {p1}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableSortedMap;->findSubmapIndex(Ljava/lang/Object;)I

    move-result v0

    .line 651
    iget v1, p0, Lcom/google/common/collect/ImmutableSortedMap;->toIndex:I

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;->createSubmap(II)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .parameter

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public values()Lcom/google/common/collect/ImmutableCollection;
    .registers 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap;->values:Lcom/google/common/collect/ImmutableCollection;

    .line 532
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
    .line 53
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 690
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$SerializedForm;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMap$SerializedForm;-><init>(Lcom/google/common/collect/ImmutableSortedMap;)V

    return-object v0
.end method
