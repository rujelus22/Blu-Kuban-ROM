.class public Lcom/google/common/collect/ImmutableListMultimap;
.super Lcom/google/common/collect/ImmutableMultimap;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/fn;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient inverse:Lcom/google/common/collect/ImmutableListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 269
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    .line 270
    return-void
.end method

.method public static builder()Lcom/google/common/collect/dl;
    .registers 1

    .prologue
    .line 134
    new-instance v0, Lcom/google/common/collect/dl;

    invoke-direct {v0}, Lcom/google/common/collect/dl;-><init>()V

    return-object v0
.end method

.method public static copyOf(Lcom/google/common/collect/hu;)Lcom/google/common/collect/ImmutableListMultimap;
    .registers 7
    .parameter

    .prologue
    .line 239
    invoke-interface {p0}, Lcom/google/common/collect/hu;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 240
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->of()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    .line 265
    :cond_a
    :goto_a
    return-object v0

    .line 244
    :cond_b
    instance-of v0, p0, Lcom/google/common/collect/ImmutableListMultimap;

    if-eqz v0, :cond_18

    move-object v0, p0

    .line 246
    check-cast v0, Lcom/google/common/collect/ImmutableListMultimap;

    .line 248
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableListMultimap;->isPartialView()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 253
    :cond_18
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/dm;

    move-result-object v3

    .line 254
    const/4 v0, 0x0

    .line 257
    invoke-interface {p0}, Lcom/google/common/collect/hu;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 258
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 259
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5e

    .line 260
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Lcom/google/common/collect/dm;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dm;

    .line 261
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    add-int/2addr v0, v2

    :goto_52
    move v2, v0

    .line 263
    goto :goto_2a

    .line 265
    :cond_54
    new-instance v0, Lcom/google/common/collect/ImmutableListMultimap;

    invoke-virtual {v3}, Lcom/google/common/collect/dm;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ImmutableListMultimap;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    goto :goto_a

    :cond_5e
    move v0, v2

    goto :goto_52
.end method

.method private invert()Lcom/google/common/collect/ImmutableListMultimap;
    .registers 5

    .prologue
    .line 304
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->builder()Lcom/google/common/collect/dl;

    move-result-object v1

    .line 305
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableListMultimap;->entries()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 306
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/common/collect/dl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dl;

    goto :goto_c

    .line 308
    :cond_24
    invoke-virtual {v1}, Lcom/google/common/collect/dl;->a()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    .line 309
    iput-object p0, v0, Lcom/google/common/collect/ImmutableListMultimap;->inverse:Lcom/google/common/collect/ImmutableListMultimap;

    .line 310
    return-object v0
.end method

.method public static of()Lcom/google/common/collect/ImmutableListMultimap;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/google/common/collect/EmptyImmutableListMultimap;->INSTANCE:Lcom/google/common/collect/EmptyImmutableListMultimap;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->builder()Lcom/google/common/collect/dl;

    move-result-object v0

    .line 70
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/dl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dl;

    .line 71
    invoke-virtual {v0}, Lcom/google/common/collect/dl;->a()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap;
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->builder()Lcom/google/common/collect/dl;

    move-result-object v0

    .line 80
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/dl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dl;

    .line 81
    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/dl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dl;

    .line 82
    invoke-virtual {v0}, Lcom/google/common/collect/dl;->a()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->builder()Lcom/google/common/collect/dl;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/dl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dl;

    .line 93
    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/dl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dl;

    .line 94
    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/dl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dl;

    .line 95
    invoke-virtual {v0}, Lcom/google/common/collect/dl;->a()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap;
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
    .line 103
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->builder()Lcom/google/common/collect/dl;

    move-result-object v0

    .line 105
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/dl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dl;

    .line 106
    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/dl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dl;

    .line 107
    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/dl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dl;

    .line 108
    invoke-virtual {v0, p6, p7}, Lcom/google/common/collect/dl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dl;

    .line 109
    invoke-virtual {v0}, Lcom/google/common/collect/dl;->a()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap;
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
    .line 117
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->builder()Lcom/google/common/collect/dl;

    move-result-object v0

    .line 119
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/dl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dl;

    .line 120
    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/dl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dl;

    .line 121
    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/dl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dl;

    .line 122
    invoke-virtual {v0, p6, p7}, Lcom/google/common/collect/dl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dl;

    .line 123
    invoke-virtual {v0, p8, p9}, Lcom/google/common/collect/dl;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dl;

    .line 124
    invoke-virtual {v0}, Lcom/google/common/collect/dl;->a()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 12
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 345
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 346
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    .line 347
    if-gez v4, :cond_1f

    .line 348
    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid key count "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_1f
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/dm;

    move-result-object v5

    move v2, v1

    move v3, v1

    .line 354
    :goto_25
    if-ge v2, v4, :cond_60

    .line 355
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    .line 356
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v7

    .line 357
    if-gtz v7, :cond_46

    .line 358
    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid value count "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_46
    new-array v8, v7, [Ljava/lang/Object;

    move v0, v1

    .line 362
    :goto_49
    if-ge v0, v7, :cond_54

    .line 363
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v0

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 365
    :cond_54
    invoke-static {v8}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lcom/google/common/collect/dm;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dm;

    .line 366
    add-int/2addr v3, v7

    .line 354
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_25

    .line 371
    :cond_60
    :try_start_60
    invoke-virtual {v5}, Lcom/google/common/collect/dm;->a()Lcom/google/common/collect/ImmutableMap;
    :try_end_63
    .catch Ljava/lang/IllegalArgumentException; {:try_start_60 .. :try_end_63} :catch_6f

    move-result-object v0

    .line 377
    sget-object v1, Lcom/google/common/collect/dp;->a:Lcom/google/common/collect/ju;

    invoke-virtual {v1, p0, v0}, Lcom/google/common/collect/ju;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 378
    sget-object v0, Lcom/google/common/collect/dp;->b:Lcom/google/common/collect/ju;

    invoke-virtual {v0, p0, v3}, Lcom/google/common/collect/ju;->a(Ljava/lang/Object;I)V

    .line 379
    return-void

    .line 372
    :catch_6f
    move-exception v0

    .line 373
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
    .line 338
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 339
    invoke-static {p0, p1}, Lcom/google/common/collect/jt;->a(Lcom/google/common/collect/hu;Ljava/io/ObjectOutputStream;)V

    .line 340
    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;
    .registers 3
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/common/collect/ImmutableListMultimap;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableList;

    .line 283
    if-nez v0, :cond_e

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lcom/google/common/collect/ImmutableListMultimap;
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/common/collect/ImmutableListMultimap;->inverse:Lcom/google/common/collect/ImmutableListMultimap;

    .line 300
    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableListMultimap;->invert()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableListMultimap;->inverse:Lcom/google/common/collect/ImmutableListMultimap;

    :cond_a
    return-object v0
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/ImmutableMultimap;
    .registers 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableListMultimap;->inverse()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;
    .registers 3
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap;->removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .registers 3
    .parameter

    .prologue
    .line 319
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap;->removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap;->removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 329
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
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
