.class public final Lcom/google/common/collect/ConcurrentHashMultiset;
.super Lcom/google/common/collect/ao;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient countMap:Ljava/util/concurrent/ConcurrentMap;

.field private transient entrySet:Lcom/google/common/collect/av;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentMap;)V
    .registers 3
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/google/common/collect/ao;-><init>()V

    .line 104
    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/t;->a(Z)V

    .line 105
    iput-object p1, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    .line 106
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public static create()Lcom/google/common/collect/ConcurrentHashMultiset;
    .registers 2

    .prologue
    .line 74
    new-instance v0, Lcom/google/common/collect/ConcurrentHashMultiset;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/common/collect/ConcurrentHashMultiset;-><init>(Ljava/util/concurrent/ConcurrentMap;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/ConcurrentHashMultiset;
    .registers 2
    .parameter

    .prologue
    .line 86
    invoke-static {}, Lcom/google/common/collect/ConcurrentHashMultiset;->create()Lcom/google/common/collect/ConcurrentHashMultiset;

    move-result-object v0

    .line 87
    invoke-static {v0, p0}, Lcom/google/common/collect/cq;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 88
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 479
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 480
    sget-object v0, Lcom/google/common/collect/ax;->a:Lcom/google/common/collect/fy;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/google/common/collect/fy;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 482
    invoke-static {p0, p1}, Lcom/google/common/collect/fx;->a(Lcom/google/common/collect/fj;Ljava/io/ObjectInputStream;)V

    .line 483
    return-void
.end method

.method private removeAllOccurrences(Ljava/lang/Object;)I
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 254
    :try_start_1
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/google/common/collect/ConcurrentHashMultiset;->unbox(Ljava/lang/Integer;)I
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_c} :catch_e
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_c} :catch_11

    move-result v0

    .line 258
    :goto_d
    return v0

    .line 256
    :catch_e
    move-exception v0

    move v0, v1

    goto :goto_d

    .line 258
    :catch_11
    move-exception v0

    move v0, v1

    goto :goto_d
.end method

.method private snapshot()Ljava/util/List;
    .registers 5

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 160
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fk;

    .line 161
    invoke-interface {v0}, Lcom/google/common/collect/fk;->a()Ljava/lang/Object;

    move-result-object v3

    .line 162
    invoke-interface {v0}, Lcom/google/common/collect/fk;->b()I

    move-result v0

    :goto_24
    if-lez v0, :cond_10

    .line 163
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    .line 166
    :cond_2c
    return-object v1
.end method

.method private static unbox(Ljava/lang/Integer;)I
    .registers 2
    .parameter

    .prologue
    .line 464
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 472
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 474
    invoke-static {p0}, Lcom/google/common/collect/HashMultiset;->create(Ljava/lang/Iterable;)Lcom/google/common/collect/HashMultiset;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/fx;->a(Lcom/google/common/collect/fj;Ljava/io/ObjectOutputStream;)V

    .line 475
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;I)I
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 182
    if-nez p2, :cond_9

    .line 183
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->count(Ljava/lang/Object;)I

    move-result v2

    .line 199
    :goto_8
    return v2

    .line 185
    :cond_9
    if-lez p2, :cond_2c

    move v0, v1

    :goto_c
    const-string v3, "Invalid occurrences: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/t;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 188
    :cond_19
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->count(Ljava/lang/Object;)I

    move-result v3

    .line 189
    if-nez v3, :cond_2e

    .line 190
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_8

    :cond_2c
    move v0, v2

    .line 185
    goto :goto_c

    .line 194
    :cond_2e
    const v0, 0x7fffffff

    sub-int/2addr v0, v3

    if-gt p2, v0, :cond_5d

    move v0, v1

    :goto_35
    const-string v4, "Overflow adding %s occurrences to a count of %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0, v4, v5}, Lcom/google/common/base/t;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 197
    add-int v0, v3, p2

    .line 198
    iget-object v4, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, p1, v5, v0}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v2, v3

    .line 199
    goto :goto_8

    :cond_5d
    move v0, v2

    .line 194
    goto :goto_35
.end method

.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/common/collect/ao;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic addAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/common/collect/ao;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic clear()V
    .registers 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/google/common/collect/ao;->clear()V

    return-void
.end method

.method public final bridge synthetic contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/common/collect/ao;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/common/collect/ao;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final count(Ljava/lang/Object;)I
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 118
    :try_start_1
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/google/common/collect/ConcurrentHashMultiset;->unbox(Ljava/lang/Integer;)I
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_c} :catch_e
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_c} :catch_11

    move-result v0

    .line 122
    :goto_d
    return v0

    .line 120
    :catch_e
    move-exception v0

    move v0, v1

    goto :goto_d

    .line 122
    :catch_11
    move-exception v0

    move v0, v1

    goto :goto_d
