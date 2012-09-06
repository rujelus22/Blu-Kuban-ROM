.class public final Lcom/google/common/collect/Multimaps;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic a(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 2
    .parameter

    .prologue
    .line 66
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_16

    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_a

    :cond_16
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_21

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_a

    :cond_21
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_a
.end method

.method static synthetic a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .registers 2
    .parameter

    .prologue
    .line 66
    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/hv;

    invoke-direct {v0, p0}, Lcom/google/common/collect/hv;-><init>(Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method static synthetic a(Ljava/util/Set;)Ljava/util/Set;
    .registers 3
    .parameter

    .prologue
    .line 66
    new-instance v0, Lcom/google/common/collect/ij;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ij;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method static synthetic b(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 66
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Lcom/google/common/collect/Maps;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/google/common/collect/hp;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/hp;-><init>(Ljava/util/Collection;)V

    goto :goto_a
.end method
