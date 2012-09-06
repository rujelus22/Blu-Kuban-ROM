.class abstract Lcom/google/common/collect/AbstractMultimap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/hu;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x21f766b1f568c81dL


# instance fields
.field private transient asMap:Ljava/util/Map;

.field private transient entries:Ljava/util/Collection;

.field private transient keySet:Ljava/util/Set;

.field private transient map:Ljava/util/Map;

.field private transient multiset:Lcom/google/common/collect/iq;

.field private transient totalSize:I

.field private transient valuesCollection:Ljava/util/Collection;


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .registers 3
    .parameter

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 120
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/AbstractMultimap;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Collection;)Ljava/util/Iterator;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultimap;->iteratorOrListIterator(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$208(Lcom/google/common/collect/AbstractMultimap;)I
    .registers 3
    .parameter

    .prologue
    .line 88
    iget v0, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    return v0
.end method

.method static synthetic access$210(Lcom/google/common/collect/AbstractMultimap;)I
    .registers 3
    .parameter

    .prologue
    .line 88
    iget v0, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    return v0
.end method

.method static synthetic access$212(Lcom/google/common/collect/AbstractMultimap;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 88
    iget v0, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    return v0
.end method

.method static synthetic access$220(Lcom/google/common/collect/AbstractMultimap;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 88
    iget v0, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/ae;)Ljava/util/List;
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/AbstractMultimap;->wrapList(Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/ae;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/AbstractMultimap;->wrapCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultimap;->removeValuesForKey(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private createAsMap()Ljava/util/Map;
    .registers 3

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_11

    new-instance v1, Lcom/google/common/collect/ac;

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ac;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    move-object v0, v1

    :goto_10
    return-object v0

    :cond_11
    new-instance v0, Lcom/google/common/collect/v;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/v;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Map;)V

    goto :goto_10
.end method

.method private createKeySet()Ljava/util/Set;
    .registers 3

    .prologue
    .line 871
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_11

    new-instance v1, Lcom/google/common/collect/ad;

    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ad;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    move-object v0, v1

    :goto_10
    return-object v0

    :cond_11
    new-instance v0, Lcom/google/common/collect/z;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/z;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Map;)V

    goto :goto_10
.end method

.method private getOrCreateCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 213
    if-nez v0, :cond_13

    .line 214
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMultimap;->createCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_13
    return-object v0
.end method

.method private iteratorOrListIterator(Ljava/util/Collection;)Ljava/util/Iterator;
    .registers 3
    .parameter

    .prologue
    .line 640
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_a
.end method

.method private removeValuesForKey(Ljava/lang/Object;)I
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1012
    :try_start_1
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_9} :catch_1c
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_9} :catch_1a

    .line 1020
    if-eqz v0, :cond_17

    .line 1021
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 1022
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 1023
    iget v0, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    :cond_17
    move v0, v1

    move v1, v0

    .line 1025
    :goto_19
    return v1

    .line 1016
    :catch_1a
    move-exception v0

    goto :goto_19

    .line 1014
    :catch_1c
    move-exception v0

    goto :goto_19
.end method

.method private unmodifiableCollectionSubclass(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 320
    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_b

    .line 321
    check-cast p1, Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    .line 327
    :goto_a
    return-object v0

    .line 322
    :cond_b
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_16

    .line 323
    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_a

    .line 324
    :cond_16
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_21

    .line 325
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_a

    .line 327
    :cond_21
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_a
.end method

.method private wrapCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v1, 0x0

    .line 364
    instance-of v0, p2, Ljava/util/SortedSet;

    if-eqz v0, :cond_d

    .line 365
    new-instance v0, Lcom/google/common/collect/aj;

    check-cast p2, Ljava/util/SortedSet;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/collect/aj;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/ae;)V

    .line 371
    :goto_c
    return-object v0

    .line 366
    :cond_d
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_19

    .line 367
    new-instance v0, Lcom/google/common/collect/ai;

    check-cast p2, Ljava/util/Set;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/ai;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Set;)V

    goto :goto_c

    .line 368
    :cond_19
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_24

    .line 369
    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/common/collect/AbstractMultimap;->wrapList(Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/ae;)Ljava/util/List;

    move-result-object v0

    goto :goto_c

    .line 371
    :cond_24
    new-instance v0, Lcom/google/common/collect/ae;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/collect/ae;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/ae;)V

    goto :goto_c
.end method

.method private wrapList(Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/ae;)Ljava/util/List;
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 377
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_a

    new-instance v0, Lcom/google/common/collect/ab;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/collect/ab;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/ae;)V

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lcom/google/common/collect/ag;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/collect/ag;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/ae;)V

    goto :goto_9
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .registers 2

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->asMap:Ljava/util/Map;

    .line 1158
    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap;->createAsMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->asMap:Ljava/util/Map;

    :cond_a
    return-object v0
.end method

.method backingMap()Ljava/util/Map;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    return-object v0
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 335
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    goto :goto_a

    .line 337
    :cond_1a
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 338
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    .line 339
    return-void
.end method

.method public containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 194
    if-eqz v0, :cond_12

    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 183
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 184
    const/4 v0, 0x1

    .line 188
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method abstract createCollection()Ljava/util/Collection;
.end method

