.class final Lcom/google/common/collect/RegularImmutableSortedMultiset;
.super Lcom/google/common/collect/ImmutableSortedMultiset;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final transient entries:Lcom/google/common/collect/ImmutableList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lcom/google/common/collect/RegularImmutableSortedMultiset;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Ljava/util/Comparator;Lcom/google/common/collect/ImmutableList;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSortedMultiset;-><init>(Ljava/util/Comparator;)V

    .line 74
    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->entries:Lcom/google/common/collect/ImmutableList;

    .line 75
    sget-boolean v0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->$assertionsDisabled:Z

    if-nez v0, :cond_15

    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 76
    :cond_15
    return-void
.end method

.method static createFromSorted(Ljava/util/Comparator;Ljava/util/List;)Lcom/google/common/collect/RegularImmutableSortedMultiset;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ltz v1, :cond_33

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    const/4 v0, 0x0

    .line 62
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ir;

    .line 63
    new-instance v2, Lcom/google/common/collect/jr;

    invoke-interface {v0}, Lcom/google/common/collect/ir;->getElement()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Lcom/google/common/collect/ir;->getCount()I

    move-result v0

    invoke-direct {v2, v5, v0, v1}, Lcom/google/common/collect/jr;-><init>(Ljava/lang/Object;ILcom/google/common/collect/jr;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    goto :goto_15

    .line 60
    :cond_33
    const/4 v0, 0x0

    goto :goto_7

    .line 66
    :cond_35
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedMultiset;

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/RegularImmutableSortedMultiset;-><init>(Ljava/util/Comparator;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method private createSubMultiset(II)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 189
    if-nez p1, :cond_b

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->entries:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ne p2, v0, :cond_b

    .line 194
    :goto_a
    return-object p0

    .line 191
    :cond_b
    if-lt p1, p2, :cond_16

    .line 192
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->emptyMultiset(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p0

    goto :goto_a

    .line 194
    :cond_16
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedMultiset;

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->entries:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, p1, p2}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableSortedMultiset;-><init>(Ljava/util/Comparator;Lcom/google/common/collect/ImmutableList;)V

    move-object p0, v0

    goto :goto_a
.end method


# virtual methods
.method public final count(Ljava/lang/Object;)I
    .registers 7
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 140
    if-nez p1, :cond_5

    move v0, v1

    .line 148
    :goto_4
    return v0

    .line 144
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v2

    sget-object v3, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->INVERTED_INSERTION_INDEX:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    invoke-static {v0, p1, v2, v3, v4}, Lcom/google/common/collect/SortedLists;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    .line 146
    if-ltz v0, :cond_24

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->entries:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/jr;

    invoke-virtual {v0}, Lcom/google/common/collect/jr;->getCount()I
    :try_end_22
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_22} :catch_26

    move-result v0

    goto :goto_4

    :cond_24
    move v0, v1

    goto :goto_4

    .line 148
    :catch_26
    move-exception v0

    move v0, v1

    goto :goto_4
.end method

.method final createDescendingElementSet()Lcom/google/common/collect/ImmutableSortedSet;
    .registers 4

    .prologue
    .line 94
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementList()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->reverse()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->reverseComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    return-object v0
.end method

.method final createElementSet()Lcom/google/common/collect/ImmutableSortedSet;
    .registers 4

    .prologue
    .line 89
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementList()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    return-object v0
.end method

.method final descendingEntryIterator()Lcom/google/common/collect/mt;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->entries:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->reverse()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method final distinctElements()I
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->entries:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method final elementList()Lcom/google/common/collect/ImmutableList;
    .registers 3

    .prologue
    .line 79
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedMultiset$1;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->entries:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/RegularImmutableSortedMultiset$1;-><init>(Lcom/google/common/collect/RegularImmutableSortedMultiset;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method final entryIterator()Lcom/google/common/collect/mt;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->entries:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic firstEntry()Lcom/google/common/collect/ir;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->firstEntry()Lcom/google/common/collect/jr;

    move-result-object v0

    return-object v0
.end method

.method public final firstEntry()Lcom/google/common/collect/jr;
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->entries:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/jr;

    return-object v0
.end method

.method public final headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 155
    sget-object v0, Lcom/google/common/collect/jq;->a:[I

    invoke-virtual {p2}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_42

    .line 165
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 157
    :pswitch_11
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v2

    sget-object v3, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/SortedLists;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    .line 167
    :goto_25
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->createSubMultiset(II)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0

    .line 161
    :pswitch_2b
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v2

    sget-object v3, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/SortedLists;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 163
    goto :goto_25

    .line 155
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_11
        :pswitch_2b
    .end packed-switch
.end method

.method public final bridge synthetic headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kg;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method final isPartialView()Z
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->entries:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic lastEntry()Lcom/google/common/collect/ir;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->lastEntry()Lcom/google/common/collect/jr;

    move-result-object v0

    return-object v0
.end method

.method public final lastEntry()Lcom/google/common/collect/jr;
    .registers 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->entries:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset;->entries:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/jr;

    return-object v0
.end method

.method public final size()I
    .registers 6

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->firstEntry()Lcom/google/common/collect/jr;

    move-result-object v0

    .line 122
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->lastEntry()Lcom/google/common/collect/jr;

    move-result-object v1

    .line 123
    iget-wide v1, v1, Lcom/google/common/collect/jr;->c:J

    iget-wide v3, v0, Lcom/google/common/collect/jr;->c:J

    sub-long/2addr v1, v3

    iget v0, v0, Lcom/google/common/collect/jr;->b:I

    int-to-long v3, v0

    add-long v0, v1, v3

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->b(J)I

    move-result v0

    return v0
.end method

.method public final tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 173
    sget-object v0, Lcom/google/common/collect/jq;->a:[I

    invoke-virtual {p2}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_46

    .line 183
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 175
    :pswitch_11
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v2

    sget-object v3, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/SortedLists;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 185
    :goto_27
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->distinctElements()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->createSubMultiset(II)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0

    .line 179
    :pswitch_30
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->elementList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v2

    sget-object v3, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/SortedLists;->a(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    goto :goto_27

    .line 173
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_11
        :pswitch_30
    .end packed-switch
.end method

.method public final bridge synthetic tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/kg;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedMultiset;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method
