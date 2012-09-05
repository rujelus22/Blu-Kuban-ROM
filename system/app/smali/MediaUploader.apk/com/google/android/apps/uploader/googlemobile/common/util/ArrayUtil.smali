.class public Lcom/google/android/apps/uploader/googlemobile/common/util/ArrayUtil;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asVector([Ljava/lang/Object;)Ljava/util/Vector;
    .registers 4

    new-instance v0, Ljava/util/Vector;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    const/4 v1, 0x0

    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_12

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_12
    return-object v0
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

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public static equals(Ljava/util/Vector;Ljava/util/Vector;)Z
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_6

    move v0, v5

    :goto_5
    return v0

    :cond_6
    if-eqz p0, :cond_a

    if-nez p1, :cond_c

    :cond_a
    move v0, v4

    goto :goto_5

    :cond_c
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eq v0, v1, :cond_18

    move v0, v4

    goto :goto_5

    :cond_18
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    move v1, v4

    :goto_1d
    if-ge v1, v0, :cond_32

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/uploader/googlemobile/common/util/ArrayUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    move v0, v4

    goto :goto_5

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_32
    move v0, v5

    goto :goto_5
.end method

.method public static equals([B[B)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_6

    move v0, v4

    :goto_5
    return v0

    :cond_6
    if-eqz p0, :cond_a

    if-nez p1, :cond_c

    :cond_a
    move v0, v3

    goto :goto_5

    :cond_c
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_12

    move v0, v3

    goto :goto_5

    :cond_12
    move v0, v3

    :goto_13
    array-length v1, p0

    if-ge v0, v1, :cond_21

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_1e

    move v0, v3

    goto :goto_5

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_21
    move v0, v4

    goto :goto_5
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_6

    move v0, v4

    :goto_5
    return v0

    :cond_6
    if-eqz p0, :cond_a

    if-nez p1, :cond_c

    :cond_a
    move v0, v3

    goto :goto_5

    :cond_c
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_12

    move v0, v3

    goto :goto_5

    :cond_12
    move v0, v3

    :goto_13
    array-length v1, p0

    if-ge v0, v1, :cond_25

    aget-object v1, p0, v0

    aget-object v2, p1, v0

    invoke-static {v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/util/ArrayUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    move v0, v3

    goto :goto_5

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_25
    move v0, v4

    goto :goto_5
.end method

.method public static fill([II)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/util/ArrayUtil;->fill([IIII)V

    return-void
.end method

.method public static fill([IIII)V
    .registers 6

    add-int v0, p2, p3

    move v1, p2

    :goto_3
    if-ge v1, v0, :cond_a

    aput p1, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
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
    .registers 19

    move-object/from16 v0, p0

    array-length v0, v0

    move v2, v0

    move/from16 v0, p1

    move v1, v2

    if-ge v0, v1, :cond_b

    if-gez p1, :cond_31

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " invalid for: "

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    new-array v4, v2, [J

    new-array v5, v2, [J

    move-object v15, v5

    move-object/from16 v5, p0

    move-object/from16 p0, v15

    move/from16 v16, p1

    move-object/from16 p1, v4

    move/from16 v4, v16

    :goto_45
    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v6

    rem-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    aget-wide v6, v5, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v15, v11

    move v11, v8

    move v8, v15

    move/from16 v16, v9

    move v9, v10

    move/from16 v10, v16

    :goto_5c
    if-ge v8, v2, :cond_79

    aget-wide v12, v5, v8

    cmp-long v14, v12, v6

    if-gez v14, :cond_6c

    add-int/lit8 v14, v10, 0x1

    aput-wide v12, p1, v10

    move v10, v14

    :goto_69
    add-int/lit8 v8, v8, 0x1

    goto :goto_5c

    :cond_6c
    cmp-long v14, v12, v6

    if-lez v14, :cond_76

    add-int/lit8 v14, v9, 0x1

    aput-wide v12, p0, v9

    move v9, v14

    goto :goto_69

    :cond_76
    add-int/lit8 v11, v11, 0x1

    goto :goto_69

    :cond_79
    if-ge v4, v10, :cond_83

    new-array v2, v10, [J

    move-object/from16 v5, p1

    move-object/from16 p1, v2

    move v2, v10

    goto :goto_45

    :cond_83
    add-int v2, v10, v11

    if-ge v4, v2, :cond_88

    return-wide v6

    :cond_88
    new-array v2, v9, [J

    add-int v5, v10, v11

    sub-int/2addr v4, v5

    move-object/from16 v5, p0

    move-object/from16 p0, v2

    move v2, v9

    goto :goto_45
.end method

.method public static indexOf([II)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/ArrayUtil;->indexOf([III)I

    move-result v0

    return v0
.end method

.method public static indexOf([III)I
    .registers 5

    move v0, p2

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_c

    aget v1, p0, v0

    if-ne v1, p1, :cond_9

    :goto_8
    return v0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/ArrayUtil;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .registers 5

    move v0, p2

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_10

    aget-object v1, p0, v0

    invoke-static {p1, v1}, Lcom/google/android/apps/uploader/googlemobile/common/util/ArrayUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_c
    return v0

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public static indexOf([ZZ)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/ArrayUtil;->indexOf([ZZI)I

    move-result v0

    return v0
.end method

.method public static indexOf([ZZI)I
    .registers 5

    move v0, p2

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_c

    aget-boolean v1, p0, v0

    if-ne v1, p1, :cond_9

    :goto_8
    return v0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/ArrayUtil;->lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .registers 5

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_7
    if-ltz v0, :cond_15

    aget-object v1, p0, v0

    invoke-static {p1, v1}, Lcom/google/android/apps/uploader/googlemobile/common/util/ArrayUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method public static msort([Ljava/lang/Object;Lcom/google/android/apps/uploader/googlemobile/common/util/Comparator;)V
    .registers 6

    const/4 v3, 0x1

    array-length v0, p0

    if-le v0, v3, :cond_b

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    sub-int/2addr v0, v3

    invoke-static {p0, p1, v2, v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/util/ArrayUtil;->msort([Ljava/lang/Object;Lcom/google/android/apps/uploader/googlemobile/common/util/Comparator;II[Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method public static msort([Ljava/lang/Object;Lcom/google/android/apps/uploader/googlemobile/common/util/Comparator;II[Ljava/lang/Object;)V
    .registers 14

    const/4 v8, 0x0

    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    add-int/lit8 v1, p2, 0x1

    if-ge v1, v0, :cond_12

    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-static {p0, p1, p2, v1, p4}, Lcom/google/android/apps/uploader/googlemobile/common/util/ArrayUtil;->msort([Ljava/lang/Object;Lcom/google/android/apps/uploader/googlemobile/common/util/Comparator;II[Ljava/lang/Object;)V

    :cond_12
    if-ge v0, p3, :cond_17

    invoke-static {p0, p1, v0, p3, p4}, Lcom/google/android/apps/uploader/googlemobile/common/util/ArrayUtil;->msort([Ljava/lang/Object;Lcom/google/android/apps/uploader/googlemobile/common/util/Comparator;II[Ljava/lang/Object;)V

    :cond_17
    move v1, p2

    :goto_18
    if-ge v1, v0, :cond_27

    aget-object v2, p0, v1

    aget-object v3, p0, v0

    invoke-interface {p1, v2, v3}, Lcom/google/android/apps/uploader/googlemobile/common/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_27

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_27
    add-int/lit8 v2, p3, 0x1

    move v3, v8

    move v4, v0

    move v5, v1

    :goto_2c
    if-ge v5, v0, :cond_6a

    if-ge v4, v2, :cond_6a

    aget-object v6, p0, v5

    aget-object v7, p0, v4

    invoke-interface {p1, v6, v7}, Lcom/google/android/apps/uploader/googlemobile/common/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-gtz v6, :cond_45

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v7, v5, 0x1

    aget-object v5, p0, v5

    aput-object v5, p4, v3

    move v3, v6

    move v5, v7

    goto :goto_2c

    :cond_45
    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v7, v4, 0x1

    aget-object v4, p0, v4

    aput-object v4, p4, v3

    move v3, v6

    move v4, v7

    goto :goto_2c

    :goto_50
    if-ge v3, v0, :cond_5d

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v3, 0x1

    aget-object v3, p0, v3

    aput-object v3, p4, v2

    move v2, v4

    move v3, v5

    goto :goto_50

    :cond_5d
    move v0, v8

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
    move v2, v3

    move v3, v5

    goto :goto_50
.end method

.method public static qsort([I)V
    .registers 2

    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/ArrayUtil;->qsort([II)V

    return-void
.end method

.method public static qsort([II)V
    .registers 4

    const/4 v1, 0x1

    if-gt p1, v1, :cond_4

    :goto_3
    return-void

    :cond_4
    const/4 v0, 0x0

    sub-int v1, p1, v1

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/util/ArrayUtil;->qsort([III)V

    goto :goto_3
.end method

.method public static qsort([III)V
    .registers 9

    const/4 v5, 0x1

    add-int v0, p1, p2

    div-int/lit8 v0, v0, 0x2

    aget v0, p0, v0

    move v1, p2

    move v2, p1

    :goto_9
    aget v3, p0, v2

    if-ge v3, v0, :cond_10

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_10
    :goto_10
    aget v3, p0, v1

    if-ge v0, v3, :cond_17

    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_17
    if-lt v2, v1, :cond_2c

    sub-int v0, v2, v5

    if-ge p1, v0, :cond_22

    sub-int v0, v2, v5

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/ArrayUtil;->qsort([III)V

    :cond_22
    add-int/lit8 v0, v1, 0x1

    if-ge v0, p2, :cond_2b

    add-int/lit8 v0, v1, 0x1

    invoke-static {p0, v0, p2}, Lcom/google/android/apps/uploader/googlemobile/common/util/ArrayUtil;->qsort([III)V

    :cond_2b
    return-void

    :cond_2c
    aget v3, p0, v2

    aget v4, p0, v1

    aput v4, p0, v2

    aput v3, p0, v1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_9
.end method

.method public static qsort([Ljava/lang/Object;Lcom/google/android/apps/uploader/googlemobile/common/util/Comparator;)V
    .registers 5

    const/4 v2, 0x1

    array-length v0, p0

    if-le v0, v2, :cond_9

    const/4 v1, 0x0

    sub-int/2addr v0, v2

    invoke-static {p0, p1, v1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/ArrayUtil;->qsort([Ljava/lang/Object;Lcom/google/android/apps/uploader/googlemobile/common/util/Comparator;II)V

    :cond_9
    return-void
.end method

.method public static qsort([Ljava/lang/Object;Lcom/google/android/apps/uploader/googlemobile/common/util/Comparator;II)V
    .registers 10

    const/4 v5, 0x1

    add-int v0, p2, p3

    div-int/lit8 v0, v0, 0x2

    aget-object v0, p0, v0

    move v1, p3

    move v2, p2

    :goto_9
    aget-object v3, p0, v2

    invoke-interface {p1, v3, v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_14

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_14
    :goto_14
    aget-object v3, p0, v1

    invoke-interface {p1, v0, v3}, Lcom/google/android/apps/uploader/googlemobile/common/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1f

    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    :cond_1f
    if-lt v2, v1, :cond_34

    sub-int v0, v2, v5

    if-ge p2, v0, :cond_2a

    sub-int v0, v2, v5

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/ArrayUtil;->qsort([Ljava/lang/Object;Lcom/google/android/apps/uploader/googlemobile/common/util/Comparator;II)V

    :cond_2a
    add-int/lit8 v0, v1, 0x1

    if-ge v0, p3, :cond_33

    add-int/lit8 v0, v1, 0x1

    invoke-static {p0, p1, v0, p3}, Lcom/google/android/apps/uploader/googlemobile/common/util/ArrayUtil;->qsort([Ljava/lang/Object;Lcom/google/android/apps/uploader/googlemobile/common/util/Comparator;II)V

    :cond_33
    return-void

    :cond_34
    aget-object v3, p0, v2

    aget-object v4, p0, v1

    aput-object v4, p0, v2

    aput-object v3, p0, v1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_9
.end method

.method public static sum([I)I
    .registers 3

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/util/ArrayUtil;->sum([III)I

    move-result v0

    return v0
.end method

.method public static sum([III)I
    .registers 7

    const/4 v0, 0x0

    add-int v1, p1, p2

    move v2, v0

    move v0, p1

    :goto_5
    if-ge v0, v1, :cond_d

    aget v3, p0, v0

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_d
    return v2
.end method
