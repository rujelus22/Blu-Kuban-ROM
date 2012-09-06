.class Ldbxyzptlk/v/e;
.super Ljava/util/AbstractMap;
.source "panda.py"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;


# instance fields
.field final a:Ldbxyzptlk/v/r;

.field final b:I

.field final c:I

.field final d:[Ldbxyzptlk/v/m;

.field e:Ljava/util/Set;

.field f:Ljava/util/Collection;

.field g:Ljava/util/Set;


# direct methods
.method constructor <init>(Ldbxyzptlk/v/r;Ldbxyzptlk/v/c;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x4000

    const/high16 v0, 0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 621
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 622
    invoke-virtual {p2}, Ldbxyzptlk/v/c;->b()I

    move-result v1

    .line 623
    invoke-virtual {p2}, Ldbxyzptlk/v/c;->a()I

    move-result v3

    .line 625
    if-le v1, v0, :cond_5e

    :goto_13
    move v6, v5

    move v1, v4

    .line 632
    :goto_15
    if-ge v6, v0, :cond_1e

    .line 633
    add-int/lit8 v7, v1, 0x1

    .line 634
    shl-int/lit8 v1, v6, 0x1

    move v6, v1

    move v1, v7

    goto :goto_15

    .line 636
    :cond_1e
    rsub-int/lit8 v0, v1, 0x20

    iput v0, p0, Ldbxyzptlk/v/e;->c:I

    .line 637
    add-int/lit8 v0, v6, -0x1

    iput v0, p0, Ldbxyzptlk/v/e;->b:I

    .line 638
    invoke-virtual {p0, v6}, Ldbxyzptlk/v/e;->a(I)[Ldbxyzptlk/v/m;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/v/e;->d:[Ldbxyzptlk/v/m;

    .line 640
    if-le v3, v2, :cond_5c

    move v0, v2

    .line 644
    :goto_2f
    div-int v1, v0, v6

    .line 645
    mul-int v2, v1, v6

    if-ge v2, v0, :cond_5a

    .line 646
    add-int/lit8 v0, v1, 0x1

    :goto_37
    move v1, v5

    .line 650
    :goto_38
    if-ge v1, v0, :cond_3d

    .line 651
    shl-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_3d
    move v0, v4

    .line 653
    :goto_3e
    iget-object v2, p0, Ldbxyzptlk/v/e;->d:[Ldbxyzptlk/v/m;

    array-length v2, v2

    if-ge v0, v2, :cond_4f

    .line 654
    iget-object v2, p0, Ldbxyzptlk/v/e;->d:[Ldbxyzptlk/v/m;

    new-instance v3, Ldbxyzptlk/v/m;

    invoke-direct {v3, p0, v1}, Ldbxyzptlk/v/m;-><init>(Ldbxyzptlk/v/e;I)V

    aput-object v3, v2, v0

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 657
    :cond_4f
    iput-object p1, p0, Ldbxyzptlk/v/e;->a:Ldbxyzptlk/v/r;

    .line 659
    new-instance v0, Ldbxyzptlk/v/j;

    invoke-direct {v0, p0}, Ldbxyzptlk/v/j;-><init>(Ldbxyzptlk/v/e;)V

    invoke-interface {p1, v0}, Ldbxyzptlk/v/r;->a(Ldbxyzptlk/v/q;)V

    .line 660
    return-void

    :cond_5a
    move v0, v1

    goto :goto_37

    :cond_5c
    move v0, v3

    goto :goto_2f

    :cond_5e
    move v0, v1

    goto :goto_13
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 11
    .parameter

    .prologue
    const/high16 v5, 0x4000

    const/high16 v1, 0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1991
    :try_start_6
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v6

    .line 1992
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 1993
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/v/r;

    .line 1995
    if-le v2, v1, :cond_80

    :goto_16
    move v7, v4

    move v2, v3

    .line 2002
    :goto_18
    if-ge v7, v1, :cond_21

    .line 2003
    add-int/lit8 v8, v2, 0x1

    .line 2004
    shl-int/lit8 v2, v7, 0x1

    move v7, v2

    move v2, v8

    goto :goto_18

    .line 2006
    :cond_21
    sget-object v1, Ldbxyzptlk/v/h;->a:Ljava/lang/reflect/Field;

    rsub-int/lit8 v2, v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2007
    sget-object v1, Ldbxyzptlk/v/h;->b:Ljava/lang/reflect/Field;

    add-int/lit8 v2, v7, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2008
    sget-object v1, Ldbxyzptlk/v/h;->c:Ljava/lang/reflect/Field;

    invoke-virtual {p0, v7}, Ldbxyzptlk/v/e;->a(I)[Ldbxyzptlk/v/m;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2010
    if-le v6, v5, :cond_7e

    move v2, v5

    .line 2014
    :goto_43
    div-int v1, v2, v7

    .line 2015
    mul-int v5, v1, v7

    if-ge v5, v2, :cond_4b

    .line 2016
    add-int/lit8 v1, v1, 0x1

    :cond_4b
    move v2, v4

    .line 2020
    :goto_4c
    if-ge v2, v1, :cond_51

    .line 2021
    shl-int/lit8 v2, v2, 0x1

    goto :goto_4c

    :cond_51
    move v1, v3

    .line 2023
    :goto_52
    iget-object v3, p0, Ldbxyzptlk/v/e;->d:[Ldbxyzptlk/v/m;

    array-length v3, v3

    if-ge v1, v3, :cond_63

    .line 2024
    iget-object v3, p0, Ldbxyzptlk/v/e;->d:[Ldbxyzptlk/v/m;

    new-instance v4, Ldbxyzptlk/v/m;

    invoke-direct {v4, p0, v2}, Ldbxyzptlk/v/m;-><init>(Ldbxyzptlk/v/e;I)V

    aput-object v4, v3, v1

    .line 2023
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 2027
    :cond_63
    sget-object v1, Ldbxyzptlk/v/h;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2030
    :goto_68
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 2031
    if-nez v0, :cond_6f

    .line 2040
    return-void

    .line 2034
    :cond_6f
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 2035
    invoke-virtual {p0, v0, v1}, Ldbxyzptlk/v/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_76
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_76} :catch_77

    goto :goto_68

    .line 2037
    :catch_77
    move-exception v0

    .line 2038
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

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
    .line 1954
    invoke-virtual {p0}, Ldbxyzptlk/v/e;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1955
    iget-object v0, p0, Ldbxyzptlk/v/e;->d:[Ldbxyzptlk/v/m;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1956
    iget-object v0, p0, Ldbxyzptlk/v/e;->a:Ldbxyzptlk/v/r;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1957
    invoke-virtual {p0}, Ldbxyzptlk/v/e;->entrySet()Ljava/util/Set;

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

    .line 1958
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1959
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1a

    .line 1961
    :cond_35
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1962
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 663
    iget-object v0, p0, Ldbxyzptlk/v/e;->a:Ldbxyzptlk/v/r;

    invoke-interface {v0, p1}, Ldbxyzptlk/v/r;->b(Ljava/lang/Object;)I

    move-result v0

    .line 664
    invoke-static {v0}, Ldbxyzptlk/v/b;->a(I)I

    move-result v0

    return v0
.end method

.method final a(I)[Ldbxyzptlk/v/m;
    .registers 3
    .parameter

    .prologue
    .line 702
    const-class v0, Ldbxyzptlk/v/m;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldbxyzptlk/v/m;

    check-cast v0, [Ldbxyzptlk/v/m;

    return-object v0
.end method

.method final b(I)Ldbxyzptlk/v/m;
    .registers 5
    .parameter

    .prologue
    .line 715
    iget-object v0, p0, Ldbxyzptlk/v/e;->d:[Ldbxyzptlk/v/m;

    iget v1, p0, Ldbxyzptlk/v/e;->c:I

    ushr-int v1, p1, v1

    iget v2, p0, Ldbxyzptlk/v/e;->b:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public clear()V
    .registers 5

    .prologue
    .line 1588
    iget-object v1, p0, Ldbxyzptlk/v/e;->d:[Ldbxyzptlk/v/m;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    .line 1589
    invoke-virtual {v3}, Ldbxyzptlk/v/m;->b()V

    .line 1588
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1591
    :cond_e
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 1371
    if-nez p1, :cond_a

    .line 1372
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1374
    :cond_a
    invoke-virtual {p0, p1}, Ldbxyzptlk/v/e;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1375
    invoke-virtual {p0, v0}, Ldbxyzptlk/v/e;->b(I)Ldbxyzptlk/v/m;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ldbxyzptlk/v/m;->c(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1393
    if-nez p1, :cond_c

    .line 1394
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1399
    :cond_c
    iget-object v5, p0, Ldbxyzptlk/v/e;->d:[Ldbxyzptlk/v/m;

    .line 1400
    array-length v0, v5

    new-array v6, v0, [I

    move v4, v1

    .line 1403
    :goto_12
    const/4 v0, 0x2

    if-ge v4, v0, :cond_4f

    move v0, v1

    move v2, v1

    .line 1405
    :goto_17
    array-length v7, v5

    if-ge v0, v7, :cond_31

    .line 1407
    aget-object v7, v5, v0

    iget v7, v7, Ldbxyzptlk/v/m;->a:I

    .line 1408
    aget-object v7, v5, v0

    iget v7, v7, Ldbxyzptlk/v/m;->b:I

    aput v7, v6, v0

    add-int/2addr v2, v7

    .line 1409
    aget-object v7, v5, v0

    invoke-virtual {v7, p1}, Ldbxyzptlk/v/m;->a(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 1445
    :goto_2d
    return v3

    .line 1405
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 1414
    :cond_31
    if-eqz v2, :cond_87

    move v0, v1

    .line 1415
    :goto_34
    array-length v2, v5

    if-ge v0, v2, :cond_87

    .line 1417
    aget-object v2, v5, v0

    iget v2, v2, Ldbxyzptlk/v/m;->a:I

    .line 1418
    aget v2, v6, v0

    aget-object v7, v5, v0

    iget v7, v7, Ldbxyzptlk/v/m;->b:I

    if-eq v2, v7, :cond_48

    move v0, v1

    .line 1424
    :goto_44
    if-eqz v0, :cond_4b

    move v3, v1

    .line 1425
    goto :goto_2d

    .line 1415
    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 1403
    :cond_4b
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_12

    .line 1429
    :cond_4f
    array-length v2, v5

    move v0, v1

    :goto_51
    if-ge v0, v2, :cond_5b

    aget-object v4, v5, v0

    .line 1430
    invoke-virtual {v4}, Ldbxyzptlk/v/m;->lock()V

    .line 1429
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 1434
    :cond_5b
    :try_start_5b
    array-length v2, v5

    move v0, v1

    :goto_5d
    if-ge v0, v2, :cond_85

    aget-object v4, v5, v0

    .line 1435
    invoke-virtual {v4, p1}, Ldbxyzptlk/v/m;->a(Ljava/lang/Object;)Z
    :try_end_64
    .catchall {:try_start_5b .. :try_end_64} :catchall_76

    move-result v4

    if-eqz v4, :cond_73

    move v0, v3

    .line 1441
    :goto_68
    array-length v2, v5

    :goto_69
    if-ge v1, v2, :cond_83

    aget-object v3, v5, v1

    .line 1442
    invoke-virtual {v3}, Ldbxyzptlk/v/m;->unlock()V

    .line 1441
    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    .line 1434
    :cond_73
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 1441
    :catchall_76
    move-exception v0

    array-length v2, v5

    :goto_78
    if-ge v1, v2, :cond_82

    aget-object v3, v5, v1

    .line 1442
    invoke-virtual {v3}, Ldbxyzptlk/v/m;->unlock()V

    .line 1441
    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    :cond_82
    throw v0

    :cond_83
    move v3, v0

    .line 1445
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
    .line 1659
    iget-object v0, p0, Ldbxyzptlk/v/e;->g:Ljava/util/Set;

    .line 1660
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Ldbxyzptlk/v/g;

    invoke-direct {v0, p0}, Ldbxyzptlk/v/g;-><init>(Ldbxyzptlk/v/e;)V

    iput-object v0, p0, Ldbxyzptlk/v/e;->g:Ljava/util/Set;

    goto :goto_4
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 1351
    if-nez p1, :cond_a

    .line 1352
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1354
    :cond_a
    invoke-virtual {p0, p1}, Ldbxyzptlk/v/e;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1355
    invoke-virtual {p0, v0}, Ldbxyzptlk/v/e;->b(I)Ldbxyzptlk/v/m;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ldbxyzptlk/v/m;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 1251
    iget-object v3, p0, Ldbxyzptlk/v/e;->d:[Ldbxyzptlk/v/m;

    .line 1260
    array-length v0, v3

    new-array v4, v0, [I

    move v0, v1

    move v2, v1

    .line 1262
    :goto_8
    array-length v5, v3

    if-ge v0, v5, :cond_1c

    .line 1263
    aget-object v5, v3, v0

    iget v5, v5, Ldbxyzptlk/v/m;->a:I

    if-eqz v5, :cond_12

    .line 1279
    :cond_11
    :goto_11
    return v1

    .line 1266
    :cond_12
    aget-object v5, v3, v0

    iget v5, v5, Ldbxyzptlk/v/m;->b:I

    aput v5, v4, v0

    add-int/2addr v2, v5

    .line 1262
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1272
    :cond_1c
    if-eqz v2, :cond_33

    move v0, v1

    .line 1273
    :goto_1f
    array-length v2, v3

    if-ge v0, v2, :cond_33

    .line 1274
    aget-object v2, v3, v0

    iget v2, v2, Ldbxyzptlk/v/m;->a:I

    if-nez v2, :cond_11

    aget v2, v4, v0

    aget-object v5, v3, v0

    iget v5, v5, Ldbxyzptlk/v/m;->b:I

    if-ne v2, v5, :cond_11

    .line 1273
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 1279
    :cond_33
    const/4 v1, 0x1

    goto :goto_11
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 1612
    iget-object v0, p0, Ldbxyzptlk/v/e;->e:Ljava/util/Set;

    .line 1613
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Ldbxyzptlk/v/l;

    invoke-direct {v0, p0}, Ldbxyzptlk/v/l;-><init>(Ldbxyzptlk/v/e;)V

    iput-object v0, p0, Ldbxyzptlk/v/e;->e:Ljava/util/Set;

    goto :goto_4
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1466
    if-nez p1, :cond_a

    .line 1467
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1469
    :cond_a
    if-nez p2, :cond_14

    .line 1470
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1472
    :cond_14
    invoke-virtual {p0, p1}, Ldbxyzptlk/v/e;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1473
    invoke-virtual {p0, v0}, Ldbxyzptlk/v/e;->b(I)Ldbxyzptlk/v/m;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Ldbxyzptlk/v/m;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 5
    .parameter

    .prologue
    .line 1505
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

    .line 1506
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ldbxyzptlk/v/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 1508
    :cond_20
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1485
    if-nez p1, :cond_a

    .line 1486
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1488
    :cond_a
    if-nez p2, :cond_14

    .line 1489
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1491
    :cond_14
    invoke-virtual {p0, p1}, Ldbxyzptlk/v/e;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1492
    invoke-virtual {p0, v0}, Ldbxyzptlk/v/e;->b(I)Ldbxyzptlk/v/m;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Ldbxyzptlk/v/m;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 1523
    if-nez p1, :cond_a

    .line 1524
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1526
    :cond_a
    invoke-virtual {p0, p1}, Ldbxyzptlk/v/e;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1527
    invoke-virtual {p0, v0}, Ldbxyzptlk/v/e;->b(I)Ldbxyzptlk/v/m;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ldbxyzptlk/v/m;->d(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1537
    if-nez p1, :cond_a

    .line 1538
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1540
    :cond_a
    invoke-virtual {p0, p1}, Ldbxyzptlk/v/e;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1541
    invoke-virtual {p0, v0}, Ldbxyzptlk/v/e;->b(I)Ldbxyzptlk/v/m;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Ldbxyzptlk/v/m;->b(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1573
    if-nez p1, :cond_a

    .line 1574
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1576
    :cond_a
    if-nez p2, :cond_14

    .line 1577
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1579
    :cond_14
    invoke-virtual {p0, p1}, Ldbxyzptlk/v/e;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1580
    invoke-virtual {p0, v0}, Ldbxyzptlk/v/e;->b(I)Ldbxyzptlk/v/m;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Ldbxyzptlk/v/m;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1551
    if-nez p1, :cond_a

    .line 1552
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1554
    :cond_a
    if-nez p2, :cond_14

    .line 1555
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "oldValue"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1557
    :cond_14
    if-nez p3, :cond_1e

    .line 1558
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "newValue"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1560
    :cond_1e
    invoke-virtual {p0, p1}, Ldbxyzptlk/v/e;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1561
    invoke-virtual {p0, v0}, Ldbxyzptlk/v/e;->b(I)Ldbxyzptlk/v/m;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Ldbxyzptlk/v/m;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 16

    .prologue
    .line 1291
    iget-object v7, p0, Ldbxyzptlk/v/e;->d:[Ldbxyzptlk/v/m;

    .line 1292
    const-wide/16 v3, 0x0

    .line 1293
    const-wide/16 v1, 0x0

    .line 1294
    array-length v0, v7

    new-array v8, v0, [I

    .line 1297
    const/4 v0, 0x0

    move v6, v0

    move-wide v11, v1

    move-wide v0, v11

    move-wide v13, v3

    move-wide v2, v13

    :goto_f
    const/4 v4, 0x2

    if-ge v6, v4, :cond_90

    .line 1298
    const-wide/16 v4, 0x0

    .line 1299
    const-wide/16 v2, 0x0

    .line 1300
    const/4 v1, 0x0

    .line 1301
    const/4 v0, 0x0

    :goto_18
    array-length v9, v7

    if-ge v0, v9, :cond_2b

    .line 1302
    aget-object v9, v7, v0

    iget v9, v9, Ldbxyzptlk/v/m;->a:I

    int-to-long v9, v9

    add-long/2addr v2, v9

    .line 1303
    aget-object v9, v7, v0

    iget v9, v9, Ldbxyzptlk/v/m;->b:I

    aput v9, v8, v0

    add-int/2addr v1, v9

    .line 1301
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 1305
    :cond_2b
    if-eqz v1, :cond_8e

    .line 1306
    const/4 v0, 0x0

    :goto_2e
    array-length v1, v7

    if-ge v0, v1, :cond_8e

    .line 1307
    aget-object v1, v7, v0

    iget v1, v1, Ldbxyzptlk/v/m;->a:I

    int-to-long v9, v1

    add-long/2addr v4, v9

    .line 1308
    aget v1, v8, v0

    aget-object v9, v7, v0

    iget v9, v9, Ldbxyzptlk/v/m;->b:I

    if-eq v1, v9, :cond_5b

    .line 1309
    const-wide/16 v4, -0x1

    move-wide v0, v4

    .line 1314
    :goto_42
    cmp-long v4, v0, v2

    if-nez v4, :cond_5e

    move-wide v11, v0

    move-wide v0, v2

    move-wide v2, v11

    .line 1318
    :goto_49
    cmp-long v2, v2, v0

    if-eqz v2, :cond_81

    .line 1319
    const-wide/16 v1, 0x0

    .line 1320
    array-length v3, v7

    const/4 v0, 0x0

    :goto_51
    if-ge v0, v3, :cond_62

    aget-object v4, v7, v0

    .line 1321
    invoke-virtual {v4}, Ldbxyzptlk/v/m;->lock()V

    .line 1320
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 1306
    :cond_5b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 1297
    :cond_5e
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_f

    .line 1323
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

    .line 1324
    iget v3, v3, Ldbxyzptlk/v/m;->a:I

    int-to-long v3, v3

    add-long/2addr v3, v0

    .line 1323
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v3

    goto :goto_68

    .line 1326
    :cond_75
    array-length v3, v7

    const/4 v2, 0x0

    :goto_77
    if-ge v2, v3, :cond_81

    aget-object v4, v7, v2

    .line 1327
    invoke-virtual {v4}, Ldbxyzptlk/v/m;->unlock()V

    .line 1326
    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    .line 1330
    :cond_81
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_8c

    .line 1331
    const v0, 0x7fffffff

    .line 1333
    :goto_8b
    return v0

    :cond_8c
    long-to-int v0, v0

    goto :goto_8b

    :cond_8e
    move-wide v0, v4

    goto :goto_42

    :cond_90
    move-wide v11, v0

    move-wide v0, v2

    move-wide v2, v11

    goto :goto_49
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 1636
    iget-object v0, p0, Ldbxyzptlk/v/e;->f:Ljava/util/Collection;

    .line 1637
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Ldbxyzptlk/v/o;

    invoke-direct {v0, p0}, Ldbxyzptlk/v/o;-><init>(Ldbxyzptlk/v/e;)V

    iput-object v0, p0, Ldbxyzptlk/v/e;->f:Ljava/util/Collection;

    goto :goto_4
.end method
