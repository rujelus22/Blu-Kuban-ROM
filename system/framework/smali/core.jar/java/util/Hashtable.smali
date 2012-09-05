.class public Ljava/util/Hashtable;
.super Ljava/util/Dictionary;
.source "Hashtable.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Hashtable$1;,
        Ljava/util/Hashtable$EntrySet;,
        Ljava/util/Hashtable$Values;,
        Ljava/util/Hashtable$KeySet;,
        Ljava/util/Hashtable$ValueEnumeration;,
        Ljava/util/Hashtable$KeyEnumeration;,
        Ljava/util/Hashtable$EntryIterator;,
        Ljava/util/Hashtable$ValueIterator;,
        Ljava/util/Hashtable$KeyIterator;,
        Ljava/util/Hashtable$HashIterator;,
        Ljava/util/Hashtable$HashtableEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Dictionary",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final CHARS_PER_ENTRY:I = 0xf

.field private static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field private static final EMPTY_TABLE:[Ljava/util/Map$Entry; = null

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final MINIMUM_CAPACITY:I = 0x4

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x13bb0f25214ae4b8L


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private transient modCount:I

.field private transient size:I

.field private transient table:[Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient threshold:I

.field private transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v1, 0x2

    .line 56
    new-array v0, v1, [Ljava/util/Hashtable$HashtableEntry;

    sput-object v0, Ljava/util/Hashtable;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    .line 1095
    new-array v0, v1, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "threshold"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "loadFactor"

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/util/Hashtable;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 105
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/Dictionary;-><init>()V

    .line 106
    sget-object v0, Ljava/util/Hashtable;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    check-cast v0, [Ljava/util/Hashtable$HashtableEntry;

    check-cast v0, [Ljava/util/Hashtable$HashtableEntry;

    iput-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Hashtable;->threshold:I

    .line 108
    return-void
.end method

.method public constructor <init>(I)V
    .registers 6
    .parameter "capacity"

    .prologue
    .line 117
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/Dictionary;-><init>()V

    .line 118
    if-gez p1, :cond_1e

    .line 119
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Capacity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_1e
    if-nez p1, :cond_2d

    .line 124
    sget-object v1, Ljava/util/Hashtable;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    check-cast v1, [Ljava/util/Hashtable$HashtableEntry;

    move-object v0, v1

    check-cast v0, [Ljava/util/Hashtable$HashtableEntry;

    .line 125
    .local v0, tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iput-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 126
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/Hashtable;->threshold:I

    .line 138
    .end local v0           #tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_2c
    return-void

    .line 130
    :cond_2d
    const/4 v1, 0x4

    if-ge p1, v1, :cond_35

    .line 131
    const/4 p1, 0x4

    .line 137
    :goto_31
    invoke-direct {p0, p1}, Ljava/util/Hashtable;->makeTable(I)[Ljava/util/Hashtable$HashtableEntry;

    goto :goto_2c

    .line 132
    :cond_35
    const/high16 v1, 0x4000

    if-le p1, v1, :cond_3c

    .line 133
    const/high16 p1, 0x4000

    goto :goto_31

    .line 135
    :cond_3c
    invoke-static {p1}, Ljava/util/Hashtable;->roundUpToPowerOfTwo(I)I

    move-result p1

    goto :goto_31
.end method

.method public constructor <init>(IF)V
    .registers 6
    .parameter "capacity"
    .parameter "loadFactor"

    .prologue
    .line 150
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/Hashtable;-><init>(I)V

    .line 152
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_e

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 153
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load factor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_27
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/util/Hashtable;->capacityForInitSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/Hashtable;-><init>(I)V

    .line 172
    invoke-direct {p0, p1}, Ljava/util/Hashtable;->constructorPutAll(Ljava/util/Map;)V

    .line 173
    return-void
.end method

.method static synthetic access$1100(Ljava/util/Hashtable;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/util/Hashtable;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Ljava/util/Hashtable;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/util/Hashtable;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/util/Hashtable;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Ljava/util/Hashtable;->modCount:I

    return v0
.end method

.method static synthetic access$600(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    return-object v0
.end method

.method static synthetic access$800(Ljava/util/Hashtable;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Ljava/util/Hashtable;->size:I

    return v0
.end method

.method private static capacityForInitSize(I)I
    .registers 3
    .parameter "size"

    .prologue
    .line 192
    shr-int/lit8 v1, p0, 0x1

    add-int v0, v1, p0

    .line 195
    .local v0, result:I
    const/high16 v1, -0x4000

    and-int/2addr v1, v0

    if-nez v1, :cond_a

    .end local v0           #result:I
    :goto_9
    return v0

    .restart local v0       #result:I
    :cond_a
    const/high16 v0, 0x4000

    goto :goto_9
.end method

.method private constructorPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-nez p2, :cond_8

    .line 399
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 401
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/util/Hashtable;->secondaryHash(I)I

    move-result v2

    .line 402
    .local v2, hash:I
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 403
    .local v4, tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    and-int v3, v2, v5

    .line 404
    .local v3, index:I
    aget-object v1, v4, v3

    .line 405
    .local v1, first:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    move-object v0, v1

    .local v0, e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_1a
    if-eqz v0, :cond_2e

    .line 406
    iget v5, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v5, v2, :cond_2b

    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 407
    iput-object p2, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 415
    :goto_2a
    return-void

    .line 405
    :cond_2b
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_1a

    .line 413
    :cond_2e
    new-instance v5, Ljava/util/Hashtable$HashtableEntry;

    invoke-direct {v5, p1, p2, v2, v1}, Ljava/util/Hashtable$HashtableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/Hashtable$HashtableEntry;)V

    aput-object v5, v4, v3

    .line 414
    iget v5, p0, Ljava/util/Hashtable;->size:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/Hashtable;->size:I

    goto :goto_2a
.end method

.method private constructorPutAll(Ljava/util/Map;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 182
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ljava/util/Hashtable;->constructorPut(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    .line 184
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_20
    return-void
.end method

.method private declared-synchronized containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 8
    .parameter "key"
    .parameter "value"

    .prologue
    .line 798
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/util/Hashtable;->secondaryHash(I)I

    move-result v1

    .line 799
    .local v1, hash:I
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 800
    .local v3, tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    and-int v2, v1, v4

    .line 801
    .local v2, index:I
    aget-object v0, v3, v2

    .local v0, e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_12
    if-eqz v0, :cond_2b

    .line 802
    iget v4, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v4, v1, :cond_28

    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 803
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_2d

    move-result v4

    .line 806
    :goto_26
    monitor-exit p0

    return v4

    .line 801
    :cond_28
    :try_start_28
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_2d

    goto :goto_12

    .line 806
    :cond_2b
    const/4 v4, 0x0

    goto :goto_26

    .line 798
    .end local v0           #e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1           #hash:I
    .end local v2           #index:I
    .end local v3           #tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :catchall_2d
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private doubleCapacity()[Ljava/util/Hashtable$HashtableEntry;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 502
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    iget-object v9, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 503
    .local v9, oldTable:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v8, v9

    .line 504
    .local v8, oldCapacity:I
    const/high16 v10, 0x4000

    if-ne v8, v10, :cond_9

    move-object v6, v9

    .line 539
    :cond_8
    return-object v6

    .line 507
    :cond_9
    mul-int/lit8 v5, v8, 0x2

    .line 508
    .local v5, newCapacity:I
    invoke-direct {p0, v5}, Ljava/util/Hashtable;->makeTable(I)[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v6

    .line 509
    .local v6, newTable:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget v10, p0, Ljava/util/Hashtable;->size:I

    if-eqz v10, :cond_8

    .line 513
    const/4 v3, 0x0

    .local v3, j:I
    :goto_14
    if-ge v3, v8, :cond_8

    .line 518
    aget-object v1, v9, v3

    .line 519
    .local v1, e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    if-nez v1, :cond_1d

    .line 513
    :cond_1a
    :goto_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 522
    :cond_1d
    iget v10, v1, Ljava/util/Hashtable$HashtableEntry;->hash:I

    and-int v2, v10, v8

    .line 523
    .local v2, highBit:I
    const/4 v0, 0x0

    .line 524
    .local v0, broken:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    or-int v10, v3, v2

    aput-object v1, v6, v10

    .line 525
    iget-object v4, v1, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .local v4, n:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_28
    if-eqz v4, :cond_3f

    .line 526
    iget v10, v4, Ljava/util/Hashtable$HashtableEntry;->hash:I

    and-int v7, v10, v8

    .line 527
    .local v7, nextHighBit:I
    if-eq v7, v2, :cond_38

    .line 528
    if-nez v0, :cond_3c

    .line 529
    or-int v10, v3, v7

    aput-object v4, v6, v10

    .line 532
    :goto_36
    move-object v0, v1

    .line 533
    move v2, v7

    .line 525
    :cond_38
    move-object v1, v4

    iget-object v4, v4, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_28

    .line 531
    :cond_3c
    iput-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_36

    .line 536
    .end local v7           #nextHighBit:I
    :cond_3f
    if-eqz v0, :cond_1a

    .line 537
    const/4 v10, 0x0

    iput-object v10, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_1a
.end method

.method private ensureCapacity(I)V
    .registers 13
    .parameter "numMappings"

    .prologue
    .line 441
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    invoke-static {p1}, Ljava/util/Hashtable;->capacityForInitSize(I)I

    move-result v10

    invoke-static {v10}, Ljava/util/Hashtable;->roundUpToPowerOfTwo(I)I

    move-result v2

    .line 442
    .local v2, newCapacity:I
    iget-object v9, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 443
    .local v9, oldTable:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v7, v9

    .line 444
    .local v7, oldCapacity:I
    if-gt v2, v7, :cond_e

    .line 470
    :cond_d
    :goto_d
    return-void

    .line 448
    :cond_e
    invoke-virtual {p0}, Ljava/util/Hashtable;->rehash()V

    .line 450
    mul-int/lit8 v10, v7, 0x2

    if-ne v2, v10, :cond_19

    .line 451
    invoke-direct {p0}, Ljava/util/Hashtable;->doubleCapacity()[Ljava/util/Hashtable$HashtableEntry;

    goto :goto_d

    .line 456
    :cond_19
    invoke-direct {p0, v2}, Ljava/util/Hashtable;->makeTable(I)[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v6

    .line 457
    .local v6, newTable:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget v10, p0, Ljava/util/Hashtable;->size:I

    if-eqz v10, :cond_d

    .line 458
    add-int/lit8 v4, v2, -0x1

    .line 459
    .local v4, newMask:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_24
    if-ge v1, v7, :cond_d

    .line 460
    aget-object v0, v9, v1

    .local v0, e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_28
    if-eqz v0, :cond_38

    .line 461
    iget-object v8, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .line 462
    .local v8, oldNext:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iget v10, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    and-int v3, v10, v4

    .line 463
    .local v3, newIndex:I
    aget-object v5, v6, v3

    .line 464
    .local v5, newNext:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    aput-object v0, v6, v3

    .line 465
    iput-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    .line 466
    move-object v0, v8

    .line 467
    goto :goto_28

    .line 459
    .end local v3           #newIndex:I
    .end local v5           #newNext:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v8           #oldNext:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_24
.end method

.method private makeTable(I)[Ljava/util/Hashtable$HashtableEntry;
    .registers 5
    .parameter "newCapacity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 488
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    new-array v0, p1, [Ljava/util/Hashtable$HashtableEntry;

    check-cast v0, [Ljava/util/Hashtable$HashtableEntry;

    .line 490
    .local v0, newTable:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    iput-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 491
    shr-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Ljava/util/Hashtable;->threshold:I

    .line 492
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 10
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1118
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1119
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1120
    .local v0, capacity:I
    if-gez v0, :cond_22

    .line 1121
    new-instance v5, Ljava/io/InvalidObjectException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Capacity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1123
    :cond_22
    const/4 v5, 0x4

    if-ge v0, v5, :cond_48

    .line 1124
    const/4 v0, 0x4

    .line 1130
    :goto_26
    invoke-direct {p0, v0}, Ljava/util/Hashtable;->makeTable(I)[Ljava/util/Hashtable$HashtableEntry;

    .line 1132
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 1133
    .local v3, size:I
    if-gez v3, :cond_54

    .line 1134
    new-instance v5, Ljava/io/InvalidObjectException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1125
    .end local v3           #size:I
    :cond_48
    const/high16 v5, 0x4000

    if-le v0, v5, :cond_4f

    .line 1126
    const/high16 v0, 0x4000

    goto :goto_26

    .line 1128
    :cond_4f
    invoke-static {v0}, Ljava/util/Hashtable;->roundUpToPowerOfTwo(I)I

    move-result v0

    goto :goto_26

    .line 1137
    .restart local v3       #size:I
    :cond_54
    const/4 v1, 0x0

    .local v1, i:I
    :goto_55
    if-ge v1, v3, :cond_65

    .line 1138
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 1139
    .local v2, key:Ljava/lang/Object;,"TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 1140
    .local v4, val:Ljava/lang/Object;,"TV;"
    invoke-direct {p0, v2, v4}, Ljava/util/Hashtable;->constructorPut(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1137
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 1142
    .end local v2           #key:Ljava/lang/Object;,"TK;"
    .end local v4           #val:Ljava/lang/Object;,"TV;"
    :cond_65
    return-void
.end method

.method private declared-synchronized removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 10
    .parameter "key"
    .parameter "value"

    .prologue
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    const/4 v5, 0x0

    .line 814
    monitor-enter p0

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/util/Hashtable;->secondaryHash(I)I

    move-result v1

    .line 815
    .local v1, hash:I
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 816
    .local v4, tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    and-int v2, v1, v6

    .line 817
    .local v2, index:I
    aget-object v0, v4, v2

    .local v0, e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v3, 0x0

    .line 818
    .local v3, prev:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_14
    if-eqz v0, :cond_2a

    .line 819
    iget v6, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v6, v1, :cond_48

    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 820
    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_45

    move-result v6

    if-nez v6, :cond_2c

    .line 833
    :cond_2a
    :goto_2a
    monitor-exit p0

    return v5

    .line 823
    :cond_2c
    if-nez v3, :cond_40

    .line 824
    :try_start_2e
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    aput-object v5, v4, v2

    .line 828
    :goto_32
    iget v5, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/Hashtable;->modCount:I

    .line 829
    iget v5, p0, Ljava/util/Hashtable;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/util/Hashtable;->size:I

    .line 830
    const/4 v5, 0x1

    goto :goto_2a

    .line 826
    :cond_40
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_44
    .catchall {:try_start_2e .. :try_end_44} :catchall_45

    goto :goto_32

    .line 814
    .end local v0           #e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1           #hash:I
    .end local v2           #index:I
    .end local v3           #prev:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v4           #tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :catchall_45
    move-exception v5

    monitor-exit p0

    throw v5

    .line 818
    .restart local v0       #e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v1       #hash:I
    .restart local v2       #index:I
    .restart local v3       #prev:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v4       #tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_48
    move-object v3, v0

    :try_start_49
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_4b
    .catchall {:try_start_49 .. :try_end_4b} :catchall_45

    goto :goto_14
.end method

.method private static roundUpToPowerOfTwo(I)I
    .registers 2
    .parameter "i"

    .prologue
    .line 1081
    add-int/lit8 p0, p0, -0x1

    .line 1084
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 1085
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 1086
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 1087
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 1088
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 1090
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method private static secondaryHash(I)I
    .registers 3
    .parameter "h"

    .prologue
    .line 1069
    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr p0, v0

    .line 1070
    ushr-int/lit8 v0, p0, 0x7

    xor-int/2addr v0, p0

    ushr-int/lit8 v1, p0, 0x4

    xor-int/2addr v0, v1

    return v0
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 8
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    const/high16 v5, 0x3f40

    .line 1103
    monitor-enter p0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    .line 1104
    .local v1, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v3, "threshold"

    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v4, v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1105
    const-string v3, "loadFactor"

    const/high16 v4, 0x3f40

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;F)V

    .line 1106
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1108
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v3, v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1109
    iget v3, p0, Ljava/util/Hashtable;->size:I

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1110
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1111
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1112
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_4a

    goto :goto_2f

    .line 1103
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1           #fields:Ljava/io/ObjectOutputStream$PutField;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_4a
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1114
    .restart local v1       #fields:Ljava/io/ObjectOutputStream$PutField;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_4d
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 3

    .prologue
    .line 581
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/util/Hashtable;->size:I

    if-eqz v0, :cond_14

    .line 582
    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 583
    iget v0, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Hashtable;->modCount:I

    .line 584
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Hashtable;->size:I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 586
    :cond_14
    monitor-exit p0

    return-void

    .line 581
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 213
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_25
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_7} :catch_1e

    .line 219
    .local v1, result:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    :try_start_7
    iget-object v2, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/Hashtable;->makeTable(I)[Ljava/util/Hashtable$HashtableEntry;

    .line 220
    const/4 v2, 0x0

    iput v2, v1, Ljava/util/Hashtable;->size:I

    .line 221
    const/4 v2, 0x0

    iput-object v2, v1, Ljava/util/Hashtable;->keySet:Ljava/util/Set;

    .line 222
    const/4 v2, 0x0

    iput-object v2, v1, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;

    .line 223
    const/4 v2, 0x0

    iput-object v2, v1, Ljava/util/Hashtable;->values:Ljava/util/Collection;

    .line 225
    invoke-direct {v1, p0}, Ljava/util/Hashtable;->constructorPutAll(Ljava/util/Map;)V
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_25

    .line 226
    monitor-exit p0

    return-object v1

    .line 214
    .end local v1           #result:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    :catch_1e
    move-exception v0

    .line 215
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    :try_start_1f
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_25

    .line 213
    .end local v0           #e:Ljava/lang/CloneNotSupportedException;
    :catchall_25
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "value"

    .prologue
    .line 344
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized containsKey(Ljava/lang/Object;)Z
    .registers 8
    .parameter "key"

    .prologue
    .line 291
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 292
    .local v2, hash:I
    ushr-int/lit8 v4, v2, 0x14

    ushr-int/lit8 v5, v2, 0xc

    xor-int/2addr v4, v5

    xor-int/2addr v2, v4

    .line 293
    ushr-int/lit8 v4, v2, 0x7

    ushr-int/lit8 v5, v2, 0x4

    xor-int/2addr v4, v5

    xor-int/2addr v2, v4

    .line 295
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 296
    .local v3, tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v4, v2

    aget-object v0, v3, v4

    .line 297
    .local v0, e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_19
    if-eqz v0, :cond_2f

    .line 298
    iget-object v1, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    .line 299
    .local v1, eKey:Ljava/lang/Object;,"TK;"
    if-eq v1, p1, :cond_29

    iget v4, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v4, v2, :cond_2c

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_31

    move-result v4

    if-eqz v4, :cond_2c

    .line 300
    :cond_29
    const/4 v4, 0x1

    .line 303
    .end local v1           #eKey:Ljava/lang/Object;,"TK;"
    :goto_2a
    monitor-exit p0

    return v4

    .line 297
    .restart local v1       #eKey:Ljava/lang/Object;,"TK;"
    :cond_2c
    :try_start_2c
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_31

    goto :goto_19

    .line 303
    .end local v1           #eKey:Ljava/lang/Object;,"TK;"
    :cond_2f
    const/4 v4, 0x0

    goto :goto_2a

    .line 291
    .end local v0           #e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v2           #hash:I
    .end local v3           #tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :catchall_31
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized containsValue(Ljava/lang/Object;)Z
    .registers 7
    .parameter "value"

    .prologue
    .line 315
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    if-nez p1, :cond_c

    .line 316
    :try_start_3
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_9

    .line 315
    :catchall_9
    move-exception v4

    monitor-exit p0

    throw v4

    .line 319
    :cond_c
    :try_start_c
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 320
    .local v3, tab:[Ljava/util/Hashtable$HashtableEntry;
    array-length v2, v3

    .line 322
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    if-ge v1, v2, :cond_27

    .line 323
    aget-object v0, v3, v1

    .local v0, e:Ljava/util/Hashtable$HashtableEntry;
    :goto_14
    if-eqz v0, :cond_24

    .line 324
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_9

    move-result v4

    if-eqz v4, :cond_21

    .line 325
    const/4 v4, 0x1

    .line 329
    .end local v0           #e:Ljava/util/Hashtable$HashtableEntry;
    :goto_1f
    monitor-exit p0

    return v4

    .line 323
    .restart local v0       #e:Ljava/util/Hashtable$HashtableEntry;
    :cond_21
    :try_start_21
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_9

    goto :goto_14

    .line 322
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 329
    .end local v0           #e:Ljava/util/Hashtable$HashtableEntry;
    :cond_27
    const/4 v4, 0x0

    goto :goto_1f
.end method

.method public declared-synchronized elements()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 651
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/Hashtable$ValueEnumeration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$ValueEnumeration;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 621
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    .line 622
    .local v0, es:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_7

    .end local v0           #es:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_5
    monitor-exit p0

    return-object v0

    .restart local v0       #es:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/Hashtable$EntrySet;

    .end local v0           #es:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$EntrySet;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V

    iput-object v0, p0, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_10

    goto :goto_5

    .line 621
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 848
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast p1, Ljava/util/Map;

    .end local p1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1a

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_16
    monitor-exit p0

    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_16

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 264
    .local v2, hash:I
    ushr-int/lit8 v4, v2, 0x14

    ushr-int/lit8 v5, v2, 0xc

    xor-int/2addr v4, v5

    xor-int/2addr v2, v4

    .line 265
    ushr-int/lit8 v4, v2, 0x7

    ushr-int/lit8 v5, v2, 0x4

    xor-int/2addr v4, v5

    xor-int/2addr v2, v4

    .line 267
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 268
    .local v3, tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v4, v2

    aget-object v0, v3, v4

    .line 269
    .local v0, e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_19
    if-eqz v0, :cond_30

    .line 270
    iget-object v1, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    .line 271
    .local v1, eKey:Ljava/lang/Object;,"TK;"
    if-eq v1, p1, :cond_29

    iget v4, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v4, v2, :cond_2d

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 272
    :cond_29
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_32

    .line 275
    .end local v1           #eKey:Ljava/lang/Object;,"TK;"
    :goto_2b
    monitor-exit p0

    return-object v4

    .line 269
    .restart local v1       #eKey:Ljava/lang/Object;,"TK;"
    :cond_2d
    :try_start_2d
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_32

    goto :goto_19

    .line 275
    .end local v1           #eKey:Ljava/lang/Object;,"TK;"
    :cond_30
    const/4 v4, 0x0

    goto :goto_2b

    .line 263
    .end local v0           #e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v2           #hash:I
    .end local v3           #tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :catchall_32
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized hashCode()I
    .registers 9

    .prologue
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    const/4 v6, 0x0

    .line 853
    monitor-enter p0

    const/4 v3, 0x0

    .line 854
    .local v3, result:I
    :try_start_3
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 855
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 856
    .local v2, key:Ljava/lang/Object;,"TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 857
    .local v4, value:Ljava/lang/Object;,"TV;"
    if-eq v2, p0, :cond_b

    if-eq v4, p0, :cond_b

    .line 860
    if-eqz v2, :cond_33

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v5

    move v7, v5

    :goto_2a
    if-eqz v4, :cond_35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_39

    move-result v5

    :goto_30
    xor-int/2addr v5, v7

    add-int/2addr v3, v5

    .line 862
    goto :goto_b

    :cond_33
    move v7, v6

    .line 860
    goto :goto_2a

    :cond_35
    move v5, v6

    goto :goto_30

    .line 863
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2           #key:Ljava/lang/Object;,"TK;"
    .end local v4           #value:Ljava/lang/Object;,"TV;"
    :cond_37
    monitor-exit p0

    return v3

    .line 853
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_39
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized isEmpty()Z
    .registers 2

    .prologue
    .line 237
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/util/Hashtable;->size:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 596
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/util/Hashtable;->keySet:Ljava/util/Set;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    .line 597
    .local v0, ks:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_7

    .end local v0           #ks:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    :goto_5
    monitor-exit p0

    return-object v0

    .restart local v0       #ks:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/Hashtable$KeySet;

    .end local v0           #ks:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$KeySet;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V

    iput-object v0, p0, Ljava/util/Hashtable;->keySet:Ljava/util/Set;
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_10

    goto :goto_5

    .line 596
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized keys()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 637
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/Hashtable$KeyEnumeration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$KeyEnumeration;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    monitor-enter p0

    if-nez p2, :cond_c

    .line 365
    :try_start_3
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_9

    .line 364
    :catchall_9
    move-exception v6

    monitor-exit p0

    throw v6

    .line 367
    :cond_c
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/util/Hashtable;->secondaryHash(I)I

    move-result v2

    .line 368
    .local v2, hash:I
    iget-object v5, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 369
    .local v5, tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    and-int v3, v2, v6

    .line 370
    .local v3, index:I
    aget-object v1, v5, v3

    .line 371
    .local v1, first:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    move-object v0, v1

    .local v0, e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_1e
    if-eqz v0, :cond_35

    .line 372
    iget v6, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v6, v2, :cond_32

    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 373
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    .line 374
    .local v4, oldValue:Ljava/lang/Object;,"TV;"
    iput-object p2, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_9

    .line 388
    .end local v4           #oldValue:Ljava/lang/Object;,"TV;"
    :goto_30
    monitor-exit p0

    return-object v4

    .line 371
    :cond_32
    :try_start_32
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_1e

    .line 380
    :cond_35
    iget v6, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/Hashtable;->modCount:I

    .line 381
    iget v6, p0, Ljava/util/Hashtable;->size:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Ljava/util/Hashtable;->size:I

    iget v7, p0, Ljava/util/Hashtable;->threshold:I

    if-le v6, v7, :cond_53

    .line 382
    invoke-virtual {p0}, Ljava/util/Hashtable;->rehash()V

    .line 383
    invoke-direct {p0}, Ljava/util/Hashtable;->doubleCapacity()[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v5

    .line 384
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    and-int v3, v2, v6

    .line 385
    aget-object v1, v5, v3

    .line 387
    :cond_53
    new-instance v6, Ljava/util/Hashtable$HashtableEntry;

    invoke-direct {v6, p1, p2, v2, v1}, Ljava/util/Hashtable$HashtableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/Hashtable$HashtableEntry;)V

    aput-object v6, v5, v3
    :try_end_5a
    .catchall {:try_start_32 .. :try_end_5a} :catchall_9

    .line 388
    const/4 v4, 0x0

    goto :goto_30
.end method

.method public declared-synchronized putAll(Ljava/util/Map;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {p0, v2}, Ljava/util/Hashtable;->ensureCapacity(I)V

    .line 425
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 426
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_28

    goto :goto_10

    .line 424
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_28
    move-exception v2

    monitor-exit p0

    throw v2

    .line 428
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2b
    monitor-exit p0

    return-void
.end method

.method protected rehash()V
    .registers 1

    .prologue
    .line 481
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 554
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/util/Hashtable;->secondaryHash(I)I

    move-result v1

    .line 555
    .local v1, hash:I
    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    .line 556
    .local v4, tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    and-int v2, v1, v5

    .line 557
    .local v2, index:I
    aget-object v0, v4, v2

    .local v0, e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    const/4 v3, 0x0

    .line 558
    .local v3, prev:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :goto_13
    if-eqz v0, :cond_43

    .line 559
    iget v5, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v5, v1, :cond_3f

    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 560
    if-nez v3, :cond_37

    .line 561
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    aput-object v5, v4, v2

    .line 565
    :goto_27
    iget v5, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/Hashtable;->modCount:I

    .line 566
    iget v5, p0, Ljava/util/Hashtable;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/util/Hashtable;->size:I

    .line 567
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_3c

    .line 570
    :goto_35
    monitor-exit p0

    return-object v5

    .line 563
    :cond_37
    :try_start_37
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_3c

    goto :goto_27

    .line 554
    .end local v0           #e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v1           #hash:I
    .end local v2           #index:I
    .end local v3           #prev:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .end local v4           #tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :catchall_3c
    move-exception v5

    monitor-exit p0

    throw v5

    .line 558
    .restart local v0       #e:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v1       #hash:I
    .restart local v2       #index:I
    .restart local v3       #prev:Ljava/util/Hashtable$HashtableEntry;,"Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    .restart local v4       #tab:[Ljava/util/Hashtable$HashtableEntry;,"[Ljava/util/Hashtable$HashtableEntry<TK;TV;>;"
    :cond_3f
    move-object v3, v0

    :try_start_40
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_3c

    goto :goto_13

    .line 570
    :cond_43
    const/4 v5, 0x0

    goto :goto_35
.end method

.method public declared-synchronized size()I
    .registers 2

    .prologue
    .line 248
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/util/Hashtable;->size:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 8

    .prologue
    .line 878
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    iget v6, p0, Ljava/util/Hashtable;->size:I

    mul-int/lit8 v6, v6, 0xf

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 879
    .local v4, result:Ljava/lang/StringBuilder;
    const/16 v6, 0x7b

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 880
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 881
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    .line 882
    .local v1, hasMore:Z
    :cond_1b
    :goto_1b
    if-eqz v1, :cond_57

    .line 883
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 885
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 886
    .local v3, key:Ljava/lang/Object;,"TK;"
    if-ne v3, p0, :cond_4d

    const-string v6, "(this Map)"

    :goto_2b
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    const/16 v6, 0x3d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 890
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 891
    .local v5, value:Ljava/lang/Object;,"TV;"
    if-ne v5, p0, :cond_52

    const-string v6, "(this Map)"

    :goto_3b
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 894
    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_4a

    goto :goto_1b

    .line 878
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1           #hasMore:Z
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local v3           #key:Ljava/lang/Object;,"TK;"
    .end local v4           #result:Ljava/lang/StringBuilder;
    .end local v5           #value:Ljava/lang/Object;,"TV;"
    :catchall_4a
    move-exception v6

    monitor-exit p0

    throw v6

    .line 886
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    .restart local v1       #hasMore:Z
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    .restart local v3       #key:Ljava/lang/Object;,"TK;"
    .restart local v4       #result:Ljava/lang/StringBuilder;
    :cond_4d
    :try_start_4d
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2b

    .line 891
    .restart local v5       #value:Ljava/lang/Object;,"TV;"
    :cond_52
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3b

    .line 898
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    .end local v3           #key:Ljava/lang/Object;,"TK;"
    .end local v5           #value:Ljava/lang/Object;,"TV;"
    :cond_57
    const/16 v6, 0x7d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 899
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5f
    .catchall {:try_start_4d .. :try_end_5f} :catchall_4a

    move-result-object v6

    monitor-exit p0

    return-object v6
.end method

.method public declared-synchronized values()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 608
    .local p0, this:Ljava/util/Hashtable;,"Ljava/util/Hashtable<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/util/Hashtable;->values:Ljava/util/Collection;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    .line 609
    .local v0, vs:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_7

    .end local v0           #vs:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    :goto_5
    monitor-exit p0

    return-object v0

    .restart local v0       #vs:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/Hashtable$Values;

    .end local v0           #vs:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$Values;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V

    iput-object v0, p0, Ljava/util/Hashtable;->values:Ljava/util/Collection;
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_10

    goto :goto_5

    .line 608
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1
.end method
