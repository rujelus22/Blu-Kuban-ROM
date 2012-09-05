.class Lx/C;
.super Ljava/lang/Object;


# instance fields
.field final a:[B

.field final b:I

.field c:I

.field d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit16 v0, p1, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lx/C;->a:[B

    iput p1, p0, Lx/C;->b:I

    iput p2, p0, Lx/C;->c:I

    return-void
.end method

.method static a(J)[I
    .registers 12

    const/4 v0, 0x0

    const-wide/16 v8, 0x1fd3

    const/16 v7, 0x16

    const/4 v1, 0x3

    new-array v1, v1, [I

    invoke-static {p0, p1, v7}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    rem-long v4, v2, v8

    long-to-int v4, v4

    aput v4, v1, v0

    invoke-static {v2, v3, v7}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    const/4 v4, 0x1

    rem-long v5, v2, v8

    long-to-int v5, v5

    aput v5, v1, v4

    invoke-static {v2, v3, v7}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    const/4 v4, 0x2

    rem-long/2addr v2, v8

    long-to-int v2, v2

    aput v2, v1, v4

    :goto_24
    array-length v2, v1

    if-ge v0, v2, :cond_34

    aget v2, v1, v0

    if-gez v2, :cond_31

    aget v2, v1, v0

    add-int/lit16 v2, v2, 0x1fd3

    aput v2, v1, v0

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_34
    return-object v1
.end method


# virtual methods
.method a()V
    .registers 3

    invoke-virtual {p0}, Lx/C;->b()V

    iget-object v0, p0, Lx/C;->a:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method a(I)V
    .registers 2

    invoke-virtual {p0}, Lx/C;->b()V

    iput p1, p0, Lx/C;->c:I

    return-void
.end method

.method a(JI)V
    .registers 12

    invoke-virtual {p0}, Lx/C;->b()V

    invoke-static {p1, p2}, Lx/C;->a(J)[I

    move-result-object v1

    mul-int/lit16 v2, p3, 0x400

    const/4 v0, 0x0

    :goto_a
    array-length v3, v1

    if-ge v0, v3, :cond_24

    aget v3, v1, v0

    shr-int/lit8 v3, v3, 0x3

    aget v4, v1, v0

    and-int/lit8 v4, v4, 0x7

    iget-object v5, p0, Lx/C;->a:[B

    add-int/2addr v3, v2

    aget-byte v6, v5, v3

    const/4 v7, 0x1

    shl-int v4, v7, v4

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v5, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_24
    return-void
.end method

.method a(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V
    .registers 2

    iput-object p1, p0, Lx/C;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method

.method a(Lx/I;)V
    .registers 7

    invoke-virtual {p0}, Lx/C;->b()V

    invoke-static {p1}, Lx/I;->a(Lx/I;)I

    move-result v0

    invoke-virtual {p0, v0}, Lx/C;->b(I)V

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p1}, Lx/I;->b()I

    move-result v1

    if-ge v0, v1, :cond_25

    invoke-virtual {p1, v0}, Lx/I;->b(I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_22

    invoke-static {p1}, Lx/I;->a(Lx/I;)I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lx/C;->a(JI)V

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_25
    invoke-static {p1}, Lx/I;->a(Lx/I;)I

    move-result v0

    iget v1, p0, Lx/C;->c:I

    if-lt v0, v1, :cond_35

    invoke-static {p1}, Lx/I;->a(Lx/I;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx/C;->c:I

    :cond_35
    return-void
.end method

.method a(Lx/aa;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lx/C;->c:I

    if-ge v0, v1, :cond_b

    invoke-virtual {p0, v0}, Lx/C;->d(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lx/C;->a:[B

    invoke-interface {p1, v0}, Lx/aa;->b([B)V

    return-void
.end method

.method a(Lx/aa;I)V
    .registers 6

    invoke-virtual {p0, p2}, Lx/C;->d(I)V

    iget-object v0, p0, Lx/C;->a:[B

    mul-int/lit16 v1, p2, 0x400

    const/16 v2, 0x400

    invoke-interface {p1, v0, v1, v2}, Lx/aa;->b([BII)V

    return-void
.end method

.method a([II)Z
    .registers 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    mul-int/lit16 v3, p2, 0x400

    move v0, v1

    :goto_5
    array-length v4, p1

    if-ge v0, v4, :cond_1e

    aget v4, p1, v0

    shr-int/lit8 v4, v4, 0x3

    aget v5, p1, v0

    and-int/lit8 v5, v5, 0x7

    iget-object v6, p0, Lx/C;->a:[B

    add-int/2addr v4, v3

    aget-byte v4, v6, v4

    shl-int v5, v2, v5

    and-int/2addr v4, v5

    if-nez v4, :cond_1b

    :goto_1a
    return v1

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1e
    move v1, v2

    goto :goto_1a
.end method

.method b()V
    .registers 3

    invoke-static {}, Ln/a;->b()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lx/C;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lx/C;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "State write lock needed to modify BloomFilters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    return-void
.end method

.method b(I)V
    .registers 6

    invoke-virtual {p0}, Lx/C;->b()V

    mul-int/lit16 v0, p1, 0x400

    iget-object v1, p0, Lx/C;->a:[B

    add-int/lit16 v2, v0, 0x3fc

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method b(Lx/aa;)V
    .registers 5

    invoke-virtual {p0}, Lx/C;->b()V

    iget-object v0, p0, Lx/C;->a:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lx/C;->a:[B

    array-length v2, v2

    invoke-interface {p1, v0, v1, v2}, Lx/aa;->a([BII)V

    return-void
.end method

.method b(JI)Z
    .registers 5

    invoke-static {p1, p2}, Lx/C;->a(J)[I

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lx/C;->a([II)Z

    move-result v0

    return v0
.end method

.method c(I)Z
    .registers 5

    mul-int/lit16 v0, p1, 0x400

    iget-object v1, p0, Lx/C;->a:[B

    const/16 v2, 0x3fc

    invoke-static {v1, v0, v2}, Lx/A;->c([BII)I

    move-result v1

    iget-object v2, p0, Lx/C;->a:[B

    add-int/lit16 v0, v0, 0x3fc

    invoke-static {v2, v0}, Lx/A;->a([BI)I

    move-result v0

    if-ne v1, v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method d(I)V
    .registers 5

    mul-int/lit16 v0, p1, 0x400

    iget-object v1, p0, Lx/C;->a:[B

    const/16 v2, 0x3fc

    invoke-static {v1, v0, v2}, Lx/A;->c([BII)I

    move-result v1

    iget-object v2, p0, Lx/C;->a:[B

    add-int/lit16 v0, v0, 0x3fc

    invoke-static {v2, v0, v1}, Lx/A;->a([BII)V

    return-void
.end method
