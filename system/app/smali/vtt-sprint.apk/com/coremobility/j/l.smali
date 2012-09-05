.class public Lcom/coremobility/j/l;
.super Ljava/lang/Object;


# instance fields
.field protected o:[B

.field protected p:I

.field protected q:I

.field protected r:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/j/l;->o:[B

    iput v1, p0, Lcom/coremobility/j/l;->p:I

    iput v1, p0, Lcom/coremobility/j/l;->q:I

    iput v1, p0, Lcom/coremobility/j/l;->r:I

    return-void
.end method


# virtual methods
.method protected final A()I
    .registers 5

    const/4 v1, 0x0

    iget v0, p0, Lcom/coremobility/j/l;->q:I

    :goto_3
    iget v2, p0, Lcom/coremobility/j/l;->p:I

    if-ge v0, v2, :cond_10

    iget-object v2, p0, Lcom/coremobility/j/l;->o:[B

    aget-byte v2, v2, v0

    if-eqz v2, :cond_10

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_10
    iget v2, p0, Lcom/coremobility/j/l;->p:I

    if-lt v0, v2, :cond_25

    const/4 v0, 0x2

    const-string v2, "inc text"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/coremobility/j/l;->p:I

    iput v0, p0, Lcom/coremobility/j/l;->q:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/coremobility/j/l;->r:I

    move v0, v1

    :goto_24
    return v0

    :cond_25
    iget v1, p0, Lcom/coremobility/j/l;->q:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_24
.end method

.method public final B()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lcom/coremobility/j/l;->A()I

    move-result v0

    iget v1, p0, Lcom/coremobility/j/l;->r:I

    if-nez v1, :cond_2e

    if-eqz v0, :cond_2e

    iget-object v1, p0, Lcom/coremobility/j/l;->o:[B

    iget v2, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v1, v1, v2

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_1c

    iget v1, p0, Lcom/coremobility/j/l;->q:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/coremobility/j/l;->q:I

    add-int/lit8 v0, v0, -0x1

    :cond_1c
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/coremobility/j/l;->o:[B

    iget v3, p0, Lcom/coremobility/j/l;->q:I

    add-int/lit8 v4, v0, -0x1

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([BII)V

    iget v2, p0, Lcom/coremobility/j/l;->q:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/coremobility/j/l;->q:I

    move-object v0, v1

    :goto_2d
    return-object v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method protected final C()V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/coremobility/j/l;->r:I

    invoke-virtual {p0}, Lcom/coremobility/j/l;->A()I

    move-result v0

    if-eqz v0, :cond_e

    iget v1, p0, Lcom/coremobility/j/l;->q:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coremobility/j/l;->q:I

    :cond_e
    return-void
.end method

.method protected final D()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    iget v0, p0, Lcom/coremobility/j/l;->q:I

    iget v1, p0, Lcom/coremobility/j/l;->p:I

    if-lt v0, v1, :cond_13

    const-string v0, "no val"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput v4, p0, Lcom/coremobility/j/l;->r:I

    :cond_12
    :goto_12
    return-void

    :cond_13
    iput v2, p0, Lcom/coremobility/j/l;->r:I

    iget-object v0, p0, Lcom/coremobility/j/l;->o:[B

    iget v1, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v0, v0, v1

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_38

    invoke-virtual {p0}, Lcom/coremobility/j/l;->z()I

    move-result v0

    iget v1, p0, Lcom/coremobility/j/l;->q:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/coremobility/j/l;->q:I

    iget v0, p0, Lcom/coremobility/j/l;->q:I

    iget v1, p0, Lcom/coremobility/j/l;->p:I

    if-le v0, v1, :cond_12

    const-string v0, "inc val"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput v4, p0, Lcom/coremobility/j/l;->r:I

    goto :goto_12

    :cond_38
    iget-object v0, p0, Lcom/coremobility/j/l;->o:[B

    iget v1, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v0, v0, v1

    const/16 v1, 0x80

    if-ge v0, v1, :cond_46

    invoke-virtual {p0}, Lcom/coremobility/j/l;->C()V

    goto :goto_12

    :cond_46
    iget v0, p0, Lcom/coremobility/j/l;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coremobility/j/l;->q:I

    goto :goto_12
.end method

.method protected a([BI)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iput p2, p0, Lcom/coremobility/j/l;->p:I

    array-length v1, p1

    if-ge v1, p2, :cond_9

    array-length v1, p1

    iput v1, p0, Lcom/coremobility/j/l;->p:I

    :cond_9
    iput-object p1, p0, Lcom/coremobility/j/l;->o:[B

    const/4 v1, 0x0

    iput v1, p0, Lcom/coremobility/j/l;->q:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/coremobility/j/l;->r:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :catch_13
    move-exception v1

    goto :goto_12
.end method

.method protected final u()I
    .registers 3

    iget-object v0, p0, Lcom/coremobility/j/l;->o:[B

    iget v1, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method protected final v()B
    .registers 6

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget v1, p0, Lcom/coremobility/j/l;->q:I

    iget v2, p0, Lcom/coremobility/j/l;->p:I

    if-lt v1, v2, :cond_b

    iput v4, p0, Lcom/coremobility/j/l;->r:I

    :goto_a
    return v0

    :cond_b
    iget-object v1, p0, Lcom/coremobility/j/l;->o:[B

    iget v2, p0, Lcom/coremobility/j/l;->q:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1b

    move v0, v1

    goto :goto_a

    :cond_1b
    const/4 v2, 0x2

    const-string v3, "bad byte val %x"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/coremobility/j/l;->p:I

    iput v1, p0, Lcom/coremobility/j/l;->q:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/coremobility/j/l;->r:I

    goto :goto_a
.end method

.method protected final w()I
    .registers 5

    const/4 v3, 0x2

    const/4 v0, 0x0

    iget v1, p0, Lcom/coremobility/j/l;->q:I

    iget v2, p0, Lcom/coremobility/j/l;->p:I

    if-lt v1, v2, :cond_13

    const-string v1, "no int"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput v1, p0, Lcom/coremobility/j/l;->r:I

    :goto_12
    return v0

    :cond_13
    iget-object v1, p0, Lcom/coremobility/j/l;->o:[B

    iget v2, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x1f

    if-ge v1, v2, :cond_24

    invoke-virtual {p0}, Lcom/coremobility/j/l;->x()I

    move-result v0

    goto :goto_12

    :cond_24
    iget-object v1, p0, Lcom/coremobility/j/l;->o:[B

    iget v2, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_3b

    iget-object v0, p0, Lcom/coremobility/j/l;->o:[B

    iget v1, p0, Lcom/coremobility/j/l;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x7f

    goto :goto_12

    :cond_3b
    const-string v1, "bad int"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/coremobility/j/l;->p:I

    iput v1, p0, Lcom/coremobility/j/l;->q:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/coremobility/j/l;->r:I

    goto :goto_12
.end method

.method protected final x()I
    .registers 7

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v0, 0x0

    iget v1, p0, Lcom/coremobility/j/l;->q:I

    iget v2, p0, Lcom/coremobility/j/l;->p:I

    if-lt v1, v2, :cond_13

    const-string v1, "no long"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v5, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput v4, p0, Lcom/coremobility/j/l;->r:I

    :goto_12
    return v0

    :cond_13
    iget-object v1, p0, Lcom/coremobility/j/l;->o:[B

    iget v2, p0, Lcom/coremobility/j/l;->q:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0xff

    const/16 v1, 0x1f

    if-ge v2, v1, :cond_25

    if-nez v2, :cond_34

    :cond_25
    const-string v1, "bad long"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v5, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/coremobility/j/l;->p:I

    iput v1, p0, Lcom/coremobility/j/l;->q:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/coremobility/j/l;->r:I

    goto :goto_12

    :cond_34
    iget v1, p0, Lcom/coremobility/j/l;->q:I

    add-int/2addr v1, v2

    iget v3, p0, Lcom/coremobility/j/l;->p:I

    if-le v1, v3, :cond_49

    const-string v1, "inc long"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v5, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/coremobility/j/l;->p:I

    iput v1, p0, Lcom/coremobility/j/l;->q:I

    iput v4, p0, Lcom/coremobility/j/l;->r:I

    goto :goto_12

    :cond_49
    const/4 v1, 0x4

    if-le v2, v1, :cond_61

    const-string v1, "%x-byte long"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v5, v1, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/coremobility/j/l;->q:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/coremobility/j/l;->q:I

    iput v5, p0, Lcom/coremobility/j/l;->r:I

    goto :goto_12

    :cond_61
    const-wide/16 v0, 0x0

    :goto_63
    if-lez v2, :cond_79

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    iget-object v3, p0, Lcom/coremobility/j/l;->o:[B

    iget v4, p0, Lcom/coremobility/j/l;->q:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_63

    :cond_79
    long-to-int v0, v0

    goto :goto_12
.end method

.method protected final y()I
    .registers 12

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v1, 0x0

    iget v0, p0, Lcom/coremobility/j/l;->q:I

    iget v2, p0, Lcom/coremobility/j/l;->p:I

    if-lt v0, v2, :cond_14

    const-string v0, "no uintv"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v8, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput v9, p0, Lcom/coremobility/j/l;->r:I

    :goto_13
    return v1

    :cond_14
    iget-object v0, p0, Lcom/coremobility/j/l;->o:[B

    iget v2, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0x80

    if-ne v0, v2, :cond_2e

    const-string v0, "uintv 0x80"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v8, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/coremobility/j/l;->p:I

    iput v0, p0, Lcom/coremobility/j/l;->q:I

    iput v10, p0, Lcom/coremobility/j/l;->r:I

    goto :goto_13

    :cond_2e
    const-wide/16 v2, 0x0

    move v0, v1

    :goto_31
    iget-object v4, p0, Lcom/coremobility/j/l;->o:[B

    iget v5, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_70

    const/4 v4, 0x4

    if-ne v0, v4, :cond_4c

    const-string v0, "bad uintv"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v8, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/coremobility/j/l;->p:I

    iput v0, p0, Lcom/coremobility/j/l;->q:I

    iput v10, p0, Lcom/coremobility/j/l;->r:I

    goto :goto_13

    :cond_4c
    iget-object v4, p0, Lcom/coremobility/j/l;->o:[B

    iget v5, p0, Lcom/coremobility/j/l;->q:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    const/4 v4, 0x7

    shl-long/2addr v2, v4

    iget v4, p0, Lcom/coremobility/j/l;->q:I

    iget v5, p0, Lcom/coremobility/j/l;->p:I

    if-lt v4, v5, :cond_6d

    const-string v0, "inc uintv"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v8, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput v9, p0, Lcom/coremobility/j/l;->r:I

    goto :goto_13

    :cond_6d
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_70
    iget-object v0, p0, Lcom/coremobility/j/l;->o:[B

    iget v1, p0, Lcom/coremobility/j/l;->q:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    or-long/2addr v0, v2

    long-to-int v1, v0

    goto :goto_13
.end method

.method protected final z()I
    .registers 6

    const/16 v4, 0x1f

    const/4 v3, 0x2

    const/4 v0, 0x0

    iget v1, p0, Lcom/coremobility/j/l;->q:I

    iget v2, p0, Lcom/coremobility/j/l;->p:I

    if-lt v1, v2, :cond_15

    const-string v1, "no vlen"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput v1, p0, Lcom/coremobility/j/l;->r:I

    :goto_14
    return v0

    :cond_15
    iget-object v1, p0, Lcom/coremobility/j/l;->o:[B

    iget v2, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    if-ge v1, v4, :cond_2a

    iget-object v0, p0, Lcom/coremobility/j/l;->o:[B

    iget v1, p0, Lcom/coremobility/j/l;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v0, v0, v1

    goto :goto_14

    :cond_2a
    iget-object v1, p0, Lcom/coremobility/j/l;->o:[B

    iget v2, p0, Lcom/coremobility/j/l;->q:I

    aget-byte v1, v1, v2

    if-ne v1, v4, :cond_3d

    iget v0, p0, Lcom/coremobility/j/l;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coremobility/j/l;->q:I

    invoke-virtual {p0}, Lcom/coremobility/j/l;->y()I

    move-result v0

    goto :goto_14

    :cond_3d
    const-string v1, "bad vlen"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/coremobility/j/l;->p:I

    iput v1, p0, Lcom/coremobility/j/l;->q:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/coremobility/j/l;->r:I

    goto :goto_14
.end method
