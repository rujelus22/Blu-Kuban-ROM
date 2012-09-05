.class Lorg/dom4j/tree/ConcurrentReaderHashMap;
.super Ljava/util/AbstractMap;
.source "ConcurrentReaderHashMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/dom4j/tree/ConcurrentReaderHashMap$BarrierLock;,
        Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;,
        Lorg/dom4j/tree/ConcurrentReaderHashMap$EntrySet;,
        Lorg/dom4j/tree/ConcurrentReaderHashMap$HashIterator;,
        Lorg/dom4j/tree/ConcurrentReaderHashMap$KeyIterator;,
        Lorg/dom4j/tree/ConcurrentReaderHashMap$KeySet;,
        Lorg/dom4j/tree/ConcurrentReaderHashMap$ValueIterator;,
        Lorg/dom4j/tree/ConcurrentReaderHashMap$Values;
    }
.end annotation


# static fields
.field public static DEFAULT_INITIAL_CAPACITY:I = 0x0

.field public static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final MINIMUM_CAPACITY:I = 0x4


# instance fields
.field protected final barrierLock:Lorg/dom4j/tree/ConcurrentReaderHashMap$BarrierLock;

.field protected transient count:I

.field protected transient entrySet:Ljava/util/Set;

.field protected transient keySet:Ljava/util/Set;

.field protected transient lastWrite:Ljava/lang/Object;

.field protected loadFactor:F

.field protected transient table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

.field protected threshold:I

