.class public Lar/a;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([JIIJ)I
    .registers 11

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

.method public static a([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lar/a;->a([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static a([Ljava/lang/Object;Ljava/lang/Object;I)I
    .registers 4

    :goto_0
    array-length v0, p0

    if-ge p2, v0, :cond_f

    aget-object v0, p0, p2

    invoke-static {p1, v0}, Lar/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method public static a(Ljava/util/List;ILjava/util/List;)V
    .registers 6

    monitor-enter p2

    move v0, p1

    :goto_2
    :try_start_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    sub-int v2, v0, p1

    invoke-interface {p2, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

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

.method public static a([Ljava/lang/Object;Lar/d;)V
    .registers 4

    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_a

    const/4 v1, 0x0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, v1, v0}, Lar/a;->a([Ljava/lang/Object;Lar/d;II)V

    :cond_a
    return-void
.end method

.method public static a([Ljava/lang/Object;Lar/d;II)V
    .registers 9

    add-int v0, p2, p3

    div-int/lit8 v0, v0, 0x2

    aget-object v2, p0, v0

    move v0, p3

    move v1, p2

    :goto_8
    aget-object v3, p0, v1

    invoke-interface {p1, v3, v2}, Lar/d;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_13

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_13
    :goto_13
    aget-object v3, p0, v0

    invoke-interface {p1, v2, v3}, Lar/d;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1e

    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_1e
    if-lt v1, v0, :cond_33

    add-int/lit8 v2, v1, -0x1

    if-ge p2, v2, :cond_29

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, p1, p2, v1}, Lar/a;->a([Ljava/lang/Object;Lar/d;II)V

    :cond_29
    add-int/lit8 v1, v0, 0x1

    if-ge v1, p3, :cond_32

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, p1, v0, p3}, Lar/a;->a([Ljava/lang/Object;Lar/d;II)V

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

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p0, [B

    if-eqz v0, :cond_15

    instance-of v0, p1, [B

    if-eqz v0, :cond_15

    check-cast p0, [B

    check-cast p0, [B

    check-cast p1, [B

    check-cast p1, [B

    invoke-static {p0, p1}, Lar/a;->a([B[B)Z

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

    invoke-static {p0, p1}, Lar/a;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_14

    :cond_2a
    instance-of v0, p0, Ljava/util/Vector;

    if-eqz v0, :cond_3b

    instance-of v0, p1, Ljava/util/Vector;

    if-eqz v0, :cond_3b

    check-cast p0, Ljava/util/Vector;

    check-cast p1, Ljava/util/Vector;

    invoke-static {p0, p1}, Lar/a;->a(Ljava/util/Vector;Ljava/util/Vector;)Z

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

.method public static a(Ljava/util/Vector;Ljava/util/Vector;)Z
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

    invoke-static {v4, v5}, Lar/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    move v0, v1

    goto :goto_4

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c
.end method

.method public static a([B[B)Z
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

.method public static a([Ljava/lang/Object;[Ljava/lang/Object;)Z
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

    invoke-static {v3, v4}, Lar/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1f
    move v1, v2

    goto :goto_5
.end method