.method createCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap;->createCollection()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method createEntries()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 1073
    instance-of v0, p0, Lcom/google/common/collect/jv;

    if-eqz v0, :cond_a

    .line 1074
    new-instance v0, Lcom/google/common/collect/t;

    invoke-direct {v0, p0}, Lcom/google/common/collect/t;-><init>(Lcom/google/common/collect/AbstractMultimap;)V

    .line 1084
    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lcom/google/common/collect/u;

    invoke-direct {v0, p0}, Lcom/google/common/collect/u;-><init>(Lcom/google/common/collect/AbstractMultimap;)V

    goto :goto_9
.end method

.method createEntryIterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 1104
    new-instance v0, Lcom/google/common/collect/y;

    invoke-direct {v0, p0}, Lcom/google/common/collect/y;-><init>(Lcom/google/common/collect/AbstractMultimap;)V

    return-object v0
.end method

.method public entries()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->entries:Ljava/util/Collection;

    .line 1069
    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap;->createEntries()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->entries:Ljava/util/Collection;

    :cond_a
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1352
    if-ne p1, p0, :cond_4

    .line 1353
    const/4 v0, 0x1

    .line 1359
    :goto_3
    return v0

    .line 1355
    :cond_4
    instance-of v0, p1, Lcom/google/common/collect/hu;

    if-eqz v0, :cond_15

    .line 1356
    check-cast p1, Lcom/google/common/collect/hu;

    .line 1357
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/common/collect/hu;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 1359
    :cond_15
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 351
    if-nez v0, :cond_e

    .line 352
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMultimap;->createCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 354
    :cond_e
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/AbstractMultimap;->wrapCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 172
    iget v0, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 866
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->keySet:Ljava/util/Set;

    .line 867
    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap;->createKeySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->keySet:Ljava/util/Set;

    :cond_a
    return-object v0
.end method

.method public keys()Lcom/google/common/collect/iq;
    .registers 2

    .prologue
    .line 994
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->multiset:Lcom/google/common/collect/iq;

    .line 995
    if-nez v0, :cond_b

    .line 996
    new-instance v0, Lcom/google/common/collect/r;

    invoke-direct {v0, p0}, Lcom/google/common/collect/r;-><init>(Lcom/google/common/collect/AbstractMultimap;)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->multiset:Lcom/google/common/collect/iq;

    .line 1002
    :cond_b
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultimap;->getOrCreateCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 203
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 204
    iget v0, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    .line 205
    const/4 v0, 0x1

    .line 207
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public putAll(Lcom/google/common/collect/hu;)Z
    .registers 6
    .parameter

    .prologue
    .line 263
    const/4 v0, 0x0

    .line 264
    invoke-interface {p1}, Lcom/google/common/collect/hu;->entries()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 265
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/google/common/collect/AbstractMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v1

    move v1, v0

    goto :goto_a

    .line 267
    :cond_25
    return v1
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .registers 8
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 241
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_c

    .line 258
    :goto_b
    return v0

    .line 244
    :cond_c
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultimap;->getOrCreateCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 245
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    .line 248
    instance-of v3, p2, Ljava/util/Collection;

    if-eqz v3, :cond_2b

    .line 249
    invoke-static {p2}, Lcom/google/common/collect/cf;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    .line 250
    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 257
    :cond_20
    iget v3, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    sub-int/2addr v1, v2

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    goto :goto_b

    .line 252
    :cond_2b
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 253
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    goto :goto_2f
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 223
    if-nez v0, :cond_c

    .line 224
    const/4 v0, 0x0

    .line 234
    :goto_b
    return v0

    .line 227
    :cond_c
    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 228
    if-eqz v1, :cond_23

    .line 229
    iget v2, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    .line 230
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 231
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    move v0, v1

    .line 234
    goto :goto_b
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 6
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 307
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap;->createCollection()Ljava/util/Collection;

    move-result-object v1

    .line 309
    if-eqz v0, :cond_1d

    .line 310
    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 311
    iget v2, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    .line 312
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 315
    :cond_1d
    invoke-direct {p0, v1}, Lcom/google/common/collect/AbstractMultimap;->unmodifiableCollectionSubclass(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 8
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 278
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 279
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_f

    .line 280
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 296
    :goto_e
    return-object v0

    .line 283
    :cond_f
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMultimap;->getOrCreateCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 284
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap;->createCollection()Ljava/util/Collection;

    move-result-object v2

    .line 285
    invoke-interface {v2, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 287
    iget v3, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    .line 288
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 290
    :cond_26
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 291
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 292
    iget v3, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    goto :goto_26

    .line 296
    :cond_3d
    invoke-direct {p0, v2}, Lcom/google/common/collect/AbstractMultimap;->unmodifiableCollectionSubclass(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_e
.end method

.method final setMap(Ljava/util/Map;)V
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 125
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    .line 126
    iput v2, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    .line 127
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 128
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2d

    const/4 v1, 0x1

    :goto_20
    invoke-static {v1}, Lcom/google/common/base/ag;->a(Z)V

    .line 129
    iget v1, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    goto :goto_d

    :cond_2d
    move v1, v2

    .line 128
    goto :goto_20

    .line 131
    :cond_2f
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 167
    iget v0, p0, Lcom/google/common/collect/AbstractMultimap;->totalSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->valuesCollection:Ljava/util/Collection;

    .line 1038
    if-nez v0, :cond_b

    .line 1039
    new-instance v0, Lcom/google/common/collect/s;

    invoke-direct {v0, p0}, Lcom/google/common/collect/s;-><init>(Lcom/google/common/collect/AbstractMultimap;)V

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap;->valuesCollection:Ljava/util/Collection;

    .line 1045
    :cond_b
    return-object v0
.end method
