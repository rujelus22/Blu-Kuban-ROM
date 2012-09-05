.class Lx/X;
.super Lx/o;


# instance fields
.field a:[Lam/b;

.field private b:Laf/a;


# direct methods
.method constructor <init>(Laf/a;)V
    .registers 3

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lx/o;-><init>(I)V

    new-array v0, v0, [Lam/b;

    iput-object v0, p0, Lx/X;->a:[Lam/b;

    iput-object p1, p0, Lx/X;->b:Laf/a;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x24

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Lx/X;->g()Lam/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lam/b;->b(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 9

    const/4 v6, 0x2

    const/4 v5, 0x1

    sget-object v0, LbD/da;->k:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v1

    invoke-virtual {v1, v6}, Lam/b;->l(I)I

    move-result v2

    invoke-virtual {p0}, Lx/X;->d()I

    move-result v0

    if-eq v2, v0, :cond_13

    :cond_12
    return v5

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-ge v0, v2, :cond_12

    iget-object v3, p0, Lx/X;->a:[Lam/b;

    invoke-virtual {v1, v6, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method

.method protected a(Lx/r;)Z
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lx/X;->d()I

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lx/r;->a()Lt/af;

    move-result-object v0

    check-cast v0, Lx/Y;

    invoke-virtual {p0, v2}, Lx/X;->a(I)Lx/r;

    move-result-object v1

    invoke-virtual {v1}, Lx/r;->a()Lt/af;

    move-result-object v1

    check-cast v1, Lx/Y;

    invoke-virtual {v0, v1}, Lx/Y;->a(Lx/Y;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1d
    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    move v0, v2

    goto :goto_1e
.end method

.method public b(I)Lt/ae;
    .registers 11

    const/4 v8, 0x3

    iget-object v0, p0, Lx/X;->a:[Lam/b;

    aget-object v2, v0, p1

    if-nez v2, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    new-instance v4, Lt/aa;

    invoke-direct {v4}, Lt/aa;-><init>()V

    invoke-virtual {p0, p1}, Lx/X;->a(I)Lx/r;

    move-result-object v0

    invoke-virtual {v0}, Lx/r;->a()Lt/af;

    move-result-object v0

    check-cast v0, Lx/Y;

    invoke-virtual {v2, v8}, Lam/b;->l(I)I

    move-result v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_22
    if-ge v1, v3, :cond_3d

    invoke-virtual {v2, v8, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v6

    invoke-virtual {v4}, Lt/aa;->a()Lt/Z;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lx/W;->a(Lam/b;Lt/Z;Lt/af;)Lt/l;

    move-result-object v6

    if-eqz v6, :cond_7a

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x14

    if-ne v6, v7, :cond_7a

    :cond_3d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lt/l;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lt/l;

    invoke-virtual {v0}, Lx/Y;->a()Lt/C;

    move-result-object v5

    const-wide/16 v2, -0x1

    invoke-virtual {v5}, Lt/C;->e()Z

    move-result v6

    if-eqz v6, :cond_60

    iget-object v2, p0, Lx/X;->b:Laf/a;

    invoke-interface {v2}, Laf/a;->c()J

    move-result-wide v2

    invoke-virtual {v5}, Lt/C;->f()J

    move-result-wide v5

    add-long/2addr v2, v5

    :cond_60
    new-instance v5, Lt/aq;

    invoke-direct {v5}, Lt/aq;-><init>()V

    invoke-virtual {v5, v4}, Lt/aq;->a(Lt/aa;)Lt/aq;

    move-result-object v4

    invoke-virtual {v4, v0}, Lt/aq;->a(Lt/af;)Lt/aq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lt/aq;->a([Lt/l;)Lt/aq;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lt/aq;->a(J)Lt/aq;

    move-result-object v0

    invoke-virtual {v0}, Lt/aq;->a()Lt/ao;

    move-result-object v0

    goto :goto_8

    :cond_7a
    add-int/lit8 v1, v1, 0x1

    goto :goto_22
.end method

.method g()Lam/b;
    .registers 12

    const/16 v10, 0x16

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x2

    new-instance v2, Lam/b;

    sget-object v0, LbD/da;->i:Lam/e;

    invoke-direct {v2, v0}, Lam/b;-><init>(Lam/e;)V

    const/16 v0, 0x80

    invoke-virtual {v2, v8, v0}, Lam/b;->h(II)V

    invoke-virtual {p0, v1}, Lx/X;->a(I)Lx/r;

    move-result-object v0

    invoke-virtual {v0}, Lx/r;->a()Lt/af;

    move-result-object v0

    check-cast v0, Lx/Y;

    invoke-virtual {v0}, Lx/Y;->a()Lt/C;

    move-result-object v0

    invoke-virtual {v2, v7}, Lam/b;->a(I)Lam/b;

    move-result-object v3

    const/16 v4, 0x15

    invoke-virtual {v0}, Lt/C;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lam/b;->b(ILjava/lang/String;)V

    invoke-virtual {v0}, Lt/C;->d()[Ljava/lang/String;

    move-result-object v4

    move v0, v1

    :goto_32
    array-length v5, v4

    if-ge v0, v5, :cond_4b

    invoke-virtual {v3, v10}, Lam/b;->a(I)Lam/b;

    move-result-object v5

    aget-object v6, v4, v0

    invoke-virtual {v5, v8, v6}, Lam/b;->b(ILjava/lang/String;)V

    add-int/lit8 v6, v0, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v5, v7, v6}, Lam/b;->b(ILjava/lang/String;)V

    invoke-virtual {v3, v10, v5}, Lam/b;->a(ILam/b;)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_32

    :cond_4b
    invoke-virtual {v2, v7, v3}, Lam/b;->b(ILam/b;)V

    :goto_4e
    invoke-virtual {p0}, Lx/X;->d()I

    move-result v0

    if-ge v1, v0, :cond_84

    invoke-virtual {p0, v1}, Lx/X;->a(I)Lx/r;

    move-result-object v0

    invoke-virtual {v0}, Lx/r;->a()Lt/af;

    move-result-object v0

    new-instance v3, Lam/b;

    sget-object v4, LbD/gy;->i:Lam/e;

    invoke-direct {v3, v4}, Lam/b;-><init>(Lam/e;)V

    const/16 v4, 0x8

    invoke-virtual {v3, v8, v4}, Lam/b;->h(II)V

    invoke-virtual {v0}, Lt/af;->c()I

    move-result v4

    invoke-virtual {v3, v7, v4}, Lam/b;->h(II)V

    invoke-virtual {v0}, Lt/af;->d()I

    move-result v4

    invoke-virtual {v3, v9, v4}, Lam/b;->h(II)V

    const/4 v4, 0x4

    invoke-virtual {v0}, Lt/af;->b()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lam/b;->h(II)V

    invoke-virtual {v2, v9, v3}, Lam/b;->a(ILam/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    :cond_84
    return-object v2
.end method