.end method

.method final createElementSet()Ljava/util/Set;
    .registers 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 348
    new-instance v1, Lcom/google/common/collect/au;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/au;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;Ljava/util/Set;)V

    return-object v1
.end method

.method public final bridge synthetic elementSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 46
    invoke-super {p0}, Lcom/google/common/collect/ao;->elementSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->entrySet:Lcom/google/common/collect/av;

    .line 368
    if-nez v0, :cond_b

    .line 369
    new-instance v0, Lcom/google/common/collect/av;

    invoke-direct {v0, p0}, Lcom/google/common/collect/av;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V

    iput-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->entrySet:Lcom/google/common/collect/av;

    .line 371
    :cond_b
    return-object v0
.end method

.method public final bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/common/collect/ao;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic hashCode()I
    .registers 2

    .prologue
    .line 46
    invoke-super {p0}, Lcom/google/common/collect/ao;->hashCode()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic isEmpty()Z
    .registers 2

    .prologue
    .line 46
    invoke-super {p0}, Lcom/google/common/collect/ao;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 46
    invoke-super {p0}, Lcom/google/common/collect/ao;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;I)I
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 217
    if-nez p2, :cond_9

    .line 218
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->count(Ljava/lang/Object;)I

    move-result v2

    .line 237
    :cond_8
    :goto_8
    return v2

    .line 220
    :cond_9
    if-lez p2, :cond_2f

    move v0, v1

    :goto_c
    const-string v3, "Invalid occurrences: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/t;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 223
    :cond_19
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 224
    if-eqz v0, :cond_8

    .line 227
    if-lt p2, v0, :cond_31

    .line 228
    iget-object v1, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    move v2, v0

    .line 229
    goto :goto_8

    :cond_2f
    move v0, v2

    .line 220
    goto :goto_c

    .line 236
    :cond_31
    iget-object v1, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sub-int v4, v0, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, p1, v3, v4}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    move v2, v0

    .line 237
    goto :goto_8
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/common/collect/ao;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic removeAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/common/collect/ao;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final removeExactly(Ljava/lang/Object;I)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 275
    if-nez p2, :cond_5

    .line 293
    :goto_4
    return v1

    .line 278
    :cond_5
    if-lez p2, :cond_1d

    move v0, v1

    :goto_8
    const-string v3, "Invalid occurrences: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/t;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 281
    :cond_15
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 282
    if-le p2, v0, :cond_1f

    move v1, v2

    .line 283
    goto :goto_4

    :cond_1d
    move v0, v2

    .line 278
    goto :goto_8

    .line 285
    :cond_1f
    if-ne p2, v0, :cond_2e

    .line 286
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_4

    .line 292
    :cond_2e
    iget-object v3, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, p1, v4, v0}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_4
.end method

.method public final bridge synthetic retainAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/common/collect/ao;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final setCount(Ljava/lang/Object;I)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 308
    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/google/common/collect/Multisets;->a(ILjava/lang/String;)V

    .line 309
    if-nez p2, :cond_c

    invoke-direct {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->removeAllOccurrences(Ljava/lang/Object;)I

    move-result v0

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/google/common/collect/ConcurrentHashMultiset;->unbox(Ljava/lang/Integer;)I

    move-result v0

    goto :goto_b
.end method

.method public final setCount(Ljava/lang/Object;II)Z
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 328
    const-string v2, "oldCount"

    invoke-static {p2, v2}, Lcom/google/common/collect/Multisets;->a(ILjava/lang/String;)V

    .line 329
    const-string v2, "newCount"

    invoke-static {p3, v2}, Lcom/google/common/collect/Multisets;->a(ILjava/lang/String;)V

    .line 330
    if-nez p3, :cond_26

    .line 331
    if-nez p2, :cond_1b

    .line 333
    iget-object v2, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 341
    :cond_18
    :goto_18
    return v0

    :cond_19
    move v0, v1

    .line 333
    goto :goto_18

    .line 335
    :cond_1b
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_18

    .line 338
    :cond_26
    if-nez p2, :cond_36

    .line 339
    iget-object v2, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_18

    move v0, v1

    goto :goto_18

    .line 341
    :cond_36
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_18
.end method

.method public final size()I
    .registers 7

    .prologue
    .line 134
    const-wide/16 v0, 0x0

    .line 135
    iget-object v2, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 136
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_d

    .line 138
    :cond_22
    const-wide/32 v3, 0x7fffffff

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->snapshot()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->snapshot()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    invoke-super {p0}, Lcom/google/common/collect/ao;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
