.class final Lcom/google/common/collect/RegularContiguousSet;
.super Lcom/google/common/collect/ContiguousSet;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final range:Lcom/google/common/collect/Range;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/cr;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p2}, Lcom/google/common/collect/ContiguousSet;-><init>(Lcom/google/common/collect/cr;)V

    .line 41
    iput-object p1, p0, Lcom/google/common/collect/RegularContiguousSet;->range:Lcom/google/common/collect/Range;

    .line 42
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/google/common/collect/RegularContiguousSet;->equalsOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method

.method private static equalsOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .registers 3
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 80
    if-eqz p1, :cond_a

    invoke-static {p0, p1}, Lcom/google/common/collect/Range;->compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/RegularContiguousSet;->range:Lcom/google/common/collect/Range;

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v0

    .line 104
    :goto_8
    return v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/RegularContiguousSet;->range:Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->containsAll(Ljava/lang/Iterable;)Z
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 112
    :goto_6
    return v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 154
    if-ne p1, p0, :cond_5

    move v0, v1

    .line 163
    :goto_4
    return v0

    .line 156
    :cond_5
    instance-of v0, p1, Lcom/google/common/collect/RegularContiguousSet;

    if-eqz v0, :cond_36

    move-object v0, p1

    .line 157
    check-cast v0, Lcom/google/common/collect/RegularContiguousSet;

    .line 158
    iget-object v2, p0, Lcom/google/common/collect/RegularContiguousSet;->domain:Lcom/google/common/collect/cr;

    iget-object v3, v0, Lcom/google/common/collect/RegularContiguousSet;->domain:Lcom/google/common/collect/cr;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 159
    invoke-virtual {p0}, Lcom/google/common/collect/RegularContiguousSet;->first()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/collect/RegularContiguousSet;->first()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {p0}, Lcom/google/common/collect/RegularContiguousSet;->last()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/collect/RegularContiguousSet;->last()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    move v0, v1

    goto :goto_4

    :cond_34
    const/4 v0, 0x0

    goto :goto_4

    .line 163
    :cond_36
    invoke-super {p0, p1}, Lcom/google/common/collect/ContiguousSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public final first()Ljava/lang/Comparable;
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/common/collect/RegularContiguousSet;->range:Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v1, p0, Lcom/google/common/collect/RegularContiguousSet;->domain:Lcom/google/common/collect/cr;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Cut;->leastValueAbove(Lcom/google/common/collect/cr;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic first()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/common/collect/RegularContiguousSet;->first()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 168
    invoke-static {p0}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method final headSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v1, p0, Lcom/google/common/collect/RegularContiguousSet;->range:Lcom/google/common/collect/Range;

    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object v0

    sget-object v2, Lcom/google/common/collect/jk;->a:[I

    invoke-virtual {v0}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_34

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_17
    invoke-static {}, Lcom/google/common/collect/Cut;->belowAll()Lcom/google/common/collect/Cut;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/collect/jj;->a(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v0

    :goto_23
    invoke-virtual {v1, v0}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/RegularContiguousSet;->domain:Lcom/google/common/collect/cr;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Range;->asSet(Lcom/google/common/collect/cr;)Lcom/google/common/collect/ContiguousSet;

    move-result-object v0

    return-object v0

    :pswitch_2e
    invoke-static {p1}, Lcom/google/common/collect/jj;->a(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    goto :goto_23

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_17
        :pswitch_2e
    .end packed-switch
.end method

.method final bridge synthetic headSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 34
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularContiguousSet;->headSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;

    move-result-object v0

    return-object v0
.end method

.method final indexOf(Ljava/lang/Object;)I
    .registers 4
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularContiguousSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/common/collect/RegularContiguousSet;->domain:Lcom/google/common/collect/cr;

    invoke-virtual {p0}, Lcom/google/common/collect/RegularContiguousSet;->first()Ljava/lang/Comparable;

    move-result-object v1

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/cr;->distance(Ljava/lang/Comparable;Ljava/lang/Comparable;)J

    move-result-wide v0

    long-to-int v0, v0

    :goto_13
    return v0

    :cond_14
    const/4 v0, -0x1

    goto :goto_13
.end method

.method public final intersection(Lcom/google/common/collect/ContiguousSet;)Lcom/google/common/collect/ContiguousSet;
    .registers 6
    .parameter

    .prologue
    .line 131
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/google/common/collect/RegularContiguousSet;->domain:Lcom/google/common/collect/cr;

    iget-object v1, p1, Lcom/google/common/collect/ContiguousSet;->domain:Lcom/google/common/collect/cr;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 133
    invoke-virtual {p1}, Lcom/google/common/collect/ContiguousSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 138
    :goto_14
    return-object p1

    .line 136
    :cond_15
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/RegularContiguousSet;->first()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/common/collect/ContiguousSet;->first()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 137
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/RegularContiguousSet;->last()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/common/collect/ContiguousSet;->last()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    .line 138
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_52

    invoke-static {v0}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v0

    invoke-static {v1}, Lcom/google/common/collect/Cut;->aboveValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/jj;->a(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/RegularContiguousSet;->domain:Lcom/google/common/collect/cr;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Range;->asSet(Lcom/google/common/collect/cr;)Lcom/google/common/collect/ContiguousSet;

    move-result-object p1

    goto :goto_14

    :cond_52
    new-instance p1, Lcom/google/common/collect/EmptyContiguousSet;

    iget-object v0, p0, Lcom/google/common/collect/RegularContiguousSet;->domain:Lcom/google/common/collect/cr;

    invoke-direct {p1, v0}, Lcom/google/common/collect/EmptyContiguousSet;-><init>(Lcom/google/common/collect/cr;)V

    goto :goto_14
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method final isPartialView()Z
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Lcom/google/common/collect/mt;
    .registers 3

    .prologue
    .line 69
    new-instance v0, Lcom/google/common/collect/jl;

    invoke-virtual {p0}, Lcom/google/common/collect/RegularContiguousSet;->first()Ljava/lang/Comparable;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/jl;-><init>(Lcom/google/common/collect/RegularContiguousSet;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/common/collect/RegularContiguousSet;->iterator()Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method public final last()Ljava/lang/Comparable;
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/common/collect/RegularContiguousSet;->range:Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v1, p0, Lcom/google/common/collect/RegularContiguousSet;->domain:Lcom/google/common/collect/cr;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Cut;->greatestValueBelow(Lcom/google/common/collect/cr;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic last()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/common/collect/RegularContiguousSet;->last()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public final range()Lcom/google/common/collect/Range;
    .registers 3

    .prologue
    .line 145
    sget-object v0, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    sget-object v1, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/RegularContiguousSet;->range(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public final range(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/common/collect/RegularContiguousSet;->range:Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v1, p0, Lcom/google/common/collect/RegularContiguousSet;->domain:Lcom/google/common/collect/cr;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/Cut;->withLowerBoundType(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/cr;)Lcom/google/common/collect/Cut;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/RegularContiguousSet;->range:Lcom/google/common/collect/Range;

    iget-object v1, v1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v2, p0, Lcom/google/common/collect/RegularContiguousSet;->domain:Lcom/google/common/collect/cr;

    invoke-virtual {v1, p2, v2}, Lcom/google/common/collect/Cut;->withUpperBoundType(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/cr;)Lcom/google/common/collect/Cut;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/jj;->a(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 5

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/common/collect/RegularContiguousSet;->domain:Lcom/google/common/collect/cr;

    invoke-virtual {p0}, Lcom/google/common/collect/RegularContiguousSet;->first()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/RegularContiguousSet;->last()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/cr;->distance(Ljava/lang/Comparable;Ljava/lang/Comparable;)J

    move-result-wide v0

    .line 97
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-ltz v2, :cond_19

    const v0, 0x7fffffff

    :goto_18
    return v0

    :cond_19
    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method

.method final subSetImpl(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    iget-object v2, p0, Lcom/google/common/collect/RegularContiguousSet;->range:Lcom/google/common/collect/Range;

    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object v0

    invoke-static {p4}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object v1

    invoke-static {v0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v0, v3, :cond_2f

    invoke-static {p1}, Lcom/google/common/collect/Cut;->aboveValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v0

    :goto_18
    sget-object v3, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v1, v3, :cond_34

    invoke-static {p3}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v1

    :goto_20
    invoke-static {v0, v1}, Lcom/google/common/collect/jj;->a(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/RegularContiguousSet;->domain:Lcom/google/common/collect/cr;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Range;->asSet(Lcom/google/common/collect/cr;)Lcom/google/common/collect/ContiguousSet;

    move-result-object v0

    return-object v0

    :cond_2f
    invoke-static {p1}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v0

    goto :goto_18

    :cond_34
    invoke-static {p3}, Lcom/google/common/collect/Cut;->aboveValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v1

    goto :goto_20
.end method

.method final bridge synthetic subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    check-cast p1, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/RegularContiguousSet;->subSetImpl(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;

    move-result-object v0

    return-object v0
.end method

.method final tailSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 64
    iget-object v1, p0, Lcom/google/common/collect/RegularContiguousSet;->range:Lcom/google/common/collect/Range;

    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object v0

    sget-object v2, Lcom/google/common/collect/jk;->a:[I

    invoke-virtual {v0}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_34

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_17
    invoke-static {p1}, Lcom/google/common/collect/Cut;->aboveValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/collect/jj;->a(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v0

    :goto_23
    invoke-virtual {v1, v0}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/RegularContiguousSet;->domain:Lcom/google/common/collect/cr;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Range;->asSet(Lcom/google/common/collect/cr;)Lcom/google/common/collect/ContiguousSet;

    move-result-object v0

    return-object v0

    :pswitch_2e
    invoke-static {p1}, Lcom/google/common/collect/jj;->b(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    goto :goto_23

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_17
        :pswitch_2e
    .end packed-switch
.end method

.method final bridge synthetic tailSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 34
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularContiguousSet;->tailSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;

    move-result-object v0

    return-object v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 122
    invoke-static {p0}, Lcom/google/common/collect/jd;->a(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 127
    invoke-static {p0, p1}, Lcom/google/common/collect/jd;->a(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final writeReplace()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 188
    new-instance v0, Lcom/google/common/collect/RegularContiguousSet$SerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/RegularContiguousSet;->range:Lcom/google/common/collect/Range;

    iget-object v2, p0, Lcom/google/common/collect/RegularContiguousSet;->domain:Lcom/google/common/collect/cr;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/RegularContiguousSet$SerializedForm;-><init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/cr;Lcom/google/common/collect/jl;)V

    return-object v0
.end method
