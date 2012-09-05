.class public Lcom/google/common/collect/ImmutableSetMultimap;
.super Lcom/google/common/collect/ImmutableMultimap;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/fz;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient entries:Lcom/google/common/collect/ImmutableSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 286
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    .line 287
    return-void
.end method

.method public static builder()Lcom/google/common/collect/cl;
    .registers 1

    .prologue
    .line 138
    new-instance v0, Lcom/google/common/collect/cl;

    invoke-direct {v0}, Lcom/google/common/collect/cl;-><init>()V

    return-object v0
.end method

.method public static copyOf(Lcom/google/common/collect/ew;)Lcom/google/common/collect/ImmutableSetMultimap;
    .registers 7
    .parameter

    .prologue
    .line 257
    invoke-interface {p0}, Lcom/google/common/collect/ew;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 258
    invoke-static {}, Lcom/google/common/collect/ImmutableSetMultimap;->of()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object p0

    .line 282
    :goto_a
    return-object p0

    .line 261
    :cond_b
    instance-of v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;

    if-eqz v0, :cond_12

    .line 263
    check-cast p0, Lcom/google/common/collect/ImmutableSetMultimap;

    goto :goto_a

    .line 268
    :cond_12
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ca;

    move-result-object v2

    .line 269
    const/4 v0, 0x0

    .line 272
    invoke-interface {p0}, Lcom/google/common/collect/ew;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 273
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 274
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 275
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_58

    .line 277
    invoke-virtual {v2, v4, v0}, Lcom/google/common/collect/ca;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ca;

    .line 278
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v0

    add-int/2addr v0, v1

    :goto_4c
    move v1, v0

    .line 280
    goto :goto_24

    .line 282
    :cond_4e
    new-instance p0, Lcom/google/common/collect/ImmutableSetMultimap;

    invoke-virtual {v2}, Lcom/google/common/collect/ca;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ImmutableSetMultimap;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    goto :goto_a

    :cond_58
    move v0, v1

    goto :goto_4c
.end method

.method public static of()Lcom/google/common/collect/ImmutableSetMultimap;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/google/common/collect/EmptyImmutableSetMultimap;->INSTANCE:Lcom/google/common/collect/EmptyImmutableSetMultimap;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-static {}, Lcom/google/common/collect/ImmutableSetMultimap;->builder()Lcom/google/common/collect/cl;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/cl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cl;

    .line 72
    invoke-virtual {v0}, Lcom/google/common/collect/cl;->a()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap;
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-static {}, Lcom/google/common/collect/ImmutableSetMultimap;->builder()Lcom/google/common/collect/cl;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/cl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cl;

    .line 83
    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/cl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cl;

    .line 84
    invoke-virtual {v0}, Lcom/google/common/collect/cl;->a()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-static {}, Lcom/google/common/collect/ImmutableSetMultimap;->builder()Lcom/google/common/collect/cl;

    move-result-object v0

    .line 95
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/cl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cl;

    .line 96
    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/cl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cl;

    .line 97
    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/cl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cl;

    .line 98
    invoke-virtual {v0}, Lcom/google/common/collect/cl;->a()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-static {}, Lcom/google/common/collect/ImmutableSetMultimap;->builder()Lcom/google/common/collect/cl;

    move-result-object v0

    .line 109
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/cl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cl;

    .line 110
    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/cl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cl;

    .line 111
    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/cl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cl;

    .line 112
    invoke-virtual {v0, p6, p7}, Lcom/google/common/collect/cl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cl;

    .line 113
    invoke-virtual {v0}, Lcom/google/common/collect/cl;->a()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap;
    .registers 11
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
    .line 123
    invoke-static {}, Lcom/google/common/collect/ImmutableSetMultimap;->builder()Lcom/google/common/collect/cl;

    move-result-object v0

    .line 124
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/cl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cl;

    .line 125
    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/cl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cl;

    .line 126
    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/cl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cl;

    .line 127
    invoke-virtual {v0, p6, p7}, Lcom/google/common/collect/cl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cl;

    .line 128
    invoke-virtual {v0, p8, p9}, Lcom/google/common/collect/cl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/cl;

    .line 129
    invoke-virtual {v0}, Lcom/google/common/collect/cl;->a()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 12
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 348
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 349
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    .line 350
    if-gez v4, :cond_23

    .line 351
    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_23
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ca;

    move-result-object v5

    move v2, v1

    move v3, v1

    .line 357
    :goto_29
    if-ge v2, v4, :cond_88

    .line 358
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    .line 359
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v7

    .line 360
    if-gtz v7, :cond_4e

    .line 361
    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_4e
    new-array v8, v7, [Ljava/lang/Object;

    move v0, v1

    .line 365
    :goto_51
    if-ge v0, v7, :cond_5c

    .line 366
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v0

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 368
    :cond_5c
    invoke-static {v8}, Lcom/google/common/collect/ImmutableSet;->of([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v9

    array-length v8, v8

    if-eq v9, v8, :cond_80

    .line 370
    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate key-value pairs exist for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_80
    invoke-virtual {v5, v6, v0}, Lcom/google/common/collect/ca;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ca;

    .line 374
    add-int/2addr v3, v7

    .line 357
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_29

    .line 379
    :cond_88
    :try_start_88
    invoke-virtual {v5}, Lcom/google/common/collect/ca;->a()Lcom/google/common/collect/ImmutableMap;
    :try_end_8b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_88 .. :try_end_8b} :catch_97

    move-result-object v0

    .line 385
    sget-object v1, Lcom/google/common/collect/cd;->a:Lcom/google/common/collect/fy;

    invoke-virtual {v1, p0, v0}, Lcom/google/common/collect/fy;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 386
    sget-object v0, Lcom/google/common/collect/cd;->b:Lcom/google/common/collect/fy;

    invoke-virtual {v0, p0, v3}, Lcom/google/common/collect/fy;->a(Ljava/lang/Object;I)V

    .line 387
    return-void

    .line 380
    :catch_97
    move-exception v0

    .line 381
    new-instance v1, Ljava/io/InvalidObjectException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/InvalidObjectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/InvalidObjectException;

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .parameter

    .prologue
    .line 342
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 343
    invoke-static {p0, p1}, Lcom/google/common/collect/fx;->a(Lcom/google/common/collect/ew;Ljava/io/ObjectOutputStream;)V

    .line 344
    return-void
.end method


# virtual methods
.method public bridge synthetic entries()Lcom/google/common/collect/ImmutableCollection;
    .registers 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSetMultimap;->entries()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public entries()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;->entries:Lcom/google/common/collect/ImmutableSet;

    .line 332
    if-nez v0, :cond_e

    invoke-super {p0}, Lcom/google/common/collect/ImmutableMultimap;->entries()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;->entries:Lcom/google/common/collect/ImmutableSet;

    :cond_e
    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSetMultimap;->entries()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Set;
    .registers 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSetMultimap;->entries()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;
    .registers 3
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .registers 3
    .parameter

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    .line 300
    if-nez v0, :cond_e

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;
    .registers 3
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .registers 3
    .parameter

    .prologue
    .line 309
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 319
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
