.class public final Lcom/google/common/collect/ConcurrentHashMultiset;
.super Lcom/google/common/collect/ak;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient countMap:Ljava/util/concurrent/ConcurrentMap;

.field private transient entrySet:Lcom/google/common/collect/co;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentMap;)V
    .registers 3
    .parameter

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/google/common/collect/ak;-><init>()V

    .line 135
    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 136
    iput-object p1, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    .line 137
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/ConcurrentHashMultiset;)Ljava/util/concurrent/ConcurrentMap;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public static create()Lcom/google/common/collect/ConcurrentHashMultiset;
    .registers 2

    .prologue
    .line 81
    new-instance v0, Lcom/google/common/collect/ConcurrentHashMultiset;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/common/collect/ConcurrentHashMultiset;-><init>(Ljava/util/concurrent/ConcurrentMap;)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/GenericMapMaker;)Lcom/google/common/collect/ConcurrentHashMultiset;
    .registers 3
    .parameter

    .prologue
    .line 121
    new-instance v0, Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-virtual {p0}, Lcom/google/common/collect/GenericMapMaker;->b()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ConcurrentHashMultiset;-><init>(Ljava/util/concurrent/ConcurrentMap;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/ConcurrentHashMultiset;
    .registers 2
    .parameter

    .prologue
    .line 93
    invoke-static {}, Lcom/google/common/collect/ConcurrentHashMultiset;->create()Lcom/google/common/collect/ConcurrentHashMultiset;

    move-result-object v0

    .line 94
    invoke-static {v0, p0}, Lcom/google/common/collect/eb;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 95
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 576
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 578
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    .line 580
    sget-object v1, Lcom/google/common/collect/cp;->a:Lcom/google/common/collect/ju;

    invoke-virtual {v1, p0, v0}, Lcom/google/common/collect/ju;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 581
    return-void
.end method

.method private safeGet(Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 159
    :try_start_1
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_9} :catch_a
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_9} :catch_d

    .line 163
    :goto_9
    return-object v0

    .line 161
    :catch_a
    move-exception v0

    move-object v0, v1

    goto :goto_9

    .line 163
    :catch_d
    move-exception v0

    move-object v0, v1

    goto :goto_9
.end method

