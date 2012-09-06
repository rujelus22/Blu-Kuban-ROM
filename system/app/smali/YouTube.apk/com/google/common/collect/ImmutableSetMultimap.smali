.class public Lcom/google/common/collect/ImmutableSetMultimap;
.super Lcom/google/common/collect/ImmutableMultimap;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/jv;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient emptySet:Lcom/google/common/collect/ImmutableSortedSet;

.field private transient entries:Lcom/google/common/collect/ImmutableSet;

.field private transient inverse:Lcom/google/common/collect/ImmutableSetMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;ILjava/util/Comparator;)V
    .registers 5
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 343
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    .line 344
    if-nez p3, :cond_9

    const/4 v0, 0x0

    :goto_6
    iput-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;->emptySet:Lcom/google/common/collect/ImmutableSortedSet;

    .line 346
    return-void

    .line 344
    :cond_9
    invoke-static {p3}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    goto :goto_6
.end method

.method static synthetic access$000(Lcom/google/common/collect/hu;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSetMultimap;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->copyOf(Lcom/google/common/collect/hu;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lcom/google/common/collect/dv;
    .registers 1

    .prologue
    .line 141
    new-instance v0, Lcom/google/common/collect/dv;

    invoke-direct {v0}, Lcom/google/common/collect/dv;-><init>()V

    return-object v0
.end method

.method public static copyOf(Lcom/google/common/collect/hu;)Lcom/google/common/collect/ImmutableSetMultimap;
    .registers 2
    .parameter

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/common/collect/ImmutableSetMultimap;->copyOf(Lcom/google/common/collect/hu;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method private static copyOf(Lcom/google/common/collect/hu;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSetMultimap;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 304
    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    invoke-interface {p0}, Lcom/google/common/collect/hu;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    if-nez p1, :cond_10

    .line 306
    invoke-static {}, Lcom/google/common/collect/ImmutableSetMultimap;->of()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    .line 334
    :cond_f
    :goto_f
    return-object v0

    .line 309
    :cond_10
    instance-of v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;

    if-eqz v0, :cond_1d

    move-object v0, p0

    .line 311
    check-cast v0, Lcom/google/common/collect/ImmutableSetMultimap;

    .line 313
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSetMultimap;->isPartialView()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 318
    :cond_1d
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/dm;

    move-result-object v2

    .line 319
    const/4 v0, 0x0

    .line 322
    invoke-interface {p0}, Lcom/google/common/collect/hu;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 323
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 324
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 325
    if-nez p1, :cond_5b

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 328
    :goto_4b
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6a

    .line 329
    invoke-virtual {v2, v4, v0}, Lcom/google/common/collect/dm;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dm;

    .line 330
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v0

    add-int/2addr v0, v1

    :goto_59
    move v1, v0

    .line 332
    goto :goto_2f

    .line 325
    :cond_5b
    invoke-static {p1, v0}, Lcom/google/common/collect/ImmutableSortedSet;->copyOf(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    goto :goto_4b

    .line 334
    :cond_60
    new-instance v0, Lcom/google/common/collect/ImmutableSetMultimap;

    invoke-virtual {v2}, Lcom/google/common/collect/dm;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    invoke-direct {v0, v2, v1, p1}, Lcom/google/common/collect/ImmutableSetMultimap;-><init>(Lcom/google/common/collect/ImmutableMap;ILjava/util/Comparator;)V

    goto :goto_f

    :cond_6a
    move v0, v1

    goto :goto_59
.end method

.method private invert()Lcom/google/common/collect/ImmutableSetMultimap;
    .registers 5

    .prologue
    .line 386
    invoke-static {}, Lcom/google/common/collect/ImmutableSetMultimap;->builder()Lcom/google/common/collect/dv;

    move-result-object v1

    .line 387
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSetMultimap;->entries()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 388
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/common/collect/dv;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dv;

    goto :goto_c

    .line 390
    :cond_24
    invoke-virtual {v1}, Lcom/google/common/collect/dv;->a()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    .line 391
    iput-object p0, v0, Lcom/google/common/collect/ImmutableSetMultimap;->inverse:Lcom/google/common/collect/ImmutableSetMultimap;

    .line 392
    return-object v0
.end method

.method public static of()Lcom/google/common/collect/ImmutableSetMultimap;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Lcom/google/common/collect/EmptyImmutableSetMultimap;->INSTANCE:Lcom/google/common/collect/EmptyImmutableSetMultimap;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-static {}, Lcom/google/common/collect/ImmutableSetMultimap;->builder()Lcom/google/common/collect/dv;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/dv;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dv;

    .line 75
    invoke-virtual {v0}, Lcom/google/common/collect/dv;->a()Lcom/google/common/collect/ImmutableSetMultimap;

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
    .line 84
    invoke-static {}, Lcom/google/common/collect/ImmutableSetMultimap;->builder()Lcom/google/common/collect/dv;

    move-result-object v0

    .line 85
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/dv;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dv;

    .line 86
    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/dv;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dv;

    .line 87
    invoke-virtual {v0}, Lcom/google/common/collect/dv;->a()Lcom/google/common/collect/ImmutableSetMultimap;

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
    .line 97
    invoke-static {}, Lcom/google/common/collect/ImmutableSetMultimap;->builder()Lcom/google/common/collect/dv;

    move-result-object v0

    .line 98
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/dv;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dv;

    .line 99
    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/dv;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dv;

    .line 100
    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/dv;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dv;

    .line 101
    invoke-virtual {v0}, Lcom/google/common/collect/dv;->a()Lcom/google/common/collect/ImmutableSetMultimap;

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
    .line 111
    invoke-static {}, Lcom/google/common/collect/ImmutableSetMultimap;->builder()Lcom/google/common/collect/dv;

    move-result-object v0

    .line 112
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/dv;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dv;

    .line 113
    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/dv;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dv;

    .line 114
    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/dv;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dv;

    .line 115
    invoke-virtual {v0, p6, p7}, Lcom/google/common/collect/dv;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dv;

    .line 116
    invoke-virtual {v0}, Lcom/google/common/collect/dv;->a()Lcom/google/common/collect/ImmutableSetMultimap;

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
    .line 126
    invoke-static {}, Lcom/google/common/collect/ImmutableSetMultimap;->builder()Lcom/google/common/collect/dv;

    move-result-object v0

    .line 127
    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/dv;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dv;

    .line 128
    invoke-virtual {v0, p2, p3}, Lcom/google/common/collect/dv;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dv;

    .line 129
    invoke-virtual {v0, p4, p5}, Lcom/google/common/collect/dv;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dv;

    .line 130
    invoke-virtual {v0, p6, p7}, Lcom/google/common/collect/dv;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dv;

    .line 131
    invoke-virtual {v0, p8, p9}, Lcom/google/common/collect/dv;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dv;

    .line 132
    invoke-virtual {v0}, Lcom/google/common/collect/dv;->a()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 12
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 442
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 443
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    .line 444
    if-gez v4, :cond_1f

    .line 445
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

    .line 447
    :cond_1f
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/dm;

    move-result-object v5

    move v2, v1

    move v3, v1

    .line 451
    :goto_25
    if-ge v2, v4, :cond_7c

    .line 452
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    .line 453
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v7

    .line 454
    if-gtz v7, :cond_46

    .line 455
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

    .line 458
    :cond_46
    new-array v8, v7, [Ljava/lang/Object;

    move v0, v1

    .line 459
    :goto_49
    if-ge v0, v7, :cond_54

    .line 460
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v0

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 462
    :cond_54
    invoke-static {v8}, Lcom/google/common/collect/ImmutableSet;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v9

    array-length v8, v8

    if-eq v9, v8, :cond_74

    .line 464
    new-instance v0, Ljava/io/InvalidObjectException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Duplicate key-value pairs exist for key "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_74
    invoke-virtual {v5, v6, v0}, Lcom/google/common/collect/dm;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dm;

    .line 468
    add-int/2addr v3, v7

    .line 451
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_25

    .line 473
    :cond_7c
    :try_start_7c
    invoke-virtual {v5}, Lcom/google/common/collect/dm;->a()Lcom/google/common/collect/ImmutableMap;
    :try_end_7f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7c .. :try_end_7f} :catch_8b

    move-result-object v0

    .line 479
    sget-object v1, Lcom/google/common/collect/dp;->a:Lcom/google/common/collect/ju;

    invoke-virtual {v1, p0, v0}, Lcom/google/common/collect/ju;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 480
    sget-object v0, Lcom/google/common/collect/dp;->b:Lcom/google/common/collect/ju;

    invoke-virtual {v0, p0, v3}, Lcom/google/common/collect/ju;->a(Ljava/lang/Object;I)V

    .line 481
    return-void

    .line 474
    :catch_8b
    move-exception v0

    .line 475
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
    .line 435
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 436
    invoke-static {p0, p1}, Lcom/google/common/collect/jt;->a(Lcom/google/common/collect/hu;Ljava/io/ObjectOutputStream;)V

    .line 437
    return-void
.end method


# virtual methods
.method public bridge synthetic entries()Lcom/google/common/collect/ImmutableCollection;
    .registers 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSetMultimap;->entries()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public entries()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;->entries:Lcom/google/common/collect/ImmutableSet;

    .line 424
    if-nez v0, :cond_e

    invoke-super {p0}, Lcom/google/common/collect/ImmutableMultimap;->entries()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;->entries:Lcom/google/common/collect/ImmutableSet;

    :cond_e
    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSetMultimap;->entries()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Set;
    .registers 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSetMultimap;->entries()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;
    .registers 3
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    .line 359
    if-eqz v0, :cond_b

    .line 364
    :goto_a
    return-object v0

    .line 361
    :cond_b
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;->emptySet:Lcom/google/common/collect/ImmutableSortedSet;

    if-eqz v0, :cond_12

    .line 362
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;->emptySet:Lcom/google/common/collect/ImmutableSortedSet;

    goto :goto_a

    .line 364
    :cond_12
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_a
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/ImmutableMultimap;
    .registers 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSetMultimap;->inverse()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lcom/google/common/collect/ImmutableSetMultimap;
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;->inverse:Lcom/google/common/collect/ImmutableSetMultimap;

    .line 382
    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSetMultimap;->invert()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;->inverse:Lcom/google/common/collect/ImmutableSetMultimap;

    :cond_a
    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;
    .registers 3
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .registers 3
    .parameter

    .prologue
    .line 401
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->removeAll(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 411
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
