.class abstract Lcom/google/common/collect/ImmutableSortedMultiset;
.super Lcom/google/common/collect/ImmutableSortedMultisetFauxverideShim;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/kg;


# static fields
.field private static final NATURAL_EMPTY_MULTISET:Lcom/google/common/collect/ImmutableSortedMultiset;

.field private static final NATURAL_ORDER:Ljava/util/Comparator;


# instance fields
.field private final transient comparator:Ljava/util/Comparator;

.field transient descendingMultiset:Lcom/google/common/collect/ImmutableSortedMultiset;

.field private transient elementSet:Lcom/google/common/collect/ImmutableSortedSet;

.field private transient reverseComparator:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 79
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ImmutableSortedMultiset;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 81
    new-instance v0, Lcom/google/common/collect/EmptyImmutableSortedMultiset;

    sget-object v1, Lcom/google/common/collect/ImmutableSortedMultiset;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/google/common/collect/EmptyImmutableSortedMultiset;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/common/collect/ImmutableSortedMultiset;->NATURAL_EMPTY_MULTISET:Lcom/google/common/collect/ImmutableSortedMultiset;

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .parameter

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMultisetFauxverideShim;-><init>()V

    .line 325
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset;->comparator:Ljava/util/Comparator;

    .line 326
    return-void
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 2
    .parameter

    .prologue
    .line 204
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 205
    invoke-static {v0, p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 250
    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOfInternal(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 234
    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOfInternal(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 2
    .parameter

    .prologue
    .line 222
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 223
    invoke-static {v0, p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOfInternal(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 3
    .parameter

    .prologue
    .line 175
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method private static copyOfInternal(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-static {p0, p1}, Lcom/google/common/collect/kc;->a(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_16

    instance-of v0, p1, Lcom/google/common/collect/ImmutableSortedMultiset;

    if-eqz v0, :cond_16

    move-object v0, p1

    .line 282
    check-cast v0, Lcom/google/common/collect/ImmutableSortedMultiset;

    .line 283
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->isPartialView()Z

    move-result v0

    if-nez v0, :cond_16

    .line 284
    check-cast p1, Lcom/google/common/collect/ImmutableSortedMultiset;

    .line 293
    :goto_15
    return-object p1

    .line 287
    :cond_16
    instance-of v0, p1, Lcom/google/common/collect/iq;

    if-eqz v0, :cond_4f

    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/iq;

    invoke-static {p0, p1}, Lcom/google/common/collect/kc;->a(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Lcom/google/common/collect/iq;->entrySet()Ljava/util/Set;

    move-result-object v0

    :goto_27
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 290
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->emptyMultiset(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    goto :goto_15

    .line 287
    :cond_36
    invoke-interface {v0}, Lcom/google/common/collect/iq;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v1

    new-instance v2, Lcom/google/common/collect/kd;

    invoke-direct {v2}, Lcom/google/common/collect/kd;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/common/collect/Ordering;->onResultOf(Lcom/google/common/base/v;)Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_27

    :cond_4f
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_6d

    invoke-static {p0, p1}, Lcom/google/common/collect/kc;->a(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_65

    check-cast p1, Ljava/util/Collection;

    :goto_5b
    new-instance v0, Lcom/google/common/collect/ke;

    invoke-direct {v0}, Lcom/google/common/collect/ke;-><init>()V

    invoke-static {p1, v0}, Lcom/google/common/collect/cf;->a(Ljava/util/Collection;Lcom/google/common/base/v;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_27

    :cond_65
    invoke-static {p1}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_5b

    :cond_6d
    invoke-static {p0, p1}, Lcom/google/common/collect/kc;->a(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_a8

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-lez v0, :cond_9a

    invoke-interface {p0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_93

    add-int/lit8 v0, v0, 0x1

    goto :goto_7e

    :cond_93
    invoke-static {v1, v0}, Lcom/google/common/collect/Multisets;->a(Ljava/lang/Object;I)Lcom/google/common/collect/ir;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9a
    const/4 v0, 0x1

    move-object v1, v2

    goto :goto_7e

    :cond_9d
    if-lez v0, :cond_a6

    invoke-static {v1, v0}, Lcom/google/common/collect/Multisets;->a(Ljava/lang/Object;I)Lcom/google/common/collect/ir;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a6
    move-object v0, v3

    goto :goto_27

    :cond_a8
    invoke-static {p0}, Lcom/google/common/collect/TreeMultiset;->create(Ljava/util/Comparator;)Lcom/google/common/collect/TreeMultiset;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/eb;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    goto/16 :goto_27

    .line 292
    :cond_b5
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->verifyEntries(Ljava/util/Collection;)V

    .line 293
    invoke-static {p0, v0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->createFromSorted(Ljava/util/Comparator;Ljava/util/List;)Lcom/google/common/collect/RegularImmutableSortedMultiset;

    move-result-object p1

    goto/16 :goto_15
.end method

.method private static copyOfInternal(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 299
    invoke-static {p0}, Lcom/google/common/collect/TreeMultiset;->create(Ljava/util/Comparator;)Lcom/google/common/collect/TreeMultiset;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/ee;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 302
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->emptyMultiset(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    .line 305
    :goto_19
    return-object v0

    .line 304
    :cond_1a
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->verifyEntries(Ljava/util/Collection;)V

    .line 305
    invoke-static {p0, v0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->createFromSorted(Ljava/util/Comparator;Ljava/util/List;)Lcom/google/common/collect/RegularImmutableSortedMultiset;

    move-result-object v0

    goto :goto_19
.end method

.method public static copyOfSorted(Lcom/google/common/collect/kg;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 2
    .parameter

    .prologue
    .line 270
    invoke-interface {p0}, Lcom/google/common/collect/kg;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 271
    if-nez v0, :cond_8

    .line 272
    sget-object v0, Lcom/google/common/collect/ImmutableSortedMultiset;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 274
    :cond_8
    invoke-static {v0, p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOfInternal(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method static emptyMultiset(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 2
    .parameter

    .prologue
    .line 316
    sget-object v0, Lcom/google/common/collect/ImmutableSortedMultiset;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 317
    sget-object v0, Lcom/google/common/collect/ImmutableSortedMultiset;->NATURAL_EMPTY_MULTISET:Lcom/google/common/collect/ImmutableSortedMultiset;

    .line 319
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/google/common/collect/EmptyImmutableSortedMultiset;

    invoke-direct {v0, p0}, Lcom/google/common/collect/EmptyImmutableSortedMultiset;-><init>(Ljava/util/Comparator;)V

    goto :goto_a
.end method

.method public static naturalOrder()Lcom/google/common/collect/dz;
    .registers 2

    .prologue
    .line 446
    new-instance v0, Lcom/google/common/collect/dz;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/dz;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static of()Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 1

    .prologue
    .line 89
    sget-object v0, Lcom/google/common/collect/ImmutableSortedMultiset;->NATURAL_EMPTY_MULTISET:Lcom/google/common/collect/ImmutableSortedMultiset;

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 4
    .parameter

    .prologue
    .line 96
    sget-object v0, Lcom/google/common/collect/ImmutableSortedMultiset;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/common/collect/Multisets;->a(Ljava/lang/Object;I)Lcom/google/common/collect/ir;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->createFromSorted(Ljava/util/Comparator;Ljava/util/List;)Lcom/google/common/collect/RegularImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;[Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    array-length v0, p6

    add-int/lit8 v0, v0, 0x6

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const/4 v2, 0x2

    aput-object p2, v0, v2

    const/4 v2, 0x3

    aput-object p3, v0, v2

    const/4 v2, 0x4

    aput-object p4, v0, v2

    const/4 v2, 0x5

    aput-object p5, v0, v2

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 164
    invoke-static {v1, p6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 165
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static orderedBy(Ljava/util/Comparator;)Lcom/google/common/collect/dz;
    .registers 2
    .parameter

    .prologue
    .line 420
    new-instance v0, Lcom/google/common/collect/dz;

    invoke-direct {v0, p0}, Lcom/google/common/collect/dz;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static reverseOrder()Lcom/google/common/collect/dz;
    .registers 2

    .prologue
    .line 432
    new-instance v0, Lcom/google/common/collect/dz;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/dz;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static verifyEntries(Ljava/util/Collection;)V
    .registers 3
    .parameter

    .prologue
    .line 309
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ir;

    .line 310
    invoke-interface {v0}, Lcom/google/common/collect/ir;->getElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 312
    :cond_18
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method abstract createDescendingElementSet()Lcom/google/common/collect/ImmutableSortedSet;
.end method

.method abstract createElementSet()Lcom/google/common/collect/ImmutableSortedSet;
.end method

.method abstract descendingEntryIterator()Lcom/google/common/collect/mt;
.end method

.method public descendingMultiset()Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset;->descendingMultiset:Lcom/google/common/collect/ImmutableSortedMultiset;

    .line 371
    if-nez v0, :cond_b

    .line 372
    new-instance v0, Lcom/google/common/collect/DescendingImmutableSortedMultiset;

    invoke-direct {v0, p0}, Lcom/google/common/collect/DescendingImmutableSortedMultiset;-><init>(Lcom/google/common/collect/ImmutableSortedMultiset;)V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset;->descendingMultiset:Lcom/google/common/collect/ImmutableSortedMultiset;

    .line 374
    :cond_b
    return-object v0
.end method

.method public bridge synthetic descendingMultiset()Lcom/google/common/collect/kg;
    .registers 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->descendingMultiset()Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Lcom/google/common/collect/ImmutableSortedSet;
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/ImmutableSortedSet;

    .line 356
    if-nez v0, :cond_a

    .line 357
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->createElementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset;->elementSet:Lcom/google/common/collect/ImmutableSortedSet;

    .line 359
    :cond_a
    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/SortedSet;
    .registers 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public abstract headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
.end method

.method public bridge synthetic headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kg;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMultiset;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public final pollFirstEntry()Lcom/google/common/collect/ir;
    .registers 2

    .prologue
    .line 386
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public pollLastEntry()Lcom/google/common/collect/ir;
    .registers 2

    .prologue
    .line 396
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method reverseComparator()Ljava/util/Comparator;
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset;->reverseComparator:Ljava/util/Comparator;

    .line 345
    if-nez v0, :cond_10

    .line 346
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset;->reverseComparator:Ljava/util/Comparator;

    .line 348
    :cond_10
    return-object v0
.end method

.method public subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 405
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMultiset;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/google/common/collect/ImmutableSortedMultiset;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kg;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/ImmutableSortedMultiset;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public abstract tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
.end method

.method public bridge synthetic tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kg;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMultiset;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method unsafeComparator()Ljava/util/Comparator;
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 604
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMultiset$SerializedForm;-><init>(Lcom/google/common/collect/kg;)V

    return-object v0
.end method
