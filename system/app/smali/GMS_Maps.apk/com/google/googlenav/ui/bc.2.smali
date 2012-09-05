.class public Lcom/google/googlenav/ui/bc;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Lcom/google/googlenav/ui/aR;

.field private b:LaJ/Y;

.field private c:[[[J


# direct methods
.method public constructor <init>([Lcom/google/googlenav/ui/aR;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    array-length v0, p1

    if-nez v0, :cond_e

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_e
    const/4 v0, 0x0

    :goto_f
    array-length v1, p1

    if-ge v0, v1, :cond_1f

    aget-object v1, p1, v0

    if-nez v1, :cond_1c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1f
    iput-object p1, p0, Lcom/google/googlenav/ui/bc;->a:[Lcom/google/googlenav/ui/aR;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/bc;->b:LaJ/Y;

    return-void
.end method

.method private static a(IIII)I
    .registers 6

    const/4 v0, 0x0

    if-gez p2, :cond_a

    const/16 v1, 0x8

    :goto_5
    if-gez p3, :cond_10

    const/4 v0, 0x2

    :cond_8
    :goto_8
    or-int/2addr v0, v1

    return v0

    :cond_a
    if-le p2, p0, :cond_e

    const/4 v1, 0x4

    goto :goto_5

    :cond_e
    move v1, v0

    goto :goto_5

    :cond_10
    if-le p3, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_8
.end method

.method public static a(J)I
    .registers 4

    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private static a(Lcom/google/googlenav/ui/aQ;)I
    .registers 2

    invoke-interface {p0}, Lcom/google/googlenav/ui/aQ;->n()[[LaJ/B;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    invoke-interface {p0}, Lcom/google/googlenav/ui/aQ;->n()[[LaJ/B;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static a(II)J
    .registers 7

    const/16 v4, 0x20

    int-to-long v0, p0

    shl-long/2addr v0, v4

    int-to-long v2, p1

    shl-long/2addr v2, v4

    ushr-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static a(IIII[I)V
    .registers 15

    const/16 v1, 0xfa0

    const/16 v2, -0xfa0

    sub-int v4, p0, p2

    sub-int v5, p1, p3

    if-gt p0, v1, :cond_c

    if-ge p0, v2, :cond_3a

    :cond_c
    if-lez p0, :cond_33

    move v0, v1

    :goto_f
    sub-int v3, v0, p2

    int-to-long v6, v3

    int-to-long v8, v5

    mul-long/2addr v6, v8

    int-to-long v8, v4

    div-long/2addr v6, v8

    long-to-int v3, v6

    add-int p1, p3, v3

    move v3, v0

    move v0, p1

    :goto_1b
    if-gt v0, v1, :cond_1f

    if-ge v0, v2, :cond_37

    :cond_1f
    add-int v0, v5, p3

    if-lez v0, :cond_35

    :goto_23
    sub-int v0, v1, p3

    int-to-long v2, v0

    int-to-long v6, v4

    mul-long/2addr v2, v6

    int-to-long v4, v5

    div-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v0, p2

    :goto_2c
    const/4 v2, 0x0

    aput v0, p4, v2

    const/4 v0, 0x1

    aput v1, p4, v0

    return-void

    :cond_33
    move v0, v2

    goto :goto_f

    :cond_35
    move v1, v2

    goto :goto_23

    :cond_37
    move v1, v0

    move v0, v3

    goto :goto_2c

    :cond_3a
    move v0, p1

    move v3, p0

    goto :goto_1b
.end method

.method private a(LaJ/Y;)V
    .registers 14

    iget-object v0, p0, Lcom/google/googlenav/ui/bc;->b:LaJ/Y;

    if-ne p1, v0, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/googlenav/ui/bc;->a:[Lcom/google/googlenav/ui/aR;

    array-length v0, v0

    new-array v0, v0, [[[J

    iput-object v0, p0, Lcom/google/googlenav/ui/bc;->c:[[[J

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    iget-object v0, p0, Lcom/google/googlenav/ui/bc;->a:[Lcom/google/googlenav/ui/aR;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/ui/bc;->a:[Lcom/google/googlenav/ui/aR;

    aget-object v0, v0, v1

    instance-of v0, v0, Lcom/google/googlenav/ui/aQ;

    if-nez v0, :cond_1f

    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_1f
    iget-object v0, p0, Lcom/google/googlenav/ui/bc;->a:[Lcom/google/googlenav/ui/aR;

    aget-object v0, v0, v1

    check-cast v0, Lcom/google/googlenav/ui/aQ;

    invoke-static {v0}, Lcom/google/googlenav/ui/bc;->a(Lcom/google/googlenav/ui/aQ;)I

    move-result v4

    iget-object v2, p0, Lcom/google/googlenav/ui/bc;->c:[[[J

    new-array v3, v4, [[J

    aput-object v3, v2, v1

    invoke-static {v0}, Lcom/google/googlenav/ui/bc;->b(Lcom/google/googlenav/ui/aQ;)[[LaJ/B;

    move-result-object v5

    const/4 v0, 0x0

    move v3, v0

    :goto_35
    if-ge v3, v4, :cond_1b

    aget-object v6, v5, v3

    array-length v0, v6

    new-array v7, v0, [J

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/google/googlenav/ui/bc;->b:LaJ/Y;

    const/4 v0, 0x0

    const/4 v8, 0x0

    aget-object v8, v6, v8

    iget-object v9, p0, Lcom/google/googlenav/ui/bc;->b:LaJ/Y;

    invoke-virtual {v8, v9}, LaJ/B;->a(LaJ/Y;)I

    move-result v8

    const/4 v9, 0x0

    aget-object v9, v6, v9

    iget-object v10, p0, Lcom/google/googlenav/ui/bc;->b:LaJ/Y;

    invoke-virtual {v9, v10}, LaJ/B;->b(LaJ/Y;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/google/googlenav/ui/bc;->a(II)J

    move-result-wide v8

    aput-wide v8, v7, v0

    const/4 v0, 0x1

    :goto_59
    array-length v8, v6

    if-ge v0, v8, :cond_9e

    aget-object v8, v6, v0

    iget-object v9, p0, Lcom/google/googlenav/ui/bc;->b:LaJ/Y;

    invoke-virtual {v8, v9}, LaJ/B;->a(LaJ/Y;)I

    move-result v8

    aget-object v9, v6, v0

    iget-object v10, p0, Lcom/google/googlenav/ui/bc;->b:LaJ/Y;

    invoke-virtual {v9, v10}, LaJ/B;->b(LaJ/Y;)I

    move-result v9

    add-int/lit8 v10, v2, -0x1

    aget-wide v10, v7, v10

    invoke-static {v10, v11}, Lcom/google/googlenav/ui/bc;->a(J)I

    move-result v10

    sub-int v10, v8, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/4 v11, 0x2

    if-gt v10, v11, :cond_93

    add-int/lit8 v10, v2, -0x1

    aget-wide v10, v7, v10

    invoke-static {v10, v11}, Lcom/google/googlenav/ui/bc;->b(J)I

    move-result v10

    sub-int v10, v9, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/4 v11, 0x2

    if-gt v10, v11, :cond_93

    array-length v10, v6

    add-int/lit8 v10, v10, -0x1

    if-ne v0, v10, :cond_9b

    :cond_93
    invoke-static {v8, v9}, Lcom/google/googlenav/ui/bc;->a(II)J

    move-result-wide v8

    aput-wide v8, v7, v2

    add-int/lit8 v2, v2, 0x1

    :cond_9b
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    :cond_9e
    iget-object v0, p0, Lcom/google/googlenav/ui/bc;->c:[[[J

    aget-object v0, v0, v1

    new-array v6, v2, [J

    aput-object v6, v0, v3

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/google/googlenav/ui/bc;->c:[[[J

    aget-object v6, v6, v1

    aget-object v6, v6, v3

    const/4 v8, 0x0

    invoke-static {v7, v0, v6, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_35
.end method

.method private a(Lcom/google/googlenav/ui/bd;IIIILcom/google/googlenav/ui/aP;LaJ/Y;)V
    .registers 16

    const/4 v1, -0x1

    invoke-interface {p6}, Lcom/google/googlenav/ui/aP;->k()I

    move-result v0

    if-ne v0, v1, :cond_e

    invoke-interface {p6}, Lcom/google/googlenav/ui/aP;->m()I

    move-result v0

    if-ne v0, v1, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    invoke-interface {p6}, Lcom/google/googlenav/ui/aP;->z()LaJ/B;

    move-result-object v0

    invoke-interface {p6}, Lcom/google/googlenav/ui/aP;->y()I

    move-result v1

    invoke-virtual {p7, v1}, LaJ/Y;->a(I)I

    move-result v3

    invoke-interface {p6}, Lcom/google/googlenav/ui/aP;->x()I

    move-result v1

    invoke-virtual {p7, v1}, LaJ/Y;->a(I)I

    move-result v4

    invoke-virtual {v0, p7}, LaJ/B;->a(LaJ/Y;)I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {v0, p7}, LaJ/B;->b(LaJ/Y;)I

    move-result v0

    sub-int v2, v0, p3

    div-int/lit8 v0, v3, 0x2

    sub-int v0, v1, v0

    div-int/lit8 v5, v4, 0x2

    sub-int v5, v2, v5

    invoke-static {p4, p5, v0, v5}, Lcom/google/googlenav/ui/bc;->a(IIII)I

    move-result v0

    div-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v1

    div-int/lit8 v6, v4, 0x2

    add-int/2addr v6, v2

    invoke-static {p4, p5, v5, v6}, Lcom/google/googlenav/ui/bc;->a(IIII)I

    move-result v5

    and-int/2addr v0, v5

    if-nez v0, :cond_d

    invoke-interface {p6, p7}, Lcom/google/googlenav/ui/aP;->a(LaJ/Y;)I

    move-result v5

    invoke-interface {p6}, Lcom/google/googlenav/ui/aP;->k()I

    move-result v6

    invoke-interface {p6}, Lcom/google/googlenav/ui/aP;->m()I

    move-result v7

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/google/googlenav/ui/bd;->a(IIIIIII)V

    goto :goto_d
.end method

.method private a(Lcom/google/googlenav/ui/bd;IIII[JLcom/google/googlenav/ui/aQ;LaJ/Y;)V
    .registers 23

    const/4 v2, 0x2

    new-array v7, v2, [I

    const/4 v2, 0x2

    new-array v8, v2, [I

    const/4 v2, 0x2

    new-array v9, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-wide v3, p6, v3

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/bc;->a(J)I

    move-result v3

    sub-int v3, v3, p2

    aput v3, v8, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aget-wide v3, p6, v3

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/bc;->b(J)I

    move-result v3

    sub-int v3, v3, p3

    aput v3, v8, v2

    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v3, 0x1

    aget v3, v8, v3

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlenav/ui/bc;->a(IIII)I

    move-result v5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    :goto_32
    move-object/from16 v0, p6

    array-length v6, v0

    if-ge v2, v6, :cond_b4

    const/4 v6, 0x0

    aget-wide v10, p6, v2

    invoke-static {v10, v11}, Lcom/google/googlenav/ui/bc;->a(J)I

    move-result v10

    sub-int v10, v10, p2

    aput v10, v7, v6

    const/4 v6, 0x1

    aget-wide v11, p6, v2

    invoke-static {v11, v12}, Lcom/google/googlenav/ui/bc;->b(J)I

    move-result v11

    sub-int v11, v11, p3

    aput v11, v7, v6

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v1, v10, v11}, Lcom/google/googlenav/ui/bc;->a(IIII)I

    move-result v6

    and-int/2addr v5, v6

    if-nez v5, :cond_b2

    if-nez v3, :cond_6a

    invoke-interface/range {p7 .. p7}, Lcom/google/googlenav/ui/aQ;->k()I

    move-result v3

    invoke-interface/range {p7 .. p8}, Lcom/google/googlenav/ui/aQ;->a(LaJ/Y;)I

    move-result v5

    invoke-interface/range {p7 .. p7}, Lcom/google/googlenav/ui/aQ;->d()I

    move-result v10

    invoke-interface {p1, v3, v5, v10}, Lcom/google/googlenav/ui/bd;->a(III)V

    const/4 v3, 0x1

    :cond_6a
    invoke-static {v7}, Lcom/google/googlenav/ui/bc;->a([I)Z

    move-result v5

    if-nez v5, :cond_7f

    const/4 v10, 0x0

    aget v10, v7, v10

    const/4 v11, 0x1

    aget v11, v7, v11

    const/4 v12, 0x0

    aget v12, v8, v12

    const/4 v13, 0x1

    aget v13, v8, v13

    invoke-static {v10, v11, v12, v13, v9}, Lcom/google/googlenav/ui/bc;->a(IIII[I)V

    :cond_7f
    invoke-static {v8}, Lcom/google/googlenav/ui/bc;->a([I)Z

    move-result v10

    if-nez v10, :cond_94

    const/4 v10, 0x0

    aget v10, v8, v10

    const/4 v11, 0x1

    aget v11, v8, v11

    const/4 v12, 0x0

    aget v12, v7, v12

    const/4 v13, 0x1

    aget v13, v7, v13

    invoke-static {v10, v11, v12, v13, v8}, Lcom/google/googlenav/ui/bc;->a(IIII[I)V

    :cond_94
    if-eqz v5, :cond_ac

    invoke-interface {p1, v7, v8, v4}, Lcom/google/googlenav/ui/bd;->a([I[IZ)V

    :goto_99
    if-nez v5, :cond_b0

    const/4 v4, 0x1

    :goto_9c
    const/4 v5, 0x0

    const/4 v10, 0x0

    aget v10, v7, v10

    aput v10, v8, v5

    const/4 v5, 0x1

    const/4 v10, 0x1

    aget v10, v7, v10

    aput v10, v8, v5

    add-int/lit8 v2, v2, 0x1

    move v5, v6

    goto :goto_32

    :cond_ac
    invoke-interface {p1, v9, v8, v4}, Lcom/google/googlenav/ui/bd;->a([I[IZ)V

    goto :goto_99

    :cond_b0
    const/4 v4, 0x0

    goto :goto_9c

    :cond_b2
    const/4 v4, 0x1

    goto :goto_9c

    :cond_b4
    if-eqz v3, :cond_b9

    invoke-interface {p1}, Lcom/google/googlenav/ui/bd;->a()V

    :cond_b9
    return-void
.end method

.method private a(Lcom/google/googlenav/ui/bd;IIII[[JLcom/google/googlenav/ui/aQ;LaJ/Y;)V
    .registers 18

    const/4 v4, 0x0

    invoke-static/range {p7 .. p7}, Lcom/google/googlenav/ui/bc;->a(Lcom/google/googlenav/ui/aQ;)I

    move-result v5

    new-array v6, v5, [[J

    const/4 v0, 0x0

    const/4 v1, 0x0

    aget-object v1, p6, v1

    invoke-static {p2, p3, v1}, Lcom/google/googlenav/ui/bc;->a(II[J)[J

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x0

    aget-object v0, v6, v0

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bc;->a(J)I

    move-result v0

    const/4 v1, 0x0

    aget-object v1, v6, v1

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bc;->b(J)I

    move-result v1

    invoke-static {p4, p5, v0, v1}, Lcom/google/googlenav/ui/bc;->a(IIII)I

    move-result v1

    const/4 v0, 0x1

    move v2, v1

    :goto_2b
    const/4 v3, 0x0

    aget-object v3, v6, v3

    array-length v3, v3

    if-ge v0, v3, :cond_75

    const/4 v3, 0x0

    aget-object v3, v6, v3

    aget-wide v7, v3, v0

    invoke-static {v7, v8}, Lcom/google/googlenav/ui/bc;->a(J)I

    move-result v3

    const/4 v7, 0x0

    aget-object v7, v6, v7

    aget-wide v7, v7, v0

    invoke-static {v7, v8}, Lcom/google/googlenav/ui/bc;->b(J)I

    move-result v7

    invoke-static {p4, p5, v3, v7}, Lcom/google/googlenav/ui/bc;->a(IIII)I

    move-result v3

    and-int/2addr v2, v3

    if-nez v2, :cond_60

    const/4 v0, 0x1

    :goto_4b
    const/16 v2, 0xf

    if-ne v1, v2, :cond_50

    const/4 v0, 0x1

    :cond_50
    if-eqz v0, :cond_74

    const/4 v0, 0x1

    :goto_53
    if-ge v0, v5, :cond_65

    aget-object v1, p6, v0

    invoke-static {p2, p3, v1}, Lcom/google/googlenav/ui/bc;->a(II[J)[J

    move-result-object v1

    aput-object v1, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    :cond_60
    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_2b

    :cond_65
    invoke-interface/range {p7 .. p7}, Lcom/google/googlenav/ui/aQ;->k()I

    move-result v0

    invoke-interface/range {p7 .. p8}, Lcom/google/googlenav/ui/aQ;->a(LaJ/Y;)I

    move-result v1

    invoke-interface/range {p7 .. p7}, Lcom/google/googlenav/ui/aQ;->m()I

    move-result v2

    invoke-interface {p1, v6, v0, v1, v2}, Lcom/google/googlenav/ui/bd;->a([[JIII)V

    :cond_74
    return-void

    :cond_75
    move v0, v4

    goto :goto_4b
.end method

.method protected static a([I)Z
    .registers 6

    const/16 v4, 0xfa0

    const/16 v3, -0xfa0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aget v2, p0, v1

    if-gt v2, v4, :cond_17

    aget v2, p0, v1

    if-lt v2, v3, :cond_17

    aget v2, p0, v0

    if-gt v2, v4, :cond_17

    aget v2, p0, v0

    if-lt v2, v3, :cond_17

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16
.end method

.method private static a(II[J)[J
    .registers 8

    array-length v0, p2

    new-array v1, v0, [J

    const/4 v0, 0x0

    :goto_4
    array-length v2, p2

    if-ge v0, v2, :cond_1e

    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bc;->a(J)I

    move-result v2

    sub-int/2addr v2, p0

    aget-wide v3, p2, v0

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/bc;->b(J)I

    move-result v3

    sub-int/2addr v3, p1

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/bc;->a(II)J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1e
    return-object v1
.end method

.method public static b(J)I
    .registers 4

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method private static b(Lcom/google/googlenav/ui/aQ;)[[LaJ/B;
    .registers 5

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-interface {p0}, Lcom/google/googlenav/ui/aQ;->n()[[LaJ/B;

    move-result-object v1

    if-nez v1, :cond_11

    new-array v0, v0, [[LaJ/B;

    invoke-interface {p0}, Lcom/google/googlenav/ui/aQ;->j()[LaJ/B;

    move-result-object v1

    aput-object v1, v0, v3

    :goto_10
    return-object v0

    :cond_11
    invoke-static {p0}, Lcom/google/googlenav/ui/bc;->a(Lcom/google/googlenav/ui/aQ;)I

    move-result v1

    new-array v1, v1, [[LaJ/B;

    invoke-interface {p0}, Lcom/google/googlenav/ui/aQ;->j()[LaJ/B;

    move-result-object v2

    aput-object v2, v1, v3

    :goto_1d
    array-length v2, v1

    if-ge v0, v2, :cond_2d

    invoke-interface {p0}, Lcom/google/googlenav/ui/aQ;->n()[[LaJ/B;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_2d
    move-object v0, v1

    goto :goto_10
.end method


# virtual methods
.method public a()I
    .registers 5

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_3
    iget-object v3, p0, Lcom/google/googlenav/ui/bc;->a:[Lcom/google/googlenav/ui/aR;

    array-length v3, v3

    if-ge v0, v3, :cond_21

    iget-object v3, p0, Lcom/google/googlenav/ui/bc;->a:[Lcom/google/googlenav/ui/aR;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lcom/google/googlenav/ui/aR;->h()Z

    move-result v3

    if-nez v3, :cond_13

    :goto_12
    return v1

    :cond_13
    mul-int/lit8 v2, v2, 0x1d

    iget-object v3, p0, Lcom/google/googlenav/ui/bc;->a:[Lcom/google/googlenav/ui/aR;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lcom/google/googlenav/ui/aR;->i()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_21
    move v1, v2

    goto :goto_12
.end method

.method public a(Lcom/google/googlenav/ui/bd;IIIILaJ/Y;)V
    .registers 19

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bc;->a()I

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    return-void

    :cond_7
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/bc;->a(LaJ/Y;)V

    const/4 v1, 0x0

    move v10, v1

    :goto_e
    iget-object v1, p0, Lcom/google/googlenav/ui/bc;->a:[Lcom/google/googlenav/ui/aR;

    array-length v1, v1

    if-ge v10, v1, :cond_6

    iget-object v1, p0, Lcom/google/googlenav/ui/bc;->a:[Lcom/google/googlenav/ui/aR;

    aget-object v1, v1, v10

    instance-of v1, v1, Lcom/google/googlenav/ui/aP;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/google/googlenav/ui/bc;->a:[Lcom/google/googlenav/ui/aR;

    aget-object v7, v1, v10

    check-cast v7, Lcom/google/googlenav/ui/aP;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/google/googlenav/ui/bc;->a(Lcom/google/googlenav/ui/bd;IIIILcom/google/googlenav/ui/aP;LaJ/Y;)V

    :cond_2e
    :goto_2e
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_e

    :cond_32
    iget-object v1, p0, Lcom/google/googlenav/ui/bc;->a:[Lcom/google/googlenav/ui/aR;

    aget-object v8, v1, v10

    check-cast v8, Lcom/google/googlenav/ui/aQ;

    iget-object v1, p0, Lcom/google/googlenav/ui/bc;->a:[Lcom/google/googlenav/ui/aR;

    aget-object v1, v1, v10

    invoke-interface {v1}, Lcom/google/googlenav/ui/aR;->l()Z

    move-result v1

    if-eqz v1, :cond_54

    iget-object v1, p0, Lcom/google/googlenav/ui/bc;->c:[[[J

    aget-object v7, v1, v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/google/googlenav/ui/bc;->a(Lcom/google/googlenav/ui/bd;IIII[[JLcom/google/googlenav/ui/aQ;LaJ/Y;)V

    goto :goto_2e

    :cond_54
    const/4 v1, 0x0

    move v11, v1

    :goto_56
    iget-object v1, p0, Lcom/google/googlenav/ui/bc;->c:[[[J

    aget-object v1, v1, v10

    array-length v1, v1

    if-ge v11, v1, :cond_2e

    iget-object v1, p0, Lcom/google/googlenav/ui/bc;->c:[[[J

    aget-object v1, v1, v10

    aget-object v7, v1, v11

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/google/googlenav/ui/bc;->a(Lcom/google/googlenav/ui/bd;IIII[JLcom/google/googlenav/ui/aQ;LaJ/Y;)V

    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_56
.end method

.method public a(Lcom/google/googlenav/ui/aR;LaJ/Y;)[J
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/bc;->a(LaJ/Y;)V

    move v0, v1

    :goto_5
    iget-object v2, p0, Lcom/google/googlenav/ui/bc;->a:[Lcom/google/googlenav/ui/aR;

    array-length v2, v2

    if-ge v0, v2, :cond_1a

    iget-object v2, p0, Lcom/google/googlenav/ui/bc;->a:[Lcom/google/googlenav/ui/aR;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_17

    iget-object v2, p0, Lcom/google/googlenav/ui/bc;->c:[[[J

    aget-object v0, v2, v0

    aget-object v0, v0, v1

    :goto_16
    return-object v0

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1a
    const/4 v0, 0x0

    goto :goto_16
.end method
