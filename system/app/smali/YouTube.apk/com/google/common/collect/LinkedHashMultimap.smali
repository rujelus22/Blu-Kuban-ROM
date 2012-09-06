.class public final Lcom/google/common/collect/LinkedHashMultimap;
.super Lcom/google/common/collect/AbstractSetMultimap;
.source "SourceFile"


# static fields
.field private static final DEFAULT_VALUES_PER_KEY:I = 0x8

.field private static final serialVersionUID:J


# instance fields
.field transient expectedValuesPerKey:I

.field transient linkedEntries:Ljava/util/Collection;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 122
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractSetMultimap;-><init>(Ljava/util/Map;)V

    .line 75
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->expectedValuesPerKey:I

    .line 123
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    .line 124
    return-void
.end method

.method private constructor <init>(II)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 127
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractSetMultimap;-><init>(Ljava/util/Map;)V

    .line 75
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->expectedValuesPerKey:I

    .line 128
    if-ltz p2, :cond_27

    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 129
    iput p2, p0, Lcom/google/common/collect/LinkedHashMultimap;->expectedValuesPerKey:I

    .line 130
    new-instance v0, Ljava/util/LinkedHashSet;

    const-wide/32 v1, 0x40000000

    int-to-long v3, p1

    int-to-long v5, p2

    mul-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    .line 133
    return-void

    .line 128
    :cond_27
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private constructor <init>(Lcom/google/common/collect/hu;)V
    .registers 4
    .parameter

    .prologue
    .line 136
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/google/common/collect/hu;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Maps;->b(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractSetMultimap;-><init>(Ljava/util/Map;)V

    .line 75
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->expectedValuesPerKey:I

    .line 138
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Lcom/google/common/collect/hu;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Maps;->b(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    .line 140
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap;->putAll(Lcom/google/common/collect/hu;)Z

    .line 141
    return-void
.end method

.method public static create()Lcom/google/common/collect/LinkedHashMultimap;
    .registers 1

    .prologue
    .line 90
    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/LinkedHashMultimap;-><init>()V

    return-object v0
.end method

.method public static create(II)Lcom/google/common/collect/LinkedHashMultimap;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 104
    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedHashMultimap;-><init>(II)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/hu;)Lcom/google/common/collect/LinkedHashMultimap;
    .registers 2
    .parameter

    .prologue
    .line 118
    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedHashMultimap;-><init>(Lcom/google/common/collect/hu;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .parameter

    .prologue
    .line 377
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 378
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->expectedValuesPerKey:I

    .line 379
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 380
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/google/common/collect/Maps;->b(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/google/common/collect/LinkedHashMultimap;->setMap(Ljava/util/Map;)V

    .line 381
    new-instance v1, Ljava/util/LinkedHashSet;

    iget v2, p0, Lcom/google/common/collect/LinkedHashMultimap;->expectedValuesPerKey:I

    mul-int/2addr v2, v0

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    .line 383
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/jt;->a(Lcom/google/common/collect/hu;Ljava/io/ObjectInputStream;I)V

    .line 384
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 385
    const/4 v0, 0x0

    :goto_2c
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->size()I

    move-result v1

    if-ge v0, v1, :cond_46

    .line 387
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 389
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 390
    iget-object v3, p0, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    invoke-static {v1, v2}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 385
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 392
    :cond_46
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter

    .prologue
    .line 365
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 366
    iget v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->expectedValuesPerKey:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 367
    invoke-static {p0, p1}, Lcom/google/common/collect/jt;->a(Lcom/google/common/collect/hu;Ljava/io/ObjectOutputStream;)V

    .line 368
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 369
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 370
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_11

    .line 372
    :cond_2c
    return-void
.end method


# virtual methods
.method public final bridge synthetic asMap()Ljava/util/Map;
    .registers 2

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()V
    .registers 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->clear()V

    return-void
.end method

.method public final bridge synthetic containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic containsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final bridge synthetic createCollection()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->createCollection()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method final createCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 167
    new-instance v0, Lcom/google/common/collect/er;

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->createCollection()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/collect/er;-><init>(Lcom/google/common/collect/LinkedHashMultimap;Ljava/lang/Object;Ljava/util/Set;)V

    return-object v0
.end method

.method final createCollection()Ljava/util/Set;
    .registers 3

    .prologue
    .line 153
    new-instance v0, Ljava/util/LinkedHashSet;

    iget v1, p0, Lcom/google/common/collect/LinkedHashMultimap;->expectedValuesPerKey:I

    invoke-static {v1}, Lcom/google/common/collect/Maps;->b(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    return-object v0
.end method

.method final createEntryIterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 292
    new-instance v1, Lcom/google/common/collect/eq;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/eq;-><init>(Lcom/google/common/collect/LinkedHashMultimap;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final bridge synthetic entries()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final entries()Ljava/util/Set;
    .registers 2

    .prologue
    .line 341
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic hashCode()I
    .registers 2

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic isEmpty()Z
    .registers 2

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic keys()Lcom/google/common/collect/iq;
    .registers 2

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->keys()Lcom/google/common/collect/iq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic putAll(Lcom/google/common/collect/hu;)Z
    .registers 3
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->putAll(Lcom/google/common/collect/hu;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/LinkedHashMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 325
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic size()I
    .registers 2

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 352
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
