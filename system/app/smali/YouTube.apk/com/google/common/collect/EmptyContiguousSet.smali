.class final Lcom/google/common/collect/EmptyContiguousSet;
.super Lcom/google/common/collect/ContiguousSet;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/google/common/collect/cr;)V
    .registers 2
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/common/collect/ContiguousSet;-><init>(Lcom/google/common/collect/cr;)V

    .line 35
    return-void
.end method


# virtual methods
.method public final asList()Lcom/google/common/collect/ImmutableList;
    .registers 2

    .prologue
    .line 92
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 100
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_b

    .line 101
    check-cast p1, Ljava/util/Set;

    .line 102
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    .line 104
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final first()Ljava/lang/Comparable;
    .registers 2

    .prologue
    .line 38
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final bridge synthetic first()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyContiguousSet;->first()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method final headSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 62
    return-object p0
.end method

.method final bridge synthetic headSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 30
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/EmptyContiguousSet;->headSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;

    move-result-object v0

    return-object v0
.end method

.method final indexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 76
    const/4 v0, -0x1

    return v0
.end method

.method public final intersection(Lcom/google/common/collect/ContiguousSet;)Lcom/google/common/collect/ContiguousSet;
    .registers 2
    .parameter

    .prologue
    .line 50
    return-object p0
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x1

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
    .registers 2

    .prologue
    .line 80
    invoke-static {}, Lcom/google/common/collect/ee;->a()Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyContiguousSet;->iterator()Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method public final last()Ljava/lang/Comparable;
    .registers 2

    .prologue
    .line 42
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final bridge synthetic last()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/common/collect/EmptyContiguousSet;->last()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public final range()Lcom/google/common/collect/Range;
    .registers 2

    .prologue
    .line 54
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final range(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 58
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method final subSetImpl(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    return-object p0
.end method

.method final bridge synthetic subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    check-cast p1, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/EmptyContiguousSet;->subSetImpl(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;

    move-result-object v0

    return-object v0
.end method

.method final tailSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 71
    return-object p0
.end method

.method final bridge synthetic tailSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 30
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/EmptyContiguousSet;->tailSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/ContiguousSet;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    const-string v0, "[]"

    return-object v0
.end method

.method final writeReplace()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 129
    new-instance v0, Lcom/google/common/collect/EmptyContiguousSet$SerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/EmptyContiguousSet;->domain:Lcom/google/common/collect/cr;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/EmptyContiguousSet$SerializedForm;-><init>(Lcom/google/common/collect/cr;Lcom/google/common/collect/cs;)V

    return-object v0
.end method
