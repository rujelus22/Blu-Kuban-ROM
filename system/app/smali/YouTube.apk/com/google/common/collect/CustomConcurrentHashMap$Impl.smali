.class Lcom/google/common/collect/CustomConcurrentHashMap$Impl;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;


# static fields
.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_SEGMENTS:I = 0x10000

.field static final RETRIES_BEFORE_LOCK:I = 0x2

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field entrySet:Ljava/util/Set;

.field keySet:Ljava/util/Set;

.field final segmentMask:I

.field final segmentShift:I

.field final segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

.field final strategy:Lcom/google/common/collect/bk;

.field values:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/google/common/collect/bk;Lcom/google/common/collect/ay;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x1

    const/16 v1, 0x10

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 595
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 596
    iget v0, p2, Lcom/google/common/collect/ay;->b:I

    if-ne v0, v6, :cond_1f

    move v0, v1

    .line 597
    :goto_f
    iget v5, p2, Lcom/google/common/collect/ay;->a:I

    if-ne v5, v6, :cond_22

    .line 599
    :goto_13
    if-le v0, v2, :cond_16

    move v0, v2

    :cond_16
    move v2, v4

    move v5, v3

    .line 606
    :goto_18
    if-ge v2, v0, :cond_25

    .line 607
    add-int/lit8 v5, v5, 0x1

    .line 608
    shl-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 596
    :cond_1f
    iget v0, p2, Lcom/google/common/collect/ay;->b:I

    goto :goto_f

    .line 597
    :cond_22
    iget v1, p2, Lcom/google/common/collect/ay;->a:I

    goto :goto_13

    .line 610
    :cond_25
    rsub-int/lit8 v0, v5, 0x20

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentShift:I

    .line 611
    add-int/lit8 v0, v2, -0x1

    iput v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentMask:I

    .line 612
    invoke-virtual {p0, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->newSegmentArray(I)[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    .line 614
    const/high16 v0, 0x4000

    if-le v1, v0, :cond_65

    .line 615
    const/high16 v0, 0x4000

    .line 618
    :goto_39
    div-int v1, v0, v2

    .line 619
    mul-int/2addr v2, v1

    if-ge v2, v0, :cond_63

    .line 620
    add-int/lit8 v0, v1, 0x1

    :goto_40
    move v1, v4

    .line 624
    :goto_41
    if-ge v1, v0, :cond_46

    .line 625
    shl-int/lit8 v1, v1, 0x1

    goto :goto_41

    :cond_46
    move v0, v3

    .line 627
    :goto_47
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    array-length v2, v2

    if-ge v0, v2, :cond_58

    .line 628
    iget-object v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    new-instance v3, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    invoke-direct {v3, p0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;I)V

    aput-object v3, v2, v0

    .line 627
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 631
    :cond_58
    iput-object p1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/bk;

    .line 633
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$InternalsImpl;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$InternalsImpl;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;)V

    invoke-interface {p1, v0}, Lcom/google/common/collect/bk;->setInternals(Lcom/google/common/collect/bj;)V

    .line 634
    return-void

    :cond_63
    move v0, v1

    goto :goto_40

    :cond_65
    move v0, v1

    goto :goto_39
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 11
    .parameter

    .prologue
    const/high16 v5, 0x4000

    const/high16 v1, 0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1925
    :try_start_6
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v6

    .line 1926
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 1927
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/bk;

    .line 1929
    if-le v2, v1, :cond_80

    :goto_16
    move v7, v4

    move v2, v3

    .line 1936
    :goto_18
    if-ge v7, v1, :cond_21

    .line 1937
    add-int/lit8 v8, v2, 0x1

    .line 1938
    shl-int/lit8 v2, v7, 0x1

    move v7, v2

    move v2, v8

    goto :goto_18

    .line 1940
    :cond_21
    sget-object v1, Lcom/google/common/collect/bc;->a:Ljava/lang/reflect/Field;

    rsub-int/lit8 v2, v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1941
    sget-object v1, Lcom/google/common/collect/bc;->b:Ljava/lang/reflect/Field;

    add-int/lit8 v2, v7, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1942
    sget-object v1, Lcom/google/common/collect/bc;->c:Ljava/lang/reflect/Field;

    invoke-virtual {p0, v7}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->newSegmentArray(I)[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1944
    if-le v6, v5, :cond_7e

    move v2, v5

    .line 1948
    :goto_43
    div-int v1, v2, v7

    .line 1949
    mul-int v5, v1, v7

    if-ge v5, v2, :cond_4b

    .line 1950
    add-int/lit8 v1, v1, 0x1

    :cond_4b
    move v2, v4

    .line 1954
    :goto_4c
    if-ge v2, v1, :cond_51

    .line 1955
    shl-int/lit8 v2, v2, 0x1

    goto :goto_4c

    :cond_51
    move v1, v3

    .line 1957
    :goto_52
    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    array-length v3, v3

    if-ge v1, v3, :cond_63

    .line 1958
    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    new-instance v4, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    invoke-direct {v4, p0, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;I)V

    aput-object v4, v3, v1

    .line 1957
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 1961
    :cond_63
    sget-object v1, Lcom/google/common/collect/bc;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1964
    :goto_68
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 1965
    if-eqz v0, :cond_7d

    .line 1966
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 1969
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_75
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_75} :catch_76

    goto :goto_68

    .line 1971
    :catch_76
    move-exception v0

    .line 1972
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1973
    :cond_7d
    return-void

    :cond_7e
    move v2, v6

    goto :goto_43

    :cond_80
    move v1, v2

    goto :goto_16
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter

    .prologue
    .line 1888
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1889
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1890
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/bk;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1891
    invoke-virtual {p0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1892
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1893
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1a

    .line 1895
    :cond_35
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1896
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 5

    .prologue
    .line 1543
    iget-object v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    .line 1544
    invoke-virtual {v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->clear()V

    .line 1543
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1546
    :cond_e
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 1344
    if-nez p1, :cond_a

    .line 1345
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1347
    :cond_a
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1348
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1362
    if-nez p1, :cond_c

    .line 1363
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1368
    :cond_c
    iget-object v5, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    .line 1369
    array-length v0, v5

    new-array v6, v0, [I

    move v4, v1

    .line 1372
    :goto_12
    const/4 v0, 0x2

    if-ge v4, v0, :cond_4f

    move v0, v1

    move v2, v1

    .line 1374
    :goto_17
    array-length v7, v5

    if-ge v0, v7, :cond_31

    .line 1376
    aget-object v7, v5, v0

    iget v7, v7, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    .line 1377
    aget-object v7, v5, v0

    iget v7, v7, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    aput v7, v6, v0

    add-int/2addr v2, v7

    .line 1378
    aget-object v7, v5, v0

    invoke-virtual {v7, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->containsValue(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 1414
    :goto_2d
    return v3

    .line 1374
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 1383
    :cond_31
    if-eqz v2, :cond_87

    move v0, v1

    .line 1384
    :goto_34
    array-length v2, v5

    if-ge v0, v2, :cond_87

    .line 1386
    aget-object v2, v5, v0

    iget v2, v2, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    .line 1387
    aget v2, v6, v0

    aget-object v7, v5, v0

    iget v7, v7, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    if-eq v2, v7, :cond_48

    move v0, v1

    .line 1393
    :goto_44
    if-eqz v0, :cond_4b

    move v3, v1

    .line 1394
    goto :goto_2d

    .line 1384
    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 1372
    :cond_4b
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_12

    .line 1398
    :cond_4f
    array-length v2, v5

    move v0, v1

    :goto_51
    if-ge v0, v2, :cond_5b

    aget-object v4, v5, v0

    .line 1399
    invoke-virtual {v4}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1398
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 1403
    :cond_5b
    :try_start_5b
    array-length v2, v5

    move v0, v1

    :goto_5d
    if-ge v0, v2, :cond_85

    aget-object v4, v5, v0

    .line 1404
    invoke-virtual {v4, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->containsValue(Ljava/lang/Object;)Z
    :try_end_64
    .catchall {:try_start_5b .. :try_end_64} :catchall_76

    move-result v4

    if-eqz v4, :cond_73

    move v0, v3

    .line 1410
    :goto_68
    array-length v2, v5

    :goto_69
    if-ge v1, v2, :cond_83

    aget-object v3, v5, v1

    .line 1411
    invoke-virtual {v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .line 1410
    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    .line 1403
    :cond_73
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 1410
    :catchall_76
    move-exception v0

    array-length v2, v5

    :goto_78
    if-ge v1, v2, :cond_82

    aget-object v3, v5, v1

    .line 1411
    invoke-virtual {v3}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .line 1410
    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    :cond_82
    throw v0

    :cond_83
    move v3, v0

    .line 1414
    goto :goto_2d

    :cond_85
    move v0, v1

    goto :goto_68

    :cond_87
    move v0, v3

    goto :goto_44
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->entrySet:Ljava/util/Set;

    .line 1611
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/common/collect/bb;

    invoke-direct {v0, p0}, Lcom/google/common/collect/bb;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;)V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->entrySet:Ljava/util/Set;

    goto :goto_4
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 1327
    if-nez p1, :cond_a

    .line 1328
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1330
    :cond_a
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1331
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method hash(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->strategy:Lcom/google/common/collect/bk;

    invoke-interface {v0, p1}, Lcom/google/common/collect/bk;->hashKey(Ljava/lang/Object;)I

    move-result v0

    .line 638
    invoke-static {v0}, Lcom/google/common/collect/CustomConcurrentHashMap;->a(I)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 1228
    iget-object v3, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    .line 1238
    array-length v0, v3

    new-array v4, v0, [I

    move v0, v1

    move v2, v1

    .line 1240
    :goto_8
    array-length v5, v3

    if-ge v0, v5, :cond_1c

    .line 1241
    aget-object v5, v3, v0

    iget v5, v5, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v5, :cond_12

    .line 1258
    :cond_11
    :goto_11
    return v1

    .line 1244
    :cond_12
    aget-object v5, v3, v0

    iget v5, v5, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    aput v5, v4, v0

    add-int/2addr v2, v5

    .line 1240
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1250
    :cond_1c
    if-eqz v2, :cond_33

    move v0, v1

    .line 1251
    :goto_1f
    array-length v2, v3

    if-ge v0, v2, :cond_33

    .line 1252
    aget-object v2, v3, v0

    iget v2, v2, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    if-nez v2, :cond_11

    aget v2, v4, v0

    aget-object v5, v3, v0

    iget v5, v5, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    if-ne v2, v5, :cond_11

    .line 1251
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 1258
    :cond_33
    const/4 v1, 0x1

    goto :goto_11
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->keySet:Ljava/util/Set;

    .line 1567
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/common/collect/bf;

    invoke-direct {v0, p0}, Lcom/google/common/collect/bf;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;)V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->keySet:Ljava/util/Set;

    goto :goto_4
.end method

.method newSegmentArray(I)[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;
    .registers 3
    .parameter

    .prologue
    .line 677
    const-class v0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1431
    if-nez p1, :cond_a

    .line 1432
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1434
    :cond_a
    if-nez p2, :cond_14

    .line 1435
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1437
    :cond_14
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1438
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 5
    .parameter

    .prologue
    .line 1467
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1468
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 1470
    :cond_20
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1449
    if-nez p1, :cond_a

    .line 1450
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1452
    :cond_a
    if-nez p2, :cond_14

    .line 1453
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1455
    :cond_14
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1456
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 1482
    if-nez p1, :cond_a

    .line 1483
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1485
    :cond_a
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1486
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1495
    if-nez p1, :cond_a

    .line 1496
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1498
    :cond_a
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1499
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1529
    if-nez p1, :cond_a

    .line 1530
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1532
    :cond_a
    if-nez p2, :cond_14

    .line 1533
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1535
    :cond_14
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1536
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1508
    if-nez p1, :cond_a

    .line 1509
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1511
    :cond_a
    if-nez p2, :cond_14

    .line 1512
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "oldValue"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1514
    :cond_14
    if-nez p3, :cond_1e

    .line 1515
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "newValue"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1517
    :cond_1e
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1518
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method segmentFor(I)Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;
    .registers 5
    .parameter

    .prologue
    .line 689
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    iget v1, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentShift:I

    ushr-int v1, p1, v1

    iget v2, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segmentMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public size()I
    .registers 16

    .prologue
    .line 1269
    iget-object v7, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->segments:[Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;

    .line 1270
    const-wide/16 v3, 0x0

    .line 1271
    const-wide/16 v1, 0x0

    .line 1272
    array-length v0, v7

    new-array v8, v0, [I

    .line 1275
    const/4 v0, 0x0

    move v6, v0

    move-wide v11, v1

    move-wide v0, v11

    move-wide v13, v3

    move-wide v2, v13

    :goto_f
    const/4 v4, 0x2

    if-ge v6, v4, :cond_4d

    .line 1276
    const-wide/16 v4, 0x0

    .line 1277
    const-wide/16 v2, 0x0

    .line 1278
    const/4 v1, 0x0

    .line 1279
    const/4 v0, 0x0

    :goto_18
    array-length v9, v7

    if-ge v0, v9, :cond_2b

    .line 1280
    aget-object v9, v7, v0

    iget v9, v9, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    int-to-long v9, v9

    add-long/2addr v2, v9

    .line 1281
    aget-object v9, v7, v0

    iget v9, v9, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    aput v9, v8, v0

    add-int/2addr v1, v9

    .line 1279
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 1283
    :cond_2b
    if-eqz v1, :cond_8e

    .line 1284
    const/4 v0, 0x0

    :goto_2e
    array-length v1, v7

    if-ge v0, v1, :cond_8e

    .line 1285
    aget-object v1, v7, v0

    iget v1, v1, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    int-to-long v9, v1

    add-long/2addr v4, v9

    .line 1286
    aget v1, v8, v0

    aget-object v9, v7, v0

    iget v9, v9, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->modCount:I

    if-eq v1, v9, :cond_4a

    .line 1287
    const-wide/16 v4, -0x1

    move-wide v0, v4

    .line 1292
    :goto_42
    cmp-long v4, v0, v2

    if-eqz v4, :cond_4d

    .line 1293
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_f

    .line 1284
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_4d
    move-wide v11, v0

    move-wide v0, v2

    move-wide v2, v11

    .line 1296
    cmp-long v2, v2, v0

    if-eqz v2, :cond_81

    .line 1297
    const-wide/16 v1, 0x0

    .line 1298
    array-length v3, v7

    const/4 v0, 0x0

    :goto_58
    if-ge v0, v3, :cond_62

    aget-object v4, v7, v0

    .line 1299
    invoke-virtual {v4}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->lock()V

    .line 1298
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 1301
    :cond_62
    array-length v5, v7

    const/4 v0, 0x0

    move v11, v0

    move-wide v12, v1

    move-wide v0, v12

    move v2, v11

    :goto_68
    if-ge v2, v5, :cond_75

    aget-object v3, v7, v2

    .line 1302
    iget v3, v3, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->count:I

    int-to-long v3, v3

    add-long/2addr v3, v0

    .line 1301
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v3

    goto :goto_68

    .line 1304
    :cond_75
    array-length v3, v7

    const/4 v2, 0x0

    :goto_77
    if-ge v2, v3, :cond_81

    aget-object v4, v7, v2

    .line 1305
    invoke-virtual {v4}, Lcom/google/common/collect/CustomConcurrentHashMap$Impl$Segment;->unlock()V

    .line 1304
    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    .line 1308
    :cond_81
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_8c

    .line 1309
    const v0, 0x7fffffff

    .line 1311
    :goto_8b
    return v0

    :cond_8c
    long-to-int v0, v0

    goto :goto_8b

    :cond_8e
    move-wide v0, v4

    goto :goto_42
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->values:Ljava/util/Collection;

    .line 1589
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lcom/google/common/collect/bh;

    invoke-direct {v0, p0}, Lcom/google/common/collect/bh;-><init>(Lcom/google/common/collect/CustomConcurrentHashMap$Impl;)V

    iput-object v0, p0, Lcom/google/common/collect/CustomConcurrentHashMap$Impl;->values:Ljava/util/Collection;

    goto :goto_4
.end method