.method private snapshot()Ljava/util/List;
    .registers 5

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 200
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

    check-cast v0, Lcom/google/common/collect/ir;

    .line 201
    invoke-interface {v0}, Lcom/google/common/collect/ir;->getElement()Ljava/lang/Object;

    move-result-object v3

    .line 202
    invoke-interface {v0}, Lcom/google/common/collect/ir;->getCount()I

    move-result v0

    :goto_24
    if-lez v0, :cond_10

    .line 203
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    .line 206
    :cond_2c
    return-object v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 571
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 572
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 573
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;I)I
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 221
    if-nez p2, :cond_9

    .line 222
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->count(Ljava/lang/Object;)I

    move-result v2

    .line 256
    :cond_8
    :goto_8
    return v2

    .line 224
    :cond_9
    if-lez p2, :cond_40

    move v0, v1

    :goto_c
    const-string v3, "Invalid occurrences: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/ag;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 227
    :cond_19
    invoke-direct {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->safeGet(Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    .line 228
    if-nez v0, :cond_2e

    .line 229
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 230
    if-eqz v0, :cond_8

    .line 237
    :cond_2e
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 238
    if-eqz v1, :cond_62

    .line 240
    :try_start_34
    invoke-static {v1, p2}, Lcom/google/common/a/a;->a(II)I

    move-result v3

    .line 241
    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z
    :try_end_3b
    .catch Ljava/lang/ArithmeticException; {:try_start_34 .. :try_end_3b} :catch_42

    move-result v3

    if-eqz v3, :cond_2e

    move v2, v1

    .line 243
    goto :goto_8

    :cond_40
    move v0, v2

    .line 224
    goto :goto_c

    .line 246
    :catch_42
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Overflow adding "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " occurrences to a count of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_62
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 254
    iget-object v3, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_8
.end method

.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/google/common/collect/ak;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic addAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/google/common/collect/ak;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final clear()V
    .registers 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 524
    return-void
.end method

.method public final bridge synthetic contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/google/common/collect/ak;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final count(Ljava/lang/Object;)I
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->safeGet(Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    .line 149
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_7
.end method

.method final createElementSet()Ljava/util/Set;
    .registers 3

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 447
    new-instance v1, Lcom/google/common/collect/cl;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/cl;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;Ljava/util/Set;)V

    return-object v1
.end method

.method final distinctElements()I
    .registers 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic elementSet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 51
    invoke-super {p0}, Lcom/google/common/collect/ak;->elementSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method final entryIterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 484
    new-instance v0, Lcom/google/common/collect/cm;

    invoke-direct {v0, p0}, Lcom/google/common/collect/cm;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V

    .line 502
    new-instance v1, Lcom/google/common/collect/cn;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/cn;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 3

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->entrySet:Lcom/google/common/collect/co;

    .line 467
    if-nez v0, :cond_c

    .line 468
    new-instance v0, Lcom/google/common/collect/co;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/co;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;B)V

    iput-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->entrySet:Lcom/google/common/collect/co;

    .line 470
    :cond_c
    return-object v0
.end method

.method public final bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/google/common/collect/ak;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic hashCode()I
    .registers 2

    .prologue
    .line 51
    invoke-super {p0}, Lcom/google/common/collect/ak;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 51
    invoke-super {p0}, Lcom/google/common/collect/ak;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;I)I
    .registers 8
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 276
    if-nez p2, :cond_9

    .line 277
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->count(Ljava/lang/Object;)I

    move-result v2

    .line 298
    :cond_8
    :goto_8
    return v2

    .line 279
    :cond_9
    if-lez p2, :cond_3a

    move v0, v1

    :goto_c
    const-string v3, "Invalid occurrences: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/ag;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 281
    invoke-direct {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->safeGet(Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    .line 282
    if-eqz v1, :cond_8

    .line 286
    :cond_1f
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 287
    if-eqz v0, :cond_8

    .line 288
    sub-int v3, v0, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 289
    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 290
    if-nez v3, :cond_38

    .line 293
    iget-object v2, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_38
    move v2, v0

    .line 295
    goto :goto_8

    :cond_3a
    move v0, v2

    .line 279
    goto :goto_c
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/google/common/collect/ak;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic removeAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/google/common/collect/ak;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final removeExactly(Ljava/lang/Object;I)Z
    .registers 9
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 315
    if-nez p2, :cond_5

    .line 336
    :cond_4
    :goto_4
    return v1

    .line 318
    :cond_5
    if-lez p2, :cond_1d

    move v0, v1

    :goto_8
    const-string v3, "Invalid occurrences: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ag;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 320
    invoke-direct {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->safeGet(Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    .line 321
    if-nez v0, :cond_1f

    move v1, v2

    .line 322
    goto :goto_4

    :cond_1d
    move v0, v2

    .line 318
    goto :goto_8

    .line 325
    :cond_1f
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 326
    if-ge v3, p2, :cond_27

    move v1, v2

    .line 327
    goto :goto_4

    .line 329
    :cond_27
    sub-int v4, v3, p2

    .line 330
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 331
    if-nez v4, :cond_4

    .line 334
    iget-object v2, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public final bridge synthetic retainAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/google/common/collect/ak;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final setCount(Ljava/lang/Object;I)I
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 349
    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/google/common/collect/Multisets;->a(ILjava/lang/String;)V

    .line 351
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->safeGet(Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    .line 352
    if-nez v0, :cond_21

    .line 353
    if-nez p2, :cond_10

    move v0, v1

    .line 384
    :goto_f
    return v0

    .line 356
    :cond_10
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v0, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 357
    if-nez v0, :cond_21

    move v0, v1

    .line 358
    goto :goto_f

    .line 365
    :cond_21
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 366
    if-nez v2, :cond_42

    .line 367
    if-nez p2, :cond_2b

    move v0, v1

    .line 368
    goto :goto_f

    .line 370
    :cond_2b
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 371
    iget-object v3, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_40
    move v0, v1

    .line 373
    goto :goto_f

    .line 378
    :cond_42
    invoke-virtual {v0, v2, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 379
    if-nez p2, :cond_4f

    .line 382
    iget-object v1, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_4f
    move v0, v2

    .line 384
    goto :goto_f
.end method

.method public final setCount(Ljava/lang/Object;II)Z
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 403
    const-string v2, "oldCount"

    invoke-static {p2, v2}, Lcom/google/common/collect/Multisets;->a(ILjava/lang/String;)V

    .line 404
    const-string v2, "newCount"

    invoke-static {p3, v2}, Lcom/google/common/collect/Multisets;->a(ILjava/lang/String;)V

    .line 406
    invoke-direct {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset;->safeGet(Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    .line 407
    if-nez v2, :cond_28

    .line 408
    if-eqz p2, :cond_15

    .line 440
    :cond_14
    :goto_14
    return v0

    .line 410
    :cond_15
    if-nez p3, :cond_19

    move v0, v1

    .line 411
    goto :goto_14

    .line 414
    :cond_19
    iget-object v2, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v2, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_14

    move v0, v1

    goto :goto_14

    .line 417
    :cond_28
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 418
    if-ne v3, p2, :cond_14

    .line 419
    if-nez v3, :cond_50

    .line 420
    if-nez p3, :cond_39

    .line 422
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move v0, v1

    .line 423
    goto :goto_14

    .line 425
    :cond_39
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 426
    iget-object v4, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4e

    iget-object v4, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_4e
    move v0, v1

    goto :goto_14

    .line 430
    :cond_50
    invoke-virtual {v2, v3, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 431
    if-nez p3, :cond_5d

    .line 434
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset;->countMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_5d
    move v0, v1

    .line 436
    goto :goto_14
.end method

.method public final size()I
    .registers 7

    .prologue
    .line 174
    const-wide/16 v0, 0x0

    .line 175
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

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 176
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v4, v0

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_d

    .line 178
    :cond_22
    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->b(J)I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 187
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
    .line 191
    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset;->snapshot()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    invoke-super {p0}, Lcom/google/common/collect/ak;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
