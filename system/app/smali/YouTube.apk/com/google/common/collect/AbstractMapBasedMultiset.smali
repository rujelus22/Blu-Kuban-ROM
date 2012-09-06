.class abstract Lcom/google/common/collect/AbstractMapBasedMultiset;
.super Lcom/google/common/collect/ak;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1f3c5464cd7009c6L


# instance fields
.field private transient backingMap:Ljava/util/Map;

.field private transient size:J


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .registers 4
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/common/collect/ak;-><init>()V

    .line 63
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    .line 64
    invoke-super {p0}, Lcom/google/common/collect/ak;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$110(Lcom/google/common/collect/AbstractMapBasedMultiset;)J
    .registers 5
    .parameter

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    return-wide v0
.end method

.method static synthetic access$122(Lcom/google/common/collect/AbstractMapBasedMultiset;J)J
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/common/collect/AbstractMapBasedMultiset;Ljava/lang/Object;Ljava/util/Map;)I
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->removeAllOccurrences(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method private static getAndSet(Lcom/google/common/collect/Count;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 298
    if-nez p0, :cond_4

    .line 299
    const/4 v0, 0x0

    .line 302
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Count;->getAndSet(I)I

    move-result v0

    goto :goto_3
.end method

.method private readObjectNoData()V
    .registers 3

    .prologue
    .line 401
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Stream data required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private removeAllOccurrences(Ljava/lang/Object;Ljava/util/Map;)I
    .registers 8
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 307
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    .line 308
    if-nez v0, :cond_b

    move v0, v1

    .line 313
    :goto_a
    return v0

    .line 311
    :cond_b
    invoke-virtual {v0, v1}, Lcom/google/common/collect/Count;->getAndSet(I)I

    move-result v0

    .line 312
    iget-wide v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    goto :goto_a
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .registers 12
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 228
    if-nez p2, :cond_9

    .line 229
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result v2

    .line 246
    :goto_8
    return v2

    .line 231
    :cond_9
    if-lez p2, :cond_34

    move v0, v1

    :goto_c
    const-string v3, "occurrences cannot be negative: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/ag;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 233
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    .line 235
    if-nez v0, :cond_36

    .line 237
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    new-instance v1, Lcom/google/common/collect/Count;

    invoke-direct {v1, p2}, Lcom/google/common/collect/Count;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :goto_2d
    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    int-to-long v3, p2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    goto :goto_8

    :cond_34
    move v0, v2

    .line 231
    goto :goto_c

    .line 239
    :cond_36
    invoke-virtual {v0}, Lcom/google/common/collect/Count;->get()I

    move-result v4

    .line 240
    int-to-long v5, v4

    int-to-long v7, p2

    add-long/2addr v5, v7

    .line 241
    const-wide/32 v7, 0x7fffffff

    cmp-long v3, v5, v7

    if-gtz v3, :cond_57

    move v3, v1

    :goto_45
    const-string v7, "too many occurrences: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v3, v7, v1}, Lcom/google/common/base/ag;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 243
    invoke-virtual {v0, p2}, Lcom/google/common/collect/Count;->getAndAdd(I)I

    move v2, v4

    goto :goto_2d

    :cond_57
    move v3, v2

    .line 241
    goto :goto_45
.end method

.method backingMap()Ljava/util/Map;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    return-object v0
.end method

.method public clear()V
    .registers 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    .line 139
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/common/collect/Count;->set(I)V

    goto :goto_a

    .line 141
    :cond_1b
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 142
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    .line 143
    return-void
.end method

.method public count(Ljava/lang/Object;)I
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 209
    :try_start_1
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    .line 210
    if-nez v0, :cond_d

    move v0, v1

    .line 214
    :goto_c
    return v0

    .line 210
    :cond_d
    invoke-virtual {v0}, Lcom/google/common/collect/Count;->get()I
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_12
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_10} :catch_15

    move-result v0

    goto :goto_c

    .line 212
    :catch_12
    move-exception v0

    move v0, v1

    goto :goto_c

    .line 214
    :catch_15
    move-exception v0

    move v0, v1

    goto :goto_c
.end method

.method createElementSet()Ljava/util/Set;
    .registers 3

    .prologue
    .line 319
    new-instance v0, Lcom/google/common/collect/n;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/n;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;Ljava/util/Map;)V

    return-object v0
.end method

.method distinctElements()I
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 94
    new-instance v1, Lcom/google/common/collect/l;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/l;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/google/common/collect/ak;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 157
    new-instance v0, Lcom/google/common/collect/p;

    invoke-direct {v0, p0}, Lcom/google/common/collect/p;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
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

    .line 250
    if-nez p2, :cond_9

    .line 251
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result v2

    .line 272
    :cond_8
    :goto_8
    return v2

    .line 253
    :cond_9
    if-lez p2, :cond_35

    move v0, v1

    :goto_c
    const-string v3, "occurrences cannot be negative: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/ag;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 255
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    .line 256
    if-eqz v0, :cond_8

    .line 260
    invoke-virtual {v0}, Lcom/google/common/collect/Count;->get()I

    move-result v1

    .line 263
    if-le v1, p2, :cond_37

    .line 270
    :goto_29
    neg-int v2, p2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/Count;->addAndGet(I)I

    .line 271
    iget-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    int-to-long v4, p2

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    move v2, v1

    .line 272
    goto :goto_8

    :cond_35
    move v0, v2

    .line 253
    goto :goto_c

    .line 267
    :cond_37
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move p2, v1

    goto :goto_29
.end method

.method setBackingMap(Ljava/util/Map;)V
    .registers 2
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    .line 74
    return-void
.end method

.method public setCount(Ljava/lang/Object;I)I
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 277
    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/google/common/collect/Multisets;->a(ILjava/lang/String;)V

    .line 281
    if-nez p2, :cond_1c

    .line 282
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    .line 283
    invoke-static {v0, p2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->getAndSet(Lcom/google/common/collect/Count;I)I

    move-result v0

    .line 293
    :goto_13
    iget-wide v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    sub-int v3, p2, v0

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    .line 294
    return v0

    .line 285
    :cond_1c
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Count;

    .line 286
    invoke-static {v0, p2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->getAndSet(Lcom/google/common/collect/Count;I)I

    move-result v1

    .line 288
    if-nez v0, :cond_34

    .line 289
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    new-instance v2, Lcom/google/common/collect/Count;

    invoke-direct {v2, p2}, Lcom/google/common/collect/Count;-><init>(I)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    move v0, v1

    goto :goto_13
.end method

.method public size()I
    .registers 3

    .prologue
    .line 153
    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->b(J)I

    move-result v0

    return v0
.end method
