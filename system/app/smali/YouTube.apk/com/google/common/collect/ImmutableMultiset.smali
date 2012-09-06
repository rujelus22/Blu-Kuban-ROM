.class public abstract Lcom/google/common/collect/ImmutableMultiset;
.super Lcom/google/common/collect/ImmutableCollection;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/iq;


# instance fields
.field private transient entrySet:Lcom/google/common/collect/ImmutableSet;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/common/collect/ds;
    .registers 1

    .prologue
    .line 496
    new-instance v0, Lcom/google/common/collect/ds;

    invoke-direct {v0}, Lcom/google/common/collect/ds;-><init>()V

    return-object v0
.end method

.method static copyFromEntries(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultiset;
    .registers 10
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 210
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/dm;

    move-result-object v5

    .line 211
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v1, v3

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ir;

    .line 212
    invoke-interface {v0}, Lcom/google/common/collect/ir;->getCount()I

    move-result v7

    .line 213
    if-lez v7, :cond_44

    .line 216
    invoke-interface {v0}, Lcom/google/common/collect/ir;->getElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Lcom/google/common/collect/dm;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dm;

    .line 217
    int-to-long v7, v7

    add-long v0, v1, v7

    :goto_2b
    move-wide v1, v0

    .line 219
    goto :goto_b

    .line 221
    :cond_2d
    cmp-long v0, v1, v3

    if-nez v0, :cond_36

    .line 222
    invoke-static {}, Lcom/google/common/collect/ImmutableMultiset;->of()Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    .line 224
    :goto_35
    return-object v0

    :cond_36
    new-instance v0, Lcom/google/common/collect/RegularImmutableMultiset;

    invoke-virtual {v5}, Lcom/google/common/collect/dm;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->b(J)I

    move-result v1

    invoke-direct {v0, v3, v1}, Lcom/google/common/collect/RegularImmutableMultiset;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    goto :goto_35

    :cond_44
    move-wide v0, v1

    goto :goto_2b
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset;
    .registers 3
    .parameter

    .prologue
    .line 183
    instance-of v0, p0, Lcom/google/common/collect/ImmutableMultiset;

    if-eqz v0, :cond_e

    move-object v0, p0

    .line 185
    check-cast v0, Lcom/google/common/collect/ImmutableMultiset;

    .line 186
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset;->isPartialView()Z

    move-result v1

    if-nez v1, :cond_e

    .line 195
    :goto_d
    return-object v0

    .line 191
    :cond_e
    instance-of v0, p0, Lcom/google/common/collect/iq;

    if-eqz v0, :cond_1b

    invoke-static {p0}, Lcom/google/common/collect/Multisets;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/iq;

    move-result-object v0

    .line 195
    :goto_16
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyOfInternal(Lcom/google/common/collect/iq;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    goto :goto_d

    .line 191
    :cond_1b
    invoke-static {p0}, Lcom/google/common/collect/LinkedHashMultiset;->create(Ljava/lang/Iterable;)Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    goto :goto_16
.end method

.method public static copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableMultiset;
    .registers 2
    .parameter

    .prologue
    .line 239
    invoke-static {}, Lcom/google/common/collect/LinkedHashMultiset;->create()Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    .line 240
    invoke-static {v0, p0}, Lcom/google/common/collect/ee;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 241
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyOfInternal(Lcom/google/common/collect/iq;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset;
    .registers 2
    .parameter

    .prologue
    .line 161
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method private static copyOfInternal(Lcom/google/common/collect/iq;)Lcom/google/common/collect/ImmutableMultiset;
    .registers 2
    .parameter

    .prologue
    .line 204
    invoke-interface {p0}, Lcom/google/common/collect/iq;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyFromEntries(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method private static varargs copyOfInternal([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset;
    .registers 2
    .parameter

    .prologue
    .line 199
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static of()Lcom/google/common/collect/ImmutableMultiset;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/common/collect/EmptyImmutableMultiset;->INSTANCE:Lcom/google/common/collect/EmptyImmutableMultiset;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset;
    .registers 3
    .parameter

    .prologue
    .line 70
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyOfInternal([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyOfInternal([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyOfInternal([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyOfInternal([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyOfInternal([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    array-length v0, p6

    add-int/lit8 v0, v0, 0x6

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

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

    .line 129
    invoke-static {v1, p6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 130
    invoke-static {v1}, Lcom/google/common/collect/ImmutableMultiset;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static of([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset;
    .registers 2
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 147
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 288
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    .prologue
    .line 361
    new-instance v0, Lcom/google/common/collect/ImmutableMultiset$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableMultiset$EntrySet;-><init>(Lcom/google/common/collect/ImmutableMultiset;)V

    return-object v0
.end method

.method abstract distinctElements()I
.end method

.method abstract entryIterator()Lcom/google/common/collect/mt;
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->entrySet:Lcom/google/common/collect/ImmutableSet;

    .line 353
    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->createEntrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultiset;->entrySet:Lcom/google/common/collect/ImmutableSet;

    :cond_a
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 322
    if-ne p1, p0, :cond_6

    move v0, v1

    .line 337
    :goto_5
    return v0

    .line 325
    :cond_6
    instance-of v0, p1, Lcom/google/common/collect/iq;

    if-eqz v0, :cond_3e

    .line 326
    check-cast p1, Lcom/google/common/collect/iq;

    .line 327
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/google/common/collect/iq;->size()I

    move-result v3

    if-eq v0, v3, :cond_18

    move v0, v2

    .line 328
    goto :goto_5

    .line 330
    :cond_18
    invoke-interface {p1}, Lcom/google/common/collect/iq;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ir;

    .line 331
    invoke-interface {v0}, Lcom/google/common/collect/ir;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/common/collect/ImmutableMultiset;->count(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v0}, Lcom/google/common/collect/ir;->getCount()I

    move-result v0

    if-eq v4, v0, :cond_20

    move v0, v2

    .line 332
    goto :goto_5

    :cond_3c
    move v0, v1

    .line 335
    goto :goto_5

    :cond_3e
    move v0, v2

    .line 337
    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/mt;
    .registers 3

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->entryIterator()Lcom/google/common/collect/mt;

    move-result-object v0

    .line 249
    new-instance v1, Lcom/google/common/collect/dr;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/dr;-><init>(Lcom/google/common/collect/ImmutableMultiset;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->iterator()Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 298
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final setCount(Ljava/lang/Object;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 308
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final setCount(Ljava/lang/Object;II)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 318
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 488
    new-instance v0, Lcom/google/common/collect/ImmutableMultiset$SerializedForm;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableMultiset$SerializedForm;-><init>(Lcom/google/common/collect/iq;)V

    return-object v0
.end method
