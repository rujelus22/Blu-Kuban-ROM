.class Lx/K;
.super Ljava/lang/Object;


# instance fields
.field final a:[I

.field final b:[I

.field final c:[I

.field final d:[I

.field final e:[I

.field f:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field g:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [I

    iput-object v0, p0, Lx/K;->a:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lx/K;->b:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lx/K;->c:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lx/K;->d:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lx/K;->e:[I

    const/4 v0, 0x0

    iput v0, p0, Lx/K;->g:I

    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lx/K;->g()V

    iget-object v0, p0, Lx/K;->a:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lx/K;->b:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lx/K;->c:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lx/K;->d:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lx/K;->e:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iput v1, p0, Lx/K;->g:I

    return-void
.end method

.method a(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lx/K;->g()V

    iget-object v0, p0, Lx/K;->a:[I

    aput v1, v0, p1

    iget-object v0, p0, Lx/K;->b:[I

    aput v1, v0, p1

    iget-object v0, p0, Lx/K;->c:[I

    aput v1, v0, p1

    iget-object v0, p0, Lx/K;->d:[I

    aput v1, v0, p1

    iget-object v0, p0, Lx/K;->e:[I

    aput v1, v0, p1

    return-void
.end method

.method a(II)V
    .registers 4

    iget-object v0, p0, Lx/K;->a:[I

    aput p2, v0, p1

    return-void
.end method

.method a(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V
    .registers 2

    iput-object p1, p0, Lx/K;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method

.method a(Lx/I;)V
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p0}, Lx/K;->g()V

    invoke-static {p1}, Lx/I;->a(Lx/I;)I

    move-result v1

    iget-object v2, p0, Lx/K;->a:[I

    aput v0, v2, v1

    iget-object v2, p0, Lx/K;->b:[I

    invoke-virtual {p1}, Lx/I;->c()I

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Lx/K;->c:[I

    invoke-static {p1}, Lx/I;->b(Lx/I;)I

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Lx/K;->d:[I

    aput v0, v2, v1

    iget-object v2, p0, Lx/K;->e:[I

    aput v0, v2, v1

    :goto_24
    invoke-static {p1}, Lx/I;->b(Lx/I;)I

    move-result v2

    if-ge v0, v2, :cond_4a

    invoke-virtual {p1, v0}, Lx/I;->b(I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_47

    iget-object v2, p0, Lx/K;->d:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    iget-object v2, p0, Lx/K;->e:[I

    aget v3, v2, v1

    invoke-virtual {p1, v0}, Lx/I;->d(I)I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v2, v1

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_4a
    iget-object v0, p0, Lx/K;->d:[I

    aget v0, v0, v1

    if-lez v0, :cond_58

    iget v0, p0, Lx/K;->g:I

    if-lt v1, v0, :cond_58

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lx/K;->g:I

    :cond_58
    return-void
.end method

.method a(Lx/aa;)V
    .registers 6

    const/4 v0, 0x0

    const/16 v1, 0x2000

    new-array v2, v1, [B

    move v1, v0

    :goto_6
    iget-object v3, p0, Lx/K;->a:[I

    array-length v3, v3

    if-ge v0, v3, :cond_13

    invoke-virtual {p0, v2, v1, v0}, Lx/K;->a([BII)V

    add-int/lit8 v1, v1, 0x14

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_13
    invoke-interface {p1, v2}, Lx/aa;->b([B)V

    return-void
.end method

.method a([BII)V
    .registers 7

    iget-object v0, p0, Lx/K;->a:[I

    aget v0, v0, p3

    invoke-static {p1, p2, v0}, Lx/A;->a([BII)V

    add-int/lit8 v0, p2, 0x4

    iget-object v1, p0, Lx/K;->b:[I

    aget v1, v1, p3

    invoke-static {p1, v0, v1}, Lx/A;->a([BII)V

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lx/K;->c:[I

    aget v1, v1, p3

    invoke-static {p1, v0, v1}, Lx/A;->b([BII)V

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lx/K;->d:[I

    aget v1, v1, p3

    invoke-static {p1, v0, v1}, Lx/A;->b([BII)V

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lx/K;->e:[I

    aget v1, v1, p3

    invoke-static {p1, v0, v1}, Lx/A;->a([BII)V

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, -0x10

    const/16 v2, 0x10

    invoke-static {p1, v1, v2}, Lx/A;->c([BII)I

    move-result v1

    invoke-static {p1, v0, v1}, Lx/A;->a([BII)V

    return-void
.end method

.method b()I
    .registers 3

    invoke-virtual {p0}, Lx/K;->g()V

    iget v0, p0, Lx/K;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lx/K;->g:I

    invoke-virtual {p0, v0}, Lx/K;->a(I)V

    return v0
.end method

.method b(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lx/K;->g()V

    iget-object v0, p0, Lx/K;->a:[I

    aput v1, v0, p1

    iget-object v0, p0, Lx/K;->c:[I

    aput v1, v0, p1

    iget-object v0, p0, Lx/K;->d:[I

    aput v1, v0, p1

    iget-object v0, p0, Lx/K;->b:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    return-void
.end method

.method b(Lx/aa;)V
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p0}, Lx/K;->g()V

    const/16 v1, 0x2000

    new-array v2, v1, [B

    invoke-interface {p1, v2}, Lx/aa;->a([B)V

    iput v0, p0, Lx/K;->g:I

    move v1, v0

    :goto_e
    iget-object v3, p0, Lx/K;->a:[I

    array-length v3, v3

    if-ge v0, v3, :cond_66

    iget-object v3, p0, Lx/K;->a:[I

    invoke-static {v2, v1}, Lx/A;->a([BI)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v1, v1, 0x4

    iget-object v3, p0, Lx/K;->b:[I

    invoke-static {v2, v1}, Lx/A;->a([BI)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v1, v1, 0x4

    iget-object v3, p0, Lx/K;->c:[I

    invoke-static {v2, v1}, Lx/A;->b([BI)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lx/K;->d:[I

    invoke-static {v2, v1}, Lx/A;->b([BI)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lx/K;->e:[I

    invoke-static {v2, v1}, Lx/A;->a([BI)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v1, v1, 0x4

    invoke-static {v2, v1}, Lx/A;->a([BI)I

    move-result v3

    add-int/lit8 v4, v1, -0x10

    const/16 v5, 0x10

    invoke-static {v2, v4, v5}, Lx/A;->c([BII)I

    move-result v4

    if-eq v3, v4, :cond_5b

    invoke-virtual {p0, v0}, Lx/K;->b(I)V

    :cond_56
    :goto_56
    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_5b
    iget-object v3, p0, Lx/K;->d:[I

    aget v3, v3, v0

    if-lez v3, :cond_56

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lx/K;->g:I

    goto :goto_56

    :cond_66
    return-void
.end method

.method c()I
    .registers 8

    const v1, 0x7fffffff

    const/4 v2, -0x1

    const/4 v0, 0x0

    move v3, v1

    move v4, v2

    move v5, v1

    move v1, v2

    :goto_9
    iget v6, p0, Lx/K;->g:I

    if-ge v0, v6, :cond_33

    invoke-virtual {p0, v0}, Lx/K;->d(I)Z

    move-result v6

    if-eqz v6, :cond_24

    iget-object v6, p0, Lx/K;->e:[I

    aget v6, v6, v0

    if-nez v6, :cond_27

    iget-object v6, p0, Lx/K;->a:[I

    aget v6, v6, v0

    if-ge v6, v5, :cond_27

    iget-object v4, p0, Lx/K;->a:[I

    aget v5, v4, v0

    move v4, v0

    :cond_24
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_27
    iget-object v6, p0, Lx/K;->e:[I

    aget v6, v6, v0

    if-ge v6, v3, :cond_24

    iget-object v1, p0, Lx/K;->e:[I

    aget v3, v1, v0

    move v1, v0

    goto :goto_24

    :cond_33
    if-eq v4, v2, :cond_36

    :goto_35
    return v4

    :cond_36
    move v4, v1

    goto :goto_35
.end method

.method c(I)Z
    .registers 4

    iget-object v0, p0, Lx/K;->b:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method d()I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget v2, p0, Lx/K;->g:I

    if-ge v0, v2, :cond_e

    iget-object v2, p0, Lx/K;->d:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_e
    return v1
.end method

.method d(I)Z
    .registers 3

    iget-object v0, p0, Lx/K;->d:[I

    aget v0, v0, p1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method e()J
    .registers 8

    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    move-wide v1, v3

    :goto_4
    iget v5, p0, Lx/K;->g:I

    if-ge v0, v5, :cond_19

    iget-object v5, p0, Lx/K;->b:[I

    aget v5, v5, v0

    if-lez v5, :cond_17

    iget-object v5, p0, Lx/K;->b:[I

    aget v5, v5, v0

    int-to-long v5, v5

    :goto_13
    add-long/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_17
    move-wide v5, v3

    goto :goto_13

    :cond_19
    return-wide v1
.end method

.method f()I
    .registers 5

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_3
    iget v3, p0, Lx/K;->g:I

    if-ge v0, v3, :cond_14

    invoke-virtual {p0, v0}, Lx/K;->d(I)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    :goto_e
    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_12
    move v3, v1

    goto :goto_e

    :cond_14
    return v2
.end method

.method g()V
    .registers 3

    invoke-static {}, Ln/a;->b()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lx/K;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lx/K;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "State write lock needed to modify ShardsStats"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    return-void
.end method
