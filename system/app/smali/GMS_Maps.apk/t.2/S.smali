.class public Lt/S;
.super Ljava/lang/Object;


# instance fields
.field private a:[Lt/T;

.field private b:I

.field private c:Lt/P;


# direct methods
.method public constructor <init>(Lt/P;)V
    .registers 10

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/S;->c:Lt/P;

    invoke-virtual {p1}, Lt/P;->b()I

    move-result v2

    add-int/lit8 v1, v2, 0x8

    add-int/lit8 v1, v1, -0x1

    shr-int/lit8 v1, v1, 0x3

    iput v0, p0, Lt/S;->b:I

    :goto_12
    if-ge v0, v1, :cond_1d

    iget v3, p0, Lt/S;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lt/S;->b:I

    mul-int/lit8 v0, v0, 0x2

    goto :goto_12

    :cond_1d
    iget v0, p0, Lt/S;->b:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lt/S;->a(I)I

    move-result v0

    add-int/2addr v0, v1

    new-array v0, v0, [Lt/T;

    iput-object v0, p0, Lt/S;->a:[Lt/T;

    new-instance v3, Lt/L;

    invoke-direct {v3}, Lt/L;-><init>()V

    iget v0, p0, Lt/S;->b:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lt/S;->a(I)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, 0x0

    move v7, v0

    move v0, v1

    move v1, v7

    :goto_3d
    if-ge v1, v2, :cond_5d

    invoke-virtual {p1, v1, v3}, Lt/P;->a(ILt/L;)V

    if-lez v1, :cond_4b

    iget-object v4, p0, Lt/S;->a:[Lt/T;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Lt/T;->a(Lt/L;)V

    :cond_4b
    and-int/lit8 v4, v1, 0x7

    if-nez v4, :cond_5a

    iget-object v4, p0, Lt/S;->a:[Lt/T;

    add-int/lit8 v0, v0, 0x1

    new-instance v5, Lt/T;

    invoke-direct {v5, v3}, Lt/T;-><init>(Lt/L;)V

    aput-object v5, v4, v0

    :cond_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_5d
    iget v0, p0, Lt/S;->b:I

    add-int/lit8 v0, v0, -0x2

    move v1, v0

    :goto_62
    if-ltz v1, :cond_ab

    invoke-static {v1}, Lt/S;->a(I)I

    move-result v0

    add-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Lt/S;->a(I)I

    move-result v2

    :goto_6e
    if-ge v0, v2, :cond_7a

    invoke-static {v0}, Lt/S;->b(I)I

    move-result v3

    invoke-direct {p0, v3}, Lt/S;->d(I)Z

    move-result v3

    if-nez v3, :cond_7e

    :cond_7a
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_62

    :cond_7e
    iget-object v3, p0, Lt/S;->a:[Lt/T;

    new-instance v4, Lt/T;

    iget-object v5, p0, Lt/S;->a:[Lt/T;

    invoke-static {v0}, Lt/S;->b(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Lt/T;-><init>(Lt/T;)V

    aput-object v4, v3, v0

    invoke-static {v0}, Lt/S;->c(I)I

    move-result v3

    invoke-direct {p0, v3}, Lt/S;->d(I)Z

    move-result v3

    if-eqz v3, :cond_7a

    iget-object v3, p0, Lt/S;->a:[Lt/T;

    aget-object v3, v3, v0

    iget-object v4, p0, Lt/S;->a:[Lt/T;

    invoke-static {v0}, Lt/S;->c(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lt/T;->a(Lt/T;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6e

    :cond_ab
    return-void
.end method

.method private static a(I)I
    .registers 2

    const/4 v0, 0x1

    shl-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private a(Lt/V;ILjava/util/ArrayList;)V
    .registers 8

    invoke-direct {p0, p2}, Lt/S;->d(I)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lt/S;->a:[Lt/T;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lt/T;->a(Lt/V;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-direct {p0, p2}, Lt/S;->e(I)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-direct {p0, p2}, Lt/S;->f(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x8

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lt/S;->c:Lt/P;

    invoke-virtual {v2}, Lt/P;->b()I

    move-result v2

    if-le v0, v2, :cond_2c

    iget-object v0, p0, Lt/S;->c:Lt/P;

    invoke-virtual {v0}, Lt/P;->b()I

    move-result v0

    :cond_2c
    new-instance v2, Lt/ab;

    iget-object v3, p0, Lt/S;->c:Lt/P;

    invoke-direct {v2, v3, v1, v0}, Lt/ab;-><init>(Lt/P;II)V

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    :goto_36
    return-void

    :cond_37
    invoke-static {p2}, Lt/S;->b(I)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lt/S;->a(Lt/V;ILjava/util/ArrayList;)V

    invoke-static {p2}, Lt/S;->c(I)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lt/S;->a(Lt/V;ILjava/util/ArrayList;)V

    goto :goto_36
.end method

.method private static b(I)I
    .registers 2

    shl-int/lit8 v0, p0, 0x1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static c(I)I
    .registers 2

    shl-int/lit8 v0, p0, 0x1

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private d(I)Z
    .registers 3

    iget-object v0, p0, Lt/S;->a:[Lt/T;

    array-length v0, v0

    if-ge p1, v0, :cond_d

    iget-object v0, p0, Lt/S;->a:[Lt/T;

    aget-object v0, v0, p1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private e(I)Z
    .registers 3

    iget v0, p0, Lt/S;->b:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lt/S;->a(I)I

    move-result v0

    if-lt p1, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private f(I)I
    .registers 3

    iget v0, p0, Lt/S;->b:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lt/S;->a(I)I

    move-result v0

    sub-int v0, p1, v0

    shl-int/lit8 v0, v0, 0x3

    return v0
.end method


# virtual methods
.method public a(Lt/V;)Ljava/util/List;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lt/S;->a(Lt/V;ILjava/util/ArrayList;)V

    return-object v0
.end method
