.class public Lcom/google/common/collect/ImmutableListMultimap;
.super Lcom/google/common/collect/ImmutableMultimap;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/dv;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    .line 256
    return-void
.end method

.method public static builder()Lcom/google/common/collect/bz;
    .registers 1

    .prologue
    .line 133
    new-instance v0, Lcom/google/common/collect/bz;

    invoke-direct {v0}, Lcom/google/common/collect/bz;-><init>()V

    return-object v0
.end method

.method public static copyOf(Lcom/google/common/collect/ew;)Lcom/google/common/collect/ImmutableListMultimap;
    .registers 7
    .parameter

    .prologue
    .line 228
    invoke-interface {p0}, Lcom/google/common/collect/ew;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 229
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->of()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object p0

    .line 251
    :goto_a
    return-object p0

    .line 232
    :cond_b
    instance-of v0, p0, Lcom/google/common/collect/ImmutableListMultimap;

    if-eqz v0, :cond_12

    .line 234
    check-cast p0, Lcom/google/common/collect/ImmutableListMultimap;

    goto :goto_a

    .line 239
    :cond_12
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ca;

    move-result-object v3

    .line 240
    const/4 v0, 0x0

    .line 243
    invoke-interface {p0}, Lcom/google/common/collect/ew;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 244
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 245
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_58

    .line 246
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Lcom/google/common/collect/ca;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ca;

    .line 247
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    add-int/2addr v0, v2

    :goto_4c
    move v2, v0

    .line 249
    goto :goto_24

    .line 251
    :cond_4e
    new-instance p0, Lcom/google/common/collect/ImmutableListMultimap;

    invoke-virtual {v3}, Lcom/google/common/collect/ca;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/google/common/collect/ImmutableListMultimap;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    goto :goto_a

    :cond_58
    move v0, v2

    goto :goto_4c
.end method

.method public static of()Lcom/google/common/collect/ImmutableListMultimap;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/common/collect/EmptyImmutableListMultimap;->INSTANCE:Lcom/google/common/collect/EmptyImmutableListMultimap;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->builder()Lcom/google/common/collect/bz;

    move-result-object v0

    .line 69
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/bz;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/bz;

    .line 70
    invoke-virtual {v0}, Lcom/google/common/collect/bz;->a()Lcom/google/common/collect/ImmutableListMultimap;

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
    .line 77
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->builder()Lcom/google/common/collect/bz;

    move-result-object v0

    .line 79
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/bz;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/bz;

    .line 80
    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/bz;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/bz;

    .line 81
    invoke-virtual {v0}, Lcom/google/common/collect/bz;->a()Lcom/google/common/collect/ImmutableListMultimap;

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
    .line 89
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->builder()Lcom/google/common/collect/bz;

    move-result-object v0

    .line 91
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/bz;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/bz;

    .line 92
    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/bz;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/bz;

    .line 93
    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/bz;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/bz;

    .line 94
    invoke-virtual {v0}, Lcom/google/common/collect/bz;->a()Lcom/google/common/collect/ImmutableListMultimap;

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
    .line 102
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->builder()Lcom/google/common/collect/bz;

    move-result-object v0

    .line 104
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/bz;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/bz;

    .line 105
    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/bz;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/bz;

    .line 106
    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/bz;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/bz;

    .line 107
    invoke-virtual {v0, p6, p7}, Lcom/google/common/collect/bz;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/bz;

    .line 108
    invoke-virtual {v0}, Lcom/google/common/collect/bz;->a()Lcom/google/common/collect/ImmutableListMultimap;

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
    .line 116
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->builder()Lcom/google/common/collect/bz;

    move-result-object v0

    .line 118
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/bz;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/bz;

    .line 119
    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/bz;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/bz;

    .line 120
    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/bz;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/bz;

    .line 121
    invoke-virtual {v0, p6, p7}, Lcom/google/common/collect/bz;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/bz;

    .line 122
    invoke-virtual {v0, p8, p9}, Lcom/google/common/collect/bz;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/bz;

    .line 123
    invoke-virtual {v0}, Lcom/google/common/collect/bz;->a()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 12
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 302
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 303
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    .line 304
    if-gez v4, :cond_23

    .line 305
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

    .line 307
    :cond_23
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ca;

    move-result-object v5

    move v2, v1

    move v3, v1

    .line 311
    :goto_29
    if-ge v2, v4, :cond_68

    .line 312
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    .line 313
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v7

    .line 314
    if-gtz v7, :cond_4e

    .line 315
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

    .line 318
    :cond_4e
    new-array v8, v7, [Ljava/lang/Object;

    move v0, v1

    .line 319
    :goto_51
    if-ge v0, v7, :cond_5c

    .line 320
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v0

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 322
    :cond_5c
    invoke-static {v8}, Lcom/google/common/collect/ImmutableList;->of([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lcom/google/common/collect/ca;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ca;

    .line 323
    add-int/2addr v3, v7

    .line 311
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_29

    .line 328
    :cond_68
    :try_start_68
    invoke-virtual {v5}, Lcom/google/common/collect/ca;->a()Lcom/google/common/collect/ImmutableMap;
    :try_end_6b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_68 .. :try_end_6b} :catch_77

    move-result-object v0

    .line 334
    sget-object v1, Lcom/google/common/collect/cd;->a:Lcom/google/common/collect/fy;

    invoke-virtual {v1, p0, v0}, Lcom/google/common/collect/fy;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 335
    sget-object v0, Lcom/google/common/collect/cd;->b:Lcom/google/common/collect/fy;

    invoke-virtual {v0, p0, v3}, Lcom/google/common/collect/fy;->a(Ljava/lang/Object;I)V

    .line 336
    return-void

    .line 329
    :catch_77
    move-exception v0

    .line 330
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
    .line 296
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 297
    invoke-static {p0, p1}, Lcom/google/common/collect/fx;->a(Lcom/google/common/collect/ew;Ljava/io/ObjectOutputStream;)V

    .line 298
    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;
    .registers 3
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .registers 3
    .parameter

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/common/collect/ImmutableListMultimap;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableList;

    .line 269
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
    .line 49
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;
    .registers 3
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap;->removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .registers 3
    .parameter

    .prologue
    .line 278
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap;->removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableListMultimap;->removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 288
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
