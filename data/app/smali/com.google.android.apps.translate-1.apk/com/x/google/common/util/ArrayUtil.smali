.class public Lcom/x/google/common/util/ArrayUtil;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asVector([Ljava/lang/Object;)Ljava/util/Vector;
    .registers 4

    new-instance v1, Ljava/util/Vector;

    array-length v0, p0

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    const/4 v0, 0x0

    :goto_7
    array-length v2, p0

    if-ge v0, v2, :cond_12

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_12
    return-object v1
.end method

.method public static binarySearch([JIIJ)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    if-le p1, p2, :cond_25

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is greater than toIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    if-gez p1, :cond_46

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is less than 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    array-length v0, p0

    if-le p2, v0, :cond_8d

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is greater than a.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_6d
    if-ge v2, v1, :cond_89

    add-int v0, v2, v1

    div-int/lit8 v0, v0, 0x2

    aget-wide v3, p0, v0

    cmp-long v3, p3, v3

    if-gez v3, :cond_7d

    move v1, v2

    :goto_7a
    move v2, v1

    move v1, v0

    goto :goto_6d

    :cond_7d
    aget-wide v2, p0, v0

    cmp-long v2, p3, v2

    if-lez v2, :cond_8c

    add-int/lit8 v0, v0, 0x1

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_7a

    :cond_89
    add-int/lit8 v0, v2, 0x1

    neg-int v0, v0

    :cond_8c
    return v0

    :cond_8d
    move v1, p2

    move v2, p1

    goto :goto_6d
.end method

.method public static binarySearch([Ljava/lang/Object;IILjava/lang/Object;Lcom/x/google/common/util/Comparator;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    if-le p1, p2, :cond_25

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is greater than toIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    if-gez p1, :cond_46

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is less than 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    array-length v0, p0

    if-le p2, v0, :cond_8b

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is greater than array.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_6d
    if-ge v2, v1, :cond_87

    add-int v0, v2, v1

    div-int/lit8 v0, v0, 0x2

    aget-object v3, p0, v0

    invoke-interface {p4, p3, v3}, Lcom/x/google/common/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_7f

    move v1, v2

    :goto_7c
    move v2, v1

    move v1, v0

    goto :goto_6d

    :cond_7f
    if-lez v3, :cond_8a

    add-int/lit8 v0, v0, 0x1

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_7c

    :cond_87
    add-int/lit8 v0, v2, 0x1

    neg-int v0, v0

    :cond_8a
    return v0

    :cond_8b
    move v1, p2

    move v2, p1

    goto :goto_6d
.end method

.method public static binarySearch([Ljava/lang/Object;Ljava/lang/Object;Lcom/x/google/common/util/Comparator;)I
    .registers 5

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/x/google/common/util/ArrayUtil;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Lcom/x/google/common/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public static copyIntoVector(Ljava/util/Vector;ILjava/util/Vector;)V
    .registers 6

    monitor-enter p2

    move v0, p1

    :goto_2
    :try_start_2
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    sub-int v2, v0, p1

    invoke-virtual {p2, v1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_14
    monitor-exit p2

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p2
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p0, [B

    if-eqz v0, :cond_15

    instance-of v0, p1, [B

    if-eqz v0, :cond_15

    check-cast p0, [B

    check-cast p0, [B

    check-cast p1, [B

    check-cast p1, [B

    invoke-static {p0, p1}, Lcom/x/google/common/util/ArrayUtil;->equals([B[B)Z

    move-result v0

    :goto_14
    return v0

    :cond_15
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_2a

    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_2a

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/x/google/common/util/ArrayUtil;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_14

    :cond_2a
    instance-of v0, p0, Ljava/util/Vector;

    if-eqz v0, :cond_3b

    instance-of v0, p1, Ljava/util/Vector;

    if-eqz v0, :cond_3b

    check-cast p0, Ljava/util/Vector;

    check-cast p1, Ljava/util/Vector;

    invoke-static {p0, p1}, Lcom/x/google/common/util/ArrayUtil;->equals(Ljava/util/Vector;Ljava/util/Vector;)Z

    move-result v0

    goto :goto_14

    :cond_3b
    if-nez p0, :cond_43

    if-nez p1, :cond_41

    const/4 v0, 0x1

    goto :goto_14

    :cond_41
    const/4 v0, 0x0

    goto :goto_14

    :cond_43
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_14
.end method

.method public static equals(Ljava/util/Vector;Ljava/util/Vector;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    move v0, v1

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-eq v2, v3, :cond_17

    move v0, v1

    goto :goto_4

    :cond_17
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    move v2, v1

    :goto_1c
    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/x/google/common/util/ArrayUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    move v0, v1

    goto :goto_4

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c
.end method

.method public static equals([B[B)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_6

    move v1, v2

    :cond_5
    :goto_5
    return v1

    :cond_6
    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    array-length v0, p0

    array-length v3, p1

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_f
    array-length v3, p0

    if-ge v0, v3, :cond_1b

    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-ne v3, v4, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1b
    move v1, v2

    goto :goto_5
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_6

    move v1, v2

    :cond_5
    :goto_5
    return v1

    :cond_6
    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    array-length v0, p0

    array-length v3, p1

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_f
    array-length v3, p0

    if-ge v0, v3, :cond_1f

    aget-object v3, p0, v0

    aget-object v4, p1, v0

    invoke-static {v3, v4}, Lcom/x/google/common/util/ArrayUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1f
    move v1, v2

    goto :goto_5
.end method

.method public static fill([II)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/x/google/common/util/ArrayUtil;->fill([IIII)V

    return-void
.end method

.method public static fill([IIII)V
    .registers 5

    add-int v0, p2, p3

    :goto_2
    if-ge p2, v0, :cond_9

    aput p1, p0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_9
    return-void
.end method

.method public static fill([ZZ)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_9

    aput-boolean p1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_9
    return-void
.end method

.method public static getNthElement([JI)J
    .registers 16

    array-length v2, p0

    if-ge p1, v2, :cond_5

    if-gez p1, :cond_22

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " invalid for: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    new-array v1, v2, [J

    new-array v0, v2, [J

    :goto_2b
    invoke-virtual {v8}, Ljava/util/Random;->nextInt()I

    move-result v3

    rem-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    aget-wide v9, p0, v3

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    move v7, v3

    move v3, v4

    :goto_3c
    if-ge v7, v2, :cond_61

    aget-wide v11, p0, v7

    cmp-long v4, v11, v9

    if-gez v4, :cond_4f

    add-int/lit8 v4, v5, 0x1

    aput-wide v11, v1, v5

    move v5, v6

    :goto_49
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v5

    move v5, v4

    goto :goto_3c

    :cond_4f
    cmp-long v4, v11, v9

    if-lez v4, :cond_5b

    add-int/lit8 v4, v3, 0x1

    aput-wide v11, v0, v3

    move v3, v4

    move v4, v5

    move v5, v6

    goto :goto_49

    :cond_5b
    add-int/lit8 v4, v6, 0x1

    move v13, v5

    move v5, v4

    move v4, v13

    goto :goto_49

    :cond_61
    if-ge p1, v5, :cond_69

    new-array v2, v5, [J

    move-object p0, v1

    move-object v1, v2

    move v2, v5

    goto :goto_2b

    :cond_69
    add-int v2, v5, v6

    if-ge p1, v2, :cond_6e

    return-wide v9

    :cond_6e
    new-array v2, v3, [J

    add-int v4, v5, v6

    sub-int/2addr p1, v4

    move-object p0, v0

    move-object v0, v2

    move v2, v3

    goto :goto_2b
.end method

.method public static indexOf([II)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/x/google/common/util/ArrayUtil;->indexOf([III)I

    move-result v0

    return v0
.end method

.method public static indexOf([III)I
    .registers 4

    :goto_0
    array-length v0, p0

    if-ge p2, v0, :cond_b

    aget v0, p0, p2

    if-ne v0, p1, :cond_8

    :goto_7
    return p2

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_b
    const/4 p2, -0x1

    goto :goto_7
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/x/google/common/util/ArrayUtil;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .registers 4

    :goto_0
    array-length v0, p0

    if-ge p2, v0, :cond_f

    aget-object v0, p0, p2

    invoke-static {p1, v0}, Lcom/x/google/common/util/ArrayUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_b
    return p2

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_f
    const/4 p2, -0x1

    goto :goto_b
.end method

.method public static indexOf([ZZ)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/x/google/common/util/ArrayUtil;->indexOf([ZZI)I

    move-result v0

    return v0
.end method

.method public static indexOf([ZZI)I
    .registers 4

    :goto_0
    array-length v0, p0

    if-ge p2, v0, :cond_b

    aget-boolean v0, p0, p2

    if-ne v0, p1, :cond_8

    :goto_7
    return p2

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_b
    const/4 p2, -0x1

    goto :goto_7
.end method

.method public static indexOfIgnoreCase([Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5

    const/4 v0, -0x1

    if-nez p1, :cond_7

    move p2, v0

    :goto_4
    return p2

    :cond_5
    add-int/lit8 p2, p2, 0x1

    :cond_7
    array-length v1, p0

    if-ge p2, v1, :cond_13

    aget-object v1, p0, p2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_13
    move p2, v0

    goto :goto_4
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lcom/x/google/common/util/ArrayUtil;->lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .registers 5

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_7
    if-ltz v0, :cond_15

    aget-object v1, p0, v0

    invoke-static {p1, v1}, Lcom/x/google/common/util/ArrayUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    :goto_11
    return v0

    :cond_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_15
    const/4 v0, -0x1

    goto :goto_11
.end method

.method public static msort([Ljava/lang/Object;Lcom/x/google/common/util/Comparator;)V
    .registers 5

    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_c

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, v2, v0, v1}, Lcom/x/google/common/util/ArrayUtil;->msort([Ljava/lang/Object;Lcom/x/google/common/util/Comparator;II[Ljava/lang/Object;)V

    :cond_c
    return-void
.end method

.method public static msort([Ljava/lang/Object;Lcom/x/google/common/util/Comparator;II[Ljava/lang/Object;)V
    .registers 14

    const/4 v0, 0x0

    sub-int v1, p3, p2

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    add-int v6, v1, p2

    add-int/lit8 v1, p2, 0x1

    if-ge v1, v6, :cond_12

    add-int/lit8 v1, v6, -0x1

    invoke-static {p0, p1, p2, v1, p4}, Lcom/x/google/common/util/ArrayUtil;->msort([Ljava/lang/Object;Lcom/x/google/common/util/Comparator;II[Ljava/lang/Object;)V

    :cond_12
    if-ge v6, p3, :cond_17

    invoke-static {p0, p1, v6, p3, p4}, Lcom/x/google/common/util/ArrayUtil;->msort([Ljava/lang/Object;Lcom/x/google/common/util/Comparator;II[Ljava/lang/Object;)V

    :cond_17
    move v1, p2

    :goto_18
    if-ge v1, v6, :cond_28

    aget-object v2, p0, v1

    aget-object v3, p0, v6

    invoke-interface {p1, v2, v3}, Lcom/x/google/common/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_28

    add-int/lit8 p2, v1, 0x1

    move v1, p2

    goto :goto_18

    :cond_28
    add-int/lit8 v8, p3, 0x1

    move v2, v0

    move v5, v6

    move v3, v1

    :goto_2d
    if-ge v3, v6, :cond_6a

    if-ge v5, v8, :cond_6a

    aget-object v4, p0, v3

    aget-object v7, p0, v5

    invoke-interface {p1, v4, v7}, Lcom/x/google/common/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_46

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v7, v3, 0x1

    aget-object v3, p0, v3

    aput-object v3, p4, v2

    move v2, v4

    move v3, v7

    goto :goto_2d

    :cond_46
    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v7, v5, 0x1

    aget-object v5, p0, v5

    aput-object v5, p4, v2

    move v2, v4

    move v5, v7

    goto :goto_2d

    :goto_51
    if-ge v4, v6, :cond_5e

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v5, v4, 0x1

    aget-object v4, p0, v4

    aput-object v4, p4, v2

    move v2, v3

    move v4, v5

    goto :goto_51

    :cond_5e
    :goto_5e
    if-ge v0, v2, :cond_69

    aget-object v3, p4, v0

    aput-object v3, p0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    :cond_69
    return-void

    :cond_6a
    move v4, v3

    goto :goto_51
.end method

.method public static qsort([I)V
    .registers 2

    array-length v0, p0

    invoke-static {p0, v0}, Lcom/x/google/common/util/ArrayUtil;->qsort([II)V

    return-void
.end method

.method public static qsort([II)V
    .registers 4

    const/4 v0, 0x1

    if-gt p1, v0, :cond_4

    :goto_3
    return-void

    :cond_4
    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    invoke-static {p0, v0, v1}, Lcom/x/google/common/util/ArrayUtil;->qsort([III)V

    goto :goto_3
.end method

.method public static qsort([III)V
    .registers 8

    add-int v0, p1, p2

    div-int/lit8 v0, v0, 0x2

    aget v2, p0, v0

    move v0, p2

    move v1, p1

    :goto_8
    aget v3, p0, v1

    if-ge v3, v2, :cond_f

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_f
    :goto_f
    aget v3, p0, v0

    if-ge v2, v3, :cond_16

    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_16
    if-lt v1, v0, :cond_2b

    add-int/lit8 v2, v1, -0x1

    if-ge p1, v2, :cond_21

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, p1, v1}, Lcom/x/google/common/util/ArrayUtil;->qsort([III)V

    :cond_21
    add-int/lit8 v1, v0, 0x1

    if-ge v1, p2, :cond_2a

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0, p2}, Lcom/x/google/common/util/ArrayUtil;->qsort([III)V

    :cond_2a
    return-void

    :cond_2b
    aget v3, p0, v1

    aget v4, p0, v0

    aput v4, p0, v1

    aput v3, p0, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_8
.end method

.method public static qsort([Ljava/lang/Object;Lcom/x/google/common/util/Comparator;)V
    .registers 4

    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_a

    const/4 v1, 0x0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, v1, v0}, Lcom/x/google/common/util/ArrayUtil;->qsort([Ljava/lang/Object;Lcom/x/google/common/util/Comparator;II)V

    :cond_a
    return-void
.end method

.method public static qsort([Ljava/lang/Object;Lcom/x/google/common/util/Comparator;II)V
    .registers 9

    add-int v0, p2, p3

    div-int/lit8 v0, v0, 0x2

    aget-object v2, p0, v0

    move v0, p3

    move v1, p2

    :goto_8
    aget-object v3, p0, v1

    invoke-interface {p1, v3, v2}, Lcom/x/google/common/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_13

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_13
    :goto_13
    aget-object v3, p0, v0

    invoke-interface {p1, v2, v3}, Lcom/x/google/common/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1e

    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_1e
    if-lt v1, v0, :cond_33

    add-int/lit8 v2, v1, -0x1

    if-ge p2, v2, :cond_29

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, p1, p2, v1}, Lcom/x/google/common/util/ArrayUtil;->qsort([Ljava/lang/Object;Lcom/x/google/common/util/Comparator;II)V

    :cond_29
    add-int/lit8 v1, v0, 0x1

    if-ge v1, p3, :cond_32

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, p1, v0, p3}, Lcom/x/google/common/util/ArrayUtil;->qsort([Ljava/lang/Object;Lcom/x/google/common/util/Comparator;II)V

    :cond_32
    return-void

    :cond_33
    aget-object v3, p0, v1

    aget-object v4, p0, v0

    aput-object v4, p0, v1

    aput-object v3, p0, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_8
.end method

.method public static resize([II)[I
    .registers 5

    const/4 v2, 0x0

    new-array v0, p1, [I

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static resize([Ljava/lang/String;I)[Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    new-array v0, p1, [Ljava/lang/String;

    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static sum([I)I
    .registers 3

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/x/google/common/util/ArrayUtil;->sum([III)I

    move-result v0

    return v0
.end method

.method public static sum([III)I
    .registers 6

    const/4 v0, 0x0

    add-int v1, p1, p2

    :goto_3
    if-ge p1, v1, :cond_b

    aget v2, p0, p1

    add-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_b
    return v0
.end method