.field protected transient values:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 219
    const/16 v0, 0x20

    sput v0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->DEFAULT_INITIAL_CAPACITY:I

    .line 155
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 351
    sget v0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->DEFAULT_INITIAL_CAPACITY:I

    const/high16 v1, 0x3f40

    invoke-direct {p0, v0, v1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;-><init>(IF)V

    .line 352
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "initialCapacity"

    .prologue
    .line 342
    const/high16 v0, 0x3f40

    invoke-direct {p0, p1, v0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;-><init>(IF)V

    .line 343
    return-void
.end method

.method public constructor <init>(IF)V
    .registers 7
    .parameter "initialCapacity"
    .parameter "loadFactor"

    .prologue
    const/4 v2, 0x0

    .line 319
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 187
    new-instance v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$BarrierLock;

    invoke-direct {v1}, Lorg/dom4j/tree/ConcurrentReaderHashMap$BarrierLock;-><init>()V

    iput-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->barrierLock:Lorg/dom4j/tree/ConcurrentReaderHashMap$BarrierLock;

    .line 852
    iput-object v2, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->keySet:Ljava/util/Set;

    .line 854
    iput-object v2, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->entrySet:Ljava/util/Set;

    .line 856
    iput-object v2, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->values:Ljava/util/Collection;

    .line 320
    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_2b

    .line 321
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Illegal Load factor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 323
    :cond_2b
    iput p2, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->loadFactor:F

    .line 325
    invoke-direct {p0, p1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->p2capacity(I)I

    move-result v0

    .line 327
    .local v0, cap:I
    new-array v1, v0, [Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iput-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 328
    int-to-float v1, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->threshold:I

    .line 329
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 5
    .parameter "t"

    .prologue
    const/high16 v2, 0x3f40

    .line 361
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 362
    invoke-direct {p0, v0, v2}, Lorg/dom4j/tree/ConcurrentReaderHashMap;-><init>(IF)V

    .line 363
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->putAll(Ljava/util/Map;)V

    .line 364
    return-void
.end method

.method private static hash(Ljava/lang/Object;)I
    .registers 4
    .parameter "x"

    .prologue
    .line 291
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 295
    .local v0, h:I
    shl-int/lit8 v1, v0, 0x7

    sub-int/2addr v1, v0

    ushr-int/lit8 v2, v0, 0x9

    add-int/2addr v1, v2

    ushr-int/lit8 v2, v0, 0x11

    add-int/2addr v1, v2

    return v1
.end method

.method private p2capacity(I)I
    .registers 5
    .parameter "initialCapacity"

    .prologue
    .line 271
    move v0, p1

    .line 275
    .local v0, cap:I
    const/high16 v2, 0x4000

    if-gt v0, v2, :cond_7

    if-gez v0, :cond_a

    .line 276
    :cond_7
    const/high16 v1, 0x4000

    .line 282
    .local v1, result:I
    :cond_9
    return v1

    .line 278
    .end local v1           #result:I
    :cond_a
    const/4 v1, 0x4

    .line 279
    .restart local v1       #result:I
    :goto_b
    if-ge v1, v0, :cond_9

    .line 280
    shl-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method private declared-synchronized readObject(Ljava/io/ObjectInputStream;)V
    .registers 8
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1253
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1256
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 1257
    .local v2, numBuckets:I
    new-array v5, v2, [Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iput-object v5, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 1260
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_23

    move-result v3

    .line 1263
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    if-lt v0, v3, :cond_15

    .line 1268
    monitor-exit p0

    return-void

    .line 1264
    :cond_15
    :try_start_15
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 1265
    .local v1, key:Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 1266
    .local v4, value:Ljava/lang/Object;
    invoke-virtual {p0, v1, v4}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_23

    .line 1263
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1253
    .end local v0           #i:I
    .end local v1           #key:Ljava/lang/Object;
    .end local v2           #numBuckets:I
    .end local v3           #size:I
    .end local v4           #value:Ljava/lang/Object;
    :catchall_23
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1226
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1229
    iget-object v2, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    array-length v2, v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1232
    iget v2, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1235
    iget-object v2, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    array-length v2, v2
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_2e

    add-int/lit8 v1, v2, -0x1

    .local v1, index:I
    :goto_14
    if-gez v1, :cond_18

    .line 1244
    monitor-exit p0

    return-void

    .line 1236
    :cond_18
    :try_start_18
    iget-object v2, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    aget-object v0, v2, v1

    .line 1238
    .local v0, entry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :goto_1c
    if-nez v0, :cond_21

    .line 1235
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 1239
    :cond_21
    iget-object v2, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1240
    iget-object v2, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1241
    iget-object v0, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :try_end_2d
    .catchall {:try_start_18 .. :try_end_2d} :catchall_2e

    goto :goto_1c

    .line 1226
    .end local v0           #entry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    .end local v1           #index:I
    :catchall_2e
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public declared-synchronized capacity()I
    .registers 2

    .prologue
    .line 1275
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    array-length v0, v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return v0

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .registers 5

    .prologue
    .line 803
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 804
    .local v2, tab:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    array-length v3, v2

    if-lt v1, v3, :cond_f

    .line 813
    const/4 v3, 0x0

    iput v3, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I

    .line 814
    invoke-virtual {p0, v2}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->recordModification(Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1f

    .line 815
    monitor-exit p0

    return-void

    .line 808
    :cond_f
    :try_start_f
    aget-object v0, v2, v1

    .local v0, e:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :goto_11
    if-nez v0, :cond_19

    .line 811
    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 804
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 809
    :cond_19
    const/4 v3, 0x0

    iput-object v3, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    .line 808
    iget-object v0, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_1f

    goto :goto_11

    .line 803
    .end local v0           #e:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    .end local v1           #i:I
    .end local v2           #tab:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :catchall_1f
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .registers 11

    .prologue
    .line 826
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/dom4j/tree/ConcurrentReaderHashMap;

    .line 828
    .local v4, t:Lorg/dom4j/tree/ConcurrentReaderHashMap;
    const/4 v7, 0x0

    iput-object v7, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap;->keySet:Ljava/util/Set;

    .line 829
    const/4 v7, 0x0

    iput-object v7, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap;->entrySet:Ljava/util/Set;

    .line 830
    const/4 v7, 0x0

    iput-object v7, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap;->values:Ljava/util/Collection;

    .line 832
    iget-object v5, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 833
    .local v5, tab:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    array-length v7, v5

    new-array v7, v7, [Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iput-object v7, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 834
    iget-object v6, v4, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 836
    .local v6, ttab:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1a
    array-length v7, v5
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_40
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1b} :catch_39

    if-lt v3, v7, :cond_1f

    .line 843
    monitor-exit p0

    return-object v4

    .line 837
    :cond_1f
    const/4 v1, 0x0

    .line 838
    .local v1, first:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :try_start_20
    aget-object v0, v5, v3

    .local v0, e:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    move-object v2, v1

    .end local v1           #first:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    .local v2, first:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :goto_23
    if-nez v0, :cond_2a

    .line 840
    aput-object v2, v6, v3

    .line 836
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 839
    :cond_2a
    new-instance v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iget v7, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    iget-object v8, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    iget-object v9, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    invoke-direct {v1, v7, v8, v9, v2}, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;)V

    .line 838
    .end local v2           #first:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    .restart local v1       #first:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    iget-object v0, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :try_end_37
    .catchall {:try_start_20 .. :try_end_37} :catchall_40
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_20 .. :try_end_37} :catch_39

    move-object v2, v1

    .end local v1           #first:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    .restart local v2       #first:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    goto :goto_23

    .line 844
    .end local v0           #e:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    .end local v2           #first:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    .end local v3           #i:I
    .end local v4           #t:Lorg/dom4j/tree/ConcurrentReaderHashMap;
    .end local v5           #tab:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    .end local v6           #ttab:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :catch_39
    move-exception v0

    .line 846
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    :try_start_3a
    new-instance v7, Ljava/lang/InternalError;

    invoke-direct {v7}, Ljava/lang/InternalError;-><init>()V

    throw v7
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    .line 826
    .end local v0           #e:Ljava/lang/CloneNotSupportedException;
    :catchall_40
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "value"

    .prologue
    .line 767
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 469
    invoke-virtual {p0, p1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 6
    .parameter "value"

    .prologue
    .line 732
    if-nez p1, :cond_8

    .line 733
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 735
    :cond_8
    invoke-virtual {p0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->getTableForReading()[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    move-result-object v2

    .line 737
    .local v2, tab:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    array-length v3, v2

    if-lt v1, v3, :cond_12

    .line 743
    const/4 v3, 0x0

    :goto_11
    return v3

    .line 738
    :cond_12
    aget-object v0, v2, v1

    .local v0, e:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :goto_14
    if-nez v0, :cond_19

    .line 737
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 739
    :cond_19
    iget-object v3, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 740
    const/4 v3, 0x1

    goto :goto_11

    .line 738
    :cond_23
    iget-object v0, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    goto :goto_14
.end method

.method public elements()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 1019
    new-instance v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$ValueIterator;

    invoke-direct {v0, p0}, Lorg/dom4j/tree/ConcurrentReaderHashMap$ValueIterator;-><init>(Lorg/dom4j/tree/ConcurrentReaderHashMap;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3

    .prologue
    .line 948
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->entrySet:Ljava/util/Set;

    .line 949
    .local v0, es:Ljava/util/Set;
    if-eqz v0, :cond_5

    .end local v0           #es:Ljava/util/Set;
    :goto_4
    return-object v0

    .restart local v0       #es:Ljava/util/Set;
    :cond_5
    new-instance v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$EntrySet;

    .end local v0           #es:Ljava/util/Set;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/dom4j/tree/ConcurrentReaderHashMap$EntrySet;-><init>(Lorg/dom4j/tree/ConcurrentReaderHashMap;Lorg/dom4j/tree/ConcurrentReaderHashMap$EntrySet;)V

    iput-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->entrySet:Ljava/util/Set;

    goto :goto_4
.end method

.method protected eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 302
    if-eq p1, p2, :cond_a

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method protected declared-synchronized findAndRemoveEntry(Ljava/util/Map$Entry;)Z
    .registers 5
    .parameter "entry"

    .prologue
    .line 985
    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 986
    .local v0, key:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 987
    .local v1, v:Ljava/lang/Object;
    if-eqz v1, :cond_1b

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 988
    invoke-virtual {p0, v0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1d

    .line 989
    const/4 v2, 0x1

    .line 991
    :goto_19
    monitor-exit p0

    return v2

    :cond_1b
    const/4 v2, 0x0

    goto :goto_19

    .line 985
    .end local v0           #key:Ljava/lang/Object;
    .end local v1           #v:Ljava/lang/Object;
    :catchall_1d
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .parameter "key"

    .prologue
    .line 402
    invoke-static {p1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->hash(Ljava/lang/Object;)I

    move-result v2

    .line 412
    .local v2, hash:I
    iget-object v5, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 413
    .local v5, tab:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    and-int v3, v2, v7

    .line 414
    .local v3, index:I
    aget-object v1, v5, v3

    .line 415
    .local v1, first:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    move-object v0, v1

    .line 418
    .local v0, e:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :goto_e
    if-nez v0, :cond_26

    .line 423
    invoke-virtual {p0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->getTableForReading()[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    move-result-object v4

    .line 424
    .local v4, reread:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    if-ne v5, v4, :cond_1c

    aget-object v7, v5, v3

    if-ne v1, v7, :cond_1c

    .line 425
    const/4 v6, 0x0

    .line 437
    .end local v4           #reread:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :cond_1b
    return-object v6

    .line 428
    .restart local v4       #reread:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :cond_1c
    move-object v5, v4

    .line 429
    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    and-int v3, v2, v7

    aget-object v1, v5, v3

    move-object v0, v1

    goto :goto_e

    .line 434
    .end local v4           #reread:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :cond_26
    iget v7, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    if-ne v7, v2, :cond_46

    iget-object v7, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v7}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 435
    iget-object v6, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    .line 436
    .local v6, value:Ljava/lang/Object;
    if-nez v6, :cond_1b

    .line 445
    monitor-enter p0

    .line 446
    :try_start_37
    iget-object v5, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 445
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_43

    .line 448
    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    and-int v3, v2, v7

    aget-object v1, v5, v3

    move-object v0, v1

    goto :goto_e

    .line 445
    :catchall_43
    move-exception v7

    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v7

    .line 451
    .end local v6           #value:Ljava/lang/Object;
    :cond_46
    iget-object v0, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 417
    goto :goto_e
.end method

.method protected final getTableForReading()[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    .registers 3

    .prologue
    .line 210
    iget-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->barrierLock:Lorg/dom4j/tree/ConcurrentReaderHashMap$BarrierLock;

    monitor-enter v1

    .line 211
    :try_start_3
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    monitor-exit v1

    return-object v0

    .line 210
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public declared-synchronized isEmpty()Z
    .registers 2

    .prologue
    .line 383
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I
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

.method public keySet()Ljava/util/Set;
    .registers 3

    .prologue
    .line 871
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->keySet:Ljava/util/Set;

    .line 872
    .local v0, ks:Ljava/util/Set;
    if-eqz v0, :cond_5

    .end local v0           #ks:Ljava/util/Set;
    :goto_4
    return-object v0

    .restart local v0       #ks:Ljava/util/Set;
    :cond_5
    new-instance v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$KeySet;

    .end local v0           #ks:Ljava/util/Set;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/dom4j/tree/ConcurrentReaderHashMap$KeySet;-><init>(Lorg/dom4j/tree/ConcurrentReaderHashMap;Lorg/dom4j/tree/ConcurrentReaderHashMap$KeySet;)V

    iput-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->keySet:Ljava/util/Set;

    goto :goto_4
.end method

.method public keys()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 1004
    new-instance v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$KeyIterator;

    invoke-direct {v0, p0}, Lorg/dom4j/tree/ConcurrentReaderHashMap$KeyIterator;-><init>(Lorg/dom4j/tree/ConcurrentReaderHashMap;)V

    return-object v0
.end method

.method public loadFactor()F
    .registers 2

    .prologue
    .line 1282
    iget v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->loadFactor:F

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .parameter "key"
    .parameter "value"

    .prologue
    .line 493
    if-nez p2, :cond_8

    .line 494
    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 496
    :cond_8
    invoke-static {p1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->hash(Ljava/lang/Object;)I

    move-result v2

    .line 497
    .local v2, hash:I
    iget-object v6, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 498
    .local v6, tab:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    and-int v3, v2, v7

    .line 499
    .local v3, index:I
    aget-object v1, v6, v3

    .line 502
    .local v1, first:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    move-object v0, v1

    .local v0, e:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :goto_16
    if-nez v0, :cond_3a

    .line 506
    :cond_18
    monitor-enter p0

    .line 507
    :try_start_19
    iget-object v7, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    if-ne v6, v7, :cond_5c

    .line 508
    if-nez v0, :cond_50

    .line 510
    aget-object v7, v6, v3

    if-ne v1, v7, :cond_5c

    .line 512
    new-instance v4, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    invoke-direct {v4, v2, p1, p2, v1}, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;)V

    .line 513
    .local v4, newEntry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    aput-object v4, v6, v3

    .line 514
    iget v7, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I

    iget v8, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->threshold:I

    if-lt v7, v8, :cond_49

    .line 515
    invoke-virtual {p0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->rehash()V

    .line 518
    :goto_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_19 .. :try_end_38} :catchall_4d

    const/4 v5, 0x0

    .line 530
    .end local v4           #newEntry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :goto_39
    return-object v5

    .line 503
    :cond_3a
    iget v7, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    if-ne v7, v2, :cond_46

    iget-object v7, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v7}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    .line 502
    :cond_46
    iget-object v0, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    goto :goto_16

    .line 517
    .restart local v4       #newEntry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :cond_49
    :try_start_49
    invoke-virtual {p0, v4}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->recordModification(Ljava/lang/Object;)V

    goto :goto_37

    .line 506
    .end local v4           #newEntry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :catchall_4d
    move-exception v7

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_4d

    throw v7

    .line 521
    :cond_50
    :try_start_50
    iget-object v5, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    .line 522
    .local v5, oldValue:Ljava/lang/Object;
    aget-object v7, v6, v3

    if-ne v1, v7, :cond_5c

    if-eqz v5, :cond_5c

    .line 523
    iput-object p2, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    .line 524
    monitor-exit p0

    goto :goto_39

    .line 530
    .end local v5           #oldValue:Ljava/lang/Object;
    :cond_5c
    invoke-virtual {p0, p1, p2, v2}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->sput(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    monitor-exit p0
    :try_end_61
    .catchall {:try_start_50 .. :try_end_61} :catchall_4d

    goto :goto_39
.end method

.method public declared-synchronized putAll(Ljava/util/Map;)V
    .registers 8
    .parameter "t"

    .prologue
    .line 781
    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->size()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_30

    move-result v3

    .line 782
    .local v3, n:I
    if-nez v3, :cond_c

    .line 797
    :cond_7
    monitor-exit p0

    return-void

    .line 789
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->rehash()V

    .line 788
    :cond_c
    iget v5, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->threshold:I

    if-ge v3, v5, :cond_9

    .line 791
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 792
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 793
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 794
    .local v2, key:Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 795
    .local v4, value:Ljava/lang/Object;
    invoke-virtual {p0, v2, v4}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_30

    goto :goto_18

    .line 781
    .end local v0           #entry:Ljava/util/Map$Entry;
    .end local v1           #it:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/Object;
    .end local v3           #n:I
    .end local v4           #value:Ljava/lang/Object;
    :catchall_30
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method protected final recordModification(Ljava/lang/Object;)V
    .registers 4
    .parameter "x"

    .prologue
    .line 200
    iget-object v1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->barrierLock:Lorg/dom4j/tree/ConcurrentReaderHashMap$BarrierLock;

    monitor-enter v1

    .line 201
    :try_start_3
    iput-object p1, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->lastWrite:Ljava/lang/Object;

    .line 200
    monitor-exit v1

    .line 203
    return-void

    .line 200
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method protected rehash()V
    .registers 21

    .prologue
    .line 569
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 570
    .local v13, oldTable:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    array-length v12, v13

    .line 571
    .local v12, oldCapacity:I
    const/high16 v15, 0x4000

    if-lt v12, v15, :cond_11

    .line 572
    const v15, 0x7fffffff

    move-object/from16 v0, p0

    iput v15, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->threshold:I

    .line 631
    :goto_10
    return-void

    .line 576
    :cond_11
    shl-int/lit8 v9, v12, 0x1

    .line 577
    .local v9, newCapacity:I
    add-int/lit8 v8, v9, -0x1

    .line 578
    .local v8, mask:I
    int-to-float v15, v9

    move-object/from16 v0, p0

    iget v0, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->loadFactor:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->threshold:I

    .line 580
    new-array v10, v9, [Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 593
    .local v10, newTable:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_26
    if-lt v2, v12, :cond_32

    .line 629
    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 630
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->recordModification(Ljava/lang/Object;)V

    goto :goto_10

    .line 596
    :cond_32
    aget-object v1, v13, v2

    .line 598
    .local v1, e:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    if-eqz v1, :cond_40

    .line 599
    iget v15, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    and-int v3, v15, v8

    .line 600
    .local v3, idx:I
    iget-object v11, v1, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 603
    .local v11, next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    if-nez v11, :cond_43

    .line 604
    aput-object v1, v10, v3

    .line 593
    .end local v3           #idx:I
    .end local v11           #next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 608
    .restart local v3       #idx:I
    .restart local v11       #next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :cond_43
    move-object v7, v1

    .line 609
    .local v7, lastRun:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    move v6, v3

    .line 610
    .local v6, lastIdx:I
    move-object v5, v11

    .local v5, last:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :goto_46
    if-nez v5, :cond_69

    .line 617
    aput-object v7, v10, v6

    .line 620
    move-object v14, v1

    .local v14, p:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :goto_4b
    if-eq v14, v7, :cond_40

    .line 621
    iget v15, v14, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    and-int v4, v15, v8

    .line 622
    .local v4, k:I
    new-instance v15, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iget v0, v14, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    move/from16 v16, v0

    iget-object v0, v14, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    move-object/from16 v17, v0

    iget-object v0, v14, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 623
    aget-object v19, v10, v4

    invoke-direct/range {v15 .. v19}, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;)V

    .line 622
    aput-object v15, v10, v4

    .line 620
    iget-object v14, v14, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    goto :goto_4b

    .line 611
    .end local v4           #k:I
    .end local v14           #p:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :cond_69
    iget v15, v5, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    and-int v4, v15, v8

    .line 612
    .restart local v4       #k:I
    if-eq v4, v6, :cond_71

    .line 613
    move v6, v4

    .line 614
    move-object v7, v5

    .line 610
    :cond_71
    iget-object v5, v5, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    goto :goto_46
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14
    .parameter "key"

    .prologue
    const/4 v6, 0x0

    .line 654
    invoke-static {p1}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->hash(Ljava/lang/Object;)I

    move-result v2

    .line 655
    .local v2, hash:I
    iget-object v8, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 656
    .local v8, tab:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    and-int v5, v2, v9

    .line 657
    .local v5, index:I
    aget-object v1, v8, v5

    .line 658
    .local v1, first:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    move-object v0, v1

    .line 660
    .local v0, e:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    move-object v0, v1

    :goto_10
    if-nez v0, :cond_1f

    .line 664
    :cond_12
    monitor-enter p0

    .line 665
    :try_start_13
    iget-object v9, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    if-ne v8, v9, :cond_5e

    .line 666
    if-nez v0, :cond_2e

    .line 667
    aget-object v9, v8, v5

    if-ne v1, v9, :cond_5e

    .line 668
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_4c

    .line 687
    :goto_1e
    return-object v6

    .line 661
    :cond_1f
    iget v9, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    if-ne v9, v2, :cond_2b

    iget-object v9, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v9}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_12

    .line 660
    :cond_2b
    iget-object v0, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    goto :goto_10

    .line 670
    :cond_2e
    :try_start_2e
    iget-object v6, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    .line 671
    .local v6, oldValue:Ljava/lang/Object;
    aget-object v9, v8, v5

    if-ne v1, v9, :cond_5e

    if-eqz v6, :cond_5e

    .line 672
    const/4 v9, 0x0

    iput-object v9, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    .line 673
    iget v9, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I

    .line 675
    iget-object v3, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 676
    .local v3, head:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    move-object v7, v1

    .local v7, p:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    move-object v4, v3

    .end local v3           #head:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    .local v4, head:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :goto_43
    if-ne v7, v0, :cond_4f

    .line 679
    aput-object v4, v8, v5

    .line 680
    invoke-virtual {p0, v4}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->recordModification(Ljava/lang/Object;)V

    .line 681
    monitor-exit p0

    goto :goto_1e

    .line 664
    .end local v4           #head:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    .end local v6           #oldValue:Ljava/lang/Object;
    .end local v7           #p:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :catchall_4c
    move-exception v9

    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_2e .. :try_end_4e} :catchall_4c

    throw v9

    .line 677
    .restart local v4       #head:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    .restart local v6       #oldValue:Ljava/lang/Object;
    .restart local v7       #p:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :cond_4f
    :try_start_4f
    new-instance v3, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iget v9, v7, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    iget-object v10, v7, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    iget-object v11, v7, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    invoke-direct {v3, v9, v10, v11, v4}, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;)V

    .line 676
    .end local v4           #head:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    .restart local v3       #head:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    iget-object v7, v7, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    move-object v4, v3

    .end local v3           #head:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    .restart local v4       #head:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    goto :goto_43

    .line 687
    .end local v4           #head:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    .end local v6           #oldValue:Ljava/lang/Object;
    .end local v7           #p:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :cond_5e
    invoke-virtual {p0, p1, v2}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->sremove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    monitor-exit p0
    :try_end_63
    .catchall {:try_start_4f .. :try_end_63} :catchall_4c

    goto :goto_1e
.end method

.method public declared-synchronized size()I
    .registers 2

    .prologue
    .line 373
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected sput(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 12
    .parameter "key"
    .parameter "value"
    .parameter "hash"

    .prologue
    .line 540
    iget-object v5, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 541
    .local v5, tab:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    and-int v2, p3, v6

    .line 542
    .local v2, index:I
    aget-object v1, v5, v2

    .line 543
    .local v1, first:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    move-object v0, v1

    .line 546
    .local v0, e:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :goto_a
    if-nez v0, :cond_26

    .line 547
    new-instance v3, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    invoke-direct {v3, p3, p1, p2, v1}, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;)V

    .line 548
    .local v3, newEntry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    aput-object v3, v5, v2

    .line 549
    iget v6, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I

    iget v7, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->threshold:I

    if-lt v6, v7, :cond_22

    .line 550
    invoke-virtual {p0}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->rehash()V

    .line 553
    :goto_20
    const/4 v4, 0x0

    .line 557
    .end local v3           #newEntry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :goto_21
    return-object v4

    .line 552
    .restart local v3       #newEntry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :cond_22
    invoke-virtual {p0, v3}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->recordModification(Ljava/lang/Object;)V

    goto :goto_20

    .line 554
    .end local v3           #newEntry:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :cond_26
    iget v6, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    if-ne v6, p3, :cond_37

    iget-object v6, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v6}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 555
    iget-object v4, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    .line 556
    .local v4, oldValue:Ljava/lang/Object;
    iput-object p2, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    goto :goto_21

    .line 559
    .end local v4           #oldValue:Ljava/lang/Object;
    :cond_37
    iget-object v0, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 545
    goto :goto_a
.end method

.method protected sremove(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 14
    .parameter "key"
    .parameter "hash"

    .prologue
    const/4 v8, 0x0

    .line 697
    iget-object v7, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->table:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 698
    .local v7, tab:[Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    array-length v9, v7

    add-int/lit8 v9, v9, -0x1

    and-int v4, p2, v9

    .line 699
    .local v4, index:I
    aget-object v1, v7, v4

    .line 701
    .local v1, first:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    move-object v0, v1

    .local v0, e:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :goto_b
    if-nez v0, :cond_f

    move-object v5, v8

    .line 715
    :goto_e
    return-object v5

    .line 702
    :cond_f
    iget v9, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    if-ne v9, p2, :cond_40

    iget-object v9, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v9}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_40

    .line 703
    iget-object v5, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    .line 704
    .local v5, oldValue:Ljava/lang/Object;
    iput-object v8, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    .line 705
    iget v8, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->count:I

    .line 706
    iget-object v2, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    .line 707
    .local v2, head:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    move-object v6, v1

    .local v6, p:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    move-object v3, v2

    .end local v2           #head:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    .local v3, head:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :goto_29
    if-ne v6, v0, :cond_31

    .line 710
    aput-object v3, v7, v4

    .line 711
    invoke-virtual {p0, v3}, Lorg/dom4j/tree/ConcurrentReaderHashMap;->recordModification(Ljava/lang/Object;)V

    goto :goto_e

    .line 708
    :cond_31
    new-instance v2, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    iget v8, v6, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->hash:I

    iget-object v9, v6, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->key:Ljava/lang/Object;

    iget-object v10, v6, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->value:Ljava/lang/Object;

    invoke-direct {v2, v8, v9, v10, v3}, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;)V

    .line 707
    .end local v3           #head:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    .restart local v2       #head:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    iget-object v6, v6, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    move-object v3, v2

    .end local v2           #head:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    .restart local v3       #head:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    goto :goto_29

    .line 701
    .end local v3           #head:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    .end local v5           #oldValue:Ljava/lang/Object;
    .end local v6           #p:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;
    :cond_40
    iget-object v0, v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;->next:Lorg/dom4j/tree/ConcurrentReaderHashMap$Entry;

    goto :goto_b
.end method

.method public values()Ljava/util/Collection;
    .registers 3

    .prologue
    .line 911
    iget-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->values:Ljava/util/Collection;

    .line 912
    .local v0, vs:Ljava/util/Collection;
    if-eqz v0, :cond_5

    .end local v0           #vs:Ljava/util/Collection;
    :goto_4
    return-object v0

    .restart local v0       #vs:Ljava/util/Collection;
    :cond_5
    new-instance v0, Lorg/dom4j/tree/ConcurrentReaderHashMap$Values;

    .end local v0           #vs:Ljava/util/Collection;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/dom4j/tree/ConcurrentReaderHashMap$Values;-><init>(Lorg/dom4j/tree/ConcurrentReaderHashMap;Lorg/dom4j/tree/ConcurrentReaderHashMap$Values;)V

    iput-object v0, p0, Lorg/dom4j/tree/ConcurrentReaderHashMap;->values:Ljava/util/Collection;

    goto :goto_4
.end method
